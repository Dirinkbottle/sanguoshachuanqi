// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Social/SocialScene.js:1
// source line 13, bytecode pc 63
(xs.Scene.SocialScene = cc.Scene.extend({
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function() {
    var visibleSize, playerInfo, mainMenu;
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    // source line 18, bytecode pc 44
    (visibleSize = xs.director.getVisibleSize());
    // source line 21, bytecode pc 77
    xs.Tools.UI.addCommonBg(this, true, true);
    // source line 24, bytecode pc 107
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 25, bytecode pc 143
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 26, bytecode pc 199
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 30, bytecode pc 291
    (this.pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 32, bytecode pc 385
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("auto_name_117"), xs.Views.SocialView, { param: xs.Views.SocialView_Type_Friends });
    // source line 34, bytecode pc 479
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("auto_name_200"), xs.Views.SocialView, { param: xs.Views.SocialView_Type_Foe });
    // source line 36, bytecode pc 573
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("auto_name_199"), xs.Views.SocialView, { param: xs.Views.SocialView_Type_QuasiFriends });
    // source line 37, bytecode pc 593
    this.pageView.setListener(this);
    // source line 39, bytecode pc 652
    xs.Utils.Node.attachNodes(this, this.pageView, { desc: "lb", sc: true });
    // source line 43, bytecode pc 686
    (mainMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 45, bytecode pc 688
    return true;
}
}));
// source line 49, bytecode pc 89
(xs.Scene.SocialScene.create = function() {
    var ret;
    // source line 50, bytecode pc 23
    (ret = new xs.Scene.SocialScene());
    if ((ret && ret.init())) {
        // source line 52, bytecode pc 55
        return ret;
    }
    // source line 54, bytecode pc 84
    xs.warn("xs.Scene.SocialScene", "create fail!");
    // source line 55, bytecode pc 86
    return null;
});
// source line 62, bytecode pc 174
xs.Scene.Mgr.registerScene("SocialScene", { "class": xs.Scene.SocialScene, area: [], type: xs.Constant_SceneType_Cmn });
