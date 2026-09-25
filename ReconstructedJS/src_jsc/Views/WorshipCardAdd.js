// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/WorshipCardAdd.js:1
// source line 46, bytecode pc 93
(xs.Views.WorshipCardAdd = cc.Node.extend({
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 21, bytecode pc 35
    (this.m_listener = null);
    // source line 22, bytecode pc 43
    (this.m_ccbNode = null);
    // source line 24, bytecode pc 51
    (this.m_addBtn = null);
    // source line 25, bytecode pc 59
    (this.m_descLab1 = null);
    // source line 26, bytecode pc 67
    (this.m_descLab2 = null);
    // source line 28, bytecode pc 105
    this.setContentSize(cc.size(270, 372));
    // source line 30, bytecode pc 156
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.WorshipCardAdd, this));
    // source line 31, bytecode pc 192
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 33, bytecode pc 254
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.WorshipCardAdd.cfg.ccbCfg, this);
    // source line 35, bytecode pc 292
    this.m_addBtn.addOnClickCallBack(this.addCallback.bind(this));
    // source line 37, bytecode pc 294
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 40, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 41, bytecode pc 65
    this.m_addBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.WorshipCardAdd.cfg.m_addBtn.priority));
},
    setListener: function(listener) {
    // source line 44, bytecode pc 9
    (this.m_listener = listener);
},
    addCallback: function() {
    if (this.m_listener) {
        // source line 48, bytecode pc 28
        this.m_listener.WorshipCardAdd_AddCallback();
    }
}
}));
// source line 54, bytecode pc 119
(xs.Views.WorshipCardAdd.create = function() {
    var view;
    // source line 55, bytecode pc 23
    (view = new xs.Views.WorshipCardAdd());
    if ((view && view.init())) {
        // source line 57, bytecode pc 55
        return view;
    }
    // source line 59, bytecode pc 78
    xs.warn("xs.Views.WorshipCardAdd.create error!");
    // source line 60, bytecode pc 80
    return null;
});
// source line 70, bytecode pc 345
(xs.Views.WorshipCardAdd.cfg = {
    ccbCfg: [
        { name: "m_addBtn", tag: 10, type: "btn", id: "Btn_AddCard", string: "" },
        { name: "m_descLab1", tag: 11, type: "ls", id: "LS_fightUI1", stringId: "str_Worship_addDesc1" },
        { name: "m_descLab2", tag: 12, type: "ls", id: "LS_fightUI1", stringId: "str_Worship_addDesc2" }
    ],
    m_addBtn: { priority: -2 }
});
