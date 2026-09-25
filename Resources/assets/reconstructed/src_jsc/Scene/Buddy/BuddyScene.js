// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Buddy/BuddyScene.js:1
// source line 81, bytecode pc 98
(xs.Scene.BuddyLayer = xs.Views.HungerLayer.extend({
    name: "BuddyLayer",
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
},
    init: function(param) {
    var playerInfo, visibleSize, paramOne, paramTwo, paramThree;
    if (!this._super()) {
        // source line 13, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 27
    (this.b_isSelf = true);
    if ((param && (param.playerId && param.playerData))) {
        // source line 17, bytecode pc 71
        (this.b_isSelf = false);
    }
    // source line 20, bytecode pc 111
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Toast);
    // source line 21, bytecode pc 142
    xs.Tools.UI.addContentBg(this, true);
    // source line 24, bytecode pc 172
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 25, bytecode pc 208
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 26, bytecode pc 264
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 29, bytecode pc 300
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 30, bytecode pc 366
    (this.m_pageView = xs.Views.TablePage.create(cc.size(846, (visibleSize.height - 56))));
    // source line 32, bytecode pc 395
    (paramOne = xs.Utils.clone(param));
    // source line 33, bytecode pc 405
    (paramOne.pageIdx = 0);
    // source line 34, bytecode pc 434
    (paramTwo = xs.Utils.clone(param));
    // source line 35, bytecode pc 444
    (paramTwo.pageIdx = 1);
    // source line 36, bytecode pc 473
    (paramThree = xs.Utils.clone(param));
    // source line 37, bytecode pc 484
    (paramThree.pageIdx = 2);
    // source line 43, bytecode pc 566
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("zhenrong_buddy_name_yangzhen"), xs.Scene.BuddyView, { param: paramOne });
    // source line 50, bytecode pc 648
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("zhenrong_buddy_name_yinzhen"), xs.Scene.BuddyView, { param: paramTwo });
    // source line 57, bytecode pc 730
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("zhenrong_buddy_name_fengzhen"), xs.Scene.BuddyView, { param: paramThree });
    // source line 61, bytecode pc 789
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    // source line 64, bytecode pc 828
    (this.m_closeBtn = xs.Views.Btn.create("Btn_CircleRedClose"));
    // source line 65, bytecode pc 866
    this.m_closeBtn.setOnClickCallBack(this.closeBtnCallback.bind(this));
    // source line 66, bytecode pc 950
    xs.Utils.Node.attachNodes(this, this.m_closeBtn, { desc: "rt", sc: true, offset: { x: -55, y: -64 } });
    // source line 68, bytecode pc 952
    return true;
},
    closeBtnCallback: function() {
    if (this.b_isSelf) {
        // source line 74, bytecode pc 37
        xs.Scene.Mgr.gotoLastScene();
    } else {
        // source line 77, bytecode pc 69
        xs.Views.Mgr.hideDialog();
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 82, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 83, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 84, bytecode pc 56
    this.m_pageView.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 85, bytecode pc 112
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_closeBtn.priority));
}
}));
// source line 90, bytecode pc 124
(xs.Scene.BuddyLayer.create = function(param) {
    var buddyLayer;
    // source line 91, bytecode pc 23
    (buddyLayer = new xs.Scene.BuddyLayer());
    if ((buddyLayer && buddyLayer.init(param))) {
        // source line 93, bytecode pc 72
        buddyLayer.setBaseTouchPriority(0);
        // source line 94, bytecode pc 76
        return buddyLayer;
    }
    // source line 96, bytecode pc 78
    return null;
});
// source line 105, bytecode pc 188
(xs.Scene.BuddyScene = cc.Scene.extend({
    ctor: function() {
    // source line 102, bytecode pc 12
    this._super();
    // source line 103, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(param) {
    var layer;
    if (!this._super()) {
        // source line 107, bytecode pc 19
        return false;
    }
    // source line 110, bytecode pc 53
    (layer = xs.Scene.BuddyLayer.create(param));
    if (layer) {
        // source line 112, bytecode pc 78
        this.addChild(layer);
    }
    // source line 115, bytecode pc 80
    return true;
}
}));
// source line 119, bytecode pc 214
(xs.Scene.BuddyScene.create = function(param) {
    var scene;
    // source line 120, bytecode pc 23
    (scene = new xs.Scene.BuddyScene());
    if ((scene && scene.init(param))) {
        // source line 122, bytecode pc 59
        return scene;
    }
    // source line 124, bytecode pc 61
    return null;
});
// source line 131, bytecode pc 289
xs.Scene.Mgr.registerScene("BuddyScene", { "class": xs.Scene.BuddyScene, type: xs.Constant_SceneType_General });
