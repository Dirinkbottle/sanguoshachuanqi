// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Combat/CombatScene.js:1
// source line 14, bytecode pc 63
(xs.Scene.CombatScene = cc.Scene.extend({
    ctor: function() {
    // source line 10, bytecode pc 12
    this._super();
    // source line 11, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function() {
    var visibleSize, playerInfo, pageView;
    // source line 15, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 18, bytecode pc 57
    xs.Tools.UI.addCommonBg(this, true, true);
    // source line 21, bytecode pc 87
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 22, bytecode pc 123
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 23, bytecode pc 179
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 26, bytecode pc 212
    (this.combatCardsView = xs.Views.CombatCardView.create());
    // source line 29, bytecode pc 275
    (pageView = xs.Views.TablePage.create(cc.size(846, (visibleSize.height - 56))));
    // source line 30, bytecode pc 330
    pageView.addPage(xs.Factorys.String.create("1071010001"), this.combatCardsView);
    // source line 31, bytecode pc 412
    xs.Utils.Node.attachNodes(this, pageView, { desc: "lb", sc: true }, xs.Cfg.Scene.SkillScene.pageView);
    // source line 34, bytecode pc 456
    (this.m_instructionBtn = xs.Tools.Views.Btn.createInstruction("combat_Instruction"));
    // source line 35, bytecode pc 547
    xs.Utils.Node.attachNodes(this, this.m_instructionBtn, { desc: "rt", offset: cc.p(-180, -60), sc: true }, null);
    // source line 36, bytecode pc 568
    this.m_instructionBtn.setTouchPriority(-3);
    // source line 39, bytecode pc 605
    (this.sideMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 40, bytecode pc 626
    this.sideMenu.setBaseTouchPriority(-2);
    // source line 42, bytecode pc 628
    return true;
}
}));
// source line 46, bytecode pc 89
(xs.Scene.CombatScene.create = function() {
    var ret;
    // source line 47, bytecode pc 23
    (ret = new xs.Scene.CombatScene());
    if ((ret && ret.init())) {
        // source line 49, bytecode pc 55
        return ret;
    }
    // source line 51, bytecode pc 57
    return null;
});
// source line 58, bytecode pc 183
xs.Scene.Mgr.registerScene("CombatScene", { "class": xs.Scene.CombatScene, area: [ "CombatScene" ], type: xs.Constant_SceneType_General });
