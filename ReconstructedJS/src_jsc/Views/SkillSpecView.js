// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/SkillSpecView.js:1
// source line 19, bytecode pc 69
(xs.Views.SkillSpecView = cc.Node.extend({
    bgSprite: null,
    ctor: function() {
    // source line 14, bytecode pc 12
    this._super();
    // source line 15, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    var _size;
    // source line 23, bytecode pc 12
    this._super();
    // source line 27, bytecode pc 46
    (this.bgSprite = cc.Sprite.create("res/HelloWorld.png"));
    // source line 30, bytecode pc 93
    this.bgSprite.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 31, bytecode pc 114
    (_size = this.bgSprite.getContentSize());
    // source line 32, bytecode pc 173
    this.bgSprite.setPosition(cc.p((_size.width / 2), (_size.height / 2)));
    // source line 35, bytecode pc 195
    this.addChild(this.bgSprite, 0);
}
}));
// source line 44, bytecode pc 95
(xs.Views.SkillSpecView.create = function(winSize) {
    // source line 49, bytecode pc 30
    (_specSkillView = new xs.Views.SkillSpecView());
    // source line 51, bytecode pc 47
    _specSkillView.init();
    // source line 53, bytecode pc 93
    _specSkillView.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 54, bytecode pc 151
    _specSkillView.setPosition(cc.p((winSize.width / 2), (winSize.height / 2)));
    // source line 56, bytecode pc 174
    _specSkillView.setScale(0.5);
    // source line 57, bytecode pc 193
    _specSkillView.setVisible(true);
    // source line 59, bytecode pc 199
    return _specSkillView;
});
