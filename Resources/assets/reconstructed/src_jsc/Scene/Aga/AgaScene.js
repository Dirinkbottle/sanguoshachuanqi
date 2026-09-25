// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Aga/AgaScene.js:1
// source line 299, bytecode pc 865
(xs.Scene.AgaCardView = xs.Views.CardNavigateView.extend({
    name: "AgaCardView",
    ctor: function() {
    // source line 17, bytecode pc 12
    this._super();
    // source line 18, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    var visibleSize, newPos;
    // source line 22, bytecode pc 60
    this._super(xs.Profile.GameData.Mgr.getInstance().Generals.getAll());
    // source line 24, bytecode pc 96
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 26, bytecode pc 109
    (this.allData = this.cardData);
    // source line 28, bytecode pc 148
    (this.noGeneralTip = xs.Factorys.Label.createByStyleId("LS_danyao"));
    // source line 29, bytecode pc 199
    this.noGeneralTip.setString(xs.Tools.String.createString("reincarnation"));
    // source line 30, bytecode pc 258
    xs.Utils.Node.attachNodes(this, this.noGeneralTip, { desc: "c", sc: true });
    // source line 31, bytecode pc 278
    this.noGeneralTip.setVisible(false);
    if ((this.cardData.length === 0)) {
        // source line 33, bytecode pc 316
        this.noGeneralTip.setVisible(true);
        // source line 34, bytecode pc 339
        xs.log_xjf("设置魂魄视图 setTouchEnabled false");
        // source line 35, bytecode pc 359
        this.bfCardView.setTouchEnabled(false);
        // source line 36, bytecode pc 361
        return true;
    }
    // source line 40, bytecode pc 405
    (this.sortController = xs.Views.SortController.create(xs.Constant_FilterStyle_General));
    // source line 41, bytecode pc 443
    this.sortController.setSortChgCallBack(this.onFilterChange.bind(this));
    // source line 42, bytecode pc 478
    this.sortController.setBaseTouchPriority(this.cfg.sortController.priority);
    // source line 43, bytecode pc 518
    this.sortController.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_MoveOut);
    // source line 45, bytecode pc 649
    xs.Utils.Node.attachNodes(this, this.sortController, { desc: "rt", offset: cc.p((0 - ((visibleSize.width / 2) - 100)), -66), sc: true }, xs.Cfg.Scene.AgaScene.sortView.base);
    // source line 48, bytecode pc 700
    (this.infoRegion = xs.ccb_reader.load(xs.Cfg.CCBI.AgaScene_InfoBar_General, this));
    // source line 49, bytecode pc 743
    this.infoRegion.setContentSize(cc.size(459, 266));
    // source line 50, bytecode pc 782
    this.infoRegion.setAnchorPoint(cc.p(0, 0));
    // source line 52, bytecode pc 886
    (newPos = cc.p(((((((visibleSize.width - this.bigCellWid) - xs.Views.MainMenuView.Width) - 20) / 2) + (this.bigCellWid + 20)) - 230), ((250 + (((visibleSize.height - 250) - 30) / 2)) - 133)));
    // source line 53, bytecode pc 953
    xs.Utils.Node.attachNodes(this, this.infoRegion, { desc: "lb", offset: newPos, sc: false });
    // source line 55, bytecode pc 961
    (this.m_nameLabel = null);
    // source line 56, bytecode pc 969
    (this.m_generalLevel = null);
    // source line 57, bytecode pc 977
    (this.m_fightPower = null);
    // source line 58, bytecode pc 985
    (this.m_atk = null);
    // source line 59, bytecode pc 993
    (this.m_def = null);
    // source line 60, bytecode pc 1001
    (this.m_hp = null);
    // source line 61, bytecode pc 1009
    (this.m_int = null);
    // source line 63, bytecode pc 1057
    xs.Utils.UI.replaceCcbByCfg(this.infoRegion, this.cfg.ccbCfg, this);
    // source line 64, bytecode pc 1086
    this.m_fightPower.setAnchorPoint(xs.ap_lc);
    // source line 66, bytecode pc 1108
    this.setCardInfo(this.cardData[0]);
    // source line 68, bytecode pc 1135
    this.showCardNum(1, this.cardData.length);
    // source line 71, bytecode pc 1143
    (this.focusCardIdx = 0);
    // source line 73, bytecode pc 1151
    (this.oldCardGrade = null);
    // source line 75, bytecode pc 1173
    this.developBtn.setGuideTag(4008);
    // source line 77, bytecode pc 1175
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 81, bytecode pc 12
    this._super();
    // source line 82, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.refreshData, xs.Constant_Notify_ModelChange_General);
    // source line 83, bytecode pc 77
    this.bfCardView.reloadData();
    // source line 85, bytecode pc 119
    xs.Guide.GuideMgr.endStepBySequence([ "140104" ]);
},
    onExitTransitionDidStart: function() {
    // source line 89, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_General);
    // source line 90, bytecode pc 52
    this._super();
},
    refreshData: function(cardData) {
    var filter, params;
    if (cardData) {
        // source line 95, bytecode pc 17
        (this.cardData = cardData);
    } else {
        // source line 97, bytecode pc 43
        (filter = this.sortController.getCurFilter());
        if (filter) {
            // source line 104, bytecode pc 109
            (params = {
    data: this.allData,
    result: filter.filterResult,
    filterConditions: filter.filterType,
    sortConditions: this.filterConditions
});
            // source line 106, bytecode pc 146
            (this.cardData = xs.Tools.Filter.filterData(params));
        } else {
            // source line 108, bytecode pc 164
            (this.cardData = this.allData);
        }
    }
    // source line 111, bytecode pc 182
    this.bfCardView.reloadData();
    // source line 112, bytecode pc 204
    this.setCardInfo(this.cardData[0]);
    if ((this.cardData.length === 0)) {
        // source line 116, bytecode pc 242
        this.noGeneralTip.setVisible(true);
        // source line 117, bytecode pc 262
        this.infoRegion.setVisible(false);
        // source line 118, bytecode pc 264
        return true;
    } else {
        // source line 120, bytecode pc 289
        this.noGeneralTip.setVisible(false);
        // source line 121, bytecode pc 309
        this.infoRegion.setVisible(true);
    }
    if ((this.focusCardIdx <= (this.cardData.length - 1))) {
        // source line 126, bytecode pc 354
        this.selCurFirstCard(this.focusCardIdx);
    } else {
        // source line 128, bytecode pc 386
        this.selCurFirstCard((this.cardData.length - 1));
    }
    // source line 132, bytecode pc 420
    this.showCardNum((this.focusCardIdx + 1), this.cardData.length);
},
    showCardNum: function(haveCardNum, totalCradNum) {
    var numStr;
    if ((this.cardNumLabel === undefined)) {
        // source line 138, bytecode pc 55
        (this.cardNumLabel = xs.Factorys.Label.createByStyleId("LS_fightUI1"));
        // source line 139, bytecode pc 94
        this.cardNumLabel.setAnchorPoint(cc.p(0, 0));
        // source line 140, bytecode pc 115
        this.cardNumLabel.setZOrder(-1);
        // source line 141, bytecode pc 201
        xs.Utils.Node.attachNodes(this, this.cardNumLabel, { desc: "lb", offset: cc.p(20, 50), sc: true });
    }
    // source line 144, bytecode pc 251
    (numStr = (((xs.Tools.String.createString("card") + haveCardNum) + "/") + totalCradNum));
    // source line 145, bytecode pc 273
    this.cardNumLabel.setString(numStr);
},
    setCardInfo: function(infoData) {
    var toBattle;
    // source line 151, bytecode pc 22
    xs.log_ck("set Card infoData");
    if ((infoData == null)) {
        // source line 154, bytecode pc 55
        xs.log_ck("数据空了");
        // source line 155, bytecode pc 57
        return void 0;
    }
    if (((infoData === undefined) || (this.infoRegion === undefined))) {
        // source line 158, bytecode pc 91
        return void 0;
    }
    // source line 160, bytecode pc 101
    (this.selectGeneralInfo = infoData);
    if ((!this.oldCardGrade || (this.oldCardGrade !== infoData.getGrade()))) {
        // source line 163, bytecode pc 206
        xs.Utils.replaceGradeIcon(this.infoRegion, this.cfg.infoView.gradeIcon.tag, infoData.getGrade());
        // source line 164, bytecode pc 227
        (this.oldCardGrade = infoData.getGrade());
    }
    if (this.m_nameLabel) {
        // source line 169, bytecode pc 271
        this.m_nameLabel.setString(infoData.getNameString());
    }
    // source line 173, bytecode pc 314
    (toBattle = this.infoRegion.getChildByTag(this.cfg.infoView.toBattle.tag));
    if (!this.toBattleLabel) {
        // source line 176, bytecode pc 418
        (this.toBattleLabel = xs.Utils.replaceLabelWithString(toBattle, 2, [ "LS_yishangzhen" ], [ xs.Tools.String.createString("inTeam") ]));
    }
    // source line 179, bytecode pc 496
    toBattle.setVisible(xs.Profile.GameData.Mgr.getInstance().Team.isInTeam(infoData.getPkId()));
    if (this.m_generalLevel) {
        // source line 183, bytecode pc 546
        this.m_generalLevel.setString((infoData.getLevel() + ""));
    }
    if (this.m_fightPower) {
        // source line 188, bytecode pc 607
        this.m_fightPower.setString((infoData.getAttrNaked(xs.Constant_AttrType_FightPoint) + ""));
    }
    if (this.m_breachLevel) {
        // source line 193, bytecode pc 651
        this.m_breachLevel.setString(infoData.getBreachLevel());
    }
    if (this.m_hp) {
        // source line 198, bytecode pc 712
        this.m_hp.setString((infoData.getAttrNaked(xs.Constant_AttrType_Hp) + ""));
    }
    if (this.m_atk) {
        // source line 202, bytecode pc 773
        this.m_atk.setString((infoData.getAttrNaked(xs.Constant_AttrType_Atk) + ""));
    }
    if (this.m_def) {
        // source line 206, bytecode pc 834
        this.m_def.setString((infoData.getAttrNaked(xs.Constant_AttrType_Def) + ""));
    }
    if (this.m_int) {
        // source line 210, bytecode pc 895
        this.m_int.setString((infoData.getAttrNaked(xs.Constant_AttrType_Int) + ""));
    }
    if (this.btn_inherit) {
        // source line 217, bytecode pc 943
        this.btn_inherit.setOnClickCallBack(function() {
    // source line 216, bytecode pc 39
    xs.Scene.Mgr.changeSceneByName("WorshipScene", this.selectGeneralInfo);
}.bind(this));
        // source line 218, bytecode pc 983
        this.btn_inherit.setTouchPriority(this.cfg.infoView.leftBtn.priority);
    }
    if (this.developBtn) {
        // source line 225, bytecode pc 1031
        this.developBtn.setOnClickCallBack(function() {
    // source line 224, bytecode pc 39
    xs.Scene.Mgr.changeSceneByName("DevelopScene", this.selectGeneralInfo);
}.bind(this));
        // source line 226, bytecode pc 1071
        this.developBtn.setTouchPriority(this.cfg.infoView.rightBtn.priority);
    }
    if (this.btn_submit) {
        // source line 234, bytecode pc 1119
        this.btn_submit.setOnClickCallBack(function() {
    var dlg;
    // source line 233, bytecode pc 70
    (dlg = xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: this.cardData[this.focusCardIdx], type: "showAchieveView" }));
}.bind(this));
        // source line 235, bytecode pc 1159
        this.btn_submit.setTouchPriority(this.cfg.infoView.rightBtn.priority);
    }
},
    tableCellTouched: function(table, cell) {
    if ((cell.getIdx() === this.focusCardIdx)) {
        // source line 244, bytecode pc 50
        this.cardData[this.focusCardIdx].playAudioEffect();
        // source line 246, bytecode pc 118
        xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: this.cardData[this.focusCardIdx], type: "achieve_have" });
    } else {
        // source line 248, bytecode pc 151
        this.selCurFirstCard(cell.getIdx());
    }
},
    selCurFirstCard: function(idx) {
    // source line 253, bytecode pc 21
    this.bfCardView.setCardViewSelIdx(idx);
},
    onFirstIdx: function(idx) {
    // source line 257, bytecode pc 9
    (this.focusCardIdx = idx);
    // source line 258, bytecode pc 40
    this.showCardNum((idx + 1), this.cardData.length);
    // source line 259, bytecode pc 64
    this.setCardInfo(this.cardData[idx]);
},
    onFilterChange: function(filterType, filterResult) {
    var params;
    // source line 269, bytecode pc 51
    (params = {
    data: this.allData,
    result: filterResult,
    filterConditions: filterType,
    sortConditions: xs.Constant_SortType_General_Default
});
    // source line 272, bytecode pc 95
    this.refreshData(xs.Tools.Filter.filterData(params));
},
    cfg: {
        tableView: { priority: -1 },
        sortController: { priority: -20 },
        ccbCfg: [
            { tag: 11, type: "ls", name: "m_nameLabel", id: "LS_wujiangName1" },
            { tag: 14, type: "ls", name: "m_generalLevel", id: "LS_Lv" },
            { tag: 15, type: "ls", name: "m_fightPower", id: "LS_mainUI4", offset: cc.p(-20, 0) },
            { tag: 22, type: "ls", name: "m_breachLevel", id: "LS_Lv" },
            { tag: 16, type: "ls", name: "m_hp", id: "LS_mainUI4" },
            { tag: 17, type: "ls", name: "m_atk", id: "LS_mainUI4" },
            { tag: 18, type: "ls", name: "m_def", id: "LS_mainUI4" },
            { tag: 19, type: "ls", name: "m_int", id: "LS_mainUI4" },
            { tag: 20, type: "btn", name: "btn_inherit", id: "Btn_Inherit" },
            { tag: 21, type: "btn", name: "developBtn", id: "Btn_Develop" },
            { tag: 22, type: "btn", name: "btn_submit", id: "Btn_Submit" }
        ],
        infoView: {
            gradeIcon: { tag: 10 },
            toBattle: { tag: 12 },
            leftBtn: { tag: 20, priority: -20 },
            rightBtn: { tag: 21, priority: -20 }
        }
    }
}));
// source line 305, bytecode pc 891
(xs.Scene.AgaCardView.create = function() {
    var ret;
    // source line 306, bytecode pc 23
    (ret = new xs.Scene.AgaCardView());
    if ((ret && ret.init())) {
        // source line 308, bytecode pc 55
        return ret;
    }
    // source line 310, bytecode pc 57
    return null;
});
// source line 674, bytecode pc 1461
(xs.Scene.GhostCardView = xs.Views.CardNavigateView.extend({
    name: "GhostCardView",
    ctor: function() {
    // source line 318, bytecode pc 12
    this._super();
    // source line 319, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(params) {
    var visibleSize, newPos;
    // source line 324, bytecode pc 9
    (this.m_viewType = params);
    // source line 329, bytecode pc 218
    this._super(((this.m_viewType === xs.Constant_AgaScene_Breach) ? xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getAll_breach() : ((this.m_viewType === xs.Constant_AgaScene_Reincarnation) ? xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getAll_reincarnate() : xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getAll())));
    if ((this.m_viewType === xs.Constant_AgaScene_Breach)) {
        // source line 334, bytecode pc 257
        (this.filterSortConditions = xs.Constant_SortType_GeneralSoul_Breach_Default);
    } else {
        // source line 337, bytecode pc 279
        (this.filterSortConditions = xs.Constant_SortType_GeneralSoul_Default);
    }
    // source line 340, bytecode pc 292
    (this.allData = this.cardData);
    // source line 343, bytecode pc 328
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 345, bytecode pc 345
    this.setContentSize(visibleSize);
    // source line 347, bytecode pc 384
    (this.noSoulTip = xs.Factorys.Label.createByStyleId("LS_danyao"));
    // source line 348, bytecode pc 435
    this.noSoulTip.setString(xs.Tools.String.createString("noSoulTip"));
    // source line 349, bytecode pc 494
    xs.Utils.Node.attachNodes(this, this.noSoulTip, { desc: "c", sc: true });
    // source line 350, bytecode pc 514
    this.noSoulTip.setVisible(false);
    if ((this.cardData.length === 0)) {
        // source line 352, bytecode pc 552
        this.noSoulTip.setVisible(true);
        // source line 353, bytecode pc 575
        xs.log_xjf("设置魂魄视图 setTouchEnabled false");
        // source line 354, bytecode pc 595
        this.bfCardView.setTouchEnabled(false);
        // source line 355, bytecode pc 597
        return true;
    }
    // source line 359, bytecode pc 641
    (this.sortController = xs.Views.SortController.create(xs.Constant_FilterStyle_General));
    // source line 360, bytecode pc 679
    this.sortController.setSortChgCallBack(this.onFilterChange.bind(this));
    // source line 361, bytecode pc 714
    this.sortController.setBaseTouchPriority(this.cfg.sortController.priority);
    // source line 362, bytecode pc 754
    this.sortController.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_MoveOut);
    // source line 364, bytecode pc 885
    xs.Utils.Node.attachNodes(this, this.sortController, { desc: "rt", offset: cc.p((0 - ((visibleSize.width / 2) - 100)), -66), sc: true }, xs.Cfg.Scene.AgaScene.sortView.base);
    // source line 367, bytecode pc 936
    (this.infoRegion = xs.ccb_reader.load(xs.Cfg.CCBI.AgaScene_InfoBar_Soul, this));
    // source line 368, bytecode pc 979
    this.infoRegion.setContentSize(cc.size(459, 209));
    // source line 369, bytecode pc 1026
    this.infoRegion.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 371, bytecode pc 1122
    (newPos = cc.p((((((visibleSize.width - this.bigCellWid) - xs.Views.MainMenuView.Width) - 20) / 2) + (this.bigCellWid + 20)), (250 + (((visibleSize.height - 250) - 85) / 2))));
    // source line 373, bytecode pc 1189
    xs.Utils.Node.attachNodes(this, this.infoRegion, { desc: "lb", offset: newPos, sc: false });
    // source line 375, bytecode pc 1197
    (this.m_nameLabel = null);
    // source line 376, bytecode pc 1205
    (this.m_soulNum = null);
    // source line 377, bytecode pc 1213
    (this.m_breachBtn = null);
    // source line 378, bytecode pc 1221
    (this.m_reincarnationBtn = null);
    // source line 379, bytecode pc 1229
    (this.m_heroStar = null);
    // source line 380, bytecode pc 1237
    (this.m_heroStarIc = null);
    // source line 381, bytecode pc 1285
    xs.Utils.UI.replaceCcbByCfg(this.infoRegion, this.cfg.ccbCfg, this);
    // source line 383, bytecode pc 1307
    this.setCardInfo(this.cardData[0]);
    // source line 386, bytecode pc 1334
    this.showCardNum(1, this.cardData.length);
    // source line 389, bytecode pc 1342
    (this.focusCardIdx = 0);
    // source line 392, bytecode pc 1386
    (this.m_instructionBtn = xs.Tools.Views.Btn.createInstruction("breach_Instruction"));
    // source line 393, bytecode pc 1474
    xs.Utils.Node.attachNodes(this, this.m_instructionBtn, { desc: "ct", offset: cc.p(6, -100), sc: true }, null);
    // source line 394, bytecode pc 1509
    this.m_instructionBtn.setTouchPriority(this.cfg.instructionBtn.priority);
    // source line 396, bytecode pc 1522
    this.refreshData();
    // source line 397, bytecode pc 1524
    return true;
},
    onEnter: function() {
    // source line 401, bytecode pc 12
    this._super();
},
    onEnterTransitionDidFinish: function() {
    // source line 405, bytecode pc 12
    this._super();
    // source line 406, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.refreshData, xs.Constant_Notify_ModelChange_GeneralSoul);
    // source line 407, bytecode pc 77
    this.bfCardView.reloadData();
},
    onExit: function() {
    // source line 411, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_GeneralSoul);
},
    refreshData: function(cardData) {
    if (xs.Utils.isEmpty(this.sortController)) {
        // source line 416, bytecode pc 34
        return void 0;
    }
    if (cardData) {
        // source line 419, bytecode pc 52
        (this.cardData = cardData);
    } else {
        // source line 435, bytecode pc 70
        (this.cardData = this.allData);
    }
    // source line 437, bytecode pc 88
    this.bfCardView.reloadData();
    // source line 438, bytecode pc 110
    this.setCardInfo(this.cardData[0]);
    if ((this.cardData.length === 0)) {
        // source line 442, bytecode pc 148
        this.noSoulTip.setVisible(true);
        // source line 443, bytecode pc 168
        this.infoRegion.setVisible(false);
        // source line 444, bytecode pc 170
        return true;
    } else {
        // source line 446, bytecode pc 195
        this.noSoulTip.setVisible(false);
        // source line 447, bytecode pc 215
        this.infoRegion.setVisible(true);
    }
    if ((this.focusCardIdx <= (this.cardData.length - 1))) {
        // source line 452, bytecode pc 270
        xs.log(("this.focusCardIdx = " + this.focusCardIdx));
        // source line 453, bytecode pc 290
        this.selCurFirstCard(this.focusCardIdx);
    } else {
        // source line 455, bytecode pc 332
        xs.log((("this.cardData.length - 1 = " + this.cardData.length) - 1));
        // source line 456, bytecode pc 359
        this.selCurFirstCard((this.cardData.length - 1));
    }
    // source line 460, bytecode pc 393
    this.showCardNum((this.focusCardIdx + 1), this.cardData.length);
},
    showCardNum: function(haveCardNum, totalCradNum) {
    var numStr;
    if (!this.cardNumLabel) {
        // source line 465, bytecode pc 50
        (this.cardNumLabel = xs.Factorys.Label.createByStyleId("LS_fightUI1"));
        // source line 466, bytecode pc 89
        this.cardNumLabel.setAnchorPoint(cc.p(0, 0));
        // source line 467, bytecode pc 110
        this.cardNumLabel.setZOrder(-1);
        // source line 468, bytecode pc 196
        xs.Utils.Node.attachNodes(this, this.cardNumLabel, { desc: "lb", offset: cc.p(20, 50), sc: true });
    }
    // source line 471, bytecode pc 246
    (numStr = (((xs.Tools.String.createString("card") + haveCardNum) + "/") + totalCradNum));
    // source line 472, bytecode pc 268
    this.cardNumLabel.setString(numStr);
},
    setCardInfo: function(infoData) {
    var isHaveThisGenaral, isBreachToMax;
    if (infoData) {
        // source line 478, bytecode pc 17
        (this.curData = infoData);
    }
    if (((this.curData === undefined) || (this.infoRegion === undefined))) {
        // source line 482, bytecode pc 54
        return void 0;
    }
    if ((!this.oldCardGrade || (this.oldCardGrade !== this.curData.getGrade()))) {
        // source line 486, bytecode pc 165
        xs.Utils.replaceGradeIcon(this.infoRegion, this.cfg.infoView.gradeIcon.tag, this.curData.getGrade());
        // source line 487, bytecode pc 186
        (this.oldCardGrade = infoData.getGrade());
    }
    if (this.m_nameLabel) {
        // source line 492, bytecode pc 233
        this.m_nameLabel.setString(this.curData.getNameString());
    }
    if ((this.m_viewType === xs.Constant_AgaScene_Breach)) {
        if (this.m_heroStar) {
            // source line 499, bytecode pc 350
            this.m_heroStar.setString(xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getReferenceGeneral(this.curData).getBreachLevel());
        }
        if (this.m_heroStarIc) {
            // source line 503, bytecode pc 381
            this.m_heroStarIc.setVisible(true);
        }
    } else {
        if (this.m_heroStar) {
            // source line 510, bytecode pc 421
            this.m_heroStar.setString("");
        }
        if (this.m_heroStarIc) {
            // source line 514, bytecode pc 452
            this.m_heroStarIc.setVisible(false);
        }
    }
    // source line 519, bytecode pc 492
    this.m_breachBtn.setTouchPriority(this.cfg.infoView.btn.priority);
    // source line 520, bytecode pc 532
    this.m_reincarnationBtn.setTouchPriority(this.cfg.infoView.btn.priority);
    // source line 521, bytecode pc 552
    this.m_breachBtn.setEventOnDisable(true);
    // source line 522, bytecode pc 572
    this.m_reincarnationBtn.setEventOnDisable(true);
    if ((this.m_viewType === xs.Constant_AgaScene_Reincarnation)) {
        // source line 524, bytecode pc 614
        this.m_breachBtn.setVisible(false);
        // source line 525, bytecode pc 634
        this.m_reincarnationBtn.setVisible(true);
    } else {
        if ((this.m_viewType === xs.Constant_AgaScene_Breach)) {
            // source line 527, bytecode pc 681
            this.m_breachBtn.setVisible(true);
            // source line 528, bytecode pc 701
            this.m_reincarnationBtn.setVisible(false);
        }
    }
    // source line 532, bytecode pc 761
    (isHaveThisGenaral = (xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getReferenceGeneral(this.curData) !== null));
    if (isHaveThisGenaral) {
        // source line 537, bytecode pc 877
        this.m_soulNum.setString(((this.curData.getNum() + "/") + xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getReferenceGeneral(this.curData).getNextBreachNeedSoulNum()));
        // source line 538, bytecode pc 897
        this.m_reincarnationBtn.setEnabled(false);
        // source line 539, bytecode pc 972
        (isBreachToMax = xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getReferenceGeneral(this.curData).isBreachToMax());
        // source line 540, bytecode pc 1008
        this.m_breachBtn.setEnabled(this.curData.checkSoulNumEnough());
        if ((isBreachToMax === true)) {
            // source line 542, bytecode pc 1044
            this.m_breachBtn.setEnabled(false);
        }
        // source line 567, bytecode pc 1081
        this.m_breachBtn.setOnClickCallBack(function() {
    var generalModel, general_pkid;
    if (this.curData.checkSoulNumEnough()) {
        if ((isBreachToMax === false)) {
            // source line 550, bytecode pc 101
            (generalModel = xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getReferenceGeneral(this.curData));
            // source line 551, bytecode pc 125
            (general_pkid = generalModel.getPkId());
            // source line 559, bytecode pc 175
            xs.Tools.Net.requestInsight({ user_general_id: general_pkid }, function(jsonObj) {
    var breachModel;
    // source line 554, bytecode pc 43
    (breachModel = xs.Models.BreachModel.create(jsonObj, generalModel));
    // source line 555, bytecode pc 80
    xs.Views.Mgr.showDialogByName("BreachResult", breachModel);
    // source line 557, bytecode pc 128
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
}, this);
        } else {
            // source line 561, bytecode pc 240
            xs.Views.Mgr.showToast(xs.Tools.String.createString("breachLimitTip"));
        }
    } else {
        // source line 565, bytecode pc 305
        xs.Views.Mgr.showToast(xs.Tools.String.createString("soulNotEnough"));
    }
}.bind(this));
        // source line 569, bytecode pc 1105
        this.m_reincarnationBtn.setOnClickCallBack(function() {
    // source line 570, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("general_haveGeneral"));
});
    } else {
        // source line 575, bytecode pc 1170
        this.m_soulNum.setString(((this.curData.getNum() + "/") + this.curData.getReincarnateNum()));
        // source line 577, bytecode pc 1224
        this.m_reincarnationBtn.setEnabled((this.curData.getNum() >= this.curData.getReincarnateNum()));
        // source line 578, bytecode pc 1244
        this.m_breachBtn.setEnabled(false);
        // source line 599, bytecode pc 1281
        this.m_reincarnationBtn.setOnClickCallBack(function() {
    var generalId;
    if ((this.curData.getNum() >= this.curData.getReincarnateNum())) {
        // source line 583, bytecode pc 66
        (generalId = this.curData.getPkId());
        // source line 595, bytecode pc 128
        xs.Tools.Net.requestReincarnate({ general_id: generalId, ignoreRandEvent: true }, function(jsonObj, _modelMap) {
    var generalModel;
    // source line 591, bytecode pc 36
    xs.Scene.Mgr.saveStatus("GeneralCompound_RandEvent", _modelMap);
    // source line 593, bytecode pc 101
    (generalModel = xs.Profile.GameData.Mgr.getInstance().Generals.getById(generalId, false)[0]);
    // source line 594, bytecode pc 134
    this.getParent().m_listener.reincarnation(generalModel);
}, this);
    } else {
        // source line 597, bytecode pc 166
        xs.Views.Mgr.showToastByStringId("1070310005");
    }
}.bind(this));
        // source line 601, bytecode pc 1305
        this.m_breachBtn.setOnClickCallBack(function() {
    // source line 602, bytecode pc 32
    xs.Views.Mgr.showToastByStringKey("cannotBreach");
});
    }
},
    tableCellTouched: function(table, cell) {
    var refGeneral, heroId;
    if ((cell.getIdx() === this.focusCardIdx)) {
        // source line 609, bytecode pc 90
        (refGeneral = xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getReferenceGeneral(this.cardData[this.focusCardIdx]));
        if (!refGeneral) {
            // source line 611, bytecode pc 127
            (heroId = this.cardData[this.focusCardIdx].getId());
            // source line 614, bytecode pc 161
            (refGeneral = xs.Models.General.createWithBase(heroId));
            // source line 615, bytecode pc 219
            xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: refGeneral, type: "achieve_nothave" });
        } else {
            // source line 617, bytecode pc 282
            xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: refGeneral, type: "achieve_have" });
        }
    } else {
        // source line 621, bytecode pc 315
        this.selCurFirstCard(cell.getIdx());
    }
},
    selCurFirstCard: function(idx) {
    // source line 626, bytecode pc 21
    this.bfCardView.setCardViewSelIdx(idx);
},
    onFirstIdx: function(idx) {
    // source line 630, bytecode pc 30
    this.showCardNum((idx + 1), this.cardData.length);
    // source line 631, bytecode pc 54
    this.setCardInfo(this.cardData[idx]);
    // source line 633, bytecode pc 64
    (this.focusCardIdx = idx);
},
    onFilterChange: function(filterType, filterResult) {
    var params;
    if ((filterResult == xs.Constant_FilterResult_All)) {
        if ((this.m_viewType === xs.Constant_AgaScene_Breach)) {
            // source line 641, bytecode pc 60
            this.refreshData(this.allData);
            // source line 642, bytecode pc 62
            return void 0;
        }
    }
    // source line 650, bytecode pc 110
    (params = {
    data: this.allData,
    result: filterResult,
    filterConditions: filterType,
    sortConditions: this.filterSortConditions
});
    // source line 653, bytecode pc 154
    this.refreshData(xs.Tools.Filter.filterData(params));
},
    cfg: {
        tableView: { priority: -1 },
        sortController: { priority: -20 },
        instructionBtn: { priority: -20 },
        infoView: { gradeIcon: { tag: 10 }, btn: { tag: 13, priority: -10 } },
        ccbCfg: [
            { tag: 11, type: "ls", name: "m_nameLabel", id: "LS_wujiangName1" },
            { tag: 12, type: "ls", name: "m_soulNum", id: "LS_mainUI4" },
            { tag: 13, type: "btn", name: "m_breachBtn", id: "Btn_Breach" },
            { tag: 14, type: "btn", name: "m_reincarnationBtn", id: "Btn_Reincarnate" },
            { tag: 20, name: "m_heroStarIc" },
            { tag: 21, type: "ls", name: "m_heroStar", id: "LS_Lv" }
        ]
    }
}));
// source line 679, bytecode pc 1487
(xs.Scene.GhostCardView.create = function(params) {
    var ret;
    // source line 680, bytecode pc 23
    (ret = new xs.Scene.GhostCardView());
    if ((ret && ret.init(params))) {
        // source line 682, bytecode pc 59
        return ret;
    }
    // source line 684, bytecode pc 61
    return null;
});
// source line 1184, bytecode pc 2200
(xs.Scene.AwakeCardView = xs.Views.CardNavigateView.extend({
    name: "AwakeCardView",
    ctor: function() {
    // source line 694, bytecode pc 12
    this._super();
    // source line 695, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    var visibleSize, newPos;
    // source line 700, bytecode pc 73
    this._super(xs.Profile.GameData.Mgr.getInstance().EvolutionInfos.getAllGeneralAwake(), { markShowFengyin: true });
    // source line 702, bytecode pc 109
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 704, bytecode pc 122
    (this.allData = this.cardData);
    // source line 707, bytecode pc 161
    (this.noGeneralTip = xs.Factorys.Label.createByStyleId("LS_danyao"));
    // source line 708, bytecode pc 212
    this.noGeneralTip.setString(xs.Tools.String.createString("unable_awake_hero_card"));
    // source line 709, bytecode pc 271
    xs.Utils.Node.attachNodes(this, this.noGeneralTip, { desc: "c", sc: true });
    // source line 710, bytecode pc 291
    this.noGeneralTip.setVisible(false);
    if ((this.cardData.length === 0)) {
        // source line 713, bytecode pc 329
        this.noGeneralTip.setVisible(true);
        // source line 714, bytecode pc 352
        xs.log_xjf("设置魂魄视图 setTouchEnabled false");
        // source line 715, bytecode pc 372
        this.bfCardView.setTouchEnabled(false);
        // source line 716, bytecode pc 374
        return true;
    }
    // source line 720, bytecode pc 418
    (this.sortController = xs.Views.SortController.create(xs.Constant_FilterStyle_General));
    // source line 721, bytecode pc 456
    this.sortController.setSortChgCallBack(this.onFilterChange.bind(this));
    // source line 722, bytecode pc 491
    this.sortController.setBaseTouchPriority(this.cfg.sortController.priority);
    // source line 723, bytecode pc 531
    this.sortController.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_MoveOut);
    // source line 725, bytecode pc 662
    xs.Utils.Node.attachNodes(this, this.sortController, { desc: "rt", offset: cc.p((0 - ((visibleSize.width / 2) - 100)), -66), sc: true }, xs.Cfg.Scene.AgaScene.sortView.base);
    // source line 728, bytecode pc 713
    (this.infoRegion = xs.ccb_reader.load(xs.Cfg.CCBI.AgaScene_InfoBar_Evolution, this));
    // source line 729, bytecode pc 756
    this.infoRegion.setContentSize(cc.size(459, 266));
    // source line 730, bytecode pc 795
    this.infoRegion.setAnchorPoint(cc.p(0, 0));
    // source line 732, bytecode pc 899
    (newPos = cc.p(((((((visibleSize.width - this.bigCellWid) - xs.Views.MainMenuView.Width) - 20) / 2) + (this.bigCellWid + 20)) - 230), ((250 + (((visibleSize.height - 250) - 30) / 2)) - 133)));
    // source line 733, bytecode pc 966
    xs.Utils.Node.attachNodes(this, this.infoRegion, { desc: "lb", offset: newPos, sc: false });
    // source line 735, bytecode pc 974
    (this.m_nameLabel = null);
    // source line 737, bytecode pc 1022
    xs.Utils.UI.replaceCcbByCfg(this.infoRegion, this.cfg.ccbCfg, this);
    // source line 739, bytecode pc 1045
    xs.log_ck("setCardInfo 2");
    // source line 740, bytecode pc 1067
    this.setCardInfo(this.cardData[0]);
    // source line 741, bytecode pc 1090
    xs.log_ck("setCardInfo 2 end");
    // source line 743, bytecode pc 1117
    this.showCardNum(1, this.cardData.length);
    // source line 746, bytecode pc 1125
    (this.focusCardIdx = 0);
    // source line 748, bytecode pc 1133
    (this.oldCardGrade = null);
    // source line 750, bytecode pc 1177
    (this.m_instructionBtn = xs.Tools.Views.Btn.createInstruction("txt_evolution_instruction"));
    // source line 751, bytecode pc 1266
    xs.Utils.Node.attachNodes(this, this.m_instructionBtn, { desc: "ct", offset: cc.p(406, -100), sc: true }, null);
    // source line 752, bytecode pc 1287
    this.m_instructionBtn.setTouchPriority(-20);
    // source line 754, bytecode pc 1289
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 758, bytecode pc 12
    this._super();
    // source line 759, bytecode pc 35
    xs.log_ck("觉醒 onEnterTransitionDidFinish");
    // source line 760, bytecode pc 82
    xs.Utils.Notify.addObserver(this, this.refreshData, xs.Constant_Notify_ModelChange_General);
    // source line 761, bytecode pc 129
    xs.Utils.Notify.addObserver(this, this.refreshData, xs.Constant_Notify_ModelChange_Evolution);
    // source line 762, bytecode pc 147
    this.bfCardView.reloadData();
},
    onExitTransitionDidStart: function() {
    // source line 767, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_General);
    // source line 768, bytecode pc 79
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_Evolution);
    // source line 769, bytecode pc 92
    this._super();
},
    refreshData: function(cardData) {
    var filter, params, oldInfo;
    // source line 773, bytecode pc 22
    xs.log_ck("觉醒 refreshData");
    if (cardData) {
        // source line 777, bytecode pc 40
        (this.cardData = cardData);
    } else {
        // source line 779, bytecode pc 66
        (filter = this.sortController.getCurFilter());
        if (filter) {
            // source line 786, bytecode pc 132
            (params = {
    data: this.allData,
    result: filter.filterResult,
    filterConditions: filter.filterType,
    sortConditions: this.filterConditions
});
            // source line 788, bytecode pc 169
            (this.cardData = xs.Tools.Filter.filterData(params));
        } else {
            // source line 790, bytecode pc 187
            (this.cardData = this.allData);
        }
    }
    if ((this.recordIndex && (this.recordIndex != this.focusCardIdx))) {
        // source line 797, bytecode pc 230
        (this.focusCardIdx = this.recordIndex);
    }
    // source line 799, bytecode pc 247
    (oldInfo = this.cardData[this.focusCardIdx]);
    if ((oldInfo.getStatusAwake() != xs.Constant_Evolution_Status_Enable)) {
        // source line 807, bytecode pc 357
        (this.cardData[this.focusCardIdx] = xs.Profile.GameData.Mgr.getInstance().EvolutionInfos.getByGeneralId(this.cardData[this.focusCardIdx].general_id));
        if ((this.cardData[this.focusCardIdx] == null)) {
            // source line 810, bytecode pc 394
            (this.cardData[this.focusCardIdx] = oldInfo);
        } else {
            if (oldInfo.getCacheGeneralModel()) {
                // source line 814, bytecode pc 444
                oldInfo.getCacheGeneralModel().clearResCache();
            }
        }
        // source line 816, bytecode pc 484
        this.cardData[this.focusCardIdx].initCachePoint(oldInfo.getChacheMagicalModel());
    }
    if (this.recordIndex) {
        // source line 821, bytecode pc 510
        this.selCurFirstCard(0);
        // source line 822, bytecode pc 528
        this.bfCardView.reloadData();
    } else {
        // source line 825, bytecode pc 551
        this.bfCardView.reloadData();
    }
    if ((this.cardData.length === 0)) {
        // source line 830, bytecode pc 589
        this.noGeneralTip.setVisible(true);
        // source line 831, bytecode pc 609
        this.infoRegion.setVisible(false);
        // source line 832, bytecode pc 611
        return true;
    } else {
        // source line 834, bytecode pc 636
        this.noGeneralTip.setVisible(false);
        // source line 835, bytecode pc 656
        this.infoRegion.setVisible(true);
    }
    // source line 838, bytecode pc 683
    this.setCardInfo(this.cardData[this.focusCardIdx]);
    if ((this.focusCardIdx <= (this.cardData.length - 1))) {
        // source line 842, bytecode pc 728
        this.selCurFirstCard(this.focusCardIdx);
    } else {
        // source line 844, bytecode pc 760
        this.selCurFirstCard((this.cardData.length - 1));
        // source line 845, bytecode pc 780
        (this.focusCardIdx = (this.cardData.length - 1));
    }
    // source line 849, bytecode pc 814
    this.showCardNum((this.focusCardIdx + 1), this.cardData.length);
},
    showCardNum: function(haveCardNum, totalCradNum) {
    var numStr;
    if ((this.cardNumLabel === undefined)) {
        // source line 856, bytecode pc 55
        (this.cardNumLabel = xs.Factorys.Label.createByStyleId("LS_fightUI1"));
        // source line 857, bytecode pc 94
        this.cardNumLabel.setAnchorPoint(cc.p(0, 0));
        // source line 858, bytecode pc 115
        this.cardNumLabel.setZOrder(-1);
        // source line 859, bytecode pc 201
        xs.Utils.Node.attachNodes(this, this.cardNumLabel, { desc: "lb", offset: cc.p(20, 50), sc: true });
    }
    // source line 862, bytecode pc 251
    (numStr = (((xs.Tools.String.createString("card") + haveCardNum) + "/") + totalCradNum));
    // source line 863, bytecode pc 273
    this.cardNumLabel.setString(numStr);
},
    onClickLeft: function(type) {
    // source line 873, bytecode pc 64
    xs.Views.Mgr.showDialogByName("AwakeInfoDialog", { evolutionInfo: this.selectEvolutionInfo, isPreview: (this.markLeftAction != 2) });
},
    onClickRight: function() {
    if ((this.markRightAction == 2)) {
        // source line 883, bytecode pc 69
        xs.Scene.Mgr.changeSceneByName("AwakeScene", { generalId: this.selectEvolutionInfo.general_id });
    } else {
        if ((this.markRightAction == 1)) {
            // source line 890, bytecode pc 100
            (this.recordIndex = this.focusCardIdx);
            // source line 894, bytecode pc 222
            xs.Views.Mgr.showDialogByName("AwakeConfirmDialog", {
    generalId: this.selectEvolutionInfo.general_id,
    info: this.selectEvolutionInfo.getOpenResource(),
    evolution_id: this.selectEvolutionInfo.evolution_id,
    callback: this.sendEvolutionReq,
    callbackCancel: this.cancelsendEvolutionReq,
    self: this
});
        }
    }
},
    cancelsendEvolutionReq: function() {
    var self;
    // source line 917, bytecode pc 22
    xs.log_ck("关闭按钮2222");
    // source line 918, bytecode pc 32
    (self = this.self);
    // source line 919, bytecode pc 42
    (self.recordIndex = null);
},
    sendEvolutionReq: function() {
    var id, self, evolution_id;
    // source line 922, bytecode pc 9
    (id = this.id);
    // source line 923, bytecode pc 25
    (self = this.self);
    // source line 924, bytecode pc 32
    (evolution_id = id);
    // source line 934, bytecode pc 88
    xs.Tools.Net.requestEvolutionOpen({ evolution_id: evolution_id, ignoreRandEvent: true }, function(jsonObj, _modelMap) {
    // source line 931, bytecode pc 36
    xs.Scene.Mgr.saveStatus("GeneralCompound_RandEvent", _modelMap);
    // source line 932, bytecode pc 92
    self.getParent().m_listener.showAwakeResult(self.selectEvolutionInfo, jsonObj);
    // source line 933, bytecode pc 108
    (self.recordIndex = null);
}, this);
},
    setCardInfo: function(infoData) {
    var isEnableAwake, isCanAwake, isAwaked, i, sprite, viewParams;
    // source line 940, bytecode pc 22
    xs.log_ck("觉醒 setCardInfo");
    if (((infoData === undefined) || (this.infoRegion === undefined))) {
        // source line 942, bytecode pc 56
        return void 0;
    }
    // source line 947, bytecode pc 77
    (this.selectGeneralInfo = infoData.getCacheGeneralModel());
    // source line 948, bytecode pc 87
    (this.selectEvolutionInfo = infoData);
    if ((!this.oldCardGrade || (this.oldCardGrade !== this.selectGeneralInfo.getGrade()))) {
        // source line 951, bytecode pc 198
        xs.Utils.replaceGradeIcon(this.infoRegion, this.cfg.infoView.gradeIcon.tag, this.selectGeneralInfo.getGrade());
        // source line 952, bytecode pc 222
        (this.oldCardGrade = this.selectGeneralInfo.getGrade());
    }
    if (this.m_nameLabel) {
        // source line 957, bytecode pc 269
        this.m_nameLabel.setString(this.selectGeneralInfo.getNameString());
    }
    // source line 960, bytecode pc 301
    (isEnableAwake = (this.selectEvolutionInfo.getStatusAwake() != xs.Constant_Evolution_Status_Close));
    // source line 961, bytecode pc 322
    (isCanAwake = this.selectEvolutionInfo.isCanAwake());
    // source line 962, bytecode pc 354
    (isAwaked = (this.selectEvolutionInfo.getStatusAwake() == xs.Constant_Evolution_Status_Enable));
    // source line 965, bytecode pc 395
    xs.log_ck(("this.selectEvolutionInfo.getStatusAwake():" + this.selectEvolutionInfo.getStatusAwake()));
    // source line 966, bytecode pc 475
    xs.Utils.setNodeVisible(this.infoRegion, this.cfg.infoView.infoMark.tag, (this.selectEvolutionInfo.getStatusAwake() == xs.Constant_Evolution_Status_Unable));
    // source line 967, bytecode pc 483
    (this.markLeftAction = 0);
    // source line 968, bytecode pc 491
    (this.markRightAction = 0);
    if (isAwaked) {
        // source line 973, bytecode pc 552
        xs.Utils.setNodeVisible(this.infoRegion, this.cfg.infoView.levelMark1.tag, true);
        // source line 974, bytecode pc 605
        xs.Utils.setNodeVisible(this.infoRegion, this.cfg.infoView.levelMark2.tag, true);
        // source line 975, bytecode pc 658
        xs.Utils.setNodeVisible(this.infoRegion, this.cfg.infoView.levelMark3.tag, true);
        // source line 976, bytecode pc 711
        xs.Utils.setNodeVisible(this.infoRegion, this.cfg.infoView.levelMark4.tag, true);
        // source line 977, bytecode pc 764
        xs.Utils.setNodeVisible(this.infoRegion, this.cfg.infoView.levelMark5.tag, true);
        // source line 979, bytecode pc 769
        (i = 1);
        while ((i <= 5)) {
            if (((this.selectEvolutionInfo.evolution_level > i) || ((this.selectEvolutionInfo.evolution_level == i) && (this.selectEvolutionInfo.sub_level == 7)))) {
                // source line 985, bytecode pc 878
                (sprite = xs.Factorys.Sprite.create("yue1", "Cmn01"));
                // source line 986, bytecode pc 899
                sprite.setScale(0.7);
                // source line 989, bytecode pc 964
                xs.Utils.replaceNode(this.infoRegion, (this.cfg.infoView.levelMark1.tag + (i - 1)), sprite, false, true);
            } else {
                // source line 994, bytecode pc 1011
                (sprite = xs.Factorys.Sprite.create("yue2", "Cmn01"));
                // source line 995, bytecode pc 1032
                sprite.setScale(0.7);
                // source line 998, bytecode pc 1097
                xs.Utils.replaceNode(this.infoRegion, (this.cfg.infoView.levelMark1.tag + (i - 1)), sprite, false, true);
            }
            // source line 979, bytecode pc 1112
            i++;
        }
    } else {
        // source line 1007, bytecode pc 1182
        xs.Utils.setNodeVisible(this.infoRegion, this.cfg.infoView.levelMark1.tag, false);
        // source line 1008, bytecode pc 1235
        xs.Utils.setNodeVisible(this.infoRegion, this.cfg.infoView.levelMark2.tag, false);
        // source line 1009, bytecode pc 1288
        xs.Utils.setNodeVisible(this.infoRegion, this.cfg.infoView.levelMark3.tag, false);
        // source line 1010, bytecode pc 1341
        xs.Utils.setNodeVisible(this.infoRegion, this.cfg.infoView.levelMark4.tag, false);
        // source line 1011, bytecode pc 1394
        xs.Utils.setNodeVisible(this.infoRegion, this.cfg.infoView.levelMark5.tag, false);
    }
    if (this.btn_awake_op1) {
        // source line 1023, bytecode pc 1442
        this.btn_awake_op1.setOnClickCallBack(function() {
    // source line 1022, bytecode pc 12
    this.onClickLeft();
}.bind(this));
        // source line 1024, bytecode pc 1482
        this.btn_awake_op1.setTouchPriority(this.cfg.infoView.leftBtn.priority);
        if (isAwaked) {
            // source line 1027, bytecode pc 1541
            this.btn_awake_op1.setString(xs.Tools.String.createString("txt_awake_chakan"));
            // source line 1028, bytecode pc 1561
            this.btn_awake_op1.setEnabled(true);
            // source line 1029, bytecode pc 1581
            this.btn_awake_op1.setEventOnDisable(false);
            // source line 1030, bytecode pc 1601
            this.txt_contentTips.setVisible(true);
            if (((this.selectEvolutionInfo.evolution_level == 5) && (this.selectEvolutionInfo.sub_level == 7))) {
                // source line 1032, bytecode pc 1691
                this.txt_contentTips.setString(xs.Tools.String.createString("evolution_tip3"));
            } else {
                // source line 1034, bytecode pc 1747
                this.txt_contentTips.setString(xs.Tools.String.createString("evolution_tip1"));
            }
            // source line 1035, bytecode pc 1756
            (this.markLeftAction = 2);
        } else {
            if (isEnableAwake) {
                // source line 1039, bytecode pc 1820
                this.btn_awake_op1.setString(xs.Tools.String.createString("txt_awake_yulan"));
                // source line 1040, bytecode pc 1840
                this.btn_awake_op1.setEnabled(true);
                // source line 1041, bytecode pc 1860
                this.btn_awake_op1.setEventOnDisable(false);
                // source line 1042, bytecode pc 1880
                this.txt_contentTips.setVisible(false);
                // source line 1043, bytecode pc 1888
                (this.markLeftAction = 1);
                // source line 1045, bytecode pc 1945
                (this.openInfoLayer = xs.Utils.getChildByTag(this.infoRegion, this.cfg.infoView.infoMark.tag));
                // source line 1047, bytecode pc 1966
                (viewParams = this.selectEvolutionInfo.getRuleViewParams());
                // source line 1050, bytecode pc 2060
                xs.Utils.replaceNode(this.openInfoLayer, this.cfg.infoView.infoMark.item1.tag, xs.Scene.AwakeCardOpenRuleItemView.create(viewParams.type1), true);
                // source line 1053, bytecode pc 2154
                xs.Utils.replaceNode(this.openInfoLayer, this.cfg.infoView.infoMark.item2.tag, xs.Scene.AwakeCardOpenRuleItemView.create(viewParams.type2), true);
                // source line 1056, bytecode pc 2248
                xs.Utils.replaceNode(this.openInfoLayer, this.cfg.infoView.infoMark.item3.tag, xs.Scene.AwakeCardOpenRuleItemView.create(viewParams.type3), true);
                // source line 1059, bytecode pc 2342
                xs.Utils.replaceNode(this.openInfoLayer, this.cfg.infoView.infoMark.item4.tag, xs.Scene.AwakeCardOpenRuleItemView.create(viewParams.type4), true);
            } else {
                // source line 1064, bytecode pc 2398
                this.btn_awake_op1.setString(xs.Tools.String.createString("txt_awake_yulan"));
                // source line 1065, bytecode pc 2418
                this.btn_awake_op1.setEnabled(false);
                // source line 1066, bytecode pc 2438
                this.btn_awake_op1.setEventOnDisable(true);
                // source line 1067, bytecode pc 2458
                this.txt_contentTips.setVisible(true);
                // source line 1068, bytecode pc 2509
                this.txt_contentTips.setString(xs.Tools.String.createString("evolution_tip2"));
                // source line 1069, bytecode pc 2517
                (this.markLeftAction = 0);
            }
        }
    }
    if (this.btn_awake_op2) {
        // source line 1077, bytecode pc 2565
        this.btn_awake_op2.setOnClickCallBack(function() {
    // source line 1076, bytecode pc 12
    this.onClickRight();
}.bind(this));
        // source line 1078, bytecode pc 2605
        this.btn_awake_op2.setTouchPriority(this.cfg.infoView.rightBtn.priority);
        if (isAwaked) {
            // source line 1082, bytecode pc 2664
            this.btn_awake_op2.setString(xs.Tools.String.createString("txt_awake_dianlangtuteng"));
            // source line 1083, bytecode pc 2684
            this.btn_awake_op2.setEnabled(true);
            // source line 1084, bytecode pc 2704
            this.btn_awake_op2.setEventOnDisable(false);
            // source line 1085, bytecode pc 2713
            (this.markRightAction = 2);
        } else {
            if (isCanAwake) {
                // source line 1089, bytecode pc 2777
                this.btn_awake_op2.setString(xs.Tools.String.createString("txt_awake"));
                // source line 1090, bytecode pc 2797
                this.btn_awake_op2.setEnabled(true);
                // source line 1091, bytecode pc 2817
                this.btn_awake_op2.setEventOnDisable(false);
                // source line 1092, bytecode pc 2825
                (this.markRightAction = 1);
            } else {
                // source line 1096, bytecode pc 2881
                this.btn_awake_op2.setString(xs.Tools.String.createString("txt_awake"));
                // source line 1097, bytecode pc 2901
                this.btn_awake_op2.setEnabled(false);
                // source line 1098, bytecode pc 2921
                this.btn_awake_op2.setEventOnDisable(true);
                // source line 1099, bytecode pc 2929
                (this.markRightAction = 0);
            }
        }
    }
},
    tableCellTouched: function(table, cell) {
    // source line 1107, bytecode pc 29
    xs.log_ck(("this.focusCardIdx:" + this.focusCardIdx));
    if ((cell.getIdx() === this.focusCardIdx)) {
        // source line 1109, bytecode pc 91
        this.cardData[this.focusCardIdx].getCacheGeneralModel().playAudioEffect();
        // source line 1111, bytecode pc 170
        xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: this.cardData[this.focusCardIdx].getCacheGeneralModel(), type: "achieve_have" });
    } else {
        // source line 1114, bytecode pc 205
        xs.log_ck(("this.focusCardIdx:" + this.focusCardIdx));
        // source line 1115, bytecode pc 233
        this.selCurFirstCard(cell.getIdx());
    }
},
    selCurFirstCard: function(idx) {
    // source line 1120, bytecode pc 21
    this.bfCardView.setCardViewSelIdx(idx);
},
    onFirstIdx: function(idx) {
    if (this.recordIndex) {
        // source line 1127, bytecode pc 33
        xs.log_ck("返回不执行");
        // source line 1128, bytecode pc 35
        return void 0;
    }
    // source line 1131, bytecode pc 45
    (this.focusCardIdx = idx);
    // source line 1133, bytecode pc 76
    this.showCardNum((idx + 1), this.cardData.length);
    // source line 1136, bytecode pc 99
    xs.log_ck("setCardInfo 3");
    // source line 1137, bytecode pc 123
    this.setCardInfo(this.cardData[idx]);
    // source line 1138, bytecode pc 146
    xs.log_ck("setCardInfo 3 end");
},
    onFilterChange: function(filterType, filterResult) {
    var params;
    // source line 1148, bytecode pc 51
    (params = {
    data: this.allData,
    result: filterResult,
    filterConditions: filterType,
    sortConditions: xs.Constant_SortType_General_Default
});
    // source line 1151, bytecode pc 95
    this.refreshData(xs.Tools.Filter.filterData(params));
},
    cfg: {
        tableView: { priority: -1 },
        sortController: { priority: -20 },
        ccbCfg: [
            { tag: 11, type: "ls", name: "m_nameLabel", id: "LS_wujiangName1" },
            { tag: 41, type: "btn", name: "btn_awake_op1", id: "Btn_Preview" },
            { tag: 42, type: "btn", name: "btn_awake_op2", id: "Btn_Evolution" },
            { tag: 101, type: "ls", name: "txt_contentTips", id: "LS_qiangduo_Inf" }
        ],
        infoView: {
            gradeIcon: { tag: 10 },
            infoMark: { tag: 100, item1: { tag: 21 }, item2: { tag: 22 }, item3: { tag: 23 }, item4: { tag: 24 } },
            levelMark1: { tag: 31 },
            levelMark2: { tag: 32 },
            levelMark3: { tag: 33 },
            levelMark4: { tag: 34 },
            levelMark5: { tag: 35 },
            leftBtn: { tag: 41, priority: -20 },
            rightBtn: { tag: 42, priority: -20 }
        }
    }
}));
// source line 1191, bytecode pc 2226
(xs.Scene.AwakeCardView.create = function(params) {
    var ret;
    // source line 1192, bytecode pc 23
    (ret = new xs.Scene.AwakeCardView());
    if ((ret && ret.init(params))) {
        // source line 1194, bytecode pc 59
        return ret;
    }
    // source line 1196, bytecode pc 61
    return null;
});
// source line 1275, bytecode pc 2315
(xs.Scene.AwakeCardOpenRuleItemView = xs.Views.BaseView.extend({
    name: "xs.Views.AwakeCardOpenRuleItemView",
    ctor: function() {
    // source line 1202, bytecode pc 12
    this._super();
    // source line 1203, bytecode pc 47
    cc.associateWithNative(this, xs.Views.BaseView);
},
    init: function(param) {
    var centerY, offx;
    // source line 1206, bytecode pc 12
    this._super();
    // source line 1210, bytecode pc 31
    (param = (param || {}));
    // source line 1211, bytecode pc 53
    (this.tEnable = (false || param.tEnable));
    // source line 1213, bytecode pc 62
    (centerY = 17.5);
    // source line 1214, bytecode pc 99
    this.setContentSize(cc.size(250, 35));
    // source line 1215, bytecode pc 137
    this.setAnchorPoint(cc.p(0, 0.5));
    // source line 1217, bytecode pc 182
    (this.m_LightPointPic = xs.Factorys.Sprite.create("liangdian", "Cmn01"));
    // source line 1218, bytecode pc 229
    this.m_LightPointPic.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 1219, bytecode pc 270
    this.m_LightPointPic.setPosition(cc.p(0, centerY));
    // source line 1220, bytecode pc 294
    this.m_LightPointPic.setScale(0.7);
    // source line 1221, bytecode pc 314
    this.addChild(this.m_LightPointPic);
    // source line 1224, bytecode pc 359
    (this.m_DarkPointPic = xs.Factorys.Sprite.create("andian", "Cmn01"));
    // source line 1225, bytecode pc 400
    this.m_DarkPointPic.setPosition(cc.p(0, centerY));
    // source line 1226, bytecode pc 447
    this.m_DarkPointPic.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 1227, bytecode pc 471
    this.m_DarkPointPic.setScale(0.7);
    // source line 1228, bytecode pc 491
    this.addChild(this.m_DarkPointPic);
    // source line 1230, bytecode pc 497
    (offx = 20);
    if ((param.rule != null)) {
        // source line 1235, bytecode pc 551
        (this.ruleLable = xs.Factorys.Label.createByStyleId("LS_qiangduo_time"));
        // source line 1236, bytecode pc 594
        this.ruleLable.setAnchorPoint(cc.p(0, 0.5));
        // source line 1237, bytecode pc 637
        this.ruleLable.setPosition(cc.p(offx, centerY));
        // source line 1238, bytecode pc 664
        this.ruleLable.setString(param.rule);
        // source line 1240, bytecode pc 684
        this.addChild(this.ruleLable);
        // source line 1241, bytecode pc 714
        (offx = (offx + this.ruleLable.getContentSize().width));
    }
    if ((param.sprite != null)) {
        // source line 1246, bytecode pc 790
        (this.spriteIc = xs.Factorys.Sprite.create(param.sprite.pngName, param.sprite.listName));
        // source line 1247, bytecode pc 833
        this.spriteIc.setPosition(cc.p(offx, centerY));
        // source line 1248, bytecode pc 876
        this.spriteIc.setAnchorPoint(cc.p(0, 0.5));
        if ((param.sprite.scale != null)) {
            // source line 1250, bytecode pc 928
            this.spriteIc.setScale(param.sprite.scale);
        }
        // source line 1251, bytecode pc 948
        this.addChild(this.spriteIc);
        // source line 1252, bytecode pc 982
        (param.sprite.scale = (param.sprite.scale || 1));
        // source line 1254, bytecode pc 1026
        (offx = (offx + (this.spriteIc.getContentSize().width * param.sprite.scale)));
    }
    if ((param.result != null)) {
        // source line 1259, bytecode pc 1080
        (this.resultLable = xs.Factorys.Label.createByStyleId("LS_Lv"));
        // source line 1260, bytecode pc 1123
        this.resultLable.setAnchorPoint(cc.p(0, 0.5));
        // source line 1261, bytecode pc 1166
        this.resultLable.setPosition(cc.p(offx, centerY));
        // source line 1262, bytecode pc 1193
        this.resultLable.setString(param.result);
        // source line 1263, bytecode pc 1213
        this.addChild(this.resultLable);
    }
    // source line 1269, bytecode pc 1233
    this.setTEnable(this.tEnable);
    // source line 1272, bytecode pc 1235
    return true;
},
    setTEnable: function(tEnable) {
    // source line 1276, bytecode pc 9
    (this.tEnable = tEnable);
    if (this.tEnable) {
        // source line 1279, bytecode pc 40
        this.m_LightPointPic.setVisible(true);
        // source line 1280, bytecode pc 60
        this.m_DarkPointPic.setVisible(false);
    } else {
        // source line 1284, bytecode pc 85
        this.m_LightPointPic.setVisible(false);
        // source line 1285, bytecode pc 105
        this.m_DarkPointPic.setVisible(true);
    }
}
}));
// source line 1290, bytecode pc 2341
(xs.Scene.AwakeCardOpenRuleItemView.create = function(params) {
    var ret;
    // source line 1291, bytecode pc 23
    (ret = new xs.Scene.AwakeCardOpenRuleItemView());
    if ((ret && ret.init(params))) {
        // source line 1295, bytecode pc 59
        return ret;
    }
    // source line 1298, bytecode pc 61
    return null;
});
// source line 1428, bytecode pc 2492
(xs.Scene.AgaScene = cc.Scene.extend({
    ctor: function() {
    // source line 1303, bytecode pc 12
    this._super();
    // source line 1304, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(params) {
    var visibleSize;
    // source line 1308, bytecode pc 9
    (this.params = params);
    // source line 1309, bytecode pc 45
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 1312, bytecode pc 85
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Team);
    // source line 1315, bytecode pc 174
    (this.pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), visibleSize.height)));
    // source line 1317, bytecode pc 194
    this.pageView.setListener(this);
    // source line 1322, bytecode pc 261
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("general"), xs.Scene.AgaCardView);
    // source line 1329, bytecode pc 350
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("reincarnation"), xs.Scene.GhostCardView, { param: xs.Constant_AgaScene_Reincarnation });
    // source line 1337, bytecode pc 439
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("breach"), xs.Scene.GhostCardView, { param: xs.Constant_AgaScene_Breach });
    // source line 1348, bytecode pc 528
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("hero_card_jue_xing"), xs.Scene.AwakeCardView, { param: xs.Constant_AgaScene_Evolution });
    // source line 1351, bytecode pc 587
    xs.Utils.Node.attachNodes(this, this.pageView, { desc: "lb", sc: true });
    // source line 1357, bytecode pc 678
    this.pageView.setHintIcon([ 1, 2, 3 ], [
    xs.Constant_HintType_Camp_Reincarnation,
    xs.Constant_HintType_Camp_Breach,
    xs.Constant_HintType_Camp_Awake
], true);
    // source line 1361, bytecode pc 718
    this.pageView.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_Hide);
    // source line 1365, bytecode pc 755
    (this.sideMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 1368, bytecode pc 795
    this.sideMenu.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_MoveOut);
    // source line 1371, bytecode pc 797
    return true;
},
    onEnter: function() {
    if ((this.params !== undefined)) {
        // source line 1376, bytecode pc 69
        this.pageView.selectPage(this.params.selPageIndex).selCurFirstCard(this.params.cardIdx);
    }
},
    reincarnation: function(generalModel) {
    // source line 1387, bytecode pc 42
    this.runEffectAction(xs.Constant_NodeEffectEvent_Disappear, function() {
    // source line 1384, bytecode pc 42
    (this.reincarnationView = xs.Views.ReincarnationView.create(generalModel));
    // source line 1385, bytecode pc 77
    this.reincarnationView.setBaseTouchPriority(this.cfg.reincarnationView.priority);
    // source line 1386, bytecode pc 97
    this.addChild(this.reincarnationView);
}.bind(this));
},
    back: function() {
    var _modelMap;
    if (this.reincarnationView) {
        // source line 1393, bytecode pc 30
        this.reincarnationView.removeFromParent(true);
        // source line 1394, bytecode pc 38
        (this.reincarnationView = null);
    }
    if (this.cardAwakeView) {
        // source line 1399, bytecode pc 69
        this.cardAwakeView.removeFromParent(true);
        // source line 1400, bytecode pc 77
        (this.cardAwakeView = null);
    }
    // source line 1402, bytecode pc 101
    this.runEffectAction(xs.Constant_NodeEffectEvent_Revert);
    // source line 1405, bytecode pc 137
    (_modelMap = xs.Scene.Mgr.loadStatusAndClear("GeneralCompound_RandEvent"));
    if (_modelMap) {
        // source line 1407, bytecode pc 182
        xs.Views.Mgr.showDialogByName("RandEvent", _modelMap);
    }
    // source line 1411, bytecode pc 230
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
},
    showAwakeResult: function(evolutionInfo, param) {
    // source line 1422, bytecode pc 42
    this.runEffectAction(xs.Constant_NodeEffectEvent_Disappear, function() {
    // source line 1416, bytecode pc 52
    (this.cardAwakeView = xs.Views.CardAwakeView.create(evolutionInfo, param));
    // source line 1417, bytecode pc 87
    this.cardAwakeView.setBaseTouchPriority(this.cfg.cardAwakeView.priority);
    // source line 1418, bytecode pc 107
    this.addChild(this.cardAwakeView);
}.bind(this));
},
    cfg: { reincarnationView: { priority: -30 }, cardAwakeView: { priority: -30 } }
}));
// source line 1435, bytecode pc 2518
(xs.Scene.AgaScene.create = function(params) {
    var ret;
    // source line 1436, bytecode pc 23
    (ret = new xs.Scene.AgaScene());
    if ((ret && ret.init(params))) {
        // source line 1438, bytecode pc 82
        xs.Views.Mgr.dismissLoadingLayer();
        // source line 1439, bytecode pc 86
        return ret;
    }
    // source line 1442, bytecode pc 88
    return null;
});
// source line 1450, bytecode pc 2612
xs.Scene.Mgr.registerScene("AgaScene", { "class": xs.Scene.AgaScene, area: [ "WujiangScene01" ], type: xs.Constant_SceneType_General });
