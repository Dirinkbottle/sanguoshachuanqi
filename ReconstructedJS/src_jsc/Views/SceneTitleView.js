// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/SceneTitleView.js:1
// source line 34, bytecode pc 73
(xs.Views.SceneTitleView = cc.Node.extend({
    ctor: function() {
    // source line 13, bytecode pc 12
    this._super();
    // source line 14, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    if (!this._super()) {
        // source line 18, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 21, bytecode pc 35
    (this.m_titleLab = null);
    // source line 23, bytecode pc 86
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.SceneTitleView, this));
    // source line 24, bytecode pc 125
    this.m_ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 25, bytecode pc 161
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 27, bytecode pc 198
    this.setContentSize(cc.size(174, 36));
    // source line 29, bytecode pc 253
    (this.m_titleLab = this.m_ccbNode.getChildByTag(xs.Views.SceneTitleView.cfg.m_titleLab.tag));
    // source line 30, bytecode pc 298
    this.m_titleLab.setFontName(xsc.Tools.ProductSys.getOurttf());
    // source line 32, bytecode pc 300
    return true;
},
    setTitle: function(title) {
    // source line 35, bytecode pc 21
    this.m_titleLab.setString(title);
}
}));
// source line 39, bytecode pc 99
(xs.Views.SceneTitleView.create = function() {
    var view;
    // source line 40, bytecode pc 23
    (view = new xs.Views.SceneTitleView());
    if ((view && view.init())) {
        // source line 42, bytecode pc 55
        return view;
    }
    // source line 44, bytecode pc 57
    return null;
});
// source line 50, bytecode pc 144
(xs.Views.SceneTitleView.cfg = { m_titleLab: { tag: 10 } });
