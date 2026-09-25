// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Login/LoginScene_EasySdk.js:1
// source line 405, bytecode pc 444
(xs.Scene.Login.LoginScene_EasySdk_Layer = cc.Layer.extend({
    ctor: function() {
    // source line 13, bytecode pc 12
    this._super();
    // source line 14, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(params) {
    var _gameNameView, _labelVerDesc, isHaveSwitchAccount, isHaveLogout;
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
    // source line 26, bytecode pc 127
    (_gameNameView = xs.Factorys.Sprite.createWithFileName("tex/logo/logo_title.png"));
    // source line 27, bytecode pc 153
    _gameNameView.setAnchorPoint(xs.ap_c);
    // source line 31, bytecode pc 228
    xs.Utils.Node.attachNodes(this, _gameNameView, { desc: "c", offset: { y: 172 }, sc: true });
    // source line 34, bytecode pc 264
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_4_EnterGame.ccbi", this));
    // source line 35, bytecode pc 307
    this.ccbNode.setContentSize(cc.size(550, 328));
    // source line 36, bytecode pc 350
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0));
    // source line 37, bytecode pc 435
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "cb", offset: cc.p(0, 25), sc: true });
    // source line 39, bytecode pc 443
    (this.m_loginType = null);
    // source line 40, bytecode pc 451
    (this.m_loginServer = null);
    // source line 41, bytecode pc 459
    (this.m_loginTypeTip = null);
    // source line 42, bytecode pc 467
    (this.m_loginServerTip = null);
    // source line 44, bytecode pc 515
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 46, bytecode pc 570
    (this.zuizhonglabelBtn = xs.Views.Btn.createInvisibleWithParent(this.ccbNode.getChildByTag(150)));
    // source line 49, bytecode pc 596
    this.zuizhonglabelBtn.addCallBackForEvent(this, function() {
    // source line 51, bytecode pc 43
    xs.Views.Mgr.showDialogByName("Announcement", xs.Constant_SettingType_ZuiZhongXieYi);
});
    // source line 55, bytecode pc 651
    (this.m_checkBtn = xs.Views.Btn.createInvisibleWithParent(this.ccbNode.getChildByTag(200)));
    // source line 56, bytecode pc 689
    this.m_checkBtn.setOnClickCallBack(this.onCheckBtnClick.bind(this));
    // source line 58, bytecode pc 740
    this.m_loginTypeTip.setString(xs.Tools.String.createString("changLogin"));
    // source line 59, bytecode pc 791
    this.m_loginServerTip.setString(xs.Tools.String.createString("changeServer"));
    // source line 61, bytecode pc 818
    (this.btn_ChangeLoginType = this.ccbNode.getChildByTag(10));
    // source line 62, bytecode pc 839
    this.btn_ChangeLoginType.setTouchPriority(-1);
    // source line 63, bytecode pc 859
    this.btn_ChangeLoginType.setZoomOnTouchDown(false);
    // source line 64, bytecode pc 897
    this.btn_ChangeLoginType.addTargetWithActionForControlEvents(this, this.showLoginDialogFromControlBtn, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 66, bytecode pc 924
    (this.btn_ChangeLoginServer = this.ccbNode.getChildByTag(11));
    // source line 67, bytecode pc 945
    this.btn_ChangeLoginServer.setTouchPriority(-1);
    // source line 68, bytecode pc 965
    this.btn_ChangeLoginServer.setZoomOnTouchDown(false);
    // source line 69, bytecode pc 1003
    this.btn_ChangeLoginServer.addTargetWithActionForControlEvents(this, this.onClick_changeLoginServer, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 71, bytecode pc 1030
    (this.btn_StartLogin = this.ccbNode.getChildByTag(12));
    // source line 72, bytecode pc 1050
    this.btn_StartLogin.setTouchPriority(0);
    // source line 73, bytecode pc 1088
    this.btn_StartLogin.addTargetWithActionForControlEvents(this, this.onClick_start_get_role, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 76, bytecode pc 1139
    this.m_loginType.setString(xs.Tools.String.createString("bfLogin"));
    // source line 79, bytecode pc 1175
    (_labelVerDesc = xs.Factorys.Label.createByStyleId("LS_shuxing1"));
    // source line 80, bytecode pc 1217
    _labelVerDesc.setString(xs.Tools.Sys.getVersionDesc());
    // source line 81, bytecode pc 1254
    _labelVerDesc.setAligns(xs.AlignH_Left, xs.AlignV_Bottom);
    // source line 82, bytecode pc 1333
    xs.Utils.Node.attachNodes(this, _labelVerDesc, { desc: "lb", sc: true, offset: { x: 0, y: 0 } });
    // source line 85, bytecode pc 1380
    (isHaveSwitchAccount = xs.Tools.Jsb.EasySdk.isSupportFunction("Account", "switch"));
    // source line 86, bytecode pc 1427
    (isHaveLogout = xs.Tools.Jsb.EasySdk.isSupportFunction("Account", "logout"));
    if ((!isHaveSwitchAccount && !isHaveLogout)) {
        // source line 89, bytecode pc 1466
        this.m_loginType.setVisible(false);
        // source line 90, bytecode pc 1486
        this.m_loginTypeTip.setVisible(false);
        // source line 91, bytecode pc 1506
        this.btn_ChangeLoginType.setVisible(false);
    }
    // source line 95, bytecode pc 1508
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 99, bytecode pc 12
    this._super();
    // source line 100, bytecode pc 84
    xs.Utils.Notify.addObserver(this, this.onEasySdkLoginSuccess, xs.EasySdk.Account.Const.Notify_Event.Easy.CmnAccount);
    if (this.m_loginParams) {
        // source line 104, bytecode pc 115
        this.onEasySdkLoginSuccess(this.m_loginParams);
    } else {
        // source line 108, bytecode pc 133
        this._startLogin();
    }
},
    onExitTransitionDidStart: function() {
    // source line 114, bytecode pc 64
    xs.Utils.Notify.removeObserver(this, xs.EasySdk.Account.Const.Notify_Event.Easy.CmnAccount);
    // source line 115, bytecode pc 77
    this._super();
},
    _isAlreadyLogined: function() {
    // source line 121, bytecode pc 36
    return xs.Tools.Jsb.EasySdk.Account.isLogined();
},
    onCheckBtnClick: function() {
    if (this.ccbNode.getChildByTag(201).isVisible()) {
        // source line 126, bytecode pc 71
        this.ccbNode.getChildByTag(201).setVisible(false);
    } else {
        // source line 128, bytecode pc 111
        this.ccbNode.getChildByTag(201).setVisible(true);
    }
},
    _startLogin: function() {
    if (!this.ccbNode.getChildByTag(201).isVisible()) {
        // source line 135, bytecode pc 97
        xs.Views.Mgr.showToast(xs.Tools.String.createString("hintStr_3rd_ZuiZhongXieYi"));
        // source line 136, bytecode pc 99
        return void 0;
    }
    // source line 138, bytecode pc 122
    xs.log_zj(" step1 startLogin ");
    // source line 139, bytecode pc 159
    xs.Tools.Jsb.EasySdk.Account.login();
},
    setServerInfoToGame: function(curServerInfo) {
    // source line 148, bytecode pc 72
    xs.Profile.UserCfg.setGameAddr({ name: curServerInfo.server_title, domain: curServerInfo.server_url, id: curServerInfo.server_id });
    // source line 152, bytecode pc 106
    (xs.Profile.GameData.Player.g_serverId = curServerInfo.server_id);
    // source line 153, bytecode pc 140
    (xs.Profile.GameData.Player.g_serverURL = curServerInfo.server_url);
},
    onClick_start_get_role: function() {
    var _isAlreadyLogined, cfgVersion;
    // source line 159, bytecode pc 22
    xs.log_zj(" step5 start get role ");
    // source line 162, bytecode pc 38
    (_isAlreadyLogined = this._isAlreadyLogined());
    // source line 163, bytecode pc 65
    xs.log((" _isAlreadyLogined = " + _isAlreadyLogined));
    if (!_isAlreadyLogined) {
        // source line 165, bytecode pc 98
        this._startLogin(xs.Constant_LoginFunType_AccountLoginIn);
        // source line 166, bytecode pc 100
        return void 0;
    }
    // source line 170, bytecode pc 142
    (cfgVersion = xs.Tools.CfgData.getGlobalConf("CfgVersion", ""));
    // source line 172, bytecode pc 169
    xs.dump("cfgVersion", cfgVersion);
    // source line 203, bytecode pc 334
    xs.Tools.Net.requestLogin({
    app_indentify: xs.Profile.UserCfg.readProductId(),
    forcepush: true,
    server_params: this.m_server_info.getInfo().server_params,
    cfg_version: cfgVersion,
    account_uid: this.m_account_info.getAccountId(),
    token: this.m_account_info.getToken()
}, this.onResp_getPlayerInfoSuccess, function(params) {
    // source line 184, bytecode pc 26
    xs.dump("_params", params);
    if ((params.error_code === "e_10011")) {
        // source line 197, bytecode pc 119
        xs.Tools.Net.requestSGSConfig({ download_url: params.download_url }, function() {
    // source line 190, bytecode pc 22
    xs.log("enter game!");
    // source line 191, bytecode pc 65
    xs.Utils.require(xs.Cfg.System.files_generated_by_server);
    // source line 192, bytecode pc 78
    this.onClick_start_get_role();
}.bind(this), function() {
    // source line 195, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_103"));
}, this);
        // source line 199, bytecode pc 121
        return true;
    }
    // source line 201, bytecode pc 123
    return false;
}, this);
},
    onResp_getPlayerInfoSuccess: function(jsonObj) {
    // source line 209, bytecode pc 46
    xs.Scene.Login.onGetPlayerInfoSuccess.apply(this, [ jsonObj ]);
},
    showLoginDialogFromControlBtn: function() {
    var str_isPlayerLogined, isHaveSwitchAccount, isHaveLogout;
    // source line 214, bytecode pc 39
    (str_isPlayerLogined = xs.Tools.Jsb.EasySdk.Account.isLogined());
    if (!str_isPlayerLogined) {
        // source line 217, bytecode pc 61
        this._startLogin();
    } else {
        // source line 221, bytecode pc 113
        (isHaveSwitchAccount = xs.Tools.Jsb.EasySdk.isSupportFunction("Account", "switch"));
        // source line 222, bytecode pc 160
        (isHaveLogout = xs.Tools.Jsb.EasySdk.isSupportFunction("Account", "logout"));
        if (isHaveSwitchAccount) {
            // source line 225, bytecode pc 212
            xs.Tools.Jsb.EasySdk.callFunction("Account", "switch");
        } else {
            if (isHaveLogout) {
                // source line 228, bytecode pc 269
                xs.Tools.Jsb.EasySdk.callFunction("Account", "logout");
            }
        }
    }
},
    onClick_changeLoginServer: function() {
    var str_isPlayerLogined, _callback_onChangeServerViewReturn;
    // source line 237, bytecode pc 39
    (str_isPlayerLogined = xs.Tools.Jsb.EasySdk.Account.isLogined());
    if (!str_isPlayerLogined) {
        // source line 239, bytecode pc 61
        this._startLogin();
        // source line 240, bytecode pc 63
        return void 0;
    }
    // source line 243, bytecode pc 72
    (_callback_onChangeServerViewReturn = function(serverData, selectIdx, isHistory) {
    // source line 245, bytecode pc 36
    xs.log(((("_callback_onChangeServerViewReturn:" + selectIdx) + "|") + isHistory));
    // source line 247, bytecode pc 62
    this.m_server_info.setCurServer(selectIdx, isHistory);
    // source line 250, bytecode pc 93
    this.setServerInfoToGame(this.m_server_info.getCurServerInfo());
    // source line 253, bytecode pc 113
    this.ccbNode.setVisible(true);
    // source line 254, bytecode pc 133
    this.serverSelView.removeFromParent(true);
    // source line 255, bytecode pc 153
    this.updateCurServerView(this.curSelServer);
});
    // source line 258, bytecode pc 92
    this.ccbNode.setVisible(false);
    // source line 259, bytecode pc 143
    (this.serverSelView = xs.Views.ServerSelectView.create(this.m_server_info.getInfo()));
    // source line 260, bytecode pc 178
    this.serverSelView.registerCallBack(_callback_onChangeServerViewReturn.bind(this));
    // source line 261, bytecode pc 198
    this.addChild(this.serverSelView);
},
    updateCurServerView: function() {
    // source line 268, bytecode pc 35
    this.m_loginServer.setString(this.m_server_info.getCurServerName());
},
    onEasySdkLoginSuccess: function(params) {
    var _jsonSuccessMsg, _loginType;
    // source line 276, bytecode pc 8
    switch (params.code) {
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Success:
        // source line 280, bytecode pc 222
        (_jsonSuccessMsg = JSON.parse(params.msg));
        // source line 283, bytecode pc 254
        xs.Profile.GameData.Mgr.releaseInstance();
        // source line 284, bytecode pc 281
        xs.Scene.Mgr.removeAllStatus();
        // source line 286, bytecode pc 295
        (_loginType = xs.Const_App_Account_Sys_EasySdk);
        // source line 288, bytecode pc 318
        xs.log_zj(" easysdk step3 request ServerList");
        // source line 302, bytecode pc 432
        xs.Tools.Net.requestGetServerList({
    uid: _jsonSuccessMsg.easy_uid,
    logintype: _loginType,
    app_indentify: xs.Profile.UserCfg.readProductId(),
    session: _jsonSuccessMsg.easy_session
}, this.onResp_GetServerList, function() {
    // source line 300, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_104"));
}, this);
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Cancel:
        // source line 308, bytecode pc 460
        xs.log("登录取消");
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_NoNeed:
        // source line 312, bytecode pc 488
        xs.log("无需登录");
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Timeout:
        // source line 316, bytecode pc 516
        xs.log("登录超时");
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Fail:
        // source line 321, bytecode pc 544
        xs.log("登录失败");
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Exception:
        // source line 326, bytecode pc 572
        xs.log("登录异常");
        break;
        default:
        // source line 331, bytecode pc 613
        xs.Views.Mgr.showToast(params.msg);
        break;
    }
},
    onResp_GetServerList: function(jsonObj) {
    var _strE;
    // source line 341, bytecode pc 22
    xs.log_zj(" easysdk step4 onResp_GetServerList");
    try {
        // source line 346, bytecode pc 70
        xs.Scene.Login.onResponse_GetServerList.apply(this, [ jsonObj ]);
        // source line 361, bytecode pc 102
        (this.m_account_info = new xs.Models.Account.AccountInfo());
        // source line 362, bytecode pc 129
        this.m_account_info.setToken(jsonObj.token);
        // source line 363, bytecode pc 161
        this.m_account_info.setAccountId(jsonObj.account_info.account_uid);
        // source line 365, bytecode pc 193
        (this.m_server_info = new xs.Models.Account.GameServerInfo());
        // source line 366, bytecode pc 215
        this.m_server_info.setInfo(jsonObj);
        // source line 367, bytecode pc 233
        this.m_server_info.setCurServer();
        // source line 369, bytecode pc 264
        this.setServerInfoToGame(this.m_server_info.getCurServerInfo());
        // source line 373, bytecode pc 304
        xs.Scene.Mgr.saveStatus("AccountInfo", this.m_account_info);
        // source line 374, bytecode pc 344
        xs.Scene.Mgr.saveStatus("ServerInfo", this.m_server_info);
        // source line 378, bytecode pc 357
        this.updateCurServerView();
        // source line 380, bytecode pc 417
        xs.Views.Mgr.showToast(xs.Tools.String.createString("completeLogin"));
    } catch (e) {
        // source line 387, bytecode pc 453
        xs.warnException(e);
        // source line 388, bytecode pc 482
        (_strE = xs.Debug.toJsonString(e));
        // source line 389, bytecode pc 513
        xs.Views.Mgr.showToast(_strE);
        /* TODO_BYTECODE pc=514 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
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
// source line 432, bytecode pc 523
(xs.Scene.Login.LoginScene_EasySdk = cc.Scene.extend({
    ctor: function() {
    // source line 417, bytecode pc 12
    this._super();
    // source line 418, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(params) {
    var layer;
    if (!this._super()) {
        // source line 422, bytecode pc 19
        return false;
    }
    // source line 425, bytecode pc 48
    (layer = new xs.Scene.Login.LoginScene_EasySdk_Layer());
    // source line 426, bytecode pc 67
    layer.init(params);
    // source line 427, bytecode pc 100
    xs.Utils.Node.attachNodes(this, layer);
    // source line 429, bytecode pc 102
    return true;
},
    onEnter: function() {
    // source line 433, bytecode pc 12
    this._super();
    // source line 435, bytecode pc 41
    xs.Guide.GuideMgr.setIsOver(true);
}
}));
// source line 439, bytecode pc 554
(xs.Scene.Login.LoginScene_EasySdk.create = function(params) {
    var scene;
    // source line 440, bytecode pc 28
    (scene = new xs.Scene.Login.LoginScene_EasySdk());
    if ((scene && scene.init(params))) {
        // source line 442, bytecode pc 101
        scene.setTag(xs.Cfg.Scene.LoginScene.tag);
        // source line 443, bytecode pc 105
        return scene;
    }
    // source line 445, bytecode pc 107
    return null;
});
// source line 456, bytecode pc 674
xs.Scene.Mgr.registerScene("LoginScene", {
    "class": xs.Scene.Login.LoginScene_EasySdk,
    area: [ "Login" ],
    type: xs.Constant_SceneType_None,
    audio: { bgId: "Audio_BG_Login" }
});
