// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/InterService/PopularityRewardScene.js:1
// source line 55, bytecode pc 113
(xs.Scene.PopularityRewardScene = cc.Scene.extend({
    name: "xs.Scene.PopularityRewardScene",
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
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_InterServiceFight);
    // source line 23, bytecode pc 123
    (this.m_closeBtn = xs.Views.Btn.create("Btn_CircleRedBack"));
    // source line 24, bytecode pc 161
    this.m_closeBtn.setOnClickCallBack(this.closeBtnCallback.bind(this));
    // source line 25, bytecode pc 245
    xs.Utils.Node.attachNodes(this, this.m_closeBtn, { desc: "rt", sc: true, offset: { x: -55, y: -55 } });
    // source line 28, bytecode pc 313
    (this.m_pageView = xs.Views.TablePage.create(cc.size(visibleSize.width, visibleSize.height)));
    // source line 29, bytecode pc 333
    this.m_pageView.setListener(this);
    // source line 33, bytecode pc 415
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("interService_popularity"), xs.Views.PopularityRewardView, { param: _data });
    // source line 37, bytecode pc 474
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    // source line 40, bytecode pc 476
    return true;
},
    onEnter: function() {
    // source line 44, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 48, bytecode pc 12
    this._super();
},
    closeBtnCallback: function() {
    // source line 52, bytecode pc 26
    xs.Scene.Mgr.gotoLastScene();
},
    setBaseTouchPriority: function(priority) {
    // source line 56, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 57, bytecode pc 34
    this.m_pageView.setBaseTouchPriority(this.m_baseTouchPriority);
    // source line 58, bytecode pc 62
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 100));
}
}));
// source line 62, bytecode pc 139
(xs.Scene.PopularityRewardScene.create = function(_data) {
    var sc;
    // source line 63, bytecode pc 23
    (sc = new xs.Scene.PopularityRewardScene());
    if ((sc && sc.init(_data))) {
        // source line 65, bytecode pc 73
        sc.setBaseTouchPriority(-1);
        // source line 66, bytecode pc 77
        return sc;
    }
    // source line 68, bytecode pc 102
    xs.assert(false, "xs.Scene.PopularityRewardScene.create error!");
    // source line 69, bytecode pc 104
    return null;
});
// source line 74, bytecode pc 214
xs.Scene.Mgr.registerScene("PopularityRewardScene", { "class": xs.Scene.PopularityRewardScene, type: xs.Constant_SceneType_Challenge });
