//! 协议层：把数据摆成客户端能直接消费的形状。
//!
//! 这里不含业务判断，也不碰数据库。每个函数的文档都注明它对应客户端的哪个
//! 读取点，改形状之前请先核对那里的守卫写法——恢复出的客户端有不少地方是
//! "无守卫解引用"，少一个字段就会抛异常而不是降级。

use serde_json::{Value, json};

use crate::config::{Tutorial, Zone};
use crate::gamedata::GameData;

/// `add_list` 的元素类型，取自 ReconstructedJS/src_jsc/Cfg/Constant.js 的
/// `Constant_ObjType_*`。客户端按这个值决定用什么模型渲染奖励条目。
pub const ADD_TYPE_EQUIPMENT: i64 = 3;
pub const ADD_TYPE_ITEM: i64 = 5;
pub const ADD_TYPE_PLAYER_ATTR: i64 = 100;
/// `Models/AddPlayerInfoType_TongQian`：`type = 100` 时的属性子类型。
pub const ATTR_TONGQIAN: i64 = 3;

/// Client's fallback map id from `Tools/CfgData.js` (`Constant_CfgDataType_Map`).
pub const NEWBIE_MAP_ID: &str = "500001";
/// 已解锁真·第一章的章节 id（`chapter_battle_layouts.json` 的 key `501`）。
pub const REAL_MAP_ID: &str = "501";
/// `FreshmanChooseGeneralId` from the shipped `sgs_global_conf.js` table.
pub const TUTORIAL_STARTER_GENERALS: [&str; 4] = ["121018", "131006", "141007", "121013"];

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

/// 章节列表、关卡、宝箱统一由离线服配置构建。客户端地图 ID 只在协议边界映射。
pub fn map_info(
    clears: &crate::map::Clears,
    requested_map_id: Option<&str>,
    user_level: i64,
    gamedata: &GameData,
) -> Value {
    crate::map::build(gamedata, clears, requested_map_id, user_level)
}

/// `wine_info`：酒馆各档位的价格、免费次数与保底进度。
///
/// 结构与价格来自离线服 `wine.wineInfo` 的实现（handler/x0.java:117-119 C()
/// 与 :2160-2213）。离线服里并存着两套价格：登录响应的简化快照用
/// 100/50/20/多抽 900（handler/d.java:522），正式 `wine.wineInfo` 用本函数
/// 的 268/100/10/多抽 2680——我们按正式接口的那套下发。
///
/// 冷却规则（x0.java:2165-2167）：金 1800s、银 600s、铜 300s。金酒免费抽的
/// 剩余秒数来自 `wine_state`，初始可用时 `free_end_time = 0`；银/铜没有抽取端点，
/// 因而保持本地初始可用。保底（x0.java:2184-2195）：
/// `gold_guarantee_phase <= 1` 时
/// 每 4 抽必出金（need_times=4），否则每 10 抽。`first_time_consume_gold` 由本地
/// 酒馆状态记录首次金酒抽取，和原服 `first_gold_wine` 标记对应。
pub fn wine_info(
    gold_free_times: i64,
    gold_free_end_time: i64,
    first_time_consume_gold: i64,
    tutorial: &Tutorial,
    gamedata: &GameData,
) -> Value {
    // GeneralCardShow draws a card carousel as soon as StoreScene opens. An
    // empty list makes getCardDataByIndexOffset return undefined, so the pool
    // must be non-empty — guaranteed at startup by `GameData::load`.
    // x0.f1032g 是混合奖励表；GameData 已筛出 type=6 的武将供卡片轮播展示。
    let pool: Vec<String> = gamedata.wine_general_ids().to_vec();
    let show_general_list: Vec<Value> = pool
        .iter()
        .map(|id| {
            json!({
                "general_id": id,
                "tag_id": "0",
                "show_time": "0",
                "disappear_time": "0"
            })
        })
        .collect();
    let need_times = if tutorial.gold_guarantee_phase <= 1 {
        4
    } else {
        10
    };
    json!({
        "toast": [],
        "list": [],
        "gold_info": {"free_end_time": gold_free_end_time, "free_times": gold_free_times, "price": 268},
        "gold_price": 268,
        "silver_info": {"free_end_time": 0, "free_times": tutorial.silver_free_draws, "price": 100},
        "silver_price": 100,
        "copper_info": {"free_end_time": 0, "free_times": tutorial.copper_free_draws, "price": 10},
        "copper_price": 10,
        "need_times": need_times,
        "first_time_consume_gold": first_time_consume_gold,
        "multi_price": 2680,
        "next_guarantee": need_times,
        "guarantee_interval": need_times,
        "show_general_list": show_general_list
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
    freshman_step: &str,
    user_auth: &str,
    snapshot: &crate::player::Snapshot,
    clears: &crate::map::Clears,
    tutorial: &Tutorial,
    gamedata: &GameData,
) -> Value {
    let mut user_info = snapshot.user_info.clone();
    user_info["freshman_step"] = Value::String(freshman_step.to_string());
    let (current_map, current_dungeon) = crate::map::progress(gamedata, clears);
    user_info["user_map_step"] = Value::String(current_map);
    user_info["user_position_step"] = Value::String(current_dungeon);
    let user_level = user_info["user_level"].as_i64().unwrap_or(1);

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
            // 能否下发一个 cmn 键，取决于对应模型有没有 update：
            // 分发器（Profile/GameData/common.js:530）对 SingletonType 模型调用的是
            // .update(_info)，不是 loadJson。
            // AdInfo.update 存在，可以发；Union 与 UnionWar 只定义了 loadJson，
            // 一旦它们出现在响应里，客户端会调用一个不存在的方法抛 TypeError，
            // 整个登录响应处理中断（症状就是进不去剧情），所以这两个键不能发在 cmn 里。
            "adInfo": {
                "ad_list": [],
                "tips_list": []
            },
            // 必须在第一个成功响应里出现，理由见 push()。
            "push": push()
        },
        "map_info": map_info(clears, None, user_level, gamedata),
        "wine_info": wine_info(
            snapshot.wine_gold_free_times,
            snapshot.wine_gold_free_end_time,
            snapshot.wine_first_time_consume_gold,
            tutorial,
            gamedata
        )
    })
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::map::{Clears, path_layout};
    use crate::player::Snapshot;

    /// 每个测试都使用真实的 `gameconfig/` 数据——协议层已没有本地回退实现，
    /// 配置一旦缺失，测试本身就应该失败（与启动 fail-fast 同一原则）。
    fn game_data() -> GameData {
        GameData::load(&crate::gamedata::default_dir()).expect("load gameconfig")
    }

    fn empty_snapshot() -> Snapshot {
        Snapshot {
            generals: Vec::new(),
            items: Vec::new(),
            equipment: Vec::new(),
            team: Vec::new(),
            user_info: json!({"user_id":"7-1001","account_uid":"7","user_nickname":"主公"}),
            wine_gold_free_times: 1,
            wine_gold_free_end_time: 0,
            wine_first_time_consume_gold: 0,
        }
    }

    #[test]
    fn login_snapshot_serves_real_chapter_one_and_wine_pool() {
        let tutorial = Tutorial::default();
        let gd = game_data();
        let response = login_response_with_auth(
            "30000",
            "auth",
            &empty_snapshot(),
            &Clears::new(),
            &tutorial,
            &gd,
        );
        assert_eq!(response["result"], true);
        assert_eq!(response["cmn"]["user_info"]["freshman_step"], "30000");

        // 客户端进度使用兼容 ID 500001；静态布局来自真实章节 501。
        // 两个新手关卡 ID 与登录位置/业务接口一致，名称仍指向原配置。
        assert_eq!(
            response["map_info"]["chapter_list"][0]["map_id"],
            NEWBIE_MAP_ID
        );
        assert_eq!(
            response["map_info"]["chapter_details"][0]["map_id"],
            NEWBIE_MAP_ID
        );
        assert_eq!(
            response["map_info"]["chapter_details"][0]["map_bgimage"],
            "920001"
        );
        assert_eq!(
            response["map_info"]["chapter_details"][0]["map_name"],
            tutorial.chapter_name
        );
        assert_eq!(
            response["map_info"]["chapter_details"][0]["dungeon_info"]
                .as_array()
                .unwrap()
                .len(),
            7
        );

        // 新手关卡对外 ID 与客户端玩家位置及 `dungeon.fight` 入参一致，名称
        // 保留对原版 sgs_dungeon_conf 的映射；后续新手关仍用真实章节 ID。
        let d0 = &response["map_info"]["chapter_details"][0]["dungeon_info"][0];
        assert_eq!(d0["dungeon_id"], tutorial.first_dungeon_id());
        assert_eq!(d0["dungeon_name"], "50100101");
        assert_eq!(d0["dungeon_card"], "164051");
        assert_eq!(d0["dungeon_coin"], 100);
        assert_eq!(d0["dungeon_power"], 5);
        assert_eq!(d0["dungeon_times"], 50);
        assert_eq!(d0["dungeon_position"], 2);
        assert_eq!(d0["direction"], json!(["4"]));

        let d1 = &response["map_info"]["chapter_details"][0]["dungeon_info"][1];
        assert_eq!(d1["dungeon_id"], tutorial.dungeons()[1].0);
        assert_eq!(d1["dungeon_name"], tutorial.dungeons()[1].1);
        assert_eq!(d1["dungeon_card"], "164051");
        assert_eq!(d1["dungeon_position"], 6);

        // boss 节点仍保留教程本地设计的消耗/次数；掉落结构来自布局表。
        let boss = response["map_info"]["chapter_details"][0]["dungeon_info"]
            .as_array()
            .unwrap()
            .iter()
            .find(|node| node["dungeon_id"] == "501006")
            .unwrap();
        assert_eq!(boss["dungeon_id"], "501006");
        assert_eq!(boss["dungeon_power"], 5);
        assert_eq!(boss["dungeon_times"], 50);
        assert_eq!(
            boss["dungeon_drop"],
            json!([{ "type": 3, "id": "214001", "num": 1 }])
        );

        // 对酒：真实价格（268/100/10、多抽 2680）与保底字段。
        assert_eq!(response["wine_info"]["gold_info"]["free_times"], 1);
        assert_eq!(response["wine_info"]["gold_info"]["free_end_time"], 0);
        assert_eq!(response["wine_info"]["gold_info"]["price"], 268);
        assert_eq!(response["wine_info"]["silver_info"]["price"], 100);
        assert_eq!(response["wine_info"]["copper_info"]["price"], 10);
        assert_eq!(response["wine_info"]["silver_info"]["free_times"], 1);
        assert_eq!(response["wine_info"]["copper_info"]["free_times"], 1);
        assert_eq!(response["wine_info"]["multi_price"], 2680);
        assert_eq!(response["wine_info"]["need_times"], 4);
        assert_eq!(response["wine_info"]["next_guarantee"], 4);
        assert_eq!(response["wine_info"]["guarantee_interval"], 4);
        assert_eq!(response["wine_info"]["first_time_consume_gold"], 0);
        assert_eq!(
            response["wine_info"]["show_general_list"]
                .as_array()
                .unwrap()
                .len(),
            gd.wine_general_ids().len()
        );
        assert!(
            !response["wine_info"]["show_general_list"]
                .as_array()
                .unwrap()
                .is_empty(),
            "carousel must be non-empty"
        );
    }

    #[test]
    fn wine_guarantee_uses_ten_draws_after_phase_one() {
        let gd = game_data();
        let mut tutorial = Tutorial::default();
        tutorial.gold_guarantee_phase = 2;
        let wine = wine_info(1, 0, 0, &tutorial, &gd);
        assert_eq!(wine["need_times"], 10);
        assert_eq!(wine["next_guarantee"], 10);
        assert_eq!(wine["guarantee_interval"], 10);
    }

    /// 离线服 w1.x0：start=[1,2]，横向跨四格，纵向跨一格。
    #[test]
    fn path_layout_matches_the_chapter_501_grid() {
        let gd = game_data();
        let chapter = gd.chapter(REAL_MAP_ID).expect("chapter 501");
        assert_eq!(chapter.path, "RRRDR");
        let layout = path_layout(&chapter.start, &chapter.path, chapter.nodes.len());
        assert_eq!(
            layout.iter().map(|node| node.0).collect::<Vec<_>>(),
            vec![2, 6, 10, 14, 15, 19]
        );
        assert_eq!(layout[0].1, vec!["4"]);
        assert_eq!(layout[3].1, vec!["2"]);
        assert_eq!(layout[4].1, vec!["4"]);
        assert!(layout[5].1.is_empty(), "终点关没有连线");
    }

    #[test]
    fn reverse_path_segments_are_drawn_from_the_destination_node() {
        let layout = path_layout(&[2, 2], "LU", 3);
        assert_eq!(
            layout.iter().map(|node| node.0).collect::<Vec<_>>(),
            vec![6, 2, 1]
        );
        assert!(layout[0].1.is_empty());
        assert_eq!(layout[1].1, vec!["3"]);
        assert_eq!(layout[2].1, vec!["1"]);
    }

    /// `cmn.push` 必须在第一个成功响应里。
    ///
    /// `Hint.pushData` 只由 `Constant_Notify_ModelChange_Push` 的观察者赋值，
    /// 而 `MainMenuScene` 无守卫地解引用它。丢掉这个字段会让客户端在构造主界面时
    /// 抛异常，屏幕停在黑色。
    #[test]
    fn login_snapshot_carries_the_push_model_the_main_menu_needs() {
        let response = login_response_with_auth(
            "0",
            "auth",
            &empty_snapshot(),
            &Clears::new(),
            &Tutorial::default(),
            &game_data(),
        );
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
