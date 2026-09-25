// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/RoundClippingNode.js:1
// source line 23, bytecode pc 85
(xs.Views.RoundClippingNode = cc.Node.extend({
    name: "RoundClippingNode",
    clip: null,
    stencil: null,
    ctor: function() {
    // source line 19, bytecode pc 12
    this._super();
    // source line 20, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(size, radius) {
    // source line 25, bytecode pc 16
    this.setContentSize(size);
    // source line 26, bytecode pc 58
    this.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 30, bytecode pc 86
    (this.stencil = cc.DrawNode.create());
    // source line 31, bytecode pc 108
    this.stencil.setContentSize(size);
    // source line 41, bytecode pc 341
    this.stencil.drawRoundPoly([ cc.p(0, 0), cc.p(0, size.height), cc.p(size.width, size.height), cc.p(size.width, 0) ], radius, 2, [ true, true, true, true ], cc.c4f(1, 0, 1, 1), 0, cc.c4f(0, 1, 1, 1));
    // source line 43, bytecode pc 376
    (this.clip = cc.ClippingNode.create(this.stencil));
    // source line 44, bytecode pc 423
    this.clip.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 45, bytecode pc 445
    this.clip.setContentSize(size);
    // source line 53, bytecode pc 498
    xs.Utils.Node.attachNodes(this, this.clip, { desc: "c" });
}
}));
// source line 60, bytecode pc 111
(xs.Views.RoundClippingNode.create = function(size, radius) {
    var _view;
    // source line 63, bytecode pc 23
    (_view = new xs.Views.RoundClippingNode());
    // source line 66, bytecode pc 46
    _view.init(size, radius);
    // source line 69, bytecode pc 50
    return _view;
});
