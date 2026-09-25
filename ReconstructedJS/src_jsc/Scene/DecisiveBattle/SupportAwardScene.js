// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/DecisiveBattle/SupportAwardScene.js:1
// source line 57, bytecode pc 93
(xs.Scene.SupportAwardScene = cc.Scene.extend({
    name: "xs.Scene.SupportAwardScene",
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(data) {
    var visibleSize;
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 44
    (visibleSize = xs.director.getVisibleSize());
    // source line 17, bytecode pc 84
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_InterServiceFight);
    // source line 20, bytecode pc 176
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 21, bytecode pc 197
    this.m_pageView.setBaseTouchPriority(-1);
    // source line 22, bytecode pc 217
    this.m_pageView.setListener(this);
    // source line 26, bytecode pc 334
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("DecisiveBattle_todaySupport"), xs.Views.SupportRecordView, { param: { jsonData: data.param, local: data.local, type: 1 } });
    // source line 31, bytecode pc 449
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("Decisive_historySupport"), xs.Views.SupportRecordView, { param: { jsonData: "", local: data.local, type: 2 } });
    // source line 35, bytecode pc 536
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("Decisive_awardExchange"), xs.Views.SupportPointsExchangeView, { param: data.local });
    // source line 39, bytecode pc 595
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    if (data.local) {
        // source line 43, bytecode pc 660
        this.m_pageView.setHintIcon([ 2 ], [ xs.Constant_HintType_Pvp_LocalDecisiveBattle ], true);
    } else {
        // source line 45, bytecode pc 717
        this.m_pageView.setHintIcon([ 2 ], [ xs.Constant_HintType_Pvp_DecisiveBattle ], true);
    }
    // source line 49, bytecode pc 780
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Cfg.Scene.SkillScene.mainmenu));
    // source line 52, bytecode pc 782
    return true;
},
    onEnter: function() {
    // source line 55, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 58, bytecode pc 12
    this._super();
}
}));
// source line 61, bytecode pc 119
(xs.Scene.SupportAwardScene.create = function(data) {
    var sc;
    // source line 63, bytecode pc 23
    (sc = new xs.Scene.SupportAwardScene());
    if ((sc && sc.init(data))) {
        // source line 65, bytecode pc 59
        return sc;
    }
    // source line 67, bytecode pc 84
    xs.assert(false, "xs.Scene.SupportAwardScene.create error!");
    // source line 68, bytecode pc 86
    return null;
});
// source line 73, bytecode pc 194
xs.Scene.Mgr.registerScene("SupportAwardScene", { "class": xs.Scene.SupportAwardScene, type: xs.Constant_SceneType_Challenge });
