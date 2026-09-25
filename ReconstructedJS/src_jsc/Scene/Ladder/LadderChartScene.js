// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Ladder/LadderChartScene.js:1
// source line 37, bytecode pc 110
(xs.Scene.LadderChartScene = cc.Scene.extend({
    ctor: function() {
    // source line 10, bytecode pc 12
    this._super();
    // source line 11, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function() {
    var visibleSize;
    // source line 16, bytecode pc 35
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 19, bytecode pc 124
    (this.pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), visibleSize.height)));
    // source line 20, bytecode pc 159
    this.pageView.setBaseTouchPriority(this.cfg.pageView.priority);
    // source line 22, bytecode pc 226
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("auto_name_93"), xs.Views.LadderChartView);
    // source line 23, bytecode pc 285
    xs.Utils.Node.attachNodes(this, this.pageView, { desc: "lb", sc: true });
    // source line 26, bytecode pc 348
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Cfg.Scene.SkillScene.mainmenu));
    // source line 27, bytecode pc 383
    this.m_mainMenu.setBaseTouchPriority(this.cfg.sideMenu.priority);
    // source line 29, bytecode pc 385
    return true;
},
    cfg: { sideMenu: { priority: -20 }, pageView: { priority: -1 } }
}));
// source line 42, bytecode pc 136
(xs.Scene.LadderChartScene.create = function() {
    var ret;
    // source line 43, bytecode pc 23
    (ret = new xs.Scene.LadderChartScene());
    if ((ret && ret.init())) {
        // source line 45, bytecode pc 55
        return ret;
    }
    // source line 47, bytecode pc 57
    return null;
});
// source line 58, bytecode pc 242
xs.Scene.Mgr.registerScene("LadderChartScene", {
    "class": xs.Scene.LadderChartScene,
    area: [],
    type: xs.Constant_SceneType_Challenge,
    audio: { bgId: "Audio_BG_Ladder" }
});
