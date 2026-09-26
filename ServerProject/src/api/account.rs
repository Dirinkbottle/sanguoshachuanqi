//! 账号服端点：第三方登录换区服列表，以及本地新增的注册与登录接口。
//!
//! 注册与登录是本重建工程为替代已移除的渠道 SDK 而加的，不属于原版协议。

use super::{ApiError, AsciiJson, Shared, bad_request, internal_error};
use crate::{accounts, db, protocol};
use axum::{
    Json,
    extract::{Query, State},
    http::{StatusCode, Uri},
};
use serde::Deserialize;
use serde_json::{Value, json};
use sha2::{Digest, Sha256};
use std::collections::HashMap;

pub async fn account_api(
    State(state): State<Shared>,
    uri: Uri,
    Query(query): Query<HashMap<String, String>>,
) -> Result<AsciiJson, ApiError> {
    let path = uri.path();
    let action = query.get("do").map(String::as_str).unwrap_or("");
    let data: Value = serde_json::from_str(query.get("data").map(String::as_str).unwrap_or("{}"))
        .map_err(|_| bad_request())?;
    if !data.is_object() {
        return Err(bad_request());
    }
    match (path, action) {
        ("/sanguosha_anysdk_2.2.6/index.php", "versionPlus.check") => {
            Ok(AsciiJson(protocol::version(&data)))
        }
        ("/public/sanguosha_account/index.php", "menu.notice") => Ok(AsciiJson(protocol::notice())),
        ("/public/sanguosha_account/index.php", "account.index") => {
            let login_type = data.get("logintype").and_then(Value::as_i64);
            if login_type == Some(1) {
                if !state.config.guest_enabled {
                    return Ok(AsciiJson(protocol::error(
                        "guest_disabled",
                        "游客登录已关闭，请注册账号",
                    )));
                }
                let uid = data.get("uid").and_then(Value::as_str).unwrap_or("");
                let digest = Sha256::digest(uid.as_bytes());
                let guest_uid = format!("local-guest-{:x}", digest);
                return Ok(AsciiJson(protocol::server_list(
                    guest_uid[..40].to_owned(),
                    &state.zones,
                    &state.config.public_host,
                    None,
                )));
            }
            if login_type != Some(2) {
                return Ok(AsciiJson(protocol::error(
                    "invalid_login_type",
                    "不支持的登录类型",
                )));
            }
            let session = data
                .pointer("/extra/sessionId")
                .and_then(Value::as_str)
                .unwrap_or("")
                .to_owned();
            let session_for_lookup = session.clone();
            let db_path = state.config.database.clone();
            let account = tokio::task::spawn_blocking(move || {
                let db = db::open(&db_path).ok()?;
                accounts::account_for_session(&db, &session_for_lookup)
            })
            .await
            .ok()
            .flatten();
            match account {
                Some(id) => Ok(AsciiJson(protocol::server_list(
                    id.to_string(),
                    &state.zones,
                    &state.config.public_host,
                    Some(session.as_str()),
                ))),
                None => Ok(AsciiJson(protocol::error(
                    "invalid_session",
                    "登录已过期，请重新登录",
                ))),
            }
        }
        _ => Err((
            StatusCode::NOT_FOUND,
            AsciiJson(protocol::error("not_implemented", "功能尚未重建")),
        )),
    }
}

/// 本地注册/登录接口的请求体。
///
/// 这是本重建工程新增的接口，不是原版协议：原版把账号交给渠道 SDK，
/// 客户端拿到 sessionKey 之后才走 logintype:2 的 account.index。
#[derive(Deserialize)]
pub struct Credentials {
    pub username: String,
    pub password: String,
}

#[derive(Deserialize)]
pub struct LogoutInput {
    #[serde(rename = "sessionKey", alias = "session_key")]
    pub session_key: String,
}

/// 注册一个本地账号。
///
/// 失败也用 HTTP 200 + result:false：设备上这版原生 XHR 会直接丢弃非 2xx 响应、
/// 不调用 JS 回调，用 4xx 会让客户端停在无响应状态。
pub async fn register(
    State(state): State<Shared>,
    Json(input): Json<Credentials>,
) -> Result<AsciiJson, ApiError> {
    let path = state.config.database.clone();
    let result = tokio::task::spawn_blocking(move || {
        let mut db = db::open(&path).map_err(|_| "数据库不可用")?;
        accounts::register(&mut db, &input.username, &input.password)
    })
    .await
    .map_err(|_| internal_error())?;
    match result {
        Ok(()) => Ok(AsciiJson(json!({"result":true}))),
        Err(msg) => Ok(AsciiJson(protocol::error("registration_failed", msg))),
    }
}

/// 校验密码并签发会话，成功时把令牌放在 sessionKey 里。
///
/// 客户端把它当作渠道 SDK 登录成功回调的等价物，随后用 logintype:2 +
/// extra.sessionId 调 account.index 换取服务区列表。
pub async fn login(
    State(state): State<Shared>,
    Json(input): Json<Credentials>,
) -> Result<AsciiJson, ApiError> {
    let path = state.config.database.clone();
    let ttl = state.config.session_ttl_seconds;
    let result = tokio::task::spawn_blocking(move || {
        let mut db = db::open(&path).map_err(|_| "数据库不可用")?;
        accounts::login(&mut db, &input.username, &input.password, ttl)
    })
    .await
    .map_err(|_| internal_error())?;
    match result {
        Ok(session) => Ok(AsciiJson(json!({"result":true,"sessionKey":session}))),
        Err(msg) => Ok(AsciiJson(protocol::error("login_failed", msg))),
    }
}

/// Revoke a local account session. Repeating logout is safe and returns success.
pub async fn logout(
    State(state): State<Shared>,
    Json(input): Json<LogoutInput>,
) -> Result<AsciiJson, ApiError> {
    let path = state.config.database.clone();
    let token = input.session_key;
    let result = tokio::task::spawn_blocking(move || {
        let db = db::open(&path).map_err(|_| ())?;
        accounts::logout(&db, &token).map_err(|_| ())?;
        Ok::<(), ()>(())
    })
    .await
    .map_err(|_| internal_error())?;
    match result {
        Ok(()) => Ok(AsciiJson(json!({"result":true}))),
        Err(()) => Err(internal_error()),
    }
}
