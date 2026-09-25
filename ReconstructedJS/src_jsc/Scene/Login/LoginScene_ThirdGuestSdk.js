// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Login/LoginScene_ThirdGuestSdk.js:1
// source line 539, bytecode pc 494
(xs.Scene.Login.LoginScene_EnterGame = cc.Layer.extend({
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(params) {
    var _gameNameView, _labelVerDesc, isHaveSwitchAccount, isHaveLogout;
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
        // source line 23, bytecode pc 105
        xs.log("this is first ,login");
    } else {
        // source line 26, bytecode pc 133
        xs.log("this is not first ,login");
    }
    // source line 30, bytecode pc 162
    xs.Tools.UI.addIndexBgSprite(this);
    // source line 32, bytecode pc 198
    (_gameNameView = xs.Factorys.Sprite.createWithFileName("tex/logo/logo_title.png"));
    // source line 33, bytecode pc 224
    _gameNameView.setAnchorPoint(xs.ap_c);
    // source line 37, bytecode pc 299
    xs.Utils.Node.attachNodes(this, _gameNameView, { desc: "c", offset: { y: 172 }, sc: true });
    // source line 40, bytecode pc 335
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_4_EnterGame.ccbi", this));
    // source line 41, bytecode pc 378
    this.ccbNode.setContentSize(cc.size(550, 328));
    // source line 42, bytecode pc 421
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0));
    // source line 43, bytecode pc 506
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "cb", offset: cc.p(0, 25), sc: true });
    // source line 45, bytecode pc 514
    (this.m_loginType = null);
    // source line 46, bytecode pc 522
    (this.m_loginServer = null);
    // source line 47, bytecode pc 530
    (this.m_loginTypeTip = null);
    // source line 48, bytecode pc 538
    (this.m_loginServerTip = null);
    // source line 51, bytecode pc 586
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 53, bytecode pc 641
    (this.zuizhonglabelBtn = xs.Views.Btn.createInvisibleWithParent(this.ccbNode.getChildByTag(150)));
    // source line 56, bytecode pc 667
    this.zuizhonglabelBtn.addCallBackForEvent(this, function() {
    // source line 58, bytecode pc 43
    xs.Views.Mgr.showDialogByName("Announcement", xs.Constant_SettingType_ZuiZhongXieYi);
});
    // source line 62, bytecode pc 722
    (this.m_checkBtn = xs.Views.Btn.createInvisibleWithParent(this.ccbNode.getChildByTag(200)));
    // source line 63, bytecode pc 760
    this.m_checkBtn.setOnClickCallBack(this.onCheckBtnClick.bind(this));
    // source line 65, bytecode pc 811
    this.m_loginTypeTip.setString(xs.Tools.String.createString("changLogin"));
    // source line 66, bytecode pc 862
    this.m_loginServerTip.setString(xs.Tools.String.createString("changeServer"));
    // source line 68, bytecode pc 889
    (this.btn_ChangeLoginType = this.ccbNode.getChildByTag(10));
    // source line 69, bytecode pc 910
    this.btn_ChangeLoginType.setTouchPriority(-1);
    // source line 70, bytecode pc 930
    this.btn_ChangeLoginType.setZoomOnTouchDown(false);
    // source line 71, bytecode pc 968
    this.btn_ChangeLoginType.addTargetWithActionForControlEvents(this, this.showFacebookLoginDialogFromControlBtn, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 73, bytecode pc 995
    (this.btn_ChangeLoginServer = this.ccbNode.getChildByTag(11));
    // source line 74, bytecode pc 1016
    this.btn_ChangeLoginServer.setTouchPriority(-1);
    // source line 75, bytecode pc 1036
    this.btn_ChangeLoginServer.setZoomOnTouchDown(false);
    // source line 76, bytecode pc 1074
    this.btn_ChangeLoginServer.addTargetWithActionForControlEvents(this, this.changeLoginServer, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 80, bytecode pc 1101
    (this.btn_StartLogin = this.ccbNode.getChildByTag(12));
    // source line 81, bytecode pc 1121
    this.btn_StartLogin.setTouchPriority(0);
    // source line 82, bytecode pc 1159
    this.btn_StartLogin.addTargetWithActionForControlEvents(this, this.onStartLogin, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 89, bytecode pc 1192
    (this.loginType = xs.Profile.UserCfg.getLoginType());
    if ((this.loginType == xs.Constant_LoginType_Visitor)) {
        // source line 91, bytecode pc 1231
        (this.loginType = xs.Constant_LoginType_Visitor);
        // source line 92, bytecode pc 1282
        this.m_loginType.setString(xs.Tools.String.createString("visitorLogin"));
    } else {
        // source line 95, bytecode pc 1310
        xs.log("in third_sdk page ");
        // source line 96, bytecode pc 1327
        (this.loginType = xs.Constant_LoginType_Super3rdSdk_Union);
        // source line 97, bytecode pc 1378
        this.m_loginType.setString(xs.Tools.String.createString("bfLogin"));
    }
    // source line 102, bytecode pc 1414
    (_labelVerDesc = xs.Factorys.Label.createByStyleId("LS_shuxing1"));
    // source line 103, bytecode pc 1456
    _labelVerDesc.setString(xs.Tools.Sys.getVersionDesc());
    // source line 104, bytecode pc 1493
    _labelVerDesc.setAligns(xs.AlignH_Left, xs.AlignV_Bottom);
    // source line 105, bytecode pc 1572
    xs.Utils.Node.attachNodes(this, _labelVerDesc, { desc: "lb", sc: true, offset: { x: 0, y: 0 } });
    // source line 108, bytecode pc 1626
    (isHaveSwitchAccount = xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isSupportFunction", "accountSwitch"));
    // source line 109, bytecode pc 1680
    (isHaveLogout = xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isSupportFunction", "logout"));
    if (((isHaveSwitchAccount == "false") && (isHaveLogout == "false"))) {
        // source line 112, bytecode pc 1729
        this.m_loginType.setVisible(false);
        // source line 113, bytecode pc 1749
        this.m_loginTypeTip.setVisible(false);
        // source line 114, bytecode pc 1769
        this.btn_ChangeLoginType.setVisible(false);
    }
    // source line 117, bytecode pc 1771
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 121, bytecode pc 12
    this._super();
    // source line 122, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.onThirdSdkLoginSucess, xs.Constant_Notify_Event_ThirdSdkLoginSucess);
    // source line 123, bytecode pc 106
    xs.Utils.Notify.addObserver(this, this.onThirdSdkLoginFail, xs.Constant_Notify_Event_ThirdSdkLoginFail);
    // source line 124, bytecode pc 153
    xs.Utils.Notify.addObserver(this, this.onGetServerListSucess, xs.Constant_Notify_Event_GetServerListSucess);
    // source line 126, bytecode pc 203
    xs.log("44444", xs.Profile.UserCfg.getLoginType());
    if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_First)) {
        // source line 128, bytecode pc 268
        xs.log("第一次登录");
        // source line 129, bytecode pc 281
        this.showFacebookLoginDialogFromControlBtn();
    } else {
        if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_Visitor)) {
            // source line 132, bytecode pc 351
            xs.log("游客登录");
            // source line 133, bytecode pc 364
            this.onVisitorBtnClick();
        } else {
            if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_Super3rdSdk_Union)) {
                // source line 135, bytecode pc 434
                xs.log("sdk登录");
                // source line 136, bytecode pc 458
                this.showLoginDialog(xs.Constant_LoginFunType_AccountLoginIn);
            }
        }
    }
    // source line 139, bytecode pc 485
    xs.Tools.Statistic.thirdSdkLoginEnterEvent();
},
    onExit: function() {
    // source line 143, bytecode pc 12
    this._super();
    // source line 144, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_ThirdSdkLoginSucess);
    // source line 145, bytecode pc 92
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_ThirdSdkLoginFail);
    // source line 146, bytecode pc 132
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_GetServerListSucess);
},
    loadOldInfo: function() {
    var str_isPlayerLogined, addrServer;
    // source line 151, bytecode pc 38
    (this.m_userLoginInfo = xs.Scene.Mgr.loadStatus("UserLoginInfo"));
    // source line 153, bytecode pc 92
    (str_isPlayerLogined = xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isLogined", ""));
    // source line 154, bytecode pc 119
    xs.log(("str_isPlayerLogined = " + str_isPlayerLogined));
    if ((str_isPlayerLogined == "true")) {
        // source line 157, bytecode pc 172
        (this.m_userLoginInfo = xs.Scene.Mgr.loadStatus("UserLoginInfo"));
        // source line 158, bytecode pc 202
        (addrServer = xs.Profile.UserCfg.getGameAddr());
        // source line 162, bytecode pc 254
        (this.curSelServer = { server_title: addrServer.name, server_url: addrServer.domain, server_id: addrServer.id });
        // source line 164, bytecode pc 274
        this.updateCurServerShow(this.curSelServer);
    }
},
    onCheckBtnClick: function() {
    if (this.ccbNode.getChildByTag(201).isVisible()) {
        // source line 173, bytecode pc 71
        this.ccbNode.getChildByTag(201).setVisible(false);
    } else {
        // source line 175, bytecode pc 111
        this.ccbNode.getChildByTag(201).setVisible(true);
    }
},
    onStartLogin: function() {
    var str_isPlayerLogined, _loginType, cfgVersion;
    if (!this.ccbNode.getChildByTag(201).isVisible()) {
        // source line 183, bytecode pc 97
        xs.Views.Mgr.showToast(xs.Tools.String.createString("hintStr_3rd_ZuiZhongXieYi"));
        // source line 184, bytecode pc 99
        return void 0;
    }
    // source line 188, bytecode pc 153
    (str_isPlayerLogined = xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isLogined", ""));
    // source line 189, bytecode pc 183
    (_loginType = xs.Profile.UserCfg.getLoginType());
    // source line 190, bytecode pc 210
    xs.log(("str_isPlayerLogined = " + str_isPlayerLogined));
    if (((_loginType == xs.Constant_LoginType_Super3rdSdk_Union) && (str_isPlayerLogined == "false"))) {
        // source line 192, bytecode pc 257
        this.showFacebookLoginDialogFromControlBtn();
        // source line 193, bytecode pc 259
        return void 0;
    }
    // source line 196, bytecode pc 289
    xs.dump("LoginScene_EnterGame onStartLogin this.curSelServer ", this.curSelServer);
    // source line 200, bytecode pc 371
    xs.Profile.UserCfg.setGameAddr({
    name: this.curSelServer.server_title,
    domain: this.curSelServer.server_url,
    id: this.curSelServer.server_id
});
    // source line 204, bytecode pc 408
    (xs.Profile.GameData.Player.g_serverId = this.curSelServer.server_id);
    // source line 205, bytecode pc 445
    (xs.Profile.GameData.Player.g_serverURL = this.curSelServer.server_url);
    // source line 209, bytecode pc 487
    (cfgVersion = xs.Tools.CfgData.getGlobalConf("CfgVersion", ""));
    // source line 210, bytecode pc 514
    xs.dump("cfgVersion", cfgVersion);
    // source line 237, bytecode pc 666
    xs.Tools.Net.requestLogin({
    account_uid: xs.Profile.UserCfg.getAccountUid(),
    app_indentify: xs.Profile.UserCfg.readProductId(),
    forcepush: true,
    server_params: this.m_userLoginInfo.serverParams,
    token: this.token,
    cfg_version: cfgVersion
}, this._onGetPlayerInfoSuccess, function(params) {
    // source line 221, bytecode pc 26
    xs.dump("_params", params);
    if ((params.error_code === "e_10011")) {
        // source line 231, bytecode pc 119
        xs.Tools.Net.requestSGSConfig({ download_url: params.download_url }, function() {
    // source line 225, bytecode pc 22
    xs.log("enter game!");
    // source line 226, bytecode pc 65
    xs.Utils.require(xs.Cfg.System.files_generated_by_server);
    // source line 227, bytecode pc 78
    this.onStartLogin();
}.bind(this), function() {
    // source line 230, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_103"));
}, this);
        // source line 233, bytecode pc 121
        return true;
    }
    // source line 235, bytecode pc 123
    return false;
}, this);
},
    _onGetPlayerInfoSuccess: function(jsonObj) {
    // source line 252, bytecode pc 46
    xs.Scene.Login.onGetPlayerInfoSuccess.apply(this, [ jsonObj ]);
},
    onGetServerListSucess: function() {
    // source line 256, bytecode pc 38
    (this.m_userLoginInfo = xs.Scene.Mgr.loadStatus("UserLoginInfo"));
    // source line 257, bytecode pc 51
    this.updateCurServerShow();
    // source line 258, bytecode pc 84
    (this.loginType = xs.Profile.UserCfg.getLoginType());
    if ((this.loginType === xs.Constant_LoginType_Visitor)) {
        // source line 260, bytecode pc 157
        this.m_loginType.setString(xs.Tools.String.createString("visitorLogin"));
    } else {
        if ((this.loginType === xs.Constant_LoginType_Super3rdSdk_Union)) {
            // source line 262, bytecode pc 235
            this.m_loginType.setString(xs.Tools.String.createString("bfLogin"));
        }
    }
},
    showLoginDialog: function(loginFunType) {
    // source line 268, bytecode pc 48
    xs.JsbConnecter.getInstance().invoke("ThirdSdk", loginFunType, "");
},
    showFacebookLoginDialogFromControlBtn: function() {
    // source line 272, bytecode pc 32
    xs.Views.Mgr.showDialogByName("FacebookLoginDialog");
},
    onChangeLoginTypeCb: function(loginType) {
    // source line 277, bytecode pc 19
    this.ccbNode.setVisible(true);
    if (loginType) {
        // source line 279, bytecode pc 37
        (this.loginType = loginType);
        // source line 280, bytecode pc 50
        this.onStartLogin();
    }
},
    changeLoginServer: function() {
    var str_isPlayerLogined, _loginType;
    // source line 287, bytecode pc 53
    (str_isPlayerLogined = xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isLogined", ""));
    // source line 288, bytecode pc 83
    (_loginType = xs.Profile.UserCfg.getLoginType());
    if (((_loginType == xs.Constant_LoginType_Super3rdSdk_Union) && (str_isPlayerLogined == "false"))) {
        // source line 290, bytecode pc 168
        xs.JsbConnecter.getInstance().invoke("ThirdSdk", "login", "");
        // source line 291, bytecode pc 170
        return void 0;
    }
    // source line 294, bytecode pc 190
    this.ccbNode.setVisible(false);
    // source line 295, bytecode pc 250
    (this.serverSelView = xs.Views.ServerSelectView.create(xs.Profile.UserCfg.getServerListData()));
    // source line 296, bytecode pc 288
    this.serverSelView.registerCallBack(this.changeServerCallBack.bind(this));
    // source line 297, bytecode pc 308
    this.addChild(this.serverSelView);
},
    changeServerCallBack: function(serverData) {
    // source line 301, bytecode pc 9
    (this.curSelServer = serverData);
    // source line 302, bytecode pc 29
    this.ccbNode.setVisible(true);
    // source line 303, bytecode pc 49
    this.serverSelView.removeFromParent(true);
    // source line 309, bytecode pc 131
    xs.Profile.UserCfg.setGameAddr({
    name: this.curSelServer.server_title,
    domain: this.curSelServer.server_url,
    id: this.curSelServer.server_id
});
    // source line 313, bytecode pc 151
    this.updateCurServerShow(this.curSelServer);
},
    updateCurServerShow: function(curServer) {
    // source line 319, bytecode pc 17
    (this.serverList = this.m_userLoginInfo.serverList);
    // source line 320, bytecode pc 47
    xs.dump("LoginScene_EnterGame updateCurServerShow this.serverList ", this.serverList);
    // source line 322, bytecode pc 65
    (this.serverListLogined = this.m_userLoginInfo.loginedServerLists);
    if (!curServer) {
        if ((this.serverListLogined.length === 0)) {
            // source line 327, bytecode pc 107
            (this.curSelServer = this.serverList[0]);
        } else {
            // source line 329, bytecode pc 127
            (this.curSelServer = this.serverListLogined[0]);
        }
    }
    if (this.curSelServer) {
        // source line 334, bytecode pc 168
        this.m_loginServer.setString(this.curSelServer.server_title);
    }
},
    onVisitorBtnClick: function() {
    var _uuid;
    // source line 339, bytecode pc 26
    xs.Tools.Statistic.visitorLoginStartEvent();
    // source line 342, bytecode pc 56
    (_uuid = xs.Tools.Jsb.getOpenUDID());
    if ((_uuid === null)) {
        // source line 345, bytecode pc 96
        (_uuid = xs.Tools.Jsb.getOpenUDID());
        if ((_uuid === null)) {
            // source line 347, bytecode pc 166
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_106"));
            // source line 348, bytecode pc 168
            return void 0;
        }
    }
    // source line 365, bytecode pc 281
    xs.Tools.Net.requestGetServerList({
    uid: _uuid,
    logintype: xs.Constant_LoginType_Visitor,
    app_indentify: xs.Profile.UserCfg.readProductId(),
    extra: []
}, this.onResponse_GetServerList_Visitor, function() {
    // source line 362, bytecode pc 26
    xs.Tools.Statistic.visitorLoginFailEvent();
    // source line 363, bytecode pc 86
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_107"));
}, this);
},
    onResponse_GetServerList_Visitor: function(jsonObj) {
    var _strE;
    // source line 370, bytecode pc 26
    xs.Tools.Statistic.visitorLoginSuccessEvent();
    try {
        // source line 374, bytecode pc 74
        xs.Scene.Login.onResponse_GetServerList.apply(this, [ jsonObj ]);
        // source line 376, bytecode pc 134
        xs.Views.Mgr.showToast(xs.Tools.String.createString("completeLogin"));
        // source line 378, bytecode pc 144
        (this.serverListData = jsonObj);
        // source line 379, bytecode pc 178
        xs.Profile.UserCfg.setServerListData(this.serverListData);
        // source line 381, bytecode pc 198
        (this.accountUid = jsonObj.account_info.account_uid);
        // source line 387, bytecode pc 232
        xs.Profile.UserCfg.setAccountUid(this.accountUid);
        // source line 390, bytecode pc 270
        xs.Profile.UserCfg.setLoginType(xs.Constant_LoginType_Visitor);
        // source line 397, bytecode pc 368
        xs.Scene.Mgr.saveStatus("UserLoginInfo", {
    serverList: this.serverListData.server_list,
    loginedServerLists: this.serverListData.server_logined_list,
    serverParams: jsonObj.server_params,
    token: jsonObj.token
});
        // source line 400, bytecode pc 404
        xs.Profile.UserCfg.setToken(jsonObj.token);
        // source line 402, bytecode pc 442
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_GetServerListSucess);
    } catch (e) {
        // source line 405, bytecode pc 478
        xs.warnException(e);
        // source line 406, bytecode pc 507
        (_strE = xs.Debug.toJsonString(e));
        // source line 407, bytecode pc 538
        xs.Views.Mgr.showToast(_strE);
        /* TODO_BYTECODE pc=539 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    onThirdSdkLoginSucess: function(params) {
    var _loginType, arguments;
    // source line 411, bytecode pc 10
    (arguments = arguments);
    // source line 413, bytecode pc 42
    xs.Profile.GameData.Mgr.releaseInstance();
    // source line 414, bytecode pc 69
    xs.Scene.Mgr.removeAllStatus();
    // source line 416, bytecode pc 119
    xs.Profile.UserCfg.setGameAddr(xs.Cfg.Url.ServerAddrsMap[0]);
    // source line 419, bytecode pc 146
    xs.Tools.Statistic.thirdSdkGetServerListBeginEvent();
    if ((xs.app_account_sys == xs.Const_App_Account_Sys_ThirdSdkSet)) {
        // source line 428, bytecode pc 202
        (_loginType = xs.Constant_LoginType_ThirdSdk);
    } else {
        if (((xs.app_account_sys == xs.Const_App_Account_Sys_Super3rdSdk_Ios) || xs.Const_App_Account_Sys_LoginBySuper3rdSdkAndGuest_PayByAppStore)) {
            // source line 432, bytecode pc 269
            (_loginType = xs.Constant_LoginType_Super3rdSdk_Ios);
            if ((xs.thirdSdkType == "1")) {
                // source line 434, bytecode pc 310
                (_loginType = xs.Constant_LoginType_Super3rdSdk_Union);
            }
        } else {
            if (((xs.app_account_sys == xs.Const_App_Account_Sys_Super3rdSdk_And) || xs.Const_App_Account_Sys_LoginBySuper3rdSdkAndGuest_PayByGooglePlay)) {
                // source line 439, bytecode pc 377
                (_loginType = xs.Constant_LoginType_Super3rdSdk_And);
                if ((xs.thirdSdkType == "1")) {
                    // source line 441, bytecode pc 418
                    (_loginType = xs.Constant_LoginType_Super3rdSdk_Union);
                }
            } else {
                if ((xs.app_account_sys == xs.Const_App_Account_Sys_LoginBySuper3rdSdk_PayByAppStore)) {
                    // source line 445, bytecode pc 469
                    (_loginType = xs.Constant_LoginType_Super3rdSdk_Union);
                } else {
                    // source line 448, bytecode pc 494
                    (_loginType = xs.Constant_LoginType_ThirdSdk);
                    // source line 449, bytecode pc 527
                    xs.error("_loginType error", _loginType);
                }
            }
        }
    }
    // source line 452, bytecode pc 560
    (this.loginType = xs.Profile.UserCfg.getLoginType());
    if ((this.loginType === xs.Constant_LoginType_Visitor)) {
        // source line 454, bytecode pc 633
        this.m_loginType.setString(xs.Tools.String.createString("visitorLogin"));
    } else {
        if ((this.loginType === xs.Constant_LoginType_Super3rdSdk_Union)) {
            // source line 456, bytecode pc 711
            this.m_loginType.setString(xs.Tools.String.createString("bfLogin"));
        }
    }
    // source line 476, bytecode pc 873
    xs.Tools.Net.requestGetServerList({
    uid: params.uidKey,
    logintype: _loginType,
    app_indentify: xs.Profile.UserCfg.readProductId(),
    extra: eval((("(" + params.sessionKey) + ")"))
}, this.onResponse_GetServerList, function() {
    // source line 474, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_104"));
}, this);
},
    onThirdSdkLoginFail: function(params) {
    // source line 484, bytecode pc 35
    xs.Views.Mgr.showToast(params.errorMsg);
    // source line 485, bytecode pc 48
    this.showFacebookLoginDialogFromControlBtn();
},
    onResponse_GetServerList: function(jsonObj) {
    var _strE;
    try {
        // source line 492, bytecode pc 47
        xs.Scene.Login.onResponse_GetServerList.apply(this, [ jsonObj ]);
        // source line 494, bytecode pc 74
        xs.dump("onResponse_GetServerList in", jsonObj);
        // source line 495, bytecode pc 134
        xs.Views.Mgr.showToast(xs.Tools.String.createString("completeLogin"));
        // source line 497, bytecode pc 144
        (this.serverListData = jsonObj);
        // source line 498, bytecode pc 178
        xs.Profile.UserCfg.setServerListData(this.serverListData);
        // source line 500, bytecode pc 198
        (this.accountUid = jsonObj.account_info.account_uid);
        // source line 501, bytecode pc 232
        xs.Profile.UserCfg.setAccountUid(this.accountUid);
        // source line 504, bytecode pc 270
        xs.Profile.UserCfg.setLoginType(xs.Constant_LoginType_Super3rdSdk_Union);
        // source line 512, bytecode pc 368
        xs.Scene.Mgr.saveStatus("UserLoginInfo", {
    serverList: this.serverListData.server_list,
    loginedServerLists: this.serverListData.server_logined_list,
    serverParams: jsonObj.server_params,
    token: jsonObj.token
});
        // source line 515, bytecode pc 404
        xs.Profile.UserCfg.setToken(jsonObj.token);
        // source line 517, bytecode pc 442
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_GetServerListSucess);
    } catch (e) {
        // source line 521, bytecode pc 478
        xs.warnException(e);
        // source line 522, bytecode pc 507
        (_strE = xs.Debug.toJsonString(e));
        // source line 523, bytecode pc 538
        xs.Views.Mgr.showToast(_strE);
        /* TODO_BYTECODE pc=539 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    if ((this.serverListData.server_list.length > 0)) {
        // source line 528, bytecode pc 597
        xs.Tools.Statistic.thirdSdkGetServerListSucessEvent();
    }
},
    cfg: {
        ccbCfg: [
            { tag: 13, type: "ls", name: "m_loginType", id: "LS_loginSign" },
            { tag: 14, type: "ls", name: "m_loginServer", id: "LS_chooseServer" },
            { tag: 15, type: "ls", name: "m_loginTypeTip", id: "LS_mainUI2" },
            { tag: 16, type: "ls", name: "m_loginServerTip", id: "LS_mainUI2" },
            { tag: 12, type: "btn", id: "Btn_StartGame" }
        ]
    }
}));
// source line 566, bytecode pc 573
(xs.Scene.Login.LoginScene_ThirdSdk = cc.Scene.extend({
    ctor: function() {
    // source line 551, bytecode pc 12
    this._super();
    // source line 552, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(params) {
    var layer;
    if (!this._super()) {
        // source line 556, bytecode pc 19
        return false;
    }
    // source line 559, bytecode pc 48
    (layer = new xs.Scene.Login.LoginScene_EnterGame());
    // source line 560, bytecode pc 67
    layer.init(params);
    // source line 561, bytecode pc 100
    xs.Utils.Node.attachNodes(this, layer);
    // source line 563, bytecode pc 102
    return true;
},
    onEnter: function() {
    // source line 567, bytecode pc 12
    this._super();
    // source line 569, bytecode pc 41
    xs.Guide.GuideMgr.setIsOver(true);
}
}));
// source line 573, bytecode pc 604
(xs.Scene.Login.LoginScene_ThirdSdk.create = function(params) {
    var scene;
    // source line 574, bytecode pc 28
    (scene = new xs.Scene.Login.LoginScene_ThirdSdk());
    if ((scene && scene.init(params))) {
        // source line 576, bytecode pc 101
        scene.setTag(xs.Cfg.Scene.LoginScene.tag);
        // source line 577, bytecode pc 105
        return scene;
    }
    // source line 579, bytecode pc 107
    return null;
});
// source line 590, bytecode pc 724
xs.Scene.Mgr.registerScene("LoginScene", {
    "class": xs.Scene.Login.LoginScene_ThirdSdk,
    area: [ "Login" ],
    type: xs.Constant_SceneType_None,
    audio: { bgId: "Audio_BG_Login" }
});
