// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Goddess/GoddessMainScene.js:1
// source line 47, bytecode pc 93
(xs.Scene.GoddessMainScene = cc.Scene.extend({
    name: "xs.Scene.GoddessMainScene",
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
    // source line 15, bytecode pc 44
    (visibleSize = xs.director.getVisibleSize());
    // source line 17, bytecode pc 84
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_MeridiansMainView_Bg);
    // source line 20, bytecode pc 117
    (this.m_infoBar = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 21, bytecode pc 156
    this.m_infoBar.setAnchorPoint(cc.p(0, 1));
    // source line 24, bytecode pc 215
    xs.Utils.Node.attachNodes(this, this.m_infoBar, { desc: "lt", sc: true });
    // source line 28, bytecode pc 307
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 29, bytecode pc 328
    this.m_pageView.setBaseTouchPriority(-1);
    // source line 30, bytecode pc 348
    this.m_pageView.setListener(this);
    // source line 31, bytecode pc 415
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("goddess_goddess"), xs.Views.GoddessMainView);
    // source line 34, bytecode pc 474
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    // source line 36, bytecode pc 525
    this.m_pageView.setHintIcon([ 0 ], [ xs.Constant_HintType_Pvp_GoddessFight ], true);
    // source line 39, bytecode pc 588
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Cfg.Scene.SkillScene.mainmenu));
    // source line 42, bytecode pc 590
    return true;
},
    onEnter: function() {
    // source line 45, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 48, bytecode pc 12
    this._super();
}
}));
// source line 51, bytecode pc 119
(xs.Scene.GoddessMainScene.create = function() {
    var sc;
    // source line 53, bytecode pc 23
    (sc = new xs.Scene.GoddessMainScene());
    if ((sc && sc.init())) {
        // source line 55, bytecode pc 55
        return sc;
    }
    // source line 57, bytecode pc 80
    xs.assert(false, "xs.Scene.GoddessMainScene.create error!");
    // source line 58, bytecode pc 82
    return null;
});
// source line 64, bytecode pc 222
xs.Scene.Mgr.registerScene("GoddessMainScene", {
    "class": xs.Scene.GoddessMainScene,
    type: xs.Constant_SceneType_Cmn,
    area: [ "GemsScene", "ZuiduiMenuScene01" ]
});
