//! 游戏服端点：认证、服务区校验、里程碑落库和业务分发。
//!
//! 处理顺序是有意的：先确认服务区与身份，再解析里程碑，最后才让业务动作改状态。
//! 只有业务动作报告成功之后才写里程碑，所以被拒绝的请求不会把教程推进过去。

use super::{ApiError, AsciiJson, Shared, bad_request, internal_error};
use crate::api::business;
use crate::{accounts, db, player, protocol, tutorial};
use axum::{
    extract::{Path, Query, State},
    http::Uri,
};
use serde_json::Value;
use sha2::{Digest, Sha256};
use std::collections::HashMap;

/// 游戏服业务失败的统一类型。
type GameFailure = business::BusinessError;

fn game_failure(code: &'static str, message: &'static str) -> GameFailure {
    business::failure(code, message)
}

fn value_text(data: &Value, key: &str) -> Result<Option<String>, GameFailure> {
    let Some(value) = data.get(key) else {
        return Ok(None);
    };
    match value {
        Value::String(value) => Ok(Some(value.clone())),
        Value::Number(value) => Ok(Some(value.to_string())),
        _ => Err(game_failure("invalid_data", "字段格式错误")),
    }
}

/// Fingerprint the canonical JSON payload without storing tokens or player IDs in the dedup table.
fn request_fingerprint(action: &str, data: &Value) -> String {
    let mut hash = Sha256::new();
    hash.update(action.as_bytes());
    hash.update([0]);
    hash.update(data.to_string().as_bytes());
    hash.finalize()
        .iter()
        .map(|byte| format!("{byte:02x}"))
        .collect()
}

/// 判断账号服下发的本地游客 UID 是否符合本服务生成的形状。
///
/// 游客没有会话令牌，身份完全由这个字符串承担，所以格式必须严格校验，
/// 否则任意字符串都能当成一个"游客账号"去写进度。
pub(crate) fn valid_guest_uid(uid: &str) -> bool {
    let Some(suffix) = uid.strip_prefix("local-guest-") else {
        return false;
    };
    suffix.len() == 28 && suffix.bytes().all(|byte| byte.is_ascii_hexdigit())
}

fn guest_uid_from_user_id(user_id: Option<&str>, server_id: &str) -> Option<String> {
    let suffix = format!("-{server_id}");
    user_id?.strip_suffix(&suffix).map(ToOwned::to_owned)
}

/// Handle requests sent to the selected game-zone URL.
///
/// The account service authenticates registered players with the token issued
/// by `account.index`.  Guests have no token, so their generated local UID is
/// carried by `account_uid` during login and recovered from the player ID on
/// later requests.  Tutorial progress is updated in the same blocking SQLite
/// operation as authentication; an invalid or unsupported request therefore
/// cannot accidentally advance it.
pub async fn game_api(
    State(state): State<Shared>,
    Path(route_server_id): Path<String>,
    _uri: Uri,
    Query(query): Query<HashMap<String, String>>,
) -> Result<AsciiJson, ApiError> {
    if !state
        .zones
        .iter()
        .any(|zone| zone.server_id == route_server_id)
    {
        return Ok(AsciiJson(protocol::error("unknown_server", "服务区不存在")));
    }
    let action = query.get("do").map(String::as_str).unwrap_or("");
    let data: Value = serde_json::from_str(query.get("data").map(String::as_str).unwrap_or("{}"))
        .map_err(|_| bad_request())?;
    if !data.is_object() {
        return Err(bad_request());
    }

    // user.login is the only recovered request that explicitly carries the
    // selected zone.  Other game requests are already addressed to /game/{id},
    // but if they do carry server_id it must still agree with that path.
    match value_text(&data, "server_id") {
        Ok(Some(request_server_id)) if request_server_id != route_server_id => {
            return Ok(AsciiJson(protocol::error(
                "server_mismatch",
                "请求服务区与连接地址不一致",
            )));
        }
        Err(failure) => {
            return Ok(AsciiJson(protocol::error(failure.code, failure.message)));
        }
        _ if action == "user.login" && data.get("server_id").is_none() => {
            return Ok(AsciiJson(protocol::error(
                "invalid_server",
                "缺少服务区标识",
            )));
        }
        _ => {}
    }

    let requested_step = match tutorial::parse_milestone(data.get("step")) {
        Ok(step) => step,
        Err(message) => {
            return Ok(AsciiJson(protocol::error("invalid_step", message)));
        }
    };
    let account_uid = match value_text(&data, "account_uid") {
        Ok(value) => value
            .map(|value| value.trim().to_owned())
            .filter(|value| !value.is_empty()),
        Err(failure) => return Ok(AsciiJson(protocol::error(failure.code, failure.message))),
    };
    let token = match value_text(&data, "token") {
        Ok(value) => value.unwrap_or_default(),
        Err(failure) => return Ok(AsciiJson(protocol::error(failure.code, failure.message))),
    };
    let user_auth = match value_text(&data, "user_auth") {
        Ok(value) => value.unwrap_or_default(),
        Err(failure) => return Ok(AsciiJson(protocol::error(failure.code, failure.message))),
    };
    if !token.is_empty() && !user_auth.is_empty() && token != user_auth {
        return Ok(AsciiJson(protocol::error(
            "invalid_session",
            "认证信息不一致",
        )));
    }
    let session_token = if token.is_empty() {
        user_auth.clone()
    } else {
        token
    };
    let user_id = match value_text(&data, "user_id") {
        Ok(value) => value,
        Err(failure) => return Ok(AsciiJson(protocol::error(failure.code, failure.message))),
    };

    let database = state.config.database.clone();
    let guest_enabled = state.config.guest_enabled;
    let tutorial = state.config.tutorial.clone();
    let game_data = state.game_data.clone();
    let request_data = data.clone();
    let action_owned = action.to_owned();
    let route_server_id_for_db = route_server_id.clone();
    let account_uid_for_db = account_uid.clone();
    let user_id_for_db = user_id.clone();
    let result = tokio::task::spawn_blocking(move || -> Result<Value, GameFailure> {
        let mut db =
            db::open(&database).map_err(|_| game_failure("internal_error", "数据库不可用"))?;

        let (principal, auth) = if !session_token.is_empty() {
            let account_id = accounts::account_for_session(&db, &session_token)
                .ok_or_else(|| game_failure("invalid_session", "登录已过期，请重新登录"))?;
            if let Some(uid) = account_uid_for_db.as_deref() {
                let uid_id = uid
                    .parse::<i64>()
                    .ok()
                    .filter(|id| *id > 0)
                    .ok_or_else(|| game_failure("invalid_account", "账号标识无效"))?;
                if uid_id != account_id {
                    return Err(game_failure("invalid_account", "账号标识与登录会话不一致"));
                }
            }
            (tutorial::account_principal(account_id), session_token)
        } else {
            if !guest_enabled {
                return Err(game_failure("guest_disabled", "游客登录已关闭，请注册账号"));
            }
            let uid = account_uid_for_db
                .clone()
                .or_else(|| {
                    guest_uid_from_user_id(user_id_for_db.as_deref(), &route_server_id_for_db)
                })
                .ok_or_else(|| game_failure("invalid_account", "缺少游客账号标识"))?;
            if !valid_guest_uid(&uid) {
                return Err(game_failure("invalid_account", "游客账号标识无效"));
            }
            (tutorial::guest_principal(&uid), String::new())
        };

        if action_owned == "user.login" {
            let freshman_step = if let Some((step, rank)) = requested_step {
                tutorial::record_tutorial_step(
                    &db,
                    &principal,
                    &route_server_id_for_db,
                    &step,
                    rank,
                )
                .map_err(|_| game_failure("internal_error", "无法保存新手进度"))?
            } else {
                tutorial::tutorial_step(&db, &principal, &route_server_id_for_db)
                    .map_err(|_| game_failure("internal_error", "无法读取新手进度"))?
            };
            let _uid = account_uid_for_db
                .as_deref()
                .or_else(|| principal.strip_prefix("guest:"))
                .ok_or_else(|| game_failure("invalid_account", "缺少账号标识"))?;
            let snapshot = player::snapshot(&db, &principal, &route_server_id_for_db, &tutorial)
                .map_err(|_| game_failure("internal_error", "无法读取玩家数据"))?;
            let clears = player::all_dungeon_clears(&db, &principal, &route_server_id_for_db)
                .map_err(|_| game_failure("internal_error", "无法读取关卡进度"))?;
            return Ok(protocol::login_response_with_auth(
                &freshman_step,
                &auth,
                &snapshot,
                &clears,
                &tutorial,
                &game_data,
            ));
        }

        // Snapshot reads don't need a write transaction or retry cache. They
        // must be fresh because another request may have changed player state.
        if matches!(
            action_owned.as_str(),
            "user.getPushData"
                | "map.getUserMap"
                | "chapter.getChapterInfo"
                | "dungeon.fightBefore"
        ) {
            return business::apply_business(
                &db,
                &action_owned,
                &principal,
                &route_server_id_for_db,
                &request_data,
                &tutorial,
                &game_data,
            );
        }

        // Old client requests have no explicit idempotency key. Their serialized
        // payload includes `time`; hashing action + payload makes transport
        // retries replay the committed response while distinct taps get new keys.
        // Identical payloads without `time` are indistinguishable and share the
        // same bounded 24-hour retry window.
        let fingerprint = request_fingerprint(&action_owned, &request_data);
        let tx = db
            .transaction_with_behavior(rusqlite::TransactionBehavior::Immediate)
            .map_err(|_| game_failure("internal_error", "无法开始业务事务"))?;
        if let Some(response) = db::cached_response(
            &tx,
            &principal,
            &route_server_id_for_db,
            &action_owned,
            &fingerprint,
        )
        .map_err(|_| game_failure("internal_error", "无法读取请求去重记录"))?
        {
            tx.commit()
                .map_err(|_| game_failure("internal_error", "无法完成业务事务"))?;
            return Ok(response);
        }

        // Player state, tutorial milestone, and replay response commit together.
        let mut response = business::apply_business(
            &tx,
            &action_owned,
            &principal,
            &route_server_id_for_db,
            &request_data,
            &tutorial,
            &game_data,
        )?;
        if response.get("result") != Some(&Value::Bool(true)) {
            return Err(game_failure("business_failed", "业务请求未成功"));
        }
        if let Some((step, rank)) = requested_step {
            let stored_step = tutorial::record_tutorial_step(
                &tx,
                &principal,
                &route_server_id_for_db,
                &step,
                rank,
            )
            .map_err(|_| game_failure("internal_error", "无法保存新手进度"))?;
            // Business handlers may return a full Player snapshot. Keep its
            // tutorial milestone consistent with the state committed below.
            if let Some(user_info) = response
                .pointer_mut("/cmn/user_info")
                .and_then(Value::as_object_mut)
            {
                user_info.insert("freshman_step".to_string(), Value::String(stored_step));
            }
        }
        db::store_response(
            &tx,
            &principal,
            &route_server_id_for_db,
            &action_owned,
            &fingerprint,
            &response,
        )
        .map_err(|_| game_failure("internal_error", "无法保存请求去重记录"))?;
        tx.commit()
            .map_err(|_| game_failure("internal_error", "无法完成业务事务"))?;
        Ok(response)
    })
    .await
    .map_err(|_| internal_error())?;

    match result {
        Ok(response) => Ok(AsciiJson(response)),
        Err(failure) => Ok(AsciiJson(protocol::error(failure.code, failure.message))),
    }
}
