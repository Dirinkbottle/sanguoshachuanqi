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
    format!("/game/{server_id}/index.php?")
        + &serde_urlencoded::to_string([("do", action), ("data", &data.to_string())]).unwrap()
}

#[tokio::test]
async fn device_game_index_php_path_routes_choose_team() {
    let tmp = tempfile::tempdir().unwrap();
    let database = tmp.path().join("accounts.sqlite3");
    db::open(&database).unwrap();
    let config = test_config(database, &tmp, true);
    let app = router(AppState {
        config,
        zones: vec![Zone {
            server_id: "1001".into(),
            server_title: "1区 桃园结义".into(),
            server_status: "2".into(),
        }],
        game_data: test_game_data(),
    });
    let guest_uid = "local-guest-0123456789abcdef0123456789ab";
    let user_id = format!("{guest_uid}-1001");
    let request_uri = game_uri(
        "1001",
        "user.chooseTeam",
        json!({"account_uid": guest_uid, "user_id": user_id.clone(), "general_id": "121013", "step": "10000"}),
    );
    let (status, response) = call(app.clone(), "GET", &request_uri, json!({})).await;

    assert_eq!(status, StatusCode::OK);
    assert_eq!(response["result"], true);
    assert_eq!(
        response["cmn"]["general_info"]["update_list"][0]["id"],
        "121013"
    );
    assert_eq!(
        response["cmn"]["team_info"][0]["pk_id"],
        response["cmn"]["general_info"]["update_list"][0]["pk_id"]
    );
    assert_eq!(
        response["cmn"]["user_info"]["first_choose_general"],
        response["cmn"]["general_info"]["update_list"][0]["pk_id"]
    );
    assert_eq!(
        response["cmn"]["user_info"]["user_id"],
        json!(user_id.as_str())
    );
    assert_eq!(response["cmn"]["user_info"]["freshman_step"], "10000");

    let (_, replayed) = call(app.clone(), "GET", &request_uri, json!({})).await;
    assert_eq!(
        replayed["cmn"]["general_info"]["update_list"][0]["pk_id"],
        response["cmn"]["general_info"]["update_list"][0]["pk_id"]
    );

    // A distinct client time is a distinct intentional selection and may own
    // another instance of the same static template.
    let (_, second_instance) = call(
        app,
        "GET",
        &game_uri(
            "1001",
            "user.chooseTeam",
            json!({
                "account_uid": guest_uid,
                "user_id": user_id,
                "general_id": "121013",
                "time": 1700000000001_i64
            }),
        ),
        json!({}),
    )
    .await;
    assert_eq!(second_instance["result"], true);
    assert_ne!(
        second_instance["cmn"]["general_info"]["update_list"][0]["pk_id"],
        response["cmn"]["general_info"]["update_list"][0]["pk_id"]
    );
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
        game_data: crate::gamedata::default_dir(),
        tutorial: crate::config::Tutorial::default(),
        // 测试里关掉日志，免得每个用例都往 stdout 刷请求行。
        log: crate::config::LogConfig {
            level: crate::config::LogLevel::Off,
        },
    }
}

fn test_game_data() -> std::sync::Arc<crate::gamedata::GameData> {
    std::sync::Arc::new(
        crate::gamedata::GameData::load(&crate::gamedata::default_dir())
            .expect("load checked-in gameconfig"),
    )
}

#[tokio::test]
async fn oversized_request_target_and_auth_body_are_rejected() {
    let tmp = tempfile::tempdir().unwrap();
    let database = tmp.path().join("accounts.sqlite3");
    db::open(&database).unwrap();
    let app = router(AppState {
        config: test_config(database, &tmp, false),
        zones: vec![Zone {
            server_id: "1001".into(),
            server_title: "1区 桃园结义".into(),
            server_status: "2".into(),
        }],
        game_data: test_game_data(),
    });

    let long_uri = format!("/{}", "x".repeat(32 * 1024));
    let uri_request = Request::builder()
        .uri(long_uri)
        .body(Body::empty())
        .unwrap();
    let response = app.clone().oneshot(uri_request).await.unwrap();
    assert_eq!(response.status(), StatusCode::URI_TOO_LONG);

    let large_username = "x".repeat(32 * 1024);
    let body_request = Request::builder()
        .method("POST")
        .uri("/auth/register")
        .header("content-type", "application/json")
        .body(Body::from(
            json!({"username": large_username, "password": "test-only"}).to_string(),
        ))
        .unwrap();
    let response = app.oneshot(body_request).await.unwrap();
    assert_eq!(response.status(), StatusCode::PAYLOAD_TOO_LARGE);
}

#[tokio::test]
async fn retired_channel_and_payment_actions_return_explicit_failure() {
    let tmp = tempfile::tempdir().unwrap();
    let database = tmp.path().join("disabled.sqlite3");
    db::open(&database).unwrap();
    let config = test_config(database, &tmp, true);
    let zones = vec![Zone {
        server_id: "1001".into(),
        server_title: "1区 桃园结义".into(),
        server_status: "2".into(),
    }];
    let app = router(AppState {
        config,
        zones,
        game_data: test_game_data(),
    });
    let account_uid = "local-guest-0123456789abcdef0123456789ab";
    let user_id = format!("{account_uid}-1001");

    for action in ["pay.createTrade", "product.createOrder", "idcard.save"] {
        let (_, response) = call(
            app.clone(),
            "GET",
            &game_uri(
                "1001",
                action,
                json!({"account_uid": account_uid, "user_id": user_id}),
            ),
            json!({}),
        )
        .await;
        assert_eq!(response["result"], false, "{action}");
        assert_eq!(response["error_code"], "feature_disabled", "{action}");
    }
}

#[tokio::test]
async fn failed_business_action_rolls_back_entity_and_tutorial_step() {
    let tmp = tempfile::tempdir().unwrap();
    let database = tmp.path().join("accounts.sqlite3");
    let db = db::open(&database).unwrap();
    db.execute_batch(
        "CREATE TRIGGER reject_team_write BEFORE INSERT ON player_team
         BEGIN SELECT RAISE(ABORT, 'forced rollback test'); END;",
    )
    .unwrap();
    drop(db);
    let app = router(AppState {
        config: test_config(database.clone(), &tmp, true),
        zones: vec![Zone {
            server_id: "1001".into(),
            server_title: "1区 桃园结义".into(),
            server_status: "2".into(),
        }],
        game_data: test_game_data(),
    });
    let guest_uid = "local-guest-0123456789abcdef0123456789ab";
    let (_, response) = call(
        app,
        "GET",
        &game_uri(
            "1001",
            "user.chooseTeam",
            json!({
                "account_uid": guest_uid,
                "user_id": format!("{guest_uid}-1001"),
                "general_id": "121018",
                "step": "10000"
            }),
        ),
        json!({}),
    )
    .await;
    assert_eq!(response["result"], false);
    assert_eq!(response["error_code"], "internal_error");

    let db = db::open(&database).unwrap();
    let general_count: i64 = db
        .query_row("SELECT COUNT(*) FROM player_generals", [], |row| row.get(0))
        .unwrap();
    assert_eq!(general_count, 0);
    assert_eq!(
        tutorial::tutorial_step(&db, &tutorial::guest_principal(guest_uid), "1001").unwrap(),
        "0"
    );
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
    let app = router(AppState {
        config,
        zones,
        game_data: test_game_data(),
    });

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
        app.clone(),
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
    let (status, signed_out) = call(
        app.clone(),
        "POST",
        "/auth/logout",
        json!({"sessionKey": token}),
    )
    .await;
    assert_eq!(status, StatusCode::OK);
    assert_eq!(signed_out["result"], true);
    let (_, expired) = call(
        app,
        "GET",
        &account_uri(json!({"logintype":2,"extra":{"sessionId":token}})),
        json!({}),
    )
    .await;
    assert_eq!(expired["error_code"], "invalid_session");
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
    let app = router(AppState {
        config,
        zones,
        game_data: test_game_data(),
    });

    let credentials = json!({"username":"guide_user","password":"guide-secret-123"});
    let (_, registered) = call(app.clone(), "POST", "/auth/register", credentials.clone()).await;
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

    // The chosen nickname is stored with this account and zone and returned on login.
    // general.setEquipment is exercised in the end-to-end tutorial test,
    // where an owned general and equipment actually exist.
    let final_milestone = json!({
        "user_id": user_id,
        "token": token,
        "user_auth": token,
        "nickname": "玄德",
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
    assert_eq!(advanced["user_info"]["user_nickname"], "玄德");

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
        game_data: test_game_data(),
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
    let app = router(AppState {
        config,
        zones,
        game_data: test_game_data(),
    });

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
    assert_eq!(initial["cmn"]["user_info"]["user_coin"], 1000);
    assert_eq!(initial["cmn"]["user_info"]["user_gold"], 100);
    assert_eq!(initial["cmn"]["user_info"]["user_power"], 150);
    assert_eq!(initial["cmn"]["user_info"]["user_energy"], 12);
    assert_eq!(initial["wine_info"]["gold_info"]["free_times"], 1);
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

    let (_, locked_map) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "map.getUserMap",
            json!({
                "map_id":"500001",
                "user_id":user_id,
                "token":token,
                "user_auth":token
            }),
        ),
        json!({}),
    )
    .await;
    assert_eq!(locked_map["result"], true, "{locked_map}");
    assert_eq!(
        locked_map["map_info"]["chapter_details"][0]["dungeon_info"][0]["can_in"],
        true
    );
    assert_eq!(
        locked_map["map_info"]["chapter_details"][0]["dungeon_info"][1]["can_in"],
        false
    );

    let (_, renamed) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "user.chgNickname",
            business(json!({"nickname":"玄德"}), "20000"),
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
            business(json!({"dungeon_id":"501001"}), "30000"),
        ),
        json!({}),
    )
    .await;
    assert_eq!(first_fight["result"], true);
    assert_eq!(first_fight["fight_result"]["success"], true);
    let fight_add_list = first_fight["fight_result"]["add_list"]
        .as_array()
        .expect("fight add_list is an array");
    assert!(
        fight_add_list.iter().all(|entry| entry["type"] != 100),
        "FightInfo creates a model for each reward, and PlayerAttr 100 is not a model"
    );
    assert_eq!(first_fight["fight_result"]["drop_info"]["user_coin"], 100);
    assert_eq!(first_fight["fight_info"]["init"]["cards_size0"], 1);
    assert_eq!(first_fight["fight_info"]["init"]["cards_size1"], 1);
    assert_eq!(
        first_fight["fight_info"]["rounds"]
            .as_array()
            .unwrap()
            .len(),
        2
    );
    assert_eq!(first_fight["fight_info"]["rounds"][1]["from"], json!([0]));
    assert_eq!(first_fight["fight_info"]["rounds"][1]["to"], json!([1]));
    assert_eq!(first_fight["fight_info"]["rounds"][1]["type"], 0);
    assert_eq!(
        first_fight["fight_result"]["fight_calculate_info"]["star_level"],
        3
    );
    assert_eq!(first_fight["cmn"]["user_info"]["user_coin"], 1100);
    assert_eq!(first_fight["cmn"]["user_info"]["user_power"], 145);
    assert_eq!(first_fight["cmn"]["user_info"]["user_energy"], 12);
    assert_eq!(first_fight["cmn"]["user_info"]["user_experience"], 10);
    assert_eq!(
        first_fight["cmn"]["general_info"]["update_list"][0]["general_experience"],
        40
    );
    assert_eq!(
        first_fight["map_info"]["chapter_details"][0]["dungeon_info"][1]["can_in"],
        true
    );
    assert_eq!(
        first_fight["map_info"]["chapter_details"][0]["dungeon_info"][0]["user_dungeon_times"],
        1
    );

    // 40000: first recruit. reward_info.general must be non-empty and the
    // matching player entity has to arrive in the same response.
    let (_, recruited) = call(
        app.clone(),
        "GET",
        &game_uri("1001", "wine.wine", business(json!({"type":2}), "40000")),
        json!({}),
    )
    .await;
    assert_eq!(recruited["result"], true);
    let award = recruited["reward_info"]["general"][0].clone();
    let award_config_id = award["id"].as_str().unwrap().to_owned();
    let recruit_pk = award["pk_id"].as_str().unwrap().to_owned();
    assert!(
        !award_config_id.is_empty(),
        "ToastResultView dereferences reward_info.general[0].id"
    );
    assert_eq!(award["type"], "1");
    assert_eq!(recruited["cmn"]["user_info"]["user_gold"], 100);
    assert_eq!(recruited["user_wine_info"]["gold_info"]["free_times"], 0);
    let gold_cooldown = recruited["user_wine_info"]["gold_info"]["free_end_time"]
        .as_i64()
        .unwrap();
    assert!((1..=1800).contains(&gold_cooldown));
    assert_eq!(recruited["user_wine_info"]["first_time_consume_gold"], 1);
    let granted = recruited["cmn"]["general_info"]["update_list"]
        .as_array()
        .unwrap()
        .iter()
        .any(|general| general["id"] == award["id"].as_str().unwrap());
    assert!(granted, "the awarded general must exist as a player entity");

    // A second distinct single draw consumes local in-game gold; it does not
    // reuse the free tutorial allowance or collapse a duplicate template row.
    let mut paid_draw = business(json!({"type":2}), "");
    paid_draw.as_object_mut().unwrap().remove("step");
    paid_draw["time"] = json!(1_800_000_000_001i64);
    let (_, paid_recruit) = call(
        app.clone(),
        "GET",
        &game_uri("1001", "wine.wine", paid_draw),
        json!({}),
    )
    .await;
    assert_eq!(paid_recruit["result"], true);
    assert_eq!(paid_recruit["cmn"]["user_info"]["user_gold"], 50);
    assert_eq!(paid_recruit["user_wine_info"]["gold_info"]["free_times"], 0);
    assert_ne!(
        paid_recruit["reward_info"]["general"][0]["pk_id"],
        recruit_pk
    );

    // 50000: team change. Only an owned general may be placed.
    let (_, team) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "team.chgBattleTeam",
            business(
                json!({"team_id":1,"team_position":1,"general_id":recruit_pk}),
                "50000",
            ),
        ),
        json!({}),
    )
    .await;
    assert_eq!(team["result"], true);
    assert_eq!(team["cmn"]["team_info"][0]["pk_id"], recruit_pk);

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
            business(json!({"dungeon_id":"501002"}), "60000"),
        ),
        json!({}),
    )
    .await;
    assert_eq!(second_fight["result"], true);
    let (_, retried_second_fight) = call(
        app.clone(),
        "GET",
        &game_uri(
            "1001",
            "dungeon.fight",
            business(json!({"dungeon_id":"501002"}), "60000"),
        ),
        json!({}),
    )
    .await;
    assert_eq!(retried_second_fight, second_fight);
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
            business(json!({"user_item_id":gift_pk,"item_num":1}), "70000"),
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
                json!({"user_general_id":recruit_pk,"new_equipment_id":equipment_pk}),
                "80000",
            ),
        ),
        json!({}),
    )
    .await;
    assert_eq!(equipped["result"], true);
    assert_eq!(
        equipped["cmn"]["equipment_info"]["update_list"][0]["general_pk_id"],
        recruit_pk
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
    assert_eq!(resumed["cmn"]["user_info"]["user_nickname"], "玄德");
    assert_eq!(resumed["cmn"]["team_info"][0]["pk_id"], recruit_pk);
    assert_eq!(
        resumed["cmn"]["equipment_info"]["update_list"][0]["general_pk_id"],
        recruit_pk
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
            business(json!({"dungeon_id":"501002"}), "80000"),
        ),
        json!({}),
    )
    .await;
    assert_eq!(repeat["result"], true);
    assert_eq!(repeat["cmn"]["item_info"]["update_list"], json!([]));
    assert_eq!(repeat["cmn"]["equipment_info"]["update_list"], json!([]));

    let (_, final_state) = call(
        app.clone(),
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
        3
    );
    assert_eq!(
        final_state["map_info"]["chapter_details"][0]["dungeon_info"][1]["user_dungeon_times"],
        2
    );
    assert_eq!(final_state["cmn"]["user_info"]["user_coin"], 2300);
    assert_eq!(final_state["cmn"]["user_info"]["user_power"], 135);
    assert_eq!(final_state["cmn"]["user_info"]["user_energy"], 12);
    assert_eq!(final_state["cmn"]["user_info"]["user_experience"], 30);
    assert_eq!(final_state["cmn"]["user_info"]["user_gold"], 50);
    assert_eq!(final_state["wine_info"]["gold_info"]["free_times"], 0);
    assert_eq!(
        final_state["cmn"]["general_info"]["update_list"]
            .as_array()
            .unwrap()
            .iter()
            .find(|general| general["pk_id"] == recruit_pk)
            .unwrap()["general_experience"],
        80
    );
    let db = db::open(&tmp.path().join("accounts.sqlite3")).unwrap();
    let fight_count: i64 = db
        .query_row("SELECT COUNT(*) FROM fight_records", [], |row| row.get(0))
        .unwrap();
    assert_eq!(fight_count, 3);
    let ledger_count: i64 = db
        .query_row("SELECT COUNT(*) FROM resource_ledger", [], |row| row.get(0))
        .unwrap();
    assert_eq!(ledger_count, 11);
    db.execute(
        "UPDATE player_profiles SET user_power = 0 WHERE principal = ?1 AND server_id = '1001'",
        [format!("account:{account_uid}")],
    )
    .unwrap();
    drop(db);

    let mut exhausted_data = business(json!({"dungeon_id":"501002"}), "60000");
    exhausted_data["time"] = json!(1_800_000_000_000i64);
    let (_, exhausted) = call(
        app.clone(),
        "GET",
        &game_uri("1001", "dungeon.fight", exhausted_data),
        json!({}),
    )
    .await;
    assert_eq!(exhausted["result"], false);
    assert_eq!(exhausted["error_code"], "insufficient_power");
    let db = db::open(&tmp.path().join("accounts.sqlite3")).unwrap();
    let (fight_count, ledger_count, clears): (i64, i64, i64) = db
        .query_row(
            "SELECT (SELECT COUNT(*) FROM fight_records),
                    (SELECT COUNT(*) FROM resource_ledger),
                    (SELECT clears FROM player_dungeons
                     WHERE principal = ?1 AND server_id = '1001' AND dungeon_id = '501002')",
            [format!("account:{account_uid}")],
            |row| Ok((row.get(0)?, row.get(1)?, row.get(2)?)),
        )
        .unwrap();
    assert_eq!((fight_count, ledger_count, clears), (3, 11, 2));
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
    let generals = std::fs::read_to_string(plan.join("sgs_generals.js")).unwrap();
    for id in crate::protocol::TUTORIAL_STARTER_GENERALS
        .into_iter()
        .chain(tutorial.dungeons().map(|(_, _, enemy_id)| enemy_id))
    {
        assert!(
            generals.contains(&format!("\"{id}\": {{")),
            "general {id} missing"
        );
    }

    let global_conf = std::fs::read_to_string(plan.join("sgs_global_conf.js")).unwrap();
    let encoded_starters = global_conf
        .split("FreshmanChooseGeneralId: {")
        .nth(1)
        .and_then(|block| block.split("logical_data: \"").nth(1))
        .and_then(|value| value.split("\",\n").next())
        .expect("FreshmanChooseGeneralId.logical_data exists");
    let starter_json: String = serde_json::from_str(&format!("\"{encoded_starters}\""))
        .expect("starter list is a JSON-encoded string");
    let shipped_starters: Vec<String> =
        serde_json::from_str(&starter_json).expect("starter list is valid JSON");
    assert_eq!(
        shipped_starters,
        crate::protocol::TUTORIAL_STARTER_GENERALS.map(str::to_owned)
    );

    let cfg_data = std::fs::read_to_string(
        std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
            .join("../ReconstructedJS/src_jsc/Tools/CfgData.js"),
    )
    .expect("client CfgData.js is required for map id validation");
    let shipped_map_id = cfg_data
        .split("case xs.Constant_CfgDataType_Map:\n        // source line 304, bytecode pc 521\n        return \"")
        .nth(1)
        .and_then(|value| value.split('\"').next())
        .expect("Map fallback id exists in CfgData.js");
    assert_eq!(shipped_map_id, crate::protocol::NEWBIE_MAP_ID);

    let user_level_conf = std::fs::read_to_string(plan.join("sgs_user_level_conf.js")).unwrap();
    let level_one = user_level_conf
        .split("xs.Cfg.System.sgs_user_level_conf = [")
        .nth(1)
        .and_then(|value| value.split("},").next())
        .expect("level 1 player capacity record exists");
    let capacity = |field: &str| {
        level_one
            .split(&format!("{field}: \""))
            .nth(1)
            .and_then(|value| value.split('\"').next())
            .and_then(|value| value.parse::<i64>().ok())
            .unwrap_or_else(|| panic!("level 1 {field} exists"))
    };
    assert_eq!(tutorial.starting_power, capacity("max_power"));
    assert_eq!(tutorial.starting_energy, capacity("max_energy"));

    let player_model = std::fs::read_to_string(
        std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
            .join("../ReconstructedJS/src_jsc/Models/Player.js"),
    )
    .expect("client Player.js is required for resource semantics validation");
    assert!(player_model.contains("getPlayerCurTiLi: function() {\n    // source line 410, bytecode pc 6\n    return this.user_power;"));
    assert!(player_model.contains("getPlayerCurQiLi: function() {\n    // source line 422, bytecode pc 6\n    return this.user_energy;"));

    let dungeon_model = std::fs::read_to_string(
        std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
            .join("../ReconstructedJS/src_jsc/Models/Dungeon.js"),
    )
    .expect("client Dungeon.js is required for stamina-cost validation");
    assert!(
        dungeon_model.contains("this.dungeon_cost_power = parseInt(dungeonInfo.dungeon_power)")
    );
}
