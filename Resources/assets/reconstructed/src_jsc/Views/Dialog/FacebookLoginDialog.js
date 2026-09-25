// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/FacebookLoginDialog.js:1
// source line 157, bytecode pc 426
(xs.Views.Dialog.FacebookLoginDialog = xs.Views.HungerLayer.extend({
    name: "FacebookLoginDialog",
    init: function() {
    var str_isPlayerLogined;
    if (!this._super()) {
        // source line 11, bytecode pc 19
        return false;
    }
    // source line 13, bytecode pc 27
    (this.m_FacebookBtn = null);
    // source line 14, bytecode pc 35
    (this.m_visitorBtn = null);
    // source line 15, bytecode pc 43
    (this.m_labelRules = null);
    // source line 16, bytecode pc 51
    (this.m_readRulesBtn = null);
    // source line 18, bytecode pc 59
    (this.readRules = true);
    // source line 20, bytecode pc 93
    (this.ccbNode = xs.ccb_reader.load("ccb3/FacebookLogin.ccbi"));
    // source line 21, bytecode pc 136
    this.ccbNode.setContentSize(cc.size(510, 367));
    // source line 22, bytecode pc 183
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 23, bytecode pc 242
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 25, bytecode pc 290
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 26, bytecode pc 330
    (str_isPlayerLogined = xs.Tools.Jsb.EasySdk.Account.isLogined());
    if (!str_isPlayerLogined) {
        // source line 29, bytecode pc 390
        this.m_FacebookBtn.setString(xs.Tools.String.createString("bfLogin"));
    } else {
        if ((xs.app_account_sys == xs.Const_App_Account_Sys_EasyGuestSdk)) {
            // source line 34, bytecode pc 472
            this.m_FacebookBtn.setString(xs.Tools.String.createString("changLogin"));
        } else {
            // source line 37, bytecode pc 528
            this.m_FacebookBtn.setString(xs.Tools.String.createString("bfLogout"));
        }
    }
    // source line 41, bytecode pc 568
    (this.labelBtn = xs.Views.Btn.createInvisibleWithParent(this.m_labelRules));
    // source line 44, bytecode pc 594
    this.labelBtn.addCallBackForEvent(this, function() {
    // source line 46, bytecode pc 43
    xs.Views.Mgr.showDialogByName("Announcement", xs.Constant_SettingType_WanJiaXieYi);
});
    // source line 60, bytecode pc 632
    this.m_readRulesBtn.setOnClickCallBack(this.onReadBtnClick.bind(this));
    // source line 61, bytecode pc 670
    this.m_FacebookBtn.setOnClickCallBack(this.onFacebookBtnClick.bind(this));
    // source line 62, bytecode pc 708
    this.m_visitorBtn.setOnClickCallBack(this._onVisitorBtnClick.bind(this));
    // source line 66, bytecode pc 710
    return true;
},
    onEnter: function() {
    // source line 70, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 74, bytecode pc 12
    this._super();
},
    onReadBtnClick: function() {
    if ((this.readRules == true)) {
        // source line 78, bytecode pc 20
        (this.readRules = false);
        // source line 79, bytecode pc 44
        this.m_readRulesBtn.setString(" ");
        // source line 80, bytecode pc 64
        this.m_FacebookBtn.setEventOnDisable(false);
        // source line 81, bytecode pc 84
        this.m_FacebookBtn.setEnabled(false);
        // source line 82, bytecode pc 104
        this.m_visitorBtn.setEventOnDisable(false);
        // source line 83, bytecode pc 124
        this.m_visitorBtn.setEnabled(false);
    } else {
        if ((this.readRules == false)) {
            // source line 85, bytecode pc 150
            (this.readRules = true);
            // source line 86, bytecode pc 174
            this.m_readRulesBtn.setString("√");
            // source line 87, bytecode pc 194
            this.m_FacebookBtn.setEnabled(true);
            // source line 88, bytecode pc 214
            this.m_visitorBtn.setEnabled(true);
        }
    }
},
    onFacebookBtnClick: function() {
    var str_isPlayerLogined, isHaveSwitchAccount, isHaveLogout;
    // source line 93, bytecode pc 39
    (str_isPlayerLogined = xs.Tools.Jsb.EasySdk.Account.isLogined());
    // source line 94, bytecode pc 66
    xs.log_zhz("Easy_str_isPlayerLogined", str_isPlayerLogined);
    if (!str_isPlayerLogined) {
        // source line 97, bytecode pc 88
        this._startLogin();
    } else {
        // source line 101, bytecode pc 140
        (isHaveSwitchAccount = xs.Tools.Jsb.EasySdk.isSupportFunction("Account", "switch"));
        // source line 102, bytecode pc 187
        (isHaveLogout = xs.Tools.Jsb.EasySdk.isSupportFunction("Account", "logout"));
        // source line 103, bytecode pc 214
        xs.log_zhz("Easy_str_isHaveSwitchAccount", isHaveSwitchAccount);
        // source line 104, bytecode pc 241
        xs.log_zhz("Easy_str_isHaveLogout", isHaveLogout);
        if (isHaveSwitchAccount) {
            // source line 106, bytecode pc 293
            xs.Tools.Jsb.EasySdk.callFunction("Account", "switch");
            // source line 107, bytecode pc 320
            xs.Views.Mgr.hideDialog();
        } else {
            if (isHaveLogout) {
                // source line 110, bytecode pc 377
                xs.Tools.Jsb.EasySdk.callFunction("Account", "logout");
            }
        }
    }
},
    _startLogin: function() {
    // source line 117, bytecode pc 36
    xs.Tools.Jsb.EasySdk.Account.login();
    // source line 118, bytecode pc 63
    xs.Views.Mgr.hideDialog();
},
    _onVisitorBtnClick: function() {
    var isHaveLogout;
    // source line 125, bytecode pc 46
    (isHaveLogout = xs.Tools.Jsb.EasySdk.isSupportFunction("Account", "logout"));
    if ((isHaveLogout && (xs.Profile.UserCfg.getLoginType() == xs.Constant_LoginType_EasySdk))) {
        // source line 127, bytecode pc 135
        xs.Profile.UserCfg.setLoginType(xs.Constant_LoginType_Visitor);
        // source line 128, bytecode pc 179
        xs.Tools.Jsb.EasySdk.callFunction("Account", "logout");
    } else {
        // source line 130, bytecode pc 222
        xs.Profile.UserCfg.setLoginType(xs.Constant_LoginType_Visitor);
        // source line 131, bytecode pc 249
        xs.Views.Mgr.hideDialog();
        // source line 132, bytecode pc 282
        xs.Scene.Mgr.changeSceneByName("LoginScene");
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 139, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 141, bytecode pc 36
    this.m_visitorBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 142, bytecode pc 63
    this.m_FacebookBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 143, bytecode pc 90
    this.labelBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 144, bytecode pc 117
    this.m_readRulesBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    cfg: {
        ccbCfg: [
            { tag: 10, type: "btn", name: "m_FacebookBtn", id: "Btn_FacebookLogin" },
            { tag: 11, type: "btn", name: "m_visitorBtn", id: "Btn_FacebookLogin_Visitor" },
            { tag: 97, type: "btn", name: "m_readRulesBtn", id: "Btn_Rules" },
            { tag: 19, name: "m_title", id: "LS_popUI1" },
            { tag: 21, type: "ls", id: "LS_popUI2", string: "" },
            { tag: 99, name: "m_labelRules", id: "LS_popUI2" }
        ]
    }
}));
// source line 162, bytecode pc 457
(xs.Views.Dialog.FacebookLoginDialog.create = function() {
    var ret;
    // source line 163, bytecode pc 28
    (ret = new xs.Views.Dialog.FacebookLoginDialog());
    if ((ret && ret.init())) {
        // source line 165, bytecode pc 60
        return ret;
    }
    // source line 167, bytecode pc 62
    return null;
});
// source line 172, bytecode pc 537
xs.Views.Mgr.registerDialog("FacebookLoginDialog", { "class": xs.Views.Dialog.FacebookLoginDialog, styleType: xs.Constant_DlgStyleType_Small });
