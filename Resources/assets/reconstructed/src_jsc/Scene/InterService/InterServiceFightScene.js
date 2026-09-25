// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/InterService/InterServiceFightScene.js:1
// source line 51, bytecode pc 103
(xs.Scene.InterServiceFightScene = cc.Scene.extend({
    name: "xs.Scene.InterServiceFightScene",
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(data) {
    var visibleSize;
    if (!this._super()) {
        // source line 13, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 16, bytecode pc 35
    (this.fightlayer = null);
    // source line 18, bytecode pc 60
    (visibleSize = xs.director.getVisibleSize());
    // source line 21, bytecode pc 100
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_InterServiceFight);
    // source line 24, bytecode pc 133
    (this.m_infoBar = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 25, bytecode pc 172
    this.m_infoBar.setAnchorPoint(cc.p(0, 1));
    // source line 28, bytecode pc 231
    xs.Utils.Node.attachNodes(this, this.m_infoBar, { desc: "lt", sc: true });
    // source line 32, bytecode pc 323
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 33, bytecode pc 344
    this.m_pageView.setBaseTouchPriority(-1);
    // source line 34, bytecode pc 364
    this.m_pageView.setListener(this);
    // source line 35, bytecode pc 446
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("interService_name"), xs.Views.InterServiceFightView, { param: data });
    // source line 38, bytecode pc 505
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    // source line 42, bytecode pc 568
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Cfg.Scene.SkillScene.mainmenu));
    // source line 43, bytecode pc 570
    return true;
},
    onEnter: function() {
    // source line 46, bytecode pc 12
    this._super();
},
    onEnterTransitionDidFinish: function() {
    // source line 49, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 52, bytecode pc 12
    this._super();
}
}));
// source line 56, bytecode pc 129
(xs.Scene.InterServiceFightScene.create = function(data) {
    var sc;
    // source line 57, bytecode pc 23
    (sc = new xs.Scene.InterServiceFightScene());
    if ((sc && sc.init(data))) {
        // source line 59, bytecode pc 59
        return sc;
    }
    // source line 61, bytecode pc 84
    xs.assert(false, "xs.Scene.InterServiceFightScene.create error!");
    // source line 62, bytecode pc 86
    return null;
});
// source line 68, bytecode pc 223
xs.Scene.Mgr.registerScene("InterServiceFightScene", {
    "class": xs.Scene.InterServiceFightScene,
    type: xs.Constant_SceneType_Challenge,
    area: [ "InterServiceLadderWar" ]
});
