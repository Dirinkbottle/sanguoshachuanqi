// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ClimbLadderPFKGView.js:1
// source line 517, bytecode pc 501
(xs.Views.ClimbLadderPFKGView = cc.Layer.extend({
    name: "ClimbLadderPFKGView",
    ccbCfg: [
        { tag: 1, type: "ls", id: "LS_chooseServer" },
        { tag: 3, type: "ls", id: "LS_Lv" },
        { tag: 4, type: "ls", id: "LS_Lv" },
        { tag: 5, type: "ls", id: "LS_Lv" },
        { tag: 10, type: "ls", id: "LS_qiangduo_Inf", stringId: "auto_name_259" },
        { tag: 11, type: "ls", id: "LS_qiangduo_Inf", stringId: "auto_name_260" },
        { tag: 12, type: "ls", id: "LS_qiangduo_Inf", stringId: "auto_name_261" }
    ],
    ctor: function() {
    // source line 25, bytecode pc 12
    this._super();
    // source line 26, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var visibleSize, _bg, btnYJTGPos;
    if (!this._super()) {
        // source line 30, bytecode pc 19
        return false;
    }
    // source line 32, bytecode pc 44
    (visibleSize = xs.director.getVisibleSize());
    // source line 33, bytecode pc 84
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Climp);
    // source line 34, bytecode pc 147
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Scene.ClimbLadderLayer.cfg.m_mainMenu));
    // source line 37, bytecode pc 206
    (this.m_equipmentNum = xs.Profile.GameData.Mgr.getInstance().Equipments.getAll().length);
    // source line 39, bytecode pc 242
    (_bg = xs.Factorys.Sprite.createWithFileName("tex/card_v2/121006.png"));
    // source line 40, bytecode pc 278
    _bg.setAnchorPoint(cc.p(0, 0));
    // source line 46, bytecode pc 390
    xs.Utils.Node.attachNodes(this, _bg, {
    desc: "lb",
    sc: true,
    offset: { x: 0, y: ((visibleSize.height / 2) - (_bg.getContentSize().height / 2)) }
});
    // source line 53, bytecode pc 423
    (this.m_infoBar = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 54, bytecode pc 462
    this.m_infoBar.setAnchorPoint(cc.p(0, 1));
    // source line 58, bytecode pc 547
    xs.Utils.Node.attachNodes(this, this.m_infoBar, { desc: "lt", sc: true }, xs.Scene.ClimbLadderLayer.cfg.m_infoBar);
    // source line 60, bytecode pc 575
    (this.m_pfkgView = cc.Node.create());
    // source line 62, bytecode pc 667
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 63, bytecode pc 725
    this.m_pageView.addPage(xs.Tools.String.createString("auto_name_262"), this.m_pfkgView);
    // source line 67, bytecode pc 784
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    // source line 70, bytecode pc 835
    this.m_pageView.setHintIcon([ 0 ], [ xs.Constant_HintType_Pvp_Climb ], true);
    // source line 75, bytecode pc 843
    (this.m_baseTouchPriority = 0);
    // source line 76, bytecode pc 851
    (this.m_listener = null);
    // source line 77, bytecode pc 859
    (this.m_rankListData = null);
    // source line 78, bytecode pc 867
    (this.m_remainTime = 0);
    // source line 80, bytecode pc 875
    (this.m_infoCCBNode = null);
    // source line 82, bytecode pc 883
    (this.m_startBtn = null);
    // source line 83, bytecode pc 891
    (this.m_rankListBtn = null);
    // source line 84, bytecode pc 899
    (this.m_startTimeLab = null);
    // source line 85, bytecode pc 907
    (this.m_infoLevelLab = null);
    // source line 86, bytecode pc 915
    (this.m_infoRankLab = null);
    // source line 87, bytecode pc 923
    (this.m_todayFinish = null);
    // source line 89, bytecode pc 974
    (this.m_infoCCBNode = xs.ccb_reader.load(xs.Cfg.CCBI.ClimbLadderInfoNode, this));
    // source line 95, bytecode pc 1116
    xs.Utils.Node.attachNodes(this, this.m_infoCCBNode, {
    desc: "lb",
    sc: true,
    offset: {
        x: (((visibleSize.width / 2) - (this.m_infoCCBNode.getContentSize().width / 2)) - (xs.Views.MainMenuView.Width / 2)),
        y: 0
    }
});
    // source line 100, bytecode pc 1159
    xs.Utils.UI.replaceCcbByCfg(this.m_infoCCBNode, this.ccbCfg, this);
    // source line 110, bytecode pc 1214
    (this.m_infoLevelLab = this.m_infoCCBNode.getChildByTag(xs.Views.ClimbLadderPFKGView.cfg.m_infoLevelLab.tag));
    // source line 111, bytecode pc 1269
    (this.m_infoRankLab = this.m_infoCCBNode.getChildByTag(xs.Views.ClimbLadderPFKGView.cfg.m_infoRankLab.tag));
    // source line 114, bytecode pc 1304
    (btnYJTGPos = this.m_infoCCBNode.getChildByTag(21).getPosition());
    // source line 116, bytecode pc 1349
    (this.btnYJTG = xs.Views.Btn.create("Btn_Default", ""));
    // source line 117, bytecode pc 1403
    this.btnYJTG.setString(xs.Tools.String.createString("climb_fightPass"), 32);
    // source line 121, bytecode pc 1445
    xs.Utils.replaceNode(this.m_infoCCBNode, "21", this.btnYJTG);
    // source line 122, bytecode pc 1504
    this.btnYJTG.setPosition(cc.p((btnYJTGPos.x + 50), (btnYJTGPos.y + 10)));
    // source line 136, bytecode pc 1573
    (this.m_startBtn = xs.Libs.Views.Button.createWithSpriteFrame(xs.Cfg.Sprite.Cmn03.Cmn03_PFKGViewStart.frameName));
    // source line 138, bytecode pc 1600
    this.m_startBtn.addCallBackForEvent(this, this.startBattleCallback);
    // source line 144, bytecode pc 1732
    xs.Utils.Node.attachNodes(this, this.m_startBtn, {
    desc: "lb",
    sc: true,
    offset: {
        x: (((visibleSize.width / 2) - (xs.Views.MainMenuView.Width / 2)) + 40),
        y: ((visibleSize.height / 2) - 80)
    }
});
    // source line 149, bytecode pc 1771
    (this.m_rankListBtn = xs.Views.Btn.create("Btn_RankAward"));
    // source line 150, bytecode pc 1798
    this.m_rankListBtn.addCallBackForEvent(this, this.rankListCallback);
    // source line 157, bytecode pc 1928
    xs.Utils.Node.attachNodes(this, this.m_rankListBtn, {
    desc: "c",
    sc: true,
    offset: {
        x: (((visibleSize.width - xs.Views.MainMenuView.Width) / 2) - 150),
        y: ((visibleSize.height / 2) - 80)
    }
});
    // source line 167, bytecode pc 1972
    (this.m_instructionBtn = xs.Tools.Views.Btn.createInstruction("climbLadder_Instruction"));
    // source line 168, bytecode pc 2060
    xs.Utils.Node.attachNodes(this, this.m_instructionBtn, { desc: "lb", offset: cc.p(80, 70), sc: true }, null);
    // source line 169, bytecode pc 2062
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 172, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 173, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 174, bytecode pc 85
    this.m_startBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.ClimbLadderPFKGView.cfg.m_startBtn.priority));
    // source line 175, bytecode pc 141
    this.m_rankListBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.ClimbLadderPFKGView.cfg.m_rankListBtn.priority));
},
    onEnter: function() {
    var _modelMap;
    // source line 178, bytecode pc 12
    this._super();
    // source line 181, bytecode pc 25
    this.requestStartInfo();
    // source line 184, bytecode pc 61
    (_modelMap = xs.Scene.Mgr.loadStatusAndClear("PvpFight_RandEvent"));
    if (_modelMap) {
        // source line 190, bytecode pc 125
        this.runAction(cc.CallFunc.create(function() {
    // source line 189, bytecode pc 34
    xs.Views.Mgr.showDialogByName("RandEvent", this);
}.bind(_modelMap)));
    }
},
    onExit: function() {
    // source line 196, bytecode pc 12
    this._super();
},
    requestStartInfo: function() {
    var param;
    // source line 200, bytecode pc 47
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
    // source line 201, bytecode pc 57
    (param = {});
    // source line 202, bytecode pc 97
    xs.Tools.Net.requestClimbLadderStartInfo(param, this.requestStartInfoSuccessCallback, this);
},
    requestStartInfoSuccessCallback: function(data) {
    var _model, dataRef, spendTimes, str, _jsonStr, _sprite, _label, _jianghunLabel, visibleSize;
    // source line 205, bytecode pc 46
    xs.Views.ClimbLadderPFKGView.Model.getInstance().setData(data);
    if ((xs.Views.Mgr.getRunningScene().name == "ClimbLadderScene")) {
        if ((this && this.m_infoCCBNode)) {
            // source line 210, bytecode pc 114
            (this._requestStartInfoSuccessCallback = true);
            // source line 211, bytecode pc 149
            (_model = xs.Views.ClimbLadderPFKGView.Model.getInstance());
            // source line 213, bytecode pc 184
            (dataRef = xs.Views.ClimbLadderPFKGView.Model.getInstance());
            // source line 215, bytecode pc 224
            (spendTimes = xs.Utils.parseIntSafe(dataRef.getSpendTimes()));
            if (!spendTimes) {
                // source line 218, bytecode pc 253
                this.btnYJTG.setEnabled(false);
                // source line 219, bytecode pc 273
                this.btnYJTG.setEventOnDisable(true);
                // source line 222, bytecode pc 310
                this.btnYJTG.setOnClickCallBack(function() {
    // source line 221, bytecode pc 12
    this._btnYJTGCallBackDisable();
}.bind(this));
            } else {
                if ((spendTimes < 3)) {
                    // source line 224, bytecode pc 346
                    this.btnYJTG.setEnabled(true);
                    // source line 227, bytecode pc 383
                    this.btnYJTG.setOnClickCallBack(function() {
    // source line 226, bytecode pc 12
    this._btnYJTGCallBackEnable();
}.bind(this));
                } else {
                    // source line 229, bytecode pc 408
                    this.btnYJTG.setEnabled(false);
                    // source line 230, bytecode pc 428
                    this.btnYJTG.setEventOnDisable(true);
                    // source line 233, bytecode pc 465
                    this.btnYJTG.setOnClickCallBack(function() {
    // source line 232, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_274"));
}.bind(this));
                }
            }
            // source line 237, bytecode pc 597
            (str = ((((xs.Tools.String.createString("auto_name_263") + dataRef.getSpendTimes()) + xs.Tools.String.createString("auto_name_264")) + dataRef.getLeftTimes()) + xs.Tools.String.createString("auto_name_265")));
            // source line 238, bytecode pc 632
            this.m_infoCCBNode.getChildByTag(1).setString(str);
            // source line 241, bytecode pc 712
            this.m_infoCCBNode.getChildByTag(3).setString((dataRef.getMaxPassTimes() + xs.Tools.String.createString("auto_name_266")));
            // source line 244, bytecode pc 721
            (_jsonStr = []);
            // source line 245, bytecode pc 768
            (_sprite = xs.Views.Label.LabelExtSprite.createSpriteObj("Cmn02_icon_Cmn02_jianghun", "Cmn02"));
            // source line 246, bytecode pc 830
            (_label = xs.Views.Label.LabelExtSprite.createLabelObj("LS_chooseServer", (dataRef.getMaxIntergration() + " ")));
            // source line 247, bytecode pc 849
            _jsonStr.push(_sprite);
            // source line 248, bytecode pc 868
            _jsonStr.push(_label);
            // source line 249, bytecode pc 924
            (_jianghunLabel = xs.Views.Label.LabelExtSprite.create(JSON.stringify(_jsonStr)));
            // source line 250, bytecode pc 958
            this.m_infoCCBNode.getChildByTag(4).setVisible(false);
            // source line 251, bytecode pc 1005
            _jianghunLabel.setPosition(this.m_infoCCBNode.getChildByTag(4).getPosition());
            // source line 252, bytecode pc 1027
            this.m_infoCCBNode.addChild(_jianghunLabel);
            if ((dataRef.getRankValue() == 0)) {
                // source line 255, bytecode pc 1130
                this.m_infoCCBNode.getChildByTag(5).setString((this._setRankType(_model) + xs.Tools.String.createString("auto_name_267")));
            } else {
                // source line 257, bytecode pc 1265
                this.m_infoCCBNode.getChildByTag(5).setString((((this._setRankType(_model) + xs.Tools.String.createString("auto_name_123")) + dataRef.getRankValue()) + xs.Tools.String.createString("auto_name_124")));
            }
        }
        // source line 261, bytecode pc 1290
        (visibleSize = xs.director.getVisibleSize());
        // source line 262, bytecode pc 1326
        (_label = xs.Factorys.Label.createByStyleId("LS_yuanfenInf2"));
        // source line 263, bytecode pc 1374
        _label.setString(xs.Tools.String.createString("climbPrompt_3"));
        // source line 269, bytecode pc 1504
        xs.Utils.Node.attachNodes(this, _label, {
    desc: "lb",
    sc: true,
    offset: {
        x: (((visibleSize.width / 2) - (xs.Views.MainMenuView.Width / 2)) + 40),
        y: ((visibleSize.height / 2) + 230)
    }
});
    }
},
    _setRankType: function(model) {
    var str;
    // source line 278, bytecode pc 35
    (str = xs.Tools.String.createString("auto_name_268"));
    // source line 279, bytecode pc 61
    switch (model.getfront_type().toString()) {
        case "1":
        if (model.getIsInDemon()) {
            // source line 282, bytecode pc 161
            (str = xs.Tools.String.createString("climbPrompt_1"));
        } else {
            // source line 284, bytecode pc 202
            (str = xs.Tools.String.createString("auto_name_269"));
        }
        break;
        case "2":
        if (model.getIsInDemon()) {
            // source line 289, bytecode pc 262
            (str = xs.Tools.String.createString("climbPrompt_jin"));
        } else {
            // source line 291, bytecode pc 303
            (str = xs.Tools.String.createString("auto_name_270"));
        }
        break;
        case "3":
        if (model.getIsInDemon()) {
            // source line 296, bytecode pc 363
            (str = xs.Tools.String.createString("climbPrompt_yin"));
        } else {
            // source line 298, bytecode pc 404
            (str = xs.Tools.String.createString("auto_name_271"));
        }
        break;
        case "4":
        if (model.getIsInDemon()) {
            // source line 303, bytecode pc 464
            (str = xs.Tools.String.createString("climbPrompt_tong"));
        } else {
            // source line 305, bytecode pc 505
            (str = xs.Tools.String.createString("auto_name_272"));
        }
        break;
        default:
        // source line 309, bytecode pc 546
        (str = xs.Tools.String.createString("auto_name_272"));
        break;
    }
    // source line 313, bytecode pc 561
    return (str + ",");
},
    startBattleCallback: function() {
    var num, spendNum, dialog;
    // source line 316, bytecode pc 22
    xs.log_hsq(".......startBattleCallback");
    // source line 317, bytecode pc 27
    (num = 0);
    // source line 318, bytecode pc 32
    (spendNum = 0);
    try {
        // source line 321, bytecode pc 79
        (num = xs.Views.ClimbLadderPFKGView.Model.getInstance().getRemainTime());
        // source line 322, bytecode pc 125
        (spendNum = xs.Views.ClimbLadderPFKGView.Model.getInstance().getSpendTimes());
    } catch (e) {
        // source line 326, bytecode pc 200
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_273"));
        // source line 327, bytecode pc 202
        return void 0;
    }
    if (!this._requestStartInfoSuccessCallback) {
        // source line 333, bytecode pc 287
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_273"));
        // source line 334, bytecode pc 289
        return void 0;
    }
    if ((num == 0)) {
        // source line 338, bytecode pc 359
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_274"));
    } else {
        if (!spendNum) {
            // source line 342, bytecode pc 386
            this._startBattleCallback();
        } else {
            // source line 357, bytecode pc 574
            (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 352, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 355, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 356, bytecode pc 39
    this._startBattleCallback();
}.bind(this)
}));
            // source line 358, bytecode pc 592
            (dialog = dialog.getRealDialog());
            // source line 359, bytecode pc 640
            dialog.setContentText(xs.Tools.String.createString("climb_fightPass04"));
            // source line 360, bytecode pc 688
            dialog.setTitleByString(xs.Tools.String.createString("climb_fightPass01"));
        }
    }
},
    _startBattleCallback: function() {
    var _level, pFKGViewData, bool_1, _data;
    if ((this.m_equipmentNum > xs.Const_Equipment_Max)) {
        // source line 377, bytecode pc 201
        xs.Views.Mgr.showDialogByName("common", {
    title: "MeltPromptTitle",
    content: "EquipmentIsMax",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("GoToEquipmentMelt"),
    leftCB: function() {
    // source line 373, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 376, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("EquipmentScene");
}.bind(this)
});
        // source line 378, bytecode pc 203
        return void 0;
    }
    // source line 384, bytecode pc 265
    (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
    if (((15 <= _level) <= 19)) {
        // source line 386, bytecode pc 305
        (xs.Tools.Statistic.ClimbLadderStartCopper = function() {
    // source line 387, bytecode pc 32
    xs.Tools.Statistic.event("ClimbLadderStartCopper");
});
    }
    if (((20 <= _level) <= 24)) {
        // source line 391, bytecode pc 345
        (xs.Tools.Statistic.ClimbLadderStartSliver = function() {
    // source line 392, bytecode pc 32
    xs.Tools.Statistic.event("ClimbLadderStartSliver");
});
    }
    if (((25 <= _level) <= 30)) {
        // source line 396, bytecode pc 385
        (xs.Tools.Statistic.ClimbLadderStartGold = function() {
    // source line 397, bytecode pc 32
    xs.Tools.Statistic.event("ClimbLadderStartGold");
});
    }
    if ((_level > 30)) {
        // source line 401, bytecode pc 422
        (xs.Tools.Statistic.ClimbLadderStartGod = function() {
    // source line 402, bytecode pc 32
    xs.Tools.Statistic.event("ClimbLadderStartGod");
});
    }
    // source line 406, bytecode pc 468
    (pFKGViewData = xs.Views.ClimbLadderPFKGView.Model.getInstance().getData());
    // source line 408, bytecode pc 499
    (bool_1 = ((pFKGViewData.return_info.is_go_xiuluo == 1) ? true : false));
    // source line 411, bytecode pc 522
    xs.log_hsq("_startBattleCallback2.5");
    if (bool_1) {
        // source line 415, bytecode pc 547
        this.goToXiuLuoCallback(pFKGViewData);
        // source line 416, bytecode pc 549
        return void 0;
    }
    // source line 419, bytecode pc 572
    xs.log_hsq("_startBattleCallback3...");
    // source line 423, bytecode pc 610
    (this._parent._StartBattlelayer = xs.Scene.StartBattleScene.create());
    // source line 424, bytecode pc 635
    this._parent._StartBattlelayer.setBaseTouchPriority(0);
    // source line 425, bytecode pc 681
    (_data = xs.Scene.ClimbLadderScene.Model.getInstance().getData());
    // source line 426, bytecode pc 708
    this._parent._StartBattlelayer.requestCallback(_data);
    // source line 427, bytecode pc 760
    xs.Utils.Node.attachNodes(this.getParent(), this._parent._StartBattlelayer);
    // source line 428, bytecode pc 799
    xs.Utils.Node.safeRemoveChild(this._parent._PFKGlayer);
    // source line 429, bytecode pc 812
    (this._parent._PFKGlayer = null);
},
    goToXiuLuoCallback: function(data) {
    var goToXiuLuoFunction, bool_2;
    // source line 450, bytecode pc 27
    (goToXiuLuoFunction = function() {
    var param;
    // source line 435, bytecode pc 22
    xs.log_hsq("goToXiuLuoFunction");
    // source line 437, bytecode pc 38
    (param = { user_is_go_xiuluo: 1 });
    // source line 449, bytecode pc 90
    xs.Tools.Net.requestClimbLadderStartInfo(param, function(data) {
    // source line 440, bytecode pc 46
    xs.Scene.ClimbLadderScene.Model.getInstance().setData(data);
    // source line 441, bytecode pc 84
    (this._parent._StartBattlelayer = xs.Scene.StartBattleScene.create());
    // source line 442, bytecode pc 109
    this._parent._StartBattlelayer.setBaseTouchPriority(0);
    // source line 443, bytecode pc 136
    this._parent._StartBattlelayer.requestCallback(data);
    // source line 444, bytecode pc 188
    xs.Utils.Node.attachNodes(this.getParent(), this._parent._StartBattlelayer);
    // source line 445, bytecode pc 227
    xs.Utils.Node.safeRemoveChild(this._parent._PFKGlayer);
    // source line 446, bytecode pc 240
    (this._parent._PFKGlayer = null);
}.bind(this), this);
}.bind(this));
    // source line 454, bytecode pc 58
    (bool_2 = ((data.return_info.is_in_xiuluo == 1) ? true : false));
    if (bool_2) {
        // source line 457, bytecode pc 81
        goToXiuLuoFunction();
    } else {
        // source line 483, bytecode pc 266
        xs.Views.Mgr.showDialogByName("common", {
    title: "climbPrompt_4",
    content: "climbPrompt_5",
    leftText: xs.Tools.String.createString("climbPrompt_7"),
    rightText: xs.Tools.String.createString("climbPrompt_6"),
    leftCB: function() {
    var _data;
    // source line 465, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 468, bytecode pc 64
    (this._parent._StartBattlelayer = xs.Scene.StartBattleScene.create());
    // source line 469, bytecode pc 89
    this._parent._StartBattlelayer.setBaseTouchPriority(0);
    // source line 470, bytecode pc 135
    (_data = xs.Scene.ClimbLadderScene.Model.getInstance().getData());
    // source line 471, bytecode pc 162
    this._parent._StartBattlelayer.requestCallback(_data);
    // source line 472, bytecode pc 214
    xs.Utils.Node.attachNodes(this.getParent(), this._parent._StartBattlelayer);
    // source line 473, bytecode pc 253
    xs.Utils.Node.safeRemoveChild(this._parent._PFKGlayer);
    // source line 474, bytecode pc 266
    (this._parent._PFKGlayer = null);
}.bind(this),
    rightCB: function() {
    // source line 477, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 478, bytecode pc 49
    xs.log_hsq("go xiuluo");
    // source line 480, bytecode pc 64
    goToXiuLuoFunction();
}.bind(this)
});
    }
},
    rankListCallback: function() {
    // source line 490, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("ClimbLadderRankListScene");
},
    _btnYJTGCallBackEnable: function() {
    var dialog;
    // source line 507, bytecode pc 182
    (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 501, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 504, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 505, bytecode pc 39
    this._requestYJTG();
}.bind(this)
}));
    // source line 508, bytecode pc 200
    (dialog = dialog.getRealDialog());
    // source line 509, bytecode pc 248
    dialog.setContentText(xs.Tools.String.createString("climb_fightPass03"));
    // source line 510, bytecode pc 296
    dialog.setTitleByString(xs.Tools.String.createString("climb_fightPass01"));
},
    _btnYJTGCallBackDisable: function() {
    // source line 514, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("climb_fightPass02"));
},
    _requestYJTG: function() {
    if ((this.m_equipmentNum > xs.Const_Equipment_Max)) {
        // source line 529, bytecode pc 201
        xs.Views.Mgr.showDialogByName("common", {
    title: "MeltPromptTitle",
    content: "EquipmentIsMax",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("GoToEquipmentMelt"),
    leftCB: function() {
    // source line 525, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 528, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("EquipmentScene");
}.bind(this)
});
        // source line 530, bytecode pc 203
        return void 0;
    }
    // source line 542, bytecode pc 331
    xs.Tools.Net.requestClimbLadderStartFightPass({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    forcepush: true
}, function(resData) {
    // source line 538, bytecode pc 12
    this.requestStartInfo();
    // source line 539, bytecode pc 101
    (!xs.Utils.isEmpty(resData.return_info.add_list) && xs.Views.Mgr.showDialogByName("ShowAddListDialog", resData.return_info.add_list));
}.bind(this), function(resData) {
});
}
}));
// source line 550, bytecode pc 527
(xs.Views.ClimbLadderPFKGView.create = function() {
    var view;
    // source line 551, bytecode pc 23
    (view = new xs.Views.ClimbLadderPFKGView());
    if ((view && view.init())) {
        // source line 553, bytecode pc 55
        return view;
    }
    // source line 555, bytecode pc 80
    xs.assert(false, "xs.Views.ClimbLadderPFKGView.create error!");
    // source line 556, bytecode pc 82
    return null;
});
// source line 575, bytecode pc 651
(xs.Views.ClimbLadderPFKGView.cfg = {
    m_startBtn: { tag: 12, priority: -1 },
    m_rankListBtn: { priority: -1 },
    m_startTimeLab: { tag: 11 },
    m_infoLevelLab: { tag: 10 },
    m_infoRankLab: { tag: 11 }
});
// source line 631, bytecode pc 850
(xs.Views.ClimbLadderPFKGView.Model = cc.Class.extend({
    setData: function(data) {
    // source line 582, bytecode pc 9
    (this._data = data);
},
    getData: function() {
    // source line 585, bytecode pc 6
    return this._data;
},
    getRankInfoCopper: function() {
    var obj;
    // source line 588, bytecode pc 36
    (obj = (this._data.return_info.rank_info.copper_rank || {}));
    // source line 589, bytecode pc 40
    return obj;
},
    getRankInfoSilver: function() {
    var obj;
    // source line 592, bytecode pc 36
    (obj = (this._data.return_info.rank_info.silver_rank || {}));
    // source line 593, bytecode pc 40
    return obj;
},
    getRankInfoGold: function() {
    var obj;
    // source line 596, bytecode pc 36
    (obj = (this._data.return_info.rank_info.gold_rank || {}));
    // source line 597, bytecode pc 40
    return obj;
},
    getRankInfoGod: function() {
    var obj;
    // source line 600, bytecode pc 36
    (obj = (this._data.return_info.rank_info.genie_rank || {}));
    // source line 601, bytecode pc 40
    return obj;
},
    getRemainTime: function() {
    var num;
    // source line 604, bytecode pc 31
    (num = (this._data.return_info.index_info.left_times || 0));
    // source line 605, bytecode pc 35
    return num;
},
    getLeftTimes: function() {
    // source line 609, bytecode pc 21
    return this._data.return_info.index_info.left_times;
},
    getSpendTimes: function() {
    // source line 612, bytecode pc 21
    return this._data.return_info.index_info.fight_times;
},
    getMaxPassTimes: function() {
    // source line 615, bytecode pc 21
    return this._data.return_info.index_info.max_point_progress;
},
    getMaxIntergration: function() {
    // source line 618, bytecode pc 21
    return this._data.return_info.index_info.max_total_integration;
},
    getRankValue: function() {
    // source line 621, bytecode pc 21
    return this._data.return_info.index_info.rank;
},
    getfront_type: function() {
    // source line 625, bytecode pc 23
    return (this._data.return_info.front_type || 1);
},
    getIsGoDemon: function() {
    // source line 628, bytecode pc 39
    xs.log_hsq("this._data.return_info.is_go_xiuluo", this._data.return_info.is_go_xiuluo);
    // source line 629, bytecode pc 63
    return (this._data.return_info.is_go_xiuluo || 0);
},
    getIsInDemon: function() {
    // source line 632, bytecode pc 23
    return (this._data.return_info.is_in_xiuluo || 0);
}
}));
// source line 638, bytecode pc 881
(xs.Views.ClimbLadderPFKGView.Model.getInstance = function() {
    if ((xs.Views.ClimbLadderPFKGView.Model.s_Model == null)) {
        // source line 640, bytecode pc 82
        (xs.Views.ClimbLadderPFKGView.Model.s_Model = new xs.Views.ClimbLadderPFKGView.Model());
    }
    // source line 642, bytecode pc 108
    return xs.Views.ClimbLadderPFKGView.Model.s_Model;
});
