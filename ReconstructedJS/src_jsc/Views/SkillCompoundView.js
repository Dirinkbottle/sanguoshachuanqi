// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/SkillCompoundView.js:1
// source line 58, bytecode pc 83
(xs.Views.SkillCompoundView = cc.Layer.extend({
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(skillModel) {
    var card;
    if (!this._super()) {
        // source line 14, bytecode pc 19
        return false;
    }
    // source line 17, bytecode pc 63
    (this.armLight = xs.Views.Armature.AutoAudioArmature.create("Arm_Reincarnation"));
    // source line 18, bytecode pc 141
    xs.Utils.Node.attachNodes(this, this.armLight, { desc: "c", offset: cc.p(0, 0) });
    // source line 19, bytecode pc 184
    this.armLight.playAniById("idle", { loop: false, speed: 1 });
    // source line 21, bytecode pc 228
    (this.arm = xs.Views.Armature.AutoAudioArmature.create("Arm_Reincarnation"));
    // source line 22, bytecode pc 252
    (card = skillModel.createCard_Detail());
    // source line 23, bytecode pc 280
    this.arm.replaceSkin("card", card);
    // source line 24, bytecode pc 343
    this.arm.replaceSkin("text", xs.Factorys.Label.createByStyleIdWithStringId("LS_wujiangName1", "1070910053"));
    // source line 25, bytecode pc 422
    xs.Utils.Node.attachNodes(this, this.arm, { desc: "c", offset: cc.p(0, 20) });
    // source line 26, bytecode pc 465
    this.arm.playAniById("idle", { loop: false, speed: 1 });
    // source line 28, bytecode pc 523
    (this.cardBtn = xs.Views.Btn.createInvisible(cc.size(310, 430)));
    // source line 29, bytecode pc 601
    xs.Utils.Node.attachNodes(this, this.cardBtn, { desc: "c", offset: cc.p(0, 0) });
    // source line 33, bytecode pc 638
    this.cardBtn.setOnClickCallBack(function() {
    // source line 32, bytecode pc 53
    xs.Views.Mgr.showDialogByName("SkillNoPanel", { skillData: skillModel });
}.bind(this));
    // source line 36, bytecode pc 683
    (this.confirmBtn = xs.Views.Btn.createWithStringId("Btn_Default", "1071310061"));
    // source line 37, bytecode pc 726
    this.confirmBtn.setAnchorPoint(cc.p(0.5, 0));
    // source line 38, bytecode pc 785
    xs.Utils.Node.attachNodes(this, this.confirmBtn, { desc: "cb", sc: true });
    // source line 41, bytecode pc 822
    this.confirmBtn.setOnClickCallBack(function() {
    // source line 40, bytecode pc 23
    this.getParent().back();
}.bind(this));
    // source line 43, bytecode pc 824
    return true;
},
    onEnter: function() {
    // source line 52, bytecode pc 137
    this.runAction(xs.Utils.Action.combineSequence([
    this.arm.createPlayAction("reincarnation", { speed: 1, loop: false }),
    this.armLight.createPlayAction("lightFlash", { loop: true, speed: 1 })
]));
},
    setBaseTouchPriority: function(priority) {
    // source line 59, bytecode pc 9
    (this.m_basePriority = priority);
    // source line 60, bytecode pc 29
    this.setTouchPriority(this.m_basePriority);
    // source line 61, bytecode pc 56
    this.confirmBtn.setTouchPriority((this.m_basePriority - 1));
    // source line 62, bytecode pc 83
    this.cardBtn.setTouchPriority((this.m_basePriority - 1));
}
}));
// source line 66, bytecode pc 109
(xs.Views.SkillCompoundView.create = function(skillModel) {
    var ret;
    // source line 67, bytecode pc 23
    (ret = new xs.Views.SkillCompoundView());
    if ((ret && ret.init(skillModel))) {
        // source line 69, bytecode pc 59
        return ret;
    }
    // source line 72, bytecode pc 88
    xs.assert(false, "xs.Views.SkillCompoundView.create fail!", ret);
    // source line 74, bytecode pc 90
    return null;
});
