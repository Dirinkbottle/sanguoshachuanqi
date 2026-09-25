// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/InterService/InterServiceRegistrationScene.js:1
// source line 48, bytecode pc 93
(xs.Scene.InterServiceRegistrationScene = cc.Scene.extend({
    name: "xs.Scene.InterServiceRegistrationScene",
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
    // source line 25, bytecode pc 192
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 26, bytecode pc 213
    this.m_pageView.setBaseTouchPriority(-1);
    // source line 27, bytecode pc 233
    this.m_pageView.setListener(this);
    // source line 28, bytecode pc 315
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("interService_name"), xs.Views.InterServiceRegistrationView, { param: data });
    // source line 29, bytecode pc 402
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("interService_pointsExchange"), xs.Views.PointsExchangeView, { param: data.local });
    // source line 32, bytecode pc 461
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    if (data.local) {
        // source line 36, bytecode pc 525
        this.m_pageView.setHintIcon([ 1 ], [ xs.Constant_HintType_Pvp_LocalLadderWar_exchange ], true);
    } else {
        // source line 38, bytecode pc 581
        this.m_pageView.setHintIcon([ 1 ], [ xs.Constant_HintType_Pvp_LadderWar_exchange ], true);
    }
    // source line 42, bytecode pc 644
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Cfg.Scene.SkillScene.mainmenu));
    // source line 43, bytecode pc 646
    return true;
},
    onEnter: function() {
    // source line 46, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 49, bytecode pc 12
    this._super();
}
}));
// source line 53, bytecode pc 119
(xs.Scene.InterServiceRegistrationScene.create = function(data) {
    var sc;
    // source line 54, bytecode pc 23
    (sc = new xs.Scene.InterServiceRegistrationScene());
    if ((sc && sc.init(data))) {
        // source line 56, bytecode pc 59
        return sc;
    }
    // source line 58, bytecode pc 84
    xs.assert(false, "xs.Scene.InterServiceRegistrationScene.create error!");
    // source line 59, bytecode pc 86
    return null;
});
// source line 65, bytecode pc 213
xs.Scene.Mgr.registerScene("InterServiceRegistrationScene", {
    "class": xs.Scene.InterServiceRegistrationScene,
    type: xs.Constant_SceneType_Challenge,
    area: [ "kaichang" ]
});
