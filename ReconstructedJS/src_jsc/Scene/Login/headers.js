// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Login/headers.js:1
// source line 17, bytecode pc 62
(xs.Scene.Login = (xs.Scene.Login || {
    onResponse_GetServerList: function(jsonObj) {
    // source line 12, bytecode pc 25
    xs.g_account.init(jsonObj);
    // source line 13, bytecode pc 47
    xs.g_account.onLoginSuccess();
},
    onGetPlayerInfoSuccess: function(jsonObj) {
    var player, params, isWeiDuanUp, freshStep, userInfoArgs;
    // source line 21, bytecode pc 26
    xs.dump("onResponse_GetServerList in", jsonObj);
    // source line 23, bytecode pc 73
    xs.Profile.GameData.Mgr.getInstance().init_Login(jsonObj);
    // source line 25, bytecode pc 95
    xs.g_account.onGetPlayerInfoSuccess();
    // source line 27, bytecode pc 122
    xs.Tools.TalkingDataAppCpa.onLogin();
    // source line 29, bytecode pc 173
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    if (xsc.Tools.AccountSys.isUsingEasySdk()) {
        // source line 37, bytecode pc 315
        xs.JsbConnecter.getInstance().invoke("TestinHelp", "setUserInfo", ((((("" + player.getPlayerId()) + "_lv") + player.getPlayerLevel()) + "_sever") + this.m_server_info.getCurServerId()));
    } else {
        // source line 44, bytecode pc 425
        xs.JsbConnecter.getInstance().invoke("TestinHelp", "setUserInfo", ((((("" + player.getPlayerId()) + "_lv") + player.getPlayerLevel()) + "_sever") + this.curSelServer.server_id));
    }
    if (xsc.Tools.AccountSys.isUsingAnySdk()) {
        // source line 55, bytecode pc 564
        xs.AnySdk.AnySdkHelp_js.submitLoginGameRole(player.getPlayerId(), player.getPlayerName(), player.getPlayerLevel(), this.curSelServer.server_id, this.curSelServer.server_title, "1", "0");
    }
    if (xsc.Tools.AccountSys.isUsing3rdSdk()) {
        // source line 64, bytecode pc 697
        (params = ((((((((("" + player.getPlayerId()) + "|") + player.getPlayerName()) + "|") + player.getPlayerLevel()) + "|") + this.curSelServer.server_id) + "|") + this.curSelServer.server_title));
        // source line 65, bytecode pc 746
        xs.JsbConnecter.getInstance().invoke("ThirdSdk", "thirdSubMitInfo", params);
    }
    // source line 68, bytecode pc 792
    (isWeiDuanUp = (xs.readAndWriteSqlByWeiduan ? xs.readAndWriteSqlByWeiduan.isUpdateWeiduan() : true));
    if (xs.guideOpen) {
        // source line 71, bytecode pc 855
        xs.Guide.GuideMgr.setUseCfg(xs.Cfg.Guide.NewGuideCfg);
        // source line 72, bytecode pc 917
        (freshStep = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerFreshStep());
        // source line 77, bytecode pc 948
        xs.Guide.GuideMgr.setServerStep(freshStep);
        if ((xs.guideAlways === true)) {
            // source line 81, bytecode pc 998
            xs.Guide.GuideMgr.setGuideStep("00335_before");
            // source line 82, bytecode pc 1031
            xs.Guide.GuideMgr.setServerStep("00335_before");
        }
        if (!xs.Guide.GuideMgr.getIsOver()) {
            if (((parseInt(xs.Guide.GuideMgr.getGuideStep()) >= 10100) && (!isWeiDuanUp && xs.weiduan))) {
                // source line 90, bytecode pc 1161
                xs.readAndWriteSqlByWeiduan.setWeiduanUpSql();
                // source line 91, bytecode pc 1188
                xs.Scene.Mgr.clearAll();
                // source line 92, bytecode pc 1237
                xsc.Scene.Mgr.changeScene(xs.UpdateScene.create());
            } else {
                // source line 95, bytecode pc 1275
                xs.Tools.Statistic.event_enter("new_player");
                // source line 98, bytecode pc 1304
                xs.Guide.GuideMgr.setIsNeedChangeScene(true);
                // source line 99, bytecode pc 1331
                xs.Guide.GuideMgr.start();
            }
        } else {
            if ((!isWeiDuanUp && xs.weiduan)) {
                // source line 103, bytecode pc 1383
                xs.readAndWriteSqlByWeiduan.setWeiduanUpSql();
                // source line 104, bytecode pc 1410
                xs.Scene.Mgr.clearAll();
                // source line 105, bytecode pc 1459
                xsc.Scene.Mgr.changeScene(xs.UpdateScene.create());
            } else {
                // source line 108, bytecode pc 1497
                xs.Tools.Statistic.event_enter("normal_player");
                // source line 109, bytecode pc 1532
                xs.Scene.Mgr.changeSceneByName("MainMenuScene", true);
            }
        }
    }
    // source line 114, bytecode pc 1565
    xs.Tools.Statistic.event_enter("all_player");
    // source line 117, bytecode pc 1655
    xs.Tools.Statistic.setUserInfo(xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), 0, 0);
    // source line 120, bytecode pc 1706
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 127, bytecode pc 1835
    (userInfoArgs = ((((((((((((player.getPlayerId() + "|") + player.getPlayerName()) + "|") + player.getPlayerLevel()) + "|") + this.curSelServer.server_id) + "|") + this.curSelServer.server_title) + "|") + "enterServer") + "|") + player.getPlayerVipLevel()));
    // source line 128, bytecode pc 1884
    xs.JsbConnecter.getInstance().invoke("UserInfo", "", userInfoArgs);
}
}));
// source line 135, bytecode pc 99
xs.Utils.require([ "Views/ServerSelectView.js" ]);
// source line 139, bytecode pc 133
xs.log(("app_account_sys in headers = " + xs.app_account_sys));
if (xsc.Tools.AccountSys.isUsingBfSdk()) {
    // source line 145, bytecode pc 201
    xs.Utils.require([ "Scene/Login/LoginScene_BfSdk.js" ]);
} else {
    if (xsc.Tools.AccountSys.isUsingAnySdk()) {
        // source line 152, bytecode pc 274
        xs.Utils.require([ "Scene/Login/LoginScene_AnySdk.js" ]);
    } else {
        if (xsc.Tools.AccountSys.isUsing3rdSdk()) {
            if (xsc.Tools.AccountSys.isUsingGuest()) {
                // source line 159, bytecode pc 364
                xs.log("进入 ThirdGuestSdk");
                // source line 162, bytecode pc 401
                xs.Utils.require([ "Scene/Login/LoginScene_ThirdGuestSdk.js" ]);
            } else {
                // source line 167, bytecode pc 429
                xs.log("进入 ThirdSdk");
                // source line 170, bytecode pc 466
                xs.Utils.require([ "Scene/Login/LoginScene_ThirdSdk.js" ]);
            }
        } else {
            if (xsc.Tools.AccountSys.isUsingEasySdk()) {
                // source line 177, bytecode pc 525
                xs.log("进入 EasySdk");
                // source line 180, bytecode pc 603
                xs.Utils.require([
    (xsc.Tools.AccountSys.isUsingGuest() ? "Scene/Login/LoginScene_EasyGuestSdk.js" : "Scene/Login/LoginScene_EasySdk.js")
]);
            }
        }
    }
}
