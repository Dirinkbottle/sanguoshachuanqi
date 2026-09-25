// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/InterService/InterServiceWorshipScene.js:1
// source line 69, bytecode pc 113
(xs.Scene.InterServiceWorshipScene = cc.Scene.extend({
    name: "xs.Scene.InterServiceWorshipScene",
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(_data) {
    var visibleSize;
    if (!this._super()) {
        // source line 14, bytecode pc 19
        return false;
    }
    // source line 17, bytecode pc 44
    (visibleSize = xs.director.getVisibleSize());
    // source line 20, bytecode pc 84
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Ladder);
    // source line 21, bytecode pc 115
    xs.Tools.UI.addContentBg(this, true);
    // source line 24, bytecode pc 154
    (this.m_closeBtn = xs.Views.Btn.create("Btn_CircleRedBack"));
    // source line 25, bytecode pc 192
    this.m_closeBtn.setOnClickCallBack(this.closeBtnCallback.bind(this));
    // source line 26, bytecode pc 276
    xs.Utils.Node.attachNodes(this, this.m_closeBtn, { desc: "rt", sc: true, offset: { x: -55, y: -55 } });
    // source line 29, bytecode pc 309
    (this.m_infoBar = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 30, bytecode pc 348
    this.m_infoBar.setAnchorPoint(cc.p(0, 1));
    // source line 33, bytecode pc 407
    xs.Utils.Node.attachNodes(this, this.m_infoBar, { desc: "lt", sc: true });
    // source line 37, bytecode pc 499
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 38, bytecode pc 519
    this.m_pageView.setListener(this);
    // source line 42, bytecode pc 601
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("interService_worship"), xs.Views.InterServiceWorshipView, { param: _data });
    // source line 46, bytecode pc 660
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    if (_data.local) {
        // source line 50, bytecode pc 724
        this.m_pageView.setHintIcon([ 1 ], [ xs.Constant_HintType_Pvp_LocalLadderWar_worship ], true);
    } else {
        // source line 52, bytecode pc 780
        this.m_pageView.setHintIcon([ 1 ], [ xs.Constant_HintType_Pvp_LadderWar_worship ], true);
    }
    // source line 55, bytecode pc 782
    return true;
},
    onEnter: function() {
    // source line 58, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 62, bytecode pc 12
    this._super();
},
    closeBtnCallback: function() {
    // source line 66, bytecode pc 26
    xs.Scene.Mgr.gotoLastScene();
},
    setBaseTouchPriority: function(priority) {
    // source line 70, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 72, bytecode pc 34
    this.m_pageView.setBaseTouchPriority(this.m_baseTouchPriority);
    // source line 73, bytecode pc 62
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 100));
}
}));
// source line 77, bytecode pc 139
(xs.Scene.InterServiceWorshipScene.create = function(_data) {
    var sc;
    // source line 78, bytecode pc 23
    (sc = new xs.Scene.InterServiceWorshipScene());
    if ((sc && sc.init(_data))) {
        // source line 80, bytecode pc 73
        sc.setBaseTouchPriority(-1);
        // source line 81, bytecode pc 77
        return sc;
    }
    // source line 83, bytecode pc 102
    xs.assert(false, "xs.Scene.InterServiceWorshipScene.create error!");
    // source line 84, bytecode pc 104
    return null;
});
// source line 90, bytecode pc 233
xs.Scene.Mgr.registerScene("InterServiceWorshipScene", {
    "class": xs.Scene.InterServiceWorshipScene,
    type: xs.Constant_SceneType_Challenge,
    area: [ "InterServiceLadderWar" ]
});
