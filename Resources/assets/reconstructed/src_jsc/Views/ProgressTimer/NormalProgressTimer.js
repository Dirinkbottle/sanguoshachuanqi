// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ProgressTimer/NormalProgressTimer.js:1
// source line 57, bytecode pc 169
(xs.Views.NormalProgressTimer = cc.Node.extend({
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    var progressBarSprite, progressBarSpritePos;
    if (!this._super()) {
        // source line 13, bytecode pc 19
        return false;
    }
    // source line 16, bytecode pc 53
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_7_9_ProgressTimer.ccbi"));
    // source line 17, bytecode pc 73
    this.addChild(this.ccbNode);
    // source line 19, bytecode pc 110
    this.setContentSize(cc.size(195, 24));
    // source line 20, bytecode pc 152
    this.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 22, bytecode pc 190
    (progressBarSprite = this.ccbNode.getChildByTag(this.cfg.progressSprite.tag));
    // source line 23, bytecode pc 205
    progressBarSprite.removeFromParent();
    // source line 24, bytecode pc 223
    (progressBarSpritePos = progressBarSprite.getPosition());
    // source line 26, bytecode pc 255
    (this.progressTimer = cc.ProgressTimer.create(progressBarSprite));
    // source line 27, bytecode pc 277
    this.progressTimer.setPosition(progressBarSpritePos);
    // source line 28, bytecode pc 306
    this.progressTimer.setType(cc.PROGRESS_TIMER_TYPE_BAR);
    // source line 29, bytecode pc 345
    this.progressTimer.setMidpoint(cc.p(0, 0));
    // source line 30, bytecode pc 384
    this.progressTimer.setBarChangeRate(cc.p(1, 0));
    // source line 31, bytecode pc 409
    this.ccbNode.addChild(this.progressTimer);
    // source line 33, bytecode pc 417
    (this.m_exp = null);
    // source line 34, bytecode pc 465
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 36, bytecode pc 467
    return true;
},
    setPercentage: function(percentage) {
    if (this.progressTimer) {
        // source line 41, bytecode pc 32
        this.progressTimer.setPercentage(percentage);
    }
},
    setExpShow: function(haveExp, totalExp) {
    // source line 46, bytecode pc 31
    this.m_exp.setString(((haveExp + "/") + totalExp));
    // source line 47, bytecode pc 72
    this.setPercentage(Math.floor(((haveExp * 100) / totalExp)));
},
    cfg: {
        progressSprite: { tag: 10 },
        ccbCfg: [ { tag: 11, type: "ls", name: "m_exp", id: "LS_EXPInf" } ]
    }
}));
// source line 62, bytecode pc 195
(xs.Views.NormalProgressTimer.create = function() {
    var ret;
    // source line 63, bytecode pc 23
    (ret = new xs.Views.NormalProgressTimer());
    if ((ret && ret.init())) {
        // source line 65, bytecode pc 55
        return ret;
    }
    // source line 68, bytecode pc 57
    return null;
});
