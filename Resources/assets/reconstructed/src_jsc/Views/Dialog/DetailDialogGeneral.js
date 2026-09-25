// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/DetailDialogGeneral.js:1
// source line 630, bytecode pc 441
(xs.Views.Dialog.DetailDialogGeneral = xs.Views.Dialog.CommonDialog.extend({
    ccbCfg: [
        {
            tag: 1,
            type: "ls",
            name: "_titleLabel",
            id: "LS_popUI1",
            string: xs.Tools.String.createString("1070910016")
        }
    ],
    loadCCBI: function() {
    var _visibleSize, _BGccbNodeSize;
    // source line 10, bytecode pc 24
    (_visibleSize = xs.director.getVisibleSize());
    // source line 12, bytecode pc 75
    (this._BGccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DeatailDialogBG, this));
    // source line 13, bytecode pc 96
    (_BGccbNodeSize = this._BGccbNode.getContentSize());
    // source line 19, bytecode pc 216
    xs.Utils.Node.attachNodes(this, this._BGccbNode, {
    desc: "lb",
    sc: true,
    offset: {
        x: ((_visibleSize.width - _BGccbNodeSize.width) / 2),
        y: ((_visibleSize.height - _BGccbNodeSize.height) / 2)
    }
});
    // source line 24, bytecode pc 259
    xs.Utils.UI.replaceCcbByCfg(this._BGccbNode, this.ccbCfg, this);
    // source line 25, bytecode pc 293
    this._BGccbNode.getChildByTag(104).setVisible(false);
    // source line 26, bytecode pc 327
    this._BGccbNode.getChildByTag(103).setVisible(false);
    // source line 27, bytecode pc 361
    this._BGccbNode.getChildByTag(102).setVisible(false);
    // source line 28, bytecode pc 395
    this._BGccbNode.getChildByTag(101).setVisible(false);
    // source line 30, bytecode pc 467
    (this._effectpageBtn = xs.Views.Btn.createWithString("Btn_TableChat", xs.Tools.String.createString("auto_name_383")));
    // source line 31, bytecode pc 506
    this._effectpageBtn.setAnchorPoint(cc.p(0, 1));
    // source line 32, bytecode pc 526
    this._effectpageBtn.setZoomOnTouchDown(false);
    // source line 33, bytecode pc 576
    this._effectpageBtn.setPosition(this._BGccbNode.getChildByTag(101).getPosition());
    // source line 34, bytecode pc 617
    xs.Utils.Node.attachNodes(this._BGccbNode, this._effectpageBtn);
    // source line 35, bytecode pc 664
    this._effectpageBtn.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 36, bytecode pc 701
    this._effectpageBtn.setOnClickCallBack(function() {
    // source line 36, bytecode pc 12
    this._effectBtnCB();
}.bind(this));
    // source line 37, bytecode pc 742
    this._effectpageBtn.setPreferredSize(cc.size(115, 62));
    // source line 39, bytecode pc 814
    (this._fatepageBtn = xs.Views.Btn.createWithString("Btn_TableChat", xs.Tools.String.createString("auto_name_376")));
    // source line 40, bytecode pc 853
    this._fatepageBtn.setAnchorPoint(cc.p(0, 1));
    // source line 41, bytecode pc 873
    this._fatepageBtn.setZoomOnTouchDown(false);
    // source line 42, bytecode pc 923
    this._fatepageBtn.setPosition(this._BGccbNode.getChildByTag(102).getPosition());
    // source line 43, bytecode pc 964
    xs.Utils.Node.attachNodes(this._BGccbNode, this._fatepageBtn);
    // source line 44, bytecode pc 1001
    this._fatepageBtn.setOnClickCallBack(function() {
    // source line 44, bytecode pc 12
    this._fatepageBtnCB();
}.bind(this));
    // source line 45, bytecode pc 1048
    this._fatepageBtn.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 46, bytecode pc 1089
    this._fatepageBtn.setPreferredSize(cc.size(115, 62));
    // source line 48, bytecode pc 1161
    (this._sourcepageBtn = xs.Views.Btn.createWithString("Btn_TableChat", xs.Tools.String.createString("auto_name_377")));
    // source line 49, bytecode pc 1200
    this._sourcepageBtn.setAnchorPoint(cc.p(0, 1));
    // source line 50, bytecode pc 1220
    this._sourcepageBtn.setZoomOnTouchDown(false);
    // source line 51, bytecode pc 1270
    this._sourcepageBtn.setPosition(this._BGccbNode.getChildByTag(103).getPosition());
    // source line 52, bytecode pc 1311
    xs.Utils.Node.attachNodes(this._BGccbNode, this._sourcepageBtn);
    // source line 53, bytecode pc 1348
    this._sourcepageBtn.setOnClickCallBack(function() {
    // source line 53, bytecode pc 12
    this._sourcepageBtnCB();
}.bind(this));
    // source line 54, bytecode pc 1395
    this._sourcepageBtn.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 55, bytecode pc 1436
    this._sourcepageBtn.setPreferredSize(cc.size(115, 62));
    // source line 57, bytecode pc 1508
    (this._SurrenderpageBtn = xs.Views.Btn.createWithString("Btn_TableChat", xs.Tools.String.createString("auto_name_47")));
    // source line 58, bytecode pc 1547
    this._SurrenderpageBtn.setAnchorPoint(cc.p(0, 1));
    // source line 59, bytecode pc 1567
    this._SurrenderpageBtn.setZoomOnTouchDown(false);
    // source line 60, bytecode pc 1617
    this._SurrenderpageBtn.setPosition(this._BGccbNode.getChildByTag(104).getPosition());
    // source line 61, bytecode pc 1658
    xs.Utils.Node.attachNodes(this._BGccbNode, this._SurrenderpageBtn);
    // source line 62, bytecode pc 1678
    this._SurrenderpageBtn.setVisible(false);
    // source line 63, bytecode pc 1715
    this._SurrenderpageBtn.setOnClickCallBack(function() {
    // source line 63, bytecode pc 12
    this._surrenderpageBtnCB();
}.bind(this));
    // source line 64, bytecode pc 1762
    this._SurrenderpageBtn.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 65, bytecode pc 1803
    this._SurrenderpageBtn.setPreferredSize(cc.size(115, 62));
},
    _resetState: function() {
    // source line 68, bytecode pc 19
    this._sourcepageBtn.setSelected(false);
    // source line 69, bytecode pc 39
    this._fatepageBtn.setSelected(false);
    // source line 70, bytecode pc 59
    this._effectpageBtn.setSelected(false);
    // source line 71, bytecode pc 79
    this._SurrenderpageBtn.setSelected(false);
    // source line 73, bytecode pc 99
    this._FateScrollView.setVisible(false);
    // source line 74, bytecode pc 119
    this._SourceScrollView.setVisible(false);
    // source line 75, bytecode pc 139
    this._EffectScrollView.setVisible(false);
    if (this._SurrenderScrollView) {
        // source line 77, bytecode pc 170
        this._SurrenderScrollView.setVisible(false);
    }
},
    _effectBtnCB: function() {
    // source line 81, bytecode pc 22
    xs.log("_effectBtnCB");
    // source line 82, bytecode pc 35
    this._resetState();
    // source line 83, bytecode pc 55
    this._effectpageBtn.setSelected(true);
    // source line 84, bytecode pc 75
    this._EffectScrollView.setVisible(true);
},
    _fatepageBtnCB: function() {
    // source line 87, bytecode pc 12
    this._resetState();
    // source line 88, bytecode pc 32
    this._fatepageBtn.setSelected(true);
    // source line 89, bytecode pc 52
    this._FateScrollView.setVisible(true);
},
    _sourcepageBtnCB: function() {
    // source line 92, bytecode pc 12
    this._resetState();
    // source line 93, bytecode pc 32
    this._sourcepageBtn.setSelected(true);
    // source line 94, bytecode pc 52
    this._SourceScrollView.setVisible(true);
},
    _surrenderpageBtnCB: function() {
    // source line 97, bytecode pc 12
    this._resetState();
    // source line 98, bytecode pc 25
    this._showAchieveSurrender();
    // source line 99, bytecode pc 45
    this._SurrenderpageBtn.setSelected(true);
    // source line 100, bytecode pc 58
    this._updateSurrenderView();
},
    onEnterTransitionDidFinish: function() {
    // source line 104, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 107, bytecode pc 37
    xs.Models.HDModel.getInstance().dequeryAll();
},
    initWithData: function(params) {
    var param;
    if (!this.init()) {
        // source line 111, bytecode pc 19
        return false;
    }
    // source line 113, bytecode pc 38
    (param = (params || {}));
    // source line 114, bytecode pc 65
    (this._generalData = (param.generalData || {}));
    // source line 116, bytecode pc 80
    (this.m_playerId = param.playerId);
    // source line 117, bytecode pc 95
    (this.m_playerData = param.playerData);
    // source line 119, bytecode pc 108
    this.loadCCBI();
    // source line 122, bytecode pc 139
    (this._EffectScrollViewSize = cc.size(490, 400));
    // source line 123, bytecode pc 179
    (this._EffectScrollView = xs.Views.ScrollView.create(this._EffectScrollViewSize));
    // source line 124, bytecode pc 221
    this._EffectScrollView.setPosition(cc.p(380, 80));
    // source line 125, bytecode pc 251
    xs.log(("this.m_baseTouchPriority is " + this.m_baseTouchPriority));
    // source line 126, bytecode pc 278
    this._EffectScrollView.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 127, bytecode pc 319
    xs.Utils.Node.attachNodes(this._BGccbNode, this._EffectScrollView);
    // source line 129, bytecode pc 350
    (this._EffectScrollViewSize = cc.size(490, 400));
    // source line 130, bytecode pc 390
    (this._FateScrollView = xs.Views.ScrollView.create(this._EffectScrollViewSize));
    // source line 131, bytecode pc 432
    this._FateScrollView.setPosition(cc.p(380, 80));
    // source line 132, bytecode pc 462
    xs.log(("this.m_baseTouchPriority is " + this.m_baseTouchPriority));
    // source line 133, bytecode pc 489
    this._FateScrollView.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 134, bytecode pc 530
    xs.Utils.Node.attachNodes(this._BGccbNode, this._FateScrollView);
    // source line 136, bytecode pc 561
    (this._EffectScrollViewSize = cc.size(490, 400));
    // source line 137, bytecode pc 601
    (this._SourceScrollView = xs.Views.ScrollView.create(this._EffectScrollViewSize));
    // source line 138, bytecode pc 643
    this._SourceScrollView.setPosition(cc.p(380, 80));
    // source line 139, bytecode pc 673
    xs.log(("this.m_baseTouchPriority is " + this.m_baseTouchPriority));
    // source line 140, bytecode pc 700
    this._SourceScrollView.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 141, bytecode pc 741
    xs.Utils.Node.attachNodes(this._BGccbNode, this._SourceScrollView);
    // source line 143, bytecode pc 769
    this._fatepageBtn.setTouchPriority((this.m_baseTouchPriority - 10));
    // source line 144, bytecode pc 797
    this._effectpageBtn.setTouchPriority((this.m_baseTouchPriority - 10));
    // source line 145, bytecode pc 818
    this._effectpageBtn.setZOrder(2);
    // source line 146, bytecode pc 846
    this._sourcepageBtn.setTouchPriority((this.m_baseTouchPriority - 10));
    // source line 147, bytecode pc 874
    this._SurrenderpageBtn.setTouchPriority((this.m_baseTouchPriority - 10));
    // source line 149, bytecode pc 924
    (this.m_endButton = xs.Utils.replaceButton(this._BGccbNode, 5, "Btn_Close", ""));
    // source line 150, bytecode pc 950
    this.m_endButton.addCallBackForEvent(this, function() {
    // source line 152, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 154, bytecode pc 971
    this.m_endButton.setZOrder(100);
    // source line 155, bytecode pc 984
    this._effectBtnCB();
    // source line 156, bytecode pc 986
    return true;
},
    showDialog: function() {
    var pos, _source, i, fateArray, callbackRight1, callbackLeft, callbackMiddle, _visibleSize, _panelSize;
    // source line 160, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this._generalWidget);
    // source line 161, bytecode pc 57
    (this._generalWidget = this._generalData.createCard_Detail());
    // source line 162, bytecode pc 92
    (pos = this._BGccbNode.getChildByTag(4).getPosition());
    // source line 163, bytecode pc 114
    this._generalWidget.setPosition(pos);
    // source line 164, bytecode pc 155
    xs.Utils.Node.attachNodes(this._BGccbNode, this._generalWidget);
    // source line 166, bytecode pc 175
    this._generalWidget.setZOrder(1);
    // source line 167, bytecode pc 210
    this._BGccbNode.getChildByTag(100).setZOrder(2);
    // source line 168, bytecode pc 231
    this._FateScrollView.setZOrder(2);
    // source line 169, bytecode pc 252
    this._EffectScrollView.setZOrder(2);
    // source line 170, bytecode pc 273
    this._SourceScrollView.setZOrder(2);
    if (this._SurrenderScrollView) {
        // source line 172, bytecode pc 305
        this._SurrenderScrollView.setZOrder(2);
        // source line 173, bytecode pc 323
        this._SurrenderScrollView.removeAllChildrenView();
    }
    // source line 176, bytecode pc 341
    this._SourceScrollView.removeAllChildrenView();
    // source line 177, bytecode pc 359
    this._FateScrollView.removeAllChildrenView();
    // source line 178, bytecode pc 377
    this._EffectScrollView.removeAllChildrenView();
    // source line 181, bytecode pc 398
    (_source = this._generalData.getSource());
    // source line 183, bytecode pc 403
    (i = 0);
    while ((i < _source.length)) {
        // source line 191, bytecode pc 629
        this._SourceScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleG({
    explanationText: xs.Tools.String.createString(_source[i].source_desc),
    btnText: xs.Tools.String.createString(_source[i].button_name),
    type: _source[i].source_type,
    dungeonId: _source[i].param_value,
    map_id: _source[i].map_id,
    pkid: _source[i].param_value,
    param_value: _source[i].param_value
}));
        // source line 183, bytecode pc 644
        i++;
    }
    // source line 196, bytecode pc 746
    this._SourceScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleD({ titleText: xs.Tools.String.createString("1071110016") }));
    // source line 201, bytecode pc 852
    this._EffectScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleA({
    titleText: xs.Tools.String.createString("general_generalIntroduce"),
    contentText: this._generalData.getDescString()
}));
    // source line 204, bytecode pc 861
    (fateArray = []);
    // source line 206, bytecode pc 882
    (fateArray = this._generalData.getFates());
    if ((fateArray.length > 0)) {
        // source line 212, bytecode pc 985
        this._FateScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleQ({
    fateData: fateArray,
    generalData: this._generalData,
    otherPlayerId: this.m_playerId,
    otherPlayerData: this.m_playerData
}));
    }
    // source line 217, bytecode pc 1069
    this._FateScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleE({ titleText: xs.Tools.String.createString("1071110014") }));
    // source line 224, bytecode pc 1248
    this._EffectScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleF({
    bloodText: this._generalData.getAttrNaked(xs.Constant_AttrType_Hp),
    attackText: this._generalData.getAttrNaked(xs.Constant_AttrType_Atk),
    defenseText: this._generalData.getAttrNaked(xs.Constant_AttrType_Def),
    intelligenceText: this._generalData.getAttrNaked(xs.Constant_AttrType_Int)
}));
    // source line 228, bytecode pc 1332
    this._EffectScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleE({ titleText: xs.Tools.String.createString("1071110013") }));
    if ((this._generalData.havaLieutenantAttrPlus() == true)) {
        // source line 233, bytecode pc 1414
        this._EffectScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleR({ generalData: this._generalData }));
    }
    // source line 242, bytecode pc 1677
    this._EffectScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleB({
    titleText: xs.Tools.String.createString("1071110012"),
    contentText: xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.getNaturalSkill(this._generalData).getShortDesc(),
    skillData: xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.getNaturalSkill(this._generalData),
    touchPriority: this._EffectScrollView.getBaseTouchPriority()
}));
    // source line 249, bytecode pc 1801
    this._EffectScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleH({
    nameText: this._generalData.getNameString(),
    generalData: this._generalData,
    levelText: this._generalData.getLevel(),
    breachLevel: this._generalData.getBreachLevel()
}));
    // source line 256, bytecode pc 1823
    (callbackRight1 = function() {
    // source line 253, bytecode pc 29
    xs.log(("callbackRight " + this._generalData));
    // source line 254, bytecode pc 69
    xs.Scene.Mgr.changeSceneByName("DevelopScene", this._generalData);
}.bind(this));
    // source line 264, bytecode pc 1845
    (callbackLeft = function() {
    // source line 261, bytecode pc 29
    xs.log(("callbackMiddle " + this._generalData));
    // source line 262, bytecode pc 69
    xs.Scene.Mgr.changeSceneByName("WorshipScene", this._generalData);
}.bind(this));
    // source line 268, bytecode pc 1867
    (callbackMiddle = function() {
}.bind(this));
    // source line 270, bytecode pc 1901
    xs.Utils.Node.safeRemoveChild(this._panel);
    // source line 281, bytecode pc 2118
    (this._panel = xs.DetailDialogComponent.createDStyleN({
    btnTextUnUse: xs.Tools.String.createString("1070610025"),
    callbackUnUse: function() {
},
    btnTextR: xs.Tools.String.createString("1070610014"),
    callbackRight: callbackRight1,
    btnTextM: xs.Tools.String.createString("MiracleWeapon_weapon"),
    callbackMiddle: callbackMiddle,
    btnTextL: xs.Tools.String.createString("1070610013"),
    callbackLeft: callbackLeft
}));
    // source line 294, bytecode pc 2143
    (_visibleSize = xs.director.getVisibleSize());
    // source line 295, bytecode pc 2169
    (_panelSize = this._panel._ccbNode.getContentSize());
    // source line 296, bytecode pc 2190
    this._panel.setZOrder(3);
    // source line 302, bytecode pc 2316
    xs.Utils.Node.attachNodes(this._BGccbNode, this._panel, {
    desc: "lb",
    sc: true,
    offset: { x: (((this._BGccbNode.getContentSize().width / 2) - (_panelSize.width / 2)) - 8), y: 0 }
});
    // source line 305, bytecode pc 2334
    this._SourceScrollView.resizeView();
    // source line 306, bytecode pc 2352
    this._FateScrollView.resizeView();
    if (this._SurrenderScrollView) {
        // source line 308, bytecode pc 2381
        this._SurrenderScrollView.resizeView();
    }
    // source line 310, bytecode pc 2399
    this._EffectScrollView.resizeView();
},
    setMiddleCB: function(callback) {
    var button;
    // source line 313, bytecode pc 20
    (button = this._panel.getButtonMiddle());
    // source line 315, bytecode pc 39
    button.setOnClickCallBack(callback);
},
    setRightCB: function(callback) {
    var button;
    // source line 318, bytecode pc 20
    (button = this._panel.getButtonRight());
    // source line 320, bytecode pc 39
    button.setOnClickCallBack(callback);
},
    setLeftCB: function(callback) {
    var button;
    // source line 323, bytecode pc 20
    (button = this._panel.getButtonLeft());
    // source line 325, bytecode pc 39
    button.setOnClickCallBack(callback);
},
    setChangGeneralCB: function(callback) {
    var button;
    // source line 328, bytecode pc 20
    (button = this._panel.getButtonUnUse());
    // source line 329, bytecode pc 46
    this._panel.setButtonCallback(button, callback);
},
    setDisplayType: function(params) {
    var param;
    // source line 334, bytecode pc 28
    (param = (params || { type: "team" }));
    // source line 336, bytecode pc 60
    xs.log(("setDisplayType " + param.type));
    // source line 337, bytecode pc 75
    (this._useType = param.type);
    // source line 338, bytecode pc 84
    switch (param.type) {
        case "team":
        // source line 342, bytecode pc 181
        (param = { general_id: this._generalData.getId() });
        // source line 346, bytecode pc 220
        xs.Tools.Net.requestGetSurrenderList(param, function(data) {
    // source line 345, bytecode pc 9
    (this._surrenderList = data);
}, this);
        // source line 347, bytecode pc 240
        this._SurrenderpageBtn.setVisible(true);
        break;
        case "achieve_have":
        // source line 352, bytecode pc 277
        (param = { general_id: this._generalData.getId() });
        // source line 356, bytecode pc 316
        xs.Tools.Net.requestGetSurrenderList(param, function(data) {
    // source line 355, bytecode pc 9
    (this._surrenderList = data);
}, this);
        // source line 357, bytecode pc 329
        this.__setAchievePanel_Have();
        // source line 358, bytecode pc 349
        this._SurrenderpageBtn.setVisible(true);
        break;
        case "others_team":
        // source line 361, bytecode pc 367
        this.__setAchievePanel_OthersTeam();
        break;
        case "achieve_nothave":
        // source line 365, bytecode pc 385
        this.__setAchievePanel_NotHave();
        break;
        case "Deputy_General":
        // source line 369, bytecode pc 422
        (param = { general_id: this._generalData.getId() });
        // source line 373, bytecode pc 461
        xs.Tools.Net.requestGetSurrenderList(param, function(data) {
    // source line 372, bytecode pc 9
    (this._surrenderList = data);
}, this);
        // source line 374, bytecode pc 474
        this._setDeputyPanel();
        // source line 375, bytecode pc 494
        this._SurrenderpageBtn.setVisible(true);
        break;
        case "showAchieveView":
        // source line 378, bytecode pc 507
        (this._showAchieveFlag = true);
        // source line 380, bytecode pc 539
        (param = { general_id: this._generalData.getId() });
        // source line 389, bytecode pc 578
        xs.Tools.Net.requestGetSurrenderList(param, function(data) {
    // source line 383, bytecode pc 9
    (this._surrenderList = data);
    if ((this._showAchieveFlag == true)) {
        // source line 385, bytecode pc 30
        (this._showAchieveFlag = false);
        // source line 386, bytecode pc 43
        this._surrenderpageBtnCB();
        // source line 387, bytecode pc 63
        this._SurrenderpageBtn.setVisible(true);
    }
}, this);
        // source line 390, bytecode pc 591
        this.__setAchievePanel_Have();
        break;
        default:
        break;
    }
},
    _setDeputyPanel: function() {
    var callbackLeft, callbackRight, _visibleSize, _panelSize;
    // source line 395, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this._panel);
    // source line 396, bytecode pc 56
    xs.log("副将详情");
    // source line 400, bytecode pc 78
    (callbackLeft = function() {
    // source line 398, bytecode pc 22
    xs.log("更换副将");
}.bind(this));
    // source line 406, bytecode pc 100
    (callbackRight = function() {
    var _skillData;
    // source line 403, bytecode pc 71
    (_skillData = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.getNaturalSkill(this._generalData));
    // source line 405, bytecode pc 108
    xs.Scene.Mgr.changeSceneByName("SkillUpScene", _skillData);
}.bind(this));
    // source line 415, bytecode pc 319
    (this._panel = xs.DetailDialogComponent.createDStyleN({
    btnTextL: xs.Tools.String.createString("str_ReplaceDialog_replaceLieutenant"),
    callbackLeft: callbackLeft,
    btnTextR: xs.Tools.String.createString("str_ReplaceDialog_updataSkill"),
    callbackRight: callbackRight,
    btnTextUnUse: xs.Tools.String.createString("str_ReplaceDialog_discharge"),
    callbackUnUse: function() {
},
    btnTextM: xs.Tools.String.createString("MiracleWeapon_weapon"),
    callbackMiddle: function() {
}
}));
    // source line 418, bytecode pc 344
    (_visibleSize = xs.director.getVisibleSize());
    // source line 419, bytecode pc 370
    (_panelSize = this._panel._ccbNode.getContentSize());
    // source line 420, bytecode pc 391
    this._panel.setZOrder(3);
    // source line 426, bytecode pc 517
    xs.Utils.Node.attachNodes(this._BGccbNode, this._panel, {
    desc: "lb",
    sc: true,
    offset: { x: (((this._BGccbNode.getContentSize().width / 2) - (_panelSize.width / 2)) - 8), y: 0 }
});
},
    __setAchievePanel_Have: function() {
    var callbackMiddle, _visibleSize, _panelSize;
    // source line 431, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this._panel);
    // source line 435, bytecode pc 55
    (callbackMiddle = function() {
    // source line 433, bytecode pc 22
    xs.log("查看HD卡");
    // source line 434, bytecode pc 35
    this.__displayHDLayer();
}.bind(this));
    // source line 438, bytecode pc 135
    (this._panel = xs.DetailDialogComponent.createDStyleN({ btnTextM: xs.Tools.String.createString("general_lookHD"), callbackMiddle: callbackMiddle }));
    // source line 440, bytecode pc 160
    (_visibleSize = xs.director.getVisibleSize());
    // source line 441, bytecode pc 186
    (_panelSize = this._panel._ccbNode.getContentSize());
    // source line 442, bytecode pc 207
    this._panel.setZOrder(3);
    // source line 448, bytecode pc 333
    xs.Utils.Node.attachNodes(this._BGccbNode, this._panel, {
    desc: "lb",
    sc: true,
    offset: { x: (((this._BGccbNode.getContentSize().width / 2) - (_panelSize.width / 2)) - 8), y: 0 }
});
    if (xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.isSurrender(this._generalData)) {
        // source line 455, bytecode pc 426
        this._generalWidget.setSurrender(true);
    }
},
    __setAchievePanel_OthersTeam: function() {
    var callbackMiddle, _visibleSize, _panelSize;
    // source line 460, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this._panel);
    // source line 463, bytecode pc 55
    (callbackMiddle = function() {
    // source line 462, bytecode pc 12
    this.__displayHDLayer();
}.bind(this));
    // source line 469, bytecode pc 182
    (this._panel = xs.DetailDialogComponent.createDStyleN({
    btnTextM: xs.Tools.String.createString("general_lookHD"),
    callbackMiddle: callbackMiddle,
    btnTextR: xs.Tools.String.createString("MiracleWeapon_weapon"),
    callbackRight: function() {
}
}));
    // source line 473, bytecode pc 207
    (_visibleSize = xs.director.getVisibleSize());
    // source line 474, bytecode pc 233
    (_panelSize = this._panel._ccbNode.getContentSize());
    // source line 475, bytecode pc 254
    this._panel.setZOrder(3);
    // source line 481, bytecode pc 380
    xs.Utils.Node.attachNodes(this._BGccbNode, this._panel, {
    desc: "lb",
    sc: true,
    offset: { x: (((this._BGccbNode.getContentSize().width / 2) - (_panelSize.width / 2)) - 8), y: 0 }
});
},
    __setAchievePanel_NotHave: function() {
    var callbackMiddle, _visibleSize, _panelSize;
    // source line 488, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this._panel);
    // source line 489, bytecode pc 56
    xs.log("__setAchievePanel_NotHave");
    // source line 493, bytecode pc 78
    (callbackMiddle = function() {
    // source line 491, bytecode pc 22
    xs.log("查看HD卡");
    // source line 492, bytecode pc 35
    this.__displayHDLayer();
}.bind(this));
    // source line 496, bytecode pc 158
    (this._panel = xs.DetailDialogComponent.createDStyleN({ btnTextM: xs.Tools.String.createString("general_lookHD"), callbackMiddle: callbackMiddle }));
    // source line 498, bytecode pc 183
    (_visibleSize = xs.director.getVisibleSize());
    // source line 499, bytecode pc 209
    (_panelSize = this._panel._ccbNode.getContentSize());
    // source line 500, bytecode pc 230
    this._panel.setZOrder(3);
    // source line 506, bytecode pc 356
    xs.Utils.Node.attachNodes(this._BGccbNode, this._panel, {
    desc: "lb",
    sc: true,
    offset: { x: (((this._BGccbNode.getContentSize().width / 2) - (_panelSize.width / 2)) - 8), y: 0 }
});
},
    __createSurrenderView: function(status, surrenderList, hasAwakedSurrender) {
    var surModel, scrollView, surrenderData, i;
    // source line 515, bytecode pc 55
    (surModel = xs.Models.Surrender.createWithJson(this._generalData.getId(), surrenderList, status));
    // source line 516, bytecode pc 110
    (scrollView = xs.Views.ScrollView.create(cc.size(490, 400)));
    // source line 517, bytecode pc 149
    scrollView.setPosition(cc.p(380, 80));
    // source line 518, bytecode pc 171
    scrollView.setBaseTouchPriority(this.m_baseTouchPriority);
    // source line 519, bytecode pc 209
    xs.Utils.Node.attachNodes(this._BGccbNode, scrollView);
    // source line 520, bytecode pc 227
    scrollView.setZOrder(2);
    // source line 521, bytecode pc 239
    (surrenderData = surModel.surrender_list);
    // source line 526, bytecode pc 309
    scrollView.addChildrenView(xs.DetailDialogComponent.createDStyleP({ itemid: surModel.item_id, status: surModel.item_status }));
    // source line 530, bytecode pc 323
    (i = (surrenderData.length - 1));
    while ((i >= 0)) {
        // source line 533, bytecode pc 393
        scrollView.addChildrenView(xs.DetailDialogComponent.createDStyleO({ surrenderData: surrenderData[i], index: i }));
        // source line 530, bytecode pc 408
        i--;
    }
    if (hasAwakedSurrender) {
        // source line 543, bytecode pc 507
        scrollView.addChildrenView(xs.DetailDialogComponent.createDStyleSwitch({ itemid: this._generalData.getId(), status: status, listener: this }));
    }
    // source line 549, bytecode pc 522
    scrollView.resizeView();
    // source line 551, bytecode pc 526
    return scrollView;
},
    __createSurrender: function() {
    // source line 554, bytecode pc 22
    xs.log("__createSurrender");
    // source line 556, bytecode pc 30
    (this.surrenderShowAwaked = false);
    // source line 557, bytecode pc 88
    (this.hasAwakedSurrender = ((this._surrenderList != null) && ((this._surrenderList.evolution_surrender_list != null) && (this._surrenderList.evolution_surrender_list.length > 0))));
    if (this.hasAwakedSurrender) {
        // source line 562, bytecode pc 122
        xs.log_ck("显示觉醒数据");
        // source line 563, bytecode pc 130
        (this.surrenderShowAwaked = true);
        // source line 564, bytecode pc 165
        (this._SurrenderScrollView = this.__createSurrenderView(1, this._surrenderList, this.hasAwakedSurrender));
    } else {
        // source line 567, bytecode pc 205
        (this._SurrenderScrollView = this.__createSurrenderView(0, this._surrenderList, this.hasAwakedSurrender));
    }
    // source line 568, bytecode pc 218
    this._updateSurrenderView();
},
    onSwitchSurrender: function(surrenderShowAwaked) {
    if ((this.surrenderShowAwaked != surrenderShowAwaked)) {
        if (this._SurrenderScrollView) {
            // source line 576, bytecode pc 59
            xs.Utils.Node.safeRemoveChild(this._SurrenderScrollView);
            // source line 577, bytecode pc 67
            (this._SurrenderScrollView = null);
        }
        // source line 579, bytecode pc 77
        (this.surrenderShowAwaked = surrenderShowAwaked);
        if (this.surrenderShowAwaked) {
            // source line 581, bytecode pc 118
            (this._SurrenderScrollView = this.__createSurrenderView(1, this._surrenderList, true));
        } else {
            // source line 583, bytecode pc 153
            (this._SurrenderScrollView = this.__createSurrenderView(0, this._surrenderList, true));
        }
    }
},
    _updateSurrenderView: function() {
    if (this._SurrenderScrollView) {
        // source line 590, bytecode pc 30
        this._SurrenderScrollView.setVisible(true);
    }
},
    _showAchieveSurrender: function() {
    // source line 595, bytecode pc 29
    xs.log("_showAchieveSurrender", this._SurrenderScrollView);
    if ((this._SurrenderScrollView == null)) {
        // source line 597, bytecode pc 55
        this.__createSurrender();
    }
},
    __displayHDLayer: function() {
    var filename, func1, func2;
    // source line 601, bytecode pc 22
    xs.log("__displayHDLayer");
    // source line 602, bytecode pc 54
    (filename = this._generalData.getRes().getHDUrl());
    // source line 605, bytecode pc 76
    (func1 = function(params) {
    // source line 604, bytecode pc 16
    this.__readyFunc(params);
}.bind(this));
    // source line 608, bytecode pc 98
    (func2 = function(params) {
    // source line 607, bytecode pc 16
    this.__unreadyFunc(params);
}.bind(this));
    // source line 609, bytecode pc 150
    xs.Models.HDModel.getInstance().addQuery(filename, this, func1, func2);
},
    __readyFunc: function(params) {
    var obj;
    // source line 612, bytecode pc 31
    xs.log("__readyFunc is ", params.absoluteFilePath);
    if ((params.absoluteFilePath != null)) {
        // source line 614, bytecode pc 51
        (obj = null);
        // source line 615, bytecode pc 90
        (obj = xs.Views.HDShowViews.create(params.absoluteFilePath));
        // source line 616, bytecode pc 112
        obj.setBaseTouchPriority(this.m_baseTouchPriority);
        // source line 617, bytecode pc 193
        xs.Utils.Node.attachNodes(xs.director.getRunningScene(), obj, null, xs.Cfg.Scene.CommonScene.Loading_ext);
    }
},
    __unreadyFunc: function(params) {
    // source line 622, bytecode pc 22
    xs.log("__unreadyFunc");
},
    setUnUseCB: function(callback) {
    var button;
    // source line 626, bytecode pc 20
    (button = this._panel.getButtonUnUse());
    // source line 628, bytecode pc 39
    button.setOnClickCallBack(callback);
},
    setBaseTouchPriority: function(priority) {
    // source line 631, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 632, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 633, bytecode pc 56
    this.m_endButton.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 638, bytecode pc 472
(xs.Views.Dialog.DetailDialogGeneral.create = function(params) {
    var obj, param;
    // source line 639, bytecode pc 28
    (obj = new xs.Views.Dialog.DetailDialogGeneral());
    // source line 640, bytecode pc 47
    (param = (params || {}));
    if ((obj && obj.initWithData(param))) {
        // source line 642, bytecode pc 94
        obj.showDialog();
        if ((param.type != null)) {
            // source line 644, bytecode pc 128
            obj.setDisplayType(param);
        }
        // source line 646, bytecode pc 132
        return obj;
    }
    // source line 648, bytecode pc 134
    return null;
});
// source line 652, bytecode pc 503
(xs.Views.Dialog.DetailDialogGeneral.showWithSurrenderInfo = function(modelGeneral) {
    // source line 657, bytecode pc 57
    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: modelGeneral, type: "showAchieveView" });
});
// source line 664, bytecode pc 583
xs.Views.Mgr.registerDialog("DetailDialogGeneral", { "class": xs.Views.Dialog.DetailDialogGeneral, styleType: xs.Constant_DlgStyleType_Large });
