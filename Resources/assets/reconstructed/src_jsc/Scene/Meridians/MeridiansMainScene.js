// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Meridians/MeridiansMainScene.js:1
// source line 45, bytecode pc 93
(xs.Scene.MeridiansMainScene = cc.Scene.extend({
    name: "xs.Scene.MeridiansMainScene",
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
    // source line 16, bytecode pc 44
    (visibleSize = xs.director.getVisibleSize());
    // source line 18, bytecode pc 84
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_MeridiansMainView_Bg);
    // source line 21, bytecode pc 117
    (this.m_infoBar = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 22, bytecode pc 156
    this.m_infoBar.setAnchorPoint(cc.p(0, 1));
    // source line 25, bytecode pc 215
    xs.Utils.Node.attachNodes(this, this.m_infoBar, { desc: "lt", sc: true });
    // source line 29, bytecode pc 307
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 30, bytecode pc 328
    this.m_pageView.setBaseTouchPriority(-1);
    // source line 31, bytecode pc 348
    this.m_pageView.setListener(this);
    // source line 32, bytecode pc 430
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("MeridiansMain_1"), xs.Views.MeridiansMainView, { param: data });
    // source line 35, bytecode pc 489
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    // source line 40, bytecode pc 491
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
(xs.Scene.MeridiansMainScene.create = function(data) {
    var sc;
    // source line 51, bytecode pc 23
    (sc = new xs.Scene.MeridiansMainScene());
    if ((sc && sc.init(data))) {
        // source line 53, bytecode pc 59
        return sc;
    }
    // source line 55, bytecode pc 84
    xs.assert(false, "xs.Scene.MeridiansMainScene.create error!");
    // source line 56, bytecode pc 86
    return null;
});
// source line 62, bytecode pc 213
xs.Scene.Mgr.registerScene("MeridiansMainScene", {
    "class": xs.Scene.MeridiansMainScene,
    type: xs.Constant_SceneType_Challenge,
    area: [ "MeridiansMainScene" ]
});
