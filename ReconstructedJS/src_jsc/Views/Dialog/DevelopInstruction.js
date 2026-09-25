// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/DevelopInstruction.js:1
// source line 50, bytecode pc 303
(xs.Views.Dialog.DevelopInstruction = xs.Views.HungerLayer.extend({
    name: "DevelopInstruction",
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(params) {
    // source line 15, bytecode pc 12
    this._super();
    // source line 17, bytecode pc 48
    (this.ccbNode = xs.ccb_reader.load("ccb3/DevelopScene_instruction.ccbi", this));
    // source line 18, bytecode pc 91
    this.ccbNode.setContentSize(cc.size(553, 370));
    // source line 19, bytecode pc 138
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 20, bytecode pc 191
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 22, bytecode pc 199
    (this.m_title = null);
    // source line 23, bytecode pc 207
    (this.m_closeBtn = null);
    // source line 24, bytecode pc 215
    (this.m_content = null);
    // source line 25, bytecode pc 263
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 28, bytecode pc 287
    this.m_closeBtn.setOnClickCallBack(function() {
    // source line 29, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 32, bytecode pc 289
    return true;
},
    onEnter: function() {
    // source line 36, bytecode pc 12
    this._super();
    // source line 37, bytecode pc 54
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.tag));
},
    setBaseTouchPriority: function(priority) {
    // source line 41, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    cfg: {
        btnClose: { tag: -1 },
        ccbCfg: [
            { tag: 10, type: "ls", name: "m_title", id: "LS_popUI1", stringKey: "instruction" },
            { tag: 11, type: "btn", name: "m_closeBtn", id: "Btn_Close" },
            { tag: 12, type: "ls", name: "m_level", id: "LS_popUI2", stringKey: "developTip" }
        ]
    }
}));
// source line 55, bytecode pc 334
(xs.Views.Dialog.DevelopInstruction.create = function() {
    var ret;
    // source line 56, bytecode pc 28
    (ret = new xs.Views.Dialog.DevelopInstruction());
    if ((ret && ret.init())) {
        // source line 58, bytecode pc 60
        return ret;
    }
    // source line 60, bytecode pc 62
    return null;
});
// source line 67, bytecode pc 459
xs.Views.Mgr.registerDialog("DevelopInstruction", {
    "class": xs.Views.Dialog.DevelopInstruction,
    styleType: xs.Constant_DlgStyleType_Large,
    dlgType: xs.Cfg.Scene.CommonScene.Dialog,
    viewType: xs.Constant_ViewType_Dlg
});
