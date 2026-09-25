// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Login/LoginScene_ThirdSdk.js:1
// source line 502, bytecode pc 437
(xs.Scene.Login.LoginScene_EnterGame = cc.Layer.extend({
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(params) {
    var _gameNameView, _gameLogo, _arm, _labelVerDesc, isHaveSwitchAccount;
    if (!this._super()) {
        // source line 16, bytecode pc 19
        return false;
    }
    // source line 18, bytecode pc 29
    (this.m_loginParams = params);
    if (!this._enter_isFirst_login) {
        // source line 21, bytecode pc 49
        (this._enter_isFirst_login = true);
        // source line 22, bytecode pc 82
        xs.Tools.Statistic.event_enter("login");
        // source line 24, bytecode pc 105
        xs.log_zhz("this is first ,login");
    } else {
        // source line 27, bytecode pc 133
        xs.log_zhz("this is not first ,login");
    }
    // source line 31, bytecode pc 162
    xs.Tools.UI.addIndexBgSprite(this);
    // source line 34, bytecode pc 198
    (_gameNameView = xs.Factorys.Sprite.createWithFileName("tex/logo/logo_title5_2.png"));
    // source line 35, bytecode pc 224
    _gameNameView.setAnchorPoint(xs.ap_c);
    // source line 39, bytecode pc 280
    xs.Utils.Node.attachNodes(this, _gameNameView, { desc: "c", sc: true });
    // source line 42, bytecode pc 316
    (_gameLogo = xs.Factorys.Sprite.createWithFileName("tex/logo/logo.png"));
    // source line 43, bytecode pc 342
    _gameLogo.setAnchorPoint(xs.ap_lt);
    // source line 47, bytecode pc 425
    xs.Utils.Node.attachNodes(this, _gameLogo, { desc: "lt", offset: cc.p(25, -25), sc: true });
    // source line 50, bytecode pc 461
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_4_EnterGame.ccbi", this));
    // source line 51, bytecode pc 504
    this.ccbNode.setContentSize(cc.size(550, 328));
    // source line 52, bytecode pc 547
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0));
    // source line 53, bytecode pc 632
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "cb", offset: cc.p(0, 25), sc: true });
    // source line 55, bytecode pc 640
    (this.m_loginType = null);
    // source line 56, bytecode pc 648
    (this.m_loginServer = null);
    // source line 57, bytecode pc 656
    (this.m_loginTypeTip = null);
    // source line 58, bytecode pc 664
    (this.m_loginServerTip = null);
    // source line 61, bytecode pc 712
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 64, bytecode pc 767
    (this.zuizhonglabelBtn = xs.Views.Btn.createInvisibleWithParent(this.ccbNode.getChildByTag(150)));
    // source line 67, bytecode pc 793
    this.zuizhonglabelBtn.addCallBackForEvent(this, function() {
    // source line 69, bytecode pc 43
    xs.Views.Mgr.showDialogByName("Announcement", xs.Constant_SettingType_ZuiZhongXieYi);
});
    // source line 73, bytecode pc 848
    (this.m_checkBtn = xs.Views.Btn.createInvisibleWithParent(this.ccbNode.getChildByTag(200)));
    // source line 74, bytecode pc 886
    this.m_checkBtn.setOnClickCallBack(this.onCheckBtnClick.bind(this));
    // source line 77, bytecode pc 937
    this.m_loginTypeTip.setString(xs.Tools.String.createString("changLogin"));
    // source line 78, bytecode pc 988
    this.m_loginServerTip.setString(xs.Tools.String.createString("changeServer"));
    // source line 80, bytecode pc 1015
    (this.btn_ChangeLoginType = this.ccbNode.getChildByTag(10));
    // source line 81, bytecode pc 1036
    this.btn_ChangeLoginType.setTouchPriority(-1);
    // source line 82, bytecode pc 1056
    this.btn_ChangeLoginType.setZoomOnTouchDown(false);
    // source line 83, bytecode pc 1094
    this.btn_ChangeLoginType.addTargetWithActionForControlEvents(this, this.showLoginDialogFromControlBtn, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 85, bytecode pc 1121
    (this.btn_ChangeLoginServer = this.ccbNode.getChildByTag(11));
    // source line 86, bytecode pc 1142
    this.btn_ChangeLoginServer.setTouchPriority(-1);
    // source line 87, bytecode pc 1162
    this.btn_ChangeLoginServer.setZoomOnTouchDown(false);
    // source line 88, bytecode pc 1200
    this.btn_ChangeLoginServer.addTargetWithActionForControlEvents(this, this.changeLoginServer, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 90, bytecode pc 1227
    (this.btn_StartLogin = this.ccbNode.getChildByTag(12));
    // source line 91, bytecode pc 1247
    this.btn_StartLogin.setTouchPriority(0);
    // source line 92, bytecode pc 1285
    this.btn_StartLogin.addTargetWithActionForControlEvents(this, this.onStartLogin, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 94, bytecode pc 1326
    (_arm = xs.Views.Armature.AutoAudioArmature.create("Arm_EnterGame"));
    // source line 95, bytecode pc 1407
    xs.Utils.Node.attachNodes(this.btn_StartLogin, _arm, { desc: "c", offset: cc.p(-20, 0) });
    // source line 96, bytecode pc 1447
    _arm.playAniById("enterGame", { loop: true, speed: 1 });
    // source line 99, bytecode pc 1480
    (this.loginType = xs.Profile.UserCfg.getLoginType());
    if (((this.loginType === xs.Constant_LoginType_Visitor) || (this.loginType === ""))) {
        // source line 102, bytecode pc 1537
        (this.loginType = xs.Constant_LoginType_Visitor);
        // source line 103, bytecode pc 1588
        this.m_loginType.setString(xs.Tools.String.createString("visitorLogin"));
    } else {
        if (((this.loginType === xs.Constant_LoginType_ThirdSdk) || ((this.loginType === xs.Constant_LoginType_Super3rdSdk_Ios) || (this.loginType === xs.Const_App_Account_Sys_Super3rdSdk_And)))) {
            // source line 108, bytecode pc 1684
            xs.log("in third_sdk page ");
            // source line 109, bytecode pc 1735
            this.m_loginType.setString(xs.Tools.String.createString("bfLogin"));
        } else {
            // source line 113, bytecode pc 1757
            (this.loginType = xs.Constant_LoginType_ThirdSdk);
            // source line 114, bytecode pc 1808
            this.m_loginType.setString(xs.Tools.String.createString("bfLogin"));
        }
    }
    // source line 118, bytecode pc 1844
    (_labelVerDesc = xs.Factorys.Label.createByStyleId("LS_shuxing1"));
    // source line 119, bytecode pc 1886
    _labelVerDesc.setString(xs.Tools.Sys.getVersionDesc());
    // source line 120, bytecode pc 1923
    _labelVerDesc.setAligns(xs.AlignH_Left, xs.AlignV_Bottom);
    // source line 121, bytecode pc 2002
    xs.Utils.Node.attachNodes(this, _labelVerDesc, { desc: "lb", sc: true, offset: { x: 0, y: 0 } });
    // source line 124, bytecode pc 2056
    (isHaveSwitchAccount = xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isSupportFunction", "accountSwitch"));
    if ((isHaveSwitchAccount == "false")) {
        // source line 126, bytecode pc 2090
        this.m_loginType.setVisible(false);
        // source line 127, bytecode pc 2110
        this.m_loginTypeTip.setVisible(false);
        // source line 128, bytecode pc 2130
        this.btn_ChangeLoginType.setVisible(false);
    }
    // source line 131, bytecode pc 2132
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 135, bytecode pc 12
    this._super();
    // source line 136, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.onThirdSdkLoginSucess, xs.Constant_Notify_Event_ThirdSdkLoginSucess);
    // source line 137, bytecode pc 106
    xs.Utils.Notify.addObserver(this, this.onThirdSdkLoginFail, xs.Constant_Notify_Event_ThirdSdkLoginFail);
    // source line 138, bytecode pc 153
    xs.Utils.Notify.addObserver(this, this.onGetServerListSucess, xs.Constant_Notify_Event_GetServerListSucess);
    if (((this.m_loginParams == null) || (this.m_loginParams.funTypeStr == xs.Constant_LoginFunType_AccountLoginIn))) {
        // source line 144, bytecode pc 217
        xs.log("开始调用SDK登录");
        // source line 145, bytecode pc 241
        this.showLoginDialog(xs.Constant_LoginFunType_AccountLoginIn);
    } else {
        if ((this.m_loginParams.funTypeStr == xs.Constant_LoginFunType_AccountSwitch)) {
            // source line 148, bytecode pc 286
            this.loadOldInfo();
            // source line 150, bytecode pc 310
            this.showLoginDialog(xs.Constant_LoginFunType_AccountSwitch);
        } else {
            if ((this.m_loginParams.funTypeStr == xs.Constant_LoginFunType_AccountSwitchSuccess)) {
                if (((this.m_loginParams.uidKey == null) || (this.m_loginParams.uidKey.length == 0))) {
                    // source line 156, bytecode pc 407
                    xs.log("警告!!切换帐号成功,但uidKey为空!");
                    // source line 158, bytecode pc 431
                    this.showLoginDialog(xs.Constant_LoginFunType_AccountLoginIn);
                } else {
                    // source line 161, bytecode pc 459
                    xs.log("切换帐号成功,发起服务器列表请求");
                    // source line 163, bytecode pc 479
                    this.onThirdSdkLoginSucess(this.m_loginParams);
                }
            } else {
                if ((this.m_loginParams.funTypeStr == xs.Constant_LoginFunType_None)) {
                    // source line 167, bytecode pc 534
                    xs.log("333333333333");
                    // source line 169, bytecode pc 547
                    this.loadOldInfo();
                }
            }
        }
    }
    // source line 173, bytecode pc 574
    xs.Tools.Statistic.thirdSdkLoginEnterEvent();
},
    onExit: function() {
    // source line 177, bytecode pc 12
    this._super();
    // source line 178, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_ThirdSdkLoginSucess);
    // source line 179, bytecode pc 92
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_ThirdSdkLoginFail);
    // source line 180, bytecode pc 132
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_GetServerListSucess);
},
    loadOldInfo: function() {
    var str_isPlayerLogined, addrServer;
    // source line 185, bytecode pc 38
    (this.m_userLoginInfo = xs.Scene.Mgr.loadStatus("UserLoginInfo"));
    // source line 187, bytecode pc 92
    (str_isPlayerLogined = xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isLogined", ""));
    // source line 188, bytecode pc 119
    xs.log(("str_isPlayerLogined = " + str_isPlayerLogined));
    if ((str_isPlayerLogined == "true")) {
        // source line 191, bytecode pc 172
        (this.m_userLoginInfo = xs.Scene.Mgr.loadStatus("UserLoginInfo"));
        // source line 192, bytecode pc 202
        (addrServer = xs.Profile.UserCfg.getGameAddr());
        // source line 196, bytecode pc 254
        (this.curSelServer = { server_title: addrServer.name, server_url: addrServer.domain, server_id: addrServer.id });
        // source line 198, bytecode pc 274
        this.updateCurServerShow(this.curSelServer);
    }
},
    onCheckBtnClick: function() {
    if (this.ccbNode.getChildByTag(201).isVisible()) {
        // source line 207, bytecode pc 71
        this.ccbNode.getChildByTag(201).setVisible(false);
    } else {
        // source line 209, bytecode pc 111
        this.ccbNode.getChildByTag(201).setVisible(true);
    }
},
    onStartLogin: function() {
    var str_isPlayerLogined, cfgVersion;
    if (!this.ccbNode.getChildByTag(201).isVisible()) {
        // source line 218, bytecode pc 97
        xs.Views.Mgr.showToast(xs.Tools.String.createString("hintStr_3rd_ZuiZhongXieYi"));
        // source line 219, bytecode pc 99
        return void 0;
    }
    // source line 223, bytecode pc 153
    (str_isPlayerLogined = xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isLogined", ""));
    // source line 224, bytecode pc 180
    xs.log(("str_isPlayerLogined = " + str_isPlayerLogined));
    if ((str_isPlayerLogined == "false")) {
        // source line 226, bytecode pc 218
        this.showLoginDialog(xs.Constant_LoginFunType_AccountLoginIn);
        // source line 227, bytecode pc 220
        return void 0;
    }
    // source line 233, bytecode pc 302
    xs.Profile.UserCfg.setGameAddr({
    name: this.curSelServer.server_title,
    domain: this.curSelServer.server_url,
    id: this.curSelServer.server_id
});
    // source line 237, bytecode pc 339
    (xs.Profile.GameData.Player.g_serverId = this.curSelServer.server_id);
    // source line 238, bytecode pc 376
    (xs.Profile.GameData.Player.g_serverURL = this.curSelServer.server_url);
    // source line 242, bytecode pc 418
    (cfgVersion = xs.Tools.CfgData.getGlobalConf("CfgVersion", ""));
    // source line 243, bytecode pc 445
    xs.dump("cfgVersion", cfgVersion);
    // source line 270, bytecode pc 597
    xs.Tools.Net.requestLogin({
    account_uid: xs.Profile.UserCfg.getAccountUid(),
    app_indentify: xs.Profile.UserCfg.readProductId(),
    forcepush: true,
    server_params: this.m_userLoginInfo.serverParams,
    token: this.token,
    cfg_version: cfgVersion
}, this._onGetPlayerInfoSuccess, function(params) {
    // source line 254, bytecode pc 26
    xs.dump("_params", params);
    if ((params.error_code === "e_10011")) {
        // source line 264, bytecode pc 119
        xs.Tools.Net.requestSGSConfig({ download_url: params.download_url }, function() {
    // source line 258, bytecode pc 22
    xs.log("enter game!");
    // source line 259, bytecode pc 65
    xs.Utils.require(xs.Cfg.System.files_generated_by_server);
    // source line 260, bytecode pc 78
    this.onStartLogin();
}.bind(this), function() {
    // source line 263, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_103"));
}, this);
        // source line 266, bytecode pc 121
        return true;
    }
    // source line 268, bytecode pc 123
    return false;
}, this);
},
    _onGetPlayerInfoSuccess: function(jsonObj) {
    // source line 285, bytecode pc 46
    xs.Scene.Login.onGetPlayerInfoSuccess.apply(this, [ jsonObj ]);
},
    onGetServerListSucess: function() {
    // source line 289, bytecode pc 38
    (this.m_userLoginInfo = xs.Scene.Mgr.loadStatus("UserLoginInfo"));
    // source line 290, bytecode pc 51
    this.updateCurServerShow();
},
    showLoginDialog: function(loginFunType) {
    // source line 295, bytecode pc 48
    xs.JsbConnecter.getInstance().invoke("ThirdSdk", loginFunType, "");
},
    showLoginDialogFromControlBtn: function() {
    var str_isPlayerLogined;
    // source line 300, bytecode pc 53
    (str_isPlayerLogined = xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isLogined", ""));
    if ((str_isPlayerLogined == "false")) {
        // source line 303, bytecode pc 91
        this.showLoginDialog(xs.Constant_LoginFunType_AccountLoginIn);
    } else {
        // source line 307, bytecode pc 120
        this.showLoginDialog(xs.Constant_LoginFunType_AccountSwitch);
    }
},
    onChangeLoginTypeCb: function(loginType) {
    // source line 314, bytecode pc 19
    this.ccbNode.setVisible(true);
    if (loginType) {
        // source line 316, bytecode pc 37
        (this.loginType = loginType);
        // source line 317, bytecode pc 50
        this.onStartLogin();
    }
},
    changeLoginServer: function() {
    var str_isPlayerLogined;
    // source line 324, bytecode pc 53
    (str_isPlayerLogined = xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isLogined", ""));
    if ((str_isPlayerLogined == "false")) {
        // source line 326, bytecode pc 118
        xs.JsbConnecter.getInstance().invoke("ThirdSdk", "login", "");
        // source line 327, bytecode pc 120
        return void 0;
    }
    // source line 330, bytecode pc 140
    this.ccbNode.setVisible(false);
    // source line 331, bytecode pc 200
    (this.serverSelView = xs.Views.ServerSelectView.create(xs.Profile.UserCfg.getServerListData()));
    // source line 332, bytecode pc 238
    this.serverSelView.registerCallBack(this.changeServerCallBack.bind(this));
    // source line 333, bytecode pc 258
    this.addChild(this.serverSelView);
},
    changeServerCallBack: function(serverData) {
    // source line 337, bytecode pc 9
    (this.curSelServer = serverData);
    // source line 338, bytecode pc 29
    this.ccbNode.setVisible(true);
    // source line 339, bytecode pc 49
    this.serverSelView.removeFromParent(true);
    // source line 345, bytecode pc 131
    xs.Profile.UserCfg.setGameAddr({
    name: this.curSelServer.server_title,
    domain: this.curSelServer.server_url,
    id: this.curSelServer.server_id
});
    // source line 349, bytecode pc 151
    this.updateCurServerShow(this.curSelServer);
},
    updateCurServerShow: function(curServer) {
    // source line 355, bytecode pc 17
    (this.serverList = this.m_userLoginInfo.serverList);
    // source line 357, bytecode pc 35
    (this.serverListLogined = this.m_userLoginInfo.loginedServerLists);
    if (!curServer) {
        if ((this.serverListLogined.length === 0)) {
            // source line 362, bytecode pc 77
            (this.curSelServer = this.serverList[0]);
        } else {
            // source line 364, bytecode pc 97
            (this.curSelServer = this.serverListLogined[0]);
        }
    }
    if (this.curSelServer) {
        // source line 369, bytecode pc 138
        this.m_loginServer.setString(this.curSelServer.server_title);
    }
},
    onThirdSdkLoginSucess: function(params) {
    var _loginType, arguments;
    // source line 374, bytecode pc 10
    (arguments = arguments);
    // source line 376, bytecode pc 42
    xs.Profile.GameData.Mgr.releaseInstance();
    // source line 377, bytecode pc 69
    xs.Scene.Mgr.removeAllStatus();
    // source line 387, bytecode pc 119
    xs.Profile.UserCfg.setGameAddr(xs.Cfg.Url.ServerAddrsMap[0]);
    // source line 390, bytecode pc 146
    xs.Tools.Statistic.thirdSdkGetServerListBeginEvent();
    if ((xs.app_account_sys == xs.Const_App_Account_Sys_ThirdSdkSet)) {
        // source line 397, bytecode pc 202
        (_loginType = xs.Constant_LoginType_ThirdSdk);
    } else {
        if ((xs.app_account_sys == xs.Const_App_Account_Sys_Super3rdSdk_Ios)) {
            // source line 400, bytecode pc 253
            (_loginType = xs.Constant_LoginType_Super3rdSdk_Ios);
        } else {
            if ((xs.app_account_sys == xs.Const_App_Account_Sys_Super3rdSdk_And)) {
                // source line 403, bytecode pc 304
                (_loginType = xs.Constant_LoginType_Super3rdSdk_And);
            } else {
                // source line 406, bytecode pc 329
                (_loginType = xs.Constant_LoginType_ThirdSdk);
                // source line 407, bytecode pc 362
                xs.error("_loginType error", _loginType);
            }
        }
    }
    // source line 428, bytecode pc 524
    xs.Tools.Net.requestGetServerList({
    uid: params.uidKey,
    logintype: _loginType,
    app_indentify: xs.Profile.UserCfg.readProductId(),
    extra: eval((("(" + params.sessionKey) + ")"))
}, this.onResponse_GetServerList, function() {
    // source line 426, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_104"));
}, this);
},
    onThirdSdkLoginFail: function(params) {
    // source line 449, bytecode pc 35
    xs.Views.Mgr.showToast(params.errorMsg);
},
    onResponse_GetServerList: function(jsonObj) {
    var _strE;
    try {
        // source line 456, bytecode pc 47
        xs.Scene.Login.onResponse_GetServerList.apply(this, [ jsonObj ]);
        // source line 458, bytecode pc 74
        xs.dump("onResponse_GetServerList in", jsonObj);
        // source line 459, bytecode pc 134
        xs.Views.Mgr.showToast(xs.Tools.String.createString("completeLogin"));
        // source line 461, bytecode pc 144
        (this.serverListData = jsonObj);
        // source line 462, bytecode pc 178
        xs.Profile.UserCfg.setServerListData(this.serverListData);
        // source line 464, bytecode pc 198
        (this.accountUid = jsonObj.account_info.account_uid);
        // source line 465, bytecode pc 232
        xs.Profile.UserCfg.setAccountUid(this.accountUid);
        // source line 468, bytecode pc 270
        xs.Profile.UserCfg.setLoginType(xs.Constant_LoginType_ThirdSdk);
        // source line 476, bytecode pc 368
        xs.Scene.Mgr.saveStatus("UserLoginInfo", {
    serverList: this.serverListData.server_list,
    loginedServerLists: this.serverListData.server_logined_list,
    serverParams: jsonObj.server_params,
    token: jsonObj.token
});
        // source line 479, bytecode pc 404
        xs.Profile.UserCfg.setToken(jsonObj.token);
        // source line 481, bytecode pc 442
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_GetServerListSucess);
    } catch (e) {
        // source line 485, bytecode pc 478
        xs.warnException(e);
        // source line 486, bytecode pc 507
        (_strE = xs.Debug.toJsonString(e));
        // source line 487, bytecode pc 538
        xs.Views.Mgr.showToast(_strE);
        /* TODO_BYTECODE pc=539 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    if ((this.serverListData.server_list.length > 0)) {
        // source line 492, bytecode pc 597
        xs.Tools.Statistic.thirdSdkGetServerListSucessEvent();
    }
},
    cfg: {
        ccbCfg: [
            { tag: 13, type: "ls", name: "m_loginType", id: "LS_loginSign" },
            { tag: 14, type: "ls", name: "m_loginServer", id: "LS_chooseServer" },
            { tag: 15, type: "ls", name: "m_loginTypeTip", id: "LS_mainUI2" },
            { tag: 16, type: "ls", name: "m_loginServerTip", id: "LS_mainUI2" }
        ]
    }
}));
// source line 529, bytecode pc 516
(xs.Scene.Login.LoginScene_ThirdSdk = cc.Scene.extend({
    ctor: function() {
    // source line 514, bytecode pc 12
    this._super();
    // source line 515, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(params) {
    var layer;
    if (!this._super()) {
        // source line 519, bytecode pc 19
        return false;
    }
    // source line 522, bytecode pc 48
    (layer = new xs.Scene.Login.LoginScene_EnterGame());
    // source line 523, bytecode pc 67
    layer.init(params);
    // source line 524, bytecode pc 100
    xs.Utils.Node.attachNodes(this, layer);
    // source line 526, bytecode pc 102
    return true;
},
    onEnter: function() {
    // source line 530, bytecode pc 12
    this._super();
    // source line 532, bytecode pc 41
    xs.Guide.GuideMgr.setIsOver(true);
}
}));
// source line 536, bytecode pc 547
(xs.Scene.Login.LoginScene_ThirdSdk.create = function(params) {
    var scene;
    // source line 537, bytecode pc 28
    (scene = new xs.Scene.Login.LoginScene_ThirdSdk());
    if ((scene && scene.init(params))) {
        // source line 539, bytecode pc 101
        scene.setTag(xs.Cfg.Scene.LoginScene.tag);
        // source line 540, bytecode pc 105
        return scene;
    }
    // source line 542, bytecode pc 107
    return null;
});
// source line 553, bytecode pc 667
xs.Scene.Mgr.registerScene("LoginScene", {
    "class": xs.Scene.Login.LoginScene_ThirdSdk,
    area: [ "Login" ],
    type: xs.Constant_SceneType_None,
    audio: { bgId: "Audio_BG_Login" }
});
