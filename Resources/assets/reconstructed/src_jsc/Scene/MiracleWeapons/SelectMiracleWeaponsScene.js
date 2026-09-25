// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/MiracleWeapons/SelectMiracleWeaponsScene.js:1
// source line 49, bytecode pc 103
(xs.Scene.SelectMiracleWeaponsScene = cc.Scene.extend({
    name: "xs.Scene.SelectMiracleWeaponsScene",
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(param) {
    var selectLayer;
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 27
    (this.m_mainMenu = null);
    // source line 18, bytecode pc 60
    xs.Tools.UI.addCommonBg(this, true, true);
    // source line 19, bytecode pc 105
    (this.m_GeneralBg = xs.Factorys.Sprite.create("MiracleWeapons_beijing", "MiracleWeaponsScene"));
    // source line 20, bytecode pc 141
    xs.Tools.UI.addSpriteAsBg(this, this.m_GeneralBg);
    // source line 24, bytecode pc 204
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Cfg.Scene.SkillScene.mainmenu));
    // source line 27, bytecode pc 237
    (this.m_infoBar = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 28, bytecode pc 276
    this.m_infoBar.setAnchorPoint(cc.p(0, 1));
    // source line 31, bytecode pc 335
    xs.Utils.Node.attachNodes(this, this.m_infoBar, { desc: "lt", sc: true });
    // source line 34, bytecode pc 369
    (selectLayer = xs.Views.SelectMiracleWeaponLayer.create(param));
    // source line 35, bytecode pc 405
    selectLayer.setAnchorPoint(cc.p(0, 0));
    // source line 38, bytecode pc 461
    xs.Utils.Node.attachNodes(this, selectLayer, { desc: "lb", sc: true });
    // source line 41, bytecode pc 463
    return true;
},
    onEnter: function() {
    // source line 44, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 47, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 50, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 51, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 52, bytecode pc 56
    this.m_mainMenu.setBaseTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 56, bytecode pc 129
(xs.Scene.SelectMiracleWeaponsScene.create = function(param) {
    var sc;
    // source line 57, bytecode pc 23
    (sc = new xs.Scene.SelectMiracleWeaponsScene());
    if ((sc && sc.init(param))) {
        // source line 59, bytecode pc 59
        return sc;
    }
    // source line 61, bytecode pc 84
    xs.assert(false, "xs.Scene.SelectMiracleWeaponsScene.create error!");
    // source line 62, bytecode pc 86
    return null;
});
// source line 68, bytecode pc 223
xs.Scene.Mgr.registerScene("SelectMiracleWeaponsScene", {
    "class": xs.Scene.SelectMiracleWeaponsScene,
    type: xs.Constant_SceneType_Challenge,
    area: [ "MiracleWeaponsScene" ]
});
