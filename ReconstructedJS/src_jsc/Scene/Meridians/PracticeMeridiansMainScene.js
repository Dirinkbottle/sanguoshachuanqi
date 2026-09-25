// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Meridians/PracticeMeridiansMainScene.js:1
// source line 46, bytecode pc 93
(xs.Scene.PracticeMeridiansMainScene = cc.Scene.extend({
    name: "xs.Scene.PracticeMeridiansMainScene",
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function() {
    var visibleSize;
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 14, bytecode pc 42
    xs.log_zhz("xs.Scene.PracticeMeridiansMainScene-init-begin");
    // source line 15, bytecode pc 67
    (visibleSize = xs.director.getVisibleSize());
    // source line 18, bytecode pc 107
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Develop);
    // source line 21, bytecode pc 140
    (this.m_infoBar = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 22, bytecode pc 179
    this.m_infoBar.setAnchorPoint(cc.p(0, 1));
    // source line 25, bytecode pc 238
    xs.Utils.Node.attachNodes(this, this.m_infoBar, { desc: "lt", sc: true });
    // source line 29, bytecode pc 330
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 30, bytecode pc 351
    this.m_pageView.setBaseTouchPriority(-1);
    // source line 31, bytecode pc 371
    this.m_pageView.setListener(this);
    // source line 32, bytecode pc 438
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("str_PracticeMeridians"), xs.Views.PracticeMeridiansMainView);
    // source line 35, bytecode pc 497
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    // source line 39, bytecode pc 560
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Cfg.Scene.SkillScene.mainmenu));
    // source line 40, bytecode pc 583
    xs.log_zhz("xs.Scene.PracticeMeridiansMainScene-init-end");
    // source line 41, bytecode pc 585
    return true;
},
    onEnter: function() {
    // source line 44, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 47, bytecode pc 12
    this._super();
}
}));
// source line 50, bytecode pc 119
(xs.Scene.PracticeMeridiansMainScene.create = function() {
    var sc;
    // source line 52, bytecode pc 23
    (sc = new xs.Scene.PracticeMeridiansMainScene());
    if ((sc && sc.init())) {
        // source line 54, bytecode pc 55
        return sc;
    }
    // source line 56, bytecode pc 80
    xs.assert(false, "xs.Scene.PracticeMeridiansMainScene.create error!");
    // source line 57, bytecode pc 82
    return null;
});
// source line 63, bytecode pc 213
xs.Scene.Mgr.registerScene("PracticeMeridiansMainScene", {
    "class": xs.Scene.PracticeMeridiansMainScene,
    type: xs.Constant_SceneType_Challenge,
    area: [ "MeridiansMainScene" ]
});
