// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/FGLoginDialog.js:1
// source line 110, bytecode pc 322
(xs.Views.Dialog.FGLoginDialog = xs.Views.HungerLayer.extend({
    name: "FGLoginDialog",
    init: function() {
    if (!this._super()) {
        // source line 11, bytecode pc 19
        return false;
    }
    // source line 13, bytecode pc 27
    (this.m_FacebookBtn = null);
    // source line 14, bytecode pc 35
    (this.m_GameCenterBtn = null);
    // source line 17, bytecode pc 43
    (this.readRules = true);
    // source line 19, bytecode pc 77
    (this.ccbNode = xs.ccb_reader.load("ccb3/FGLogin.ccbi"));
    // source line 20, bytecode pc 120
    this.ccbNode.setContentSize(cc.size(510, 367));
    // source line 21, bytecode pc 167
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 22, bytecode pc 226
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 24, bytecode pc 274
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 27, bytecode pc 298
    this.m_closeBtn.setOnClickCallBack(function() {
    if (((xs.Profile.UserCfg.getLoginType() == xs.Constant_LoginType_Super3rdSdk_Union) || (xs.Profile.UserCfg.getLoginType() == xs.Constant_LoginType_Visitor))) {
        // source line 30, bytecode pc 111
        xs.Views.Mgr.hideDialog();
    } else {
        // source line 32, bytecode pc 149
        xs.Views.Mgr.showToast("請選擇登錄方式");
    }
});
    // source line 36, bytecode pc 336
    this.m_FacebookBtn.setOnClickCallBack(this.onFacebookBtnClick.bind(this));
    // source line 37, bytecode pc 374
    this.m_GameCenterBtn.setOnClickCallBack(this.onGameCenterBtnClick.bind(this));
    // source line 41, bytecode pc 376
    return true;
},
    onEnter: function() {
    // source line 45, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 49, bytecode pc 12
    this._super();
},
    onFacebookBtnClick: function() {
    var str_isPlayerLogined, isHaveSwitchAccount, isHaveLogout;
    // source line 52, bytecode pc 53
    (str_isPlayerLogined = xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isLogined", ""));
    if ((str_isPlayerLogined == "false")) {
        // source line 55, bytecode pc 118
        xs.JsbConnecter.getInstance().invoke("ThirdSdk", "doThirdAction", "FacebookLogin");
        // source line 56, bytecode pc 145
        xs.Views.Mgr.hideDialog();
        // source line 57, bytecode pc 178
        xs.Views.Mgr.hideDialogByName("FacebookLoginDialog");
    } else {
        // source line 61, bytecode pc 237
        (isHaveSwitchAccount = xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isSupportFunction", "accountSwitch"));
        // source line 62, bytecode pc 291
        (isHaveLogout = xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isSupportFunction", "logout"));
        if (isHaveSwitchAccount) {
            // source line 65, bytecode pc 350
            xs.JsbConnecter.getInstance().invoke("ThirdSdk", "doThirdAction", "accountSwitch");
        } else {
            if (isHaveLogout) {
                // source line 68, bytecode pc 414
                xs.JsbConnecter.getInstance().invoke("ThirdSdk", "doThirdAction", "logout");
            }
        }
        // source line 70, bytecode pc 427
        this.onVisitorBtnClick();
    }
},
    onGameCenterBtnClick: function() {
    var str_isPlayerLogined, isHaveSwitchAccount, isHaveLogout;
    // source line 74, bytecode pc 53
    (str_isPlayerLogined = xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isLogined", ""));
    if ((str_isPlayerLogined == "false")) {
        // source line 77, bytecode pc 118
        xs.JsbConnecter.getInstance().invoke("ThirdSdk", "doThirdAction", "GameCenterLogin");
        // source line 78, bytecode pc 145
        xs.Views.Mgr.hideDialog();
        // source line 79, bytecode pc 178
        xs.Views.Mgr.hideDialogByName("FacebookLoginDialog");
    } else {
        // source line 83, bytecode pc 237
        (isHaveSwitchAccount = xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isSupportFunction", "accountSwitch"));
        // source line 84, bytecode pc 291
        (isHaveLogout = xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isSupportFunction", "logout"));
        if (isHaveSwitchAccount) {
            // source line 87, bytecode pc 350
            xs.JsbConnecter.getInstance().invoke("ThirdSdk", "doThirdAction", "accountSwitch");
        } else {
            if (isHaveLogout) {
                // source line 90, bytecode pc 414
                xs.JsbConnecter.getInstance().invoke("ThirdSdk", "doThirdAction", "logout");
            }
        }
        // source line 92, bytecode pc 427
        this.onVisitorBtnClick();
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 97, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 98, bytecode pc 36
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 99, bytecode pc 63
    this.m_GameCenterBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 100, bytecode pc 90
    this.m_FacebookBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    cfg: {
        ccbCfg: [
            { tag: 30, type: "btn", name: "m_closeBtn", id: "Btn_Close" },
            { tag: 19, name: "m_title", id: "LS_popUI1" },
            { tag: 99, type: "btn", name: "m_FacebookBtn", id: "Btn_FGLogin_F" },
            { tag: 98, type: "btn", name: "m_GameCenterBtn", id: "Btn_FGLogin_G" }
        ]
    }
}));
// source line 116, bytecode pc 353
(xs.Views.Dialog.FGLoginDialog.create = function() {
    var ret;
    // source line 117, bytecode pc 28
    (ret = new xs.Views.Dialog.FGLoginDialog());
    if ((ret && ret.init())) {
        // source line 119, bytecode pc 60
        return ret;
    }
    // source line 121, bytecode pc 62
    return null;
});
// source line 126, bytecode pc 433
xs.Views.Mgr.registerDialog("FGLoginDialog", { "class": xs.Views.Dialog.FGLoginDialog, styleType: xs.Constant_DlgStyleType_Small });
