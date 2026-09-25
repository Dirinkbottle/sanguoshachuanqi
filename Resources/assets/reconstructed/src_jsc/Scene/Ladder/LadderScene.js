// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Ladder/LadderScene.js:1
// source line 96, bytecode pc 160
(xs.Scene.LadderScene = cc.Scene.extend({
    name: "xs.Scene.LadderScene",
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(params) {
    var visibleSize, dailyAdventure, upBtn;
    if (!this._super()) {
        // source line 18, bytecode pc 19
        return false;
    }
    // source line 21, bytecode pc 29
    (this.params = params);
    // source line 22, bytecode pc 37
    (this.honorViewNeedRefresh = false);
    // source line 24, bytecode pc 73
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 27, bytecode pc 113
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Ladder);
    // source line 31, bytecode pc 205
    (this.pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 56))));
    // source line 32, bytecode pc 240
    this.pageView.setBaseTouchPriority(this.cfg.pageView.priority);
    // source line 33, bytecode pc 260
    this.pageView.setListener(this);
    // source line 35, bytecode pc 327
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("skyLadder"), xs.Views.LadderView);
    // source line 36, bytecode pc 394
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("exchangeSalary"), xs.Views.GiftListView);
    // source line 37, bytecode pc 461
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("exchangeHonor"), xs.Views.GiftListView_Honor);
    // source line 38, bytecode pc 520
    xs.Utils.Node.attachNodes(this, this.pageView, { desc: "lb", sc: true });
    // source line 40, bytecode pc 591
    this.pageView.setHintIcon([ 1, 2 ], [ xs.Constant_HintType_Pvp_Ladder_Salary, xs.Constant_HintType_Pvp_Ladder_Honor ], true);
    // source line 42, bytecode pc 654
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Cfg.Scene.SkillScene.mainmenu));
    // source line 43, bytecode pc 689
    this.m_mainMenu.setBaseTouchPriority(this.cfg.sideMenu.priority);
    // source line 45, bytecode pc 730
    (dailyAdventure = xs.Models.DailyAdventure.create(xs.Constant_DailyAdventure_ModelType_Landder));
    if (dailyAdventure.getIsAdventureUp()) {
        // source line 48, bytecode pc 767
        (upBtn = dailyAdventure.createUpBtn());
        // source line 49, bytecode pc 850
        xs.Utils.Node.attachNodes(this, upBtn, { desc: "ct", offset: cc.p(86, -80), sc: true });
    }
    // source line 52, bytecode pc 852
    return true;
},
    onEnter: function() {
    var _modelMap;
    // source line 56, bytecode pc 12
    this._super();
    // source line 58, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.quickLandder, xs.Constant_Notify_QuickLandderEnd);
    // source line 61, bytecode pc 95
    (_modelMap = xs.Scene.Mgr.loadStatusAndClear("PvpFight_RandEvent"));
    if (_modelMap) {
        // source line 63, bytecode pc 140
        xs.Views.Mgr.showDialogByName("RandEvent", _modelMap);
    }
    if ((this.params && this.params.pageIdx)) {
        // source line 67, bytecode pc 198
        this.pageView.selectPage(this.params.pageIdx);
    }
},
    onExit: function() {
    // source line 72, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_QuickLandderEnd);
    // source line 73, bytecode pc 52
    this._super();
},
    onPageChange: function(curSelIdx) {
    if (((this.pageView.getCurSelPage() == 2) && this.honorViewNeedRefresh)) {
        // source line 81, bytecode pc 65
        this.pageView.getCurSelPageView().requestGetGoodsList();
        // source line 82, bytecode pc 73
        (this.honorViewNeedRefresh = false);
    }
},
    quickLandder: function() {
    // source line 88, bytecode pc 7
    (this.honorViewNeedRefresh = true);
},
    cfg: { sideMenu: { priority: -20 }, pageView: { priority: -1 } }
}));
// source line 101, bytecode pc 186
(xs.Scene.LadderScene.create = function(params) {
    var ret;
    // source line 102, bytecode pc 23
    (ret = new xs.Scene.LadderScene());
    // source line 103, bytecode pc 37
    (ret.name = "LadderScene");
    if ((ret && ret.init(params))) {
        // source line 108, bytecode pc 73
        return ret;
    }
    // source line 111, bytecode pc 75
    return null;
});
// source line 122, bytecode pc 301
xs.Scene.Mgr.registerScene("LadderScene", {
    "class": xs.Scene.LadderScene,
    area: [ "TiantixitongScene01" ],
    type: xs.Constant_SceneType_Challenge,
    audio: { bgId: "Audio_BG_Ladder" }
});
