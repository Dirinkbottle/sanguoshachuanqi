// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/WorshipDescView.js:1
// source line 14, bytecode pc 63
(xs.Views.WorshipDescView = cc.Node.extend({
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    if (!this._super()) {
        // source line 16, bytecode pc 19
        return false;
    }
    // source line 18, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 19, bytecode pc 35
    (this.m_descLab1 = null);
    // source line 20, bytecode pc 43
    (this.m_descLab2 = null);
    // source line 21, bytecode pc 51
    (this.m_descLab3 = null);
    // source line 23, bytecode pc 88
    this.setContentSize(cc.size(768, 124));
    // source line 25, bytecode pc 139
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.WorshipDesc, this));
    // source line 26, bytecode pc 175
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 28, bytecode pc 237
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.WorshipDescView.cfg.ccbCfg, this);
    // source line 30, bytecode pc 239
    return true;
}
}));
// source line 34, bytecode pc 89
(xs.Views.WorshipDescView.create = function() {
    var view;
    // source line 35, bytecode pc 23
    (view = new xs.Views.WorshipDescView());
    if ((view && view.init())) {
        // source line 37, bytecode pc 55
        return view;
    }
    // source line 39, bytecode pc 78
    xs.warn("xs.Views.WorshipDescView.create error!");
    // source line 40, bytecode pc 80
    return null;
});
// source line 47, bytecode pc 297
(xs.Views.WorshipDescView.cfg = {
    ccbCfg: [
        { name: "m_descLab1", tag: 11, type: "ls", id: "LS_liebiaoInf", stringId: "str_Worship_desc1" },
        { name: "m_descLab2", tag: 12, type: "ls", id: "LS_liebiaoInf", stringId: "str_Worship_desc2" },
        { name: "m_descLab3", tag: 13, type: "ls", id: "LS_liebiaoInf", stringId: "str_Worship_desc3" }
    ]
});
