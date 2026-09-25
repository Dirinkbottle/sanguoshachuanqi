//! 协议层：把数据摆成客户端能直接消费的形状。
//!
//! 这里不含业务判断，也不碰数据库。每个函数的文档都注明它对应客户端的哪个
//! 读取点，改形状之前请先核对那里的守卫写法——恢复出的客户端有不少地方是
//! "无守卫解引用"，少一个字段就会抛异常而不是降级。

use serde_json::{Value, json};

use crate::config::Zone;

/// `add_list` 的元素类型，取自 ReconstructedJS/src_jsc/Cfg/Constant.js 的
/// `Constant_ObjType_*`。客户端按这个值决定用什么模型渲染奖励条目。
pub const ADD_TYPE_EQUIPMENT: i64 = 3;
pub const ADD_TYPE_ITEM: i64 = 5;
pub const ADD_TYPE_PLAYER_ATTR: i64 = 100;
/// `Models/AddPlayerInfoType_TongQian`：`type = 100` 时的属性子类型。
pub const ATTR_TONGQIAN: i64 = 3;

/// 重建的第一章里两个关卡：`(关卡 ID, 显示名)`。
///
/// `sgs_map_conf.js` 在包内是空数组且在服务端下发清单里，所以章节与关卡 ID
/// 本来就由服务端提供。选 `500001` 的依据是 `Views/Dialog/DungeonView.js`
/// 把教程引导标签绑定在该 map id 上（见 GAME_PROTOCOL.md）。
pub const TUTORIAL_DUNGEONS: [(&str, &str); 2] =
    [("50000101", "赤壁之战"), ("50000102", "虎牢关")];

/// 这个关卡的首次通关会发放礼包与装备，让后面的背包和装备步骤有东西可操作。
pub const REWARD_DUNGEON: &str = "50000102";

/// 回答 `versionPlus.check`。
///
/// 更新检查由 UpdateScene 直接拼完整 URL 发出，不走 `Cfg/Url.js`。
/// 这里固定返回"无更新"，让状态机转向 `Step_Update_EnterLogin`。
/// `resource_version` 原样回显客户端的取值，避免它反复请求。
pub fn version(data: &Value) -> Value {
    let resource = data
        .get("resource_version")
        .and_then(Value::as_str)
        .unwrap_or("775");
    json!({"result":false,"resource_version":resource,"resource_version_show":resource,
        "is_cpp_update":false,"download_url":"","filesize":"0","md5":"","tips":""})
}

/// 回答 `menu.notice`。
///
/// `notice` 是一个 **JSON 编码的字符串**，不是数组本身：客户端先解码字符串
/// 再读 `title` / `content`。正文是本重建环境的说明，不是原运营方公告。
pub fn notice() -> Value {
    let inner = json!([{"title":"玩家协议","content":
        "当前为本地服务区重建环境。原运营方公告服务未恢复；此处仅用于验证原版协议弹窗的请求和显示。"}]);
    json!({"result":true,"notice":inner.to_string()})
}

/// 回答 `account.index`：服务区列表 + 会话凭据。
///
/// `token` 与 `user_auth` 都填会话令牌本身：客户端把 `user_auth` 存在
/// `UserCfg` 并在之后每个游戏请求里回传，所以它必须与服务端校验的值逐字一致。
/// `server_url` 指向本服务的 `/game/{id}` 路由。
/// `server_logined_list` 留空：重建环境不记录玩家上次进过哪个区。
pub fn server_list(
    account_uid: String,
    zones: &[Zone],
    host: &str,
    session_token: Option<&str>,
) -> Value {
    let list: Vec<Value> = zones
        .iter()
        .map(|zone| {
            json!({
                "server_id":zone.server_id,"server_title":zone.server_title,
                "server_status":zone.server_status,
                "server_url":format!("{host}/game/{}",zone.server_id),
            })
        })
        .collect();
    let token = session_token.unwrap_or("");
    json!({"result":true,"account_info":{"account_uid":account_uid},
        "server_list":list,"server_logined_list":[],"server_params":{},
        "token":token,"user_auth":token})
}

/// `cmn.push` 的最小可用载荷。
///
/// 这不是装饰。`Profile/GameData/Hint.js` 把 `updateHintInfo` 注册为
/// `Constant_Notify_ModelChange_Push` 的观察者，而那是唯一给 `Hint.pushData`
/// 赋值的地方。`MainMenuScene.init` 紧接着就调用 `Hint.haveMenuHintInfo()` ->
/// `Hint.mailHintInfoCount()`，后者**没有** `if (this.pushData)` 守卫。
/// 所以只要没有任何响应带过 `cmn.push`，构造主界面就会抛异常，表现为
/// "教程剧情结束进入主城、还没到改名步骤时黑屏"。
///
/// 四个子字段同样没有守卫（`Models/PushInfo.js` 的 `getClimbTimes` /
/// `getTrainNum` / `getGiftCanBuyNum` / `getLadderExchangeNum_Salary`），
/// 而模型里默认是 null，因此必须以带 `num` 的对象形式出现。其余字段都读在
/// `if (this.x)` 之后，可以省略。`party` 是数组不是对象
/// （模型走 `this.m_party.loadJson(json.party)`）。
pub fn push() -> Value {
    json!({
        "climb": {"num": 0},
        "training": {"num": 0},
        "vipstore": {"num": 0},
        "ladderstore": {"num": 0},
        "party": []
    })
}

/// 统一的失败响应。
///
/// 客户端判定成功只看 `data.result` 的真值（ReconstructedJS/src_jsc/Views/Mgr.js:244），
/// 失败时读 `error_code` 与 `msg`：前者只用于客户端分支比较，后者才会展示给玩家。
pub fn error(code: &str, message: &str) -> Value {
    json!({"result":false,"error_code":code,"msg":message})
}

/// cmn 的 Map 类型增量形状。
///
/// 客户端按 `update_list` 里的 `pk_id` 增改、按 `del_list` 删除
/// （ReconstructedJS/src_jsc/Profile/GameData/common.js:423-526）。
/// 找不到 `pk_id` 时会新建模型，所以新增和更新用同一种形状表达。
pub fn cmn_map(updates: Vec<Value>, deletes: Vec<Value>) -> Value {
    json!({"update_list": updates, "del_list": deletes})
}

/// 构造一个关卡节点，`user_dungeon_times` 反映本账号在该关的通关次数。
///
/// 字段名逐条对应 `Models/Dungeon.js` 的读取；`star_level` 在通关后置 "1"，
/// 客户端据此显示星级。
fn map_entry(dungeon_id: &str, name: &str, clears: i64) -> Value {
    json!({
        "type": "dungeon",
        "dungeon_id": dungeon_id,
        "dungeon_position": if dungeon_id.ends_with("01") { "1" } else { "2" },
        "dungeon_name": name,
        "dungeon_card": "000001",
        "dungeon_grade": "1",
        "dungeon_suggest_level": "1",
        "dungeon_power": "5",
        "dungeon_user_exp": "10",
        "dungeon_general_exp": "10",
        "dungeon_coin": "100",
        "dungeon_times": "100",
        "user_dungeon_times": clears.to_string(),
        "num_item_price": "0",
        "can_show": 1,
        "can_in": 1,
        "star_level": if clears > 0 { "1" } else { "0" },
        "direction": [],
        "is_newest": true,
        "unlocked_id": [],
        "elite_buy_times": "0",
        "dungeon_drop": []
    })
}

/// `map_info`：一个章节 + 两个关卡。
///
/// 客户端在登录和每次副本成功后都会调用 `GameData.Map.update(map_info)`，
/// 所以形状必须一致。章节 ID `500001` 的原因见 `TUTORIAL_DUNGEONS`。
pub fn map_info(clears: &[i64]) -> Value {
    let nodes: Vec<Value> = TUTORIAL_DUNGEONS
        .iter()
        .enumerate()
        .map(|(index, (id, name))| map_entry(id, name, clears.get(index).copied().unwrap_or(0)))
        .collect();
    json!({
        "chapter_list": [{
            "map_id": "500001",
            "map_name": "初入三国",
            "map_type": "1",
            "can_show": 1,
            "can_in": 1
        }],
        "chapter_details": [{
            "map_id": "500001",
            "map_name": "初入三国",
            "map_bgimage": "",
            "can_in": 1,
            "dungeon_info": nodes
        }]
    })
}

/// `wine_info`：酒馆各档位的价格与免费次数。
///
/// 客户端在 `ToastView.updateDesk` 里读 `gold_info.free_times` 等字段
/// 决定按钮状态；这里填的数值是重建设计，不是原服的酒馆配置。
pub fn wine_info() -> Value {
    json!({
        "gold_info": {"free_end_time": 0, "free_times": 1},
        "gold_price": 50,
        "silver_info": {"free_end_time": 0, "free_times": 1},
        "silver_price": 1000,
        "copper_info": {"free_end_time": 0, "free_times": 1},
        "copper_price": 100,
        "need_times": 10,
        "first_time_consume_gold": 50,
        "multi_price": 450,
        "show_general_list": []
    })
}

/// 构造登录成功的完整快照。
///
/// 结构上分三块：根字段里 `user_auth` 被客户端无条件取用；`cmn` 承载全部
/// 玩家状态（客户端从它重建模型）；`map_info` / `wine_info` 被无条件传给
/// 各自的 `update`。
///
/// 响应根上其余的开关字段（`isShowGem` 之类）客户端都读在 `!= null` 守卫之后，
/// 省略即保持默认，所以这里不发——这是重建设计，不代表原服不发。
/// `cmn.push` 则是必须的，原因见 `push()`。
pub fn login_response_with_auth(
    account_uid: &str,
    server_id: &str,
    freshman_step: &str,
    user_auth: &str,
    snapshot: &crate::player::Snapshot,
    clears: &[i64],
) -> Value {
    let player_id = format!("{account_uid}-{server_id}");
    let team_size = snapshot.team.len() as i64;
    let user_info = json!({
        "user_id": player_id,
        "account_uid": account_uid,
        "user_nickname": "主公",
        "user_level": 1,
        "user_charge_count": 1,
        "user_vip_level": 0,
        "user_experience": 0,
        "user_coin": 1000,
        "user_gold": 100,
        "user_sign": "",
        "item_count": {},
        "user_power": 20 + team_size * 10,
        "user_power_date": 0,
        "user_energy": 20,
        "user_energy_date": 0,
        "gold_soul": 0,
        "sliver_soul": 0,
        "user_last_login_time": 0,
        "user_ability": 0,
        "user_map_step": "500001",
        "user_position_step": "50000101",
        "user_elite_map_step": "",
        "user_elite_position_step": "",
        "dungeon_cold_time": 0,
        "cd_item_price": 0,
        "base_cold_time": 0,
        "to_danger_time": 0,
        "current_charge_gold": 0,
        "count_charge_gold": 0,
        "freshman_step": freshman_step,
        "first_choose_general": if snapshot.generals.is_empty() { "" } else { "1" },
        "first_wine_general": if snapshot.generals.len() > 1 { "1" } else { "" },
        "triple_speed": false,
        "triple_speed_vip_level": 0,
        "ladder_rank_salary": 0,
        "user_honor": 0,
        "ladder_challenging_num": 0,
        "union_id": 0,
        "union_name": "",
        "user_role": 0,
        "user_donate": 0,
        "donate_state": false,
        "donate_num": 0,
        "union_war_sign_up": false
    });

    json!({
        "result": true,
        "user_auth": user_auth,
        "cmn": {
            "user_info": user_info,
            "general_info": cmn_map(snapshot.generals.clone(), Vec::new()),
            "general_soul_info": cmn_map(Vec::new(), Vec::new()),
            "skill_info": cmn_map(Vec::new(), Vec::new()),
            "equipment_info": cmn_map(snapshot.equipment.clone(), Vec::new()),
            "item_info": cmn_map(snapshot.items.clone(), Vec::new()),
            "equipment_piece_info": cmn_map(Vec::new(), Vec::new()),
            "atlas_info": cmn_map(Vec::new(), Vec::new()),
            "skill_piece_info": cmn_map(Vec::new(), Vec::new()),
            "gem_info": cmn_map(Vec::new(), Vec::new()),
            "magic_info": cmn_map(Vec::new(), Vec::new()),
            "godness_info": cmn_map(Vec::new(), Vec::new()),
            "meridian_info": cmn_map(Vec::new(), Vec::new()),
            "evolution_info": cmn_map(Vec::new(), Vec::new()),
            "combat_info": [],
            "team_info": snapshot.team.clone(),
            "buddy_info": [],
            // 必须在第一个成功响应里出现，理由见 push()。
            "push": push()
        },
        "map_info": map_info(clears),
        "wine_info": wine_info()
    })
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::player::Snapshot;

    fn empty_snapshot() -> Snapshot {
        Snapshot {
            generals: Vec::new(),
            items: Vec::new(),
            equipment: Vec::new(),
            team: Vec::new(),
        }
    }

    #[test]
    fn login_snapshot_contains_client_required_tutorial_fields() {
        let response =
            login_response_with_auth("7", "1001", "30000", "auth", &empty_snapshot(), &[0, 0]);
        assert_eq!(response["result"], true);
        assert_eq!(response["cmn"]["user_info"]["freshman_step"], "30000");
        assert_eq!(response["map_info"]["chapter_list"][0]["map_id"], "500001");
        assert_eq!(response["wine_info"]["gold_info"]["free_times"], 1);
        assert_eq!(
            response["map_info"]["chapter_details"][0]["dungeon_info"]
                .as_array()
                .unwrap()
                .len(),
            2
        );
    }

    /// `cmn.push` 必须在第一个成功响应里。
    ///
    /// `Hint.pushData` 只由 `Constant_Notify_ModelChange_Push` 的观察者赋值，
    /// 而 `MainMenuScene` 无守卫地解引用它。丢掉这个字段会让客户端在构造主界面时
    /// 抛异常，屏幕停在黑色。
    #[test]
    fn login_snapshot_carries_the_push_model_the_main_menu_needs() {
        let response =
            login_response_with_auth("7", "1001", "0", "auth", &empty_snapshot(), &[0, 0]);
        let push = &response["cmn"]["push"];
        assert!(push.is_object(), "cmn.push must be an object");
        // 这四个读取在 Models/PushInfo.js 里没有守卫，且模型默认值为 null。
        for field in ["climb", "training", "vipstore", "ladderstore"] {
            assert!(
                push[field]["num"].is_number(),
                "cmn.push.{field}.num is dereferenced without a guard"
            );
        }
        assert!(push["party"].is_array());
    }
}
