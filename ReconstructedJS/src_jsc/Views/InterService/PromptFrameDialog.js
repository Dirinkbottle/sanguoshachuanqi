// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/InterService/PromptFrameDialog.js:1
// source line 90, bytecode pc 396
(xs.Views.PromptFrameDialog = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 6, bytecode pc 12
    this._super();
    // source line 7, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    ccbCfg: [
        { tag: 1, name: "m_title" },
        { tag: 5, name: "m_ConfirmSpend" },
        { tag: 51, name: "m_oneNumber" },
        { tag: 3, type: "ls", name: "m_ResidueNum", id: "LS_popUI2" },
        { tag: 4, type: "ls", name: "m_YuanbaoNum", id: "LS_wujiangName1" },
        { tag: 2, type: "btn", name: "m_CloseBtn", id: "Btn_Close" },
        { tag: 6, type: "btn", name: "m_SureBtn", id: "Btn_btn1", stringId: "auto_name_76" }
    ],
    init: function(data) {
    var visibleSize, fightResidue;
    if (!this._super()) {
        // source line 20, bytecode pc 19
        return false;
    }
    // source line 22, bytecode pc 27
    (this.ccbNode = null);
    // source line 23, bytecode pc 35
    (this.m_CloseBtn = null);
    // source line 24, bytecode pc 43
    (this.m_SureBtn = null);
    // source line 25, bytecode pc 51
    (this.m_ResidueNum = null);
    // source line 26, bytecode pc 59
    (this.m_YuanbaoNum = null);
    // source line 27, bytecode pc 74
    (this.m_local = data.local);
    // source line 28, bytecode pc 82
    (this.m_title = null);
    // source line 29, bytecode pc 90
    (this.m_ConfirmSpend = null);
    // source line 30, bytecode pc 98
    (this.m_oneNumber = null);
    // source line 33, bytecode pc 106
    (this.m_fightOrRegistration = null);
    // source line 35, bytecode pc 131
    (visibleSize = xs.director.getVisibleSize());
    // source line 37, bytecode pc 182
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.InterPromptDialog, this));
    // source line 46, bytecode pc 272
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", offset: { x: -250, y: -150 }, sc: true });
    // source line 48, bytecode pc 315
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 50, bytecode pc 366
    this.m_title.setString(xs.Tools.Ml.createString("kuafu_huafei_title"));
    // source line 51, bytecode pc 417
    this.m_ConfirmSpend.setString(xs.Tools.Ml.createString("kuafu_ConfirmSpend"));
    // source line 52, bytecode pc 468
    this.m_oneNumber.setString(xs.Tools.Ml.createString("kuafu_oneNumber"));
    // source line 56, bytecode pc 492
    this.m_CloseBtn.setOnClickCallBack(function() {
    // source line 57, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 61, bytecode pc 528
    (fightResidue = xs.Tools.String.createString("interService_fightResidue"));
    // source line 62, bytecode pc 564
    this.m_ResidueNum.setString((fightResidue + data.param.history_fight));
    // source line 65, bytecode pc 607
    this.m_YuanbaoNum.setString((data.param.price || "100"));
    // source line 68, bytecode pc 627
    (this.m_fightOrRegistration = data.param.fightOrRegistration);
    // source line 70, bytecode pc 647
    this.m_SureBtn.setSwallowTouch(false);
    // source line 71, bytecode pc 667
    this.m_SureBtn.setZoomOnTouchDown(false);
    // source line 72, bytecode pc 705
    this.m_SureBtn.setOnClickCallBack(this.sureBtnClick.bind(this));
    // source line 75, bytecode pc 707
    return true;
},
    onEnter: function() {
    // source line 78, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 82, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 85, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 86, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 87, bytecode pc 56
    this.m_CloseBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 88, bytecode pc 83
    this.m_SureBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    sureBtnClick: function() {
    var successFunction;
    // source line 106, bytecode pc 27
    (successFunction = function(data) {
    // source line 92, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if (data) {
        if (this.m_fightOrRegistration) {
            // source line 96, bytecode pc 83
            xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_InterBuyGoFight);
        } else {
            // source line 98, bytecode pc 128
            xs.Scene.Mgr.changeSceneByName("InterServiceFightScene", this.m_local);
        }
    } else {
        // source line 101, bytecode pc 193
        xs.Views.Mgr.showToast(xs.Tools.String.createString("interService_buyFaile"));
    }
}.bind(this));
    if (this.m_local) {
        // source line 116, bytecode pc 143
        xs.Tools.Net.requestLocalInterBuyFightTimes({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    // source line 114, bytecode pc 18
    successFunction(data);
}, this);
    } else {
        // source line 126, bytecode pc 253
        xs.Tools.Net.requestInterBuyFightTimes({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    // source line 124, bytecode pc 18
    successFunction(data);
}, this);
    }
}
}));
// source line 131, bytecode pc 422
(xs.Views.PromptFrameDialog.create = function(data) {
    var layer;
    // source line 133, bytecode pc 23
    (layer = new xs.Views.PromptFrameDialog());
    if ((layer && layer.init(data))) {
        // source line 135, bytecode pc 59
        return layer;
    }
    // source line 137, bytecode pc 61
    return null;
});
// source line 141, bytecode pc 497
xs.Views.Mgr.registerDialog("PromptFrameDialog", { "class": xs.Views.PromptFrameDialog, styleType: xs.Constant_DlgStyleType_Large });
