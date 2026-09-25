// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Gems/GemsEquipmentAdd.js:1
// source line 52, bytecode pc 98
(xs.Views.Gems.GemsEquipmentAdd = cc.Node.extend({
    ctor: function() {
    // source line 6, bytecode pc 12
    this._super();
    // source line 7, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    if (!this._super()) {
        // source line 11, bytecode pc 19
        return false;
    }
    // source line 13, bytecode pc 42
    xs.log_zhz("GemsEquipmentAdd init");
    // source line 14, bytecode pc 50
    (this.m_baseTouchPriority = 0);
    // source line 15, bytecode pc 58
    (this.m_listener = null);
    // source line 16, bytecode pc 66
    (this.m_object = null);
    // source line 17, bytecode pc 74
    (this.m_ccbNode = null);
    // source line 19, bytecode pc 82
    (this.m_eqsBg = null);
    // source line 20, bytecode pc 90
    (this.m_addBtn = null);
    // source line 21, bytecode pc 98
    (this.m_descLab1 = null);
    // source line 22, bytecode pc 106
    (this.m_descLab2 = null);
    // source line 24, bytecode pc 114
    (this.m_gems1 = null);
    // source line 25, bytecode pc 122
    (this.m_gems2 = null);
    // source line 26, bytecode pc 130
    (this.m_gems3 = null);
    // source line 27, bytecode pc 138
    (this.m_gems4 = null);
    // source line 28, bytecode pc 146
    (this.m_gems5 = null);
    // source line 30, bytecode pc 184
    this.setContentSize(cc.size(270, 372));
    // source line 31, bytecode pc 235
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.GemsEquipmentAdd, this));
    // source line 32, bytecode pc 271
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 33, bytecode pc 338
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.Gems.GemsEquipmentAdd.cfg.ccbCfg, this);
    // source line 34, bytecode pc 376
    this.m_addBtn.addOnClickCallBack(this.addCallback.bind(this));
    // source line 36, bytecode pc 396
    this.m_gems1.setVisible(false);
    // source line 37, bytecode pc 416
    this.m_gems2.setVisible(false);
    // source line 38, bytecode pc 436
    this.m_gems3.setVisible(false);
    // source line 39, bytecode pc 456
    this.m_gems4.setVisible(false);
    // source line 40, bytecode pc 476
    this.m_gems5.setVisible(false);
    // source line 42, bytecode pc 478
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 45, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 46, bytecode pc 70
    this.m_addBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.Gems.GemsEquipmentAdd.cfg.m_addBtn.priority));
},
    setListener: function(listener, object) {
    // source line 49, bytecode pc 9
    (this.m_listener = listener);
    // source line 50, bytecode pc 19
    (this.m_object = object);
},
    addCallback: function() {
    if (this.m_listener) {
        // source line 54, bytecode pc 35
        this.m_listener.EquipmentAdd_addcallback(this.m_object);
    }
}
}));
// source line 61, bytecode pc 129
(xs.Views.Gems.GemsEquipmentAdd.create = function() {
    var view;
    // source line 62, bytecode pc 28
    (view = new xs.Views.Gems.GemsEquipmentAdd());
    if ((view && view.init())) {
        // source line 64, bytecode pc 60
        return view;
    }
    // source line 66, bytecode pc 83
    xs.warn("xs.Views.Gems.GemsEquipmentAdd.create error!");
    // source line 67, bytecode pc 85
    return null;
});
// source line 83, bytecode pc 521
(xs.Views.Gems.GemsEquipmentAdd.cfg = {
    ccbCfg: [
        { name: "m_gems1", tag: 1 },
        { name: "m_gems2", tag: 2 },
        { name: "m_gems3", tag: 3 },
        { name: "m_gems4", tag: 4 },
        { name: "m_gems5", tag: 5 },
        { name: "m_eqsBg", tag: 8 },
        { name: "m_addBtn", tag: 9, type: "btn", id: "Btn_Gems_QuestionMark", string: "" },
        { name: "m_descLab1", tag: 10, type: "ls", id: "LS_BntHui", stringId: "gems_str_addDesc1" },
        { name: "m_descLab2", tag: 11, type: "ls", id: "LS_BntHui", stringId: "gems_str_addDesc2" }
    ],
    m_addBtn: { priority: -2 }
});
