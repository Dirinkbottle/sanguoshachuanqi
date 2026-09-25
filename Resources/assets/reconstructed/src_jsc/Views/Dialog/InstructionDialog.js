// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/InstructionDialog.js:1
// source line 91, bytecode pc 276
(xs.Views.Dialog.InstructionDialog = xs.Views.HungerLayer.extend({
    name: "InstructionDialog",
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(params) {
    // source line 15, bytecode pc 12
    this._super();
    // source line 17, bytecode pc 22
    (this.params = params);
    // source line 19, bytecode pc 58
    (this.ccbNode = xs.ccb_reader.load("ccb3/DevelopScene_instruction.ccbi", this));
    // source line 20, bytecode pc 101
    this.ccbNode.setContentSize(cc.size(553, 370));
    // source line 21, bytecode pc 148
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 22, bytecode pc 201
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 24, bytecode pc 209
    (this.m_title = null);
    // source line 25, bytecode pc 217
    (this.m_closeBtn = null);
    // source line 26, bytecode pc 225
    (this.m_content = null);
    // source line 27, bytecode pc 273
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 30, bytecode pc 318
    (this.m_content = xs.Factorys.Label.createByStyleIdWithString("LS_popUI2", ""));
    // source line 31, bytecode pc 359
    this.m_content.setDimensions(cc.size(500, 0));
    // source line 32, bytecode pc 388
    this.m_content.setHorizontalAlignment(cc.TEXT_ALIGNMENT_LEFT);
    // source line 33, bytecode pc 427
    this.m_content.setAnchorPoint(cc.p(0, 0));
    // source line 34, bytecode pc 466
    this.m_content.setPosition(cc.p(0, 0));
    if ((this.params && this.params.strings)) {
        // source line 37, bytecode pc 519
        this.setContentWithStrings(this.params.strings);
    } else {
        if ((this.params && this.params.key)) {
            // source line 39, bytecode pc 577
            this.setContentWithKey(this.params.key);
        } else {
            if ((this.params && this.params.string)) {
                // source line 41, bytecode pc 635
                this.setContentWithString(this.params.string);
            }
        }
    }
    // source line 44, bytecode pc 663
    (this.m_scrollView = cc.ScrollView.create());
    // source line 45, bytecode pc 706
    this.m_scrollView.setViewSize(cc.size(500, 270));
    // source line 46, bytecode pc 731
    this.m_scrollView.setContainer(this.m_content);
    // source line 47, bytecode pc 793
    this.m_scrollView.setContentSize(cc.size(500, this.m_content.getContentSize().height));
    // source line 48, bytecode pc 857
    this.m_scrollView.setContentOffset(cc.p(0, (270 - this.m_content.getContentSize().height)));
    // source line 49, bytecode pc 886
    this.m_scrollView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 50, bytecode pc 978
    xs.Utils.Node.attachNodes(this, this.m_scrollView, { desc: "c", offset: cc.p(-250, -160), sc: true });
    // source line 52, bytecode pc 1002
    this.m_closeBtn.setOnClickCallBack(function() {
    // source line 53, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 56, bytecode pc 1004
    return true;
},
    onEnter: function() {
    // source line 60, bytecode pc 12
    this._super();
    // source line 61, bytecode pc 54
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.tag));
    // source line 62, bytecode pc 81
    this.m_scrollView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    setContentWithStrings: function(strings) {
    var contentStr, i;
    // source line 66, bytecode pc 8
    (contentStr = "");
    // source line 67, bytecode pc 13
    (i = 0);
    while ((i < strings.length)) {
        // source line 68, bytecode pc 61
        (contentStr = (contentStr + xs.Tools.String.createString(strings[i])));
        // source line 67, bytecode pc 75
        (i = (+i + 1));
    }
    // source line 71, bytecode pc 116
    this.m_content.setString(contentStr);
},
    setContentWithKey: function(key) {
    // source line 75, bytecode pc 48
    this.m_content.setString(xs.Tools.String.createString(key));
},
    setContentWithString: function(string) {
    // source line 78, bytecode pc 32
    this.m_content.setString((string || ""));
},
    setBaseTouchPriority: function(priority) {
    // source line 82, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 83, bytecode pc 26
    this.setTouchPriority(priority);
},
    cfg: {
        btnClose: { tag: -1 },
        ccbCfg: [
            { tag: 10, type: "ls", name: "m_title", id: "LS_popUI1", stringKey: "instruction" },
            { tag: 11, type: "btn", name: "m_closeBtn", id: "Btn_Close" }
        ]
    }
}));
// source line 97, bytecode pc 307
(xs.Views.Dialog.InstructionDialog.create = function(params) {
    var ret;
    // source line 98, bytecode pc 28
    (ret = new xs.Views.Dialog.InstructionDialog());
    if ((ret && ret.init(params))) {
        // source line 100, bytecode pc 64
        return ret;
    }
    // source line 102, bytecode pc 66
    return null;
});
// source line 109, bytecode pc 432
xs.Views.Mgr.registerDialog("InstructionDialog", {
    "class": xs.Views.Dialog.InstructionDialog,
    styleType: xs.Constant_DlgStyleType_Large,
    dlgType: xs.Cfg.Scene.CommonScene.Dialog,
    viewType: xs.Constant_ViewType_Dlg
});
