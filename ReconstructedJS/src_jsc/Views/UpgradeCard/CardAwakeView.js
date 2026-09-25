// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/UpgradeCard/CardAwakeView.js:1
// source line 68, bytecode pc 88
(xs.Views.CardAwakeView = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(evolutionInfo, param) {
    var _visibleSize, card;
    if (!this._super()) {
        // source line 14, bytecode pc 19
        return false;
    }
    // source line 18, bytecode pc 29
    (this.evolutionInfo = evolutionInfo);
    // source line 19, bytecode pc 50
    (this.generalModel = evolutionInfo.getCacheGeneralModel());
    // source line 21, bytecode pc 75
    (_visibleSize = xs.director.getVisibleSize());
    // source line 22, bytecode pc 98
    xs.log_ck("init");
    // source line 23, bytecode pc 142
    (this.contentView = xs.Views.CardAwakeInfoView.create(this.evolutionInfo, param));
    // source line 25, bytecode pc 222
    xs.Utils.Node.attachNodes(this, this.contentView, { desc: "c", offset: cc.p(140, 0) });
    // source line 26, bytecode pc 242
    this.contentView.setVisible(false);
    // source line 28, bytecode pc 286
    (this.arm = xs.Views.Armature.AutoAudioArmature.create("Arm_HeroCard_JueXing"));
    // source line 29, bytecode pc 307
    (card = this.generalModel.createCard_General());
    // source line 30, bytecode pc 335
    this.arm.replaceSkin("card", card);
    // source line 32, bytecode pc 413
    xs.Utils.Node.attachNodes(this, this.arm, { desc: "c", offset: cc.p(0, 0) });
    // source line 33, bytecode pc 456
    this.arm.playAniById("idle", { loop: false, speed: 1 });
    // source line 36, bytecode pc 495
    (this.confirmBtn = xs.Views.Btn.create("Btn_Confirm"));
    // source line 39, bytecode pc 532
    this.confirmBtn.setOnClickCallBack(function() {
    // source line 38, bytecode pc 23
    this.getParent().back();
}.bind(this));
    // source line 40, bytecode pc 575
    this.confirmBtn.setAnchorPoint(cc.p(0.5, 0));
    // source line 41, bytecode pc 634
    xs.Utils.Node.attachNodes(this, this.confirmBtn, { desc: "cb", sc: true });
    // source line 42, bytecode pc 654
    this.confirmBtn.setVisible(false);
    // source line 43, bytecode pc 705
    this.confirmBtn.setString(xs.Tools.String.createString("1071310061"));
    // source line 45, bytecode pc 707
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 49, bytecode pc 28
    xs.log("onEnterTransitionDidFinish-CardAwakeView", "begin");
    // source line 50, bytecode pc 41
    this._super();
    // source line 60, bytecode pc 177
    this.runAction(xs.Utils.Action.combineSequence([
    this.arm.createPlayAction("awake", { loop: false, speed: 1 }),
    cc.CallFunc.create(function() {
    // source line 57, bytecode pc 17
    this.generalModel.playAudioEffect();
    // source line 58, bytecode pc 37
    this.confirmBtn.setVisible(true);
    // source line 59, bytecode pc 57
    this.contentView.setVisible(true);
}.bind(this))
]));
    // source line 65, bytecode pc 206
    xs.log("onEnterTransitionDidFinish-CardAwakeView", "end");
},
    setBaseTouchPriority: function(priority) {
    // source line 69, bytecode pc 9
    (this.m_basePriority = priority);
    // source line 70, bytecode pc 29
    this.setTouchPriority(this.m_basePriority);
    // source line 71, bytecode pc 59
    xs.log_ck(("this.m_basePriority:" + this.m_basePriority));
    // source line 72, bytecode pc 86
    this.confirmBtn.setTouchPriority((this.m_basePriority - 1));
}
}));
// source line 77, bytecode pc 114
(xs.Views.CardAwakeView.create = function(generalModel, param) {
    var ret;
    // source line 78, bytecode pc 23
    (ret = new xs.Views.CardAwakeView());
    if ((ret && ret.init(generalModel, param))) {
        // source line 80, bytecode pc 63
        return ret;
    }
    // source line 82, bytecode pc 65
    return null;
});
