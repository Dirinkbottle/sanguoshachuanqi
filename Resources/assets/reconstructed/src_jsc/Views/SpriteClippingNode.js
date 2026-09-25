// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/SpriteClippingNode.js:1
// source line 22, bytecode pc 79
(xs.Views.SpriteClippingNode = cc.Node.extend({
    name: "SpriteClippingNode",
    clip: null,
    ctor: function() {
    // source line 18, bytecode pc 12
    this._super();
    // source line 19, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(stencilSprite) {
    var _size;
    // source line 24, bytecode pc 17
    (_size = stencilSprite.getContentSize());
    // source line 26, bytecode pc 34
    this.setContentSize(_size);
    // source line 27, bytecode pc 76
    this.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 30, bytecode pc 112
    stencilSprite.setAnchorPoint(cc.p(0, 0));
    // source line 34, bytecode pc 144
    (this.clip = cc.ClippingNode.create(stencilSprite));
    // source line 36, bytecode pc 166
    this.clip.setContentSize(_size);
    // source line 37, bytecode pc 190
    this.clip.setAlphaThreshold(0.5);
    // source line 40, bytecode pc 243
    xs.Utils.Node.attachNodes(this, this.clip, { desc: "lb" });
}
}));
// source line 47, bytecode pc 105
(xs.Views.SpriteClippingNode.createWithFileName = function(fileName) {
    var _view, _sprite;
    // source line 50, bytecode pc 23
    (_view = new xs.Views.SpriteClippingNode());
    // source line 52, bytecode pc 57
    (_sprite = xs.Factorys.Sprite.createWithFileName(fileName));
    // source line 54, bytecode pc 82
    xs.assert(false, "SpriteClippingNode");
    // source line 57, bytecode pc 101
    _view.init(_sprite);
    // source line 60, bytecode pc 105
    return _view;
});
// source line 64, bytecode pc 131
(xs.Views.SpriteClippingNode.create = function(spriteId) {
    var _view;
    // source line 67, bytecode pc 23
    (_view = new xs.Views.SpriteClippingNode());
    // source line 70, bytecode pc 50
    _view.init(size, radius);
    // source line 73, bytecode pc 54
    return _view;
});
