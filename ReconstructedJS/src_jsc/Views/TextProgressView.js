// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/TextProgressView.js:1
// source line 51, bytecode pc 148
(xs.Views.TextProgressView = xs.Views.BaseView.extend({
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    name: "TextProgressView",
    ctor: function() {
    // source line 24, bytecode pc 12
    this._super();
    // source line 25, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    _initView: function(viewCfg) {
    // source line 29, bytecode pc 41
    (this.label = xs.Factorys.Label.createByLabelId(viewCfg.labelId));
    // source line 30, bytecode pc 77
    xs.Utils.Node.attachNodes(this, this.label);
    // source line 34, bytecode pc 111
    this.label.setStringParams([ 0, 0 ]);
},
    reloadData: function(model) {
    // source line 42, bytecode pc 47
    this.label.setStringParams([ model.cur, model.max ]);
},
    update: function(cur, max) {
    // source line 47, bytecode pc 37
    this.label.setStringParams([ cur, max ]);
},
    init: function(viewCfg) {
    // source line 52, bytecode pc 12
    this._super();
    // source line 53, bytecode pc 29
    this._initView(viewCfg);
}
}));
// source line 65, bytecode pc 174
(xs.Views.TextProgressView.create = function(model, viewCfg) {
    var _view;
    // source line 67, bytecode pc 23
    (_view = new xs.Views.TextProgressView());
    // source line 69, bytecode pc 55
    xs.assert(viewCfg.labelId, "viewCfg need labelId");
    // source line 71, bytecode pc 74
    _view.init(viewCfg);
    // source line 72, bytecode pc 93
    _view.reloadData(model);
    // source line 77, bytecode pc 97
    return _view;
});
