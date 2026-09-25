// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Main/MainMenuScene.js:1
// source line 1269, bytecode pc 353
(xs.Scene.MainMenuLayer = cc.Layer.extend({
    name: "MainMenuLayer",
    ctor: function() {
    // source line 36, bytecode pc 12
    this._super();
    // source line 37, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(needAnimate) {
    var visibleOrigin, visibleSize, centerPos, contentSize, bgSp, bgScale, str, pos, _cfgArray, i, _tmpCfg, buttonHello;
    if (!xs._enter_isFirst_mainmenu) {
        // source line 48, bytecode pc 48
        xs.Tools.Statistic.event_enter("mainmenu");
    }
    // source line 57, bytecode pc 72
    this.markFuncBegin("init");
    if (!this._super()) {
        // source line 62, bytecode pc 92
        return false;
    }
    // source line 66, bytecode pc 100
    (this.m_baseTouchPriority = 0);
    // source line 67, bytecode pc 108
    (this.m_bg = null);
    // source line 68, bytecode pc 116
    (this.m_generalPlayer = null);
    // source line 70, bytecode pc 124
    (this.m_mainMenu = null);
    // source line 71, bytecode pc 132
    (this.m_infoBar = null);
    // source line 73, bytecode pc 140
    (this.m_horn = null);
    // source line 74, bytecode pc 148
    (this.m_guideInMain = null);
    // source line 75, bytecode pc 156
    (this.m_menuBtn = null);
    // source line 76, bytecode pc 164
    (this.m_rechargeBtn = null);
    // source line 77, bytecode pc 172
    (this.m_rechargeBtn_First = null);
    // source line 78, bytecode pc 180
    (this.m_activitiesShow = null);
    // source line 79, bytecode pc 188
    (this.m_EvoBoxBtn = null);
    // source line 81, bytecode pc 200
    (this.m_animateNodes = []);
    // source line 82, bytecode pc 212
    (this.m_animatePos = []);
    // source line 85, bytecode pc 220
    (this.m_needAnimate = false);
    if (!xs._enter_isFirst_mainmenu) {
        // source line 93, bytecode pc 244
        (this.m_needAnimate = true);
    }
    if (!xs.Guide.GuideMgr.getIsOver()) {
        // source line 98, bytecode pc 284
        (this.m_needAnimate = false);
    }
    // source line 104, bytecode pc 309
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 105, bytecode pc 334
    (visibleSize = xs.director.getVisibleSize());
    // source line 109, bytecode pc 396
    (centerPos = cc.p(((visibleSize.width / 2) + visibleOrigin.x), ((visibleSize.height / 2) + visibleOrigin.y)));
    // source line 110, bytecode pc 412
    (contentSize = this.getContentSize());
    // source line 116, bytecode pc 440
    (this.m_bg = cc.Node.create());
    // source line 117, bytecode pc 477
    (bgSp = xs.Tools.UI.addIndexBgSprite(this.m_bg));
    // source line 118, bytecode pc 486
    (bgScale = 1.109375);
    // source line 123, bytecode pc 522
    bgSp.setPosition(cc.p(0, 0));
    // source line 128, bytecode pc 580
    (this.m_posBg = xs.Utils.Node.getPointByPosDesc(this, { desc: "cb", sc: true }));
    // source line 130, bytecode pc 605
    this.m_bg.setPosition(this.m_posBg);
    // source line 131, bytecode pc 641
    xs.Utils.Node.attachNodes(this, this.m_bg);
    // source line 171, bytecode pc 674
    (this.m_infoBar = xs.Views.PlayerInfoBannerFullView.create());
    // source line 179, bytecode pc 783
    xs.Utils.Node.attachNodes(this, this.m_infoBar, { desc: "lt", sc: true, offset: { x: 0, y: -76 } }, xs.Cfg.Scene.MainMenuScene.m_infoBar);
    // source line 198, bytecode pc 875
    (this.m_guideInMain = xs.Views.UpgradeGuideInMainView.create(xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel()));
    // source line 199, bytecode pc 914
    this.m_guideInMain.setAnchorPoint(cc.p(0, 0));
    // source line 207, bytecode pc 1022
    xs.Utils.Node.attachNodes(this, this.m_guideInMain, { desc: "lb", sc: true, offset: { x: 0, y: 0 } }, xs.Cfg.Scene.MainMenuScene.m_guideInMain);
    // source line 211, bytecode pc 1055
    (this.m_horn = xs.Views.HornView.create());
    // source line 212, bytecode pc 1094
    this.m_horn.setAnchorPoint(cc.p(0, 0));
    // source line 220, bytecode pc 1202
    xs.Utils.Node.attachNodes(this, this.m_horn, { desc: "lb", sc: true, offset: { x: 0, y: 0 } }, xs.Cfg.Scene.MainMenuScene.m_horn);
    // source line 223, bytecode pc 1243
    (this.m_menuBtn = xs.Views.MainMenuViewCell.create(null, "BS_MainMenuViewBtn"));
    // source line 224, bytecode pc 1270
    this.m_menuBtn.setUp(this.menuClick, this);
    // source line 228, bytecode pc 1442
    this.m_menuBtn.setHintPoint((xs.Profile.GameData.Mgr.getInstance().Hint.haveMenuHintInfo() || (xs.Profile.GameData.Mgr.getInstance().Hint.haveTaskHintInfo() || xs.Profile.GameData.Mgr.getInstance().Hint.haveUnionHintInfo())));
    // source line 237, bytecode pc 1555
    xs.Utils.Node.attachNodes(this, this.m_menuBtn, { desc: "rb", sc: true, offset: { x: -220, y: 40 } }, xs.Cfg.Scene.MainMenuScene.m_menuBtn);
    if ((xs.Tools.Party.getRechargeDoubleNum() > 0)) {
        if ((xs.rechargeRate == 4)) {
            // source line 287, bytecode pc 1645
            (this.m_rechargeBtn = xs.Views.Btn.create("Btn_Recharge_Four"));
        } else {
            // source line 289, bytecode pc 1689
            (this.m_rechargeBtn = xs.Views.Btn.create("Btn_Recharge_Double"));
        }
    } else {
        // source line 292, bytecode pc 1733
        (this.m_rechargeBtn = xs.Views.Btn.create("Btn_Recharge"));
    }
    // source line 300, bytecode pc 1843
    xs.Utils.Node.attachNodes(this, this.m_rechargeBtn, { desc: "lt", sc: true, offset: { x: 90, y: -120 } }, xs.Cfg.Scene.MainMenuScene.m_rechargeBtn);
    // source line 301, bytecode pc 1881
    this.m_rechargeBtn.addOnClickCallBack(this.rechargeCallback.bind(this));
    // source line 303, bytecode pc 1920
    (this.m_rechargeBtn_First = xs.Views.Btn.create("Btn_Recharge_First"));
    // source line 311, bytecode pc 2075
    xs.Utils.Node.attachNodes(this, this.m_rechargeBtn_First, {
    desc: "lt",
    sc: true,
    offset: {
        x: ((this.m_rechargeBtn.getPosition().x + this.m_rechargeBtn.getContentSize().width) + 1),
        y: -122
    }
}, xs.Cfg.Scene.MainMenuScene.m_rechargeBtn);
    // source line 312, bytecode pc 2113
    this.m_rechargeBtn_First.addOnClickCallBack(this.rechargeCallback_First.bind(this));
    if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getChargeCount() <= 0)) {
        // source line 316, bytecode pc 2198
        this.m_rechargeBtn_First.setVisible(true);
    } else {
        // source line 318, bytecode pc 2223
        this.m_rechargeBtn_First.setVisible(false);
    }
    // source line 320, bytecode pc 2286
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, false, xs.Cfg.Scene.MainMenuScene.m_mainmenu));
    if (xs.Guide.GuideMgr.getIsOver()) {
        // source line 323, bytecode pc 2350
        (this.m_activitiesShow = xs.Views.ActivitiesShow6Icon.create());
        // source line 337, bytecode pc 2465
        xs.Utils.Node.attachNodes(this, this.m_activitiesShow, { desc: "lt", sc: true, offset: { x: (((this.getContentSize().width - 665) / 2) + 425), y: -200 } }, null);
    }
    // source line 342, bytecode pc 2504
    (this.m_EvoBoxBtn = xs.Views.Btn.create("Btn_EvoBoxBtn"));
    // source line 350, bytecode pc 2617
    xs.Utils.Node.attachNodes(this, this.m_EvoBoxBtn, { desc: "lt", sc: true, offset: { x: 103, y: -200 } }, xs.Cfg.Scene.MainMenuScene.m_EvoBoxBtn);
    // source line 352, bytecode pc 2655
    this.m_EvoBoxBtn.addOnClickCallBack(this.evoBoxCallback.bind(this));
    // source line 356, bytecode pc 2694
    (this.m_BeautyBtn = xs.Views.Btn.create("Btn_BeautyBtn"));
    // source line 364, bytecode pc 2807
    xs.Utils.Node.attachNodes(this, this.m_BeautyBtn, { desc: "lt", sc: true, offset: { x: 103, y: -280 } }, xs.Cfg.Scene.MainMenuScene.m_BeautyBtn);
    // source line 366, bytecode pc 2845
    this.m_BeautyBtn.addOnClickCallBack(this.beautyCallback.bind(this));
    // source line 369, bytecode pc 2884
    (this.m_mobileBtn = xs.Views.Btn.create("Btn_MobileBtn"));
    if (this.m_mobileBtn) {
        // source line 378, bytecode pc 3008
        xs.Utils.Node.attachNodes(this, this.m_mobileBtn, { desc: "lt", sc: true, offset: { x: 103, y: -360 } }, xs.Cfg.Scene.MainMenuScene.m_mobileBtn);
        // source line 380, bytecode pc 3046
        this.m_mobileBtn.setOnClickCallBack(this.mobileBtnCallback.bind(this));
    }
    // source line 382, bytecode pc 3076
    this.m_mobileBtn.setVisible(!xs.isMobile);
    if (xs.temp_3rd) {
        // source line 385, bytecode pc 3111
        this.m_mobileBtn.setVisible(false);
    }
    if (((xs.festivalType != null) && (xs.festivalType > 0))) {
        // source line 392, bytecode pc 3193
        (str = xs.Tools.String.createStringWithArgsArray("BtnTypeString", [ 0 ]));
        // source line 393, bytecode pc 3227
        xs.dump("xs.festivalType：", xs.festivalType);
        // source line 394, bytecode pc 3264
        (this.m_copyBtn = xs.Views.Btn.create(str));
        if (this.m_copyBtn) {
            // source line 396, bytecode pc 3364
            xs.Utils.Node.attachNodes(this, this.m_copyBtn, { desc: "ct", sc: true, offset: cc.p(97, -220) });
            // source line 397, bytecode pc 3403
            this.m_copyBtn.setAnchorPoint(cc.p(0, 1));
            // source line 398, bytecode pc 3441
            this.m_copyBtn.setOnClickCallBack(this.copyBtnCallback.bind(this));
        }
    }
    if (this.m_needAnimate) {
        // source line 406, bytecode pc 3497
        this._addNodeInAnimate(this.m_mainMenu, { desc: "r", offset: 1024 });
        // source line 410, bytecode pc 3542
        this._addNodeInAnimate(this.m_infoBar, { desc: "l", offset: 1024 });
        // source line 418, bytecode pc 3587
        this._addNodeInAnimate(this.m_horn, { desc: "l", offset: 1024 });
        // source line 422, bytecode pc 3632
        this._addNodeInAnimate(this.m_guideInMain, { desc: "l", offset: 1024 });
        // source line 426, bytecode pc 3677
        this._addNodeInAnimate(this.m_menuBtn, { desc: "r", offset: 1024 });
        // source line 442, bytecode pc 3722
        this._addNodeInAnimate(this.m_rechargeBtn, { desc: "l", offset: 1024 });
        // source line 446, bytecode pc 3767
        this._addNodeInAnimate(this.m_EvoBoxBtn, { desc: "l", offset: 1024 });
        // source line 450, bytecode pc 3812
        this._addNodeInAnimate(this.m_BeautyBtn, { desc: "l", offset: 1024 });
        if (this.m_copyBtn) {
            // source line 456, bytecode pc 3868
            this._addNodeInAnimate(this.m_copyBtn, { desc: "l", offset: 1024 });
        }
        if (this.m_mobileBtn) {
            // source line 463, bytecode pc 3924
            this._addNodeInAnimate(this.m_mobileBtn, { desc: "l", offset: 1024 });
        }
        // source line 469, bytecode pc 3969
        this._addNodeInAnimate(this.m_rechargeBtn_First, { desc: "l", offset: 1024 });
        if (this.m_activitiesShow) {
            // source line 480, bytecode pc 4025
            this._addNodeInAnimate(this.m_activitiesShow, { desc: "r", offset: 1024 });
        }
        // source line 490, bytecode pc 4118
        (pos = xs.Utils.Node.getPointByPosDesc(this, { desc: "cb", sc: true, offset: { x: 0, y: (visibleSize.height - (1385 * bgScale)) } }));
        // source line 493, bytecode pc 4140
        this.m_bg.setPosition(pos);
    }
    if (false) {
        // source line 535, bytecode pc 4365
        (_cfgArray = [
    { btn_name: "TestCaseA", scene_name: "TestCaseSceneA" },
    { btn_name: "TestCaseB", scene_name: "TestCaseSceneB" },
    { btn_name: "TestCaseC", scene_name: "TestCaseSceneC" },
    { btn_name: "TestCaseD", scene_name: "TestCaseSceneD" },
    { btn_name: "TestCaseE", scene_name: "TestCaseSceneE" },
    { btn_name: "TestCaseF", scene_name: "TestCaseSceneF" },
    { btn_name: "HelloWorld", scene_name: "HelloWorldScene" }
]);
        // source line 539, bytecode pc 4370
        (i = 0);
        while ((i < _cfgArray.length)) {
            // source line 540, bytecode pc 4387
            (_tmpCfg = _cfgArray[i]);
            // source line 541, bytecode pc 4429
            (buttonHello = xs.Views.Btn.create("Btn_Default", ""));
            // source line 542, bytecode pc 4456
            buttonHello.setString(_tmpCfg.btn_name, 32);
            // source line 543, bytecode pc 4495
            buttonHello.setButtonSize(cc.size(140, 80));
            // source line 553, bytecode pc 4535
            buttonHello.setOnClickCallBack(function() {
    // source line 551, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("HulaoBattleMainScene");
}.bind(_cfgArray[i]));
            // source line 558, bytecode pc 4561
            buttonHello.setAnchorPoint(xs.ap_rt);
            // source line 564, bytecode pc 4672
            xs.Utils.Node.attachNodes(this, buttonHello, { desc: "rt", sc: true, offset: { x: -200, y: (-0 - (i * buttonHello.getButtonSize().height)) } });
            // source line 539, bytecode pc 4687
            i++;
        }
    }
    if (!xs._enter_isFirst_mainmenu) {
        // source line 594, bytecode pc 4733
        (xs._enter_isFirst_mainmenu = true);
    }
    // source line 601, bytecode pc 4735
    return true;
},
    _is_GuideStep_Surrender: function() {
    // source line 605, bytecode pc 59
    return (!xs.Guide.GuideMgr.getIsOver() && xs.Guide.GuideMgr.isGuideStep_Surrender_MainMenu());
},
    createShowGenerals: function() {
    var _arrayAtlas, _arrayGeneralOwn, i, _tmpAtlas, _tmpModelGeneral, _arrayDataSource;
    // source line 609, bytecode pc 50
    (_arrayAtlas = xs.Profile.GameData.Mgr.getInstance().Atlas.getGeneral());
    // source line 610, bytecode pc 59
    (_arrayGeneralOwn = []);
    // source line 612, bytecode pc 64
    (i = 0);
    while ((i < _arrayAtlas.length)) {
        // source line 613, bytecode pc 81
        (_tmpAtlas = _arrayAtlas[i]);
        // source line 614, bytecode pc 99
        (_tmpModelGeneral = _tmpAtlas.getModel());
        if (((_tmpAtlas.getGeneralStatus() == xs.Models.Altas_General_Status_Own) && (_tmpAtlas.getAtlasStatus() != xs.Models.Altas_Status_Surrender))) {
            // source line 618, bytecode pc 189
            _arrayGeneralOwn.push(_tmpModelGeneral);
        }
        // source line 612, bytecode pc 204
        i++;
    }
    // source line 622, bytecode pc 229
    (_arrayDataSource = _arrayGeneralOwn);
    if (((_arrayDataSource.length > 0) && xs.Guide.GuideMgr.getIsOver())) {
        // source line 630, bytecode pc 362
        (this.m_generalPlayer = xs.Views.GeneralPlayView_CmnWord.create(xs.Views.GeneralPlayViewType_Waist, _arrayDataSource, xs.Tools.String.createString("auto_name_118")));
        // source line 632, bytecode pc 382
        this.m_generalPlayer.setIsRandomStartIndex(false);
        // source line 638, bytecode pc 468
        xs.Utils.Node.attachNodes(this, this.m_generalPlayer, { desc: "lb", sc: true, offset: { x: 244, y: 147 } });
    }
    if (this.m_needAnimate) {
        if (this.m_generalPlayer) {
            // source line 647, bytecode pc 535
            this._addNodeInAnimate(this.m_generalPlayer, { desc: "b", offset: 780 });
        }
    }
},
    onEnterTransitionDidFinish: function() {
    var _btn, delayTime, moveTo, fallingFinished, actions;
    // source line 655, bytecode pc 12
    this.createShowGenerals();
    // source line 656, bytecode pc 25
    this._super();
    if (this._is_GuideStep_Surrender()) {
        // source line 660, bytecode pc 71
        xs.log("GuideMgr", "isGuideStep_Surrender_MainMenu");
        // source line 661, bytecode pc 126
        (this.m_sprite_general_sur = xs.Guide.GuideMgr.get_Model_Surrender_General().getRes().createOriginalSprite_Waist());
        // source line 672, bytecode pc 238
        xs.Utils.Node.attachNodes(this, this.m_sprite_general_sur, { desc: "lb", sc: true, offset: { x: 244, y: 177 } }, xs.Cfg.Scene.MainMenuScene.m_generalPlayer);
        // source line 675, bytecode pc 267
        this.m_sprite_general_sur.setGuideTag(xs.Constant_GuideTag_MainMenu_General);
        // source line 679, bytecode pc 314
        (_btn = xs.Views.Button.Factory.Audio.createInvisibleWithParent(this.m_sprite_general_sur));
        // source line 681, bytecode pc 335
        _btn.setOnClickCallBack(function() {
    // source line 683, bytecode pc 32
    xs.Views.Mgr.showDialogByName("AgaSurrenderDialog_SurrenderGuide");
});
    }
    if (this.m_needAnimate) {
        // source line 695, bytecode pc 377
        (delayTime = cc.DelayTime.create(0.2));
        // source line 696, bytecode pc 411
        (moveTo = cc.MoveTo.create(1, this.m_posBg));
        // source line 697, bytecode pc 458
        (fallingFinished = cc.CallFunc.create(this.bgFallingFinished.bind(this), this));
        // source line 698, bytecode pc 515
        (actions = xs.Utils.Action.combineSequence([ delayTime, moveTo, fallingFinished ]));
        // source line 699, bytecode pc 537
        this.m_bg.runAction(actions);
        // source line 702, bytecode pc 577
        xs.Views.Mgr.getDialogMask().setVisible(true);
    } else {
        if (this.m_generalPlayer) {
            // source line 706, bytecode pc 611
            this.m_generalPlayer.playGeneralEffect();
        }
        // source line 711, bytecode pc 624
        this._showMailButton();
        // source line 713, bytecode pc 637
        this._guideStepEnd();
        // source line 715, bytecode pc 684
        xs.Utils.Notify.addObserver(this, this._showMailButton, xs.Constant_Notify_HintChange_All);
        // source line 716, bytecode pc 718
        xs.log_hsq("Main_Btn_State:", xs.Main_Btn_State);
        if (xs.Main_Btn_State) {
            // source line 718, bytecode pc 746
            this.menuClick();
        }
    }
    // source line 722, bytecode pc 793
    xs.Utils.Notify.addObserver(this, this._showMoblieButton, xs.Constant_Mobile_Verification_OK);
    // source line 724, bytecode pc 852
    xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().setLoginTimeToSql();
},
    onEnter: function() {
    var _unionEncounterMapDialogParam, _exitBattleScene_formation;
    // source line 744, bytecode pc 12
    this._super();
    // source line 749, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.setMenuBtnHintPoint, xs.Constant_Notify_HintChange_All);
    // source line 754, bytecode pc 95
    (_unionEncounterMapDialogParam = xs.Scene.Mgr.loadStatus("UnionEncounterMapDialogParam"));
    // source line 755, bytecode pc 131
    (_exitBattleScene_formation = xs.Scene.Mgr.loadStatusAndClear("exitBattleScene_formation"));
    if (_unionEncounterMapDialogParam) {
        // source line 757, bytecode pc 176
        xs.Views.Mgr.showDialogByName("UnionEncounterMapDialog", _unionEncounterMapDialogParam);
    } else {
        if (_exitBattleScene_formation) {
            // source line 760, bytecode pc 236
            xs.Views.Mgr.showDialogByName("UnionDialog", { pageIdx: 5 });
        }
    }
},
    onExit: function() {
    // source line 769, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_HintChange_All);
    // source line 770, bytecode pc 79
    xs.Utils.Notify.removeObserver(this, xs.Constant_Mobile_Verification_OK);
    // source line 771, bytecode pc 92
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 779, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 780, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 781, bytecode pc 85
    this.m_mainMenu.setBaseTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.MainMenuScene.m_mainmenu.priority));
    // source line 782, bytecode pc 141
    this.m_menuBtn.setBaseTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.MainMenuScene.m_menuBtn.priority));
    // source line 786, bytecode pc 197
    this.m_horn.setBaseTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.MainMenuScene.m_horn.priority));
    if (this.m_generalPlayer) {
        // source line 791, bytecode pc 264
        this.m_generalPlayer.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.MainMenuScene.m_generalPlayer.priority));
    }
    // source line 793, bytecode pc 320
    this.m_rechargeBtn.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.MainMenuScene.m_rechargeBtn.priority));
    // source line 794, bytecode pc 376
    this.m_rechargeBtn_First.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.MainMenuScene.m_rechargeBtn.priority));
    // source line 795, bytecode pc 432
    this.m_EvoBoxBtn.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.MainMenuScene.m_EvoBoxBtn.priority));
    // source line 797, bytecode pc 488
    this.m_BeautyBtn.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.MainMenuScene.m_BeautyBtn.priority));
    if (this.m_mobileBtn) {
        // source line 800, bytecode pc 555
        this.m_mobileBtn.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.MainMenuScene.m_mobileBtn.priority));
    }
    if (this.m_copyBtn) {
        // source line 803, bytecode pc 622
        this.m_copyBtn.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.MainMenuScene.m_copyBtn.priority));
    }
},
    setMenuBtnHintPoint: function() {
},
    back: function() {
},
    bgFallingFinished: function() {
    var time, i, node, moveTo, ebo, finished, actions;
    // source line 830, bytecode pc 39
    xs.Views.Mgr.getDialogMask().setVisible(false);
    // source line 831, bytecode pc 48
    (time = 0.14);
    // source line 832, bytecode pc 53
    (i = 0);
    while ((i < this.m_animateNodes.length)) {
        // source line 833, bytecode pc 73
        (node = this.m_animateNodes[i]);
        // source line 834, bytecode pc 113
        (moveTo = cc.MoveTo.create(time, this.m_animatePos[i]));
        // source line 836, bytecode pc 142
        (ebo = cc.EaseBackOut.create(moveTo));
        // source line 839, bytecode pc 188
        (finished = cc.CallFunc.create(function() {
}.bind(this), this));
        if ((this.m_menuBtn == node)) {
            // source line 845, bytecode pc 249
            (finished = cc.CallFunc.create(function() {
    if (xs.Main_Btn_State) {
        // source line 843, bytecode pc 27
        this.menuClick();
    }
}.bind(this), this));
        }
        // source line 847, bytecode pc 299
        (actions = xs.Utils.Action.combineSequence([ ebo, finished ]));
        // source line 848, bytecode pc 318
        node.runAction(actions);
        // source line 832, bytecode pc 331
        (i = (+i + 1));
    }
    if (this.m_generalPlayer) {
        // source line 851, bytecode pc 381
        this.m_generalPlayer.playGeneralEffect();
    }
    // source line 854, bytecode pc 428
    xs.Utils.Notify.addObserver(this, this._showMailButton, xs.Constant_Notify_HintChange_All);
    // source line 855, bytecode pc 441
    this._showMailButton();
    // source line 856, bytecode pc 454
    this._showBroad();
    // source line 858, bytecode pc 467
    this._guideStepEnd();
    if ((xs.Profile.GameData.Mgr.getInstance().Skills.getAllWithDefaultSort().length > 500)) {
        // source line 921, bytecode pc 568
        this.schedule(function() {
    // source line 865, bytecode pc 12
    this.unschedule();
    // source line 871, bytecode pc 173
    xs.Views.Mgr.showDialogByName("OneBtnDialog", {
    titleText: xs.Tools.String.createString("SkillForceOneStepMeltPromptTitle"),
    contentText: xs.Tools.String.createString("SkillForceOneStepMeltPromptContent"),
    btnText: xs.Tools.String.createString("SkillForceOneStepMeltPromptAction"),
    btnCallback: function() {
    // source line 874, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 916, bytecode pc 163
    xs.Tools.Net.requireSkillMultMelt({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    var list, chuji_refineStone, zhongji_refineStone, gaoji_refineStone, i, str;
    if (data.add_list) {
        // source line 879, bytecode pc 24
        (list = data.add_list);
        // source line 880, bytecode pc 29
        (chuji_refineStone = 0);
        // source line 881, bytecode pc 34
        (zhongji_refineStone = 0);
        // source line 882, bytecode pc 39
        (gaoji_refineStone = 0);
        // source line 884, bytecode pc 44
        (i = 0);
        while ((i < list.length)) {
            if ((list[i].type == xs.Const_Item_Style_Item)) {
                if ((list[i].id == xs.Models.ItemID_JuanZhou_chuji)) {
                    // source line 887, bytecode pc 146
                    (chuji_refineStone = (chuji_refineStone + Number(list[i].num)));
                } else {
                    if ((list[i].id == xs.Models.ItemID_JuanZhou_zhongji)) {
                        // source line 889, bytecode pc 219
                        (zhongji_refineStone = (zhongji_refineStone + Number(list[i].num)));
                    } else {
                        if ((list[i].id == xs.Models.ItemID_JuanZhou_gaoji)) {
                            // source line 891, bytecode pc 292
                            (gaoji_refineStone = (gaoji_refineStone + Number(list[i].num)));
                        }
                    }
                }
            }
            // source line 884, bytecode pc 307
            i++;
        }
        // source line 895, bytecode pc 361
        (str = xs.Tools.String.createString("EquipmentMeltSucess"));
        if (chuji_refineStone) {
            // source line 897, bytecode pc 419
            (str = (((str + xs.Tools.String.createString("chuJi_JuanZhou")) + chuji_refineStone) + ","));
        }
        if (zhongji_refineStone) {
            // source line 900, bytecode pc 477
            (str = (((str + xs.Tools.String.createString("zhongji_JuanZhou")) + zhongji_refineStone) + ","));
        }
        if (gaoji_refineStone) {
            // source line 903, bytecode pc 529
            (str = ((str + xs.Tools.String.createString("gaoji_JuanZhou")) + gaoji_refineStone));
        }
        // source line 906, bytecode pc 560
        xs.Views.Mgr.showToast(str);
    }
}.bind(this), function(params) {
    if ((params.error_code === "e_2049")) {
    }
}.bind(this), this);
}
});
}.bind(this), 0.5, false);
    }
    // source line 925, bytecode pc 576
    (this.m_needAnimate = false);
},
    _addNodeInAnimate: function(node, info) {
    var pos, savePos;
    // source line 939, bytecode pc 17
    (pos = node.getPosition());
    // source line 940, bytecode pc 41
    (savePos = cc.p(0, 0));
    // source line 941, bytecode pc 62
    this._pointCopy(savePos, pos);
    if (info) {
        // source line 944, bytecode pc 98
        (info.desc = (info.desc || "l"));
        // source line 945, bytecode pc 124
        (info.offset = (info.offset || 1024));
        // source line 946, bytecode pc 133
        switch (info.desc) {
            case "l":
            // source line 949, bytecode pc 202
            (pos.x = (pos.x - info.offset));
            break;
            case "r":
            // source line 954, bytecode pc 231
            (pos.x = (pos.x + info.offset));
            break;
            case "t":
            // source line 959, bytecode pc 260
            (pos.y = (pos.y + info.offset));
            break;
            case "b":
            // source line 964, bytecode pc 289
            (pos.y = (pos.y - info.offset));
            break;
            default:
            // source line 969, bytecode pc 317
            xs.warn("_addNodeInAnimate info.desc is out of range!");
            break;
        }
    }
    // source line 974, bytecode pc 341
    node.setPosition(pos);
    // source line 976, bytecode pc 363
    this.m_animateNodes.push(node);
    // source line 977, bytecode pc 385
    this.m_animatePos.push(savePos);
},
    _pointCopy: function(to, from) {
    // source line 981, bytecode pc 16
    (to.x = from.x);
    // source line 982, bytecode pc 33
    (to.y = from.y);
},
    _showMailButton: function() {
    if (this._mailBtn) {
        // source line 986, bytecode pc 30
        this._mailBtn.setVisible(true);
    } else {
        if ((xs.Profile.GameData.Mgr.getInstance().Hint.awardHintInfoCount() > 0)) {
            // source line 989, bytecode pc 102
            this.createBtnChest();
        }
    }
    if (this._chestBtn) {
        // source line 994, bytecode pc 133
        this._chestBtn.setVisible(true);
    } else {
        if ((xs.Profile.GameData.Mgr.getInstance().Hint.normalMailCount() > 0)) {
            // source line 997, bytecode pc 205
            this.createBtnMail();
        }
    }
},
    _showMoblieButton: function() {
    if ((this.m_mobileBtn && !xs.temp_3rd)) {
        // source line 1002, bytecode pc 57
        this.m_mobileBtn.setVisible(!xs.isMobile);
    }
},
    _guideStepEnd: function() {
    // source line 1008, bytecode pc 26
    xs.Tools.Sys.free_js_garbage_in_MainMenu();
    // source line 1011, bytecode pc 113
    xs.Guide.GuideMgr.endStepBySequence([ "00113", "00335_before", "10100", "10201_before", "20101_before", "180102" ]);
},
    _showBroad: function() {
    var _param, checkOrderFuncName;
    if (xs.Guide.GuideMgr.getIsOver()) {
        if (xs.isTaskGoScene) {
            // source line 1020, bytecode pc 78
            xs.Views.Mgr.showDialogByName("DailyTaskDialog");
            // source line 1021, bytecode pc 90
            (xs.isTaskGoScene = false);
        }
        // source line 1028, bytecode pc 141
        xs.JsbConnecter.getInstance().invoke("AppStore", "init", "");
        if (xsc.Tools.PaySys.isUsingEasySdk()) {
            if ((xs.Profile.UserCfg.getLoginType() != xs.Constant_LoginType_Visitor)) {
                // source line 1041, bytecode pc 456
                (_param = JSON.stringify({
    app_role_id: ("" + xs.gd_mgr.getInstance().Player.getPlayer().getPlayerId()),
    server_id: ("" + xs.Profile.UserCfg.getGameAddr().id),
    easy_uid: xs.EasySdk.Account.getAccountInfo().easy_uid,
    easy_session: xs.EasySdk.Account.getAccountInfo().easy_session,
    easy_appkey_base64: (xs.EasySdk.Payment.getEasyAppKeyBase64() || "easy_appkey_base64_is_null")
}));
            } else {
                // source line 1051, bytecode pc 651
                (_param = JSON.stringify({
    app_role_id: ("" + xs.gd_mgr.getInstance().Player.getPlayer().getPlayerId()),
    server_id: ("" + xs.Profile.UserCfg.getGameAddr().id),
    easy_uid: "",
    easy_session: "",
    easy_appkey_base64: (xs.EasySdk.Payment.getEasyAppKeyBase64() || "easy_appkey_base64_is_null")
}));
            }
            if ((xs.Tools.Jsb.EasySdk.Payment.getPlatformId() == "appstore")) {
                // source line 1056, bytecode pc 745
                (checkOrderFuncName = xs.Tools.Jsb.EasySdk.isSupportFunction("Payment", "check_appstore"));
                // source line 1057, bytecode pc 772
                xs.log_zhz("checkOrderFuncName", checkOrderFuncName);
                if (checkOrderFuncName) {
                    // source line 1059, bytecode pc 828
                    xs.Tools.Jsb.EasySdk.callFunction("Payment", "check_appstore", _param);
                }
            }
        }
        if ((xs.isShowAmt && xs.release)) {
            // source line 1067, bytecode pc 892
            xs.Views.Mgr.showDialogByName("Announcement");
        }
        if ((xs.isVersionForPublish && !xs.temp_3rd)) {
            if (!xs.isAdult) {
                // source line 1125, bytecode pc 976
                this.schedule(function() {
    // source line 1072, bytecode pc 12
    this.unschedule();
    // source line 1074, bytecode pc 86
    (xs.adultShowTime = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().readAddictionSql().onlineTime);
    // source line 1075, bytecode pc 109
    (xs.adultNum = (xs.adultNum - 1));
    // source line 1095, bytecode pc 289
    xs.Views.Mgr.showDialogByName("common", {
    title: "IdCardBinding_10",
    content: "IdCardBinding_11",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("IdCardBinding_18"),
    leftCB: function() {
    // source line 1082, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 1085, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_Visitor)) {
        // source line 1087, bytecode pc 101
        xs.Views.Mgr.showToastByStringId("IdCardBinding_9");
    } else {
        if (xs.isAdult) {
            // source line 1090, bytecode pc 154
            xs.Views.Mgr.showToastByStringId("IdCardBinding_7");
        } else {
            // source line 1092, bytecode pc 192
            xs.Views.Mgr.showDialogByName("IdCardBindingDialog");
        }
    }
}.bind(this)
});
}.bind(this), 1, false);
            }
        }
    }
},
    showAduitView: function() {
    if ((xs.isVersionForPublish && !xs.temp_3rd)) {
        if (!xs.isAdult) {
            // source line 1143, bytecode pc 134
            xs.dump("onlinetime==", xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().readAddictionSql().onlineTime);
            // source line 1144, bytecode pc 168
            xs.dump("showtime==", xs.adultShowTime);
            // source line 1145, bytecode pc 202
            xs.dump("adultNum==", xs.adultNum);
            if (((xs.adultShowTime == 0) || (((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().readAddictionSql().onlineTime - xs.adultShowTime) > xs.adultIntervalTime) && (xs.adultNum > 0)))) {
                // source line 1204, bytecode pc 364
                this.schedule(function() {
    // source line 1149, bytecode pc 12
    this.unschedule();
    // source line 1152, bytecode pc 86
    (xs.adultShowTime = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().readAddictionSql().onlineTime);
    // source line 1153, bytecode pc 109
    (xs.adultNum = (xs.adultNum - 1));
    // source line 1174, bytecode pc 289
    xs.Views.Mgr.showDialogByName("common", {
    title: "IdCardBinding_10",
    content: "IdCardBinding_11",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("IdCardBinding_18"),
    leftCB: function() {
    // source line 1161, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 1164, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_Visitor)) {
        // source line 1166, bytecode pc 101
        xs.Views.Mgr.showToastByStringId("IdCardBinding_9");
    } else {
        if (xs.isAdult) {
            // source line 1169, bytecode pc 154
            xs.Views.Mgr.showToastByStringId("IdCardBinding_7");
        } else {
            // source line 1171, bytecode pc 192
            xs.Views.Mgr.showDialogByName("IdCardBindingDialog");
        }
    }
}.bind(this)
});
}.bind(this), 1, false);
            }
        }
    }
},
    menuClick: function() {
    // source line 1210, bytecode pc 22
    xs.log("....menuClick");
    // source line 1211, bytecode pc 34
    (xs.Main_Btn_State = true);
    // source line 1213, bytecode pc 67
    (this.mainMenuBtnView = xs.Views.MainMenuBtnView.create());
    // source line 1214, bytecode pc 105
    xs.Utils.replaceNodeWithOldNode(this, this.m_menuBtn, this.mainMenuBtnView);
},
    teamBuilderCallback: function() {
    // source line 1217, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("TeamBuildScene");
},
    evoBoxCallback: function() {
    // source line 1220, bytecode pc 26
    xs.Tools.Scene.gotoEvolutionChest();
},
    beautyCallback: function() {
    // source line 1223, bytecode pc 26
    xs.Tools.Scene.gotoBeautyScene();
},
    copyBtnCallback: function() {
    // source line 1226, bytecode pc 26
    xs.Tools.Scene.gotoCopyScene();
},
    mobileBtnCallback: function() {
    if (!xs.isMobile) {
        // source line 1230, bytecode pc 48
        xs.Views.Mgr.showDialogByName("VerificationTelDialog");
    }
},
    rechargeCallback: function() {
    // source line 1234, bytecode pc 32
    xs.Views.Mgr.showDialogByName("ChargeDialog");
},
    rechargeCallback_First: function() {
    // source line 1238, bytecode pc 32
    xs.Views.Mgr.showDialogByName("FirstChargeDialog");
},
    msgPopCallback: function() {
    // source line 1241, bytecode pc 22
    xs.log("....msgPopCallback");
    // source line 1242, bytecode pc 54
    xs.Views.Dialog.ChatDialog.show();
},
    playerInfoCallback: function() {
    // source line 1245, bytecode pc 22
    xs.log("......................playerInfoCallback");
    // source line 1246, bytecode pc 55
    xs.Views.Mgr.showDialogByName("PlayerInfoDialog");
},
    createBtnMail: function() {
    var visibleSize, _func;
    // source line 1250, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 1251, bytecode pc 88
    (this._mailBtn = xs.Views.TableViewCellButton.createWithFrameName(xs.Cfg.Sprite.MainMenuScene01.shu.frameName));
    // source line 1257, bytecode pc 208
    xs.Utils.Node.attachNodes(this, this._mailBtn, {
    desc: "lb",
    sc: true,
    offset: { x: (((visibleSize.width / 2) + this._mailBtn.getContentSize().width) - 50), y: 260 }
});
    // source line 1260, bytecode pc 217
    (_func = function() {
    // source line 1262, bytecode pc 45
    xs.Scene.Mgr.changeSceneByName("MailSystemScene", { index: 0 });
});
    // source line 1266, bytecode pc 241
    this._mailBtn.setCallback(_func, this);
    // source line 1267, bytecode pc 261
    this._mailBtn.setVisible(false);
},
    createBtnChest: function() {
    var visibleSize, _func;
    // source line 1270, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 1271, bytecode pc 88
    (this._chestBtn = xs.Views.TableViewCellButton.createWithFrameName(xs.Cfg.Sprite.MainMenuScene01.baoxiang.frameName));
    // source line 1277, bytecode pc 211
    xs.Utils.Node.attachNodes(this, this._chestBtn, {
    desc: "lb",
    sc: true,
    offset: { x: (((visibleSize.width / 2) + (this._chestBtn.getContentSize().width * 2)) - 50), y: 260 }
});
    // source line 1280, bytecode pc 220
    (_func = function() {
    // source line 1282, bytecode pc 45
    xs.Scene.Mgr.changeSceneByName("MailSystemScene", { index: 1 });
});
    // source line 1285, bytecode pc 244
    this._chestBtn.setCallback(_func, this);
    // source line 1286, bytecode pc 264
    this._chestBtn.setVisible(false);
}
}));
// source line 1314, bytecode pc 437
(xs.Scene.MainMenuScene = cc.Scene.extend({
    name: "MainMenuScene",
    ctor: function() {
    // source line 1295, bytecode pc 12
    this._super();
    // source line 1296, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(needAnimate) {
    var layer;
    // source line 1300, bytecode pc 12
    this._super();
    // source line 1302, bytecode pc 31
    this.markFuncBegin("init");
    // source line 1304, bytecode pc 55
    (layer = new xs.Scene.MainMenuLayer());
    // source line 1305, bytecode pc 74
    layer.init(needAnimate);
    // source line 1306, bytecode pc 91
    layer.setBaseTouchPriority(0);
    // source line 1307, bytecode pc 108
    this.addChild(layer);
    // source line 1309, bytecode pc 127
    this.markFuncEnd("init");
    // source line 1311, bytecode pc 129
    return true;
},
    onEnter: function() {
    // source line 1316, bytecode pc 18
    this.markFuncBegin("onEnter");
    // source line 1318, bytecode pc 31
    this._super();
    // source line 1321, bytecode pc 50
    this.markFuncEnd("onEnter");
}
}));
// source line 1325, bytecode pc 463
(xs.Scene.MainMenuScene.create = function(needAnimate) {
    var scene;
    // source line 1326, bytecode pc 23
    (scene = new xs.Scene.MainMenuScene());
    if ((scene && scene.init(needAnimate))) {
        // source line 1328, bytecode pc 59
        return scene;
    }
    // source line 1330, bytecode pc 61
    return null;
});
// source line 1343, bytecode pc 578
xs.Scene.Mgr.registerScene("MainMenuScene", {
    "class": xs.Scene.MainMenuScene,
    area: [ "MainMenuScene01" ],
    type: xs.Constant_SceneType_Main,
    audio: { bgId: "Audio_BG_MainMenu" }
});
