// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Setting/SettingScene.js:1
// source line 13, bytecode pc 63
(xs.Scene.SettingScene = cc.Scene.extend({
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function() {
    var visibleSize, playerInfo, mainMenu;
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    // source line 18, bytecode pc 44
    (visibleSize = xs.director.getVisibleSize());
    // source line 21, bytecode pc 77
    xs.Tools.UI.addCommonBg(this, true, true);
    // source line 24, bytecode pc 107
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 25, bytecode pc 143
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 28, bytecode pc 199
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 32, bytecode pc 291
    (this.pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 33, bytecode pc 311
    this.pageView.setListener(this);
    // source line 34, bytecode pc 378
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("auto_name_196"), xs.Views.SettingLayer);
    // source line 37, bytecode pc 437
    xs.Utils.Node.attachNodes(this, this.pageView, { desc: "lb", sc: true });
    // source line 41, bytecode pc 471
    (mainMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 42, bytecode pc 494
    xs.log_zhz("init finish");
    // source line 43, bytecode pc 496
    return true;
}
}));
// source line 47, bytecode pc 89
(xs.Scene.SettingScene.create = function() {
    var ret;
    // source line 48, bytecode pc 23
    (ret = new xs.Scene.SettingScene());
    if ((ret && ret.init())) {
        // source line 50, bytecode pc 55
        return ret;
    }
    // source line 52, bytecode pc 84
    xs.warn("xs.Scene.SettingScene", "create fail!");
    // source line 53, bytecode pc 86
    return null;
});
// source line 61, bytecode pc 174
xs.Scene.Mgr.registerScene("SettingScene", { "class": xs.Scene.SettingScene, area: [], type: xs.Constant_SceneType_Cmn });
// source line 569, bytecode pc 569
(xs.Views.SettingLayer = cc.Layer.extend({
    ctor: function() {
    // source line 66, bytecode pc 12
    this._super();
    // source line 67, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var i, isHaveLogout, isHaveSwitchAccount, isHaveUserCenter;
    if (!this._super()) {
        // source line 72, bytecode pc 19
        return false;
    }
    // source line 75, bytecode pc 31
    (this.m_cells = []);
    // source line 77, bytecode pc 88
    (this.tableView = cc.TableView.create(this, xs.Views.TablePage.getTableViewSize()));
    // source line 78, bytecode pc 108
    this.tableView.setDelegate(this);
    // source line 79, bytecode pc 137
    this.tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 80, bytecode pc 166
    this.tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 84, bytecode pc 256
    xs.Utils.Node.attachNodes(this, this.tableView, { desc: "lb", offset: xs.Views.TablePage.getTableViewOffset(), sc: true });
    // source line 88, bytecode pc 285
    (this.settingData = this.cfg.setting.concat());
    // source line 90, bytecode pc 290
    (i = 0);
    while ((i < this.settingData.length)) {
        if (((this.settingData[i].settingType == xs.Constant_SettingType_Music) || ((this.settingData[i].settingType == xs.Constant_SettingType_Sound) || (this.settingData[i].settingType == xs.Constant_SettingType_MemMode)))) {
            // source line 96, bytecode pc 435
            (this.settingData[i].btnStringKey = this._getBtnStringByType_OpenOrClose(this.settingData[i].settingType));
        }
        // source line 90, bytecode pc 450
        i++;
    }
    if (!xs.temp_3rd) {
        // source line 106, bytecode pc 557
        this.settingData.push({
    titleStringKey: "titleStr_CustomService",
    contentStringKey: "content_CustomService",
    settingType: xs.Constant_SettingType_CustomService,
    btnStringKey: "btnStr_CustomService"
});
        // source line 115, bytecode pc 627
        this.settingData.push({
    titleStringKey: "titleStr_FeedBack",
    contentStringKey: "content_FeedBack",
    settingType: xs.Constant_SettingType_FeedBack,
    btnStringKey: "btnStr_FeedBack"
});
    }
    if (xs.isShowCDKey) {
        // source line 127, bytecode pc 712
        this.settingData.push({
    titleStringKey: "titleStr_CDKey",
    contentStringKey: "content_CDKey",
    settingType: xs.Constant_SettingType_CDKey,
    btnStringKey: "btnStr_CDKey"
});
    }
    if ((xsc.Tools.AccountSys.isUsing3rdSdk() && (xsc.Tools.AccountSys.isUsingGuest() && (xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_Visitor)))) {
        // source line 144, bytecode pc 888
        this.settingData.push({
    titleStringKey: "titleStr_Binding",
    contentStringKey: "content_Binging_FB",
    settingType: xs.Constant_SettingType_Binding_FB,
    btnStringKey: "btnStr_Binding"
});
    }
    if ((xsc.Tools.AccountSys.isUsingEasySdk() && (xsc.Tools.AccountSys.isUsingGuest() && (xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_Visitor)))) {
        // source line 160, bytecode pc 1064
        this.settingData.push({
    titleStringKey: "titleStr_Binding",
    contentStringKey: "content_Binging_FB",
    settingType: xs.Constant_SettingType_Binding_Easy,
    btnStringKey: "btnStr_Binding"
});
    }
    if (xsc.Tools.AccountSys.isUsingBfSdk()) {
        // source line 171, bytecode pc 1165
        this.settingData.push({
    titleStringKey: "titleStr_Binding",
    contentStringKey: "content_Binging",
    settingType: xs.Constant_SettingType_Binding,
    btnStringKey: "btnStr_Binding"
});
    }
    if (xsc.Tools.AccountSys.isUsingAnySdk()) {
        // source line 190, bytecode pc 1232
        (isHaveLogout = xs.AnySdk.AnySdkHelp_js.isFunctionSupported("logout"));
        // source line 191, bytecode pc 1268
        (isHaveSwitchAccount = xs.AnySdk.AnySdkHelp_js.isFunctionSupported("accountSwitch"));
        if (isHaveLogout) {
            // source line 199, bytecode pc 1346
            this.settingData.push({
    titleStringKey: "titleStr_AnySdk_AccountSwitch",
    contentStringKey: "content_AnySdk_AccountSwitch",
    settingType: xs.Constant_SettingType_AnySdk_Logout,
    btnStringKey: "btnStr_AnySdk_AccountSwitch"
});
        } else {
            if (isHaveSwitchAccount) {
                // source line 209, bytecode pc 1429
                this.settingData.push({
    titleStringKey: "titleStr_AnySdk_AccountSwitch",
    contentStringKey: "content_AnySdk_AccountSwitch",
    settingType: xs.Constant_SettingType_AnySdk_AccountSwitch,
    btnStringKey: "btnStr_AnySdk_AccountSwitch"
});
            }
        }
    }
    if (xsc.Tools.AccountSys.isUsing3rdSdk()) {
        // source line 217, bytecode pc 1501
        (isHaveUserCenter = xs.Tools.Jsb.ThirdSdk.isSupportFunction("enterPlatform"));
        // source line 218, bytecode pc 1528
        xs.log("isHaveUserCenter is : ", isHaveUserCenter);
        if (isHaveUserCenter) {
            // source line 225, bytecode pc 1606
            this.settingData.push({
    titleStringKey: "titleStr_UserCenter",
    contentStringKey: "content_ThirdSdk_UserCenter",
    settingType: xs.Constant_SettingType_ThirdSdk_UserCenter,
    btnStringKey: "btnStr_UserCenter"
});
        }
    }
    if (!xs.temp_3rd) {
        // source line 237, bytecode pc 1692
        this.settingData.push({
    titleStringKey: "titleStr_ZhuXiao",
    contentStringKey: "content_ZhuXiao",
    settingType: xs.Constant_SettingType_ZhuXiao,
    btnStringKey: "btnStr_CustomService"
});
    }
    // source line 243, bytecode pc 1710
    this.tableView.reloadData();
    // source line 245, bytecode pc 1712
    return true;
},
    onEnter: function() {
    // source line 249, bytecode pc 12
    this._super();
    // source line 251, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.getNewSessionId, xs.Constant_Notify_Event_ThirdSdkLoginSucess);
    // source line 252, bytecode pc 131
    xs.Utils.Notify.addObserver(this, this.getEasySessionIdforBinding, xs.EasySdk.Account.Const.Notify_Event.Easy.CmnAccount);
},
    onExit: function() {
    // source line 257, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_ThirdSdkLoginSucess);
    // source line 258, bytecode pc 104
    xs.Utils.Notify.removeObserver(this, xs.EasySdk.Account.Const.Notify_Event.Easy.CmnAccount);
    // source line 259, bytecode pc 117
    this._super();
},
    getNewSessionId: function(params) {
    var _loginType, arguments;
    // source line 262, bytecode pc 10
    (arguments = arguments);
    // source line 263, bytecode pc 78
    xs.dump("getNewSss", eval((("(" + params.sessionKey) + ")")));
    // source line 264, bytecode pc 129
    (this.sessionId = eval((("(" + params.sessionKey) + ")")));
    // source line 265, bytecode pc 147
    (this.session = this.sessionId.session);
    // source line 266, bytecode pc 167
    (_loginType = xs.Constant_LoginType_ThirdSdk);
    // source line 281, bytecode pc 257
    xs.Tools.Net.requestBindingFBAccount({ uid: xs.Profile.UserCfg.getAccountUid(), sessionId: this.session }, function() {
    // source line 273, bytecode pc 22
    xs.log("requestBindingBFAccount back ");
    // source line 274, bytecode pc 55
    xs.Views.Mgr.showToast("绑定成功");
    // source line 275, bytecode pc 93
    xs.Profile.UserCfg.setLoginType(xs.Constant_LoginType_Super3rdSdk_Union);
}, function() {
    // source line 278, bytecode pc 22
    xs.log("requestBindingBFAccount back err");
    // source line 279, bytecode pc 73
    xs.JsbConnecter.getInstance().invoke("ThirdSdk", "doThirdAction", "logout");
}, this);
},
    getEasySessionIdforBinding: function(params) {
    var _jsonSuccessMsg, _loginType;
    // source line 285, bytecode pc 8
    switch (params.code) {
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Success:
        // source line 289, bytecode pc 222
        (_jsonSuccessMsg = JSON.parse(params.msg));
        // source line 291, bytecode pc 236
        (_loginType = xs.Constant_LoginType_EasySdk);
        // source line 292, bytecode pc 286
        xs.log_zhz("xs.Profile.UserCfg.getAccountUid()", xs.Profile.UserCfg.getAccountUid());
        // source line 312, bytecode pc 391
        xs.Tools.Net.requestBindingEasyAccount({
    uid: xs.Profile.UserCfg.getAccountUid(),
    easy_uid: _jsonSuccessMsg.easy_uid,
    session_id: _jsonSuccessMsg.easy_session
}, function() {
    // source line 301, bytecode pc 22
    xs.log("requestBindingBFAccount back ");
    // source line 302, bytecode pc 55
    xs.Views.Mgr.showToast("绑定成功");
    // source line 303, bytecode pc 93
    xs.Profile.UserCfg.setLoginType(xs.Constant_LoginType_EasySdk);
}, function() {
    var easyAccountLogout, easyAccountIsLogined;
    // source line 306, bytecode pc 22
    xs.log("requestBindingBFAccount back err");
    // source line 307, bytecode pc 69
    (easyAccountLogout = xs.Tools.Jsb.EasySdk.isSupportFunction("Account", "logout"));
    // source line 308, bytecode pc 109
    (easyAccountIsLogined = xs.Tools.Jsb.EasySdk.Account.isLogined());
    if ((easyAccountLogout && easyAccountIsLogined)) {
        // source line 310, bytecode pc 170
        xs.Tools.Jsb.EasySdk.callFunction("Account", "logout");
    }
}, this);
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Cancel:
        // source line 318, bytecode pc 419
        xs.log("登录取消");
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_NoNeed:
        // source line 322, bytecode pc 447
        xs.log("无需登录");
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Timeout:
        // source line 326, bytecode pc 475
        xs.log("登录超时");
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Fail:
        // source line 331, bytecode pc 503
        xs.log("登录失败");
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Exception:
        // source line 336, bytecode pc 531
        xs.log("登录异常");
        break;
        default:
        // source line 341, bytecode pc 572
        xs.Views.Mgr.showToast(params.msg);
        break;
    }
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 346, bytecode pc 23
    return cc.size(860, 120);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    try {
        // source line 351, bytecode pc 18
        (cell = table.dequeueCell());
        if (!cell) {
            // source line 353, bytecode pc 68
            (cell = xs.Views.SettingCell.create(this.settingData[idx]));
        } else {
            // source line 355, bytecode pc 99
            cell.updateCell(this.settingData[idx]);
        }
        // source line 357, bytecode pc 134
        cell.registBtnCallFun(this.onBtnClick.bind(this));
        // source line 358, bytecode pc 148
        (this.m_cells[idx] = cell);
    } catch (e) {
        // source line 360, bytecode pc 190
        xs.warnException("xs.Views.MailView tableCellAtIndex", e);
        /* TODO_BYTECODE pc=191 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 363, bytecode pc 203
    return cell;
},
    numberOfCellsInTableView: function(table) {
    if (this.settingData) {
        // source line 368, bytecode pc 22
        return this.settingData.length;
    }
    // source line 370, bytecode pc 24
    return 0;
},
    _getBtnStringByType_OpenOrClose: function(type) {
    var _inOpen;
    // source line 375, bytecode pc 4
    (_inOpen = null);
    if ((type == xs.Constant_SettingType_Music)) {
        // source line 377, bytecode pc 53
        (_inOpen = xs.Profile.UserCfg.isVoiceOn_Bg());
    } else {
        if ((type == xs.Constant_SettingType_Sound)) {
            // source line 380, bytecode pc 107
            (_inOpen = xs.Profile.UserCfg.isVoiceOn_Eff());
        } else {
            if ((type == xs.Constant_SettingType_MemMode)) {
                // source line 383, bytecode pc 161
                (_inOpen = xs.Profile.UserCfg.isMemMode_UseMoreMem());
            }
        }
    }
    if (_inOpen) {
        // source line 387, bytecode pc 175
        return "opened";
    } else {
        // source line 390, bytecode pc 186
        return "closed";
    }
},
    onBtnClick: function(idx) {
    var _settingData, _cell, mPlayer;
    // source line 395, bytecode pc 13
    (_settingData = this.settingData[idx]);
    // source line 396, bytecode pc 40
    xs.log_zj("_settingData", _settingData);
    // source line 397, bytecode pc 49
    switch (_settingData.settingType) {
        case xs.Constant_SettingType_Music:
        if (xs.Profile.UserCfg.isVoiceOn_Bg()) {
            // source line 400, bytecode pc 352
            xs.Tools.Audio.turnOff_Bg();
        } else {
            // source line 403, bytecode pc 384
            xs.Tools.Audio.turnOn_Bg();
        }
        // source line 406, bytecode pc 416
        (_settingData.btnStringKey = this._getBtnStringByType_OpenOrClose(xs.Constant_SettingType_Music));
        // source line 408, bytecode pc 430
        (_cell = this.m_cells[idx]);
        // source line 409, bytecode pc 449
        _cell.updateCell(_settingData);
        break;
        case xs.Constant_SettingType_Sound:
        if (xs.Profile.UserCfg.isVoiceOn_Eff()) {
            // source line 414, bytecode pc 512
            xs.Tools.Audio.turnOff_Eff();
        } else {
            // source line 417, bytecode pc 544
            xs.Tools.Audio.turnOn_Eff();
        }
        // source line 419, bytecode pc 576
        (_settingData.btnStringKey = this._getBtnStringByType_OpenOrClose(xs.Constant_SettingType_Sound));
        // source line 423, bytecode pc 590
        (_cell = this.m_cells[idx]);
        // source line 424, bytecode pc 609
        _cell.updateCell(_settingData);
        break;
        case xs.Constant_SettingType_MemMode:
        if ((xs.Profile.UserCfg.isMemMode_UseMoreMem() == true)) {
            // source line 428, bytecode pc 674
            xs.Tools.Sys.turnOff_UseMoreMem();
        } else {
            // source line 431, bytecode pc 706
            xs.Tools.Sys.turnOn_UseMoreMem();
        }
        // source line 433, bytecode pc 738
        (_settingData.btnStringKey = this._getBtnStringByType_OpenOrClose(xs.Constant_SettingType_MemMode));
        // source line 434, bytecode pc 770
        xs.log_zj(" _settingData.btnStringKey ", _settingData.btnStringKey);
        // source line 436, bytecode pc 784
        (_cell = this.m_cells[idx]);
        // source line 437, bytecode pc 803
        _cell.updateCell(_settingData);
        break;
        case xs.Constant_SettingType_Notice:
        // source line 440, bytecode pc 841
        xs.Views.Mgr.showDialogByName("Announcement");
        break;
        case xs.Constant_SettingType_FeedBack:
        // source line 443, bytecode pc 897
        (mPlayer = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
        if (xs.customerServiceConf) {
            if ((xs.JsbConnecter.getInstance().invoke("Feedback", "enter", (((("45" + "|") + mPlayer.getPlayerId()) + "|") + mPlayer.getPlayerName())) == "err")) {
                // source line 448, bytecode pc 1091
                xs.Views.Mgr.showDialogByName("SendMessageDialog", { type: xs.Views.Dialog.SendMessageDialog_Type_FeedBack, targetUser: this.data });
            }
        } else {
            // source line 451, bytecode pc 1172
            xs.Views.Mgr.showDialogByName("SendMessageDialog", { type: xs.Views.Dialog.SendMessageDialog_Type_FeedBack, targetUser: this.data });
        }
        break;
        case xs.Constant_SettingType_Help:
        // source line 464, bytecode pc 1221
        xs.Views.Mgr.showDialogByName("Announcement", xs.Constant_SettingType_Help);
        break;
        case xs.Constant_SettingType_CustomService:
        // source line 467, bytecode pc 1270
        xs.Views.Mgr.showDialogByName("Announcement", xs.Constant_SettingType_CustomService);
        break;
        case xs.Constant_SettingType_CDKey:
        // source line 472, bytecode pc 1308
        xs.Views.Mgr.showDialogByName("ExchangeCDKey");
        break;
        case xs.Constant_SettingType_Binding:
        if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_BianFeng)) {
            // source line 476, bytecode pc 1415
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_197"));
        } else {
            // source line 478, bytecode pc 1453
            xs.Views.Mgr.showDialogByName("BindingDialog");
        }
        break;
        case xs.Constant_SettingType_AnySdk_AccountSwitch:
        // source line 482, bytecode pc 1513
        xs.Scene.Mgr.changeSceneByName("LoginScene", { funTypeStr: xs.Constant_LoginFunType_AccountSwitch });
        break;
        case xs.Constant_SettingType_AnySdk_Logout:
        // source line 486, bytecode pc 1545
        xs.AnySdk.AnySdkHelp_js.logout();
        break;
        case xs.Constant_SettingType_BindingTel:
        if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_BianFeng)) {
            // source line 490, bytecode pc 1625
            xs.Views.Mgr.showDialogByName("BindingTelDialog");
        } else {
            // source line 492, bytecode pc 1663
            xs.Views.Mgr.showToastByStringKey("str_need_bind_bf_account");
        }
        break;
        case xs.Constant_SettingType_ThirdSdk_UserCenter:
        // source line 497, bytecode pc 1691
        xs.log("点击用户中心");
        // source line 498, bytecode pc 1742
        xs.JsbConnecter.getInstance().invoke("ThirdSdk", "doThirdAction", "enterPlatform");
        break;
        case xs.Constant_SettingType_Binding_FB:
        if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_Super3rdSdk_Union)) {
            // source line 502, bytecode pc 1849
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_197"));
        } else {
            // source line 504, bytecode pc 1905
            xs.JsbConnecter.getInstance().invoke("ThirdSdk", "login", "");
        }
        break;
        case xs.Constant_SettingType_Binding_Easy:
        if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_EasySdk)) {
            // source line 509, bytecode pc 2012
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_197"));
        } else {
            // source line 511, bytecode pc 2054
            xs.Tools.Jsb.EasySdk.Account.login();
        }
        break;
        case xs.Constant_SettingType_ZhuXiao:
        // source line 522, bytecode pc 2233
        xs.Views.Mgr.showDialogByName("OneBtnDialog", {
    titleText: xs.Tools.String.createString("titleStr_ZhuXiao"),
    contentText: xs.Tools.String.createString("contentStr_ZhuXiao"),
    btnText: xs.Tools.String.createString("auto_name_76"),
    btnCallback: function() {
    // source line 521, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this)
});
        break;
        default:
        break;
    }
},
    cfg: {
        setting: [
            {
                titleStringKey: "titleStr_MemMode",
                contentStringKey: "content_MemMode",
                settingType: xs.Constant_SettingType_MemMode,
                btnStringKey: "btnStr_MemMode"
            },
            {
                titleStringKey: "titleStr_Music",
                contentStringKey: "content_Music",
                settingType: xs.Constant_SettingType_Music,
                btnStringKey: "btnStr_Music"
            },
            {
                titleStringKey: "titleStr_Sound",
                contentStringKey: "content_Sound",
                settingType: xs.Constant_SettingType_Sound,
                btnStringKey: "btnStr_Sound"
            },
            {
                titleStringKey: "titleStr_Help",
                contentStringKey: "content_Help",
                settingType: xs.Constant_SettingType_Help,
                btnStringKey: "btnStr_Help"
            }
        ]
    }
}));
// source line 589, bytecode pc 595
(xs.Views.SettingLayer.create = function() {
    var ret;
    // source line 590, bytecode pc 23
    (ret = new xs.Views.SettingLayer());
    if ((ret && ret.init())) {
        // source line 592, bytecode pc 55
        return ret;
    }
    // source line 594, bytecode pc 84
    xs.warn("cc.Views.SettingLayer", "create fail!");
    // source line 595, bytecode pc 86
    return null;
});
// source line 666, bytecode pc 783
(xs.Views.SettingCell = cc.TableViewCell.extend({
    ccbCfg: [ { tag: 10, type: "ls", id: "LS_wujiangInf1" }, { tag: 11, type: "ls", id: "LS_liebiaoInf" } ],
    draw: function(ctx) {
    // source line 608, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 612, bytecode pc 12
    this._super();
    // source line 613, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(settingData) {
    if (!this._super()) {
        // source line 619, bytecode pc 19
        return false;
    }
    // source line 622, bytecode pc 53
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_2_SettingCell.ccbi"));
    // source line 623, bytecode pc 73
    this.addChild(this.ccbNode);
    // source line 624, bytecode pc 116
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 626, bytecode pc 143
    (this.titleLab = this.ccbNode.getChildByTag(10));
    // source line 627, bytecode pc 170
    (this.contentLab = this.ccbNode.getChildByTag(11));
    // source line 629, bytecode pc 220
    (this.btn = xs.Utils.replaceButton(this.ccbNode, 12, "Btn_btn4", ""));
    // source line 630, bytecode pc 247
    this.btn.addCallBackForEvent(this, this.onClick);
    // source line 631, bytecode pc 267
    this.btn.setEventOnDisable(true);
    // source line 633, bytecode pc 284
    this.updateCell(settingData);
    // source line 635, bytecode pc 286
    return true;
},
    updateCell: function(settingData) {
    // source line 639, bytecode pc 9
    (this.settingData = settingData);
    // source line 640, bytecode pc 63
    this.titleLab.setString(xs.Tools.String.createString(settingData.titleStringKey));
    // source line 641, bytecode pc 117
    this.contentLab.setString(xs.Tools.String.createString(settingData.contentStringKey));
    // source line 642, bytecode pc 171
    this.btn.setString(xs.Tools.String.createString(settingData.btnStringKey));
    // source line 643, bytecode pc 191
    this.btn.setEnabled(true);
    if ((settingData.settingType === xs.Constant_SettingType_BindingTel)) {
        if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_BianFeng)) {
            // source line 646, bytecode pc 277
            this.btn.setEnabled(true);
        } else {
            // source line 648, bytecode pc 302
            this.btn.setEnabled(false);
        }
    }
    if ((settingData.settingType === xs.Constant_SettingType_Binding)) {
        if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_BianFeng)) {
            // source line 653, bytecode pc 388
            this.btn.setEnabled(false);
        } else {
            // source line 655, bytecode pc 413
            this.btn.setEnabled(true);
        }
    }
},
    registBtnCallFun: function(fun) {
    if (!this.btnCallBack) {
        // source line 662, bytecode pc 21
        (this.btnCallBack = fun);
    }
},
    onClick: function(sender) {
    if (this.btnCallBack) {
        // source line 668, bytecode pc 36
        this.btnCallBack(this.getIdx());
    }
}
}));
// source line 673, bytecode pc 809
(xs.Views.SettingCell.create = function(settingData) {
    var ret;
    // source line 674, bytecode pc 23
    (ret = new xs.Views.SettingCell());
    if ((ret && ret.init(settingData))) {
        // source line 676, bytecode pc 59
        return ret;
    }
    // source line 678, bytecode pc 61
    return null;
});
