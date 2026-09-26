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
    if text(data, "type").as_deref() != Some("2") {
        return Err(failure("invalid_wine_type", "当前仅开放金酒杯单抽"));
    }
    if text(data, "is_multi").is_some_and(|value| value != "0") {
        return Err(failure("not_implemented", "十连招募尚未重建"));
    }
    if data.get("user_item_id").is_some() {
        return Err(failure("invalid_item", "当前账号没有可用的招募道具"));
    }
    let used_free_draw =
        player::consume_free_gold_wine(db, principal, server_id, tutorial.gold_free_draws)
            .map_err(|_| failure("internal_error", "无法更新酒馆次数"))?;
    let scope = PlayerScope {
        db,
        principal,
        server_id,
        tutorial,
    };
    let user_info = if used_free_draw {
        player::profile_info(db, principal, server_id, tutorial)
            .map_err(|_| failure("internal_error", "无法读取玩家资源"))?
    } else {
        update_resource(
            scope,
            "user_gold",
            -tutorial.gold_single_price,
            "wine.wine:gold-single",
            "insufficient_gold",
        )?
    };
    if !used_free_draw {
        player::mark_gold_first_consumed(db, principal, server_id)
            .map_err(|_| failure("internal_error", "无法更新酒馆状态"))?;
    }
    let (entry, created) =
        player::grant_general(db, principal, server_id, &tutorial.recruit_general_id)
            .map_err(|_| failure("internal_error", "无法保存武将"))?;
    let updates = if created {
        vec![entry.clone()]
    } else {
        Vec::new()
    };
    // ToastResultView reads reward_info.general[0].id and then looks the player
    // entity up by that configuration id, so the array must not be empty and the
    // entity must exist in the same response through cmn.general_info.
    let (gold_free_times, gold_free_end_time, first_time_consume_gold) =
        player::wine_gold_state(db, principal, server_id, tutorial.gold_free_draws)
            .map_err(|_| failure("internal_error", "无法读取酒馆次数"))?;
    Ok(json!({
        "result": true,
        "cmn": {
            "general_info": cmn_map(updates, Vec::new()),
            "user_info": user_info
        },
        "user_wine_info": wine_info(
            gold_free_times,
            gold_free_end_time,
            first_time_consume_gold,
            tutorial,
            game_data,
        ),
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
