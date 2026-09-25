// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/MiracleWeapons/MiracleWeaponScene.js:1
// source line 47, bytecode pc 93
(xs.Scene.MiracleWeaponScene = cc.Scene.extend({
    name: "xs.Scene.MiracleWeaponScene",
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(param) {
    var WeaponLayer;
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
    // source line 21, bytecode pc 196
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Cfg.Scene.SkillScene.mainmenu));
    // source line 24, bytecode pc 229
    (this.m_infoBar = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 25, bytecode pc 268
    this.m_infoBar.setAnchorPoint(cc.p(0, 1));
    // source line 28, bytecode pc 327
    xs.Utils.Node.attachNodes(this, this.m_infoBar, { desc: "lt", sc: true });
    // source line 31, bytecode pc 361
    (WeaponLayer = xs.Views.MiracleWeaponLayer.create(param));
    // source line 32, bytecode pc 397
    WeaponLayer.setAnchorPoint(cc.p(0, 0));
    // source line 35, bytecode pc 453
    xs.Utils.Node.attachNodes(this, WeaponLayer, { desc: "lb", sc: true });
    // source line 42, bytecode pc 455
    return true;
},
    onEnter: function() {
    // source line 45, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 48, bytecode pc 12
    this._super();
}
}));
// source line 51, bytecode pc 119
(xs.Scene.MiracleWeaponScene.create = function(param) {
    var sc;
    // source line 52, bytecode pc 23
    (sc = new xs.Scene.MiracleWeaponScene());
    if ((sc && sc.init(param))) {
        // source line 55, bytecode pc 59
        return sc;
    }
    // source line 57, bytecode pc 84
    xs.assert(false, "xs.Scene.MiracleWeaponScene.create error!");
    // source line 58, bytecode pc 86
    return null;
});
// source line 64, bytecode pc 213
xs.Scene.Mgr.registerScene("MiracleWeaponScene", {
    "class": xs.Scene.MiracleWeaponScene,
    type: xs.Constant_SceneType_Challenge,
    area: [ "MiracleWeaponsScene" ]
});
