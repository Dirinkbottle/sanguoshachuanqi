// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Icon/IconPackage.js:1
// source line 79, bytecode pc 133
(xs.Views.Icon.IconPackage = xs.Views.BaseView.extend({
    name: "xs.Views.Icon.IconPackage",
    ctor: function() {
    // source line 6, bytecode pc 12
    this._super();
    // source line 7, bytecode pc 52
    cc.associateWithNative(this, xs.Views.Icon.BaseIcon);
},
    init: function(objCfg) {
    // source line 13, bytecode pc 12
    this._super();
    // source line 15, bytecode pc 22
    (this.objCfg = objCfg);
    // source line 20, bytecode pc 104
    this.setContentSize(cc._size(xs.Cfg.Resource.Head.w, xs.Cfg.Resource.Head.h));
},
    reloadData: function(model) {
    var _model;
    // source line 30, bytecode pc 6
    (_model = model);
    // source line 33, bytecode pc 23
    this._reloadData_id(_model);
},
    _reloadData_id: function(model) {
    // source line 38, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_view_main);
    // source line 39, bytecode pc 41
    (this.m_view_main = null);
    // source line 40, bytecode pc 64
    (this.m_view_main = this._getLazyInitViewMain(model));
},
    _getLazyInitViewMain: function(model) {
    if (!this.m_view_main) {
        // source line 46, bytecode pc 47
        xs.log_zj("IconPackage-_getLazyInitViewMain", this.getContentSize());
        // source line 48, bytecode pc 79
        (this.m_view_main = model.getStyle().createView_Head());
        // source line 54, bytecode pc 132
        xs.Utils.Node.attachNodes(this, this.m_view_main, { base: "c" });
        // source line 59, bytecode pc 173
        xs.log_zj("m_view_main", this.m_view_main.getPosition());
    }
    // source line 61, bytecode pc 180
    return this.m_view_main;
},
    reloadRewordData: function(model, idx, scale) {
    // source line 65, bytecode pc 7
    (this.m_data = null);
    // source line 66, bytecode pc 28
    (this.m_data = model.getData());
    if ((idx >= this.m_data.length)) {
        // source line 69, bytecode pc 77
        xs.err("reloadRewordData", "model.getData() is null");
        // source line 70, bytecode pc 79
        return void 0;
    }
    // source line 73, bytecode pc 96
    this._createRewordIconAtIdx(idx);
    if (scale) {
        // source line 75, bytecode pc 126
        this.m_view_main.setScale(scale);
    }
},
    _createRewordIconAtIdx: function(idx) {
    var add;
    // source line 81, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_view_main);
    // source line 82, bytecode pc 41
    (this.m_view_main = null);
    if (!this.m_view_main) {
        // source line 85, bytecode pc 94
        (add = xs.Factorys.Add.createWithJson(this.m_data[idx]));
        // source line 86, bytecode pc 115
        (this.m_view_main = add.createHeadView());
        // source line 92, bytecode pc 168
        xs.Utils.Node.attachNodes(this, this.m_view_main, { base: "c" });
    }
}
}));
// source line 101, bytecode pc 164
(xs.Views.Icon.IconPackage.create = function(objCfg, viewCfg) {
    var _view, _objCfg;
    // source line 104, bytecode pc 28
    (_view = new xs.Views.Icon.IconPackage());
    // source line 106, bytecode pc 47
    (_objCfg = (objCfg || {}));
    // source line 108, bytecode pc 66
    _view.init(_objCfg);
    // source line 110, bytecode pc 85
    _view.attr(viewCfg);
    // source line 112, bytecode pc 111
    xs.Utils.makeDebugPoint(_view);
    // source line 113, bytecode pc 137
    xs.Utils.makeOriginal(_view);
    // source line 115, bytecode pc 141
    return _view;
});
