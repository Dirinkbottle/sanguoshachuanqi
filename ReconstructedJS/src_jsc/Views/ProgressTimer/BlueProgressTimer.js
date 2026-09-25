// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ProgressTimer/BlueProgressTimer.js:1
// source line 50, bytecode pc 102
(xs.Views.BlueProgressTimer = cc.Node.extend({
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    var progressBarSprite, progressBarSpritePos;
    if (!this._super()) {
        // source line 18, bytecode pc 19
        return false;
    }
    // source line 21, bytecode pc 53
    (this.ccbNode = cc.BuilderReader.load("ccb3/BlueProgressTimer.ccbi"));
    // source line 22, bytecode pc 73
    this.addChild(this.ccbNode);
    // source line 24, bytecode pc 110
    this.setContentSize(cc.size(195, 24));
    // source line 25, bytecode pc 152
    this.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 27, bytecode pc 190
    (progressBarSprite = this.ccbNode.getChildByTag(this.cfg.progressSprite.tag));
    // source line 28, bytecode pc 205
    progressBarSprite.removeFromParent();
    // source line 29, bytecode pc 223
    (progressBarSpritePos = progressBarSprite.getPosition());
    // source line 31, bytecode pc 255
    (this.progressTimer = cc.ProgressTimer.create(progressBarSprite));
    // source line 32, bytecode pc 277
    this.progressTimer.setPosition(progressBarSpritePos);
    // source line 33, bytecode pc 306
    this.progressTimer.setType(cc.PROGRESS_TIMER_TYPE_BAR);
    // source line 34, bytecode pc 345
    this.progressTimer.setMidpoint(cc.p(0, 0));
    // source line 35, bytecode pc 384
    this.progressTimer.setBarChangeRate(cc.p(1, 0));
    // source line 36, bytecode pc 409
    this.ccbNode.addChild(this.progressTimer);
    // source line 39, bytecode pc 411
    return true;
},
    setPercentage: function(percentage) {
    if (this.progressTimer) {
        // source line 44, bytecode pc 32
        this.progressTimer.setPercentage(percentage);
    }
},
    cfg: { progressSprite: { tag: 11 } }
}));
// source line 56, bytecode pc 128
(xs.Views.BlueProgressTimer.create = function() {
    var ret;
    // source line 57, bytecode pc 23
    (ret = new xs.Views.BlueProgressTimer());
    if ((ret && ret.init())) {
        // source line 59, bytecode pc 55
        return ret;
    }
    // source line 62, bytecode pc 57
    return null;
});
