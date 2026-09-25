// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Login/LoginScene_BfSdk.js:1
// source line 381, bytecode pc 397
(xs.Scene.Login.LoginScene_EnterGame = cc.Layer.extend({
    ctor: function() {
    // source line 10, bytecode pc 12
    this._super();
    // source line 11, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var _gameNameView, _gameLogo, m__StartLogin, _labelVerDesc;
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    if (!this._enter_isFirst_login) {
        // source line 19, bytecode pc 39
        (this._enter_isFirst_login = true);
        // source line 20, bytecode pc 72
        xs.Tools.Statistic.event_enter("login");
        // source line 22, bytecode pc 95
        xs.log_zhz("this is first ,login");
    } else {
        // source line 24, bytecode pc 123
        xs.log_zhz("this is not first ,login");
    }
    // source line 28, bytecode pc 152
    xs.Tools.UI.addIndexBgSprite(this);
    // source line 31, bytecode pc 188
    (_gameNameView = xs.Factorys.Sprite.createWithFileName("tex/logo/logo_title5_2.png"));
    // source line 32, bytecode pc 214
    _gameNameView.setAnchorPoint(xs.ap_c);
    // source line 36, bytecode pc 270
    xs.Utils.Node.attachNodes(this, _gameNameView, { desc: "c", sc: true });
    // source line 39, bytecode pc 306
    (_gameLogo = xs.Factorys.Sprite.createWithFileName("tex/logo/logo.png"));
    // source line 40, bytecode pc 332
    _gameLogo.setAnchorPoint(xs.ap_lt);
    // source line 44, bytecode pc 415
    xs.Utils.Node.attachNodes(this, _gameLogo, { desc: "lt", offset: cc.p(25, -25), sc: true });
    // source line 47, bytecode pc 451
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_4_EnterGame2.ccbi", this));
    // source line 48, bytecode pc 494
    this.ccbNode.setContentSize(cc.size(510, 328));
    // source line 49, bytecode pc 537
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0));
    // source line 53, bytecode pc 622
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "cb", offset: cc.p(0, -1), sc: true });
    // source line 56, bytecode pc 630
    (this.m_loginType = null);
    // source line 57, bytecode pc 638
    (this.m_loginServer = null);
    // source line 58, bytecode pc 646
    (this.m_loginTypeTip = null);
    // source line 59, bytecode pc 654
    (this.m_loginServerTip = null);
    // source line 60, bytecode pc 666
    (this.m_cipherList = []);
    // source line 62, bytecode pc 714
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 64, bytecode pc 765
    this.m_loginTypeTip.setString(xs.Tools.String.createString("changLogin"));
    // source line 65, bytecode pc 816
    this.m_loginServerTip.setString(xs.Tools.String.createString("changeServer"));
    // source line 67, bytecode pc 843
    (this.btn_ChangeLoginType = this.ccbNode.getChildByTag(10));
    // source line 68, bytecode pc 864
    this.btn_ChangeLoginType.setTouchPriority(-1);
    // source line 69, bytecode pc 884
    this.btn_ChangeLoginType.setZoomOnTouchDown(false);
    // source line 70, bytecode pc 922
    this.btn_ChangeLoginType.addTargetWithActionForControlEvents(this, this.showLoginDialog, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 72, bytecode pc 949
    (this.btn_ChangeLoginServer = this.ccbNode.getChildByTag(11));
    // source line 73, bytecode pc 970
    this.btn_ChangeLoginServer.setTouchPriority(-1);
    // source line 74, bytecode pc 990
    this.btn_ChangeLoginServer.setZoomOnTouchDown(false);
    // source line 75, bytecode pc 1028
    this.btn_ChangeLoginServer.addTargetWithActionForControlEvents(this, this.changeLoginServer, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 77, bytecode pc 1055
    (this.btn_StartLogin = this.ccbNode.getChildByTag(12));
    // source line 78, bytecode pc 1092
    (m__StartLogin = xs.Views.Btn.createInvisibleWithParent(this.btn_StartLogin));
    // source line 79, bytecode pc 1109
    m__StartLogin.setTouchPriority(0);
    // source line 80, bytecode pc 1144
    m__StartLogin.addTargetWithActionForControlEvents(this, this.onStartLogin, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 87, bytecode pc 1177
    (this.loginType = xs.Profile.UserCfg.getLoginType());
    if ((this.loginType === xs.Constant_LoginType_Visitor)) {
        // source line 90, bytecode pc 1250
        this.m_loginType.setString(xs.Tools.String.createString("visitorLogin"));
    } else {
        if ((this.loginType === xs.Constant_LoginType_BianFeng)) {
            // source line 93, bytecode pc 1328
            this.m_loginType.setString(xs.Tools.String.createString("bfLogin"));
        } else {
            if (xs.isVersionForPublish) {
                // source line 97, bytecode pc 1356
                (this.showWanJiaXieYi = true);
            } else {
                // source line 99, bytecode pc 1378
                (this.loginType = xs.Constant_LoginType_Visitor);
                // source line 100, bytecode pc 1429
                this.m_loginType.setString(xs.Tools.String.createString("visitorLogin"));
            }
        }
    }
    // source line 105, bytecode pc 1465
    (_labelVerDesc = xs.Factorys.Label.createByStyleId("LS_shuxing1"));
    // source line 106, bytecode pc 1507
    _labelVerDesc.setString(xs.Tools.Sys.getVersionDesc());
    // source line 107, bytecode pc 1544
    _labelVerDesc.setAligns(xs.AlignH_Left, xs.AlignV_Bottom);
    // source line 113, bytecode pc 1623
    xs.Utils.Node.attachNodes(this, _labelVerDesc, { desc: "lb", sc: true, offset: { x: 0, y: 0 } });
    // source line 117, bytecode pc 1636
    this.hideButton();
    // source line 119, bytecode pc 1638
    return true;
},
    _isCipherCorrect: function(mList) {
    if ((mList.length < 6)) {
    } else {
        if ((mList.join() == xs.Constant_Conceal_KEY)) {
            // source line 130, bytecode pc 102
            xs.Views.Mgr.showDialogByName("LoginDialog", { autoLogin: false, isUid: true });
        } else {
            // source line 136, bytecode pc 119
            (this.m_cipherList = []);
        }
    }
},
    hideButton: function() {
    var m_cfg, i, cipherBtn7;
    // source line 156, bytecode pc 243
    (m_cfg = [
    { offset: cc.p(-423, 200) },
    { offset: cc.p(-305, 180) },
    { offset: cc.p(-110, 150) },
    { offset: cc.p(0, 160) },
    { offset: cc.p(143, 149) },
    { offset: cc.p(338, 187) }
]);
    // source line 160, bytecode pc 248
    (i = 1);
    while ((i < 7)) {
        // source line 161, bytecode pc 298
        (this[("cipherBtn" + i)] = xs.Views.Btn.create("Btn_Instruction_lucency"));
        // source line 165, bytecode pc 381
        xs.Utils.Node.attachNodes(this, this[("cipherBtn" + i)], { desc: "c", offset: m_cfg[(i - 1)].offset, sc: true });
        // source line 174, bytecode pc 444
        this[("cipherBtn" + i)].addCallBackForEvent(this, function() {
    var _self, _index;
    // source line 168, bytecode pc 9
    (_self = this.self);
    // source line 169, bytecode pc 19
    (_index = this.index);
    // source line 170, bytecode pc 43
    _self.m_cipherList.push(_index);
    // source line 171, bytecode pc 67
    _self._isCipherCorrect(_self.m_cipherList);
}.bind({ self: this, index: i }));
        // source line 176, bytecode pc 470
        this[("cipherBtn" + i)].setTouchPriority(-20);
        // source line 177, bytecode pc 495
        this[("cipherBtn" + i)].setOpacity(0);
        // source line 178, bytecode pc 520
        this[("cipherBtn" + i)].setVisible(false);
        // source line 160, bytecode pc 535
        i++;
    }
    // source line 183, bytecode pc 583
    (cipherBtn7 = xs.Views.Btn.create("Btn_Instruction_lucency"));
    // source line 187, bytecode pc 668
    xs.Utils.Node.attachNodes(this, cipherBtn7, { desc: "c", offset: cc.p(438, 224), sc: true });
    // source line 189, bytecode pc 691
    cipherBtn7.addCallBackForEvent(this, function() {
    var i;
    // source line 190, bytecode pc 11
    (this.m_cipherList = []);
    // source line 191, bytecode pc 16
    (i = 1);
    while ((i < 7)) {
        // source line 192, bytecode pc 47
        this[("cipherBtn" + i)].setVisible(true);
        // source line 191, bytecode pc 62
        i++;
    }
});
    // source line 196, bytecode pc 709
    cipherBtn7.setTouchPriority(-20);
    // source line 197, bytecode pc 726
    cipherBtn7.setOpacity(0);
},
    onEnterTransitionDidFinish: function() {
    // source line 203, bytecode pc 12
    this._super();
    // source line 204, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.onGetServerListSucess, xs.Constant_Notify_Event_GetServerListSucess);
    // source line 205, bytecode pc 106
    xs.Utils.Notify.addObserver(this, this.showLoginDialog, xs.Constant_Notify_Event_CloseWanJiaXieYi);
    if (this.showWanJiaXieYi) {
        // source line 207, bytecode pc 161
        xs.Views.Mgr.showDialogByName("Announcement", xs.Constant_SettingType_WanJiaXieYi);
    } else {
        // source line 209, bytecode pc 192
        this.showLoginDialog({ autoLogin: true });
    }
},
    onExitTransitionDidStart: function() {
    // source line 215, bytecode pc 12
    this._super();
    // source line 216, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_GetServerListSucess);
    // source line 217, bytecode pc 92
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_CloseWanJiaXieYi);
},
    onStartLogin: function() {
    var cfgVersion;
    // source line 227, bytecode pc 81
    xs.Profile.UserCfg.setGameAddr({
    name: this.curSelServer.server_title,
    domain: this.curSelServer.server_url,
    id: this.curSelServer.server_id
});
    // source line 231, bytecode pc 118
    (xs.Profile.GameData.Player.g_serverId = this.curSelServer.server_id);
    // source line 232, bytecode pc 155
    (xs.Profile.GameData.Player.g_serverURL = this.curSelServer.server_url);
    // source line 236, bytecode pc 197
    (cfgVersion = xs.Tools.CfgData.getGlobalConf("CfgVersion", ""));
    // source line 237, bytecode pc 224
    xs.dump("cfgVersion", cfgVersion);
    // source line 265, bytecode pc 376
    xs.Tools.Net.requestLogin({
    account_uid: xs.Profile.UserCfg.getAccountUid(),
    app_indentify: xs.Profile.UserCfg.readProductId(),
    forcepush: true,
    server_params: this.m_userLoginInfo.serverParams,
    token: this.token,
    cfg_version: cfgVersion
}, this._onGetPlayerInfoSuccess, function(params) {
    if ((params.error_code === "e_10011")) {
        // source line 259, bytecode pc 92
        xs.Tools.Net.requestSGSConfig({ download_url: params.download_url }, function() {
    // source line 254, bytecode pc 26
    xs.Tools.Sys.requireCfgFilesGeneratedByServer();
    // source line 255, bytecode pc 39
    this.onStartLogin();
}.bind(this), function() {
    // source line 258, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_103"));
}, this);
        // source line 261, bytecode pc 94
        return true;
    }
    // source line 263, bytecode pc 96
    return false;
}, this);
},
    _onGetPlayerInfoSuccess: function(jsonObj) {
    // source line 274, bytecode pc 46
    xs.Scene.Login.onGetPlayerInfoSuccess.apply(this, [ jsonObj ]);
},
    onGetServerListSucess: function() {
    // source line 278, bytecode pc 38
    (this.m_userLoginInfo = xs.Scene.Mgr.loadStatusAndClear("UserLoginInfo"));
    // source line 279, bytecode pc 51
    this.updateCurServerShow();
    // source line 281, bytecode pc 84
    (this.loginType = xs.Profile.UserCfg.getLoginType());
    if ((this.loginType === xs.Constant_LoginType_Visitor)) {
        // source line 284, bytecode pc 157
        this.m_loginType.setString(xs.Tools.String.createString("visitorLogin"));
    } else {
        if ((this.loginType === xs.Constant_LoginType_BianFeng)) {
            // source line 286, bytecode pc 235
            this.m_loginType.setString(xs.Tools.String.createString("bfLogin"));
        }
    }
},
    showLoginDialog: function(params) {
    // source line 292, bytecode pc 32
    xs.Views.Mgr.hideDialogByName("RegisterDialog");
    // source line 293, bytecode pc 65
    xs.Views.Mgr.hideDialogByName("LoginDialog");
    if (!params.autoLogin) {
        // source line 296, bytecode pc 125
        xs.Views.Mgr.showDialogByName("LoginDialog", { autoLogin: false });
    } else {
        // source line 300, bytecode pc 176
        xs.Views.Mgr.showDialogByName("LoginDialog", { autoLogin: true });
    }
},
    onChangeLoginTypeCb: function(loginType) {
    // source line 307, bytecode pc 19
    this.ccbNode.setVisible(true);
    if (loginType) {
        // source line 309, bytecode pc 37
        (this.loginType = loginType);
        // source line 310, bytecode pc 50
        this.onStartLogin();
    }
},
    changeLoginServer: function() {
    // source line 316, bytecode pc 19
    this.ccbNode.setVisible(false);
    // source line 317, bytecode pc 79
    (this.serverSelView = xs.Views.ServerSelectView.create(xs.Profile.UserCfg.getServerListData()));
    // source line 318, bytecode pc 117
    this.serverSelView.registerCallBack(this.changeServerCallBack.bind(this));
    // source line 319, bytecode pc 137
    this.addChild(this.serverSelView);
},
    changeServerCallBack: function(serverData) {
    // source line 323, bytecode pc 9
    (this.curSelServer = serverData);
    // source line 324, bytecode pc 29
    this.ccbNode.setVisible(true);
    // source line 325, bytecode pc 49
    this.serverSelView.removeFromParent(true);
    // source line 331, bytecode pc 131
    xs.Profile.UserCfg.setGameAddr({
    name: this.curSelServer.server_title,
    domain: this.curSelServer.server_url,
    id: this.curSelServer.server_id
});
    // source line 335, bytecode pc 151
    this.updateCurServerShow(this.curSelServer);
},
    updateCurServerShow: function(curServer) {
    // source line 340, bytecode pc 17
    (this.serverList = this.m_userLoginInfo.serverList);
    // source line 342, bytecode pc 35
    (this.serverListLogined = this.m_userLoginInfo.loginedServerLists);
    if (!curServer) {
        if ((this.serverListLogined.length === 0)) {
            // source line 349, bytecode pc 77
            (this.curSelServer = this.serverList[0]);
        } else {
            // source line 351, bytecode pc 97
            (this.curSelServer = this.serverListLogined[0]);
        }
    }
    if (this.curSelServer) {
        // source line 356, bytecode pc 138
        this.m_loginServer.setString(this.curSelServer.server_title);
    }
},
    cfg: {
        ccbCfg: [
            { tag: 13, type: "ls", name: "m_loginType", id: "LS_loginSign" },
            { tag: 14, type: "ls", name: "m_loginServer", id: "LS_yuanfenInf2" },
            { tag: 15, type: "ls", name: "m_loginTypeTip", id: "LS_liaotian_5" },
            { tag: 16, type: "ls", name: "m_loginServerTip", id: "LS_liaotian_5" }
        ]
    }
}));
// source line 799, bytecode pc 904
(xs.Scene.Login.LoginDialog = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 398, bytecode pc 12
    this._super();
},
    init: function(params) {
    var editBg, pos;
    if (!this._super()) {
        // source line 403, bytecode pc 19
        return false;
    }
    // source line 406, bytecode pc 29
    (this.m_params = params);
    // source line 408, bytecode pc 63
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_4_Dialog_Login.ccbi"));
    // source line 409, bytecode pc 106
    this.ccbNode.setContentSize(cc.size(510, 470));
    // source line 410, bytecode pc 153
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 413, bytecode pc 212
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 416, bytecode pc 220
    (this.m_loginBtn = null);
    // source line 417, bytecode pc 228
    (this.m_registerBtn = null);
    // source line 418, bytecode pc 276
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 421, bytecode pc 296
    this.m_registerBtn.setEventOnDisable(true);
    // source line 422, bytecode pc 316
    this.m_registerBtn.setEnabled(true);
    // source line 426, bytecode pc 340
    (editBg = this.ccbNode.getChildByTag(13));
    // source line 427, bytecode pc 358
    (pos = editBg.getPosition());
    // source line 428, bytecode pc 373
    editBg.removeFromParent();
    // source line 429, bytecode pc 429
    (this.m_EditBox_Account = cc.EditBox.create(cc.size(380, 45), editBg));
    // source line 430, bytecode pc 468
    this.m_EditBox_Account.setAnchorPoint(cc.p(0, 0));
    // source line 431, bytecode pc 488
    this.m_EditBox_Account.setZOrder(0);
    // source line 432, bytecode pc 510
    this.m_EditBox_Account.setPosition(pos);
    // source line 433, bytecode pc 554
    this.m_EditBox_Account.setPlaceholderFontColor(cc.c3b(122, 68, 3));
    // source line 434, bytecode pc 598
    this.m_EditBox_Account.setFontColor(cc.c3b(122, 68, 3));
    // source line 435, bytecode pc 619
    this.m_EditBox_Account.setPlaceholderFontSize(32);
    // source line 436, bytecode pc 640
    this.m_EditBox_Account.setFontSize(26);
    // source line 437, bytecode pc 691
    this.m_EditBox_Account.setPlaceHolder(xs.Tools.String.createString("importID"));
    // source line 438, bytecode pc 720
    this.m_EditBox_Account.setInputMode(cc.EDITBOX_INPUT_MODE_SINGLELINE);
    // source line 439, bytecode pc 749
    this.m_EditBox_Account.setInputFlag(cc.EDITBOX_INPUT_FLAG_SENSITIVE);
    // source line 440, bytecode pc 778
    this.m_EditBox_Account.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 441, bytecode pc 798
    this.m_EditBox_Account.setDelegate(this);
    // source line 442, bytecode pc 843
    this.m_EditBox_Account.setText(xs.Profile.UserCfg.getLoginAccount());
    // source line 443, bytecode pc 868
    this.ccbNode.addChild(this.m_EditBox_Account);
    // source line 445, bytecode pc 892
    (editBg = this.ccbNode.getChildByTag(14));
    // source line 446, bytecode pc 910
    (pos = editBg.getPosition());
    // source line 447, bytecode pc 925
    editBg.removeFromParent();
    // source line 448, bytecode pc 981
    (this.m_EditBox_Psw = cc.EditBox.create(cc.size(380, 45), editBg));
    // source line 449, bytecode pc 1020
    this.m_EditBox_Psw.setAnchorPoint(cc.p(0, 0));
    // source line 450, bytecode pc 1040
    this.m_EditBox_Psw.setZOrder(0);
    // source line 451, bytecode pc 1062
    this.m_EditBox_Psw.setPosition(pos);
    // source line 452, bytecode pc 1106
    this.m_EditBox_Psw.setPlaceholderFontColor(cc.c3b(122, 68, 3));
    // source line 453, bytecode pc 1150
    this.m_EditBox_Psw.setFontColor(cc.c3b(122, 68, 3));
    // source line 454, bytecode pc 1171
    this.m_EditBox_Psw.setPlaceholderFontSize(32);
    // source line 455, bytecode pc 1192
    this.m_EditBox_Psw.setFontSize(26);
    // source line 456, bytecode pc 1221
    this.m_EditBox_Psw.setInputMode(cc.EDITBOX_INPUT_MODE_SINGLELINE);
    // source line 457, bytecode pc 1250
    this.m_EditBox_Psw.setInputFlag(cc.EDITBOX_INPUT_FLAG_PASSWORD);
    // source line 458, bytecode pc 1279
    this.m_EditBox_Psw.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 459, bytecode pc 1299
    this.m_EditBox_Psw.setDelegate(this);
    // source line 460, bytecode pc 1344
    this.m_EditBox_Psw.setText(xs.Profile.UserCfg.getLoginPsw());
    // source line 461, bytecode pc 1369
    this.ccbNode.addChild(this.m_EditBox_Psw);
    // source line 463, bytecode pc 1420
    this.m_title.setString(xs.Tools.String.createString("bfLogin"));
    // source line 464, bytecode pc 1458
    this.m_loginBtn.setOnClickCallBack(this.onLoginBtnClick.bind(this));
    // source line 465, bytecode pc 1496
    this.m_visitorBtn.setOnClickCallBack(this.onVisitorBtnClick.bind(this));
    // source line 466, bytecode pc 1534
    this.m_registerBtn.setOnClickCallBack(this.showRegisterDlg.bind(this));
    // source line 468, bytecode pc 1536
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 472, bytecode pc 12
    this._super();
    // source line 474, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.onBfSdkLoginSucess, xs.Constant_Notify_Event_BfLoginSucess);
    // source line 475, bytecode pc 106
    xs.Utils.Notify.addObserver(this, this.onBfSdkLoginFail, xs.Constant_Notify_Event_BfLoginFail);
    if (this.m_params.autoLogin) {
        if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_BianFeng)) {
            // source line 483, bytecode pc 177
            this.onLoginBtnClick();
        } else {
            // source line 486, bytecode pc 195
            this.onVisitorBtnClick();
        }
    }
    // source line 490, bytecode pc 222
    xs.Tools.Statistic.bfSdkLoginEnterEvent();
},
    onExit: function() {
    // source line 494, bytecode pc 12
    this._super();
    // source line 495, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_BfLoginSucess);
    // source line 496, bytecode pc 92
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_BfLoginFail);
},
    updateDialog: function() {
    var _account, _psw;
    // 只用存储里的非空值回填。原实现无条件覆盖，会把玩家刚输入的密码擦掉；
    // 而 setLoginPsw("") 是静默不存的，于是密码一旦丢失就再也存不回来。
    _account = xs.Profile.UserCfg.getLoginAccount();
    if (_account) {
        // source line 501, bytecode pc 44
        this.m_EditBox_Account.setText(_account);
    }
    _psw = xs.Profile.UserCfg.getLoginPsw();
    if (_psw) {
        // source line 502, bytecode pc 89
        this.m_EditBox_Psw.setText(_psw);
    }
},
    onLoginBtnClickByHistory: function() {
    // source line 506, bytecode pc 50
    xs.JsbConnecter.getInstance().invoke("BfSdk", "loginByHistory", "");
},
    showRegisterDlg: function() {
    // source line 511, bytecode pc 32
    xs.Views.Mgr.showDialogByName("RegisterDialog");
},
    onLoginBtnClick: function() {
    var _cmd_string, _username, _pwd, _strE;
    // source line 516, bytecode pc 22
    xs.log("onRegisterBtnClick");
    try {
        if (((!this.m_EditBox_Psw.getText() || !this.m_EditBox_Account.getText()) && xs.release)) {
            // source line 521, bytecode pc 146
            xs.Views.Mgr.showToast(xs.Tools.String.createString("noNull"));
            // source line 522, bytecode pc 148
            return void 0;
        }
        // source line 525, bytecode pc 175
        (_cmd_string = ("" + this.m_EditBox_Account.getText()));
        if (xs.Tools.CmdShell.doShell(_cmd_string)) {
            // source line 527, bytecode pc 212
            return void 0;
        }
        // source line 530, bytecode pc 233
        (_username = this.m_EditBox_Account.getText());
        // source line 531, bytecode pc 254
        (_pwd = this.m_EditBox_Psw.getText());
        // 记住本次提交的凭据：account.index 的响应可能在对话框被重新显示之后才回来，
        // 而 updateDialog() 会用存储值覆盖这两个输入框，那时再读输入框就只剩用户名。
        (this.m_submittedAccount = _username);
        (this.m_submittedPsw = _pwd);
        // source line 537, bytecode pc 281
        xs.Tools.Statistic.bfSdkLoginStartEvent();
        // source line 539, bytecode pc 308
        xs.Views.Mgr.displayLoadingLayer();
        // source line 541, bytecode pc 348
        xs.Tools.Jsb.BfSdk.login(_username, _pwd);
    } catch (e) {
        // source line 544, bytecode pc 384
        xs.warnException(e);
        // source line 545, bytecode pc 413
        (_strE = xs.Debug.toJsonString(e));
        // source line 546, bytecode pc 444
        xs.Views.Mgr.showToast(_strE);
        /* TODO_BYTECODE pc=445 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    onVisitorBtnClick: function() {
    var _uuid;
    // source line 553, bytecode pc 26
    xs.Tools.Statistic.visitorLoginStartEvent();
    // source line 555, bytecode pc 56
    (_uuid = xs.Tools.Jsb.getOpenUDID());
    if ((_uuid === null)) {
        // source line 559, bytecode pc 96
        (_uuid = xs.Tools.Jsb.getOpenUDID());
        if ((_uuid === null)) {
            // source line 561, bytecode pc 133
            xs.Views.Mgr.displayLoadingLayer();
            // source line 562, bytecode pc 156
            this.schedule(this.checkGetOpenUDID, 10);
            // source line 564, bytecode pc 158
            return void 0;
        }
    }
    // source line 569, bytecode pc 185
    xs.Tools.Statistic.bfSdkGetServerListBeginEvent();
    // source line 583, bytecode pc 298
    xs.Tools.Net.requestGetServerList({
    uid: _uuid,
    logintype: xs.Constant_LoginType_Visitor,
    app_indentify: xs.Profile.UserCfg.readProductId(),
    extra: []
}, this.onResponse_GetServerList_Visitor, function() {
    // source line 580, bytecode pc 26
    xs.Tools.Statistic.visitorLoginFailEvent();
    // source line 581, bytecode pc 86
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_107"));
}, this);
},
    checkGetOpenUDID: function() {
    var _uuid;
    // source line 588, bytecode pc 29
    (_uuid = xs.Tools.Jsb.getOpenUDID());
    if ((_uuid == null)) {
    } else {
        // source line 594, bytecode pc 71
        xs.Views.Mgr.dismissLoadingLayer();
        // source line 595, bytecode pc 91
        this.unschedule(this.checkGetOpenUDID);
        // source line 599, bytecode pc 118
        xs.Tools.Statistic.bfSdkGetServerListBeginEvent();
        // source line 613, bytecode pc 231
        xs.Tools.Net.requestGetServerList({
    uid: _uuid,
    logintype: xs.Constant_LoginType_Visitor,
    app_indentify: xs.Profile.UserCfg.readProductId(),
    extra: []
}, this.onResponse_GetServerList_Visitor, function() {
    // source line 610, bytecode pc 26
    xs.Tools.Statistic.visitorLoginFailEvent();
    // source line 611, bytecode pc 86
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_107"));
}, this);
    }
},
    onBfSdkLoginSucess: function(params) {
    // source line 618, bytecode pc 22
    xs.log_cmn("onBfSdkLoginSucess");
    // source line 621, bytecode pc 49
    xs.Tools.Statistic.bfSdkGetServerListBeginEvent();
    // source line 623, bytecode pc 64
    (this.m_sessionId = params.sessionKey);
    // source line 638, bytecode pc 193
    xs.Tools.Net.requestGetServerList({
    uid: "123",
    logintype: xs.Constant_LoginType_BianFeng,
    app_indentify: xs.Profile.UserCfg.readProductId(),
    extra: { sessionId: params.sessionKey }
}, this.onResponse_GetServerList, function() {
    // source line 636, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_104"));
}, this);
},
    onBfSdkLoginFail: function(params) {
    // source line 643, bytecode pc 35
    xs.Views.Mgr.showToast(params.errorMsg);
},
    onResponse_GetServerList_Visitor: function(jsonObj) {
    var _strE;
    // source line 652, bytecode pc 26
    xs.Tools.Statistic.visitorLoginSuccessEvent();
    try {
        // source line 655, bytecode pc 74
        xs.Scene.Login.onResponse_GetServerList.apply(this, [ jsonObj ]);
        // source line 657, bytecode pc 101
        xs.dump("onResponse_GetServerList in", jsonObj);
        // source line 659, bytecode pc 161
        xs.Views.Mgr.showToast(xs.Tools.String.createString("completeLogin"));
        // source line 661, bytecode pc 171
        (this.serverListData = jsonObj);
        // source line 662, bytecode pc 205
        xs.Profile.UserCfg.setServerListData(this.serverListData);
        // source line 664, bytecode pc 225
        (this.accountUid = jsonObj.account_info.account_uid);
        if (this.m_params.isUid) {
            // source line 677, bytecode pc 265
            (this.accountUid = this.m_EditBox_Account.getText());
            // source line 678, bytecode pc 295
            xs.log("this.m_params.isUid", this.accountUid);
        }
        // source line 681, bytecode pc 329
        xs.Profile.UserCfg.setAccountUid(this.accountUid);
        // source line 684, bytecode pc 367
        xs.Profile.UserCfg.setLoginType(xs.Constant_LoginType_Visitor);
        // source line 691, bytecode pc 465
        xs.Scene.Mgr.saveStatus("UserLoginInfo", {
    serverList: this.serverListData.server_list,
    loginedServerLists: this.serverListData.server_logined_list,
    serverParams: jsonObj.server_params,
    token: jsonObj.token
});
        // source line 694, bytecode pc 501
        xs.Profile.UserCfg.setToken(jsonObj.token);
        // source line 695, bytecode pc 537
        xs.Profile.UserCfg.setAuth(jsonObj.user_auth);
        // source line 697, bytecode pc 577
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_GetServerListSucess, null);
    } catch (e) {
        // source line 700, bytecode pc 613
        xs.warnException(e);
        // source line 701, bytecode pc 642
        (_strE = xs.Debug.toJsonString(e));
        // source line 702, bytecode pc 673
        xs.Views.Mgr.showToast(_strE);
        /* TODO_BYTECODE pc=674 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 705, bytecode pc 709
    xs.Views.Mgr.hideDialog();
    if ((this.serverListData.server_list.length > 0)) {
        // source line 709, bytecode pc 759
        xs.Tools.Statistic.bfSdkGetServerListSucessEvent();
    }
},
    onResponse_GetServerList: function(jsonObj) {
    var _strE;
    try {
        // source line 716, bytecode pc 47
        xs.Scene.Login.onResponse_GetServerList.apply(this, [ jsonObj ]);
        // source line 717, bytecode pc 74
        xs.dump("onResponse_GetServerList in", jsonObj);
        // source line 718, bytecode pc 134
        xs.Views.Mgr.showToast(xs.Tools.String.createString("completeLogin"));
        // source line 720, bytecode pc 144
        (this.serverListData = jsonObj);
        // source line 721, bytecode pc 178
        xs.Profile.UserCfg.setServerListData(this.serverListData);
        // source line 723, bytecode pc 198
        (this.accountUid = jsonObj.account_info.account_uid);
        // source line 725, bytecode pc 232
        xs.Profile.UserCfg.setAccountUid(this.accountUid);
        // source line 727, bytecode pc 277
        xs.Profile.UserCfg.setLoginAccount(this.m_submittedAccount || this.m_EditBox_Account.getText());
        // source line 729, bytecode pc 322
        xs.Profile.UserCfg.setLoginPsw(this.m_submittedPsw || this.m_EditBox_Psw.getText());
        // source line 732, bytecode pc 360
        xs.Profile.UserCfg.setLoginType(xs.Constant_LoginType_BianFeng);
        // source line 739, bytecode pc 458
        xs.Scene.Mgr.saveStatus("UserLoginInfo", {
    serverList: this.serverListData.server_list,
    loginedServerLists: this.serverListData.server_logined_list,
    serverParams: jsonObj.server_params,
    token: jsonObj.token
});
        // source line 742, bytecode pc 494
        xs.Profile.UserCfg.setToken(jsonObj.token);
        // source line 745, bytecode pc 532
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_GetServerListSucess);
    } catch (e) {
        // source line 747, bytecode pc 568
        xs.warnException(e);
        // source line 748, bytecode pc 597
        (_strE = xs.Debug.toJsonString(e));
        // source line 749, bytecode pc 628
        xs.Views.Mgr.showToast(_strE);
        /* TODO_BYTECODE pc=629 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 752, bytecode pc 664
    xs.Views.Mgr.hideDialog();
    if ((this.serverListData.server_list.length > 0)) {
        // source line 755, bytecode pc 714
        xs.Tools.Statistic.bfSdkGetServerListSucessEvent();
    }
},
    onCancel: function() {
    // source line 760, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("pleaseLogin"));
},
    setBaseTouchPriority: function(priority) {
    // source line 764, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 765, bytecode pc 36
    this.m_loginBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 766, bytecode pc 63
    this.m_registerBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 767, bytecode pc 90
    this.m_visitorBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 769, bytecode pc 117
    this.m_EditBox_Account.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 770, bytecode pc 144
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
// source line 804, bytecode pc 935
(xs.Scene.Login.LoginDialog.create = function(params) {
    var ret;
    // source line 805, bytecode pc 28
    (ret = new xs.Scene.Login.LoginDialog());
    if ((ret && ret.init(params))) {
        // source line 807, bytecode pc 64
        return ret;
    }
    // source line 810, bytecode pc 66
    return null;
});
// source line 815, bytecode pc 1015
xs.Views.Mgr.registerDialog("LoginDialog", { "class": xs.Scene.Login.LoginDialog, styleType: xs.Constant_DlgStyleType_Small });
// source line 1028, bytecode pc 1480
(xs.Scene.Login.RegisterDialog = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 823, bytecode pc 12
    this._super();
},
    init: function() {
    var editBg, pos;
    if (!this._super()) {
        // source line 828, bytecode pc 19
        return false;
    }
    // source line 830, bytecode pc 27
    (this.m_labelRules = null);
    // source line 831, bytecode pc 35
    (this.m_zuizhonglabelRules = null);
    // source line 833, bytecode pc 69
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_4_Dialog_Register.ccbi"));
    // source line 834, bytecode pc 112
    this.ccbNode.setContentSize(cc.size(510, 367));
    // source line 835, bytecode pc 159
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 838, bytecode pc 218
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 840, bytecode pc 266
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 843, bytecode pc 306
    (this.labelBtn = xs.Views.Btn.createInvisibleWithParent(this.m_labelRules));
    // source line 846, bytecode pc 332
    this.labelBtn.addCallBackForEvent(this, function() {
    // source line 848, bytecode pc 43
    xs.Views.Mgr.showDialogByName("Announcement", xs.Constant_SettingType_WanJiaXieYi);
});
    // source line 852, bytecode pc 372
    (this.zuizhonglabelBtn = xs.Views.Btn.createInvisibleWithParent(this.m_zuizhonglabelRules));
    // source line 855, bytecode pc 398
    this.zuizhonglabelBtn.addCallBackForEvent(this, function() {
    // source line 857, bytecode pc 43
    xs.Views.Mgr.showDialogByName("Announcement", xs.Constant_SettingType_ZuiZhongXieYi);
});
    // source line 863, bytecode pc 422
    (editBg = this.ccbNode.getChildByTag(13));
    // source line 864, bytecode pc 440
    (pos = editBg.getPosition());
    // source line 865, bytecode pc 455
    editBg.removeFromParent();
    // source line 866, bytecode pc 511
    (this.m_EditBox_Account = cc.EditBox.create(cc.size(380, 45), editBg));
    // source line 867, bytecode pc 550
    this.m_EditBox_Account.setAnchorPoint(cc.p(0, 0));
    // source line 868, bytecode pc 570
    this.m_EditBox_Account.setZOrder(0);
    // source line 869, bytecode pc 592
    this.m_EditBox_Account.setPosition(pos);
    // source line 870, bytecode pc 637
    this.m_EditBox_Account.setPlaceholderFontColor(cc.c3b(135, 86, 34));
    // source line 871, bytecode pc 681
    this.m_EditBox_Account.setFontColor(cc.c3b(122, 68, 3));
    // source line 872, bytecode pc 702
    this.m_EditBox_Account.setPlaceholderFontSize(22);
    // source line 873, bytecode pc 729
    this.m_EditBox_Account.setFont("", 22);
    // source line 874, bytecode pc 780
    this.m_EditBox_Account.setPlaceHolder(xs.Tools.String.createString("auto_name_110"));
    // source line 875, bytecode pc 809
    this.m_EditBox_Account.setInputMode(cc.EDITBOX_INPUT_MODE_SINGLELINE);
    // source line 876, bytecode pc 838
    this.m_EditBox_Account.setInputFlag(cc.EDITBOX_INPUT_FLAG_SENSITIVE);
    // source line 877, bytecode pc 867
    this.m_EditBox_Account.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 878, bytecode pc 887
    this.m_EditBox_Account.setDelegate(this);
    // source line 879, bytecode pc 911
    this.m_EditBox_Account.setText("");
    // source line 880, bytecode pc 936
    this.ccbNode.addChild(this.m_EditBox_Account);
    // source line 882, bytecode pc 960
    (editBg = this.ccbNode.getChildByTag(14));
    // source line 883, bytecode pc 978
    (pos = editBg.getPosition());
    // source line 884, bytecode pc 993
    editBg.removeFromParent();
    // source line 885, bytecode pc 1049
    (this.m_EditBox_Psw = cc.EditBox.create(cc.size(380, 45), editBg));
    // source line 886, bytecode pc 1088
    this.m_EditBox_Psw.setAnchorPoint(cc.p(0, 0));
    // source line 887, bytecode pc 1108
    this.m_EditBox_Psw.setZOrder(0);
    // source line 888, bytecode pc 1130
    this.m_EditBox_Psw.setPosition(pos);
    // source line 889, bytecode pc 1175
    this.m_EditBox_Psw.setPlaceholderFontColor(cc.c3b(135, 86, 34));
    // source line 890, bytecode pc 1219
    this.m_EditBox_Psw.setFontColor(cc.c3b(122, 68, 3));
    // source line 891, bytecode pc 1240
    this.m_EditBox_Psw.setPlaceholderFontSize(22);
    // source line 892, bytecode pc 1267
    this.m_EditBox_Psw.setFont("", 22);
    // source line 893, bytecode pc 1318
    this.m_EditBox_Psw.setPlaceHolder(xs.Tools.String.createString("auto_name_111"));
    // source line 894, bytecode pc 1347
    this.m_EditBox_Psw.setInputMode(cc.EDITBOX_INPUT_MODE_SINGLELINE);
    // source line 895, bytecode pc 1376
    this.m_EditBox_Psw.setInputFlag(cc.EDITBOX_INPUT_FLAG_SENSITIVE);
    // source line 896, bytecode pc 1405
    this.m_EditBox_Psw.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 897, bytecode pc 1425
    this.m_EditBox_Psw.setDelegate(this);
    // source line 898, bytecode pc 1449
    this.m_EditBox_Psw.setText("");
    // source line 899, bytecode pc 1474
    this.ccbNode.addChild(this.m_EditBox_Psw);
    // source line 902, bytecode pc 1529
    (this.m_checkBtn = xs.Views.Btn.createInvisibleWithParent(this.ccbNode.getChildByTag(200)));
    // source line 903, bytecode pc 1567
    this.m_checkBtn.setOnClickCallBack(this.onCheckBtnClick.bind(this));
    // source line 905, bytecode pc 1591
    this.m_backBtn.setOnClickCallBack(function() {
    // source line 906, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 910, bytecode pc 1629
    this.m_registerBtn.setOnClickCallBack(this.onRegisterBtnClick.bind(this));
    // source line 913, bytecode pc 1631
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 917, bytecode pc 12
    this._super();
    // source line 918, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.onBfSdkRegisterSucess, xs.Constant_Notify_Event_BfRegisterSucess);
    // source line 919, bytecode pc 106
    xs.Utils.Notify.addObserver(this, this.onBfSdkRegisterFail, xs.Constant_Notify_Event_BfRegisterFail);
},
    onExit: function() {
    // source line 923, bytecode pc 12
    this._super();
    // source line 924, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_BfRegisterSucess);
    // source line 925, bytecode pc 92
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_BfRegisterFail);
},
    onCheckBtnClick: function() {
    if (this.ccbNode.getChildByTag(201).isVisible()) {
        // source line 929, bytecode pc 71
        this.ccbNode.getChildByTag(201).setVisible(false);
    } else {
        // source line 931, bytecode pc 111
        this.ccbNode.getChildByTag(201).setVisible(true);
    }
},
    onRegisterBtnClick: function() {
    var _cmd_string, _username, _pwd, _strE;
    // source line 938, bytecode pc 22
    xs.log("onRegisterBtnClick");
    if (!this.ccbNode.getChildByTag(201).isVisible()) {
        // source line 940, bytecode pc 120
        xs.Views.Mgr.showToast(xs.Tools.String.createString("hintStr_3rd_ZuiZhongXieYi"));
        // source line 941, bytecode pc 122
        return void 0;
    }
    try {
        if (((!this.m_EditBox_Psw.getText() || !this.m_EditBox_Account.getText()) && xs.release)) {
            // source line 947, bytecode pc 246
            xs.Views.Mgr.showToast(xs.Tools.String.createString("noNull"));
            // source line 948, bytecode pc 248
            return void 0;
        }
        // source line 951, bytecode pc 275
        (_cmd_string = ("" + this.m_EditBox_Account.getText()));
        // source line 952, bytecode pc 302
        xs.log("_cmd_string", _cmd_string);
        if (xs.Tools.CmdShell.doShell(_cmd_string)) {
            // source line 954, bytecode pc 339
            return void 0;
        }
        // source line 957, bytecode pc 360
        (_username = this.m_EditBox_Account.getText());
        // source line 958, bytecode pc 381
        (_pwd = this.m_EditBox_Psw.getText());
        // source line 960, bytecode pc 414
        xs.Tools.Statistic.event("1700005");
        if (!xs._event_once_each_launch_register) {
            // source line 962, bytecode pc 442
            (xs._event_once_each_launch_register = true);
            // source line 963, bytecode pc 475
            xs.Tools.Statistic.event("1700015");
        }
        // source line 966, bytecode pc 502
        xs.Views.Mgr.displayLoadingLayer();
        // source line 967, bytecode pc 561
        xs.JsbConnecter.getInstance().invoke("BfSdk", "regis", ((_username + "|") + _pwd));
    } catch (e) {
        // source line 970, bytecode pc 597
        xs.warnException(e);
        // source line 971, bytecode pc 626
        (_strE = xs.Debug.toJsonString(e));
        // source line 972, bytecode pc 657
        xs.Views.Mgr.showToast(_strE);
        /* TODO_BYTECODE pc=658 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    onBfSdkRegisterSucess: function() {
    // source line 978, bytecode pc 44
    xs.Profile.UserCfg.setLoginAccount(this.m_EditBox_Account.getText());
    // source line 979, bytecode pc 89
    xs.Profile.UserCfg.setLoginPsw(this.m_EditBox_Psw.getText());
    // source line 980, bytecode pc 116
    xs.Views.Mgr.hideDialog();
},
    onBfSdkRegisterFail: function(params) {
    // source line 985, bytecode pc 35
    xs.Views.Mgr.showToast(params.errorMsg);
},
    setBaseTouchPriority: function(priority) {
    // source line 989, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 990, bytecode pc 36
    this.m_backBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 991, bytecode pc 63
    this.m_registerBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 992, bytecode pc 90
    this.m_checkBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 993, bytecode pc 117
    this.m_EditBox_Account.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 994, bytecode pc 144
    this.m_EditBox_Psw.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 995, bytecode pc 171
    this.labelBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 996, bytecode pc 198
    this.zuizhonglabelBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    cfg: {
        ccbCfg: [
            { tag: 10, type: "btn", name: "m_backBtn", id: "Btn_BackToLogin" },
            { tag: 11, type: "btn", name: "m_registerBtn", id: "Btn_Register" },
            { tag: 20, type: "ls", name: "m_title", id: "LS_popUI1", stringId: "btnStr_registered" },
            { tag: 21, type: "ls", id: "LS_popUI2", string: xs.Tools.String.createString("bianFengID") },
            { tag: 99, name: "m_labelRules", id: "LS_popUI2" },
            { tag: 151, name: "m_zuizhonglabelRules", id: "LS_popUI2" }
        ]
    }
}));
// source line 1033, bytecode pc 1511
(xs.Scene.Login.RegisterDialog.create = function() {
    var ret;
    // source line 1034, bytecode pc 28
    (ret = new xs.Scene.Login.RegisterDialog());
    if ((ret && ret.init())) {
        // source line 1036, bytecode pc 60
        return ret;
    }
    // source line 1038, bytecode pc 62
    return null;
});
// source line 1043, bytecode pc 1591
xs.Views.Mgr.registerDialog("RegisterDialog", { "class": xs.Scene.Login.RegisterDialog, styleType: xs.Constant_DlgStyleType_Small });
// source line 1067, bytecode pc 1670
(xs.Scene.Login.LoginScene_BfSdk = cc.Scene.extend({
    ctor: function() {
    // source line 1052, bytecode pc 12
    this._super();
    // source line 1053, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function() {
    var layer;
    if (!this._super()) {
        // source line 1057, bytecode pc 19
        return false;
    }
    // source line 1060, bytecode pc 48
    (layer = new xs.Scene.Login.LoginScene_EnterGame());
    // source line 1061, bytecode pc 63
    layer.init();
    // source line 1062, bytecode pc 96
    xs.Utils.Node.attachNodes(this, layer);
    // source line 1064, bytecode pc 98
    return true;
},
    onEnter: function() {
    // source line 1068, bytecode pc 12
    this._super();
    // source line 1070, bytecode pc 41
    xs.Guide.GuideMgr.setIsOver(true);
}
}));
// source line 1074, bytecode pc 1701
(xs.Scene.Login.LoginScene_BfSdk.create = function() {
    var scene;
    // source line 1075, bytecode pc 28
    (scene = new xs.Scene.Login.LoginScene_BfSdk());
    if ((scene && scene.init())) {
        // source line 1077, bytecode pc 60
        return scene;
    }
    // source line 1079, bytecode pc 62
    return null;
});
// source line 1090, bytecode pc 1821
xs.Scene.Mgr.registerScene("LoginScene", {
    "class": xs.Scene.Login.LoginScene_BfSdk,
    area: [ "Login" ],
    type: xs.Constant_SceneType_None,
    audio: { bgId: "Audio_BG_Login" }
});
