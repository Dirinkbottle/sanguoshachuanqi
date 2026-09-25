// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/DecisiveBattle/DecisiveBattleMainScene.js:1
// source line 51, bytecode pc 93
(xs.Scene.DecisiveBattleMainScene = cc.Scene.extend({
    name: "xs.Scene.DecisiveBattleMainScene",
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(data) {
    var visibleSize, str;
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 44
    (visibleSize = xs.director.getVisibleSize());
    // source line 17, bytecode pc 84
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_InterServiceFight);
    // source line 20, bytecode pc 117
    (this.m_infoBar = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 21, bytecode pc 156
    this.m_infoBar.setAnchorPoint(cc.p(0, 1));
    // source line 24, bytecode pc 215
    xs.Utils.Node.attachNodes(this, this.m_infoBar, { desc: "lt", sc: true });
    // source line 26, bytecode pc 220
    (str = null);
    if (data.local) {
        // source line 28, bytecode pc 269
        (str = xs.Tools.String.createString("LocalDecisiveBattle_4"));
    } else {
        // source line 30, bytecode pc 310
        (str = xs.Tools.String.createString("DecisiveBattle"));
    }
    // source line 33, bytecode pc 402
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 34, bytecode pc 423
    this.m_pageView.setBaseTouchPriority(-1);
    // source line 35, bytecode pc 443
    this.m_pageView.setListener(this);
    // source line 36, bytecode pc 496
    this.m_pageView.addPageWhitConstruct(str, xs.Views.DecisiveBattleMainView, { param: data });
    // source line 39, bytecode pc 555
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    // source line 43, bytecode pc 618
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Cfg.Scene.SkillScene.mainmenu));
    // source line 46, bytecode pc 620
    return true;
},
    onEnter: function() {
    // source line 49, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 52, bytecode pc 12
    this._super();
}
}));
// source line 55, bytecode pc 119
(xs.Scene.DecisiveBattleMainScene.create = function(data) {
    var sc;
    // source line 57, bytecode pc 23
    (sc = new xs.Scene.DecisiveBattleMainScene());
    if ((sc && sc.init(data))) {
        // source line 59, bytecode pc 59
        return sc;
    }
    // source line 61, bytecode pc 84
    xs.assert(false, "xs.Scene.DecisiveBattleMainScene.create error!");
    // source line 62, bytecode pc 86
    return null;
});
// source line 67, bytecode pc 194
xs.Scene.Mgr.registerScene("DecisiveBattleMainScene", { "class": xs.Scene.DecisiveBattleMainScene, type: xs.Constant_SceneType_Challenge });
