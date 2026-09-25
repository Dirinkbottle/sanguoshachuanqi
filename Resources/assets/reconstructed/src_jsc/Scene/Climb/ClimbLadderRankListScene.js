// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Climb/ClimbLadderRankListScene.js:1
// source line 133, bytecode pc 133
(xs.Scene.ClimbLadderRankListScene = cc.Scene.extend({
    ctor: function() {
    // source line 6, bytecode pc 12
    this._super();
    // source line 7, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var visibleSize, labelBg;
    // source line 10, bytecode pc 22
    xs.log("ClimbLadderRankListScene init");
    // source line 13, bytecode pc 62
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Climp);
    // source line 15, bytecode pc 87
    (visibleSize = xs.director.getVisibleSize());
    // source line 17, bytecode pc 115
    (this._CopperPage = cc.Node.create());
    // source line 18, bytecode pc 143
    (this._SilverPage = cc.Node.create());
    // source line 19, bytecode pc 171
    (this._GoldPage = cc.Node.create());
    // source line 20, bytecode pc 199
    (this._GodPage = cc.Node.create());
    // source line 22, bytecode pc 288
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), visibleSize.height)));
    // source line 23, bytecode pc 318
    xs.log(("ClimbLadderRankListScene init 1  " + this.m_pageView));
    // source line 24, bytecode pc 354
    xs.Utils.Node.attachNodes(this, this.m_pageView);
    // source line 27, bytecode pc 377
    xs.log("ClimbLadderRankListScene init 2");
    // source line 28, bytecode pc 435
    this.m_pageView.addPage(xs.Tools.String.createString("1071010011"), this._CopperPage);
    // source line 29, bytecode pc 493
    this.m_pageView.addPage(xs.Tools.String.createString("1071010012"), this._SilverPage);
    // source line 30, bytecode pc 551
    this.m_pageView.addPage(xs.Tools.String.createString("1071010013"), this._GoldPage);
    // source line 31, bytecode pc 609
    this.m_pageView.addPage(xs.Tools.String.createString("1071010014"), this._GodPage);
    // source line 33, bytecode pc 632
    xs.log("ClimbLadderRankListScene init 3");
    // source line 34, bytecode pc 652
    this.m_pageView.setListener(this);
    // source line 36, bytecode pc 672
    this.m_pageView.setZOrder(0);
    // source line 39, bytecode pc 697
    (visibleSize = xs.director.getVisibleSize());
    // source line 40, bytecode pc 739
    (labelBg = xs.Factorys.Sprite.create("Cmn01_dingbu", "Cmn01"));
    // source line 41, bytecode pc 760
    labelBg.setScaleX(1.5);
    // source line 42, bytecode pc 786
    labelBg.setAnchorPoint(xs.ap_lc);
    // source line 43, bytecode pc 833
    labelBg.setPosition(cc.p(-5, (visibleSize.height - 80)));
    // source line 44, bytecode pc 866
    xs.Utils.Node.attachNodes(this, labelBg);
    // source line 46, bytecode pc 905
    (this._leftLabel = xs.Factorys.Label.createByStyleId("LS_qiangduo_Inf"));
    // source line 47, bytecode pc 934
    this._leftLabel.setAnchorPoint(xs.ap_lc);
    // source line 48, bytecode pc 984
    this._leftLabel.setPosition(cc.p(20, (visibleSize.height - 80)));
    // source line 49, bytecode pc 1020
    xs.Utils.Node.attachNodes(this, this._leftLabel);
    // source line 51, bytecode pc 1035
    this.onPageChange(0);
    // source line 53, bytecode pc 1072
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 55, bytecode pc 1093
    this.m_mainMenu.setBaseTouchPriority(-100);
    // source line 56, bytecode pc 1095
    return true;
},
    onEnter: function() {
    // source line 59, bytecode pc 22
    xs.log("ClimbLadderRankListScene onEnter");
},
    onPageChange: function(idx) {
    // source line 63, bytecode pc 22
    xs.log("onPageChange");
    // source line 64, bytecode pc 35
    this._resetTableView();
    // source line 65, bytecode pc 39
    switch (idx) {
        case 0:
        // source line 67, bytecode pc 80
        this._displayCopperPage();
        break;
        case 1:
        // source line 70, bytecode pc 98
        this._displaySilverPage();
        break;
        case 2:
        // source line 73, bytecode pc 116
        this._displayGoldPage();
        break;
        case 3:
        // source line 76, bytecode pc 134
        this._displayGodPage();
        break;
        default:
        break;
    }
},
    _resetTableView: function() {
    if ((this._CopperPageView != null)) {
        // source line 82, bytecode pc 32
        this._CopperPageView.setVisible(false);
    }
    if ((this._SilverPageView != null)) {
        // source line 85, bytecode pc 65
        this._SilverPageView.setVisible(false);
    }
    if ((this._GoldPageView != null)) {
        // source line 88, bytecode pc 98
        this._GoldPageView.setVisible(false);
    }
    if ((this._GodPageView != null)) {
        // source line 91, bytecode pc 131
        this._GodPageView.setVisible(false);
    }
},
    _displayCopperPage: function() {
    var visibleSize;
    if ((this._CopperPageView == null)) {
        // source line 96, bytecode pc 35
        xs.log("_displayCopperPage");
        // source line 97, bytecode pc 79
        (this._CopperPageView = xs.Views.Table.ClimbLadderTableView.create("Copper"));
        // source line 98, bytecode pc 104
        (visibleSize = xs.director.getVisibleSize());
        // source line 99, bytecode pc 160
        this._CopperPageView.setPosition(cc.p(0, (((visibleSize.height - 640) / 2) + 20)));
        // source line 100, bytecode pc 201
        xs.Utils.Node.attachNodes(this._CopperPage, this._CopperPageView);
        // source line 101, bytecode pc 221
        this._CopperPageView.setZOrder(0);
    }
    // source line 104, bytecode pc 334
    this._leftLabel.setString(xs.Tools.String.createString("climb_reminder").convWithArgs([ "15", xs.Tools.String.createString("1071010011") ]));
    // source line 105, bytecode pc 354
    this._CopperPageView.setVisible(true);
},
    _displaySilverPage: function() {
    var visibleSize;
    if ((this._SilverPageView == null)) {
        // source line 109, bytecode pc 35
        xs.log("_displaySilverPage");
        // source line 110, bytecode pc 60
        (visibleSize = xs.director.getVisibleSize());
        // source line 111, bytecode pc 104
        (this._SilverPageView = xs.Views.Table.ClimbLadderTableView.create("Silver"));
        // source line 112, bytecode pc 160
        this._SilverPageView.setPosition(cc.p(0, (((visibleSize.height - 640) / 2) + 20)));
        // source line 113, bytecode pc 201
        xs.Utils.Node.attachNodes(this._SilverPage, this._SilverPageView);
        // source line 114, bytecode pc 221
        this._SilverPageView.setZOrder(0);
    }
    // source line 117, bytecode pc 334
    this._leftLabel.setString(xs.Tools.String.createString("climb_reminder").convWithArgs([ "20", xs.Tools.String.createString("1071010012") ]));
    // source line 118, bytecode pc 354
    this._SilverPageView.setVisible(true);
},
    _displayGoldPage: function() {
    var visibleSize;
    if ((this._GoldPageView == null)) {
        // source line 122, bytecode pc 35
        xs.log("_displayCopperPage");
        // source line 123, bytecode pc 60
        (visibleSize = xs.director.getVisibleSize());
        // source line 124, bytecode pc 104
        (this._GoldPageView = xs.Views.Table.ClimbLadderTableView.create("Gold"));
        // source line 125, bytecode pc 160
        this._GoldPageView.setPosition(cc.p(0, (((visibleSize.height - 640) / 2) + 20)));
        // source line 126, bytecode pc 201
        xs.Utils.Node.attachNodes(this._GoldPage, this._GoldPageView);
        // source line 127, bytecode pc 221
        this._GoldPageView.setZOrder(0);
    }
    // source line 130, bytecode pc 334
    this._leftLabel.setString(xs.Tools.String.createString("climb_reminder").convWithArgs([ "25", xs.Tools.String.createString("1071010013") ]));
    // source line 131, bytecode pc 354
    this._GoldPageView.setVisible(true);
},
    _displayGodPage: function() {
    var visibleSize;
    if ((this._GodPageView == null)) {
        // source line 135, bytecode pc 35
        xs.log("_displayCopperPage");
        // source line 136, bytecode pc 60
        (visibleSize = xs.director.getVisibleSize());
        // source line 137, bytecode pc 104
        (this._GodPageView = xs.Views.Table.ClimbLadderTableView.create("God"));
        // source line 138, bytecode pc 160
        this._GodPageView.setPosition(cc.p(0, (((visibleSize.height - 640) / 2) + 20)));
        // source line 139, bytecode pc 201
        xs.Utils.Node.attachNodes(this._GodPage, this._GodPageView);
        // source line 140, bytecode pc 221
        this._GodPageView.setZOrder(0);
    }
    // source line 143, bytecode pc 334
    this._leftLabel.setString(xs.Tools.String.createString("climb_reminder").convWithArgs([ "30", xs.Tools.String.createString("1071010014") ]));
    // source line 144, bytecode pc 354
    this._GodPageView.setVisible(true);
}
}));
// source line 149, bytecode pc 159
(xs.Scene.ClimbLadderRankListScene.create = function() {
    var view;
    // source line 150, bytecode pc 23
    (view = new xs.Scene.ClimbLadderRankListScene());
    if ((view && view.init())) {
        // source line 152, bytecode pc 55
        return view;
    }
    // source line 154, bytecode pc 80
    xs.assert(false, "can't create ClimbLadderRankListScene");
    // source line 155, bytecode pc 82
    return null;
});
// source line 161, bytecode pc 253
xs.Scene.Mgr.registerScene("ClimbLadderRankListScene", {
    "class": xs.Scene.ClimbLadderRankListScene,
    type: xs.Constant_SceneType_Challenge,
    area: [ "TiantixitongScene01" ]
});
