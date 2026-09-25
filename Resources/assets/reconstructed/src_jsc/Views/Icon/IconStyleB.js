// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Icon/IconStyleB.js:1
// source line 73, bytecode pc 138
(xs.Views.Icon.IconStyleB = xs.Views.Icon.IconStyleA.extend({
    name: "xs.Views.Icon.IconStyleB",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    _createHeadView: function(model) {
    // source line 45, bytecode pc 30
    return xs.Tools.Card.createHeadView_Item(model);
},
    _reloadData_Name: function(model) {
    var _model, _str, _pos;
    // source line 56, bytecode pc 6
    (_model = model);
    // source line 58, bytecode pc 24
    (_str = _model.getNameString());
    if (!this.nameView) {
        // source line 62, bytecode pc 75
        (this.nameView = xs.Factorys.Label.createByStyleId("LS_daojuName"));
        // source line 64, bytecode pc 129
        (_pos = cc.p(0, (-13 - (xs.Cfg.Resource.Head.h / 2))));
        // source line 66, bytecode pc 212
        xs.Utils.Node.attachNodes(this, this.nameView, { desc: "cb", offset: _pos }, this.Cfg.Constant.Bg.Name);
    }
    if (this.nameView) {
        // source line 70, bytecode pc 245
        this.nameView.setString(_str);
    }
},
    _reloadData_PieceName: function(model) {
    var _model, _nameString, _pos;
    // source line 75, bytecode pc 18
    this.log("_reloadData_PieceName");
    // source line 77, bytecode pc 25
    (_model = model);
    // source line 79, bytecode pc 76
    (_nameString = (_model.getNameString() + xs.Tools.String.createString("auto_name_31")));
    if (!this.nameView) {
        // source line 83, bytecode pc 127
        (this.nameView = xs.Factorys.Label.createByStyleId("LS_daojuName"));
        // source line 85, bytecode pc 181
        (_pos = cc.p(0, (-10 - (xs.Cfg.Resource.Head.h / 2))));
        // source line 87, bytecode pc 264
        xs.Utils.Node.attachNodes(this, this.nameView, { desc: "cb", offset: _pos }, this.Cfg.Constant.Bg.Name);
    }
    if (this.nameView) {
        // source line 91, bytecode pc 297
        this.nameView.setString(_nameString);
    }
}
}));
// source line 117, bytecode pc 169
(xs.Views.Icon.IconStyleB.create = function(objCfg, viewCfg) {
    var _view, _objCfg;
    // source line 121, bytecode pc 28
    (_view = new xs.Views.Icon.IconStyleB());
    // source line 123, bytecode pc 47
    (_objCfg = (objCfg || {}));
    // source line 127, bytecode pc 70
    _view.init(_objCfg, viewCfg);
    // source line 129, bytecode pc 96
    xs.Utils.makeDebugPoint(_view);
    // source line 130, bytecode pc 122
    xs.Utils.makeOriginal(_view);
    // source line 132, bytecode pc 126
    return _view;
});
