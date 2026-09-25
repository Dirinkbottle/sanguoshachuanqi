// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Climb/StartBattleScene.js:1
// source line 694, bytecode pc 173
(xs.Scene.StartBattleScene = cc.Layer.extend({
    ctor: function() {
    // source line 5, bytecode pc 12
    this._super();
},
    onEnterTransitionDidFinish: function() {
    var _modelMap;
    // source line 10, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 48
    (_modelMap = xs.Scene.Mgr.loadStatusAndClear("PvpFight_RandEvent"));
    if (_modelMap) {
        // source line 19, bytecode pc 112
        this.runAction(cc.CallFunc.create(function() {
    // source line 18, bytecode pc 34
    xs.Views.Mgr.showDialogByName("RandEvent", this);
}.bind(_modelMap)));
    }
},
    init: function() {
    var _model;
    if (!this._super()) {
        // source line 32, bytecode pc 19
        return false;
    }
    // source line 36, bytecode pc 36
    (this.fightQuickType = xs.Constants_FightQuickType_Nor);
    // source line 38, bytecode pc 71
    (_model = xs.Scene.StartBattleScene.Model.getInstance());
    if (!xs.Utils.isEmpty(_model)) {
    }
    // source line 52, bytecode pc 104
    return true;
},
    initEx: function() {
    var visibleSize, OFFESET, posM, posM_L, posM_R, posL, posL_L, posL_R, posR, posR_L, posR_R, _infoX, _progressYCaculate, _diffPosY;
    // source line 56, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 58, bytecode pc 30
    (OFFESET = -30);
    // source line 59, bytecode pc 38
    (this.m_data = null);
    // source line 60, bytecode pc 46
    (this.m_subView = null);
    // source line 61, bytecode pc 54
    (this.m_baseTouchPriority = null);
    // source line 63, bytecode pc 71
    (this.fightQuickType = xs.Constants_FightQuickType_Nor);
    // source line 65, bytecode pc 111
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Climp);
    // source line 68, bytecode pc 148
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 69, bytecode pc 169
    this.m_mainMenu.setBaseTouchPriority(-20);
    // source line 72, bytecode pc 220
    (this._title = xs.ccb_reader.load(xs.Cfg.CCBI.StartBattle_Title, this));
    // source line 78, bytecode pc 392
    xs.Utils.Node.attachNodes(this, this._title, {
    desc: "lb",
    sc: true,
    offset: {
        x: (((visibleSize.width / 2) - (this._title.getContentSize().width / 2)) - (xs.Views.MainMenuView.Width / 2)),
        y: (visibleSize.height - this._title.getContentSize().height)
    }
});
    // source line 83, bytecode pc 443
    (this._middleDiff = xs.ccb_reader.load(xs.Cfg.CCBI.StartBattle_ChooseDiff, this));
    // source line 85, bytecode pc 477
    this._middleDiff.getChildByTag(4).setVisible(false);
    // source line 86, bytecode pc 511
    this._middleDiff.getChildByTag(5).setVisible(false);
    // source line 87, bytecode pc 544
    this._middleDiff.getChildByTag(1).setVisible(false);
    // source line 88, bytecode pc 578
    this._middleDiff.getChildByTag(2).setVisible(false);
    // source line 90, bytecode pc 613
    (posM = this._middleDiff.getChildByTag(8).getPosition());
    // source line 91, bytecode pc 654
    (posM_L = cc.p((posM.x + 55), posM.y));
    // source line 92, bytecode pc 693
    (this._middleBtn = xs.Views.Btn.create("Btn_NewFight"));
    // source line 93, bytecode pc 715
    this._middleBtn.setPosition(posM_L);
    // source line 95, bytecode pc 756
    xs.Utils.Node.attachNodes(this._middleDiff, this._middleBtn);
    // source line 98, bytecode pc 797
    (posM_R = cc.p((posM.x - 55), posM.y));
    // source line 99, bytecode pc 836
    (this._middleQuickBtn = xs.Views.Btn.create("Btn_NewQuickFight"));
    // source line 100, bytecode pc 858
    this._middleQuickBtn.setPosition(posM_R);
    // source line 102, bytecode pc 899
    xs.Utils.Node.attachNodes(this._middleDiff, this._middleQuickBtn);
    // source line 107, bytecode pc 950
    (this._leftDiff = xs.ccb_reader.load(xs.Cfg.CCBI.StartBattle_ChooseDiff, this));
    // source line 109, bytecode pc 984
    this._leftDiff.getChildByTag(4).setVisible(false);
    // source line 110, bytecode pc 1018
    this._leftDiff.getChildByTag(5).setVisible(false);
    // source line 111, bytecode pc 1051
    this._leftDiff.getChildByTag(1).setVisible(false);
    // source line 112, bytecode pc 1085
    this._leftDiff.getChildByTag(3).setVisible(false);
    // source line 114, bytecode pc 1120
    (posL = this._leftDiff.getChildByTag(8).getPosition());
    // source line 115, bytecode pc 1161
    (posL_L = cc.p((posL.x + 55), posL.y));
    // source line 116, bytecode pc 1200
    (this._leftBtn = xs.Views.Btn.create("Btn_NewFight"));
    // source line 117, bytecode pc 1222
    this._leftBtn.setPosition(posL_L);
    // source line 119, bytecode pc 1263
    xs.Utils.Node.attachNodes(this._leftDiff, this._leftBtn);
    // source line 122, bytecode pc 1304
    (posL_R = cc.p((posL.x - 55), posL.y));
    // source line 123, bytecode pc 1343
    (this._leftQuickBtn = xs.Views.Btn.create("Btn_NewQuickFight"));
    // source line 124, bytecode pc 1365
    this._leftQuickBtn.setPosition(posL_R);
    // source line 126, bytecode pc 1406
    xs.Utils.Node.attachNodes(this._leftDiff, this._leftQuickBtn);
    // source line 129, bytecode pc 1457
    (this._rightDiff = xs.ccb_reader.load(xs.Cfg.CCBI.StartBattle_ChooseDiff, this));
    // source line 130, bytecode pc 1491
    this._rightDiff.getChildByTag(4).setVisible(false);
    // source line 131, bytecode pc 1525
    this._rightDiff.getChildByTag(5).setVisible(false);
    // source line 132, bytecode pc 1559
    this._rightDiff.getChildByTag(2).setVisible(false);
    // source line 133, bytecode pc 1593
    this._rightDiff.getChildByTag(3).setVisible(false);
    // source line 136, bytecode pc 1662
    (this._rightDiff.tag6 = xs.Utils.replaceLabelWithString(this._rightDiff, 6, [ "LS_danyao" ], [ 1 ]));
    // source line 137, bytecode pc 1731
    (this._middleDiff.tag6 = xs.Utils.replaceLabelWithString(this._middleDiff, 6, [ "LS_danyao" ], [ 1 ]));
    // source line 138, bytecode pc 1800
    (this._leftDiff.tag6 = xs.Utils.replaceLabelWithString(this._leftDiff, 6, [ "LS_danyao" ], [ 1 ]));
    // source line 155, bytecode pc 1869
    (this._middleDiff.tag9 = xs.Utils.replaceLabelWithString(this._middleDiff, 9, [ "LS_Nomb1" ], [ 1 ]));
    // source line 156, bytecode pc 1938
    (this._leftDiff.tag9 = xs.Utils.replaceLabelWithString(this._leftDiff, 9, [ "LS_Nomb1" ], [ 1 ]));
    // source line 157, bytecode pc 2007
    (this._rightDiff.tag9 = xs.Utils.replaceLabelWithString(this._rightDiff, 9, [ "LS_Nomb1" ], [ 1 ]));
    // source line 161, bytecode pc 2042
    (posR = this._rightDiff.getChildByTag(8).getPosition());
    // source line 162, bytecode pc 2083
    (posR_L = cc.p((posR.x + 55), posR.y));
    // source line 163, bytecode pc 2122
    (this._rightBtn = xs.Views.Btn.create("Btn_NewFight"));
    // source line 164, bytecode pc 2144
    this._rightBtn.setPosition(posR_L);
    // source line 166, bytecode pc 2185
    xs.Utils.Node.attachNodes(this._rightDiff, this._rightBtn);
    // source line 169, bytecode pc 2226
    (posR_R = cc.p((posR.x - 55), posR.y));
    // source line 170, bytecode pc 2265
    (this._rightQuickBtn = xs.Views.Btn.create("Btn_NewQuickFight"));
    // source line 171, bytecode pc 2287
    this._rightQuickBtn.setPosition(posR_R);
    // source line 173, bytecode pc 2328
    xs.Utils.Node.attachNodes(this._rightDiff, this._rightQuickBtn);
    // source line 179, bytecode pc 2365
    this._leftBtn.setOnClickCallBack(function() {
    // source line 178, bytecode pc 66
    this.requestForFight(xs.Scene.StartBattleScene.Model.getInstance().getRobotOneId(), xs.Constants_FightQuickType_Nor);
}.bind(this));
    // source line 183, bytecode pc 2402
    this._middleBtn.setOnClickCallBack(function() {
    // source line 182, bytecode pc 66
    this.requestForFight(xs.Scene.StartBattleScene.Model.getInstance().getRobotTwoId(), xs.Constants_FightQuickType_Nor);
}.bind(this));
    // source line 187, bytecode pc 2439
    this._rightBtn.setOnClickCallBack(function() {
    // source line 186, bytecode pc 66
    this.requestForFight(xs.Scene.StartBattleScene.Model.getInstance().getRobotThreeId(), xs.Constants_FightQuickType_Nor);
}.bind(this));
    // source line 193, bytecode pc 2476
    this._leftQuickBtn.setOnClickCallBack(function() {
    // source line 192, bytecode pc 66
    this.requestForFight(xs.Scene.StartBattleScene.Model.getInstance().getRobotOneId(), xs.Constants_FightQuickType_Quick);
}.bind(this));
    // source line 197, bytecode pc 2513
    this._middleQuickBtn.setOnClickCallBack(function() {
    // source line 196, bytecode pc 66
    this.requestForFight(xs.Scene.StartBattleScene.Model.getInstance().getRobotTwoId(), xs.Constants_FightQuickType_Quick);
}.bind(this));
    // source line 201, bytecode pc 2550
    this._rightQuickBtn.setOnClickCallBack(function() {
    // source line 200, bytecode pc 66
    this.requestForFight(xs.Scene.StartBattleScene.Model.getInstance().getRobotThreeId(), xs.Constants_FightQuickType_Quick);
}.bind(this));
    // source line 204, bytecode pc 2584
    this._leftDiff.getChildByTag(8).setVisible(false);
    // source line 205, bytecode pc 2618
    this._middleDiff.getChildByTag(8).setVisible(false);
    // source line 206, bytecode pc 2652
    this._rightDiff.getChildByTag(8).setVisible(false);
    // source line 209, bytecode pc 2703
    (this._info = xs.ccb_reader.load(xs.Cfg.CCBI.StartBattle_ChooseInfo, this));
    // source line 212, bytecode pc 2772
    (this._info.tag7 = xs.Utils.replaceLabelWithString(this._info, 7, [ "LS_ZbJn" ], [ 1 ]));
    // source line 213, bytecode pc 2837
    (_infoX = (((visibleSize.width / 2) - (this._info.getContentSize().width / 2)) - (xs.Views.MainMenuView.Width / 2)));
    // source line 219, bytecode pc 2921
    xs.Utils.Node.attachNodes(this, this._info, { desc: "lb", sc: true, offset: { x: _infoX, y: 0 } });
    // source line 223, bytecode pc 2972
    (this._progress = xs.ccb_reader.load(xs.Cfg.CCBI.StartBattle_ChooseProgress, this));
    // source line 226, bytecode pc 3021
    (_progressYCaculate = (this._info.getContentSize().height + this._progress.getContentSize().height));
    // source line 228, bytecode pc 3031
    (_diffPosY = (_diffPosY - 20));
    // source line 229, bytecode pc 3103
    (_diffPosY = (((((visibleSize.height - _progressYCaculate) - this._title.getContentSize().height) / 2) + _progressYCaculate) - (this._leftDiff.getContentSize().height / 2)));
    // source line 237, bytecode pc 3219
    xs.Utils.Node.attachNodes(this, this._leftDiff, {
    desc: "lb",
    sc: true,
    offset: { x: (153 - (this._leftDiff.getContentSize().width / 2)), y: (_diffPosY + OFFESET) }
});
    // source line 245, bytecode pc 3367
    xs.Utils.Node.attachNodes(this, this._middleDiff, {
    desc: "lb",
    sc: true,
    offset: {
        x: (((visibleSize.width / 2) - (this._middleDiff.getContentSize().width / 2)) - (xs.Views.MainMenuView.Width / 2)),
        y: (_diffPosY + OFFESET)
    }
});
    // source line 254, bytecode pc 3492
    xs.Utils.Node.attachNodes(this, this._rightDiff, {
    desc: "lb",
    sc: true,
    offset: {
        x: ((visibleSize.width - (this._middleDiff.getContentSize().width / 2)) - 247),
        y: (_diffPosY + OFFESET)
    }
});
    // source line 262, bytecode pc 3600
    xs.Utils.Node.attachNodes(this, this._progress, { desc: "lb", sc: true, offset: { x: (_infoX + 5), y: this._info.getContentSize().height } });
    // source line 265, bytecode pc 3643
    (this._progress.OriginalCartoonPos = this._progress.getChildByTag(2).getPosition());
    // source line 268, bytecode pc 3682
    (this.m_rankListBtn = xs.Views.Btn.create("Btn_RankAward"));
    // source line 269, bytecode pc 3707
    this.m_rankListBtn.setOnClickCallBack(this.rankListCallback);
    // source line 275, bytecode pc 3847
    xs.Utils.Node.attachNodes(this, this.m_rankListBtn, {
    desc: "lb",
    sc: true,
    offset: {
        x: ((visibleSize.width - xs.Views.MainMenuView.Width) - 70),
        y: ((this.m_rankListBtn.getContentSize().height / 2) + 10)
    }
});
    // source line 279, bytecode pc 3886
    (this.btnFormation = xs.Views.Btn.create("Btn_Formation"));
    // source line 280, bytecode pc 3911
    this.btnFormation.setOnClickCallBack(this.onBtnFormationClicked);
    // source line 286, bytecode pc 4065
    xs.Utils.Node.attachNodes(this, this.btnFormation, {
    desc: "lb",
    sc: true,
    offset: {
        x: (((visibleSize.width / 2) + (this._title.getContentSize().width / 2)) + 100),
        y: (visibleSize.height - (this.btnFormation.getContentSize().height / 2))
    }
});
},
    setBaseTouchPriority: function(priority) {
    // source line 297, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    requestService: function() {
    // source line 305, bytecode pc 23
    this.getParent().requeryRequestService();
},
    requestCallback: function(data) {
    var _model, _data, _xiuluo_list;
    // source line 311, bytecode pc 34
    (_model = xs.Scene.StartBattleScene.Model.getInstance());
    // source line 312, bytecode pc 53
    _model.setData(data);
    // source line 315, bytecode pc 87
    xs.Utils.Node.safeRemoveChild(this._propertyView);
    if ((_model.getStronger_info().length > 0)) {
        // source line 317, bytecode pc 146
        (this._propertyView = xs.Views.PropertyView.create());
        // source line 319, bytecode pc 194
        this._propertyView.setData(_model.getStronger_info(), _model.getCmn_info());
        // source line 321, bytecode pc 221
        this._propertyView.setBaseTouchPriority((this.m_baseTouchPriority - 1));
        // source line 322, bytecode pc 241
        this._propertyView.setListener(this);
        // source line 323, bytecode pc 277
        xs.Utils.Node.attachNodes(this, this._propertyView);
    } else {
        // source line 326, bytecode pc 295
        this.initEx();
        // source line 327, bytecode pc 308
        this.updateScene();
        // source line 329, bytecode pc 354
        (_data = xs.Scene.StartBattleScene.Model.getInstance().getAddlistOther());
        if ((_data && (_data.length > 0))) {
            // source line 332, bytecode pc 415
            xs.Views.Mgr.showDialogByName("GetPropsDialog", _data);
            // source line 333, bytecode pc 465
            xs.Scene.StartBattleScene.Model.getInstance().setAddlistOther({});
        }
        // source line 342, bytecode pc 511
        (_xiuluo_list = xs.Scene.StartBattleScene.Model.getInstance().getXiuluo_add());
        // source line 343, bytecode pc 538
        xs.log_hsq("_xiuluo_list", _xiuluo_list);
        // source line 344, bytecode pc 600
        (_xiuluo_list && ((_xiuluo_list.length > 0) && xs.Views.Mgr.showDialogByName("ShowAddListDialog", _xiuluo_list)));
    }
},
    requestForFight: function(id, fightQuickType) {
    var _result, param;
    if ((fightQuickType == xs.Constants_FightQuickType_Quick)) {
        // source line 364, bytecode pc 48
        (_result = xs.Profile.Permission.isUnLock_quickFight());
        if (!_result.result) {
            // source line 366, bytecode pc 98
            xs.Views.Mgr.showToast(_result.desc);
            // source line 367, bytecode pc 100
            return void 0;
        }
    }
    // source line 373, bytecode pc 110
    (this.fightQuickType = fightQuickType);
    // source line 374, bytecode pc 120
    (param = {});
    // source line 375, bytecode pc 132
    (param.other_id = id);
    // source line 376, bytecode pc 142
    (param.ignoreRandEvent = true);
    // source line 377, bytecode pc 152
    (param.forcepush = true);
    // source line 379, bytecode pc 192
    xs.Tools.Net.requestClimbLadderStartFight(param, this.serverBackData, this);
},
    _setRankType: function(model) {
    var visibleSize, str, m_pageView;
    // source line 383, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 384, bytecode pc 33
    (str = "");
    // source line 385, bytecode pc 119
    (m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), visibleSize.height)));
    // source line 386, bytecode pc 145
    switch (model.getfront_type().toString()) {
        case "1":
        if (model.getIsInDemon()) {
            // source line 389, bytecode pc 245
            (str = xs.Tools.String.createString("climbPrompt_2"));
        } else {
            // source line 391, bytecode pc 286
            (str = xs.Tools.String.createString("1071010014"));
        }
        break;
        case "2":
        if (model.getIsInDemon()) {
            // source line 396, bytecode pc 346
            (str = xs.Tools.String.createString("climbPrompt_jinX"));
        } else {
            // source line 398, bytecode pc 387
            (str = xs.Tools.String.createString("1071010013"));
        }
        break;
        case "3":
        if (model.getIsInDemon()) {
            // source line 403, bytecode pc 447
            (str = xs.Tools.String.createString("climbPrompt_yinX"));
        } else {
            // source line 405, bytecode pc 488
            (str = xs.Tools.String.createString("1071010012"));
        }
        break;
        case "4":
        if (model.getIsInDemon()) {
            // source line 410, bytecode pc 548
            (str = xs.Tools.String.createString("climbPrompt_tongX"));
        } else {
            // source line 412, bytecode pc 589
            (str = xs.Tools.String.createString("1071010011"));
        }
        break;
        default:
        // source line 416, bytecode pc 630
        (str = xs.Tools.String.createString("1071010011"));
        break;
    }
    // source line 420, bytecode pc 676
    m_pageView.addPage(str, cc.Node.create());
    // source line 423, bytecode pc 732
    xs.Utils.Node.attachNodes(this, m_pageView, { desc: "lb", sc: true });
},
    updateScene: function() {
    var obj, _jsonStr, _label1, _sprite, _label, _jianghunLabel, _boxStatusArray, num, scaleX, pSizeW, robot_info, _leftGeneralModel, _id, _type, _view, _strID, _str, _strStartID, _strStart, emptyFrame, closeFrame, pbutton15X, button15Str, button30Str, pbutton30X, button45Str, pbutton45X;
    // source line 428, bytecode pc 34
    (obj = xs.Scene.StartBattleScene.Model.getInstance());
    // source line 429, bytecode pc 51
    this._setRankType(obj);
    // source line 432, bytecode pc 127
    xs.Utils.replaceLabelWithString(this._info, 1, [ "LS_money" ], [ ("+" + obj.getPropertyStrongerAttack()) ]);
    // source line 434, bytecode pc 204
    xs.Utils.replaceLabelWithString(this._info, 2, [ "LS_money" ], [ ("+" + obj.getPropertyStrongerDefense()) ]);
    // source line 436, bytecode pc 281
    xs.Utils.replaceLabelWithString(this._info, 3, [ "LS_money" ], [ ("+" + obj.getPropertyStrongerHp()) ]);
    // source line 438, bytecode pc 358
    xs.Utils.replaceLabelWithString(this._info, 4, [ "LS_money" ], [ ("+" + obj.getPropertyStrongerWisdom()) ]);
    // source line 440, bytecode pc 435
    xs.Utils.replaceLabelWithString(this._info, 5, [ "LS_money" ], [ ("+" + obj.getTotalIntegration()) ]);
    // source line 443, bytecode pc 444
    (_jsonStr = []);
    // source line 444, bytecode pc 518
    (_label1 = xs.Views.Label.LabelExtSprite.createLabelObj("LS_money", xs.Tools.String.createString("auto_name_59")));
    // source line 445, bytecode pc 565
    (_sprite = xs.Views.Label.LabelExtSprite.createSpriteObj("Cmn02_icon_Cmn02_jianghun", "Cmn02"));
    // source line 446, bytecode pc 612
    (_label = xs.Views.Label.LabelExtSprite.createLabelObj("LS_money", "1"));
    // source line 447, bytecode pc 631
    _jsonStr.push(_label1);
    // source line 448, bytecode pc 650
    _jsonStr.push(_sprite);
    // source line 449, bytecode pc 669
    _jsonStr.push(_label);
    // source line 450, bytecode pc 725
    (_jianghunLabel = xs.Views.Label.LabelExtSprite.create(JSON.stringify(_jsonStr)));
    // source line 451, bytecode pc 759
    this._info.getChildByTag(10).setVisible(false);
    // source line 452, bytecode pc 806
    _jianghunLabel.setPosition(this._info.getChildByTag(10).getPosition());
    // source line 453, bytecode pc 828
    this._info.addChild(_jianghunLabel);
    // source line 455, bytecode pc 837
    (_jsonStr = []);
    // source line 456, bytecode pc 884
    (_sprite = xs.Views.Label.LabelExtSprite.createSpriteObj("Cmn02_icon_Cmn02_jianghun", "Cmn02"));
    // source line 457, bytecode pc 946
    (_label = xs.Views.Label.LabelExtSprite.createLabelObj("LS_money", ("+" + obj.getHavingIntergration())));
    // source line 458, bytecode pc 965
    _jsonStr.push(_sprite);
    // source line 459, bytecode pc 984
    _jsonStr.push(_label);
    // source line 460, bytecode pc 1040
    (_jianghunLabel = xs.Views.Label.LabelExtSprite.create(JSON.stringify(_jsonStr)));
    // source line 461, bytecode pc 1074
    this._info.getChildByTag(6).setVisible(false);
    // source line 462, bytecode pc 1121
    _jianghunLabel.setPosition(this._info.getChildByTag(6).getPosition());
    // source line 463, bytecode pc 1143
    this._info.addChild(_jianghunLabel);
    // source line 467, bytecode pc 1161
    (_boxStatusArray = obj.getBoxStatus());
    // source line 470, bytecode pc 1179
    (num = obj.getPointProgress());
    // source line 471, bytecode pc 1198
    (scaleX = (num / _boxStatusArray[2].box_condition));
    // source line 472, bytecode pc 1258
    (pSizeW = ((this._progress.getChildByTag(1).getContentSize().width * scaleX) + this._progress.OriginalCartoonPos.x));
    // source line 474, bytecode pc 1293
    this._progress.getChildByTag(1).setScaleX(scaleX);
    // source line 475, bytecode pc 1363
    this._progress.getChildByTag(2).setPosition(cc.p(pSizeW, this._progress.OriginalCartoonPos.y));
    // source line 476, bytecode pc 1436
    xs.Utils.replaceLabelWithString(this._progress.getChildByTag(2), 1, [ "LS_green" ], [ num ]);
    // source line 480, bytecode pc 1454
    (robot_info = obj.getRobotInfo());
    // source line 481, bytecode pc 1489
    this._rightDiff.tag6.setString(robot_info[2].front_info);
    // source line 482, bytecode pc 1523
    this._middleDiff.tag6.setString(robot_info[1].front_info);
    // source line 483, bytecode pc 1557
    this._leftDiff.tag6.setString(robot_info[0].front_info);
    // source line 487, bytecode pc 1601
    this._middleDiff.tag9.setString(("+" + obj.getMiddleCoin()));
    // source line 489, bytecode pc 1645
    this._leftDiff.tag9.setString(("+" + obj.getEasyCoin()));
    // source line 491, bytecode pc 1689
    this._rightDiff.tag9.setString(("+" + obj.getHardCoin()));
    // source line 494, bytecode pc 1723
    xs.Utils.Node.safeRemoveChild(this._leftGeneralView);
    // source line 495, bytecode pc 1757
    xs.Utils.Node.safeRemoveChild(this._middleGeneralView);
    // source line 496, bytecode pc 1791
    xs.Utils.Node.safeRemoveChild(this._rightGeneralView);
    // source line 497, bytecode pc 1832
    (_leftGeneralModel = xs.Models.General.createWithBase(robot_info[0].general_id));
    // source line 499, bytecode pc 1864
    (this._leftGeneralView = _leftGeneralModel.getRes().createOriginalSprite_Waist());
    // source line 500, bytecode pc 1919
    xs.Utils.Node.attachNodes(this._leftDiff.getChildByTag(7), this._leftGeneralView);
    // source line 501, bytecode pc 1985
    (this._middleGeneralView = xs.Models.General.createWithBase(robot_info[1].general_id).getRes().createOriginalSprite_Waist());
    // source line 502, bytecode pc 2040
    xs.Utils.Node.attachNodes(this._middleDiff.getChildByTag(7), this._middleGeneralView);
    // source line 503, bytecode pc 2107
    (this._rightGeneralView = xs.Models.General.createWithBase(robot_info[2].general_id).getRes().createOriginalSprite_Waist());
    // source line 504, bytecode pc 2162
    xs.Utils.Node.attachNodes(this._rightDiff.getChildByTag(7), this._rightGeneralView);
    // source line 506, bytecode pc 2186
    this._leftGeneralView.setScale(0.65);
    // source line 507, bytecode pc 2210
    this._middleGeneralView.setScale(0.65);
    // source line 508, bytecode pc 2234
    this._rightGeneralView.setScale(0.65);
    // source line 511, bytecode pc 2268
    this._leftDiff.getChildByTag(10).setVisible(false);
    if (((typeof(robot_info[0].reward_info) == "object") && (robot_info[0].reward_info.length > 0))) {
        // source line 514, bytecode pc 2347
        this._leftDiff.getChildByTag(10).setVisible(true);
        // source line 515, bytecode pc 2368
        (_id = robot_info[0].reward_info[0].id);
        // source line 516, bytecode pc 2389
        (_type = robot_info[0].reward_info[0].type);
        // source line 518, bytecode pc 2466
        (_view = xs.Tools.Model.createModelWithBase(parseInt(_type), _id.toString(), 1).createIcon_Grade());
        // source line 520, bytecode pc 2487
        _view.setScale(0.65);
        // source line 521, bytecode pc 2523
        xs.Utils.replaceNode(this._leftDiff, 10, _view);
    }
    // source line 523, bytecode pc 2557
    this._middleDiff.getChildByTag(10).setVisible(false);
    if (((typeof(robot_info[1].reward_info) == "object") && (robot_info[1].reward_info.length > 0))) {
        // source line 526, bytecode pc 2636
        this._middleDiff.getChildByTag(10).setVisible(true);
        // source line 527, bytecode pc 2657
        (_id = robot_info[1].reward_info[0].id);
        // source line 528, bytecode pc 2678
        (_type = robot_info[1].reward_info[0].type);
        // source line 530, bytecode pc 2755
        (_view = xs.Tools.Model.createModelWithBase(parseInt(_type), _id.toString(), 1).createIcon_Grade());
        // source line 531, bytecode pc 2776
        _view.setScale(0.65);
        // source line 532, bytecode pc 2812
        xs.Utils.replaceNode(this._middleDiff, 10, _view);
    }
    // source line 535, bytecode pc 2846
    this._rightDiff.getChildByTag(10).setVisible(false);
    if (((typeof(robot_info[2].reward_info) == "object") && (robot_info[2].reward_info.length > 0))) {
        // source line 538, bytecode pc 2927
        this._rightDiff.getChildByTag(10).setVisible(true);
        // source line 539, bytecode pc 2949
        (_id = robot_info[2].reward_info[0].id);
        // source line 540, bytecode pc 2971
        (_type = robot_info[2].reward_info[0].type);
        // source line 542, bytecode pc 3048
        (_view = xs.Tools.Model.createModelWithBase(parseInt(_type), _id.toString(), 1).createIcon_Grade());
        // source line 544, bytecode pc 3069
        _view.setScale(0.65);
        // source line 545, bytecode pc 3105
        xs.Utils.replaceNode(this._rightDiff, 10, _view);
    }
    // source line 549, bytecode pc 3133
    (_strID = obj.getData().return_info.point_name);
    // source line 551, bytecode pc 3167
    (_str = xs.Factorys.String.create(_strID));
    // source line 553, bytecode pc 3226
    xs.Utils.replaceLabelWithString(this._title, 1, [ "LS_guanqiaName" ], [ _str ]);
    // source line 558, bytecode pc 3254
    (_strStartID = obj.getData().return_info.stage_name);
    // source line 559, bytecode pc 3288
    (_strStart = xs.Factorys.String.create(_strStartID));
    // source line 564, bytecode pc 3368
    this._info.tag7.setString(xs.Tools.String.createString("climb_gainAward").convWithArgs([ _strStart ]));
    // source line 575, bytecode pc 3402
    (emptyFrame = xs.Cfg.Sprite.Cmn03.Cmn03_0_8_1_xiaobaoxiang_1.frameName);
    // source line 576, bytecode pc 3436
    (closeFrame = xs.Cfg.Sprite.Cmn03.Cmn03_0_8_1_xiaobaoxiang.frameName);
    if ((_boxStatusArray[0].is_open == true)) {
        // source line 579, bytecode pc 3500
        (this._progress.button15 = xs.Libs.Views.Button.createWithSpriteFrame(emptyFrame));
    } else {
        // source line 583, bytecode pc 3552
        (this._progress.button15 = xs.Libs.Views.Button.createWithSpriteFrame(closeFrame));
        // source line 584, bytecode pc 3581
        this._progress.button15.setOnClickCallBack(function() {
});
    }
    // source line 591, bytecode pc 3610
    this._progress.button15.setScale(0.8);
    // source line 592, bytecode pc 3668
    xs.Utils.replaceNode(this._progress.getChildByTag(7), 3, this._progress.button15);
    // source line 593, bytecode pc 3764
    (pbutton15X = Math.floor((((this._progress.getChildByTag(1).getContentSize().width * _boxStatusArray[0].box_condition) / _boxStatusArray[2].box_condition) + this._progress.OriginalCartoonPos.x)));
    // source line 595, bytecode pc 3844
    (button15Str = xs.Factorys.Label.createByStyleIdWithString("LS_SXJC", (_boxStatusArray[0].box_condition + xs.Tools.String.createString("auto_name_60"))));
    // source line 596, bytecode pc 3887
    xs.Utils.Node.attachNodes(this._progress.button15, button15Str);
    // source line 597, bytecode pc 3944
    button15Str.setPosition(cc.p((button15Str.getContentSize().width / 2), 0));
    // source line 598, bytecode pc 3980
    this._progress.getChildByTag(7).setPositionX(pbutton15X);
    if ((_boxStatusArray[1].is_open == true)) {
        // source line 603, bytecode pc 4044
        (this._progress.button30 = xs.Libs.Views.Button.createWithSpriteFrame(emptyFrame));
    } else {
        // source line 605, bytecode pc 4096
        (this._progress.button30 = xs.Libs.Views.Button.createWithSpriteFrame(closeFrame));
        // source line 606, bytecode pc 4125
        this._progress.button30.setOnClickCallBack(function() {
});
    }
    // source line 613, bytecode pc 4154
    this._progress.button30.setScale(0.8);
    // source line 614, bytecode pc 4212
    xs.Utils.replaceNode(this._progress.getChildByTag(8), 4, this._progress.button30);
    // source line 615, bytecode pc 4292
    (button30Str = xs.Factorys.Label.createByStyleIdWithString("LS_SXJC", (_boxStatusArray[1].box_condition + xs.Tools.String.createString("auto_name_60"))));
    // source line 616, bytecode pc 4349
    button30Str.setPosition(cc.p((button30Str.getContentSize().width / 2), 0));
    // source line 617, bytecode pc 4392
    xs.Utils.Node.attachNodes(this._progress.button30, button30Str);
    // source line 618, bytecode pc 4488
    (pbutton30X = Math.floor((((this._progress.getChildByTag(1).getContentSize().width * _boxStatusArray[1].box_condition) / _boxStatusArray[2].box_condition) + this._progress.OriginalCartoonPos.x)));
    // source line 619, bytecode pc 4524
    this._progress.getChildByTag(8).setPositionX(pbutton30X);
    // source line 622, bytecode pc 4558
    (emptyFrame = xs.Cfg.Sprite.Cmn03.Cmn03_0_8_1_xiaobaoxiang_2_1.frameName);
    // source line 623, bytecode pc 4592
    (closeFrame = xs.Cfg.Sprite.Cmn03.Cmn03_0_8_1_xiaobaoxiang_2.frameName);
    if ((_boxStatusArray[2].is_open == true)) {
        // source line 625, bytecode pc 4657
        (this._progress.button45 = xs.Libs.Views.Button.createWithSpriteFrame(emptyFrame));
    } else {
        // source line 628, bytecode pc 4709
        (this._progress.button45 = xs.Libs.Views.Button.createWithSpriteFrame(closeFrame));
        // source line 629, bytecode pc 4738
        this._progress.button45.setOnClickCallBack(function() {
});
    }
    // source line 636, bytecode pc 4767
    this._progress.button45.setScale(0.8);
    // source line 637, bytecode pc 4825
    xs.Utils.replaceNode(this._progress.getChildByTag(9), 5, this._progress.button45);
    // source line 638, bytecode pc 4906
    (button45Str = xs.Factorys.Label.createByStyleIdWithString("LS_SXJC", (_boxStatusArray[2].box_condition + xs.Tools.String.createString("auto_name_60"))));
    // source line 639, bytecode pc 4963
    button45Str.setPosition(cc.p((button45Str.getContentSize().width / 2), 0));
    // source line 640, bytecode pc 5006
    xs.Utils.Node.attachNodes(this._progress.button45, button45Str);
    // source line 641, bytecode pc 5103
    (pbutton45X = Math.floor((((this._progress.getChildByTag(1).getContentSize().width * _boxStatusArray[2].box_condition) / _boxStatusArray[2].box_condition) + this._progress.OriginalCartoonPos.x)));
    // source line 642, bytecode pc 5139
    this._progress.getChildByTag(9).setPositionX(pbutton45X);
    // source line 644, bytecode pc 5164
    this._progress.button15.setTouchEnabled(false);
    // source line 645, bytecode pc 5189
    this._progress.button30.setTouchEnabled(false);
    // source line 646, bytecode pc 5214
    this._progress.button45.setTouchEnabled(false);
    // source line 649, bytecode pc 5249
    this._progress.getChildByTag(2).setZOrder(100);
},
    serverBackData: function(data, _modelMap) {
    var obj;
    if (!xs.Utils.isEmpty(data.is_expired)) {
        if ((data.is_expired == true)) {
            // source line 662, bytecode pc 214
            (obj = xs.Views.Mgr.showDialogByName("OneBtnDialog", {
    titleText: xs.Tools.String.createString("climb_pasDue"),
    contentText: xs.Tools.String.createString("climb_challengePasDue"),
    btnText: xs.Tools.String.createString("climb_backhaul"),
    btnCallback: function() {
    // source line 663, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("MainMenuScene");
}
}));
            // source line 666, bytecode pc 284
            obj.getRealDialog().getTitleText().setString(xs.Tools.String.createString("climb_pasDue"));
            // source line 667, bytecode pc 354
            obj.getRealDialog().getContentText().setString(xs.Tools.String.createString("climb_challengePasDue"));
            // source line 668, bytecode pc 356
            return void 0;
        }
    }
    // source line 671, bytecode pc 393
    xs.Scene.Mgr.saveStatus("PvpFight_RandEvent", _modelMap);
    // source line 673, bytecode pc 413
    (this._addlist_other = data.fight_result.add_list_other);
    // source line 674, bytecode pc 463
    xs.Scene.StartBattleScene.Model.getInstance().setAddlistOther(this._addlist_other);
    if ((this.fightQuickType == xs.Constants_FightQuickType_Nor)) {
        // source line 679, bytecode pc 554
        xs.Tools.Scene.gotoFight(xs.Constant_FightScene_Type_Climp, xs.Models.FightInfo.create(data));
    } else {
        // source line 684, bytecode pc 617
        xs.Views.QuickFightView.showWithFightInfo(xs.Models.FightInfo.create(data));
    }
    // source line 687, bytecode pc 634
    (this.fightQuickType = xs.Constants_FightQuickType_Nor);
},
    onBtnFormationClicked: function() {
    // source line 691, bytecode pc 34
    xs.Views.Mgr.showDialogByName("QueueTeamDialog", true);
},
    rankListCallback: function() {
    // source line 696, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("ClimbLadderRankListScene");
}
}));
// source line 699, bytecode pc 199
(xs.Scene.StartBattleScene.create = function() {
    var view;
    // source line 700, bytecode pc 23
    (view = new xs.Scene.StartBattleScene());
    if ((view && view.init())) {
        // source line 702, bytecode pc 55
        return view;
    }
    // source line 704, bytecode pc 80
    xs.assert(false, "can't create StartBattleScene");
    // source line 705, bytecode pc 82
    return null;
});
// source line 709, bytecode pc 238
(xs.Scene.StartBattleScene.cfg = { FIGHT_STATUS_NORMAL: 0, FIGHT_STATUS_RESULT: 1 });
// source line 1040, bytecode pc 397
(xs.Views.PropertyView = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 726, bytecode pc 12
    this._super();
},
    init: function() {
    var visibleOrigin, visibleSize, middlePosX, PosY, rankPos, rankSize, infoX;
    if (!this._super()) {
        // source line 730, bytecode pc 19
        return false;
    }
    // source line 732, bytecode pc 34
    this.setIsEatEvent(true);
    // source line 733, bytecode pc 42
    (this.m_ccbNode_title = null);
    // source line 734, bytecode pc 50
    (this.m_ccbNode_three = null);
    // source line 736, bytecode pc 90
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Climp);
    // source line 738, bytecode pc 141
    (this.m_ccbNode_info = xs.ccb_reader.load(xs.Cfg.CCBI.StartBattle_Property_Info, this));
    // source line 741, bytecode pc 178
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 742, bytecode pc 199
    this.m_mainMenu.setBaseTouchPriority(-20);
    // source line 744, bytecode pc 224
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 745, bytecode pc 249
    (visibleSize = xs.director.getVisibleSize());
    // source line 748, bytecode pc 300
    (this.m_ccbNode_title = xs.ccb_reader.load(xs.Cfg.CCBI.StartBattle_Property_Title, this));
    // source line 754, bytecode pc 472
    xs.Utils.Node.attachNodes(this, this.m_ccbNode_title, {
    desc: "lb",
    sc: true,
    offset: {
        y: (visibleSize.height - this.m_ccbNode_title.getContentSize().height),
        x: (((visibleSize.width / 2) - (this.m_ccbNode_title.getContentSize().width / 2)) - (xs.Views.MainMenuView.Width / 2))
    }
});
    // source line 758, bytecode pc 535
    (this.m_ccbNode_title_nameLab = xs.Utils.replaceLabelWithString(this.m_ccbNode_title, 1, [ "LS_popUI1" ], [ 1 ]));
    // source line 759, bytecode pc 586
    this.m_ccbNode_title_nameLab.setString(xs.Tools.String.createString("climb_selectUp"));
    // source line 761, bytecode pc 637
    (this.m_ccbNode_Icon1 = xs.ccb_reader.load(xs.Cfg.CCBI.StartBattle_Property, this));
    // source line 762, bytecode pc 678
    (middlePosX = ((visibleSize.width / 2) - (this.m_ccbNode_Icon1.getContentSize().width / 2)));
    // source line 763, bytecode pc 788
    (PosY = (((((visibleSize.height - this.m_ccbNode_title.getContentSize().height) - this.m_ccbNode_info.getContentSize().height) / 2) + this.m_ccbNode_info.getContentSize().height) - (this.m_ccbNode_Icon1.getContentSize().height / 2)));
    // source line 769, bytecode pc 900
    xs.Utils.Node.attachNodes(this, this.m_ccbNode_Icon1, {
    desc: "lb",
    sc: true,
    offset: { y: PosY, x: (153 - (this.m_ccbNode_Icon1.getContentSize().width / 2)) }
});
    // source line 772, bytecode pc 963
    (this.m_ccbNode_Icon1_tag1 = xs.Utils.replaceLabelWithString(this.m_ccbNode_Icon1, 1, [ "LS_BntRed" ], [ 1 ]));
    // source line 773, bytecode pc 1027
    (this.m_ccbNode_Icon1_tag2 = xs.Utils.replaceLabelWithString(this.m_ccbNode_Icon1, 2, [ "LS_SXJC_nomb" ], [ 1 ]));
    // source line 774, bytecode pc 1091
    (this.m_ccbNode_Icon1_tag3 = xs.Utils.replaceLabelWithString(this.m_ccbNode_Icon1, 3, [ "LS_SXJC_shuxing" ], [ 1 ]));
    // source line 775, bytecode pc 1118
    (this.m_ccbNode_Icon1_tag4 = this.m_ccbNode_Icon1.getChildByTag(4));
    // source line 776, bytecode pc 1139
    this.m_ccbNode_Icon1_tag2.setRotation(-20);
    // source line 779, bytecode pc 1178
    (this.m_ccbNode_Icon1_Button = xs.Views.Btn.createByStyleId("BS_Btn3"));
    // source line 780, bytecode pc 1229
    this.m_ccbNode_Icon1_Button.setString(xs.Tools.String.createString("1070610028"));
    // source line 781, bytecode pc 1265
    this.m_ccbNode_Icon1_Button.setPosition(this.m_ccbNode_Icon1_tag4.getPosition());
    // source line 782, bytecode pc 1306
    xs.Utils.Node.attachNodes(this.m_ccbNode_Icon1, this.m_ccbNode_Icon1_Button);
    // source line 786, bytecode pc 1357
    (this.m_ccbNode_Icon2 = xs.ccb_reader.load(xs.Cfg.CCBI.StartBattle_Property, this));
    // source line 792, bytecode pc 1467
    xs.Utils.Node.attachNodes(this, this.m_ccbNode_Icon2, { desc: "lb", sc: true, offset: { y: PosY, x: (middlePosX - (xs.Views.MainMenuView.Width / 2)) } });
    // source line 795, bytecode pc 1530
    (this.m_ccbNode_Icon2_tag1 = xs.Utils.replaceLabelWithString(this.m_ccbNode_Icon2, 1, [ "LS_BntRed" ], [ 1 ]));
    // source line 796, bytecode pc 1594
    (this.m_ccbNode_Icon2_tag2 = xs.Utils.replaceLabelWithString(this.m_ccbNode_Icon2, 2, [ "LS_SXJC_nomb" ], [ 1 ]));
    // source line 797, bytecode pc 1658
    (this.m_ccbNode_Icon2_tag3 = xs.Utils.replaceLabelWithString(this.m_ccbNode_Icon2, 3, [ "LS_SXJC_shuxing" ], [ 1 ]));
    // source line 798, bytecode pc 1685
    (this.m_ccbNode_Icon2_tag4 = this.m_ccbNode_Icon2.getChildByTag(4));
    // source line 799, bytecode pc 1706
    this.m_ccbNode_Icon2_tag2.setRotation(-20);
    // source line 801, bytecode pc 1745
    (this.m_ccbNode_Icon2_Button = xs.Views.Btn.createByStyleId("BS_Btn3"));
    // source line 802, bytecode pc 1796
    this.m_ccbNode_Icon2_Button.setString(xs.Tools.String.createString("1070610028"));
    // source line 803, bytecode pc 1832
    this.m_ccbNode_Icon2_Button.setPosition(this.m_ccbNode_Icon2_tag4.getPosition());
    // source line 804, bytecode pc 1873
    xs.Utils.Node.attachNodes(this.m_ccbNode_Icon2, this.m_ccbNode_Icon2_Button);
    // source line 808, bytecode pc 1924
    (this.m_ccbNode_Icon3 = xs.ccb_reader.load(xs.Cfg.CCBI.StartBattle_Property, this));
    // source line 814, bytecode pc 2045
    xs.Utils.Node.attachNodes(this, this.m_ccbNode_Icon3, {
    desc: "lb",
    sc: true,
    offset: { y: PosY, x: ((visibleSize.width - (this.m_ccbNode_Icon3.getContentSize().width / 2)) - 247) }
});
    // source line 817, bytecode pc 2108
    (this.m_ccbNode_Icon3_tag1 = xs.Utils.replaceLabelWithString(this.m_ccbNode_Icon3, 1, [ "LS_BntRed" ], [ 1 ]));
    // source line 818, bytecode pc 2172
    (this.m_ccbNode_Icon3_tag2 = xs.Utils.replaceLabelWithString(this.m_ccbNode_Icon3, 2, [ "LS_SXJC_nomb" ], [ 1 ]));
    // source line 819, bytecode pc 2236
    (this.m_ccbNode_Icon3_tag3 = xs.Utils.replaceLabelWithString(this.m_ccbNode_Icon3, 3, [ "LS_SXJC_shuxing" ], [ 1 ]));
    // source line 820, bytecode pc 2263
    (this.m_ccbNode_Icon3_tag4 = this.m_ccbNode_Icon3.getChildByTag(4));
    // source line 821, bytecode pc 2284
    this.m_ccbNode_Icon3_tag2.setRotation(-20);
    // source line 823, bytecode pc 2323
    (this.m_ccbNode_Icon3_Button = xs.Views.Btn.createByStyleId("BS_Btn3"));
    // source line 824, bytecode pc 2374
    this.m_ccbNode_Icon3_Button.setString(xs.Tools.String.createString("1070610028"));
    // source line 825, bytecode pc 2410
    this.m_ccbNode_Icon3_Button.setPosition(this.m_ccbNode_Icon3_tag4.getPosition());
    // source line 826, bytecode pc 2451
    xs.Utils.Node.attachNodes(this.m_ccbNode_Icon3, this.m_ccbNode_Icon3_Button);
    // source line 830, bytecode pc 2477
    (this.m_ccbNode_info_tag1 = this.m_ccbNode_info.getChildByTag(1));
    // source line 831, bytecode pc 2504
    (this.m_ccbNode_info_tag2 = this.m_ccbNode_info.getChildByTag(2));
    // source line 832, bytecode pc 2531
    (this.m_ccbNode_info_tag3 = this.m_ccbNode_info.getChildByTag(3));
    // source line 833, bytecode pc 2558
    (this.m_ccbNode_info_tag4 = this.m_ccbNode_info.getChildByTag(4));
    // source line 834, bytecode pc 2585
    (this.m_ccbNode_info_tag5 = this.m_ccbNode_info.getChildByTag(5));
    // source line 836, bytecode pc 2624
    (this.m_rankListBtn = xs.Views.Btn.create("Btn_RankAward"));
    // source line 837, bytecode pc 2649
    this.m_rankListBtn.setOnClickCallBack(this.rankListCallback);
    // source line 843, bytecode pc 2789
    xs.Utils.Node.attachNodes(this, this.m_rankListBtn, {
    desc: "lb",
    sc: true,
    offset: {
        x: ((visibleSize.width - xs.Views.MainMenuView.Width) - 70),
        y: ((this.m_rankListBtn.getContentSize().height / 2) - 20)
    }
});
    // source line 846, bytecode pc 2810
    this.m_rankListBtn.setTouchPriority(-100);
    // source line 847, bytecode pc 2834
    this.m_rankListBtn.setScale(0.8);
    // source line 851, bytecode pc 2855
    (rankPos = this.m_rankListBtn.getPosition());
    // source line 852, bytecode pc 2876
    (rankSize = this.m_rankListBtn.getContentSize());
    // source line 853, bytecode pc 2929
    (infoX = (((rankPos.x - (rankSize.width / 2)) / 2) - (this.m_ccbNode_info.getContentSize().width / 2)));
    // source line 859, bytecode pc 3013
    xs.Utils.Node.attachNodes(this, this.m_ccbNode_info, { desc: "lb", sc: true, offset: { x: infoX, y: 0 } });
    // source line 862, bytecode pc 3015
    return true;
},
    rankListCallback: function() {
    // source line 866, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("ClimbLadderRankListScene");
},
    serverBackData: function(data) {
    var obj, _Layer;
    if ((this.m_listener != null)) {
        // source line 871, bytecode pc 30
        this.m_listener.requestService();
    }
    if (!xs.Utils.isEmpty(data.is_expired)) {
        if ((data.is_expired == true)) {
            // source line 880, bytecode pc 245
            (obj = xs.Views.Mgr.showDialogByName("OneBtnDialog", {
    titleText: xs.Tools.String.createString("climb_pasDue"),
    contentText: xs.Tools.String.createString("climb_challengePasDue"),
    btnText: xs.Tools.String.createString("climb_backhaul"),
    btnCallback: function() {
    // source line 881, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("MainMenuScene");
}
}));
            // source line 884, bytecode pc 315
            obj.getRealDialog().getTitleText().setString(xs.Tools.String.createString("climb_pasDue"));
            // source line 885, bytecode pc 385
            obj.getRealDialog().getContentText().setString(xs.Tools.String.createString("climb_challengePasDue"));
            // source line 886, bytecode pc 387
            return void 0;
        }
    }
    // source line 891, bytecode pc 419
    (_Layer = xs.Tools.UI.addTransparentBg(this));
    // source line 892, bytecode pc 437
    _Layer.setOpacity(100);
    // source line 893, bytecode pc 481
    (this.m_loadArm = xs.Views.Armature.AutoAudioArmature.create("Arm_Loading"));
    // source line 894, bytecode pc 567
    xs.Utils.Node.attachNodes(this, this.m_loadArm, { desc: "rb", sc: true, offset: { x: -222, y: 0 } });
    // source line 895, bytecode pc 591
    this.m_loadArm.playAniById("loading");
    // source line 896, bytecode pc 611
    this.m_rankListBtn.setTouchEnabled(false);
    // source line 897, bytecode pc 631
    this.m_ccbNode_Icon3_Button.setTouchEnabled(false);
    // source line 898, bytecode pc 651
    this.m_ccbNode_Icon2_Button.setTouchEnabled(false);
    // source line 899, bytecode pc 671
    this.m_ccbNode_Icon1_Button.setTouchEnabled(false);
},
    exchangeBtnCallback1: function() {
    var param, info, common_info_point;
    // source line 903, bytecode pc 9
    (param = {});
    // source line 904, bytecode pc 19
    (info = this.m_data);
    // source line 905, bytecode pc 39
    (common_info_point = this.m_data.tower_common_info.point_info);
    if ((common_info_point.having_integration < info[0].need_integration)) {
        // source line 907, bytecode pc 123
        xs.Views.Mgr.showToast(xs.Tools.String.createString("climb_soulInsufficient!"));
        // source line 914, bytecode pc 125
        return void 0;
    }
    // source line 916, bytecode pc 144
    (param.id = info[0].id);
    // source line 918, bytecode pc 184
    xs.Tools.Net.requestClimbLadderProperty(param, this.serverBackData, this);
},
    exchangeBtnCallback2: function() {
    var param, info, common_info_point;
    // source line 922, bytecode pc 9
    (param = {});
    // source line 923, bytecode pc 19
    (info = this.m_data);
    // source line 924, bytecode pc 39
    (common_info_point = this.m_data.tower_common_info.point_info);
    if ((common_info_point.having_integration < info[1].need_integration)) {
        // source line 932, bytecode pc 123
        xs.Views.Mgr.showToast(xs.Tools.String.createString("climb_soulInsufficient!"));
        // source line 933, bytecode pc 125
        return void 0;
    }
    // source line 935, bytecode pc 144
    (param.id = info[1].id);
    // source line 936, bytecode pc 184
    xs.Tools.Net.requestClimbLadderProperty(param, this.serverBackData, this);
},
    exchangeBtnCallback3: function() {
    var param, info, common_info_point;
    // source line 940, bytecode pc 9
    (param = {});
    // source line 941, bytecode pc 19
    (info = this.m_data);
    // source line 942, bytecode pc 39
    (common_info_point = this.m_data.tower_common_info.point_info);
    if ((common_info_point.having_integration < info[2].need_integration)) {
        // source line 944, bytecode pc 124
        xs.Views.Mgr.showToast(xs.Tools.String.createString("climb_soulInsufficient!"));
        // source line 951, bytecode pc 126
        return void 0;
    }
    // source line 953, bytecode pc 146
    (param.id = info[2].id);
    // source line 954, bytecode pc 186
    xs.Tools.Net.requestClimbLadderProperty(param, this.serverBackData, this);
},
    setBaseTouchPriority: function(priority) {
    // source line 958, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 959, bytecode pc 36
    this.m_ccbNode_Icon1_Button.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 960, bytecode pc 63
    this.m_ccbNode_Icon2_Button.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 961, bytecode pc 90
    this.m_ccbNode_Icon3_Button.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 963, bytecode pc 117
    this.m_ccbNode_Icon3_Button.addCallBackForEvent(this, this.exchangeBtnCallback3);
    // source line 964, bytecode pc 144
    this.m_ccbNode_Icon2_Button.addCallBackForEvent(this, this.exchangeBtnCallback2);
    // source line 965, bytecode pc 171
    this.m_ccbNode_Icon1_Button.addCallBackForEvent(this, this.exchangeBtnCallback1);
},
    setData: function(data, cmnData) {
    var info, str, common_info, point_info, stronger_info, _jsonStr, _label1, _sprite, _label;
    // source line 969, bytecode pc 9
    (this.m_data = data);
    if ((this.m_data != null)) {
        // source line 971, bytecode pc 32
        (info = this.m_data);
        // source line 973, bytecode pc 68
        (str = xs.Tools.String.createString("integration"));
        // source line 974, bytecode pc 101
        this.m_ccbNode_Icon1_tag1.setString((info[0].need_integration + str));
        // source line 975, bytecode pc 130
        this.m_ccbNode_Icon1_tag2.setString(info[0].incre_per);
        // source line 976, bytecode pc 161
        this.setStrongerStringByTypeValue(this.m_ccbNode_Icon1_tag3, info[0].stronger_type);
        // source line 978, bytecode pc 194
        this.m_ccbNode_Icon2_tag1.setString((info[1].need_integration + str));
        // source line 979, bytecode pc 223
        this.m_ccbNode_Icon2_tag2.setString(info[1].incre_per);
        // source line 980, bytecode pc 254
        this.setStrongerStringByTypeValue(this.m_ccbNode_Icon2_tag3, info[1].stronger_type);
        // source line 982, bytecode pc 288
        this.m_ccbNode_Icon3_tag1.setString((info[2].need_integration + str));
        // source line 983, bytecode pc 318
        this.m_ccbNode_Icon3_tag2.setString(info[2].incre_per);
        // source line 984, bytecode pc 350
        this.setStrongerStringByTypeValue(this.m_ccbNode_Icon3_tag3, info[2].stronger_type);
        // source line 987, bytecode pc 365
        (this.m_data.tower_common_info = cmnData);
        // source line 988, bytecode pc 380
        (common_info = this.m_data.tower_common_info);
        // source line 989, bytecode pc 392
        (point_info = common_info.point_info);
        // source line 990, bytecode pc 404
        (stronger_info = common_info.property_stronger_info);
        // source line 995, bytecode pc 437
        this.m_ccbNode_info_tag2.setString(("+" + stronger_info.hp_percent));
        // source line 996, bytecode pc 470
        this.m_ccbNode_info_tag3.setString(("+" + stronger_info.defense_percent));
        // source line 997, bytecode pc 503
        this.m_ccbNode_info_tag4.setString(("+" + stronger_info.attack_percent));
        // source line 998, bytecode pc 536
        this.m_ccbNode_info_tag5.setString(("+" + stronger_info.wisdom_percent));
        // source line 1001, bytecode pc 545
        (_jsonStr = []);
        // source line 1002, bytecode pc 619
        (_label1 = xs.Views.Label.LabelExtSprite.createLabelObj("LS_chooseServer", xs.Tools.String.createString("auto_name_59")));
        // source line 1003, bytecode pc 666
        (_sprite = xs.Views.Label.LabelExtSprite.createSpriteObj("Cmn02_icon_Cmn02_jianghun", "Cmn02"));
        // source line 1004, bytecode pc 713
        (_label = xs.Views.Label.LabelExtSprite.createLabelObj("LS_chooseServer", "1，"));
        // source line 1005, bytecode pc 732
        _jsonStr.push(_label1);
        // source line 1006, bytecode pc 751
        _jsonStr.push(_sprite);
        // source line 1007, bytecode pc 770
        _jsonStr.push(_label);
        // source line 1008, bytecode pc 844
        (_label1 = xs.Views.Label.LabelExtSprite.createLabelObj("LS_chooseServer", xs.Tools.String.createString("auto_name_61")));
        // source line 1009, bytecode pc 891
        (_sprite = xs.Views.Label.LabelExtSprite.createSpriteObj("Cmn02_icon_Cmn02_jianghun", "Cmn02"));
        // source line 1010, bytecode pc 941
        (_label = xs.Views.Label.LabelExtSprite.createLabelObj("LS_chooseServer", point_info.having_integration));
        // source line 1011, bytecode pc 960
        _jsonStr.push(_label1);
        // source line 1012, bytecode pc 979
        _jsonStr.push(_sprite);
        // source line 1013, bytecode pc 998
        _jsonStr.push(_label);
        // source line 1014, bytecode pc 1061
        (_jianghunLabel = xs.Views.Label.LabelExtSprite.create(JSON.stringify(_jsonStr)));
        // source line 1015, bytecode pc 1107
        _jianghunLabel.setAnchorPoint(cc.p(0.5, 0.5));
        // source line 1021, bytecode pc 1190
        xs.Utils.Node.attachNodes(this, _jianghunLabel, { desc: "cb", sc: true, offset: { y: 120, x: -60 } });
    }
},
    setStrongerStringByTypeValue: function(target, type) {
    if ((type == 1)) {
        // source line 1031, bytecode pc 57
        target.setString(xs.Tools.String.createString("climb_atk"));
    } else {
        if ((type == 2)) {
            // source line 1033, bytecode pc 121
            target.setString(xs.Tools.String.createString("climb_def"));
        } else {
            if ((type == 3)) {
                // source line 1035, bytecode pc 185
                target.setString(xs.Tools.String.createString("climb_hp"));
            } else {
                if ((type == 4)) {
                    // source line 1037, bytecode pc 249
                    target.setString(xs.Tools.String.createString("climb_wit"));
                }
            }
        }
    }
},
    setListener: function(target) {
    // source line 1041, bytecode pc 9
    (this.m_listener = target);
}
}));
// source line 1044, bytecode pc 423
(xs.Views.PropertyView.create = function() {
    var view;
    // source line 1045, bytecode pc 23
    (view = new xs.Views.PropertyView());
    if ((view && view.init())) {
        // source line 1047, bytecode pc 55
        return view;
    }
    // source line 1049, bytecode pc 57
    return null;
});
// source line 1181, bytecode pc 762
(xs.Scene.StartBattleScene.Model = cc.Class.extend({
    setData: function(data) {
    // source line 1054, bytecode pc 9
    (this._data = data);
    if ((this._data.return_info.box_id.length > 0)) {
        // source line 1057, bytecode pc 60
        (this._box_id = this._data.return_info.box_id);
    }
},
    getData: function() {
    // source line 1061, bytecode pc 6
    return this._data;
},
    getPropertyStrongerAttack: function() {
    // source line 1065, bytecode pc 26
    return this._data.return_info.tower_common_info.property_stronger_info.attack_percent;
},
    getPropertyStrongerDefense: function() {
    // source line 1068, bytecode pc 26
    return this._data.return_info.tower_common_info.property_stronger_info.defense_percent;
},
    getPropertyStrongerHp: function() {
    // source line 1071, bytecode pc 26
    return this._data.return_info.tower_common_info.property_stronger_info.hp_percent;
},
    getPropertyStrongerWisdom: function() {
    // source line 1074, bytecode pc 26
    return this._data.return_info.tower_common_info.property_stronger_info.wisdom_percent;
},
    getTotalIntegration: function() {
    // source line 1077, bytecode pc 26
    return this._data.return_info.tower_common_info.point_info.total_integration;
},
    getHavingIntergration: function() {
    // source line 1081, bytecode pc 26
    return this._data.return_info.tower_common_info.point_info.having_integration;
},
    getPointProgress: function() {
    // source line 1084, bytecode pc 16
    return this._data.return_info.box_integration;
},
    getMiddleCoin: function() {
    // source line 1087, bytecode pc 23
    return this._data.return_info.robot_info[1].coin;
},
    getEasyCoin: function() {
    // source line 1090, bytecode pc 23
    return this._data.return_info.robot_info[0].coin;
},
    getHardCoin: function() {
    // source line 1093, bytecode pc 24
    return this._data.return_info.robot_info[2].coin;
},
    getRobotOneId: function() {
    // source line 1096, bytecode pc 23
    return this._data.return_info.robot_info[0].id;
},
    getRobotTwoId: function() {
    // source line 1099, bytecode pc 23
    return this._data.return_info.robot_info[1].id;
},
    getRobotThreeId: function() {
    // source line 1102, bytecode pc 24
    return this._data.return_info.robot_info[2].id;
},
    getRobotInfo: function() {
    // source line 1105, bytecode pc 16
    return this._data.return_info.robot_info;
},
    getStronger_info: function() {
    var infoArray, tmp, i, j;
    // source line 1108, bytecode pc 19
    (infoArray = this._data.return_info.stronger_info);
    // source line 1109, bytecode pc 24
    (tmp = null);
    // source line 1111, bytecode pc 29
    (i = 0);
    while ((i < infoArray.length)) {
        // source line 1112, bytecode pc 44
        (j = (i + 1));
        while ((j < infoArray.length)) {
            if ((parseInt(infoArray[i].stronger_type) > parseInt(infoArray[j].stronger_type))) {
                // source line 1114, bytecode pc 121
                (tmp = infoArray[i]);
                // source line 1115, bytecode pc 136
                (infoArray[i] = infoArray[j]);
                // source line 1116, bytecode pc 147
                (infoArray[j] = tmp);
            }
            // source line 1112, bytecode pc 161
            (j = (+j + 1));
        }
        // source line 1111, bytecode pc 194
        (i = (+i + 1));
    }
    // source line 1121, bytecode pc 218
    (i = 0);
    while ((i < infoArray.length)) {
        // source line 1122, bytecode pc 233
        (j = (i + 1));
        while ((j < infoArray.length)) {
            if ((parseInt(infoArray[i].need_integration) > parseInt(infoArray[j].need_integration))) {
                // source line 1124, bytecode pc 310
                (tmp = infoArray[i]);
                // source line 1125, bytecode pc 325
                (infoArray[i] = infoArray[j]);
                // source line 1126, bytecode pc 336
                (infoArray[j] = tmp);
            }
            // source line 1122, bytecode pc 350
            (j = (+j + 1));
        }
        // source line 1121, bytecode pc 383
        (i = (+i + 1));
    }
    // source line 1132, bytecode pc 406
    return infoArray;
},
    getCmn_info: function() {
    // source line 1135, bytecode pc 16
    return this._data.return_info.tower_common_info;
},
    getBoxStatus: function() {
    var infoArray;
    // source line 1139, bytecode pc 19
    (infoArray = this._data.return_info.box_info);
    // source line 1140, bytecode pc 23
    return infoArray;
},
    getBox_id: function() {
    var tmp;
    // source line 1144, bytecode pc 20
    (tmp = (this._box_id || ""));
    // source line 1145, bytecode pc 32
    (this._box_id = "");
    // source line 1146, bytecode pc 36
    return tmp;
},
    getRankInfoCopper: function() {
    var obj;
    // source line 1149, bytecode pc 36
    (obj = (this._data.return_info.rank_info.copper_rank || {}));
    // source line 1150, bytecode pc 40
    return obj;
},
    getRankInfoSilver: function() {
    var obj;
    // source line 1153, bytecode pc 36
    (obj = (this._data.return_info.rank_info.silver_rank || {}));
    // source line 1154, bytecode pc 40
    return obj;
},
    getRankInfoGold: function() {
    var obj;
    // source line 1157, bytecode pc 36
    (obj = (this._data.return_info.rank_info.gold_rank || {}));
    // source line 1158, bytecode pc 40
    return obj;
},
    getRankInfoGod: function() {
    var obj;
    // source line 1161, bytecode pc 36
    (obj = (this._data.return_info.rank_info.genie_rank || {}));
    // source line 1162, bytecode pc 40
    return obj;
},
    getfront_type: function() {
    var obj;
    // source line 1165, bytecode pc 26
    (obj = (this._data.return_info.front_type || 1));
    // source line 1166, bytecode pc 30
    return obj;
},
    setAddlistOther: function(addData) {
    // source line 1171, bytecode pc 9
    (this._addlist_other = addData);
},
    getAddlistOther: function() {
    // source line 1175, bytecode pc 6
    return this._addlist_other;
},
    getIsInDemon: function() {
    // source line 1179, bytecode pc 23
    return (this._data.return_info.is_in_xiuluo || 0);
},
    getXiuluo_add: function() {
    // source line 1182, bytecode pc 33
    return (this._data.return_info.xiuluo_add.add_list || {});
}
}));
// source line 1186, bytecode pc 793
(xs.Scene.StartBattleScene.Model.getInstance = function() {
    if ((xs.Scene.StartBattleScene.Model.s_Model == null)) {
        // source line 1188, bytecode pc 82
        (xs.Scene.StartBattleScene.Model.s_Model = new xs.Scene.StartBattleScene.Model());
    }
    // source line 1190, bytecode pc 108
    return xs.Scene.StartBattleScene.Model.s_Model;
});
