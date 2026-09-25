// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Party/MonthLegendDialog.js:1
// source line 145, bytecode pc 433
(xs.Scene.Party.MonthLegendDialog = xs.Views.HungerLayer.extend({
    name: "MonthLegendDialog",
    CCB_Cfg: [
        { tag: 1, type: "ls", name: "m_labelTitle", id: "LS_huodong_title", stringId: "auto_name_125" },
        { tag: 2, type: "bs", name: "m_btnExit", id: "BS_Close" },
        { tag: 4, name: "m_spriteBg" }
    ],
    CCB_Cfg_cont: [
        { tag: 1, type: "bs", name: "m_leftDrawBtn", id: "BS_EliteChapter", stringId: "auto_name_101" },
        { tag: 2, type: "bs", name: "m_buyCardBtn", id: "BS_Party_Confirm", stringId: "auto_name_126" },
        { tag: 3, type: "bs", name: "m_rightDrawBtn", id: "BS_EliteChapter", stringId: "auto_name_101" }
    ],
    init: function(params, idx) {
    if (!this._super()) {
        // source line 36, bytecode pc 19
        return false;
    }
    // source line 39, bytecode pc 29
    (this.m_modelEvent = params);
    if (!this.m_modelEvent) {
        // source line 41, bytecode pc 43
        return false;
    }
    // source line 43, bytecode pc 51
    (this.m_labelTitle = null);
    // source line 44, bytecode pc 59
    (this.m_btnExit = null);
    // source line 45, bytecode pc 67
    (this.m_spriteBg = null);
    // source line 46, bytecode pc 75
    (this.m_leftDrawBtn = null);
    // source line 47, bytecode pc 83
    (this.m_buyCardBtn = null);
    // source line 48, bytecode pc 91
    (this.m_rightDrawBtn = null);
    // source line 52, bytecode pc 142
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.Party_advertisement, this));
    // source line 54, bytecode pc 228
    xs.Utils.Node.attachNodes(this, this._ccbNode, { desc: "c", offset: cc.p(-466, -306) });
    // source line 56, bytecode pc 271
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.CCB_Cfg, this);
    // source line 58, bytecode pc 322
    (this._ccbNode_cont = xs.ccb_reader.load(xs.Cfg.CCBI.Party_taleMonthCard, this));
    // source line 59, bytecode pc 363
    this._ccbNode_cont.setPosition(cc.p(17, 41));
    // source line 60, bytecode pc 388
    this._ccbNode.addChild(this._ccbNode_cont);
    // source line 61, bytecode pc 431
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode_cont, this.CCB_Cfg_cont, this);
    // source line 74, bytecode pc 468
    this.m_leftDrawBtn.setOnClickCallBack(function() {
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        // source line 67, bytecode pc 83
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_127"));
        // source line 68, bytecode pc 85
        return void 0;
    }
    // source line 71, bytecode pc 140
    xs.Views.Mgr.showDialogByName("SelectSgsChannelDialog", { type: xs.Constant_Sgs_OL });
}.bind(this));
    // source line 88, bytecode pc 505
    this.m_rightDrawBtn.setOnClickCallBack(function() {
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        // source line 81, bytecode pc 83
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_127"));
        // source line 82, bytecode pc 85
        return void 0;
    }
    // source line 85, bytecode pc 140
    xs.Views.Mgr.showDialogByName("SelectSgsChannelDialog", { type: xs.Constant_Sgs_MobilePhone });
}.bind(this));
    // source line 96, bytecode pc 542
    this.m_buyCardBtn.setOnClickCallBack(function() {
    // source line 93, bytecode pc 26
    xs.Views.Mgr.hideAllDialog();
    // source line 94, bytecode pc 59
    xs.Views.Mgr.showDialogByName("ChargeDialog");
}.bind(this));
    // source line 101, bytecode pc 566
    this.m_btnExit.setOnClickCallBack(function() {
    // source line 102, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 105, bytecode pc 568
    return true;
},
    onBtnAwardCallBack: function(param) {
    var _instance_id;
    // source line 109, bytecode pc 20
    (_instance_id = this.m_modelEvent.getInstanceId());
    // source line 126, bytecode pc 124
    xs.Tools.Net.requestPartyReceive({
    instance_id: _instance_id,
    extra_param: { cooperator: param.cooperator, cooperator_server_id: param.cooperator_server_id },
    forcepush: true
}, function(data) {
    // source line 121, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_128"));
}.bind(this));
},
    onEnterTransitionDidFinish: function() {
    // source line 131, bytecode pc 12
    this._super();
    // source line 132, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.onBtnAwardCallBack, xs.Constant_Notify_Event_GetChannelAward);
},
    onExitTransitionDidStart: function() {
    // source line 141, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_GetChannelAward);
    // source line 142, bytecode pc 52
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 146, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 147, bytecode pc 36
    this.m_btnExit.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 148, bytecode pc 63
    this.m_rightDrawBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 149, bytecode pc 90
    this.m_buyCardBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 150, bytecode pc 117
    this.m_leftDrawBtn.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 155, bytecode pc 464
(xs.Scene.Party.MonthLegendDialog.create = function(params, idx) {
    var ret;
    // source line 156, bytecode pc 28
    (ret = new xs.Scene.Party.MonthLegendDialog());
    if ((ret && ret.init(params, idx))) {
        // source line 158, bytecode pc 68
        return ret;
    }
    // source line 160, bytecode pc 70
    return null;
});
// source line 165, bytecode pc 544
xs.Views.Mgr.registerDialog("MonthLegendDialog", { "class": xs.Scene.Party.MonthLegendDialog, styleType: xs.Constant_DlgStyleType_Large });
