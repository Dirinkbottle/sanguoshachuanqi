// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/SkillRefining/SkillRefiningScene.js:1
// source line 45, bytecode pc 93
(xs.Scene.SkillRefiningScene = cc.Scene.extend({
    name: "xs.Scene.SkillRefiningScene",
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(param) {
    var skillRefiningLayer;
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 52
    xs.Tools.UI.addCommonBg(this, true, true);
    // source line 16, bytecode pc 97
    (this.m_GeneralBg = xs.Factorys.Sprite.create("MiracleWeapons_beijing", "MiracleWeaponsScene"));
    // source line 17, bytecode pc 133
    xs.Tools.UI.addSpriteAsBg(this, this.m_GeneralBg);
    // source line 20, bytecode pc 196
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Cfg.Scene.SkillScene.mainmenu));
    // source line 23, bytecode pc 230
    (skillRefiningLayer = xs.Views.SkillRefiningLayer.create(param));
    // source line 24, bytecode pc 266
    skillRefiningLayer.setAnchorPoint(cc.p(0, 0));
    // source line 27, bytecode pc 322
    xs.Utils.Node.attachNodes(this, skillRefiningLayer, { desc: "lb", sc: true });
    // source line 32, bytecode pc 355
    (this.m_infoBar = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 33, bytecode pc 394
    this.m_infoBar.setAnchorPoint(cc.p(0, 1));
    // source line 36, bytecode pc 453
    xs.Utils.Node.attachNodes(this, this.m_infoBar, { desc: "lt", sc: true });
    // source line 40, bytecode pc 455
    return true;
},
    onEnter: function() {
    // source line 43, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 46, bytecode pc 12
    this._super();
}
}));
// source line 49, bytecode pc 119
(xs.Scene.SkillRefiningScene.create = function(param) {
    var sc;
    // source line 50, bytecode pc 23
    (sc = new xs.Scene.SkillRefiningScene());
    if ((sc && sc.init(param))) {
        // source line 53, bytecode pc 59
        return sc;
    }
    // source line 55, bytecode pc 84
    xs.assert(false, "xs.Scene.SkillRefiningScene.create error!");
    // source line 56, bytecode pc 86
    return null;
});
// source line 62, bytecode pc 213
xs.Scene.Mgr.registerScene("SkillRefiningScene", {
    "class": xs.Scene.SkillRefiningScene,
    type: xs.Constant_SceneType_Challenge,
    area: [ "MiracleWeaponsScene" ]
});
