// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Icon/IconStyleC.js:1
// source line 45, bytecode pc 88
(xs.Views.Icon.IconStyleC = xs.Views.Icon.IconStyleA.extend({
    name: "xs.Views.Icon.IconStyleC",
    reloadData: function(model) {
    var _model;
    // source line 37, bytecode pc 17
    (_model = model.getStyleModel());
    // source line 38, bytecode pc 34
    this._super(_model);
},
    _reloadData_Name: function(model) {
    var _model, _str, _pos;
    // source line 47, bytecode pc 18
    this.log("_reloadData_Name");
    // source line 49, bytecode pc 36
    (_model = model.getStyleModel());
    // source line 51, bytecode pc 54
    (_str = _model.getNameString());
    if (!this.nameView) {
        // source line 55, bytecode pc 105
        (this.nameView = xs.Factorys.Label.createByStyleId("LS_daojuName"));
        // source line 57, bytecode pc 159
        (_pos = cc.p(0, (-13 - (xs.Cfg.Resource.Head.h / 2))));
        // source line 59, bytecode pc 242
        xs.Utils.Node.attachNodes(this, this.nameView, { desc: "cb", offset: _pos }, this.Cfg.Constant.Bg.Name);
    }
    if (this.nameView) {
        // source line 63, bytecode pc 275
        this.nameView.setString(_str);
    }
}
}));
// source line 114, bytecode pc 119
(xs.Views.Icon.IconStyleC.create = function(objCfg, viewCfg) {
    var _view, _objCfg;
    // source line 118, bytecode pc 28
    (_view = new xs.Views.Icon.IconStyleC());
    // source line 120, bytecode pc 47
    (_objCfg = (objCfg || {}));
    // source line 124, bytecode pc 70
    _view.init(_objCfg, viewCfg);
    // source line 126, bytecode pc 96
    xs.Utils.makeDebugPoint(_view);
    // source line 127, bytecode pc 122
    xs.Utils.makeOriginal(_view);
    // source line 129, bytecode pc 126
    return _view;
});
