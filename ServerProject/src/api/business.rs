//! 首个可玩纵向链上的业务动作与查询。
//!
//! 每个动作只做两件事：改本账号在本区服的状态，然后返回客户端需要的 cmn 增量。
//! 未重建的端点一律拒绝而不是返回空成功——客户端在成功回调里推进教程，
//! 假成功会让它跳过一步从未真正发生过的操作。

//! 响应形状由 protocol 层决定：本模块只负责改状态，然后用 `cmn_map` /
//! `map_info` / `wine_info` 把结果包成客户端要的样子。

use crate::config::Tutorial;
use crate::gamedata::GameData;
use crate::player;
use crate::protocol::{
    ADD_TYPE_EQUIPMENT, ADD_TYPE_ITEM, ADD_TYPE_PLAYER_ATTR, ATTR_TONGQIAN, cmn_map, map_info,
    wine_info,
};
use rand::{Rng, seq::SliceRandom};
use rusqlite::Connection;
use serde_json::{Value, json};
use std::collections::{HashMap, HashSet};

/// 从请求里取一个字符串字段，数字也接受。
///
/// 客户端的请求构造器可能把调用方给的值序列化成字符串或数字两种形式，
/// 所以两种都收；其它类型视为请求格式错误。
fn text(data: &Value, key: &str) -> Option<String> {
    data.get(key).and_then(|value| match value {
        Value::String(value) => Some(value.clone()),
        Value::Number(value) => Some(value.to_string()),
        _ => None,
    })
}

/// 业务动作的失败原因，转成 error_code + msg 回给客户端。
///
/// code 只被客户端用于分支比较，message 才会展示给玩家；两者都是静态字符串，
/// 避免把内部错误细节泄漏到界面上。
pub struct BusinessError {
    pub code: &'static str,
    pub message: &'static str,
}

#[derive(Clone, Copy)]
struct PlayerScope<'a> {
    db: &'a Connection,
    principal: &'a str,
    server_id: &'a str,
    tutorial: &'a Tutorial,
}

/// 构造一个业务失败。
pub fn failure(code: &'static str, message: &'static str) -> BusinessError {
    BusinessError { code, message }
}

/// Parse the only tutorial values that the recovered client ever sends.
///
/// Both strings and JSON numbers are accepted because the old JavaScript
/// request builder can serialize a value supplied by a caller in either form.
/// The canonical value returned to the database and to the client is always a
/// string.
/// Apply one recovered business endpoint and return its response.
///
/// Only endpoints on the first-time-player path are handled. Anything else is
/// refused rather than answered with an empty success: the client commits a
/// tutorial milestone on success, so a fake success would let it advance past an
/// operation that never happened.
pub fn apply_business(
    db: &Connection,
    action: &str,
    principal: &str,
    server_id: &str,
    data: &Value,
    tutorial: &Tutorial,
    game_data: &GameData,
) -> Result<Value, BusinessError> {
    if disabled_legacy_action(action) {
        return Err(failure(
            "feature_disabled",
            "该渠道功能在本地重建版本中不可用",
        ));
    }
    match action {
        "user.chooseTeam" => choose_team(db, principal, server_id, data, tutorial),
        "user.chgNickname" => change_nickname(db, principal, server_id, data, tutorial),
        "map.getUserMap" => Ok(json!({
            "result": true,
            "map_info": map_info(
                &player::all_dungeon_clears(db, principal, server_id)
                    .map_err(|_| failure("internal_error", "无法读取关卡进度"))?,
                text(data, "map_id").as_deref(),
                player::profile_info(db, principal, server_id, tutorial)
                    .map_err(|_| failure("internal_error", "无法读取玩家等级"))?["user_level"]
                    .as_i64().unwrap_or(1),
                game_data,
            )
        })),
        "chapter.getChapterInfo" => {
            let map = map_info(
                &player::all_dungeon_clears(db, principal, server_id)
                    .map_err(|_| failure("internal_error", "无法读取关卡进度"))?,
                text(data, "map_id").as_deref(),
                player::profile_info(db, principal, server_id, tutorial)
                    .map_err(|_| failure("internal_error", "无法读取玩家等级"))?["user_level"]
                    .as_i64()
                    .unwrap_or(1),
                game_data,
            );
            let detail = map["chapter_details"][0].clone();
            Ok(json!({"result":true,"map_info":map,"chapter_info":detail,"chapter_detail":detail}))
        }
        "dungeon.fightBefore" => fight_before(db, principal, server_id, data, tutorial, game_data),
        "wine.wine" => recruit(db, principal, server_id, data, tutorial, game_data),
        "wine.wineInfo" => wine_info_query(db, principal, server_id, tutorial, game_data),
        "wine.wineGeneralInfo" => wine_general_info(db, principal, server_id, tutorial, game_data),
        "team.chgBattleTeam" => change_team(db, principal, server_id, data, tutorial),
        "dungeon.fight" => fight(db, principal, server_id, data, tutorial, game_data),
        "item.use" => use_item(db, principal, server_id, data, tutorial),
        "general.setEquipment" => set_equipment(db, principal, server_id, data, tutorial),
        // The client polls this from the activity icons and the party menu.
        // Returning the same shape as login keeps Hint.pushData populated.
        "user.getPushData" => Ok(json!({
            "result": true,
            "cmn": {"push": crate::protocol::push()}
        })),
        _ => Err(failure("not_implemented", "功能尚未重建")),
    }
}

fn fight_before(
    db: &Connection,
    principal: &str,
    server_id: &str,
    data: &Value,
    tutorial: &Tutorial,
    game_data: &GameData,
) -> Result<Value, BusinessError> {
    let id = text(data, "dungeon_id").unwrap_or_default();
    let (chapter, _index, node) = game_data
        .dungeon(&id)
        .ok_or_else(|| failure("invalid_dungeon", "关卡不存在"))?;
    let profile = player::profile_info(db, principal, server_id, tutorial)
        .map_err(|_| failure("internal_error", "无法读取玩家体力"))?;
    let cost = crate::map::dungeon_power(chapter, node);
    let max_times = node
        .times
        .unwrap_or(99)
        .min(if chapter.id.starts_with("105") {
            99
        } else {
            50
        });
    let used = player::dungeon_clears(db, principal, server_id, &id);
    let power = profile["user_power"].as_i64().unwrap_or(0);
    let left = (max_times - used).max(0);
    let before = json!({
        "dungeonId": id,
        "position": text(data, "position").and_then(|value| value.parse::<i64>().ok()).unwrap_or(1),
        "maxTimes": max_times,
        "buyTimesCost": 0,
        "leftTimes": left,
        "powerCost": cost,
        "curPower": power,
        "user_power_date": 0,
        "canFight": power >= cost && left > 0
    });
    let mut response = json!({"result":power >= cost,"fight_before_info":before});
    if power < cost {
        response["error_code"] = json!(-1);
        response["msg"] = json!("体力不足");
    }
    if let Some(plot) = game_data.plot_dialog(&id) {
        response["plot_dialog"] = plot;
    }
    Ok(response)
}

/// 这些端点依赖已停用的实名、支付或第三方渠道服务。
/// 统一返回明确失败，绝不伪造订单、认证或发货成功。
fn disabled_legacy_action(action: &str) -> bool {
    action.starts_with("pay.")
        || action.starts_with("payIos.")
        || action.starts_with("product.")
        || action.starts_with("idcard.")
        || action.starts_with("anysdkAccount.")
        || matches!(
            action,
            "account.bindWithBf"
                | "account.bindWithEasysdk"
                | "account.bindWithFacebook"
                | "account.chgAccountInfo"
                | "notify.activate"
        )
}

fn change_nickname(
    db: &Connection,
    principal: &str,
    server_id: &str,
    data: &Value,
    tutorial: &Tutorial,
) -> Result<Value, BusinessError> {
    let nickname = text(data, "nickname")
        .map(|value| value.trim().to_owned())
        .filter(|value| {
            !value.is_empty() && value.chars().count() <= 12 && !value.chars().any(char::is_control)
        })
        .ok_or_else(|| failure("invalid_nickname", "昵称不能为空且最多 12 个字符"))?;
    let user_info = player::set_nickname(db, principal, server_id, &nickname, tutorial)
        .map_err(|_| failure("internal_error", "无法保存昵称"))?;
    Ok(json!({
        "result": true,
        "user_info": user_info,
        "cmn": {"user_info": user_info}
    }))
}

fn update_resource(
    scope: PlayerScope<'_>,
    resource: &str,
    delta: i64,
    source: &str,
    insufficient_code: &'static str,
) -> Result<Value, BusinessError> {
    match player::change_resource(
        scope.db,
        scope.principal,
        scope.server_id,
        resource,
        delta,
        source,
        scope.tutorial,
    ) {
        Ok(user_info) => Ok(user_info),
        Err(player::ResourceChangeError::Insufficient) => {
            Err(failure(insufficient_code, "可用资源不足"))
        }
        Err(player::ResourceChangeError::Database) => {
            Err(failure("internal_error", "无法更新玩家资源"))
        }
        Err(player::ResourceChangeError::InvalidResource) => {
            Err(failure("internal_error", "资源类型配置错误"))
        }
    }
}

fn choose_team(
    db: &Connection,
    principal: &str,
    server_id: &str,
    data: &Value,
    tutorial: &Tutorial,
) -> Result<Value, BusinessError> {
    // The client sends the static configuration id it offered
    // (GeneralSelectScene: param.general_id = cfg.generalId), not a player key.
    let general_id = text(data, "general_id")
        .filter(|value| !value.is_empty())
        .ok_or_else(|| failure("invalid_data", "缺少武将标识"))?;
    if !general_id.bytes().all(|byte| byte.is_ascii_digit()) {
        return Err(failure("invalid_data", "武将标识格式错误"));
    }
    if !crate::protocol::TUTORIAL_STARTER_GENERALS.contains(&general_id.as_str()) {
        return Err(failure("invalid_general", "该武将不在新手选择列表中"));
    }
    let (entry, created) = player::grant_general(db, principal, server_id, &general_id)
        .map_err(|_| failure("internal_error", "无法保存武将"))?;
    let updates = if created {
        vec![entry.clone()]
    } else {
        Vec::new()
    };
    // Putting the chosen general straight into the first team slot keeps the
    // team screen consistent with the selection the player just made.
    player::set_team_slot(
        db,
        principal,
        server_id,
        "1",
        "1",
        entry["pk_id"].as_str().unwrap_or(""),
    )
    .map_err(|_| failure("internal_error", "无法保存编队"))?;
    // The next story resolves $GirlName and its portrait through
    // Player.first_choose_general (an owned general pk_id). Updating only
    // general_info leaves that pointer empty until the next login.
    let snapshot = player::snapshot(db, principal, server_id, tutorial)
        .map_err(|_| failure("internal_error", "无法读取选将后的玩家状态"))?;
    Ok(json!({
        "result": true,
        "cmn": {
            "general_info": cmn_map(updates, Vec::new()),
            "team_info": snapshot.team,
            // Player.update reads a complete snapshot without per-field guards.
            "user_info": snapshot.user_info
        }
    }))
}

fn recruit(
    db: &Connection,
    principal: &str,
    server_id: &str,
    data: &Value,
    tutorial: &Tutorial,
    game_data: &GameData,
) -> Result<Value, BusinessError> {
    let raw_type = text(data, "type").unwrap_or_else(|| "4".to_string());
    let wine_type = raw_type
        .parse::<i64>()
        .ok()
        .filter(|value| matches!(value, 2..=4))
        .unwrap_or(4);
    let is_multi = wine_truthy(data, "is_multi") || wine_truthy(data, "multi");
    let draw_count = if is_multi { 10 } else { 1 };
    let before = player::wine_status(db, principal, server_id, tutorial.gold_free_draws)
        .map_err(|_| failure("internal_error", "无法读取酒馆状态"))?;
    let cooldown_left = match wine_type {
        2 => before.gold_free_end_time,
        3 => before.silver_free_end_time,
        _ => before.copper_free_end_time,
    };
    let can_draw_free = !is_multi
        && cooldown_left == 0
        && (wine_type != 2 || tutorial.gold_free_draws > 0);

    let expected_item = match wine_type {
        2 => "600023",
        3 => "600024",
        _ => "600025",
    };
    let requested_item_pk = text(data, "user_item_id");
    let selected_item = if can_draw_free {
        None
    } else {
        let required_item = if is_multi { "600032" } else { expected_item };
        let held = requested_item_pk
            .as_deref()
            .and_then(|pk| player::item_config_for_pk(db, principal, server_id, pk))
            .filter(|(item_id, count)| item_id == required_item && *count > 0)
            .map(|(item_id, _)| item_id)
            .or_else(|| {
                player::item_pk_for_config(db, principal, server_id, required_item)
                    .filter(|(_, count)| *count > 0)
                    .map(|_| required_item.to_string())
            });
        held.ok_or_else(|| {
            let message = match (wine_type, is_multi) {
                (2, true) => "将军盏不足",
                (2, false) => "金酒杯不足",
                (3, _) => "银酒杯不足",
                _ => "铜酒杯不足",
            };
            failure("insufficient_wine_item", message)
        })?
        .into()
    };

    let mut item_updates = Vec::new();
    let mut item_deletes = Vec::new();
    if let Some(item_id) = selected_item.as_deref() {
        let (pk_id, _) = player::item_pk_for_config(db, principal, server_id, item_id)
            .ok_or_else(|| failure("insufficient_wine_item", "酒杯不足"))?;
        match player::consume_item(db, principal, server_id, item_id, 1)
            .map_err(|_| failure("internal_error", "无法消耗酒杯"))?
        {
            Some(updated) => item_updates.push(updated),
            None => item_deletes.push(json!(pk_id)),
        }
    }

    let owned_ids = player::owned_general_ids(db, principal, server_id)
        .map_err(|_| failure("internal_error", "无法读取武将"))?;
    let mut seen: HashSet<String> = owned_ids.iter().cloned().collect();
    let first_gold = wine_type == 2 && before.first_gold_consumed == 0;
    let first_silver = wine_type == 3 && before.first_silver_consumed == 0;
    let first_copper = wine_type == 4 && owned_ids.is_empty();
    let mut gold_wine_count = before.gold_wine_count;
    let mut gold_guarantee_phase = before.gold_guarantee_phase;
    let mut newly_owned = Vec::new();
    let mut soul_updates: HashMap<String, Value> = HashMap::new();
    let mut reward_generals = Vec::with_capacity(draw_count);
    let mut reward_souls = Vec::new();
    let mut show_general_info = Vec::with_capacity(draw_count);
    let mut rng = rand::thread_rng();
    let first_copper_pool = ["121007", "111009", "111016"];
    let first_gold_pool = ["111009", "122009", "142002", "122023"];

    for draw_index in 0..draw_count {
        let general_id = match wine_type {
            2 if first_gold && draw_index == 0 => choose_from(
                first_gold_pool
                    .iter()
                    .copied()
                    .filter(|id| !seen.contains(*id))
                    .collect(),
                &mut rng,
            )
            .or_else(|| choose_from(first_gold_pool.to_vec(), &mut rng))
            .unwrap_or_else(|| "111009".to_string()),
            2 => {
                gold_wine_count += 1;
                let interval = if gold_guarantee_phase <= 1 { 4 } else { 10 };
                if gold_wine_count % interval == 0 {
                    gold_guarantee_phase += 1;
                    gold_wine_count = 0;
                    pick_grade(game_data, 1, true, &seen, &mut rng)
                        .unwrap_or_else(|| pick_copper_grade(game_data, &mut rng))
                } else {
                    pick_gold_general(game_data, &owned_ids, &seen, &mut rng)
                }
            }
            3 if first_silver && draw_index == 0 => pick_grade(
                game_data,
                2,
                false,
                &seen,
                &mut rng,
            )
            .unwrap_or_else(|| pick_copper_grade(game_data, &mut rng)),
            3 => pick_silver_general(game_data, &owned_ids, &seen, &mut rng),
            4 if first_copper && draw_index == 0 => {
                choose_from(first_copper_pool.to_vec(), &mut rng)
                    .unwrap_or_else(|| "121007".to_string())
            }
            _ => pick_copper_grade(game_data, &mut rng),
        };
        let is_duplicate = !seen.insert(general_id.clone());
        let name = game_data.general_name(&general_id);
        if is_duplicate {
            player::grant_general_soul(db, principal, server_id, &general_id, 18)
                .map_err(|_| failure("internal_error", "无法保存武将魂魄"))?;
            let soul_entry = json!({
                "pk_id": general_id,
                "id": general_id,
                "general_id": general_id,
                "general_name": name,
                "num": 18,
                "card_type": 1
            });
            reward_souls.push(soul_entry.clone());
            soul_updates.insert(
                general_id.clone(),
                player::general_soul_entry(db, principal, server_id, &general_id)
                    .map_err(|_| failure("internal_error", "无法读取武将魂魄"))?,
            );
            reward_generals.push(json!({
                "pk_id": general_id,
                "id": general_id,
                "general_id": general_id,
                "general_name": name,
                "num": 18,
                "card_type": 1,
                "type": "2"
            }));
            show_general_info.push(json!({
                "id": general_id,
                "general_id": general_id,
                "general_name": name,
                "general_level": 1,
                "general_star": 1,
                "card_type": 1,
                "num": 18,
                "type": "2",
                "general_painting_id": general_id
            }));
        } else {
            let (entry, _) = player::grant_general(db, principal, server_id, &general_id)
                .map_err(|_| failure("internal_error", "无法保存武将"))?;
            newly_owned.push(entry.clone());
            let general_pk = entry["pk_id"].clone();
            reward_generals.push(json!({
                "pk_id": general_pk,
                "id": general_id,
                "general_id": general_id,
                "general_name": name,
                "general_level": 1,
                "general_star": 1,
                "card_type": 1,
                "num": 1,
                "type": "1",
                "general_painting_id": general_id,
                "resource_id": game_data.general_resource_id(&general_id),
                "grade": game_data.general_grade(&general_id)
            }));
            show_general_info.push(json!({
                "id": general_id,
                "general_id": general_id,
                "general_name": name,
                "general_level": 1,
                "general_star": 1,
                "card_type": 1,
                "num": 1,
                "type": "1",
                "general_painting_id": general_id
            }));
        }
    }

    player::finish_wine_draw(
        db,
        principal,
        server_id,
        wine_type,
        gold_wine_count,
        gold_guarantee_phase,
        first_gold,
        first_silver,
    )
    .map_err(|_| failure("internal_error", "无法更新酒馆状态"))?;
    let after = player::wine_status(db, principal, server_id, tutorial.gold_free_draws)
        .map_err(|_| failure("internal_error", "无法读取酒馆状态"))?;
    let user_info = player::profile_info(db, principal, server_id, tutorial)
        .map_err(|_| failure("internal_error", "无法读取玩家资源"))?;
    Ok(json!({
        "result": true,
        "ret": 0,
        "code": 0,
        "error_code": 0,
        "msg": "success",
        "cmn": {
            "general_info": cmn_map(newly_owned, Vec::new()),
            "general_soul_info": cmn_map(soul_updates.into_values().collect(), Vec::new()),
            "item_info": cmn_map(item_updates, item_deletes),
            "user_info": user_info
        },
        "user_wine_info": wine_info(&after, tutorial, game_data),
        "reward_info": {
            "general": reward_generals,
            "general_soul": reward_souls
        },
        "show_general_info": show_general_info
    }))
}

fn wine_truthy(data: &Value, key: &str) -> bool {
    match data.get(key) {
        Some(Value::Bool(value)) => *value,
        Some(Value::Number(value)) => value.as_i64().unwrap_or(0) >= 1,
        Some(Value::String(value)) => {
            value.eq_ignore_ascii_case("true") || value.trim().parse::<i64>().is_ok_and(|n| n >= 1)
        }
        _ => false,
    }
}

fn choose_from<T: Clone>(items: Vec<T>, rng: &mut impl Rng) -> Option<T> {
    items.choose(rng).cloned()
}

fn pick_grade(
    game_data: &GameData,
    grade: i64,
    require_source_one: bool,
    seen: &HashSet<String>,
    rng: &mut impl Rng,
) -> Option<String> {
    let candidates = game_data.wine_candidates(grade, require_source_one);
    choose_from(
        candidates
            .iter()
            .copied()
            .filter(|id| !seen.contains(*id))
            .collect(),
        rng,
    )
    .or_else(|| choose_from(candidates, rng))
}

fn pick_copper_grade(game_data: &GameData, rng: &mut impl Rng) -> String {
    let candidates: Vec<&str> = game_data
        .wine_candidates(3, false)
        .into_iter()
        .chain(game_data.wine_candidates(4, false))
        .collect();
    choose_from(candidates, rng).unwrap_or_else(|| "113010".to_string())
}

fn pick_gold_general(
    game_data: &GameData,
    owned_ids: &[String],
    seen: &HashSet<String>,
    rng: &mut impl Rng,
) -> String {
    if rng.gen_range(0..3) != 0 {
        return choose_from(game_data.wine_candidates(2, false), rng)
            .unwrap_or_else(|| pick_copper_grade(game_data, rng));
    }
    if rng.gen::<f64>() < 0.3 {
        let mut new_grade_one: Vec<&str> = game_data
            .wine_candidates(1, false)
            .into_iter()
            .filter(|id| !seen.contains(*id) && *id != "131007")
            .collect();
        new_grade_one.sort_unstable();
        if let Some(id) = choose_from(new_grade_one, rng) {
            return id.to_string();
        }
    }
    let owned_grade_one: Vec<&str> = owned_ids
        .iter()
        .map(String::as_str)
        .filter(|id| {
            id.parse::<i64>().is_ok_and(|id| (100000..150000).contains(&id))
                && game_data.general_grade(id) == 1
                && game_data.general_name(id).starts_with('魔')
                    == false
                && game_data.general_fighting(id) <= 635.0
        })
        .collect();
    if owned_grade_one.len() > 10 {
        if let Some(id) = choose_from(owned_grade_one, rng) {
            return id.to_string();
        }
    }
    choose_from(game_data.wine_candidates(2, false), rng)
        .unwrap_or_else(|| pick_copper_grade(game_data, rng))
}

fn pick_silver_general(
    game_data: &GameData,
    owned_ids: &[String],
    seen: &HashSet<String>,
    rng: &mut impl Rng,
) -> String {
    let mut normal: Vec<&str> = game_data
        .wine_candidates(3, false)
        .into_iter()
        .filter(|id| !game_data.general_name(id).starts_with('魔'))
        .chain(
            game_data
                .wine_candidates(2, false)
                .into_iter()
                .filter(|id| seen.contains(*id)),
        )
        .collect();
    if rng.gen_range(0..20) == 0 {
        let owned_grade_one: Vec<&str> = owned_ids
            .iter()
            .map(String::as_str)
            .filter(|id| {
                id.parse::<i64>().is_ok_and(|id| (100000..150000).contains(&id))
                    && game_data.general_grade(id) == 1
                    && game_data.general_fighting(id) <= 635.0
                    && !game_data.general_name(id).starts_with('魔')
            })
            .collect();
        if owned_grade_one.len() > 10 {
            if let Some(id) = choose_from(owned_grade_one, rng) {
                return id.to_string();
            }
        }
    }
    normal.sort_unstable();
    choose_from(normal, rng).unwrap_or_else(|| pick_copper_grade(game_data, rng))
}

fn wine_info_query(
    db: &Connection,
    principal: &str,
    server_id: &str,
    tutorial: &Tutorial,
    game_data: &GameData,
) -> Result<Value, BusinessError> {
    let status = player::wine_status(db, principal, server_id, tutorial.gold_free_draws)
        .map_err(|_| failure("internal_error", "无法读取酒馆状态"))?;
    let user_info = player::profile_info(db, principal, server_id, tutorial)
        .map_err(|_| failure("internal_error", "无法读取玩家数据"))?;
    Ok(json!({
        "result": true,
        "ret": 0,
        "code": 0,
        "error_code": 0,
        "msg": "success",
        "wine_info": wine_info(&status, tutorial, game_data),
        "cmn": {"user_info": user_info}
    }))
}

fn wine_general_info(
    db: &Connection,
    principal: &str,
    server_id: &str,
    tutorial: &Tutorial,
    game_data: &GameData,
) -> Result<Value, BusinessError> {
    let status = player::wine_status(db, principal, server_id, tutorial.gold_free_draws)
        .map_err(|_| failure("internal_error", "无法读取酒馆状态"))?;
    let owned = player::owned_general_ids(db, principal, server_id)
        .map_err(|_| failure("internal_error", "无法读取武将"))?;
    let mut seen = HashSet::new();
    let mut previews: Vec<Value> = owned
        .iter()
        .filter(|id| seen.insert((*id).clone()))
        .filter(|id| game_data.is_wine_preview_general(id))
        .map(|id| {
            json!({
                "general_id": id,
                "id": id,
                "pk_id": id,
                "grade": game_data.general_grade(id),
                "general_name": game_data.general_name(id)
            })
        })
        .collect();
    previews.sort_by(|a, b| {
        a["grade"]
            .as_i64()
            .cmp(&b["grade"].as_i64())
            .then_with(|| a["id"].as_str().cmp(&b["id"].as_str()))
    });
    Ok(json!({
        "result": true,
        "ret": 0,
        "code": 0,
        "error_code": 0,
        "msg": "success",
        "wine_info": previews,
        "show_general_list": previews,
        "gold_info": {"free_end_time": status.gold_free_end_time, "free_times": status.gold_free_times, "price": 268},
        "silver_info": {"free_end_time": status.silver_free_end_time, "free_times": status.silver_free_times, "price": 100},
        "copper_info": {"free_end_time": status.copper_free_end_time, "free_times": 1, "price": 10},
        "gold_price": 268,
        "silver_price": 100,
        "copper_price": 10,
        "need_times": 5,
        "first_time_consume_gold": status.first_gold_consumed,
        "multi_price": 2680
    }))
}

fn change_team(
    db: &Connection,
    principal: &str,
    server_id: &str,
    data: &Value,
    tutorial: &Tutorial,
) -> Result<Value, BusinessError> {
    let general_pk_id = text(data, "general_id").unwrap_or_default();
    if !player::owns_general(db, principal, server_id, &general_pk_id) {
        return Err(failure("invalid_general", "该武将不属于当前账号"));
    }
    let team_id = text(data, "team_id").unwrap_or_else(|| "1".to_string());
    let position = text(data, "team_position").unwrap_or_else(|| "1".to_string());
    player::set_team_slot(
        db,
        principal,
        server_id,
        &team_id,
        &position,
        &general_pk_id,
    )
    .map_err(|_| failure("internal_error", "无法保存编队"))?;
    let team = player::snapshot(db, principal, server_id, tutorial)
        .map_err(|_| failure("internal_error", "无法读取编队"))?
        .team;
    Ok(json!({"result": true, "cmn": {"team_info": team}}))
}

fn fight(
    db: &Connection,
    principal: &str,
    server_id: &str,
    data: &Value,
    tutorial: &Tutorial,
    game_data: &GameData,
) -> Result<Value, BusinessError> {
    let dungeon_id = text(data, "dungeon_id").unwrap_or_default();
    let (chapter, index, node) = game_data
        .dungeon(&dungeon_id)
        .ok_or_else(|| failure("invalid_dungeon", "关卡不存在"))?;
    let clears_before = player::all_dungeon_clears(db, principal, server_id)
        .map_err(|_| failure("internal_error", "无法读取关卡进度"))?;
    let prerequisite = if index > 0 {
        chapter.dungeon_id(index - 1)
    } else {
        let chapters = if chapter.id.starts_with("105") {
            game_data.elite_chapters()
        } else {
            game_data.normal_chapters()
        };
        chapters
            .iter()
            .position(|entry| entry.id == chapter.id)
            .and_then(|chapter_index| chapter_index.checked_sub(1))
            .and_then(|previous| {
                let entry = chapters[previous];
                entry.dungeon_id(entry.nodes.len() - 1)
            })
    };
    if prerequisite
        .as_ref()
        .is_some_and(|id| clears_before.get(id).copied().unwrap_or(0) == 0)
    {
        return Err(failure("dungeon_locked", "请先通关前置关卡"));
    }
    let before_fight = player::snapshot(db, principal, server_id, tutorial)
        .map_err(|_| failure("internal_error", "无法读取编队"))?;
    let first_general = before_fight
        .team
        .first()
        .and_then(|slot| slot["pk_id"].as_str())
        .and_then(|pk_id| {
            before_fight
                .generals
                .iter()
                .find(|general| general["pk_id"].as_str() == Some(pk_id))
        })
        .ok_or_else(|| failure("empty_team", "请先选择上阵武将"))?;
    let enemy_id = node.enemies.first().map(String::as_str).unwrap_or("");
    let fight_info = tutorial_fight_info(&before_fight, first_general, enemy_id, tutorial);
    let cost = crate::map::dungeon_power(chapter, node);
    let coin = node.coin;
    let user_exp = crate::map::dungeon_user_exp(
        game_data,
        before_fight.user_info["user_level"].as_i64().unwrap_or(1),
        cost,
    );
    let general_exp = crate::map::general_exp(chapter, index, node);
    let scope = PlayerScope {
        db,
        principal,
        server_id,
        tutorial,
    };
    update_resource(
        scope,
        "user_power",
        -cost,
        "dungeon.fight:power",
        "insufficient_power",
    )?;
    let first = player::record_dungeon_clear(db, principal, server_id, &dungeon_id)
        .map_err(|_| failure("internal_error", "无法保存关卡进度"))?;
    update_resource(
        scope,
        "user_coin",
        coin,
        "dungeon.fight:coin",
        "insufficient_resource",
    )?;
    let mut user_info = update_resource(
        scope,
        "user_experience",
        user_exp,
        "dungeon.fight:experience",
        "insufficient_resource",
    )?;
    let (general_updates, show_general_info) =
        player::award_team_general_experience(db, principal, server_id, general_exp)
            .map_err(|_| failure("internal_error", "无法更新武将经验"))?;

    let mut updates = Vec::new();
    let deletes = Vec::new();
    let mut equipment_updates = Vec::new();
    // FightInfo.initFightResultInfo sends every add_list entry through
    // Tools.Model.createModelWithBase. That factory accepts item/equipment
    // models, but rejects PlayerAttr (100). Coin is already in drop_info and
    // cmn.user_info, so it must not also be a model entry here.
    let mut add_list = Vec::new();
    // First clear of the reward dungeon hands over the gift and the equipment,
    // so the bag and equipment steps later in the tutorial have real entities.
    if first && dungeon_id == tutorial.second_dungeon_id {
        let (gift, _) = player::grant_item(db, principal, server_id, &tutorial.gift_item_id, 1)
            .map_err(|_| failure("internal_error", "无法发放礼包"))?;
        updates.push(gift.clone());
        add_list.push(json!({"type": ADD_TYPE_ITEM, "id": gift["id"], "num": 1}));
        let (equipment, _) =
            player::grant_equipment(db, principal, server_id, &tutorial.equipment_id)
                .map_err(|_| failure("internal_error", "无法发放装备"))?;
        equipment_updates.push(equipment.clone());
        add_list.push(json!({"type": ADD_TYPE_EQUIPMENT, "id": equipment["id"], "num": 1}));
    }
    let clears = player::all_dungeon_clears(db, principal, server_id)
        .map_err(|_| failure("internal_error", "无法读取关卡进度"))?;
    let (current_map, current_dungeon) = crate::map::progress(game_data, &clears);
    user_info["user_map_step"] = json!(current_map);
    user_info["user_position_step"] = json!(current_dungeon);

    let fight_result = json!({
        "success": true,
        "fight_type": 1,
        "player_info": {},
        "fight_calculate_info": {
            "star_level": 3,
            "rounds": 1,
            "residue_team_num": 1,
            "residue_team_percent": 100,
            "up_rank": 0,
            "extra_integration": 0,
            "max_total_integration": 0,
            "point_progress": 0,
            "total_integration": 0
        },
        "drop_info": {
            "user_exp": user_exp,
            "general_exp": general_exp,
            "user_coin": coin,
            "fortune": 0,
            "rank_salary": 0,
            "reward_honor": 0,
            "point": 0
        },
        "add_list": add_list,
        "show_general_info": show_general_info
    });
    player::record_fight(
        db,
        principal,
        server_id,
        &dungeon_id,
        &fight_result,
        &tutorial.fight_rule_version,
    )
    .map_err(|_| failure("internal_error", "无法保存战斗记录"))?;

    Ok(json!({
        "result": true,
        "cmn": {
            "user_info": user_info,
            "item_info": cmn_map(updates, deletes),
            "general_info": cmn_map(general_updates, Vec::new()),
            "equipment_info": cmn_map(equipment_updates, Vec::new())
        },
        "map_info": map_info(&clears, None, user_info["user_level"].as_i64().unwrap_or(1), game_data),
        "fight_info": fight_info,
        "fight_result": fight_result
    }))
}

/// Minimal deterministic animation stream matching the recovered FightInfo
/// and FightRoundItem input contract. Numerical combat balance is local rule v1.
fn tutorial_fight_info(
    snapshot: &player::Snapshot,
    general: &Value,
    enemy_id: &str,
    tutorial: &Tutorial,
) -> Value {
    let nickname = snapshot.user_info["user_nickname"]
        .as_str()
        .unwrap_or("主公");
    let general_id = general["id"].as_str().unwrap_or_default();
    let evolution = general["evolution_image_status"].as_i64().unwrap_or(0);
    json!({
        "init": {
            "first": 0,
            "info": [
                {"userName": nickname, "teamPoint": tutorial.fight_player_team_points.to_string(), "teamLeader": general_id,
                 "evolution_image_status": evolution},
                {"userName": "守关将领", "teamPoint": tutorial.fight_enemy_team_points.to_string(), "teamLeader": enemy_id,
                 "evolution_image_status": 0}
            ],
            "cards": [
                {"id": general_id, "hpCur": tutorial.fight_player_hp, "hpMax": tutorial.fight_player_hp,
                 "name": "上阵武将", "evolution_image_status": evolution},
                {"id": enemy_id, "hpCur": tutorial.fight_enemy_hp, "hpMax": tutorial.fight_enemy_hp,
                 "name": "守关将领", "evolution_image_status": 0}
            ],
            "cards_size0": 1,
            "cards_size1": 1,
            "backups_size0": 0,
            "backups_size1": 0,
            "roundMax": 1,
            "skipRounds": 0,
            "roundCur": 1
        },
        "rounds": [
            {"skill": "Round", "params": {"pre": {"roundCur": 1}}},
            {"from": [0], "to": [1], "skill": "Attack_Knife", "type": 0,
             "params": {"to": [{"hpCur": 0, "hpMax": tutorial.fight_enemy_hp, "hp": tutorial.fight_enemy_hp,
                                   "event": ["death"]}]}}
        ]
    })
}

fn tutorial_clears(
    db: &Connection,
    principal: &str,
    server_id: &str,
    tutorial: &Tutorial,
) -> Vec<i64> {
    tutorial
        .dungeons()
        .iter()
        .map(|(id, _, _)| player::dungeon_clears(db, principal, server_id, id))
        .collect()
}

fn use_item(
    db: &Connection,
    principal: &str,
    server_id: &str,
    data: &Value,
    tutorial: &Tutorial,
) -> Result<Value, BusinessError> {
    let user_item_id = text(data, "user_item_id").unwrap_or_default();
    let held = player::item_config_for_pk(db, principal, server_id, &user_item_id)
        .ok_or_else(|| failure("invalid_item", "该道具不属于当前账号"))?;
    if held.0 != tutorial.gift_item_id {
        return Err(failure("not_implemented", "该道具的使用效果尚未重建"));
    }
    let num = match text(data, "item_num") {
        None => 1,
        Some(value) => value
            .parse::<i64>()
            .ok()
            .filter(|value| *value > 0)
            .ok_or_else(|| failure("invalid_data", "道具数量格式错误"))?,
    };
    if num > held.1 {
        return Err(failure("insufficient_item", "道具数量不足"));
    }

    let mut updates = Vec::new();
    let mut deletes = Vec::new();
    let mut add_list = Vec::new();
    let scope = PlayerScope {
        db,
        principal,
        server_id,
        tutorial,
    };
    match player::consume_item(db, principal, server_id, &held.0, num)
        .map_err(|_| failure("internal_error", "无法消耗道具"))?
    {
        Some(entry) => updates.push(entry),
        None => deletes.push(json!(user_item_id)),
    }
    let (equipment, _) = player::grant_equipment(db, principal, server_id, &tutorial.equipment_id)
        .map_err(|_| failure("internal_error", "无法发放装备"))?;
    add_list.push(json!({
        "type": ADD_TYPE_EQUIPMENT,
        "id": equipment["id"],
        "num": 1
    }));
    let user_info = if tutorial.gift_coin > 0 {
        let user_info = update_resource(
            scope,
            "user_coin",
            tutorial.gift_coin,
            "item.use:tutorial_gift",
            "insufficient_resource",
        )?;
        add_list.push(json!({
            "type": ADD_TYPE_PLAYER_ATTR,
            "id": ATTR_TONGQIAN,
            "num": tutorial.gift_coin
        }));
        user_info
    } else {
        player::profile_info(db, principal, server_id, tutorial)
            .map_err(|_| failure("internal_error", "无法读取玩家资源"))?
    };
    // The gift is the only place the equipment can come from if the player
    // skipped the reward dungeon, so this delta has to be sent as well.
    let equipment_updates = vec![equipment];
    Ok(json!({
        "result": true,
        "cmn": {
            "user_info": user_info,
            "item_info": cmn_map(updates, deletes),
            "equipment_info": cmn_map(equipment_updates, Vec::new())
        },
        "add_list": add_list
    }))
}

fn set_equipment(
    db: &Connection,
    principal: &str,
    server_id: &str,
    data: &Value,
    tutorial: &Tutorial,
) -> Result<Value, BusinessError> {
    let general_pk_id = text(data, "user_general_id").unwrap_or_default();
    let equipment_pk_id = text(data, "new_equipment_id").unwrap_or_default();
    let entry = player::equip(db, principal, server_id, &general_pk_id, &equipment_pk_id)
        .map_err(|_| failure("internal_error", "无法保存装备"))?
        .ok_or_else(|| failure("invalid_equipment", "武将或装备不属于当前账号"))?;
    let snapshot = player::snapshot(db, principal, server_id, tutorial)
        .map_err(|_| failure("internal_error", "无法读取装备"))?;
    Ok(json!({
        "result": true,
        "cmn": {
            "equipment_info": cmn_map(vec![entry], Vec::new()),
            "general_info": cmn_map(
                snapshot
                    .generals
                    .into_iter()
                    .filter(|general| general["pk_id"].as_str() == Some(general_pk_id.as_str()))
                    .collect::<Vec<Value>>(),
                Vec::new()
            )
        }
    }))
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn retired_channel_payment_and_identity_actions_are_explicitly_disabled() {
        let db = rusqlite::Connection::open_in_memory().unwrap();
        let game_data = GameData::load(&crate::gamedata::default_dir()).unwrap();
        let disabled = [
            "pay.createTrade",
            "payIos.iosCharge",
            "product.createOrder",
            "product.notify",
            "idcard.save",
            "anysdkAccount.index",
            "account.bindWithBf",
            "account.chgAccountInfo",
            "notify.activate",
        ];
        for action in disabled {
            let error = apply_business(
                &db,
                action,
                "account:1",
                "1001",
                &json!({}),
                &Tutorial::default(),
                &game_data,
            )
            .unwrap_err();
            assert_eq!(error.code, "feature_disabled", "{action}");
        }
    }
}
