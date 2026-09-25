// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Chaos/ChaosFightScene.js:1
// source line 48, bytecode pc 110
(xs.Scene.ChaosFightScene = cc.Scene.extend({
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(_param) {
    var visibleSize, playerInfo;
    // source line 14, bytecode pc 12
    this._super();
    // source line 16, bytecode pc 37
    (visibleSize = xs.director.getVisibleSize());
    // source line 19, bytecode pc 77
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Chaos);
    // source line 22, bytecode pc 107
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 23, bytecode pc 143
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 24, bytecode pc 199
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 28, bytecode pc 291
    (this.pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 56))));
    // source line 29, bytecode pc 326
    this.pageView.setBaseTouchPriority(this.cfg.tableView.priority);
    // source line 31, bytecode pc 408
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("chaos_snatch"), xs.Views.ChaosFightView, { param: _param });
    // source line 32, bytecode pc 467
    xs.Utils.Node.attachNodes(this, this.pageView, { desc: "lb", sc: true });
    // source line 36, bytecode pc 504
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 37, bytecode pc 539
    this.m_mainMenu.setBaseTouchPriority(this.cfg.sideBar.priority);
    // source line 39, bytecode pc 541
    return true;
},
    cfg: { tableView: { priority: -1 }, sideBar: { priority: -10 } }
}));
// source line 53, bytecode pc 136
(xs.Scene.ChaosFightScene.create = function(param) {
    var ret;
    // source line 54, bytecode pc 23
    (ret = new xs.Scene.ChaosFightScene());
    if ((ret && ret.init(param))) {
        // source line 56, bytecode pc 59
        return ret;
    }
    // source line 58, bytecode pc 61
    return null;
});
// source line 65, bytecode pc 211
xs.Scene.Mgr.registerScene("ChaosFightScene", { "class": xs.Scene.ChaosFightScene, type: xs.Constant_SceneType_Challenge });
