// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Login/LoginScene_EasyGuestSdk.js:1
// source line 506, bytecode pc 407
(xs.Scene.Login.LoginScene_EasySdk_Layer = cc.Layer.extend({
    ctor: function() {
    // source line 13, bytecode pc 12
    this._super();
    // source line 14, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(params) {
    var _gameNameView, _gameLogo, m__StartLogin, _labelVerDesc, isHaveSwitchAccount, isHaveLogout;
    if (!this._super()) {
        // source line 18, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 29
    (this.m_loginParams = params);
    // source line 21, bytecode pc 62
    xs.Tools.Statistic.event_once("login");
    // source line 24, bytecode pc 91
    xs.Tools.UI.addIndexBgSprite(this);
    // source line 27, bytecode pc 127
    (_gameNameView = xs.Factorys.Sprite.createWithFileName("tex/logo/logo_title5_2.png"));
    // source line 28, bytecode pc 153
    _gameNameView.setAnchorPoint(xs.ap_c);
    // source line 32, bytecode pc 209
    xs.Utils.Node.attachNodes(this, _gameNameView, { desc: "c", sc: true });
    // source line 35, bytecode pc 245
    (_gameLogo = xs.Factorys.Sprite.createWithFileName("tex/logo/logo.png"));
    // source line 36, bytecode pc 271
    _gameLogo.setAnchorPoint(xs.ap_lt);
    // source line 40, bytecode pc 354
    xs.Utils.Node.attachNodes(this, _gameLogo, { desc: "lt", offset: cc.p(25, -25), sc: true });
    // source line 43, bytecode pc 390
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_4_EnterGame2.ccbi", this));
    // source line 44, bytecode pc 433
    this.ccbNode.setContentSize(cc.size(510, 328));
    // source line 45, bytecode pc 476
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0));
    // source line 49, bytecode pc 561
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "cb", offset: cc.p(0, -1), sc: true });
    // source line 52, bytecode pc 569
    (this.m_loginType = null);
    // source line 53, bytecode pc 577
    (this.m_loginServer = null);
    // source line 54, bytecode pc 585
    (this.m_loginTypeTip = null);
    // source line 55, bytecode pc 593
    (this.m_loginServerTip = null);
    // source line 57, bytecode pc 641
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 59, bytecode pc 692
    this.m_loginTypeTip.setString(xs.Tools.String.createString("changLogin"));
    // source line 60, bytecode pc 743
    this.m_loginServerTip.setString(xs.Tools.String.createString("changeServer"));
    // source line 62, bytecode pc 770
    (this.btn_ChangeLoginType = this.ccbNode.getChildByTag(10));
    // source line 63, bytecode pc 791
    this.btn_ChangeLoginType.setTouchPriority(-1);
    // source line 64, bytecode pc 811
    this.btn_ChangeLoginType.setZoomOnTouchDown(false);
    // source line 65, bytecode pc 849
    this.btn_ChangeLoginType.addTargetWithActionForControlEvents(this, this.showLoginDialogFromControlBtn, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 67, bytecode pc 876
    (this.btn_ChangeLoginServer = this.ccbNode.getChildByTag(11));
    // source line 68, bytecode pc 897
    this.btn_ChangeLoginServer.setTouchPriority(-1);
    // source line 69, bytecode pc 917
    this.btn_ChangeLoginServer.setZoomOnTouchDown(false);
    // source line 70, bytecode pc 955
    this.btn_ChangeLoginServer.addTargetWithActionForControlEvents(this, this.onClick_changeLoginServer, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 72, bytecode pc 982
    (this.btn_StartLogin = this.ccbNode.getChildByTag(12));
    // source line 73, bytecode pc 1019
    (m__StartLogin = xs.Views.Btn.createInvisibleWithParent(this.btn_StartLogin));
    // source line 74, bytecode pc 1036
    m__StartLogin.setTouchPriority(0);
    // source line 75, bytecode pc 1071
    m__StartLogin.addTargetWithActionForControlEvents(this, this.onClick_start_get_role, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    if ((xs.Profile.UserCfg.getLoginType() == xs.Constant_LoginType_Visitor)) {
        // source line 79, bytecode pc 1136
        xs.log_zhz("in visitor page ");
        // source line 80, bytecode pc 1174
        xs.Profile.UserCfg.setLoginType(xs.Constant_LoginType_Visitor);
        // source line 81, bytecode pc 1225
        this.m_loginType.setString(xs.Tools.String.createString("visitorLogin"));
    } else {
        // source line 84, bytecode pc 1253
        xs.log_zhz("in easy_sdk page ");
        // source line 85, bytecode pc 1291
        xs.Profile.UserCfg.setLoginType(xs.Constant_LoginType_EasySdk);
        // source line 86, bytecode pc 1342
        this.m_loginType.setString(xs.Tools.String.createString("bfLogin"));
    }
    // source line 89, bytecode pc 1378
    (_labelVerDesc = xs.Factorys.Label.createByStyleId("LS_shuxing1"));
    // source line 90, bytecode pc 1420
    _labelVerDesc.setString(xs.Tools.Sys.getVersionDesc());
    // source line 91, bytecode pc 1457
    _labelVerDesc.setAligns(xs.AlignH_Left, xs.AlignV_Bottom);
    // source line 92, bytecode pc 1536
    xs.Utils.Node.attachNodes(this, _labelVerDesc, { desc: "lb", sc: true, offset: { x: 0, y: 0 } });
    // source line 95, bytecode pc 1583
    (isHaveSwitchAccount = xs.Tools.Jsb.EasySdk.isSupportFunction("Account", "accountSwitch"));
    // source line 96, bytecode pc 1630
    (isHaveLogout = xs.Tools.Jsb.EasySdk.isSupportFunction("Account", "logout"));
    if ((!isHaveSwitchAccount && !isHaveLogout)) {
        // source line 99, bytecode pc 1669
        this.m_loginType.setVisible(false);
        // source line 100, bytecode pc 1689
        this.m_loginTypeTip.setVisible(false);
        // source line 101, bytecode pc 1709
        this.btn_ChangeLoginType.setVisible(false);
    }
    // source line 105, bytecode pc 1711
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 109, bytecode pc 12
    this._super();
    // source line 110, bytecode pc 84
    xs.Utils.Notify.addObserver(this, this.onEasySdkLoginSuccess, xs.EasySdk.Account.Const.Notify_Event.Easy.CmnAccount);
    if (this.m_loginParams) {
        // source line 114, bytecode pc 115
        this.onEasySdkLoginSuccess(this.m_loginParams);
    } else {
        // source line 118, bytecode pc 143
        xs.log_zhz("login scene easysdk autologin");
        if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_Visitor)) {
            // source line 120, bytecode pc 198
            this._onVisitorBtnClick();
        } else {
            if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_EasySdk)) {
                if ((xs.Tools.Jsb.getPlatform() == "android")) {
                    // source line 124, bytecode pc 295
                    this._startEasySdkLogin();
                } else {
                    if ((xs.Tools.Jsb.getPlatform() == "ios")) {
                        // source line 126, bytecode pc 356
                        this._startEasySdkLogin("autologin");
                    } else {
                        // source line 128, bytecode pc 374
                        this._startEasySdkLogin();
                    }
                }
            } else {
                // source line 131, bytecode pc 429
                xs.error("getLoginType error", xs.Profile.UserCfg.getLoginType());
            }
        }
    }
},
    onExitTransitionDidStart: function() {
    // source line 137, bytecode pc 64
    xs.Utils.Notify.removeObserver(this, xs.EasySdk.Account.Const.Notify_Event.Easy.CmnAccount);
    // source line 138, bytecode pc 77
    this._super();
},
    _isAlreadyLogined: function() {
    // source line 143, bytecode pc 36
    return xs.Tools.Jsb.EasySdk.Account.isLogined();
},
    _startEasySdkLogin: function(params) {
    // source line 147, bytecode pc 22
    xs.log_zhz(" step1 startLogin ");
    // source line 149, bytecode pc 63
    xs.Tools.Jsb.EasySdk.Account.login(params);
},
    _onVisitorBtnClick: function() {
    var _uuid;
    // source line 154, bytecode pc 26
    xs.Tools.Statistic.visitorLoginStartEvent();
    // source line 156, bytecode pc 56
    (_uuid = xs.Tools.Jsb.getOpenUDID());
    if ((_uuid === null)) {
        // source line 158, bytecode pc 96
        (_uuid = xs.Tools.Jsb.getOpenUDID());
        if ((_uuid === null)) {
            // source line 160, bytecode pc 166
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_106"));
            // source line 161, bytecode pc 168
            return void 0;
        }
    }
    // source line 164, bytecode pc 206
    xs.Profile.UserCfg.setLoginType(xs.Constant_LoginType_Visitor);
    // source line 178, bytecode pc 335
    xs.Tools.Net.requestGetServerList({
    uid: _uuid,
    logintype: xs.Profile.UserCfg.getLoginType(),
    app_indentify: xs.Profile.UserCfg.readProductId(),
    extra: []
}, this.onResp_GetServerList, function() {
    // source line 175, bytecode pc 26
    xs.Tools.Statistic.visitorLoginFailEvent();
    // source line 176, bytecode pc 86
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_107"));
}, this);
},
    setServerInfoToGame: function(curServerInfo) {
    // source line 188, bytecode pc 72
    xs.Profile.UserCfg.setGameAddr({ name: curServerInfo.server_title, domain: curServerInfo.server_url, id: curServerInfo.server_id });
    // source line 192, bytecode pc 106
    (xs.Profile.GameData.Player.g_serverId = curServerInfo.server_id);
    // source line 193, bytecode pc 140
    (xs.Profile.GameData.Player.g_serverURL = curServerInfo.server_url);
},
    onClick_start_get_role: function() {
    var _loginType, _isAlreadyLogined, cfgVersion;
    // source line 199, bytecode pc 22
    xs.log_zhz(" step5 start get role ");
    // source line 202, bytecode pc 52
    (_loginType = xs.Profile.UserCfg.getLoginType());
    // source line 203, bytecode pc 68
    (_isAlreadyLogined = this._isAlreadyLogined());
    // source line 204, bytecode pc 95
    xs.log((" _isAlreadyLogined = " + _isAlreadyLogined));
    if (((_loginType == xs.Constant_LoginType_EasySdk) && !_isAlreadyLogined)) {
        // source line 206, bytecode pc 137
        this._startEasySdkLogin();
        // source line 207, bytecode pc 139
        return void 0;
    }
    // source line 211, bytecode pc 181
    (cfgVersion = xs.Tools.CfgData.getGlobalConf("CfgVersion", ""));
    // source line 213, bytecode pc 208
    xs.dump("cfgVersion", cfgVersion);
    // source line 244, bytecode pc 373
    xs.Tools.Net.requestLogin({
    app_indentify: xs.Profile.UserCfg.readProductId(),
    forcepush: true,
    server_params: this.m_server_info.getInfo().server_params,
    cfg_version: cfgVersion,
    account_uid: this.m_account_info.getAccountId(),
    token: this.m_account_info.getToken()
}, this.onResp_getPlayerInfoSuccess, function(params) {
    // source line 225, bytecode pc 26
    xs.dump("_params", params);
    if ((params.error_code === "e_10011")) {
        // source line 238, bytecode pc 119
        xs.Tools.Net.requestSGSConfig({ download_url: params.download_url }, function() {
    // source line 231, bytecode pc 22
    xs.log("enter game!");
    // source line 232, bytecode pc 49
    xs.Tools.Sys.requireCfgFilesGeneratedByServer();
    // source line 233, bytecode pc 62
    this.onClick_start_get_role();
}.bind(this), function() {
    // source line 236, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_103"));
}, this);
        // source line 240, bytecode pc 121
        return true;
    }
    // source line 242, bytecode pc 123
    return false;
}, this);
},
    onResp_getPlayerInfoSuccess: function(jsonObj) {
    var isWeiDuanUp, freshStep;
    // source line 251, bytecode pc 31
    xs.log("EasyAppKeyBase64", jsonObj.EasyAppKeyBase64);
    // source line 252, bytecode pc 67
    xs.EasySdk.Payment.setEasyAppKeyBase64(jsonObj.EasyAppKeyBase64);
    // source line 254, bytecode pc 105
    xs.Models.ChatMessageManager.getInstance().removeAllQueue();
    // source line 256, bytecode pc 152
    xs.Profile.GameData.Mgr.getInstance().init_Login(jsonObj);
    // source line 259, bytecode pc 179
    xs.Tools.Net.requestGeTuiSave();
    if (jsonObj.is_use_keywords) {
        // source line 263, bytecode pc 219
        xs.Tools.Jsb.openMaskTrieFunc();
    }
    // source line 266, bytecode pc 265
    (isWeiDuanUp = (xs.readAndWriteSqlByWeiduan ? xs.readAndWriteSqlByWeiduan.isUpdateWeiduan() : true));
    // source line 272, bytecode pc 298
    xs.Tools.Statistic.event_enter("all_player");
    // source line 275, bytecode pc 388
    xs.Tools.Statistic.setUserInfo(xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), 0, 0);
    // source line 277, bytecode pc 410
    xs.g_account.onGetPlayerInfoSuccess();
    if (xs.guideOpen) {
        // source line 281, bytecode pc 473
        xs.Guide.GuideMgr.setUseCfg(xs.Cfg.Guide.NewGuideCfg);
        // source line 282, bytecode pc 535
        (freshStep = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerFreshStep());
        // source line 287, bytecode pc 566
        xs.Guide.GuideMgr.setServerStep(freshStep);
        if ((xs.guideAlways === true)) {
            // source line 292, bytecode pc 616
            xs.Guide.GuideMgr.setGuideStep("00335_before");
            // source line 293, bytecode pc 649
            xs.Guide.GuideMgr.setServerStep("00335_before");
        }
        if (!xs.Guide.GuideMgr.getIsOver()) {
            if (((parseInt(xs.Guide.GuideMgr.getGuideStep()) >= 10100) && (!isWeiDuanUp && xs.weiduan))) {
                // source line 302, bytecode pc 779
                xs.readAndWriteSqlByWeiduan.setWeiduanUpSql();
                // source line 303, bytecode pc 806
                xs.Scene.Mgr.clearAll();
                // source line 304, bytecode pc 855
                xsc.Scene.Mgr.changeScene(xs.UpdateScene.create());
            } else {
                // source line 307, bytecode pc 893
                xs.Tools.Statistic.event_enter("new_player");
                // source line 310, bytecode pc 922
                xs.Guide.GuideMgr.setIsNeedChangeScene(true);
                // source line 311, bytecode pc 949
                xs.Guide.GuideMgr.start();
            }
        } else {
            if ((!isWeiDuanUp && xs.weiduan)) {
                // source line 315, bytecode pc 1001
                xs.readAndWriteSqlByWeiduan.setWeiduanUpSql();
                // source line 316, bytecode pc 1028
                xs.Scene.Mgr.clearAll();
                // source line 317, bytecode pc 1077
                xsc.Scene.Mgr.changeScene(xs.UpdateScene.create());
            } else {
                // source line 320, bytecode pc 1115
                xs.Tools.Statistic.event_enter("normal_player");
                // source line 321, bytecode pc 1150
                xs.Scene.Mgr.changeSceneByName("MainMenuScene", true);
            }
        }
    }
},
    showLoginDialogFromControlBtn: function() {
    // source line 330, bytecode pc 32
    xs.Views.Mgr.showDialogByName("FacebookLoginDialog");
},
    onClick_changeLoginServer: function() {
    var _loginType, str_isPlayerLogined, _callback_onChangeServerViewReturn;
    // source line 338, bytecode pc 29
    (_loginType = xs.Profile.UserCfg.getLoginType());
    // source line 339, bytecode pc 69
    (str_isPlayerLogined = xs.Tools.Jsb.EasySdk.Account.isLogined());
    if (((_loginType == xs.Constant_LoginType_EasySdk) && !str_isPlayerLogined)) {
        // source line 341, bytecode pc 111
        this._startEasySdkLogin();
        // source line 342, bytecode pc 113
        return void 0;
    }
    // source line 345, bytecode pc 122
    (_callback_onChangeServerViewReturn = function(serverData, selectIdx, isHistory) {
    // source line 347, bytecode pc 36
    xs.log(((("_callback_onChangeServerViewReturn:" + selectIdx) + "|") + isHistory));
    // source line 349, bytecode pc 62
    this.m_server_info.setCurServer(selectIdx, isHistory);
    // source line 352, bytecode pc 93
    this.setServerInfoToGame(this.m_server_info.getCurServerInfo());
    // source line 355, bytecode pc 113
    this.ccbNode.setVisible(true);
    // source line 356, bytecode pc 133
    this.serverSelView.removeFromParent(true);
    // source line 357, bytecode pc 153
    this.updateCurServerView(this.curSelServer);
});
    // source line 360, bytecode pc 142
    this.ccbNode.setVisible(false);
    // source line 361, bytecode pc 193
    (this.serverSelView = xs.Views.ServerSelectView.create(this.m_server_info.getInfo()));
    // source line 362, bytecode pc 228
    this.serverSelView.registerCallBack(_callback_onChangeServerViewReturn.bind(this));
    // source line 363, bytecode pc 248
    this.addChild(this.serverSelView);
},
    updateCurServerView: function() {
    // source line 370, bytecode pc 35
    this.m_loginServer.setString(this.m_server_info.getCurServerName());
},
    onEasySdkLoginSuccess: function(params) {
    var _jsonSuccessMsg;
    // source line 378, bytecode pc 8
    switch (params.code) {
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Success:
        // source line 382, bytecode pc 222
        (_jsonSuccessMsg = JSON.parse(params.msg));
        // source line 385, bytecode pc 254
        xs.Profile.GameData.Mgr.releaseInstance();
        // source line 386, bytecode pc 281
        xs.Scene.Mgr.removeAllStatus();
        // source line 388, bytecode pc 319
        xs.Profile.UserCfg.setLoginType(xs.Constant_LoginType_EasySdk);
        // source line 390, bytecode pc 342
        xs.log_zhz(" easysdk step3 request ServerList");
        // source line 404, bytecode pc 479
        xs.Tools.Net.requestGetServerList({
    uid: _jsonSuccessMsg.easy_uid,
    logintype: xs.Profile.UserCfg.getLoginType(),
    app_indentify: xs.Profile.UserCfg.readProductId(),
    session: _jsonSuccessMsg.easy_session
}, this.onResp_GetServerList, function() {
    // source line 402, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_104"));
}, this);
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Cancel:
        // source line 410, bytecode pc 507
        xs.log("登录取消");
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_NoNeed:
        // source line 414, bytecode pc 535
        xs.log("无需登录");
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Timeout:
        // source line 418, bytecode pc 563
        xs.log("登录超时");
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Fail:
        // source line 423, bytecode pc 591
        xs.log("登录失败");
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Exception:
        // source line 428, bytecode pc 619
        xs.log("登录异常");
        break;
        default:
        // source line 433, bytecode pc 660
        xs.Views.Mgr.showToast(params.msg);
        break;
    }
},
    onResp_GetServerList: function(jsonObj) {
    var _strE;
    // source line 443, bytecode pc 22
    xs.log_zhz(" easysdk step4 onResp_GetServerList");
    try {
        // source line 446, bytecode pc 50
        xs.dump("onResponse_GetServerList in", jsonObj);
        // source line 458, bytecode pc 97
        xs.Scene.Login.onResponse_GetServerList.apply(this, [ jsonObj ]);
        // source line 461, bytecode pc 129
        (this.m_account_info = new xs.Models.Account.AccountInfo());
        // source line 462, bytecode pc 156
        this.m_account_info.setToken(jsonObj.token);
        // source line 463, bytecode pc 188
        this.m_account_info.setAccountId(jsonObj.account_info.account_uid);
        // source line 464, bytecode pc 229
        xs.Profile.UserCfg.setAccountUid(jsonObj.account_info.account_uid);
        // source line 465, bytecode pc 261
        (this.m_server_info = new xs.Models.Account.GameServerInfo());
        // source line 466, bytecode pc 283
        this.m_server_info.setInfo(jsonObj);
        // source line 467, bytecode pc 301
        this.m_server_info.setCurServer();
        // source line 469, bytecode pc 332
        this.setServerInfoToGame(this.m_server_info.getCurServerInfo());
        // source line 473, bytecode pc 372
        xs.Scene.Mgr.saveStatus("AccountInfo", this.m_account_info);
        // source line 474, bytecode pc 412
        xs.Scene.Mgr.saveStatus("ServerInfo", this.m_server_info);
        // source line 478, bytecode pc 425
        this.updateCurServerView();
        // source line 480, bytecode pc 485
        xs.Views.Mgr.showToast(xs.Tools.String.createString("completeLogin"));
        if ((xs.Profile.UserCfg.getLoginType() == xs.Constant_LoginType_Visitor)) {
            // source line 482, bytecode pc 578
            this.m_loginType.setString(xs.Tools.String.createString("visitorLogin"));
        } else {
            // source line 485, bytecode pc 634
            this.m_loginType.setString(xs.Tools.String.createString("bfLogin"));
        }
    } catch (e) {
        // source line 489, bytecode pc 670
        xs.warnException(e);
        // source line 490, bytecode pc 699
        (_strE = xs.Debug.toJsonString(e));
        // source line 491, bytecode pc 730
        xs.Views.Mgr.showToast(_strE);
        /* TODO_BYTECODE pc=731 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    cfg: {
        ccbCfg: [
            { tag: 13, type: "ls", name: "m_loginType", id: "LS_loginSign" },
            { tag: 14, type: "ls", name: "m_loginServer", id: "LS_chooseServer_tw" },
            { tag: 15, type: "ls", name: "m_loginTypeTip", id: "LS_chooseServer_tip" },
            { tag: 16, type: "ls", name: "m_loginServerTip", id: "LS_chooseServer_tip" }
        ]
    }
}));
// source line 534, bytecode pc 486
(xs.Scene.Login.LoginScene_EasySdk = cc.Scene.extend({
    ctor: function() {
    // source line 519, bytecode pc 12
    this._super();
    // source line 520, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(params) {
    var layer;
    if (!this._super()) {
        // source line 524, bytecode pc 19
        return false;
    }
    // source line 527, bytecode pc 48
    (layer = new xs.Scene.Login.LoginScene_EasySdk_Layer());
    // source line 528, bytecode pc 67
    layer.init(params);
    // source line 529, bytecode pc 100
    xs.Utils.Node.attachNodes(this, layer);
    // source line 531, bytecode pc 102
    return true;
},
    onEnter: function() {
    // source line 535, bytecode pc 12
    this._super();
    // source line 537, bytecode pc 41
    xs.Guide.GuideMgr.setIsOver(true);
}
}));
// source line 541, bytecode pc 517
(xs.Scene.Login.LoginScene_EasySdk.create = function(params) {
    var scene;
    // source line 542, bytecode pc 28
    (scene = new xs.Scene.Login.LoginScene_EasySdk());
    if ((scene && scene.init(params))) {
        // source line 544, bytecode pc 101
        scene.setTag(xs.Cfg.Scene.LoginScene.tag);
        // source line 545, bytecode pc 105
        return scene;
    }
    // source line 547, bytecode pc 107
    return null;
});
// source line 558, bytecode pc 637
xs.Scene.Mgr.registerScene("LoginScene", {
    "class": xs.Scene.Login.LoginScene_EasySdk,
    area: [ "Login" ],
    type: xs.Constant_SceneType_None,
    audio: { bgId: "Audio_BG_Login" }
});
