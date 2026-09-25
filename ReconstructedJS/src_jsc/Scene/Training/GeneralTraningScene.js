// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Training/GeneralTraningScene.js:1
// source line 209, bytecode pc 163
(xs.Scene.GeneralTrainingCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 13, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 16, bytecode pc 12
    this._super();
    // source line 17, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    var contentSize, pos;
    if (!this._super()) {
        // source line 21, bytecode pc 19
        return false;
    }
    // source line 24, bytecode pc 27
    (this.m_generalTrainingData = null);
    // source line 25, bytecode pc 35
    (this.m_baseTouchPriority = 0);
    // source line 26, bytecode pc 43
    (this.b_isTalk = false);
    // source line 27, bytecode pc 51
    (this.m_listener = null);
    // source line 29, bytecode pc 59
    (this.m_ccbBgNode = null);
    // source line 30, bytecode pc 67
    (this.m_ccbTimerNode = null);
    // source line 31, bytecode pc 75
    (this.m_ccbThankYouNode = null);
    // source line 34, bytecode pc 83
    (this.m_titleLab = null);
    // source line 35, bytecode pc 91
    (this.m_headSp = null);
    // source line 36, bytecode pc 99
    (this.m_talkBg = null);
    // source line 37, bytecode pc 107
    (this.m_talkLab = null);
    // source line 38, bytecode pc 115
    (this.m_finishIcon = null);
    // source line 41, bytecode pc 123
    (this.m_timerLab = null);
    // source line 42, bytecode pc 131
    (this.m_timerExpLab = null);
    // source line 43, bytecode pc 139
    (this.m_timerThkExpTxtLab = null);
    // source line 44, bytecode pc 147
    (this.m_timerDThkExpTxtLab = null);
    // source line 45, bytecode pc 155
    (this.m_timerDoubleTxtLab = null);
    // source line 48, bytecode pc 163
    (this.m_tyExpLab = null);
    // source line 49, bytecode pc 171
    (this.m_tyBtn = null);
    // source line 50, bytecode pc 179
    (this.m_doubleTyExpLab = null);
    // source line 51, bytecode pc 187
    (this.m_doubleTyBtn = null);
    // source line 52, bytecode pc 195
    (this.m_magatamaLab = null);
    // source line 53, bytecode pc 203
    (this.m_allGeneralTxtLab1 = null);
    // source line 54, bytecode pc 211
    (this.m_allGeneralTxtLab2 = null);
    // source line 58, bytecode pc 249
    this.setContentSize(cc.size(280, 540));
    // source line 59, bytecode pc 300
    (this.m_ccbBgNode = xs.ccb_reader.load(xs.Cfg.CCBI.GeneralTraningCellBG, this));
    // source line 65, bytecode pc 383
    xs.Utils.Node.attachNodes(this, this.m_ccbBgNode, { desc: "lb", sc: false, offset: { x: 4, y: 0 } });
    // source line 68, bytecode pc 445
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbBgNode, xs.Scene.GeneralTrainingCell.cfg.bgNodeCcbCfg, this);
    // source line 70, bytecode pc 496
    (this.m_ccbTimerNode = xs.ccb_reader.load(xs.Cfg.CCBI.GeneralTrainingTimer, this));
    // source line 76, bytecode pc 583
    xs.Utils.Node.attachNodes(this.m_ccbBgNode, this.m_ccbTimerNode, { desc: "lb", sc: false, offset: { x: 0, y: 0 } });
    // source line 79, bytecode pc 645
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbTimerNode, xs.Scene.GeneralTrainingCell.cfg.timerNodeCcbCfg, this);
    // source line 81, bytecode pc 696
    (this.m_ccbThankYouNode = xs.ccb_reader.load(xs.Cfg.CCBI.GeneralTrainingThankYou, this));
    // source line 87, bytecode pc 783
    xs.Utils.Node.attachNodes(this.m_ccbBgNode, this.m_ccbThankYouNode, { desc: "lb", sc: false, offset: { x: 0, y: 0 } });
    // source line 90, bytecode pc 845
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbThankYouNode, xs.Scene.GeneralTrainingCell.cfg.tyNodeCcbCfg, this);
    // source line 92, bytecode pc 883
    this.m_tyBtn.setOnClickCallBack(this.thankYouCallback.bind(this));
    // source line 93, bytecode pc 921
    this.m_doubleTyBtn.setOnClickCallBack(this.doubleTankYouCallback.bind(this));
    // source line 95, bytecode pc 941
    this.m_tyBtn.setSwallowTouch(false);
    // source line 96, bytecode pc 961
    this.m_tyBtn.setZoomOnTouchDown(false);
    // source line 97, bytecode pc 981
    this.m_doubleTyBtn.setSwallowTouch(false);
    // source line 98, bytecode pc 1001
    this.m_doubleTyBtn.setZoomOnTouchDown(false);
    // source line 100, bytecode pc 1022
    (contentSize = this.m_timerDThkExpTxtLab.getContentSize());
    // source line 101, bytecode pc 1043
    (pos = this.m_timerDThkExpTxtLab.getPosition());
    // source line 102, bytecode pc 1105
    this.m_timerDoubleTxtLab.setPosition(cc.p((pos.x + contentSize.width), pos.y));
    // source line 104, bytecode pc 1107
    return true;
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 107, bytecode pc 12
    this._super();
    // source line 109, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 112, bytecode pc 71
            (touchPriority = parent.getTouchPriority());
            // source line 113, bytecode pc 88
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 116, bytecode pc 111
        (parent = parent.getParent());
    }
    // source line 120, bytecode pc 167
    xs.Utils.Notify.addObserver(this, this.updateView, xs.Constant_Notify_ModelChange_GeneralTraining);
},
    onExit: function() {
    // source line 125, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_GeneralTraining);
    // source line 127, bytecode pc 52
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 131, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 133, bytecode pc 65
    this.m_tyBtn.setTouchPriority((this.m_baseTouchPriority + xs.Scene.GeneralTrainingCell.cfg.m_tyBtn.priority));
    // source line 134, bytecode pc 121
    this.m_doubleTyBtn.setTouchPriority((this.m_baseTouchPriority + xs.Scene.GeneralTrainingCell.cfg.m_doubleTyBtn.priority));
},
    setListener: function(listener) {
    // source line 137, bytecode pc 9
    (this.m_listener = listener);
},
    setGeneralTrainingData: function(data) {
    // source line 140, bytecode pc 9
    (this.m_generalTrainingData = data);
    // source line 141, bytecode pc 22
    this.updateView();
},
    setIsTalk: function(talk) {
    // source line 144, bytecode pc 9
    (this.b_isTalk = talk);
    // source line 145, bytecode pc 22
    this.updateView();
},
    updateView: function() {
    var general, head;
    if (this.m_generalTrainingData) {
        // source line 151, bytecode pc 58
        (general = xs.Models.General.createWithBase(this.m_generalTrainingData.getGeneralId()));
        // source line 152, bytecode pc 124
        this.m_titleLab.setString((general.getNameString() + xs.Tools.String.createString("auto_name_48")));
        // source line 153, bytecode pc 149
        this.m_talkBg.setVisible(this.b_isTalk);
        // source line 154, bytecode pc 174
        this.m_talkLab.setVisible(this.b_isTalk);
        // source line 155, bytecode pc 210
        this.m_talkLab.setString(this.m_generalTrainingData.getSpeak());
        // source line 157, bytecode pc 231
        (head = this.m_generalTrainingData.getHeadSp());
        // source line 158, bytecode pc 264
        head.setAnchorPoint(this.m_headSp.getAnchorPoint());
        // source line 159, bytecode pc 297
        head.setPosition(this.m_headSp.getPosition());
        // source line 160, bytecode pc 330
        head.setZOrder(this.m_headSp.getZOrder());
        // source line 161, bytecode pc 368
        xs.Utils.Node.attachNodes(this.m_ccbBgNode, head);
        // source line 162, bytecode pc 402
        xs.Utils.Node.safeRemoveChild(this.m_headSp);
        // source line 163, bytecode pc 412
        (this.m_headSp = head);
        // source line 165, bytecode pc 445
        switch (parseInt(this.m_generalTrainingData.getTrainingStatus())) {
            case xs.Models.GeneralTrainingStatus_ING:
            // source line 168, bytecode pc 510
            this.m_finishIcon.setVisible(false);
            // source line 170, bytecode pc 530
            this.m_ccbTimerNode.setVisible(true);
            // source line 171, bytecode pc 550
            this.m_ccbThankYouNode.setVisible(false);
            // source line 173, bytecode pc 608
            this.m_timerLab.setString(xs.Utils.convertSecondToTime(this.m_generalTrainingData.getEndTime()));
            // source line 174, bytecode pc 650
            this.m_timerExpLab.setString(("+" + this.m_generalTrainingData.getExp()));
            break;
            case xs.Models.GeneralTrainingStatus_Ready:
            // source line 179, bytecode pc 675
            this.m_finishIcon.setVisible(true);
            // source line 181, bytecode pc 695
            this.m_ccbTimerNode.setVisible(false);
            // source line 182, bytecode pc 715
            this.m_ccbThankYouNode.setVisible(true);
            // source line 184, bytecode pc 757
            this.m_tyExpLab.setString(("+" + this.m_generalTrainingData.getExp()));
            // source line 185, bytecode pc 802
            this.m_doubleTyExpLab.setString(("+" + (this.m_generalTrainingData.getExp() * 2)));
            // source line 186, bytecode pc 838
            this.m_magatamaLab.setString(this.m_generalTrainingData.getMagatamaNumNeed());
            break;
            default:
            // source line 191, bytecode pc 863
            this.m_ccbTimerNode.setVisible(false);
            // source line 192, bytecode pc 883
            this.m_ccbThankYouNode.setVisible(false);
            break;
        }
    }
    // source line 198, bytecode pc 909
    this.m_titleLab.setZOrder(2);
    // source line 199, bytecode pc 930
    this.m_finishIcon.setZOrder(3);
    // source line 200, bytecode pc 951
    this.m_talkBg.setZOrder(2);
    // source line 201, bytecode pc 972
    this.m_talkLab.setZOrder(2);
},
    thankYouCallback: function() {
    if (this.m_listener) {
        // source line 206, bytecode pc 35
        this.m_listener.thankYouCallback(this.m_generalTrainingData);
    }
},
    doubleTankYouCallback: function() {
    if (this.m_listener) {
        // source line 211, bytecode pc 35
        this.m_listener.doubleTankYouCallback(this.m_generalTrainingData);
    }
}
}));
// source line 216, bytecode pc 189
(xs.Scene.GeneralTrainingCell.create = function() {
    var cell;
    // source line 217, bytecode pc 23
    (cell = new xs.Scene.GeneralTrainingCell());
    if ((cell && cell.init())) {
        // source line 219, bytecode pc 55
        return cell;
    }
    // source line 221, bytecode pc 57
    return null;
});
// source line 257, bytecode pc 1091
(xs.Scene.GeneralTrainingCell.cfg = {
    bgNodeCcbCfg: [
        { name: "m_titleLab", tag: 11, type: "ls", id: "LS_BntHui" },
        { name: "m_headSp", tag: 12 },
        { name: "m_talkBg", tag: 13 },
        { name: "m_talkLab", tag: 14, type: "ls", id: "LS_mainUI3" },
        { name: "m_finishIcon", tag: 15 }
    ],
    timerNodeCcbCfg: [
        { name: "m_timerLab", tag: 10, type: "ls", id: "LS_popUI5" },
        { name: "m_timerExpLab", tag: 12, type: "ls", id: "LS_Lv" },
        {
            name: "m_timerThkExpTxtLab",
            tag: 101,
            type: "ls",
            id: "LS_fightUI2",
            stringId: "str_Training_timerExpInfo"
        },
        {
            name: "m_timerDThkExpTxtLab",
            tag: 102,
            type: "ls",
            id: "LS_fightUI2",
            stringId: "str_Training_timerDoubleExpInfo"
        },
        {
            name: "m_timerDoubleTxtLab",
            tag: 103,
            type: "ls",
            id: "LS_liebiaoInf2",
            stringId: "str_Training_timerDouble"
        }
    ],
    tyNodeCcbCfg: [
        { name: "m_tyExpLab", tag: 10, type: "ls", id: "LS_Lv" },
        { name: "m_tyBtn", tag: 11, type: "btn", id: "Btn_btn1", stringId: "str_Training_thk" },
        { name: "m_doubleTyExpLab", tag: 12, type: "ls", id: "LS_Lv" },
        { name: "m_doubleTyBtn", tag: 13, type: "btn", id: "Btn_btn1", stringId: "str_Training_doubleThk" },
        { name: "m_magatamaLab", tag: 14, type: "ls", id: "LS_SXJC" },
        {
            name: "m_allGeneralTxtLab1",
            tag: 101,
            type: "ls",
            id: "LS_fightUI2",
            stringId: "str_Training_allGeneral"
        },
        {
            name: "m_allGeneralTxtLab2",
            tag: 102,
            type: "ls",
            id: "LS_fightUI2",
            stringId: "str_Training_allGeneral"
        }
    ],
    m_tyBtn: { priority: -1 },
    m_doubleTyBtn: { priority: -1 }
});
// source line 316, bytecode pc 1205
(xs.Scene.GeneralTrainingGoFightCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 263, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 266, bytecode pc 12
    this._super();
    // source line 267, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 271, bytecode pc 19
        return false;
    }
    // source line 274, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 275, bytecode pc 35
    (this.m_ccbNode = null);
    // source line 276, bytecode pc 43
    (this.m_infoLab = null);
    // source line 277, bytecode pc 51
    (this.m_goBtn = null);
    // source line 279, bytecode pc 89
    this.setContentSize(cc.size(280, 540));
    // source line 281, bytecode pc 140
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.GeneralTraningCellGoFight, this));
    // source line 287, bytecode pc 223
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "lb", sc: false, offset: { x: 0, y: -8 } });
    // source line 290, bytecode pc 285
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Scene.GeneralTrainingGoFightCell.cfg.ccbCfg, this);
    // source line 291, bytecode pc 323
    this.m_goBtn.setOnClickCallBack(this.goFight.bind(this));
    // source line 293, bytecode pc 325
    return true;
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 296, bytecode pc 12
    this._super();
    // source line 298, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 301, bytecode pc 71
            (touchPriority = parent.getTouchPriority());
            // source line 302, bytecode pc 88
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 306, bytecode pc 111
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 310, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 313, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 314, bytecode pc 65
    this.m_goBtn.setTouchPriority((this.m_baseTouchPriority + xs.Scene.GeneralTrainingGoFightCell.cfg.m_goBtn.priority));
},
    goFight: function() {
    // source line 317, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("FightChapters");
}
}));
// source line 321, bytecode pc 1231
(xs.Scene.GeneralTrainingGoFightCell.create = function() {
    var cell;
    // source line 322, bytecode pc 23
    (cell = new xs.Scene.GeneralTrainingGoFightCell());
    if ((cell && cell.init())) {
        // source line 324, bytecode pc 55
        return cell;
    }
    // source line 326, bytecode pc 57
    return null;
});
// source line 335, bytecode pc 1400
(xs.Scene.GeneralTrainingGoFightCell.cfg = {
    ccbCfg: [
        { name: "m_goBtn", tag: 10, type: "btn", id: "Btn_btn1", stringId: "str_Training_goChapter" },
        {
            name: "m_infoLab",
            tag: 101,
            type: "ls",
            id: "LS_liebiaoInf",
            stringId: "str_Training_goChapterInfo"
        }
    ],
    m_goBtn: { priority: -1 }
});
// source line 771, bytecode pc 1790
(xs.Scene.GeneralTrainingLayer = xs.Views.HungerLayer.extend({
    name: "GeneralTrainingLayer",
    constGeneralID: { all: "0", sunJian: "131016", zhaoYun: "121008", lvbu: "141002" },
    ctor: function() {
    // source line 354, bytecode pc 12
    this._super();
},
    init: function() {
    var visibleSize, visibleOrigin, pageView, mainMenuWidth, oneStepDoubleTyBtnWidth;
    if (!this._super()) {
        // source line 358, bytecode pc 19
        return false;
    }
    // source line 363, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 364, bytecode pc 35
    (this.m_tableView = null);
    // source line 365, bytecode pc 43
    (this.m_ccbMagatamaBannerNode = null);
    // source line 366, bytecode pc 51
    (this.m_magatamaLab = null);
    // source line 367, bytecode pc 63
    (this.m_dataSource = []);
    // source line 368, bytecode pc 75
    (this.m_allDataSource = []);
    // source line 370, bytecode pc 83
    (this.m_oneStepTyBtn = null);
    // source line 371, bytecode pc 91
    (this.m_oneStepDoubleTyBtn = null);
    // source line 372, bytecode pc 99
    (this.sortController = null);
    // source line 374, bytecode pc 111
    (this.m_selectType = "0");
    // source line 375, bytecode pc 120
    (this.m_selectStates = -1);
    // source line 377, bytecode pc 128
    (this.m_mainMenu = null);
    // source line 378, bytecode pc 136
    (this.m_talkIndex = 0);
    // source line 379, bytecode pc 144
    (this.m_curTrainingData = null);
    // source line 380, bytecode pc 152
    (this.b_isDouble = false);
    // source line 382, bytecode pc 161
    (this.m_maxNum = 30);
    // source line 385, bytecode pc 186
    (visibleSize = xs.director.getVisibleSize());
    // source line 386, bytecode pc 211
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 388, bytecode pc 251
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Fight_Chaos);
    // source line 390, bytecode pc 302
    (this.m_ccbMagatamaBannerNode = xs.ccb_reader.load(xs.Cfg.CCBI.GeneralTraningGouYuBanner, this));
    // source line 391, bytecode pc 341
    this.m_ccbMagatamaBannerNode.setAnchorPoint(cc.p(0, 1));
    // source line 394, bytecode pc 400
    xs.Utils.Node.attachNodes(this, this.m_ccbMagatamaBannerNode, { desc: "lt", sc: true });
    // source line 397, bytecode pc 455
    (this.m_magatamaLab = this.m_ccbMagatamaBannerNode.getChildByTag(xs.Scene.GeneralTrainingLayer.cfg.m_magatamaLab.tag));
    // source line 399, bytecode pc 518
    (pageView = xs.Views.TablePage.create(cc.size(846, (visibleSize.height - 40))));
    // source line 401, bytecode pc 581
    (this.m_tableView = cc.TableView.create(this, cc.size((visibleSize.width - 120), 548)));
    // source line 402, bytecode pc 610
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL);
    // source line 403, bytecode pc 639
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 404, bytecode pc 659
    this.m_tableView.setDelegate(this);
    // source line 405, bytecode pc 713
    this.m_tableView.setPosition(cc.p(10, ((visibleSize.height - 632) / 2)));
    // source line 406, bytecode pc 768
    pageView.addPage(xs.Tools.String.createString("auto_name_218"), this.m_tableView);
    // source line 412, bytecode pc 847
    xs.Utils.Node.attachNodes(this, pageView, { desc: "lb", sc: true, offset: { x: 0, y: 0 } });
    // source line 416, bytecode pc 895
    pageView.setHintIcon([ 0 ], [ xs.Constant_HintType_Party_Train ], true);
    // source line 419, bytecode pc 958
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Scene.GeneralTrainingLayer.cfg.m_mainMenu));
    // source line 422, bytecode pc 982
    (mainMenuWidth = xs.Views.MainMenuView.Width);
    // source line 424, bytecode pc 1021
    (this.m_oneStepDoubleTyBtn = xs.Views.Btn.createByStyleId("BS_Btn1"));
    // source line 425, bytecode pc 1064
    this.m_oneStepDoubleTyBtn.setAnchorPoint(cc.p(1, 0.5));
    // source line 426, bytecode pc 1115
    this.m_oneStepDoubleTyBtn.setString(xs.Tools.String.createString("oneStepDoubleThank"));
    // source line 430, bytecode pc 1201
    xs.Utils.Node.attachNodes(this, this.m_oneStepDoubleTyBtn, { desc: "rt", offset: { x: -mainMenuWidth, y: -60 }, sc: true });
    // source line 431, bytecode pc 1239
    this.m_oneStepDoubleTyBtn.setOnClickCallBack(this.oneStepDoubleTyCallBack.bind(this));
    // source line 434, bytecode pc 1265
    (oneStepDoubleTyBtnWidth = this.m_oneStepDoubleTyBtn.getContentSize().width);
    // source line 436, bytecode pc 1304
    (this.m_oneStepTyBtn = xs.Views.Btn.createByStyleId("BS_Btn1"));
    // source line 437, bytecode pc 1347
    this.m_oneStepTyBtn.setAnchorPoint(cc.p(1, 0.5));
    // source line 438, bytecode pc 1398
    this.m_oneStepTyBtn.setString(xs.Tools.String.createString("oneStepThank"));
    // source line 439, bytecode pc 1493
    xs.Utils.Node.attachNodes(this, this.m_oneStepTyBtn, { desc: "rt", offset: cc.p(((-mainMenuWidth - oneStepDoubleTyBtnWidth) - 40), -60), sc: true });
    // source line 440, bytecode pc 1531
    this.m_oneStepTyBtn.setOnClickCallBack(this.oneStepTyCallBack.bind(this));
    // source line 444, bytecode pc 1575
    (this.sortController = xs.Views.SortController.create(xs.Constant_FilterStyle_TrainGenerals));
    // source line 445, bytecode pc 1613
    this.sortController.setSortChgCallBack(this.onFilterChange.bind(this));
    // source line 447, bytecode pc 1653
    this.sortController.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_MoveOut);
    // source line 452, bytecode pc 1750
    xs.Utils.Node.attachNodes(this, this.sortController, {
    desc: "rt",
    offset: { x: ((-mainMenuWidth - (oneStepDoubleTyBtnWidth * 2)) - 300), y: -90 },
    sc: true
});
    // source line 456, bytecode pc 1765
    this.setBaseTouchPriority(0);
    // source line 457, bytecode pc 1778
    this.updateView();
    // source line 458, bytecode pc 1780
    return true;
},
    checkIsHaveCanThankTrain: function() {
    var notHaveCanThankTrain, i;
    // source line 461, bytecode pc 4
    (notHaveCanThankTrain = true);
    // source line 462, bytecode pc 9
    (i = 0);
    while ((i < this.m_dataSource.length)) {
        if ((this.m_dataSource[i].getTrainingStatus() == xs.Models.GeneralTrainingStatus_Ready)) {
            // source line 464, bytecode pc 62
            (notHaveCanThankTrain = false);
            break;
        }
        // source line 462, bytecode pc 82
        i++;
    }
    // source line 468, bytecode pc 107
    return notHaveCanThankTrain;
},
    getCanThankTrainList: function() {
    var list, i;
    // source line 472, bytecode pc 8
    (list = []);
    // source line 473, bytecode pc 13
    (i = 0);
    while ((i < this.m_dataSource.length)) {
        if ((this.m_dataSource[i].getTrainingStatus() == xs.Models.GeneralTrainingStatus_Ready)) {
            // source line 475, bytecode pc 87
            list.push(this.m_dataSource[i]);
        }
        // source line 473, bytecode pc 102
        i++;
    }
    // source line 478, bytecode pc 127
    return list;
},
    oneStepTyCallBack: function() {
    if (this.checkIsHaveCanThankTrain()) {
        // source line 483, bytecode pc 49
        xs.Views.Mgr.showToastByStringKey("TrainPrompt_1");
        // source line 484, bytecode pc 51
        return void 0;
    }
    // source line 487, bytecode pc 59
    (this.b_isDouble = false);
    // source line 488, bytecode pc 67
    (this.oldContentOffset = null);
    // source line 513, bytecode pc 201
    xs.Tools.Net.requestGeneralOneStepTrainingThankYou({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    general_leader_id: this.m_selectType,
    double: 1,
    team_id: 1
}, function(data) {
    if (data.result) {
        // source line 500, bytecode pc 27
        (data.is_double = this.b_isDouble);
        // source line 502, bytecode pc 40
        this.updateView();
        // source line 503, bytecode pc 53
        this.refreshGeneralTrainingInfo();
        if (!xs.Utils.isEmpty(this.m_dataSource[0])) {
            // source line 506, bytecode pc 140
            xs.Views.Mgr.showDialogByName("GeneralTrainingResultDialog", this.m_dataSource[0], data.info);
        }
    }
}, function(data) {
}, this);
},
    oneStepDoubleTyCallBack: function() {
    var magatamNum, canThankList;
    if (this.checkIsHaveCanThankTrain()) {
        // source line 520, bytecode pc 49
        xs.Views.Mgr.showToastByStringKey("TrainPrompt_1");
        // source line 521, bytecode pc 51
        return void 0;
    }
    // source line 523, bytecode pc 118
    (magatamNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_Magatama));
    // source line 524, bytecode pc 134
    (canThankList = this.getCanThankTrainList());
    if ((magatamNum < canThankList[0].magatama_need)) {
        // source line 526, bytecode pc 213
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_219"));
        // source line 527, bytecode pc 215
        return void 0;
    }
    // source line 565, bytecode pc 364
    (this._dialog2 = xs.Views.Dialog.createTwoButtonDialog("TrainOneStepTitle", "TrainOneStepPrompt", xs.Tools.String.createString("auto_name_146"), xs.Tools.String.createString("auto_name_76"), function() {
    // source line 533, bytecode pc 33
    xs.Utils.Node.removeFromParentSafe(this._dialog2);
}.bind(this), function() {
    // source line 536, bytecode pc 33
    xs.Utils.Node.removeFromParentSafe(this._dialog2);
    // source line 537, bytecode pc 41
    (this.b_isDouble = true);
    // source line 538, bytecode pc 49
    (this.oldContentOffset = null);
    // source line 563, bytecode pc 184
    xs.Tools.Net.requestGeneralOneStepTrainingThankYou({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    general_leader_id: this.m_selectType,
    double: 2,
    team_id: 1
}, function(data) {
    if (data.result) {
        // source line 551, bytecode pc 27
        (data.is_double = this.b_isDouble);
        // source line 553, bytecode pc 40
        this.updateView();
        // source line 554, bytecode pc 53
        this.refreshGeneralTrainingInfo();
        if (!xs.Utils.isEmpty(this.m_dataSource[0])) {
            // source line 556, bytecode pc 140
            xs.Views.Mgr.showDialogByName("GeneralTrainingResultDialog", this.m_dataSource[0], data.info);
        }
    }
}, function(data) {
}, this);
}.bind(this)));
    // source line 567, bytecode pc 400
    xs.Utils.Node.attachNodes(this, this._dialog2);
},
    setBaseTouchPriority: function(priority) {
    // source line 572, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 573, bytecode pc 65
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority + xs.Scene.GeneralTrainingLayer.cfg.m_tableView.priority));
    // source line 574, bytecode pc 121
    this.m_mainMenu.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.GeneralTrainingLayer.cfg.m_mainMenu.priority));
    if (this.sortController) {
        // source line 576, bytecode pc 188
        this.sortController.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.GeneralTrainingLayer.cfg.resultLayer.priority));
    }
    if (this.m_oneStepTyBtn) {
        // source line 579, bytecode pc 255
        this.m_oneStepTyBtn.setTouchPriority((this.m_baseTouchPriority + xs.Scene.GeneralTrainingLayer.cfg.m_mainMenu.priority));
    }
    if (this.m_oneStepDoubleTyBtn) {
        // source line 582, bytecode pc 322
        this.m_oneStepDoubleTyBtn.setTouchPriority((this.m_baseTouchPriority + xs.Scene.GeneralTrainingLayer.cfg.m_mainMenu.priority));
    }
},
    onEnter: function() {
    // source line 587, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 590, bytecode pc 12
    this._super();
},
    onFilterChange: function(filterType, filterResult) {
    // source line 593, bytecode pc 16
    this.updateDataSource(filterResult);
    // source line 595, bytecode pc 24
    (this.oldContentOffset = null);
    // source line 596, bytecode pc 76
    (this.m_talkIndex = Math.floor((Math.random() * this.m_dataSource.length)));
    // source line 597, bytecode pc 89
    this.refreshTableViewWithOldPos();
},
    updateDataSource: function(filterResult) {
    // source line 602, bytecode pc 3
    switch (filterResult) {
        case xs.Constant_FilterResult_All:
        // source line 604, bytecode pc 77
        (this.m_selectStates = -1);
        // source line 605, bytecode pc 95
        (this.m_selectType = this.constGeneralID.all);
        // source line 606, bytecode pc 108
        (this.m_dataSource = this.m_allDataSource);
        break;
        case xs.Constant_FilterResult_Train_SunJian:
        // source line 609, bytecode pc 121
        (this.m_selectStates = 1);
        // source line 610, bytecode pc 139
        (this.m_selectType = this.constGeneralID.sunJian);
        // source line 611, bytecode pc 165
        (this.m_dataSource = this.getGeneralTrainDataByGeneralId(this.m_selectType));
        break;
        case xs.Constant_FilterResult_Train_ZhaoYun:
        // source line 614, bytecode pc 188
        (this.m_selectType = this.constGeneralID.zhaoYun);
        // source line 615, bytecode pc 197
        (this.m_selectStates = 2);
        // source line 616, bytecode pc 223
        (this.m_dataSource = this.getGeneralTrainDataByGeneralId(this.m_selectType));
        break;
        case xs.Constant_FilterResult_Train_LvBu:
        // source line 619, bytecode pc 246
        (this.m_selectType = this.constGeneralID.lvbu);
        // source line 620, bytecode pc 255
        (this.m_selectStates = 3);
        // source line 621, bytecode pc 281
        (this.m_dataSource = this.getGeneralTrainDataByGeneralId(this.m_selectType));
        break;
        default:
        break;
    }
},
    getGeneralTrainDataByGeneralId: function(generalId) {
    var list, i;
    // source line 627, bytecode pc 8
    (list = []);
    // source line 628, bytecode pc 13
    (i = 0);
    while ((i < this.m_allDataSource.length)) {
        if ((this.m_allDataSource[i].getGeneralId() == generalId)) {
            // source line 631, bytecode pc 75
            list.push(this.m_allDataSource[i]);
        }
        // source line 628, bytecode pc 90
        i++;
    }
    // source line 634, bytecode pc 115
    return list;
},
    onCleanUpBeforeSceneExit: function() {
    var i;
    // source line 637, bytecode pc 29
    xs.log_zj(("onCleanUpBeforeSceneExit:" + this.name));
    // source line 638, bytecode pc 34
    (i = 0);
    while ((i < this.m_dataSource.length)) {
        // source line 639, bytecode pc 62
        this.m_dataSource[i].unschedule();
        // source line 638, bytecode pc 77
        i++;
    }
},
    onEnterTransitionDidFinish: function() {
    // source line 644, bytecode pc 12
    this._super();
    // source line 645, bytecode pc 25
    this.refreshGeneralTrainingInfo();
},
    updateView: function() {
    var num;
    // source line 651, bytecode pc 66
    (num = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_Magatama));
    // source line 652, bytecode pc 88
    this.m_magatamaLab.setString(num);
},
    refreshGeneralTrainingInfo: function() {
    var param;
    // source line 656, bytecode pc 9
    (param = {});
    // source line 657, bytecode pc 49
    xs.Tools.Net.requestGeneralTrainingInfo(param, this.refreshGeneralTrainingInfoSuccess, this);
},
    refreshGeneralTrainingInfoSuccess: function(jsonData) {
    var length, _length, tInfo, i, info;
    // source line 662, bytecode pc 14
    (length = this.m_dataSource.length);
    // source line 663, bytecode pc 38
    this.m_dataSource.splice(0, length);
    // source line 665, bytecode pc 53
    (_length = this.m_allDataSource.length);
    // source line 666, bytecode pc 77
    this.m_allDataSource.splice(0, _length);
    // source line 668, bytecode pc 89
    (tInfo = jsonData.training_info);
    // source line 669, bytecode pc 94
    (i = 0);
    while ((i < tInfo.length)) {
        // source line 670, bytecode pc 130
        (info = xs.Models.GeneralTraining.create());
        // source line 671, bytecode pc 153
        info.loadJson(tInfo[i]);
        // source line 672, bytecode pc 175
        this.m_allDataSource.push(info);
        // source line 669, bytecode pc 188
        (i = (+i + 1));
    }
    // source line 675, bytecode pc 226
    this.updateDataSource(this.m_selectStates);
    // source line 676, bytecode pc 278
    (this.m_talkIndex = Math.floor((Math.random() * this.m_dataSource.length)));
    // source line 677, bytecode pc 291
    this.refreshTableViewWithOldPos();
},
    refreshTableViewWithOldPos: function() {
    if (!this.oldContentOffset) {
        // source line 683, bytecode pc 29
        this.m_tableView.reloadData();
        // source line 684, bytecode pc 53
        (this.oldContentOffset = this.m_tableView.getContentOffset());
    } else {
        // source line 686, bytecode pc 82
        (this.oldContentOffset = this.m_tableView.getContentOffset());
        // source line 687, bytecode pc 100
        this.m_tableView.reloadData();
        // source line 688, bytecode pc 125
        this.m_tableView.setContentOffset(this.oldContentOffset);
    }
    if ((this.oldContentOffset.y < this.m_tableView.minContainerOffset().y)) {
        // source line 692, bytecode pc 182
        this.m_tableView.reloadData();
    }
},
    scrollViewDidScroll: function() {
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
    var idx;
    // source line 700, bytecode pc 17
    (idx = cell.getIdx());
    if ((idx === this.m_dataSource.length)) {
    }
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 707, bytecode pc 24
    return cc.size(290, 540);
},
    tableCellAtIndex: function(table, idx) {
    var cell, trainingData;
    // source line 710, bytecode pc 17
    (cell = table.dequeueCell());
    if (((idx === this.m_dataSource.length) || (idx == this.m_maxNum))) {
        // source line 712, bytecode pc 83
        (cell = xs.Scene.GeneralTrainingGoFightCell.create());
    } else {
        // source line 714, bytecode pc 118
        (cell = xs.Scene.GeneralTrainingCell.create());
        // source line 715, bytecode pc 132
        (trainingData = this.m_dataSource[idx]);
        // source line 716, bytecode pc 151
        cell.setGeneralTrainingData(trainingData);
        // source line 717, bytecode pc 168
        cell.setListener(this);
        if ((idx === this.m_talkIndex)) {
            // source line 719, bytecode pc 201
            cell.setZOrder(2);
            // source line 720, bytecode pc 218
            cell.setIsTalk(true);
        } else {
            // source line 722, bytecode pc 240
            cell.setIsTalk(false);
        }
    }
    // source line 726, bytecode pc 244
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 729, bytecode pc 53
    return (((this.m_dataSource.length + 1) > (this.m_maxNum + 1)) ? (this.m_maxNum + 1) : (this.m_dataSource.length + 1));
},
    goFightCallback: function() {
    // source line 733, bytecode pc 22
    xs.log("...............goFightCallback");
    // source line 734, bytecode pc 55
    xs.Scene.Mgr.changeSceneByName("FightChapters");
},
    thankYouCallback: function(trainingData) {
    var param;
    // source line 739, bytecode pc 22
    xs.log("...............thankYouCallback");
    // source line 741, bytecode pc 32
    (this.m_curTrainingData = trainingData);
    // source line 744, bytecode pc 42
    (param = {});
    // source line 745, bytecode pc 62
    (param.user_training_id = this.m_curTrainingData.user_training_id);
    // source line 746, bytecode pc 72
    (param.double = 1);
    // source line 747, bytecode pc 82
    (param.team_id = 1);
    // source line 749, bytecode pc 122
    xs.Tools.Net.requestGeneralTrainingThankYou(param, this.thankYouSuccessCallback, this);
},
    doubleTankYouCallback: function(trainingData) {
    var magatamNum, param;
    // source line 752, bytecode pc 22
    xs.log("...............doubleTankYouCallback");
    // source line 754, bytecode pc 32
    (this.m_curTrainingData = trainingData);
    // source line 756, bytecode pc 99
    (magatamNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_Magatama));
    if ((magatamNum < this.m_curTrainingData.magatama_need)) {
        // source line 758, bytecode pc 179
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_219"));
        // source line 759, bytecode pc 181
        return void 0;
    }
    // source line 763, bytecode pc 191
    (param = {});
    // source line 764, bytecode pc 211
    (param.user_training_id = this.m_curTrainingData.user_training_id);
    // source line 765, bytecode pc 222
    (param.double = 2);
    // source line 766, bytecode pc 232
    (param.team_id = 1);
    // source line 767, bytecode pc 240
    (this.b_isDouble = true);
    // source line 769, bytecode pc 280
    xs.Tools.Net.requestGeneralTrainingThankYou(param, this.thankYouSuccessCallback, this);
},
    thankYouSuccessCallback: function(data) {
    // source line 776, bytecode pc 14
    (data.is_double = this.b_isDouble);
    // source line 778, bytecode pc 27
    this.updateView();
    // source line 779, bytecode pc 40
    this.refreshGeneralTrainingInfo();
    // source line 781, bytecode pc 89
    xs.Views.Mgr.showDialogByName("GeneralTrainingResultDialog", this.m_curTrainingData, data.info);
}
}));
// source line 788, bytecode pc 1816
(xs.Scene.GeneralTrainingLayer.create = function() {
    var layer;
    // source line 789, bytecode pc 23
    (layer = new xs.Scene.GeneralTrainingLayer());
    if ((layer && layer.init())) {
        // source line 791, bytecode pc 55
        return layer;
    }
    // source line 793, bytecode pc 57
    return null;
});
// source line 809, bytecode pc 1928
(xs.Scene.GeneralTrainingLayer.cfg = {
    m_tableView: { priority: -1 },
    m_magatamaLab: { tag: 10 },
    m_mainMenu: { zOrder: 0, tag: -1, priority: -5 },
    resultLayer: { priority: -20 }
});
// source line 830, bytecode pc 2002
(xs.Scene.GeneralTrainingScene = cc.Scene.extend({
    ctor: function() {
    // source line 817, bytecode pc 12
    this._super();
    // source line 818, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function() {
    if (!this._super()) {
        // source line 822, bytecode pc 19
        return false;
    }
    // source line 824, bytecode pc 52
    (this.layer = xs.Scene.GeneralTrainingLayer.create());
    // source line 825, bytecode pc 88
    xs.Utils.Node.attachNodes(this, this.layer);
    // source line 827, bytecode pc 90
    return true;
},
    onCleanUpBeforeSceneExit: function() {
    // source line 831, bytecode pc 17
    this.layer.onCleanUpBeforeSceneExit();
}
}));
// source line 835, bytecode pc 2028
(xs.Scene.GeneralTrainingScene.create = function() {
    var scene;
    // source line 836, bytecode pc 23
    (scene = new xs.Scene.GeneralTrainingScene());
    if ((scene && scene.init())) {
        // source line 838, bytecode pc 55
        return scene;
    }
    // source line 840, bytecode pc 57
    return null;
});
// source line 849, bytecode pc 2122
xs.Scene.Mgr.registerScene("GeneralTrainingScene", {
    "class": xs.Scene.GeneralTrainingScene,
    type: xs.Constant_SceneType_Party,
    area: [ "GeneralTrainingScene01" ]
});
