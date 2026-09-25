// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Gems/GemsScene.js:1
// source line 91, bytecode pc 113
(xs.Scene.GemsScene = cc.Scene.extend({
    name: "GemsScene",
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(params) {
    var visibleSize, playerInfo, mainMenu;
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    // source line 17, bytecode pc 44
    (visibleSize = xs.director.getVisibleSize());
    // source line 20, bytecode pc 77
    xs.Tools.UI.addCommonBg(this, true, true);
    // source line 21, bytecode pc 122
    (this.m_GeneralBg = xs.Factorys.Sprite.create("gemsScene_beijing1", "GemsScene"));
    // source line 22, bytecode pc 158
    xs.Tools.UI.addSpriteAsBg(this, this.m_GeneralBg);
    // source line 25, bytecode pc 188
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 26, bytecode pc 224
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 29, bytecode pc 280
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 34, bytecode pc 372
    (this.pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 35, bytecode pc 392
    this.pageView.setListener(this);
    // source line 39, bytecode pc 451
    xs.Utils.Node.attachNodes(this, this.pageView, { desc: "lb", sc: true });
    // source line 42, bytecode pc 523
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("gems_str_punch"), xs.Views.Gems.GemsPunchView);
    // source line 43, bytecode pc 595
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("gems_str_sophistication"), xs.Views.Gems.GemsSophisticationView);
    // source line 45, bytecode pc 662
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("gems_str_compose"), xs.Views.GemsComposeView);
    // source line 46, bytecode pc 734
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("gems_str_extendhole"), xs.Views.Gems.GemsHoleextendView);
    // source line 53, bytecode pc 768
    (mainMenu = xs.Tools.UI.addShortcutBoard(this, true));
    if ((params != null)) {
        // source line 57, bytecode pc 805
        this.pageView.selectPage(params.index);
    }
    // source line 63, bytecode pc 807
    return true;
},
    dumpChildScale: function(mObj) {
    var childs, mChild, mNode;
    // source line 67, bytecode pc 52
    xs.log_hsq(((("name:" + mObj.name) + "getScale:") + mObj.getScale()));
    // source line 68, bytecode pc 70
    (childs = mObj.getChildren());
    if (childs) {
        for (var mChild in childs) {
            // source line 71, bytecode pc 105
            (mNode = childs[mChild]);
            if (!(mNode.getScale)) continue;
            // source line 73, bytecode pc 135
            this.dumpChildScale(mNode);
        }
    }
},
    onEnterTransitionDidFinish: function() {
    // source line 80, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 87, bytecode pc 12
    this._super();
},
    onPageChange: function(pageIdx) {
    var curView;
    // source line 93, bytecode pc 23
    this.pageView.setIconNum(pageIdx, 0);
    // source line 96, bytecode pc 44
    (curView = this.pageView.getCurSelPageView());
    if ((curView && curView.refreshFromMenuClick)) {
        // source line 98, bytecode pc 81
        curView.refreshFromMenuClick();
    }
}
}));
// source line 105, bytecode pc 139
(xs.Scene.GemsScene.create = function(params) {
    var ret;
    // source line 106, bytecode pc 23
    (ret = new xs.Scene.GemsScene());
    if ((ret && ret.init(params))) {
        // source line 108, bytecode pc 59
        return ret;
    }
    // source line 110, bytecode pc 61
    return null;
});
// source line 118, bytecode pc 233
xs.Scene.Mgr.registerScene("GemsScene", { "class": xs.Scene.GemsScene, area: [ "GemsScene" ], type: xs.Constant_SceneType_Cmn });
