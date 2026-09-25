// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Login/LoginScene_AnySdk.js:1
// source line 513, bytecode pc 457
(xs.Scene.Login.LoginScene_EnterGame = cc.Layer.extend({
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(params) {
    var _gameNameView, _gameLogo, _arm, _labelVerDesc;
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
    // source line 59, bytecode pc 676
    (this.m_cipherList = []);
    // source line 62, bytecode pc 724
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 64, bytecode pc 779
    (this.zuizhonglabelBtn = xs.Views.Btn.createInvisibleWithParent(this.ccbNode.getChildByTag(150)));
    // source line 67, bytecode pc 805
    this.zuizhonglabelBtn.addCallBackForEvent(this, function() {
    // source line 69, bytecode pc 43
    xs.Views.Mgr.showDialogByName("Announcement", xs.Constant_SettingType_ZuiZhongXieYi);
});
    // source line 73, bytecode pc 860
    (this.m_checkBtn = xs.Views.Btn.createInvisibleWithParent(this.ccbNode.getChildByTag(200)));
    // source line 74, bytecode pc 898
    this.m_checkBtn.setOnClickCallBack(this.onCheckBtnClick.bind(this));
    // source line 76, bytecode pc 949
    this.m_loginTypeTip.setString(xs.Tools.String.createString("changLogin"));
    // source line 77, bytecode pc 1000
    this.m_loginServerTip.setString(xs.Tools.String.createString("changeServer"));
    // source line 79, bytecode pc 1027
    (this.btn_ChangeLoginType = this.ccbNode.getChildByTag(10));
    // source line 80, bytecode pc 1048
    this.btn_ChangeLoginType.setTouchPriority(-1);
    // source line 81, bytecode pc 1068
    this.btn_ChangeLoginType.setZoomOnTouchDown(false);
    // source line 82, bytecode pc 1106
    this.btn_ChangeLoginType.addTargetWithActionForControlEvents(this, this.showLoginDialogFromControlBtn, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 84, bytecode pc 1133
    (this.btn_ChangeLoginServer = this.ccbNode.getChildByTag(11));
    // source line 85, bytecode pc 1154
    this.btn_ChangeLoginServer.setTouchPriority(-1);
    // source line 86, bytecode pc 1174
    this.btn_ChangeLoginServer.setZoomOnTouchDown(false);
    // source line 87, bytecode pc 1212
    this.btn_ChangeLoginServer.addTargetWithActionForControlEvents(this, this.changeLoginServer, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 89, bytecode pc 1239
    (this.btn_StartLogin = this.ccbNode.getChildByTag(12));
    // source line 90, bytecode pc 1259
    this.btn_StartLogin.setTouchPriority(0);
    // source line 91, bytecode pc 1297
    this.btn_StartLogin.addTargetWithActionForControlEvents(this, this.onStartLogin, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 94, bytecode pc 1338
    (_arm = xs.Views.Armature.AutoAudioArmature.create("Arm_EnterGame"));
    // source line 95, bytecode pc 1419
    xs.Utils.Node.attachNodes(this.btn_StartLogin, _arm, { desc: "c", offset: cc.p(-20, 0) });
    // source line 96, bytecode pc 1459
    _arm.playAniById("enterGame", { loop: true, speed: 1 });
    // source line 113, bytecode pc 1476
    (this.loginType = xs.Constant_LoginType_AnySdk);
    // source line 114, bytecode pc 1527
    this.m_loginType.setString(xs.Tools.String.createString("auto_name_102"));
    // source line 118, bytecode pc 1563
    (_labelVerDesc = xs.Factorys.Label.createByStyleId("LS_shuxing1"));
    // source line 119, bytecode pc 1605
    _labelVerDesc.setString(xs.Tools.Sys.getVersionDesc());
    // source line 120, bytecode pc 1642
    _labelVerDesc.setAligns(xs.AlignH_Left, xs.AlignV_Bottom);
    // source line 121, bytecode pc 1721
    xs.Utils.Node.attachNodes(this, _labelVerDesc, { desc: "lb", sc: true, offset: { x: 0, y: 0 } });
    if ((xs.AnySdk.AnySdkHelp_js.isFunctionSupported("accountSwitch") == false)) {
        // source line 127, bytecode pc 1780
        this.m_loginType.setVisible(false);
        // source line 128, bytecode pc 1800
        this.m_loginTypeTip.setVisible(false);
        // source line 129, bytecode pc 1820
        this.btn_ChangeLoginType.setVisible(false);
    }
    // source line 132, bytecode pc 1833
    this.hideButton();
    // source line 134, bytecode pc 1835
    return true;
},
    _isCipherCorrect: function(mList) {
    if ((mList.length < 6)) {
    } else {
        if ((mList.join() == xs.Constant_Conceal_KEY)) {
            // source line 143, bytecode pc 102
            xs.Views.Mgr.showDialogByName("LoginDialog", { autoLogin: false, isUid: true });
        } else {
            // source line 148, bytecode pc 119
            (this.m_cipherList = []);
        }
    }
},
    hideButton: function() {
    var m_cfg, i, cipherBtn7;
    // source line 164, bytecode pc 243
    (m_cfg = [
    { offset: cc.p(-423, 200) },
    { offset: cc.p(-305, 180) },
    { offset: cc.p(-110, 150) },
    { offset: cc.p(0, 160) },
    { offset: cc.p(143, 149) },
    { offset: cc.p(338, 187) }
]);
    // source line 167, bytecode pc 248
    (i = 1);
    while ((i < 7)) {
        // source line 168, bytecode pc 298
        (this[("cipherBtn" + i)] = xs.Views.Btn.create("Btn_Instruction_lucency"));
        // source line 169, bytecode pc 381
        xs.Utils.Node.attachNodes(this, this[("cipherBtn" + i)], { desc: "c", offset: m_cfg[(i - 1)].offset, sc: true });
        // source line 175, bytecode pc 444
        this[("cipherBtn" + i)].addCallBackForEvent(this, function() {
    var _self, _index;
    // source line 171, bytecode pc 9
    (_self = this.self);
    // source line 172, bytecode pc 19
    (_index = this.index);
    // source line 173, bytecode pc 43
    _self.m_cipherList.push(_index);
    // source line 174, bytecode pc 67
    _self._isCipherCorrect(_self.m_cipherList);
}.bind({ self: this, index: i }));
        // source line 176, bytecode pc 470
        this[("cipherBtn" + i)].setTouchPriority(-20);
        // source line 177, bytecode pc 495
        this[("cipherBtn" + i)].setOpacity(0);
        // source line 178, bytecode pc 520
        this[("cipherBtn" + i)].setVisible(false);
        // source line 167, bytecode pc 535
        i++;
    }
    // source line 183, bytecode pc 583
    (cipherBtn7 = xs.Views.Btn.create("Btn_Instruction_lucency"));
    // source line 184, bytecode pc 668
    xs.Utils.Node.attachNodes(this, cipherBtn7, { desc: "c", offset: cc.p(438, 224), sc: true });
    // source line 185, bytecode pc 691
    cipherBtn7.addCallBackForEvent(this, function() {
    var i;
    // source line 186, bytecode pc 11
    (this.m_cipherList = []);
    // source line 187, bytecode pc 16
    (i = 1);
    while ((i < 7)) {
        // source line 188, bytecode pc 47
        this[("cipherBtn" + i)].setVisible(true);
        // source line 187, bytecode pc 62
        i++;
    }
});
    // source line 192, bytecode pc 709
    cipherBtn7.setTouchPriority(-20);
    // source line 193, bytecode pc 726
    cipherBtn7.setOpacity(0);
},
    onEnterTransitionDidFinish: function() {
    // source line 199, bytecode pc 12
    this._super();
    // source line 200, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.onAnySdkLoginSucess, xs.Constant_Notify_Event_AnySdkLoginSucess);
    // source line 201, bytecode pc 106
    xs.Utils.Notify.addObserver(this, this.onAnySdkLoginFail, xs.Constant_Notify_Event_AnySdkLoginFail);
    // source line 202, bytecode pc 153
    xs.Utils.Notify.addObserver(this, this.onGetServerListSucess, xs.Constant_Notify_Event_GetServerListSucess);
    if (((this.m_loginParams == null) || (this.m_loginParams.funTypeStr == xs.Constant_LoginFunType_AccountLoginIn))) {
        // source line 207, bytecode pc 217
        xs.log("调用sdk登录");
        // source line 209, bytecode pc 241
        this.showLoginDialog(xs.Constant_LoginFunType_AccountLoginIn);
    } else {
        if ((this.m_loginParams.funTypeStr == xs.Constant_LoginFunType_AccountSwitch)) {
            // source line 212, bytecode pc 296
            xs.log("调用sdk切换帐号");
            // source line 213, bytecode pc 309
            this.loadOldInfo();
            // source line 215, bytecode pc 333
            this.showLoginDialog(xs.Constant_LoginFunType_AccountSwitch);
        } else {
            if ((this.m_loginParams.funTypeStr == xs.Constant_LoginFunType_AccountSwitchSuccess)) {
                if (((this.m_loginParams.uidKey == null) || (this.m_loginParams.uidKey.length == 0))) {
                    // source line 221, bytecode pc 430
                    xs.log("警告!!切换帐号成功,但uidKey为空!");
                    // source line 223, bytecode pc 454
                    this.showLoginDialog(xs.Constant_LoginFunType_AccountLoginIn);
                } else {
                    // source line 226, bytecode pc 482
                    xs.log("切换帐号成功,发起服务器列表请求");
                    // source line 228, bytecode pc 502
                    this.onAnySdkLoginSucess(this.m_loginParams);
                }
            } else {
                if ((this.m_loginParams.funTypeStr == xs.Constant_LoginFunType_None)) {
                    // source line 232, bytecode pc 557
                    xs.log("333333333333");
                    // source line 234, bytecode pc 570
                    this.loadOldInfo();
                }
            }
        }
    }
    // source line 237, bytecode pc 597
    xs.Tools.Statistic.anySdkLoginEnterEvent();
},
    onExit: function() {
    // source line 241, bytecode pc 12
    this._super();
    // source line 242, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_AnySdkLoginSucess);
    // source line 243, bytecode pc 92
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_AnySdkLoginFail);
    // source line 244, bytecode pc 132
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_GetServerListSucess);
},
    loadOldInfo: function() {
    var addrServer;
    // source line 249, bytecode pc 38
    (this.m_userLoginInfo = xs.Scene.Mgr.loadStatus("UserLoginInfo"));
    if (xs.AnySdk.AnySdkHelp_js.isLogined()) {
        // source line 256, bytecode pc 108
        (this.m_userLoginInfo = xs.Scene.Mgr.loadStatus("UserLoginInfo"));
        // source line 257, bytecode pc 138
        (addrServer = xs.Profile.UserCfg.getGameAddr());
        // source line 261, bytecode pc 190
        (this.curSelServer = { server_title: addrServer.name, server_url: addrServer.domain, server_id: addrServer.id });
        // source line 263, bytecode pc 210
        this.updateCurServerShow(this.curSelServer);
    }
},
    onCheckBtnClick: function() {
    if (this.ccbNode.getChildByTag(201).isVisible()) {
        // source line 272, bytecode pc 71
        this.ccbNode.getChildByTag(201).setVisible(false);
    } else {
        // source line 274, bytecode pc 111
        this.ccbNode.getChildByTag(201).setVisible(true);
    }
},
    onStartLogin: function() {
    var cfgVersion;
    if (!this.ccbNode.getChildByTag(201).isVisible()) {
        // source line 282, bytecode pc 97
        xs.Views.Mgr.showToast(xs.Tools.String.createString("hintStr_3rd_ZuiZhongXieYi"));
        // source line 283, bytecode pc 99
        return void 0;
    }
    if ((xs.AnySdk.AnySdkHelp_js.isLogined() == false)) {
        // source line 290, bytecode pc 156
        this.showLoginDialog(xs.Constant_LoginFunType_AccountLoginIn);
        // source line 291, bytecode pc 158
        return void 0;
    }
    // source line 297, bytecode pc 240
    xs.Profile.UserCfg.setGameAddr({
    name: this.curSelServer.server_title,
    domain: this.curSelServer.server_url,
    id: this.curSelServer.server_id
});
    // source line 301, bytecode pc 277
    (xs.Profile.GameData.Player.g_serverId = this.curSelServer.server_id);
    // source line 302, bytecode pc 314
    (xs.Profile.GameData.Player.g_serverURL = this.curSelServer.server_url);
    // source line 306, bytecode pc 356
    (cfgVersion = xs.Tools.CfgData.getGlobalConf("CfgVersion", ""));
    // source line 307, bytecode pc 383
    xs.log_cmn("cfgVersion", cfgVersion);
    // source line 335, bytecode pc 535
    xs.Tools.Net.requestLogin({
    account_uid: xs.Profile.UserCfg.getAccountUid(),
    app_indentify: xs.Profile.UserCfg.readProductId(),
    forcepush: true,
    server_params: this.m_userLoginInfo.serverParams,
    token: this.token,
    cfg_version: cfgVersion
}, this._onGetPlayerInfoSuccess, function(params) {
    // source line 318, bytecode pc 26
    xs.dump("_params", params);
    if ((params.error_code === "e_10011")) {
        // source line 329, bytecode pc 119
        xs.Tools.Net.requestSGSConfig({ download_url: params.download_url }, function() {
    // source line 324, bytecode pc 26
    xs.Tools.Sys.requireCfgFilesGeneratedByServer();
    // source line 325, bytecode pc 39
    this.onStartLogin();
}.bind(this), function() {
    // source line 328, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_103"));
}, this);
        // source line 331, bytecode pc 121
        return true;
    }
    // source line 333, bytecode pc 123
    return false;
}, this);
},
    _onGetPlayerInfoSuccess: function(jsonObj) {
    // source line 340, bytecode pc 46
    xs.Scene.Login.onGetPlayerInfoSuccess.apply(this, [ jsonObj ]);
},
    onGetServerListSucess: function() {
    // source line 344, bytecode pc 38
    (this.m_userLoginInfo = xs.Scene.Mgr.loadStatus("UserLoginInfo"));
    // source line 345, bytecode pc 51
    this.updateCurServerShow();
},
    showLoginDialog: function(loginFunType) {
    // source line 351, bytecode pc 26
    xs.AnySdk.AnySdkHelp_js.login();
},
    showLoginDialogFromControlBtn: function() {
    if ((xs.AnySdk.AnySdkHelp_js.isLogined() == false)) {
        // source line 360, bytecode pc 56
        this.showLoginDialog(xs.Constant_LoginFunType_AccountLoginIn);
    } else {
        // source line 364, bytecode pc 85
        this.showLoginDialog(xs.Constant_LoginFunType_AccountSwitch);
    }
},
    onChangeLoginTypeCb: function(loginType) {
    // source line 371, bytecode pc 19
    this.ccbNode.setVisible(true);
    if (loginType) {
        // source line 373, bytecode pc 37
        (this.loginType = loginType);
        // source line 374, bytecode pc 50
        this.onStartLogin();
    }
},
    changeLoginServer: function() {
    if ((xs.AnySdk.AnySdkHelp_js.isLogined() == false)) {
        // source line 382, bytecode pc 59
        xs.AnySdk.AnySdkHelp_js.login();
        // source line 383, bytecode pc 61
        return void 0;
    }
    // source line 386, bytecode pc 81
    this.ccbNode.setVisible(false);
    // source line 387, bytecode pc 141
    (this.serverSelView = xs.Views.ServerSelectView.create(xs.Profile.UserCfg.getServerListData()));
    // source line 388, bytecode pc 179
    this.serverSelView.registerCallBack(this.changeServerCallBack.bind(this));
    // source line 389, bytecode pc 199
    this.addChild(this.serverSelView);
},
    changeServerCallBack: function(serverData) {
    // source line 393, bytecode pc 9
    (this.curSelServer = serverData);
    // source line 394, bytecode pc 29
    this.ccbNode.setVisible(true);
    // source line 395, bytecode pc 49
    this.serverSelView.removeFromParent(true);
    // source line 401, bytecode pc 131
    xs.Profile.UserCfg.setGameAddr({
    name: this.curSelServer.server_title,
    domain: this.curSelServer.server_url,
    id: this.curSelServer.server_id
});
    // source line 405, bytecode pc 151
    this.updateCurServerShow(this.curSelServer);
},
    updateCurServerShow: function(curServer) {
    // source line 411, bytecode pc 17
    (this.serverList = this.m_userLoginInfo.serverList);
    // source line 413, bytecode pc 35
    (this.serverListLogined = this.m_userLoginInfo.loginedServerLists);
    if (!curServer) {
        if ((this.serverListLogined.length === 0)) {
            // source line 418, bytecode pc 77
            (this.curSelServer = this.serverList[0]);
        } else {
            // source line 420, bytecode pc 97
            (this.curSelServer = this.serverListLogined[0]);
        }
    }
    if (this.curSelServer) {
        // source line 425, bytecode pc 138
        this.m_loginServer.setString(this.curSelServer.server_title);
    }
},
    onAnySdkLoginSucess: function(params) {
    // source line 431, bytecode pc 22
    xs.log("onAnySdkLoginSucess");
    // source line 433, bytecode pc 54
    xs.Profile.GameData.Mgr.releaseInstance();
    // source line 434, bytecode pc 81
    xs.Scene.Mgr.removeAllStatus();
    // source line 437, bytecode pc 108
    xs.Tools.Statistic.anySdkGetServerListBeginEvent();
    // source line 451, bytecode pc 227
    xs.Tools.Net.requestGetServerList({
    uid: params.uidKey,
    logintype: xs.Constant_LoginType_AnySdk,
    app_indentify: xs.Profile.UserCfg.readProductId(),
    extra: {}
}, this.onResponse_GetServerList, function() {
    // source line 449, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_104"));
}, this);
},
    onAnySdkLoginFail: function(params) {
    // source line 459, bytecode pc 35
    xs.Views.Mgr.showToast(params.errorMsg);
},
    onResponse_GetServerList: function(jsonObj) {
    var _strE;
    try {
        // source line 469, bytecode pc 60
        xs.Views.Mgr.showToast(xs.Tools.String.createString("completeLogin"));
        // source line 471, bytecode pc 70
        (this.serverListData = jsonObj);
        // source line 472, bytecode pc 104
        xs.Profile.UserCfg.setServerListData(this.serverListData);
        // source line 474, bytecode pc 124
        (this.accountUid = jsonObj.account_info.account_uid);
        // source line 475, bytecode pc 158
        xs.Profile.UserCfg.setAccountUid(this.accountUid);
        // source line 478, bytecode pc 196
        xs.Profile.UserCfg.setLoginType(xs.Constant_LoginType_AnySdk);
        // source line 486, bytecode pc 294
        xs.Scene.Mgr.saveStatus("UserLoginInfo", {
    serverList: this.serverListData.server_list,
    loginedServerLists: this.serverListData.server_logined_list,
    serverParams: jsonObj.server_params,
    token: jsonObj.token
});
        // source line 490, bytecode pc 330
        xs.Profile.UserCfg.setToken(jsonObj.token);
        // source line 492, bytecode pc 368
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_GetServerListSucess);
    } catch (e) {
        // source line 496, bytecode pc 404
        xs.warnException(e);
        // source line 497, bytecode pc 433
        (_strE = xs.Debug.toJsonString(e));
        // source line 498, bytecode pc 464
        xs.Views.Mgr.showToast(_strE);
        /* TODO_BYTECODE pc=465 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    if ((this.serverListData.server_list.length > 0)) {
        // source line 503, bytecode pc 523
        xs.Tools.Statistic.anySdkGetServerListSucessEvent();
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
// source line 822, bytecode pc 954
(xs.Scene.Login.LoginDialog = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 523, bytecode pc 12
    this._super();
},
    init: function(params) {
    var editBg, pos;
    if (!this._super()) {
        // source line 528, bytecode pc 19
        return false;
    }
    // source line 531, bytecode pc 29
    (this.m_params = params);
    // source line 533, bytecode pc 63
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_4_Dialog_Login.ccbi"));
    // source line 534, bytecode pc 106
    this.ccbNode.setContentSize(cc.size(510, 470));
    // source line 535, bytecode pc 153
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 536, bytecode pc 212
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 538, bytecode pc 220
    (this.m_loginBtn = null);
    // source line 539, bytecode pc 228
    (this.m_registerBtn = null);
    // source line 540, bytecode pc 276
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 543, bytecode pc 296
    this.m_registerBtn.setEventOnDisable(true);
    // source line 544, bytecode pc 316
    this.m_registerBtn.setEnabled(true);
    // source line 548, bytecode pc 340
    (editBg = this.ccbNode.getChildByTag(13));
    // source line 549, bytecode pc 358
    (pos = editBg.getPosition());
    // source line 550, bytecode pc 373
    editBg.removeFromParent();
    // source line 551, bytecode pc 429
    (this.m_EditBox_Account = cc.EditBox.create(cc.size(380, 45), editBg));
    // source line 552, bytecode pc 468
    this.m_EditBox_Account.setAnchorPoint(cc.p(0, 0));
    // source line 553, bytecode pc 488
    this.m_EditBox_Account.setZOrder(0);
    // source line 554, bytecode pc 510
    this.m_EditBox_Account.setPosition(pos);
    // source line 555, bytecode pc 554
    this.m_EditBox_Account.setPlaceholderFontColor(cc.c3b(122, 68, 3));
    // source line 556, bytecode pc 598
    this.m_EditBox_Account.setFontColor(cc.c3b(122, 68, 3));
    // source line 557, bytecode pc 619
    this.m_EditBox_Account.setPlaceholderFontSize(32);
    // source line 558, bytecode pc 640
    this.m_EditBox_Account.setFontSize(26);
    // source line 559, bytecode pc 691
    this.m_EditBox_Account.setPlaceHolder(xs.Tools.String.createString("importID"));
    // source line 560, bytecode pc 720
    this.m_EditBox_Account.setInputMode(cc.EDITBOX_INPUT_MODE_SINGLELINE);
    // source line 561, bytecode pc 749
    this.m_EditBox_Account.setInputFlag(cc.EDITBOX_INPUT_FLAG_SENSITIVE);
    // source line 562, bytecode pc 778
    this.m_EditBox_Account.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 563, bytecode pc 798
    this.m_EditBox_Account.setDelegate(this);
    // source line 564, bytecode pc 843
    this.m_EditBox_Account.setText(xs.Profile.UserCfg.getLoginAccount());
    // source line 565, bytecode pc 868
    this.ccbNode.addChild(this.m_EditBox_Account);
    // source line 567, bytecode pc 892
    (editBg = this.ccbNode.getChildByTag(14));
    // source line 568, bytecode pc 910
    (pos = editBg.getPosition());
    // source line 569, bytecode pc 925
    editBg.removeFromParent();
    // source line 570, bytecode pc 981
    (this.m_EditBox_Psw = cc.EditBox.create(cc.size(380, 45), editBg));
    // source line 571, bytecode pc 1020
    this.m_EditBox_Psw.setAnchorPoint(cc.p(0, 0));
    // source line 572, bytecode pc 1040
    this.m_EditBox_Psw.setZOrder(0);
    // source line 573, bytecode pc 1062
    this.m_EditBox_Psw.setPosition(pos);
    // source line 574, bytecode pc 1106
    this.m_EditBox_Psw.setPlaceholderFontColor(cc.c3b(122, 68, 3));
    // source line 575, bytecode pc 1150
    this.m_EditBox_Psw.setFontColor(cc.c3b(122, 68, 3));
    // source line 576, bytecode pc 1171
    this.m_EditBox_Psw.setPlaceholderFontSize(32);
    // source line 577, bytecode pc 1192
    this.m_EditBox_Psw.setFontSize(26);
    // source line 578, bytecode pc 1221
    this.m_EditBox_Psw.setInputMode(cc.EDITBOX_INPUT_MODE_SINGLELINE);
    // source line 579, bytecode pc 1250
    this.m_EditBox_Psw.setInputFlag(cc.EDITBOX_INPUT_FLAG_PASSWORD);
    // source line 580, bytecode pc 1279
    this.m_EditBox_Psw.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 581, bytecode pc 1299
    this.m_EditBox_Psw.setDelegate(this);
    // source line 582, bytecode pc 1344
    this.m_EditBox_Psw.setText(xs.Profile.UserCfg.getLoginPsw());
    // source line 583, bytecode pc 1369
    this.ccbNode.addChild(this.m_EditBox_Psw);
    // source line 585, bytecode pc 1420
    this.m_title.setString(xs.Tools.String.createString("auto_name_105"));
    // source line 586, bytecode pc 1458
    this.m_loginBtn.setOnClickCallBack(this.onLoginBtnClick.bind(this));
    // source line 587, bytecode pc 1496
    this.m_visitorBtn.setOnClickCallBack(this.onVisitorBtnClick.bind(this));
    // source line 590, bytecode pc 1498
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 594, bytecode pc 12
    this._super();
    if (((xs.Profile.UserCfg.getLoginAccount() !== "") && ((xs.Profile.UserCfg.getLoginAccount() !== null) && this.m_params.autoLogin))) {
        if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_Visitor)) {
            // source line 604, bytecode pc 155
            this.onVisitorBtnClick();
        } else {
            if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_BianFeng)) {
            }
        }
    }
},
    onExit: function() {
    // source line 612, bytecode pc 12
    this._super();
},
    updateDialog: function() {
    var _account, _psw;
    // 只用存储里的非空值回填，避免把玩家刚输入的密码擦掉。
    // setLoginPsw("") 是静默不存的，密码一旦丢失就再也存不回来。
    _account = xs.Profile.UserCfg.getLoginAccount();
    if (_account) {
        // source line 619, bytecode pc 44
        this.m_EditBox_Account.setText(_account);
    }
    _psw = xs.Profile.UserCfg.getLoginPsw();
    if (_psw) {
        // source line 620, bytecode pc 89
        this.m_EditBox_Psw.setText(_psw);
    }
},
    onLoginBtnClickByHistory: function() {
    // source line 625, bytecode pc 50
    xs.JsbConnecter.getInstance().invoke("BfSdk", "loginByHistory", "");
},
    showRegisterDlg: function() {
    // source line 632, bytecode pc 32
    xs.Views.Mgr.showDialogByName("RegisterDialog");
},
    onLoginBtnClick: function() {
    var _cmd_string, _strE;
    // source line 637, bytecode pc 22
    xs.log("onRegisterBtnClick");
    try {
        if (((!this.m_EditBox_Psw.getText() || !this.m_EditBox_Account.getText()) && xs.release)) {
            // source line 642, bytecode pc 146
            xs.Views.Mgr.showToast(xs.Tools.String.createString("noNull"));
            // source line 643, bytecode pc 148
            return void 0;
        }
        // source line 646, bytecode pc 175
        (_cmd_string = ("" + this.m_EditBox_Account.getText()));
        if (xs.Tools.CmdShell.doShell(_cmd_string)) {
            // source line 648, bytecode pc 212
            return void 0;
        }
    } catch (e) {
        // source line 653, bytecode pc 248
        xs.warnException(e);
        // source line 654, bytecode pc 277
        (_strE = xs.Debug.toJsonString(e));
        // source line 655, bytecode pc 308
        xs.Views.Mgr.showToast(_strE);
        /* TODO_BYTECODE pc=309 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    onVisitorBtnClick: function() {
    var _uuid;
    // source line 662, bytecode pc 26
    xs.Tools.Statistic.visitorLoginStartEvent();
    // source line 665, bytecode pc 56
    (_uuid = xs.Tools.Jsb.getOpenUDID());
    if ((_uuid === null)) {
        // source line 668, bytecode pc 126
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_106"));
        // source line 669, bytecode pc 128
        return void 0;
    }
    // source line 685, bytecode pc 267
    xs.Tools.Net.requestGetServerList({
    uid: _uuid,
    logintype: xs.Constant_LoginType_AnySdk,
    app_indentify: xs.Profile.UserCfg.readProductId(),
    extra: []
}, this.onResponse_GetServerList_Visitor.bind(this), function() {
    // source line 682, bytecode pc 26
    xs.Tools.Statistic.visitorLoginFailEvent();
    // source line 683, bytecode pc 86
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_107"));
}.bind(this), this);
},
    onBfSdkLoginSucess: function(params) {
    // source line 691, bytecode pc 22
    xs.log("onBfSdkLoginSucess");
    // source line 705, bytecode pc 164
    xs.Tools.Net.requestGetServerList({
    uid: "123",
    logintype: xs.Constant_LoginType_BianFeng,
    app_indentify: xs.Profile.UserCfg.readProductId(),
    extra: { sessionId: params.sessionKey }
}, this.onResponse_GetServerList.bind(this), function() {
    // source line 703, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_104"));
}, this);
},
    onBfSdkLoginFail: function(params) {
    // source line 710, bytecode pc 35
    xs.Views.Mgr.showToast(params.errorMsg);
},
    onResponse_GetServerList_Visitor: function(jsonObj) {
    var _strE;
    // source line 715, bytecode pc 26
    xs.Tools.Statistic.visitorLoginSuccessEvent();
    try {
        // source line 720, bytecode pc 74
        xs.Scene.Login.onResponse_GetServerList.apply(this, [ jsonObj ]);
        // source line 722, bytecode pc 134
        xs.Views.Mgr.showToast(xs.Tools.String.createString("completeLogin"));
        // source line 724, bytecode pc 144
        (this.serverListData = jsonObj);
        // source line 725, bytecode pc 178
        xs.Profile.UserCfg.setServerListData(this.serverListData);
        // source line 727, bytecode pc 198
        (this.accountUid = jsonObj.account_info.account_uid);
        if (this.m_params.isUid) {
            // source line 730, bytecode pc 238
            (this.accountUid = this.m_EditBox_Account.getText());
        }
        // source line 733, bytecode pc 272
        xs.Profile.UserCfg.setAccountUid(this.accountUid);
        // source line 736, bytecode pc 310
        xs.Profile.UserCfg.setLoginType(xs.Constant_LoginType_Visitor);
        // source line 743, bytecode pc 408
        xs.Scene.Mgr.saveStatus("UserLoginInfo", {
    serverList: this.serverListData.server_list,
    loginedServerLists: this.serverListData.server_logined_list,
    serverParams: jsonObj.server_params,
    token: jsonObj.token
});
        // source line 746, bytecode pc 444
        xs.Profile.UserCfg.setToken(jsonObj.token);
        // source line 748, bytecode pc 482
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_GetServerListSucess);
    } catch (e) {
        // source line 751, bytecode pc 518
        xs.warnException(e);
        // source line 752, bytecode pc 547
        (_strE = xs.Debug.toJsonString(e));
        // source line 753, bytecode pc 578
        xs.Views.Mgr.showToast(_strE);
        /* TODO_BYTECODE pc=579 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 756, bytecode pc 614
    xs.Views.Mgr.hideDialog();
},
    onResponse_GetServerList: function(jsonObj) {
    var _strE;
    try {
        // source line 763, bytecode pc 47
        xs.Scene.Login.onResponse_GetServerList.apply(this, [ jsonObj ]);
        // source line 765, bytecode pc 107
        xs.Views.Mgr.showToast(xs.Tools.String.createString("completeLogin"));
        // source line 767, bytecode pc 117
        (this.serverListData = jsonObj);
        // source line 768, bytecode pc 151
        xs.Profile.UserCfg.setServerListData(this.serverListData);
        // source line 770, bytecode pc 171
        (this.accountUid = jsonObj.account_info.account_uid);
        // source line 771, bytecode pc 205
        xs.Profile.UserCfg.setAccountUid(this.accountUid);
        // source line 773, bytecode pc 250
        xs.Profile.UserCfg.setLoginAccount(this.m_EditBox_Account.getText());
        // source line 775, bytecode pc 295
        xs.Profile.UserCfg.setLoginPsw(this.m_EditBox_Psw.getText());
        // source line 778, bytecode pc 333
        xs.Profile.UserCfg.setLoginType(xs.Constant_LoginType_BianFeng);
        // source line 785, bytecode pc 431
        xs.Scene.Mgr.saveStatus("UserLoginInfo", {
    serverList: this.serverListData.server_list,
    loginedServerLists: this.serverListData.server_logined_list,
    serverParams: jsonObj.server_params,
    token: jsonObj.token
});
        // source line 788, bytecode pc 467
        xs.Profile.UserCfg.setToken(jsonObj.token);
        // source line 790, bytecode pc 505
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_GetServerListSucess);
    } catch (e) {
        // source line 793, bytecode pc 541
        xs.warnException(e);
        // source line 794, bytecode pc 570
        (_strE = xs.Debug.toJsonString(e));
        // source line 795, bytecode pc 601
        xs.Views.Mgr.showToast(_strE);
        /* TODO_BYTECODE pc=602 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 798, bytecode pc 637
    xs.Views.Mgr.hideDialog();
},
    onCancel: function() {
    // source line 802, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("pleaseLogin"));
},
    setBaseTouchPriority: function(priority) {
    // source line 806, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 807, bytecode pc 36
    this.m_loginBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 808, bytecode pc 63
    this.m_registerBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 809, bytecode pc 90
    this.m_visitorBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 811, bytecode pc 117
    this.m_EditBox_Account.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 812, bytecode pc 144
    this.m_EditBox_Psw.setTouchPriority((this.m_baseTouchPriority - 1));
},
    cfg: {
        ccbCfg: [
            { tag: 10, type: "btn", name: "m_registerBtn", id: "Btn_toRegister" },
            { tag: 12, type: "btn", name: "m_loginBtn", id: "Btn_Login" },
            { tag: 11, type: "btn", name: "m_visitorBtn", id: "Btn_LoginLong" },
            { tag: 20, type: "ls", name: "m_title", id: "LS_popUI1", stringId: "auto_name_108" },
            { tag: 21, type: "ls", id: "LS_popUI2", string: xs.Tools.String.createString("bianFengID") }
        ]
    }
}));
// source line 827, bytecode pc 985
(xs.Scene.Login.LoginDialog.create = function(params) {
    var ret;
    // source line 828, bytecode pc 28
    (ret = new xs.Scene.Login.LoginDialog());
    if ((ret && ret.init(params))) {
        // source line 830, bytecode pc 64
        return ret;
    }
    // source line 833, bytecode pc 66
    return null;
});
// source line 838, bytecode pc 1065
xs.Views.Mgr.registerDialog("LoginDialog", { "class": xs.Scene.Login.LoginDialog, styleType: xs.Constant_DlgStyleType_Small });
// source line 862, bytecode pc 1144
(xs.Scene.Login.LoginScene_AnySdk = cc.Scene.extend({
    ctor: function() {
    // source line 847, bytecode pc 12
    this._super();
    // source line 848, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(params) {
    var layer;
    if (!this._super()) {
        // source line 852, bytecode pc 19
        return false;
    }
    // source line 855, bytecode pc 48
    (layer = new xs.Scene.Login.LoginScene_EnterGame());
    // source line 856, bytecode pc 67
    layer.init(params);
    // source line 857, bytecode pc 100
    xs.Utils.Node.attachNodes(this, layer);
    // source line 859, bytecode pc 102
    return true;
},
    onEnter: function() {
    // source line 863, bytecode pc 12
    this._super();
    // source line 865, bytecode pc 41
    xs.Guide.GuideMgr.setIsOver(true);
}
}));
// source line 869, bytecode pc 1175
(xs.Scene.Login.LoginScene_AnySdk.create = function(params) {
    var scene;
    // source line 871, bytecode pc 28
    (scene = new xs.Scene.Login.LoginScene_AnySdk());
    if ((scene && scene.init(params))) {
        // source line 873, bytecode pc 101
        scene.setTag(xs.Cfg.Scene.LoginScene.tag);
        // source line 874, bytecode pc 105
        return scene;
    }
    // source line 876, bytecode pc 107
    return null;
});
// source line 887, bytecode pc 1295
xs.Scene.Mgr.registerScene("LoginScene", {
    "class": xs.Scene.Login.LoginScene_AnySdk,
    area: [ "Login" ],
    type: xs.Constant_SceneType_None,
    audio: { bgId: "Audio_BG_Login" }
});
