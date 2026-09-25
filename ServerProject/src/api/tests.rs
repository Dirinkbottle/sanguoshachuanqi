//! 端点级集成测试：把路由当成真实客户端来打。
//!
//! 覆盖注册登录换区服的完整链路、教程里程碑的单调性与分区隔离，以及走完
//! 10000 → 80000 整条教程链时每一步依赖的状态是否真的存在。
//!
//! 这些测试只依赖公开的 HTTP 契约，不直接调用内部函数——这样它们同时也在
//! 固定协议形状，改动响应字段会在这里先失败。

use super::*;
use crate::api::game::valid_guest_uid;
use crate::{db, tutorial};
use axum::{
    body::{Body, to_bytes},
    http::{Request, StatusCode},
};
use serde_json::json;
use tower::ServiceExt;

/// 打一次路由，返回状态码和解析后的 JSON。
async fn call(router: Router, method: &str, uri: &str, body: Value) -> (StatusCode, Value) {
    let request = Request::builder()
        .method(method)
        .uri(uri)
        .header("content-type", "application/json")
        .body(Body::from(body.to_string()))
        .unwrap();
    let response = router.oneshot(request).await.unwrap();
    let status = response.status();
    let bytes = to_bytes(response.into_body(), 128 * 1024).await.unwrap();
    (status, serde_json::from_slice(&bytes).unwrap())
}

/// 拼一个 account.index 的请求 URI。
fn account_uri(data: Value) -> String {
    "/public/sanguosha_account/index.php?".to_string()
        + &serde_urlencoded::to_string([("do", "account.index"), ("data", &data.to_string())])
            .unwrap()
}

/// 拼一个游戏服动作的请求 URI。
///
/// data 里保留未编码的 JSON，客户端也是这么发的：服务端解析 query 之后再对它
/// 做一次 JSON 解析。
fn game_uri(server_id: &str, action: &str, data: Value) -> String {
    format!("/game/{server_id}?")
        + &serde_urlencoded::to_string([("do", action), ("data", &data.to_string())]).unwrap()
}

/// 建一份测试配置；guest 用来分别覆盖游客关闭与开启两条路径。
fn test_config(database: std::path::PathBuf, tmp: &tempfile::TempDir, guest: bool) -> Config {
    Config {
        listen: "127.0.0.1:0".into(),
        public_host: "127.0.0.1:18723".into(),
        database,
        servers: tmp.path().join("servers.json"),
        guest_enabled: guest,
        session_ttl_seconds: 3600,
        tutorial: crate::config::Tutorial::default(),
        // 测试里关掉日志，免得每个用例都往 stdout 刷请求行。
        log: crate::config::LogConfig {
            level: crate::config::LogLevel::Off,
            show_credentials: false,
        },
    }
}

#[tokio::test]
async fn registration_login_and_authenticated_zone_list() {
    let tmp = tempfile::tempdir().unwrap();
    let database = tmp.path().join("accounts.sqlite3");
    db::open(&database).unwrap();
    let config = test_config(database, &tmp, false);
    let zones = vec![Zone {
        server_id: "1001".into(),
        server_title: "1区 桃园结义".into(),
        server_status: "2".into(),
    }];
    let app = router(AppState { config, zones });

    let (_, disabled) = call(
        app.clone(),
        "GET",
        &account_uri(json!({"logintype":1})),
        json!({}),
    )
    .await;
    assert_eq!(disabled["error_code"], "guest_disabled");
    let (_, anonymous) = call(
        app.clone(),
        "GET",
        &account_uri(json!({"logintype":2})),
        json!({}),
    )
    .await;
    assert_eq!(anonymous["error_code"], "invalid_session");

    let credentials = json!({"username":"test_user","password":"test-secret-123"});
    let (status, _) = call(app.clone(), "POST", "/auth/register", credentials.clone()).await;
    assert_eq!(status, StatusCode::OK);
    let (status, _) = call(app.clone(), "POST", "/auth/register", credentials.clone()).await;
    assert_eq!(status, StatusCode::OK);
    let (status, failed) = call(
        app.clone(),
        "POST",
        "/auth/login",
        json!({"username":"test_user","password":"bad-secret"}),
    )
    .await;
    assert_eq!(status, StatusCode::OK);
    assert_eq!(failed["result"], false);
    let (_, login) = call(app.clone(), "POST", "/auth/login", credentials).await;
    let token = login["sessionKey"].as_str().unwrap();
    assert_eq!(token.len(), 64);
    let (status, zones) = call(
        app,
        "GET",
        &account_uri(json!({"logintype":2,
        "extra":{"sessionId":token}})),
        json!({}),
    )
    .await;
    assert_eq!(status, StatusCode::OK);
    assert_eq!(zones["server_list"][0]["server_title"], "1区 桃园结义");
    assert_eq!(zones["server_logined_list"], json!([]));
    assert_eq!(zones["token"], token);
    assert_eq!(zones["user_auth"], token);
}

#[tokio::test]
async fn tutorial_milestones_round_trip_monotonically_and_per_zone() {
    let tmp = tempfile::tempdir().unwrap();
    let database = tmp.path().join("accounts.sqlite3");
    db::open(&database).unwrap();
    let config = test_config(database.clone(), &tmp, false);
    let zones = vec![
        Zone {
            server_id: "1001".into(),
            server_title: "1区 桃园结义".into(),
            server_status: "2".into(),
        },
        Zone {
            server_id: "1002".into(),
            server_title: "2区 群雄逐鹿".into(),
            server_status: "2".into(),
        },
    ];
    let app = router(AppState { config, zones });

    let credentials = json!({"username":"guide_user","password":"guide-secret-123"});
    let (_, registered) =
        call(app.clone(), "POST", "/auth/register", credentials.clone()).await;
    assert_eq!(registered["result"], true);
    let (_, login) = call(app.clone(), "POST", "/auth/login", credentials).await;
    let session_key = login["sessionKey"].as_str().unwrap().to_owned();
    let (_, server_list) = call(
        app.clone(),
        "GET",
        &account_uri(json!({
            "logintype": 2,
            "extra": {"sessionId": session_key}
        })),
        json!({}),
    )
    .await;
    let token = server_list["token"].as_str().unwrap().to_owned();
    let account_uid = server_list["account_info"]["account_uid"]
        .as_str()
        .unwrap()
        .to_owned();
    assert_eq!(token, session_key);

    let (_, initial) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "user.login",
            json!({
                "account_uid": account_uid,
                "server_id": "1001",
                "token": token,
                "user_auth": token
            }),
        ),
        json!({}),
    )
    .await;
    assert_eq!(initial["result"], true);
    assert_eq!(initial["cmn"]["user_info"]["freshman_step"], "0");
    assert_eq!(initial["user_auth"], token);
    let user_id = initial["cmn"]["user_info"]["user_id"]
        .as_str()
        .unwrap()
        .to_owned();

    // user.chooseTeam carries one of the four ids the client offers at
    // step 10000 (FreshmanChooseGeneralId), not a player entity key.
    let first_milestone = json!({
        "user_id": user_id,
        "token": token,
        "user_auth": token,
        "general_id": "121018",
        "step": "10000"
    });
    let (_, first) = call(
        app.clone(),
        "GET",
        &game_uri("1001", "user.chooseTeam", first_milestone.clone()),
        json!({}),
    )
    .await;
    assert_eq!(first["result"], true);
    // A network retry of the same request is idempotent.
    let (_, retry) = call(
        app.clone(),
        "GET",
        &game_uri("1001", "user.chooseTeam", first_milestone),
        json!({}),
    )
    .await;
    assert_eq!(retry["result"], true);

    let (_, after_first) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "user.login",
            json!({
                "account_uid": account_uid,
                "server_id": "1001",
                "token": token,
                "user_auth": token
            }),
        ),
        json!({}),
    )
    .await;
    assert_eq!(after_first["cmn"]["user_info"]["freshman_step"], "10000");

    // user.chgNickname is a milestone carrier with no state prerequisite.
    // general.setEquipment is exercised in the end-to-end tutorial test,
    // where an owned general and equipment actually exist.
    let final_milestone = json!({
        "user_id": user_id,
        "token": token,
        "user_auth": token,
        "nickname": "主公",
        "step": 80000
    });
    let (_, advanced) = call(
        app.clone(),
        "GET",
        &game_uri("1001", "user.chgNickname", final_milestone),
        json!({}),
    )
    .await;
    assert_eq!(advanced["result"], true);

    let stale = json!({
        "user_id": user_id,
        "token": token,
        "user_auth": token,
        "general_id": "121018",
        "step": "10000"
    });
    let (_, stale_retry) = call(
        app.clone(),
        "GET",
        &game_uri("1001", "user.chooseTeam", stale),
        json!({}),
    )
    .await;
    assert_eq!(stale_retry["result"], true);
    let (_, after_stale) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "user.login",
            json!({
                "account_uid": account_uid,
                "server_id": "1001",
                "token": token,
                "user_auth": token
            }),
        ),
        json!({}),
    )
    .await;
    assert_eq!(after_stale["cmn"]["user_info"]["freshman_step"], "80000");

    // The same account has independent progress in another zone.
    let (_, second_zone) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1002",
            "user.login",
            json!({
                "account_uid": account_uid,
                "server_id": "1002",
                "token": token,
                "user_auth": token
            }),
        ),
        json!({}),
    )
    .await;
    assert_eq!(second_zone["cmn"]["user_info"]["freshman_step"], "0");

    // Invalid and unknown operations do not write their supplied step.
    let invalid = json!({
        "user_id": user_id,
        "token": token,
        "user_auth": token,
        "general_id": "121018",
        "step": 90000
    });
    let (_, invalid_step) = call(
        app.clone(),
        "GET",
        &game_uri("1001", "user.chooseTeam", invalid),
        json!({}),
    )
    .await;
    assert_eq!(invalid_step["result"], false);
    assert_eq!(invalid_step["error_code"], "invalid_step");

    let unsupported = json!({
        "user_id": user_id,
        "token": token,
        "user_auth": token,
        "step": "80000"
    });
    let (_, unimplemented) = call(
        app.clone(),
        "GET",
        &game_uri("1001", "not.rebuilt", unsupported),
        json!({}),
    )
    .await;
    assert_eq!(unimplemented["result"], false);
    assert_eq!(unimplemented["error_code"], "not_implemented");

    let (_, unchanged) = call(
        app,
        "GET",
        &game_uri(
            "1001",
            "user.login",
            json!({
                "account_uid": account_uid,
                "server_id": "1001",
                "token": token,
                "user_auth": token
            }),
        ),
        json!({}),
    )
    .await;
    assert_eq!(unchanged["cmn"]["user_info"]["freshman_step"], "80000");

    let db = db::open(&database).unwrap();
    let principal = tutorial::account_principal(1);
    assert_eq!(
        tutorial::tutorial_step(&db, &principal, "1001").unwrap(),
        "80000"
    );
    assert_eq!(
        tutorial::tutorial_step(&db, &principal, "1002").unwrap(),
        "0"
    );
}

#[tokio::test]
async fn enabled_guest_uid_is_validated_and_scoped() {
    let tmp = tempfile::tempdir().unwrap();
    let database = tmp.path().join("accounts.sqlite3");
    db::open(&database).unwrap();
    let app = router(AppState {
        config: test_config(database, &tmp, true),
        zones: vec![Zone {
            server_id: "1001".into(),
            server_title: "1区 桃园结义".into(),
            server_status: "2".into(),
        }],
    });
    let (_, server_list) = call(
        app.clone(),
        "GET",
        &account_uri(json!({"uid":"device-1","logintype":1})),
        json!({}),
    )
    .await;
    let account_uid = server_list["account_info"]["account_uid"]
        .as_str()
        .unwrap()
        .to_owned();
    assert!(valid_guest_uid(&account_uid));

    let (_, initial) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "user.login",
            json!({"account_uid":account_uid,"server_id":"1001"}),
        ),
        json!({}),
    )
    .await;
    assert_eq!(initial["result"], true);
    assert_eq!(initial["cmn"]["user_info"]["freshman_step"], "0");
    let user_id = initial["cmn"]["user_info"]["user_id"].clone();

    let (_, advanced) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "user.chooseTeam",
            json!({"user_id":user_id,"general_id":"121018","step":"10000"}),
        ),
        json!({}),
    )
    .await;
    assert_eq!(advanced["result"], true);
    let (_, resumed) = call(
        app,
        "GET",
        &game_uri(
            "1001",
            "user.login",
            json!({"account_uid":account_uid,"server_id":"1001"}),
        ),
        json!({}),
    )
    .await;
    assert_eq!(resumed["cmn"]["user_info"]["freshman_step"], "10000");
}

/// Walk the whole recovered first-time-player path and check that every
/// state the later steps depend on actually exists by the time it is needed.
///
/// This is the test that would have caught the earlier half-finished state:
/// milestone bookkeeping alone is not enough, because
/// `Scene/Store/ToastView.js` dereferences `reward_info.general[0].id`
/// and looks the player entity up by that configuration id, and
/// `Scene/Bag/BagScene.js` / `Profile/GameData/Equipments` read the item
/// and equipment entities out of cmn.
#[tokio::test]
async fn full_tutorial_walkthrough_creates_the_state_each_step_consumes() {
    let tmp = tempfile::tempdir().unwrap();
    let database = tmp.path().join("accounts.sqlite3");
    db::open(&database).unwrap();
    let config = test_config(database, &tmp, false);
    let zones = vec![Zone {
        server_id: "1001".into(),
        server_title: "1区 桃园结义".into(),
        server_status: "2".into(),
    }];
    let app = router(AppState { config, zones });

    let credentials = json!({"username":"walk_user","password":"walk-secret-123"});
    call(app.clone(), "POST", "/auth/register", credentials.clone()).await;
    let (_, login) = call(app.clone(), "POST", "/auth/login", credentials).await;
    let session_key = login["sessionKey"].as_str().unwrap().to_owned();
    let (_, server_list) = call(
        app.clone(),
        "GET",
        &account_uri(json!({"logintype":2,"extra":{"sessionId":session_key}})),
        json!({}),
    )
    .await;
    let token = server_list["token"].as_str().unwrap().to_owned();
    let account_uid = server_list["account_info"]["account_uid"]
        .as_str()
        .unwrap()
        .to_owned();

    let login_data = |step: Option<&str>| {
        let mut data = json!({
            "account_uid": account_uid,
            "server_id": "1001",
            "token": token,
            "user_auth": token
        });
        if let Some(step) = step {
            data["step"] = json!(step);
        }
        data
    };

    let (_, initial) = call(
        app.clone(),
        "GET",
        &game_uri("1001", "user.login", login_data(None)),
        json!({}),
    )
    .await;
    assert_eq!(initial["result"], true);
    assert_eq!(initial["cmn"]["user_info"]["freshman_step"], "0");
    assert_eq!(initial["cmn"]["general_info"]["update_list"], json!([]));
    assert_eq!(initial["cmn"]["item_info"]["update_list"], json!([]));
    assert_eq!(initial["cmn"]["equipment_info"]["update_list"], json!([]));
    // Without this the client builds MainMenuScene with an undefined
    // Hint.pushData and the screen stays black before the rename step.
    assert_eq!(initial["cmn"]["push"]["climb"]["num"], 0);
    assert_eq!(initial["cmn"]["push"]["ladderstore"]["num"], 0);
    let user_id = initial["cmn"]["user_info"]["user_id"].clone();

    let business = |extra: Value, step: &str| {
        let mut data = json!({
            "user_id": user_id,
            "token": token,
            "user_auth": token,
            "step": step
        });
        for (key, value) in extra.as_object().unwrap() {
            data[key] = value.clone();
        }
        data
    };

    // 10000: the client offers four ids from its own config
    // (FreshmanChooseGeneralId) and sends the chosen one.
    let (_, chosen) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "user.chooseTeam",
            business(json!({"general_id":"121018"}), "10000"),
        ),
        json!({}),
    )
    .await;
    assert_eq!(chosen["result"], true);
    let starter = chosen["cmn"]["general_info"]["update_list"][0].clone();
    assert_eq!(starter["id"], "121018");
    let starter_pk = starter["pk_id"].as_str().unwrap().to_owned();
    assert!(!starter_pk.is_empty());
    // The selection also fills the first team slot, so the team screen and
    // the later battle steps have something to work with.
    assert_eq!(chosen["cmn"]["team_info"][0]["pk_id"], starter_pk);

    let (_, renamed) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "user.chgNickname",
            business(json!({"nickname":"主公"}), "20000"),
        ),
        json!({}),
    )
    .await;
    assert_eq!(renamed["result"], true);

    // 30000: first dungeon. The response must carry a playable fight and an
    // updated map, because DungeonDetail applies cmn, then map_info, then
    // builds FightInfo from the same body.
    let (_, first_fight) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "dungeon.fight",
            business(json!({"dungeon_id":"50000101"}), "30000"),
        ),
        json!({}),
    )
    .await;
    assert_eq!(first_fight["result"], true);
    assert_eq!(first_fight["fight_result"]["success"], true);
    assert_eq!(
        first_fight["map_info"]["chapter_details"][0]["dungeon_info"][0]["user_dungeon_times"],
        "1"
    );

    // 40000: first recruit. reward_info.general must be non-empty and the
    // matching player entity has to arrive in the same response.
    let (_, recruited) = call(
        app.clone(),
        "GET",
        &game_uri("1001", "wine.wine", business(json!({}), "40000")),
        json!({}),
    )
    .await;
    assert_eq!(recruited["result"], true);
    let award = recruited["reward_info"]["general"][0].clone();
    let award_config_id = award["id"].as_str().unwrap().to_owned();
    assert!(
        !award_config_id.is_empty(),
        "ToastResultView dereferences reward_info.general[0].id"
    );
    assert_eq!(award["type"], "1");
    let granted = recruited["cmn"]["general_info"]["update_list"]
        .as_array()
        .unwrap()
        .iter()
        .any(|general| general["id"] == award["id"].as_str().unwrap());
    assert!(granted, "the awarded general must exist as a player entity");

    // 50000: team change. Only an owned general may be placed.
    let (_, team) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "team.chgBattleTeam",
            business(
                json!({"team_id":1,"team_position":1,"general_id":starter_pk}),
                "50000",
            ),
        ),
        json!({}),
    )
    .await;
    assert_eq!(team["result"], true);
    assert_eq!(team["cmn"]["team_info"][0]["pk_id"], starter_pk);

    let (_, stolen) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "team.chgBattleTeam",
            business(
                json!({"team_id":1,"team_position":1,"general_id":"12345"}),
                "50000",
            ),
        ),
        json!({}),
    )
    .await;
    assert_eq!(stolen["result"], false);
    assert_eq!(stolen["error_code"], "invalid_general");

    // 60000: second dungeon. Its first clear hands over the gift and the
    // equipment the bag and equipment steps need.
    let (_, second_fight) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "dungeon.fight",
            business(json!({"dungeon_id":"50000102"}), "60000"),
        ),
        json!({}),
    )
    .await;
    assert_eq!(second_fight["result"], true);
    let gift = second_fight["cmn"]["item_info"]["update_list"][0].clone();
    let equipment = second_fight["cmn"]["equipment_info"]["update_list"][0].clone();
    let gift_pk = gift["pk_id"].as_str().unwrap().to_owned();
    let equipment_pk = equipment["pk_id"].as_str().unwrap().to_owned();
    assert!(!gift_pk.is_empty());
    assert!(!equipment_pk.is_empty());

    // 70000: open the gift.
    let (_, used) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "item.use",
            business(
                json!({"user_item_id":gift_pk,"item_num":1}),
                "70000",
            ),
        ),
        json!({}),
    )
    .await;
    assert_eq!(used["result"], true);
    assert!(
        !used["add_list"].as_array().unwrap().is_empty(),
        "UseItemSuccessDialog needs a non-empty add_list"
    );
    // The stack was one item, so it is now gone and the client must be told.
    assert_eq!(used["cmn"]["item_info"]["del_list"][0], gift_pk);

    // 80000: equip.
    let (_, equipped) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "general.setEquipment",
            business(
                json!({"user_general_id":starter_pk,"new_equipment_id":equipment_pk}),
                "80000",
            ),
        ),
        json!({}),
    )
    .await;
    assert_eq!(equipped["result"], true);
    assert_eq!(
        equipped["cmn"]["equipment_info"]["update_list"][0]["general_pk_id"],
        starter_pk
    );

    // Reload: the whole state and the final milestone survive a reconnect.
    let (_, resumed) = call(
        app.clone(),
        "GET",
        &game_uri("1001", "user.login", login_data(None)),
        json!({}),
    )
    .await;
    assert_eq!(resumed["cmn"]["user_info"]["freshman_step"], "80000");
    assert_eq!(resumed["cmn"]["team_info"][0]["pk_id"], starter_pk);
    assert_eq!(
        resumed["cmn"]["equipment_info"]["update_list"][0]["general_pk_id"],
        starter_pk
    );
    let general_ids: Vec<&str> = resumed["cmn"]["general_info"]["update_list"]
        .as_array()
        .unwrap()
        .iter()
        .map(|general| general["id"].as_str().unwrap())
        .collect();
    assert!(general_ids.contains(&"121018"));
    assert!(general_ids.contains(&award_config_id.as_str()));

    // A second clear of the reward dungeon must not duplicate the grants.
    let (_, repeat) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "dungeon.fight",
            business(json!({"dungeon_id":"50000102"}), "80000"),
        ),
        json!({}),
    )
    .await;
    assert_eq!(repeat["result"], true);
    assert_eq!(repeat["cmn"]["item_info"]["update_list"], json!([]));
    assert_eq!(repeat["cmn"]["equipment_info"]["update_list"], json!([]));

    let (_, final_state) = call(
        app,
        "GET",
        &game_uri("1001", "user.login", login_data(None)),
        json!({}),
    )
    .await;
    assert_eq!(
        final_state["cmn"]["general_info"]["update_list"]
            .as_array()
            .unwrap()
            .len(),
        2
    );
    assert_eq!(
        final_state["map_info"]["chapter_details"][0]["dungeon_info"][1]
            ["user_dungeon_times"],
        "2"
    );
}

/// The configured tutorial grants must exist in the shipped plan tables.
///
/// The values in `config.toml` are reconstruction design choices, but the
/// ids themselves are not free: the client resolves them through
/// `Tools/CfgData.js` and asserts when a record is missing.
#[test]
fn tutorial_ids_exist_in_shipped_config() {
    let plan = std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../ReconstructedJS/data_cn_jsc/plan");
    let tutorial = crate::config::Tutorial::default();
    for (kind, id) in tutorial.granted_ids() {
        let file = match kind {
            "general" => "sgs_generals.js",
            "item" => "sgs_item.js",
            _ => "sgs_equipments.js",
        };
        let text = std::fs::read_to_string(plan.join(file)).unwrap_or_else(|error| {
            panic!("shipped table {file} is required for validation: {error}")
        });
        assert!(
            text.contains(&format!("\"{id}\": {{")),
            "configured {kind} id {id} is not present in {file}"
        );
    }
}