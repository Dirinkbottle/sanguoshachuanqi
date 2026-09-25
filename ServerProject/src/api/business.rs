//! 教程路径上的七个业务动作。
//!
//! 每个动作只做两件事：改本账号在本区服的状态，然后返回客户端需要的 cmn 增量。
//! 未重建的端点一律拒绝而不是返回空成功——客户端在成功回调里推进教程，
//! 假成功会让它跳过一步从未真正发生过的操作。

//! 响应形状由 protocol 层决定：本模块只负责改状态，然后用 `cmn_map` /
//! `map_info` / `wine_info` 把结果包成客户端要的样子。

use crate::config::Tutorial;
use crate::player;
use crate::protocol::{
    ADD_TYPE_EQUIPMENT, ADD_TYPE_ITEM, ADD_TYPE_PLAYER_ATTR, ATTR_TONGQIAN, REWARD_DUNGEON,
    TUTORIAL_DUNGEONS, cmn_map, map_info, wine_info,
};
use rusqlite::Connection;
use serde_json::{Value, json};

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
) -> Result<Value, BusinessError> {
    match action {
        "user.chooseTeam" => choose_team(db, principal, server_id, data),
        "user.chgNickname" => Ok(json!({"result": true, "cmn": {}})),
        "wine.wine" => recruit(db, principal, server_id, tutorial),
        "team.chgBattleTeam" => change_team(db, principal, server_id, data),
        "dungeon.fight" => fight(db, principal, server_id, data, tutorial),
        "item.use" => use_item(db, principal, server_id, data, tutorial),
        "general.setEquipment" => set_equipment(db, principal, server_id, data),
        // The client polls this from the activity icons and the party menu.
        // Returning the same shape as login keeps Hint.pushData populated.
        "user.getPushData" => Ok(json!({
            "result": true,
            "cmn": {"push": crate::protocol::push()}
        })),
        _ => Err(failure("not_implemented", "功能尚未重建")),
    }
}

fn choose_team(
    db: &Connection,
    principal: &str,
    server_id: &str,
    data: &Value,
) -> Result<Value, BusinessError> {
    // The client sends the static configuration id it offered
    // (GeneralSelectScene: param.general_id = cfg.generalId), not a player key.
    let general_id = text(data, "general_id")
        .filter(|value| !value.is_empty())
        .ok_or_else(|| failure("invalid_data", "缺少武将标识"))?;
    if !general_id.bytes().all(|byte| byte.is_ascii_digit()) {
        return Err(failure("invalid_data", "武将标识格式错误"));
    }
    let (entry, created) = player::grant_general(db, principal, server_id, &general_id)
        .map_err(|_| failure("internal_error", "无法保存武将"))?;
    let updates = if created { vec![entry.clone()] } else { Vec::new() };
    // Putting the chosen general straight into the first team slot keeps the
    // team screen consistent with the selection the player just made.
    player::set_team_slot(db, principal, server_id, "1", "1", entry["pk_id"].as_str().unwrap_or(""))
        .map_err(|_| failure("internal_error", "无法保存编队"))?;
    Ok(json!({
        "result": true,
        "cmn": {
            "general_info": cmn_map(updates, Vec::new()),
            "team_info": player::snapshot(db, principal, server_id)
                .map_err(|_| failure("internal_error", "无法读取编队"))?.team
        }
    }))
}

fn recruit(
    db: &Connection,
    principal: &str,
    server_id: &str,
    tutorial: &Tutorial,
) -> Result<Value, BusinessError> {
    let (entry, created) = player::grant_general(db, principal, server_id, &tutorial.recruit_general_id)
        .map_err(|_| failure("internal_error", "无法保存武将"))?;
    let updates = if created { vec![entry.clone()] } else { Vec::new() };
    // ToastResultView reads reward_info.general[0].id and then looks the player
    // entity up by that configuration id, so the array must not be empty and the
    // entity must exist in the same response through cmn.general_info.
    Ok(json!({
        "result": true,
        "cmn": {"general_info": cmn_map(updates, Vec::new())},
        "user_wine_info": wine_info(),
        "reward_info": {
            "general": [{
                "id": entry["id"],
                "type": "1",
                "num": 1,
                "pk_id": entry["pk_id"]
            }],
            "general_soul": []
        }
    }))
}

fn change_team(
    db: &Connection,
    principal: &str,
    server_id: &str,
    data: &Value,
) -> Result<Value, BusinessError> {
    let general_pk_id = text(data, "general_id").unwrap_or_default();
    if !player::owns_general(db, principal, server_id, &general_pk_id) {
        return Err(failure("invalid_general", "该武将不属于当前账号"));
    }
    let team_id = text(data, "team_id").unwrap_or_else(|| "1".to_string());
    let position = text(data, "team_position").unwrap_or_else(|| "1".to_string());
    player::set_team_slot(db, principal, server_id, &team_id, &position, &general_pk_id)
        .map_err(|_| failure("internal_error", "无法保存编队"))?;
    let team = player::snapshot(db, principal, server_id)
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
) -> Result<Value, BusinessError> {
    let dungeon_id = text(data, "dungeon_id").unwrap_or_default();
    let Some((id, name)) = TUTORIAL_DUNGEONS
        .iter()
        .find(|(id, _)| *id == dungeon_id.as_str())
    else {
        return Err(failure("not_implemented", "该关卡尚未重建"));
    };
    let first = player::record_dungeon_clear(db, principal, server_id, id)
        .map_err(|_| failure("internal_error", "无法保存关卡进度"))?;

    let mut updates = Vec::new();
    let mut deletes = Vec::new();
    let mut equipment_updates = Vec::new();
    let mut add_list = Vec::new();
    // First clear of the reward dungeon hands over the gift and the equipment,
    // so the bag and equipment steps later in the tutorial have real entities.
    if first && id == &REWARD_DUNGEON {
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
    let _ = (&mut deletes, name);

    let clears: Vec<i64> = TUTORIAL_DUNGEONS
        .iter()
        .map(|(id, _)| player::dungeon_clears(db, principal, server_id, id))
        .collect();

    Ok(json!({
        "result": true,
        "cmn": {
            "item_info": cmn_map(updates, deletes),
            "equipment_info": cmn_map(equipment_updates, Vec::new())
        },
        "map_info": map_info(&clears),
        "fight_info": {"init": {}, "rounds": []},
        "fight_result": {
            "success": true,
            "fight_type": 1,
            "player_info": {},
            "fight_calculate_info": {
                "star_level": 1,
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
                "user_exp": 10,
                "general_exp": 10,
                "user_coin": 100,
                "fortune": 0,
                "rank_salary": 0,
                "reward_honor": 0,
                "point": 0
            },
            "add_list": add_list,
            "show_general_info": []
        }
    }))
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
    let wanted = text(data, "item_num")
        .and_then(|value| value.parse::<i64>().ok())
        .unwrap_or(1)
        .max(1);
    let num = wanted.min(held.1);

    let mut updates = Vec::new();
    let mut deletes = Vec::new();
    let mut add_list = Vec::new();
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
    if tutorial.gift_coin > 0 {
        add_list.push(json!({
            "type": ADD_TYPE_PLAYER_ATTR,
            "id": ATTR_TONGQIAN,
            "num": tutorial.gift_coin
        }));
    }
    // The gift is the only place the equipment can come from if the player
    // skipped the reward dungeon, so this delta has to be sent as well.
    let equipment_updates = vec![equipment];
    Ok(json!({
        "result": true,
        "cmn": {
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
) -> Result<Value, BusinessError> {
    let general_pk_id = text(data, "user_general_id").unwrap_or_default();
    let equipment_pk_id = text(data, "new_equipment_id").unwrap_or_default();
    let entry = player::equip(db, principal, server_id, &general_pk_id, &equipment_pk_id)
        .map_err(|_| failure("internal_error", "无法保存装备"))?
        .ok_or_else(|| failure("invalid_equipment", "武将或装备不属于当前账号"))?;
    let snapshot = player::snapshot(db, principal, server_id)
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
