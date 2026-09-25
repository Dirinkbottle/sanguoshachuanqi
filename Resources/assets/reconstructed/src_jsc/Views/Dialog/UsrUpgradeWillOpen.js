// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/UsrUpgradeWillOpen.js:1
// source line 76, bytecode pc 317
(xs.Views.Dialog.UsrUpgradeWillOpen = xs.Views.HungerLayer.extend({
    name: "UsrUpgradeWillOpen",
    ccbCfg: [
        { tag: 1, name: "m_title", type: "ls", id: "LS_popUI1", stringId: "str_upgrade_WillOpen_title" },
        { tag: 2, name: "m_tip" },
        { tag: 3, name: "m_confirmBtn", type: "btn", id: "Btn_Confirm" },
        { tag: 4, name: "m_bg" },
        { tag: 99, name: "m_closeBtn", type: "bs", id: "BS_Close" }
    ],
    init: function(param) {
    if (!this._super()) {
        // source line 16, bytecode pc 19
        return false;
    }
    // source line 19, bytecode pc 46
    xs.log_zhz("param", param);
    // source line 21, bytecode pc 54
    (this.m_closeBtn = null);
    // source line 22, bytecode pc 62
    (this.m_confirmBtn = null);
    // source line 23, bytecode pc 70
    (this.m_tip = null);
    // source line 25, bytecode pc 85
    (this.user_level = param.level);
    // source line 26, bytecode pc 100
    (this._guideCfg = param.cfgData);
    // source line 28, bytecode pc 151
    (this.m_ccbNode = cc.BuilderReader.load(xs.Cfg.CCBI.UpgradeWillOpen, this));
    // source line 29, bytecode pc 198
    this.m_ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 30, bytecode pc 251
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "c" });
    // source line 31, bytecode pc 294
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 34, bytecode pc 318
    this.m_closeBtn.setOnClickCallBack(function() {
    // source line 35, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 38, bytecode pc 342
    this.m_confirmBtn.setOnClickCallBack(function() {
    // source line 39, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 42, bytecode pc 409
    this.m_tip.setString(xs.Tools.String.createStringWithArgsArray("str_upgrade_WillOpen_tip", [ this.user_level ]));
    // source line 44, bytecode pc 422
    this.setGuideStatus();
    // source line 45, bytecode pc 424
    return true;
},
    getGuideTypeByCfg: function(param) {
    if (this._guideCfg[(param - 1)]) {
        // source line 49, bytecode pc 29
        return this._guideCfg[(param - 1)];
    } else {
        // source line 51, bytecode pc 36
        return false;
    }
},
    setGuideStatus: function() {
    if (this.getGuideTypeByCfg(1)) {
        // source line 55, bytecode pc 52
        this.m_ccbNode.getChildByTag(21).setVisible(true);
        // source line 56, bytecode pc 131
        this.m_ccbNode.getChildByTag(11).setString(xs.Tools.String.createString(this.getGuideTypeByCfg(1).function_name));
        // source line 57, bytecode pc 165
        this.m_ccbNode.getChildByTag(11).setVisible(true);
    }
    if (this.getGuideTypeByCfg(2)) {
        // source line 60, bytecode pc 219
        this.m_ccbNode.getChildByTag(22).setVisible(true);
        // source line 61, bytecode pc 299
        this.m_ccbNode.getChildByTag(12).setString(xs.Tools.String.createString(this.getGuideTypeByCfg(2).function_name));
        // source line 62, bytecode pc 333
        this.m_ccbNode.getChildByTag(12).setVisible(true);
    }
    if (this.getGuideTypeByCfg(3)) {
        // source line 65, bytecode pc 387
        this.m_ccbNode.getChildByTag(23).setVisible(true);
        // source line 66, bytecode pc 467
        this.m_ccbNode.getChildByTag(13).setString(xs.Tools.String.createString(this.getGuideTypeByCfg(3).function_name));
        // source line 67, bytecode pc 501
        this.m_ccbNode.getChildByTag(13).setVisible(true);
    }
    if (this.getGuideTypeByCfg(4)) {
        // source line 70, bytecode pc 555
        this.m_ccbNode.getChildByTag(24).setVisible(true);
        // source line 71, bytecode pc 635
        this.m_ccbNode.getChildByTag(14).setString(xs.Tools.String.createString(this.getGuideTypeByCfg(4).function_name));
        // source line 72, bytecode pc 669
        this.m_ccbNode.getChildByTag(14).setVisible(true);
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 77, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 78, bytecode pc 36
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 79, bytecode pc 63
    this.m_confirmBtn.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 83, bytecode pc 348
(xs.Views.Dialog.UsrUpgradeWillOpen.create = function(param) {
    var ret;
    // source line 84, bytecode pc 28
    (ret = new xs.Views.Dialog.UsrUpgradeWillOpen());
    if ((ret && ret.init(param))) {
        // source line 86, bytecode pc 64
        return ret;
    }
    // source line 88, bytecode pc 87
    xs.warn("xs.Views.Dialog.UsrUpgradeWillOpen.create error!");
    // source line 89, bytecode pc 89
    return null;
});
// source line 94, bytecode pc 428
xs.Views.Mgr.registerDialog("UsrUpgradeWillOpen", { "class": xs.Views.Dialog.UsrUpgradeWillOpen, styleType: xs.Constant_DlgStyleType_Large });
