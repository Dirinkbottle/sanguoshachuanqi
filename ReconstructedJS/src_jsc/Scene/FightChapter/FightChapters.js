// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/FightChapter/FightChapters.js:1
// source line 403, bytecode pc 297
(xs.Scene.ChaptersLayer = cc.Layer.extend({
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(params) {
    var playerInfo, dailyAdventure, upBtn, curHardMapId;
    // source line 15, bytecode pc 9
    (this.params = params);
    // source line 17, bytecode pc 33
    this.setTouchMode(cc.TOUCH_ALL_AT_ONCE);
    // source line 18, bytecode pc 48
    this.setTouchEnabled(true);
    // source line 20, bytecode pc 64
    this.setBaseTouchPriority(-1);
    // source line 23, bytecode pc 94
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 24, bytecode pc 130
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 25, bytecode pc 186
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 27, bytecode pc 225
    (this.m_bInHardChapter = xs.Scene.Mgr.loadStatus("m_bInHardChapter"));
    if (!this.m_bInHardChapter) {
        // source line 29, bytecode pc 245
        (this.m_bInHardChapter = false);
    }
    if (this.params) {
        if ((this.params.mapId && xs.Profile.GameData.Mgr.getInstance().Map.isEliteMap(this.params.mapId))) {
            // source line 34, bytecode pc 345
            (this.m_bInHardChapter = true);
            // source line 35, bytecode pc 385
            xs.Scene.Mgr.saveStatus("m_bInHardChapter", this.m_bInHardChapter);
        }
        // source line 37, bytecode pc 403
        (this.params.m_bInHardChapter = this.m_bInHardChapter);
    } else {
        // source line 39, bytecode pc 432
        (this.params = { m_bInHardChapter: this.m_bInHardChapter });
    }
    // source line 44, bytecode pc 473
    (dailyAdventure = xs.Models.DailyAdventure.create(xs.Constant_DailyAdventure_ModelType_Dungeon));
    if (dailyAdventure.getIsAdventureUp()) {
        // source line 46, bytecode pc 515
        xs.log_xjf("关卡奇遇up");
        // source line 47, bytecode pc 533
        (upBtn = dailyAdventure.createUpBtn());
        // source line 48, bytecode pc 619
        xs.Utils.Node.attachNodes(this, upBtn, { desc: "rt", offset: cc.p(-430, -70), sc: true });
    }
    // source line 52, bytecode pc 658
    (this.eliteExchangeBtn = xs.Views.Btn.create("Btn_EliteExchange_Smal"));
    // source line 53, bytecode pc 678
    this.eliteExchangeBtn.setEventOnDisable(true);
    // source line 54, bytecode pc 704
    this.eliteExchangeBtn.setEnabled(!this.m_bInHardChapter);
    // source line 55, bytecode pc 793
    xs.Utils.Node.attachNodes(this, this.eliteExchangeBtn, { desc: "rt", offset: cc.p(-260, -70), sc: true });
    // source line 56, bytecode pc 822
    this.eliteExchangeBtn.setGuideTag(xs.Constant_GuideTag_EliteDuplicate);
    // source line 59, bytecode pc 867
    (this.eliteExchangeBtn_ligth = xs.Factorys.Sprite.create("Cmn01_EndButton801_light", "Cmn01"));
    // source line 60, bytecode pc 930
    this.eliteExchangeBtn_ligth.setPosition(cc.p((this.eliteExchangeBtn.getContentSize().width / 2), 0));
    // source line 61, bytecode pc 973
    this.eliteExchangeBtn_ligth.setAnchorPoint(cc.p(0.5, 0));
    // source line 62, bytecode pc 993
    this.eliteExchangeBtn_ligth.setVisible(false);
    // source line 63, bytecode pc 1020
    this.eliteExchangeBtn.addChild(this.eliteExchangeBtn_ligth, 0);
    // source line 66, bytecode pc 1059
    (this.normalExchangeBtn = xs.Views.Btn.create("Btn_NormalExchange_Smal"));
    // source line 67, bytecode pc 1079
    this.normalExchangeBtn.setEventOnDisable(true);
    // source line 68, bytecode pc 1104
    this.normalExchangeBtn.setEnabled(this.m_bInHardChapter);
    // source line 69, bytecode pc 1193
    xs.Utils.Node.attachNodes(this, this.normalExchangeBtn, { desc: "rt", offset: cc.p(-160, -70), sc: true });
    // source line 72, bytecode pc 1238
    (this.normalExchangeBtn_ligth = xs.Factorys.Sprite.create("Cmn01_EndButton801_light", "Cmn01"));
    // source line 73, bytecode pc 1301
    this.normalExchangeBtn_ligth.setPosition(cc.p((this.normalExchangeBtn.getContentSize().width / 2), 0));
    // source line 74, bytecode pc 1344
    this.normalExchangeBtn_ligth.setAnchorPoint(cc.p(0.5, 0));
    // source line 75, bytecode pc 1364
    this.normalExchangeBtn_ligth.setVisible(false);
    // source line 76, bytecode pc 1391
    this.normalExchangeBtn.addChild(this.normalExchangeBtn_ligth, 0);
    // source line 81, bytecode pc 1428
    this.eliteExchangeBtn.setOnClickCallBack(function() {
    // source line 80, bytecode pc 12
    this.onEliteExchangeBtnOnClick();
}.bind(this));
    // source line 86, bytecode pc 1465
    this.normalExchangeBtn.setOnClickCallBack(function() {
    // source line 85, bytecode pc 12
    this.onNormalExchangeBtnOnClick();
}.bind(this));
    if (!this.params.dungeonId) {
        if (this.m_bInHardChapter) {
            // source line 92, bytecode pc 1546
            (curHardMapId = xs.Profile.GameData.Mgr.getInstance().Map.getCurMapId(true));
            // source line 93, bytecode pc 1563
            this.requireChapterInfoWithMapId(curHardMapId);
        } else {
            // source line 97, bytecode pc 1581
            this.showDungeonInfo();
        }
    }
    // source line 100, bytecode pc 1594
    this.selectExchangeBtn();
    // source line 103, bytecode pc 1631
    (this.sideMenu = xs.Tools.UI.addShortcutBoard(this, false));
    // source line 104, bytecode pc 1680
    this.sideMenu.setBaseTouchPriority(xs.Cfg.Scene.FightChapters.sideMenu.priority);
    // source line 106, bytecode pc 1682
    return true;
},
    onEliteExchangeBtnOnClick: function() {
    var levelLimit, curHardMapId;
    if (!this.m_bInHardChapter) {
        // source line 111, bytecode pc 47
        (levelLimit = xs.Tools.CfgData.getGlobalConf("EliteMap_Unlock_Level"));
        // source line 112, bytecode pc 109
        (curHardMapId = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerEliteMapStep());
        if (((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel() >= levelLimit) && (curHardMapId != "0"))) {
            // source line 116, bytecode pc 199
            (this.m_bInHardChapter = true);
            // source line 117, bytecode pc 239
            xs.Scene.Mgr.saveStatus("m_bInHardChapter", this.m_bInHardChapter);
            // source line 119, bytecode pc 256
            this.requireChapterInfoWithMapId(curHardMapId);
            // source line 121, bytecode pc 269
            this.selectExchangeBtn();
        } else {
            if ((curHardMapId === "0")) {
                // source line 124, bytecode pc 348
                xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_81"));
            } else {
                // source line 126, bytecode pc 450
                xs.Views.Mgr.showToast(((xs.Tools.String.createString("auto_name_82") + levelLimit) + xs.Tools.String.createString("auto_name_83")));
            }
        }
    }
    // source line 132, bytecode pc 492
    xs.Guide.GuideMgr.endStepBySequence([ "190103" ]);
},
    onNormalExchangeBtnOnClick: function() {
    if (this.m_bInHardChapter) {
        // source line 137, bytecode pc 18
        (this.m_bInHardChapter = false);
        // source line 138, bytecode pc 58
        xs.Scene.Mgr.saveStatus("m_bInHardChapter", this.m_bInHardChapter);
        // source line 139, bytecode pc 119
        this.requireChapterInfoWithMapId(xs.Profile.GameData.Mgr.getInstance().Map.getCurMapId());
        // source line 140, bytecode pc 132
        this.selectExchangeBtn();
    }
},
    selectExchangeBtn: function() {
    // source line 147, bytecode pc 24
    this.eliteExchangeBtn.setEnabled(this.m_bInHardChapter);
    // source line 148, bytecode pc 50
    this.normalExchangeBtn.setEnabled(!this.m_bInHardChapter);
    if (this.m_bInHardChapter) {
        // source line 150, bytecode pc 102
        this.eliteExchangeBtn.setButtonSize(cc.size(105, 69));
        // source line 151, bytecode pc 123
        this.eliteExchangeBtn.setFontSize(36);
        // source line 152, bytecode pc 143
        this.eliteExchangeBtn_ligth.setVisible(true);
        // source line 154, bytecode pc 184
        this.normalExchangeBtn.setButtonSize(cc.size(94, 60));
        // source line 155, bytecode pc 205
        this.normalExchangeBtn.setFontSize(30);
        // source line 156, bytecode pc 225
        this.normalExchangeBtn_ligth.setVisible(false);
    } else {
        // source line 159, bytecode pc 271
        this.eliteExchangeBtn.setButtonSize(cc.size(94, 60));
        // source line 160, bytecode pc 292
        this.eliteExchangeBtn.setFontSize(30);
        // source line 161, bytecode pc 312
        this.eliteExchangeBtn_ligth.setVisible(false);
        // source line 163, bytecode pc 353
        this.normalExchangeBtn.setButtonSize(cc.size(105, 69));
        // source line 164, bytecode pc 374
        this.normalExchangeBtn.setFontSize(36);
        // source line 165, bytecode pc 394
        this.normalExchangeBtn_ligth.setVisible(true);
    }
},
    onEnterTransitionDidFinish: function() {
    var _ret, _modelMap;
    // source line 178, bytecode pc 12
    this._super();
    // source line 179, bytecode pc 38
    this.schedule(this.timer, 0.1);
    // source line 184, bytecode pc 51
    this.showPageArrow();
    // source line 186, bytecode pc 56
    (_ret = false);
    if ((_ret === false)) {
        // source line 188, bytecode pc 107
        (_ret = xs.Guide.GuideMgr.checkAndGuide(xs.Constant_Guide_Treasure));
    }
    if ((_ret === false)) {
        // source line 191, bytecode pc 158
        (_ret = xs.Guide.GuideMgr.checkAndGuide(xs.Constant_Guide_Improve));
    }
    if ((_ret === false)) {
        // source line 194, bytecode pc 206
        xs.Guide.GuideMgr.checkAndGuide(xs.Constant_Guide_Surrender);
    }
    // source line 198, bytecode pc 302
    xs.Guide.GuideMgr.endStepBySequence([ "20201", "30002", "30101_before", "50102", "60002", "60101_before", "80102" ]);
    // source line 202, bytecode pc 338
    (_modelMap = xs.Scene.Mgr.loadStatusAndClear("PveFight_RandEvent"));
    if (_modelMap) {
        // source line 204, bytecode pc 383
        xs.Views.Mgr.showDialogByName("RandEvent", _modelMap);
    } else {
        if ((this.params && this.params.mapId)) {
            // source line 208, bytecode pc 441
            this.requireChapterInfoWithMapId(this.params.mapId);
        }
    }
},
    onExitTransitionDidStart: function() {
    // source line 215, bytecode pc 12
    this._super();
    // source line 217, bytecode pc 32
    this.unschedule(this.timer);
},
    onTouchesBegan: function(touch, e) {
    // source line 221, bytecode pc 7
    (this.moveStart = false);
    // source line 222, bytecode pc 15
    (this.touchBegan = true);
    // source line 223, bytecode pc 23
    (this.touchStartTime = 0);
    // source line 224, bytecode pc 48
    (this.moveStartPoint = this.convertTouchToNodeSpace(touch[0]));
    // source line 225, bytecode pc 50
    return true;
},
    onTouchesMoved: function(touch, e) {
    if ((this.moveStart === false)) {
        // source line 230, bytecode pc 37
        (this.moveStartPoint = this.convertTouchToNodeSpace(touch[0]));
        // source line 231, bytecode pc 45
        (this.moveStart = true);
    }
},
    onTouchesEnded: function(touch, e) {
    var endPoint;
    if (((this.touchStartTime < 10) && this.moveStart)) {
        // source line 237, bytecode pc 47
        (endPoint = this.convertTouchToNodeSpace(touch[0]));
        if (((endPoint.x - this.moveStartPoint.x) < -10)) {
            // source line 239, bytecode pc 88
            this.onLeftMove();
        } else {
            if (((endPoint.x - this.moveStartPoint.x) > 10)) {
                // source line 241, bytecode pc 134
                this.onRightMove();
            }
        }
        // source line 243, bytecode pc 142
        (this.touchBegan = false);
    }
},
    onLeftMove: function() {
    if ((xs.Views.Mgr.getLastViewName() === "DungeonDetail")) {
        // source line 250, bytecode pc 38
        return void 0;
    }
    // source line 252, bytecode pc 53
    this.requireChapterInfo(true);
},
    onRightMove: function() {
    if ((xs.Views.Mgr.getLastViewName() === "DungeonDetail")) {
        // source line 258, bytecode pc 38
        return void 0;
    }
    // source line 260, bytecode pc 53
    this.requireChapterInfo(false);
},
    requireChapterInfo: function(bNext) {
    var mapId;
    // source line 265, bytecode pc 4
    (mapId = 0);
    if (bNext) {
        // source line 267, bytecode pc 70
        (mapId = xs.Profile.GameData.Mgr.getInstance().Map.getNextChapterId(this.m_bInHardChapter));
    } else {
        // source line 269, bytecode pc 133
        (mapId = xs.Profile.GameData.Mgr.getInstance().Map.getPrevChapterId(this.m_bInHardChapter));
    }
    // source line 272, bytecode pc 160
    xs.log_xjf(("mapId:" + mapId));
    if (mapId) {
        // source line 275, bytecode pc 185
        this.requireChapterInfoWithMapId(mapId);
    }
},
    requireChapterInfoWithMapId: function(mapId) {
    var mapInfo;
    // source line 280, bytecode pc 26
    xs.log_xjf(("requireChapterInfoWithMapId mapId = " + mapId));
    // source line 281, bytecode pc 81
    (mapInfo = xs.Profile.GameData.Mgr.getInstance().Map.getMapObjByMapId(mapId));
    if (!mapInfo) {
        // source line 284, bytecode pc 98
        (this.m_bInHardChapter = true);
        // source line 285, bytecode pc 157
        xs.Profile.GameData.Mgr.getInstance().Map.setCurMapId(mapId, this.m_bInHardChapter);
        // source line 286, bytecode pc 208
        xs.Tools.Net.requireChapterInfo({ map_id: mapId }, this.chapterInfoResponse, this);
        // source line 287, bytecode pc 210
        return void 0;
    }
    if ((mapInfo.isCanShow() || mapInfo.isCanIn())) {
        // source line 292, bytecode pc 308
        xs.Profile.GameData.Mgr.getInstance().Map.setCurMapId(mapId, this.m_bInHardChapter);
        if (mapInfo.isBuffer()) {
            // source line 296, bytecode pc 350
            xs.log_xjf("已缓存");
            // source line 297, bytecode pc 363
            this.showDungeonInfo();
        } else {
            // source line 299, bytecode pc 391
            xs.log_xjf("未缓存");
            // source line 300, bytecode pc 442
            xs.Tools.Net.requireChapterInfo({ map_id: mapId }, this.chapterInfoResponse, this);
        }
    }
},
    chapterInfoResponse: function(jsonObj) {
    // source line 306, bytecode pc 56
    xs.Profile.GameData.Mgr.getInstance().Map.update(jsonObj.map_info);
    // source line 307, bytecode pc 69
    this.showDungeonInfo();
},
    showDungeonInfo: function() {
    if (this.dungeonView) {
        // source line 312, bytecode pc 28
        this.dungeonView.quitDungeon();
    }
    if (this.params) {
        // source line 316, bytecode pc 57
        (this.params.m_bInHardChapter = this.m_bInHardChapter);
    } else {
        // source line 318, bytecode pc 86
        (this.params = { m_bInHardChapter: this.m_bInHardChapter });
    }
    if ((this.params && (this.params.mapId && this.params.fightFail))) {
        if ((xs.Profile.GameData.Mgr.getInstance().Map.getCurMapId() === this.params.mapId)) {
            // source line 323, bytecode pc 265
            (this.params.dungeonId = xs.Profile.GameData.Mgr.getInstance().Map.getCurMap().getBossDungeonId());
            // source line 324, bytecode pc 278
            (this.params.fightFail = false);
        }
    }
    // source line 328, bytecode pc 318
    (this.dungeonView = xs.Views.DungeonView.create(this.params));
    // source line 329, bytecode pc 360
    this.dungeonView.setBaseTouchPriority((this.m_baseTouchPriority + this.cfg.dungeonView.priority));
    // source line 331, bytecode pc 380
    this.addChild(this.dungeonView);
    // source line 333, bytecode pc 393
    this.showPageArrow();
},
    showPageArrow: function() {
    if (!this.leftArrow) {
        // source line 339, bytecode pc 55
        (this._arm_left = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
        // source line 340, bytecode pc 98
        this._arm_left.playAniById("normal", { loop: false, speed: 1 });
        // source line 342, bytecode pc 138
        (this.leftArrow = xs.Views.Btn.createInvisibleWithChild(this._arm_left));
        // source line 343, bytecode pc 160
        this.leftArrow.setRotation(180);
        // source line 344, bytecode pc 202
        this.leftArrow.setTouchPriority((this.m_baseTouchPriority + this.cfg.leftArrow.priority));
        // source line 345, bytecode pc 240
        this.leftArrow.setOnClickCallBack(this.onRightMove.bind(this));
        // source line 347, bytecode pc 325
        xs.Utils.Node.attachNodes(this, this.leftArrow, { desc: "cl", offset: cc.p(30, 0), sc: true });
    }
    if (!this.rightArrow) {
        // source line 351, bytecode pc 381
        (this._arm_right = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
        // source line 352, bytecode pc 424
        this._arm_right.playAniById("normal", { loop: false, speed: 1 });
        // source line 354, bytecode pc 464
        (this.rightArrow = xs.Views.Btn.createInvisibleWithChild(this._arm_right));
        // source line 355, bytecode pc 486
        this.rightArrow.setGuideTag(4000);
        // source line 356, bytecode pc 528
        this.rightArrow.setTouchPriority((this.m_baseTouchPriority + this.cfg.rightArrow.priority));
        // source line 357, bytecode pc 566
        this.rightArrow.setOnClickCallBack(this.onLeftMove.bind(this));
        // source line 360, bytecode pc 673
        xs.Utils.Node.attachNodes(this, this.rightArrow, { desc: "cr", offset: cc.p((-xs.Views.MainMenuView.Width - 20), 0), sc: true });
    }
    if (xs.Profile.GameData.Mgr.getInstance().Map.nextIsNewest(this.m_bInHardChapter)) {
        // source line 364, bytecode pc 775
        this._arm_right.playAniById("guide", { loop: true, speed: 1 });
    } else {
        // source line 366, bytecode pc 823
        this._arm_right.playAniById("normal", { loop: false, speed: 1 });
    }
    if (xs.Profile.GameData.Mgr.getInstance().Map.getPrevChapterId(this.m_bInHardChapter)) {
        // source line 370, bytecode pc 902
        this.leftArrow.setVisible(true);
    } else {
        // source line 372, bytecode pc 927
        this.leftArrow.setVisible(false);
    }
    if (xs.Profile.GameData.Mgr.getInstance().Map.getNextChapterId(this.m_bInHardChapter)) {
        // source line 376, bytecode pc 1006
        this.rightArrow.setVisible(true);
    } else {
        // source line 378, bytecode pc 1031
        this.rightArrow.setVisible(false);
    }
},
    timer: function(dt) {
    if ((this.touchBegan === true)) {
        // source line 384, bytecode pc 38
        (this.touchStartTime = (+this.touchStartTime + 1));
    } else {
        // source line 386, bytecode pc 52
        (this.touchStartTime = 0);
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 391, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 392, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
},
    cfg: { dungeonView: { priority: 1 }, leftArrow: { priority: -20 }, rightArrow: { priority: -20 } }
}));
// source line 408, bytecode pc 323
(xs.Scene.ChaptersLayer.create = function(params) {
    var ret;
    // source line 409, bytecode pc 23
    (ret = new xs.Scene.ChaptersLayer());
    if ((ret && ret.init(params))) {
        // source line 411, bytecode pc 59
        return ret;
    }
    // source line 413, bytecode pc 61
    return null;
});
// source line 436, bytecode pc 397
(xs.Scene.FightChapters = cc.Scene.extend({
    ctor: function() {
    // source line 420, bytecode pc 12
    this._super();
    // source line 421, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(params) {
    var layer;
    if (!this._super()) {
        // source line 427, bytecode pc 19
        return false;
    }
    // source line 430, bytecode pc 53
    (layer = xs.Scene.ChaptersLayer.create(params));
    // source line 431, bytecode pc 70
    this.addChild(layer);
    // source line 433, bytecode pc 72
    return true;
},
    onEnter: function() {
    // source line 437, bytecode pc 12
    this._super();
}
}));
// source line 441, bytecode pc 423
(xs.Scene.FightChapters.create = function(params) {
    var ret;
    // source line 442, bytecode pc 23
    (ret = new xs.Scene.FightChapters());
    if ((ret && ret.init(params))) {
        // source line 444, bytecode pc 59
        return ret;
    }
    // source line 446, bytecode pc 61
    return null;
});
// source line 455, bytecode pc 517
xs.Scene.Mgr.registerScene("FightChapters", { "class": xs.Scene.FightChapters, area: [ "DungeonView" ], type: xs.Constant_SceneType_Chapters });
