// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ReincarnationView.js:1
// source line 67, bytecode pc 88
(xs.Views.ReincarnationView = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(generalModel) {
    var card;
    if (!this._super()) {
        // source line 14, bytecode pc 19
        return false;
    }
    // source line 16, bytecode pc 29
    (this.generalModel = generalModel);
    // source line 18, bytecode pc 73
    (this.armLight = xs.Views.Armature.AutoAudioArmature.create("Arm_Reincarnation"));
    // source line 19, bytecode pc 151
    xs.Utils.Node.attachNodes(this, this.armLight, { desc: "c", offset: cc.p(0, 0) });
    // source line 20, bytecode pc 194
    this.armLight.playAniById("idle", { loop: false, speed: 1 });
    // source line 22, bytecode pc 238
    (this.arm = xs.Views.Armature.AutoAudioArmature.create("Arm_Reincarnation"));
    // source line 23, bytecode pc 259
    (card = this.generalModel.createCard_General());
    // source line 24, bytecode pc 287
    this.arm.replaceSkin("card", card);
    // source line 26, bytecode pc 377
    this.arm.replaceSkin("text", xs.Factorys.Label.createByStyleIdWithString("LS_liandanGX", xs.Tools.String.createString("checkDetailTip")));
    // source line 27, bytecode pc 455
    xs.Utils.Node.attachNodes(this, this.arm, { desc: "c", offset: cc.p(0, 0) });
    // source line 28, bytecode pc 498
    this.arm.playAniById("idle", { loop: false, speed: 1 });
    // source line 30, bytecode pc 556
    (this.cardBtn = xs.Views.Btn.createInvisible(cc.size(310, 430)));
    // source line 31, bytecode pc 634
    xs.Utils.Node.attachNodes(this, this.cardBtn, { desc: "c", offset: cc.p(0, 0) });
    // source line 35, bytecode pc 671
    this.cardBtn.setOnClickCallBack(function() {
    // source line 34, bytecode pc 60
    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: this.generalModel, type: "achieve_have" });
}.bind(this));
    // source line 38, bytecode pc 710
    (this.confirmBtn = xs.Views.Btn.create("Btn_Confirm"));
    // source line 41, bytecode pc 747
    this.confirmBtn.setOnClickCallBack(function() {
    // source line 40, bytecode pc 23
    this.getParent().back();
}.bind(this));
    // source line 42, bytecode pc 790
    this.confirmBtn.setAnchorPoint(cc.p(0.5, 0));
    // source line 43, bytecode pc 849
    xs.Utils.Node.attachNodes(this, this.confirmBtn, { desc: "cb", sc: true });
    // source line 45, bytecode pc 851
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 49, bytecode pc 28
    xs.log("onEnterTransitionDidFinish-ReincarnationView", "begin");
    // source line 50, bytecode pc 41
    this._super();
    // source line 59, bytecode pc 223
    this.runAction(xs.Utils.Action.combineSequence([
    this.arm.createPlayAction("reincarnation", { speed: 1, loop: false }),
    this.armLight.createPlayAction("lightFlash", { loop: true, speed: 1 }),
    cc.CallFunc.create(function() {
    // source line 58, bytecode pc 17
    this.generalModel.playAudioEffect();
}.bind(this))
]));
    // source line 64, bytecode pc 252
    xs.log("onEnterTransitionDidFinish-ReincarnationView", "end");
},
    setBaseTouchPriority: function(priority) {
    // source line 68, bytecode pc 9
    (this.m_basePriority = priority);
    // source line 69, bytecode pc 29
    this.setTouchPriority(this.m_basePriority);
    // source line 70, bytecode pc 56
    this.confirmBtn.setTouchPriority((this.m_basePriority - 1));
    // source line 71, bytecode pc 83
    this.cardBtn.setTouchPriority((this.m_basePriority - 1));
}
}));
// source line 75, bytecode pc 114
(xs.Views.ReincarnationView.create = function(generalModel) {
    var ret;
    // source line 76, bytecode pc 23
    (ret = new xs.Views.ReincarnationView());
    if ((ret && ret.init(generalModel))) {
        // source line 78, bytecode pc 59
        return ret;
    }
    // source line 80, bytecode pc 61
    return null;
});
