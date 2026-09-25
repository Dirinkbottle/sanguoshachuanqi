// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/DetailDialogEquip.js:1
// source line 9, bytecode pc 30
(xs.Views.Dialog.DetailDialogSkill = xs.Vi);
// source line 332, bytecode pc 265
(xs.Views.Dialog.DetailDialogEquip = xs.Views.Dialog.CommonDialog.extend({
    ccbCfg: [ { tag: 1, type: "ls", id: "LS_popUI1", stringId: "auto_name_374" } ],
    loadCCBI: function() {
    var _visibleSize, _BGccbNodeSize;
    // source line 17, bytecode pc 24
    (_visibleSize = xs.director.getVisibleSize());
    // source line 19, bytecode pc 75
    (this._BGccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DeatailDialogBG, this));
    // source line 20, bytecode pc 96
    (_BGccbNodeSize = this._BGccbNode.getContentSize());
    // source line 26, bytecode pc 216
    xs.Utils.Node.attachNodes(this, this._BGccbNode, {
    desc: "lb",
    sc: true,
    offset: {
        x: ((_visibleSize.width - _BGccbNodeSize.width) / 2),
        y: ((_visibleSize.height - _BGccbNodeSize.height) / 2)
    }
});
    // source line 29, bytecode pc 259
    xs.Utils.UI.replaceCcbByCfg(this._BGccbNode, this.ccbCfg, this);
    // source line 31, bytecode pc 293
    this._BGccbNode.getChildByTag(104).setVisible(false);
    // source line 32, bytecode pc 327
    this._BGccbNode.getChildByTag(103).setVisible(false);
    // source line 33, bytecode pc 361
    this._BGccbNode.getChildByTag(102).setVisible(false);
    // source line 34, bytecode pc 395
    this._BGccbNode.getChildByTag(101).setVisible(false);
    // source line 36, bytecode pc 467
    (this._effectpageBtn = xs.Views.Btn.createWithString("Btn_TableChat", xs.Tools.String.createString("auto_name_375")));
    // source line 37, bytecode pc 506
    this._effectpageBtn.setAnchorPoint(cc.p(0, 1));
    // source line 38, bytecode pc 526
    this._effectpageBtn.setZoomOnTouchDown(false);
    // source line 39, bytecode pc 576
    this._effectpageBtn.setPosition(this._BGccbNode.getChildByTag(101).getPosition());
    // source line 40, bytecode pc 617
    xs.Utils.Node.attachNodes(this._BGccbNode, this._effectpageBtn);
    // source line 41, bytecode pc 664
    this._effectpageBtn.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 42, bytecode pc 701
    this._effectpageBtn.setOnClickCallBack(function() {
    // source line 42, bytecode pc 12
    this._effectBtnCB();
}.bind(this));
    // source line 43, bytecode pc 742
    this._effectpageBtn.setPreferredSize(cc.size(115, 62));
    // source line 45, bytecode pc 814
    (this._fatepageBtn = xs.Views.Btn.createWithString("Btn_TableChat", xs.Tools.String.createString("auto_name_376")));
    // source line 46, bytecode pc 853
    this._fatepageBtn.setAnchorPoint(cc.p(0, 1));
    // source line 47, bytecode pc 873
    this._fatepageBtn.setZoomOnTouchDown(false);
    // source line 48, bytecode pc 923
    this._fatepageBtn.setPosition(this._BGccbNode.getChildByTag(102).getPosition());
    // source line 49, bytecode pc 964
    xs.Utils.Node.attachNodes(this._BGccbNode, this._fatepageBtn);
    // source line 50, bytecode pc 1001
    this._fatepageBtn.setOnClickCallBack(function() {
    // source line 50, bytecode pc 12
    this._fatepageBtnCB();
}.bind(this));
    // source line 51, bytecode pc 1048
    this._fatepageBtn.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 52, bytecode pc 1089
    this._fatepageBtn.setPreferredSize(cc.size(115, 62));
    // source line 54, bytecode pc 1161
    (this._sourcepageBtn = xs.Views.Btn.createWithString("Btn_TableChat", xs.Tools.String.createString("auto_name_377")));
    // source line 55, bytecode pc 1200
    this._sourcepageBtn.setAnchorPoint(cc.p(0, 1));
    // source line 56, bytecode pc 1220
    this._sourcepageBtn.setZoomOnTouchDown(false);
    // source line 57, bytecode pc 1270
    this._sourcepageBtn.setPosition(this._BGccbNode.getChildByTag(103).getPosition());
    // source line 58, bytecode pc 1311
    xs.Utils.Node.attachNodes(this._BGccbNode, this._sourcepageBtn);
    // source line 59, bytecode pc 1348
    this._sourcepageBtn.setOnClickCallBack(function() {
    // source line 59, bytecode pc 12
    this._sourcepageBtnCB();
}.bind(this));
    // source line 60, bytecode pc 1395
    this._sourcepageBtn.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 61, bytecode pc 1436
    this._sourcepageBtn.setPreferredSize(cc.size(115, 62));
},
    _resetState: function() {
    // source line 64, bytecode pc 19
    this._sourcepageBtn.setSelected(false);
    // source line 65, bytecode pc 39
    this._fatepageBtn.setSelected(false);
    // source line 66, bytecode pc 59
    this._effectpageBtn.setSelected(false);
    // source line 68, bytecode pc 79
    this._FateScrollView.setVisible(false);
    // source line 69, bytecode pc 99
    this._SourceScrollView.setVisible(false);
    // source line 70, bytecode pc 119
    this._EffectScrollView.setVisible(false);
},
    _effectBtnCB: function() {
    // source line 73, bytecode pc 12
    this._resetState();
    // source line 74, bytecode pc 32
    this._effectpageBtn.setSelected(true);
    // source line 75, bytecode pc 52
    this._EffectScrollView.setVisible(true);
},
    _fatepageBtnCB: function() {
    // source line 78, bytecode pc 12
    this._resetState();
    // source line 79, bytecode pc 32
    this._fatepageBtn.setSelected(true);
    // source line 80, bytecode pc 52
    this._FateScrollView.setVisible(true);
},
    _sourcepageBtnCB: function() {
    // source line 83, bytecode pc 12
    this._resetState();
    // source line 84, bytecode pc 32
    this._sourcepageBtn.setSelected(true);
    // source line 85, bytecode pc 52
    this._SourceScrollView.setVisible(true);
},
    initWithData: function(params) {
    var param, array;
    if (!this.init()) {
        // source line 89, bytecode pc 19
        return false;
    }
    // source line 91, bytecode pc 38
    (param = (params || {}));
    // source line 92, bytecode pc 53
    (this._equipData = param.equipData);
    // source line 94, bytecode pc 68
    (this.m_playerId = param.playerId);
    // source line 95, bytecode pc 83
    (this.m_playerData = param.playerData);
    // source line 98, bytecode pc 105
    (this.isSmallView = (param.isSmallView || false));
    // source line 103, bytecode pc 174
    (array = xs.Profile.GameData.Mgr.getInstance().Equipments.getHasFateGeneral(this._equipData.getId()));
    // source line 105, bytecode pc 187
    this.loadCCBI();
    // source line 107, bytecode pc 218
    (this._scrollViewSize = cc.size(490, 452));
    // source line 108, bytecode pc 258
    (this._scrollView = xs.Views.ScrollView.create(this._scrollViewSize));
    // source line 109, bytecode pc 300
    this._scrollView.setPosition(cc.p(412, 74));
    // source line 110, bytecode pc 330
    xs.log(("this.m_baseTouchPriority is " + this.m_baseTouchPriority));
    // source line 111, bytecode pc 357
    this._scrollView.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 112, bytecode pc 398
    xs.Utils.Node.attachNodes(this._BGccbNode, this._scrollView);
    // source line 114, bytecode pc 448
    (this.m_endButton = xs.Utils.replaceButton(this._BGccbNode, 5, "Btn_Close", ""));
    // source line 115, bytecode pc 474
    this.m_endButton.addCallBackForEvent(this, function() {
    // source line 117, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 121, bytecode pc 545
    (this._EffectScrollViewSize = (this.isSmallView ? cc.size(490, 402) : cc.size(490, 452)));
    // source line 122, bytecode pc 585
    (this._EffectScrollView = xs.Views.ScrollView.create(this._EffectScrollViewSize));
    // source line 123, bytecode pc 666
    this._EffectScrollView.setPosition((this.isSmallView ? cc.p(380, 80) : cc.p(380, 30)));
    // source line 124, bytecode pc 696
    xs.log(("this.m_baseTouchPriority is " + this.m_baseTouchPriority));
    // source line 125, bytecode pc 723
    this._EffectScrollView.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 126, bytecode pc 764
    xs.Utils.Node.attachNodes(this._BGccbNode, this._EffectScrollView);
    // source line 128, bytecode pc 795
    (this._EffectScrollViewSize = cc.size(490, 452));
    // source line 129, bytecode pc 835
    (this._FateScrollView = xs.Views.ScrollView.create(this._EffectScrollViewSize));
    // source line 130, bytecode pc 877
    this._FateScrollView.setPosition(cc.p(380, 30));
    // source line 131, bytecode pc 907
    xs.log(("this.m_baseTouchPriority is " + this.m_baseTouchPriority));
    // source line 132, bytecode pc 934
    this._FateScrollView.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 133, bytecode pc 975
    xs.Utils.Node.attachNodes(this._BGccbNode, this._FateScrollView);
    // source line 135, bytecode pc 1006
    (this._EffectScrollViewSize = cc.size(490, 452));
    // source line 136, bytecode pc 1046
    (this._SourceScrollView = xs.Views.ScrollView.create(this._EffectScrollViewSize));
    // source line 137, bytecode pc 1088
    this._SourceScrollView.setPosition(cc.p(380, 30));
    // source line 138, bytecode pc 1118
    xs.log(("this.m_baseTouchPriority is " + this.m_baseTouchPriority));
    // source line 139, bytecode pc 1145
    this._SourceScrollView.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 140, bytecode pc 1186
    xs.Utils.Node.attachNodes(this._BGccbNode, this._SourceScrollView);
    // source line 142, bytecode pc 1214
    this._fatepageBtn.setTouchPriority((this.m_baseTouchPriority - 10));
    // source line 143, bytecode pc 1242
    this._effectpageBtn.setTouchPriority((this.m_baseTouchPriority - 10));
    // source line 144, bytecode pc 1270
    this._sourcepageBtn.setTouchPriority((this.m_baseTouchPriority - 10));
    // source line 147, bytecode pc 1320
    (this.m_endButton = xs.Utils.replaceButton(this._BGccbNode, 5, "Btn_Close", ""));
    // source line 149, bytecode pc 1344
    this.m_endButton.setOnClickCallBack(function() {
    // source line 150, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 158, bytecode pc 1357
    this._effectBtnCB();
    // source line 159, bytecode pc 1359
    return true;
},
    showDialog: function() {
    var _source, i, general, mList, mHoleIdx, mHoleDate, _gemsData, _nextLevelValue, pos, callbackRight1, _visibleSize, _panelSize;
    // source line 164, bytecode pc 17
    this._FateScrollView.removeAllChildrenView();
    // source line 165, bytecode pc 35
    this._SourceScrollView.removeAllChildrenView();
    // source line 166, bytecode pc 53
    this._EffectScrollView.removeAllChildrenView();
    // source line 168, bytecode pc 74
    (_source = this._equipData.getSource());
    // source line 169, bytecode pc 101
    xs.dump("来源", _source);
    // source line 170, bytecode pc 106
    (i = 0);
    while ((i < _source.length)) {
        // source line 177, bytecode pc 315
        this._SourceScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleG({
    explanationText: xs.Tools.String.createString(_source[i].source_desc),
    btnText: xs.Tools.String.createString(_source[i].button_name),
    type: _source[i].source_type,
    dungeonId: _source[i].param_value,
    map_id: _source[i].map_id,
    pkid: _source[i].param_value
}));
        // source line 170, bytecode pc 329
        (i = (+i + 1));
    }
    // source line 182, bytecode pc 432
    this._SourceScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleD({ titleText: xs.Tools.String.createString("auto_name_378") }));
    // source line 185, bytecode pc 501
    (general = xs.Profile.GameData.Mgr.getInstance().Equipments.getHasFateGeneral(this._equipData.getId()));
    // source line 186, bytecode pc 533
    xs.log(("DetailDialogEquip general length is " + general.length));
    if ((general.length > 0)) {
        // source line 189, bytecode pc 553
        (i = 0);
        while ((i < general.length)) {
            // source line 197, bytecode pc 610
            (general[i].drawSelf = function() {
    var _this, _cellData;
    // source line 191, bytecode pc 6
    (_this = this[0]);
    // source line 192, bytecode pc 13
    (_cellData = this[1]);
    if ((_this.createCell == null)) {
        // source line 194, bytecode pc 51
        xs.error("DetailDialogEquip showDialog error _this.createCell is null");
    }
    // source line 196, bytecode pc 70
    return _this.createCell(_cellData);
}.bind([ this, general[i] ]));
            // source line 189, bytecode pc 624
            (i = (+i + 1));
        }
        // source line 199, bytecode pc 680
        (general = xs.Views.Table.changeDimensionsOneToTwo(general, 4));
        // source line 202, bytecode pc 735
        this._FateScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleI({ generalData: general }));
        // source line 206, bytecode pc 819
        this._FateScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleD({ titleText: xs.Tools.String.createString("auto_name_379") }));
    }
    if ((xs.Utils.isSet(this._equipData) && (this._equipData.getGrade() == xs.Constant_Grade_God))) {
        // source line 213, bytecode pc 907
        (mList = this._equipData.getBoreList());
        if (!xs.Utils.isEmpty(mList)) {
            // source line 216, bytecode pc 952
            (mHoleIdx = (mList.length - 1));
            while ((mHoleIdx >= 0)) {
                // source line 217, bytecode pc 969
                (mHoleDate = mList[mHoleIdx]);
                // source line 218, bytecode pc 974
                (_gemsData = null);
                if (!xs.Utils.isEmpty(mHoleDate.gem_id)) {
                    // source line 220, bytecode pc 1070
                    (_gemsData = xs.Profile.GameData.Mgr.getInstance().Gems.getByPkId(mHoleDate.user_gem_id));
                    // source line 221, bytecode pc 1109
                    (_gemsData = xs.Models.Gems.createWithBase(mHoleDate.gem_id));
                }
                // source line 226, bytecode pc 1195
                this._EffectScrollView.addChildrenView(xs.DetailDialogComponent.createEStyleGemsEqu({ gemsData: _gemsData, bore_sprite: this._equipData.getBoreSpriteNameByType(mHoleDate.bore_type) }));
                // source line 216, bytecode pc 1209
                (mHoleIdx = (+mHoleIdx - 1));
            }
            // source line 233, bytecode pc 1305
            this._EffectScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleD({ titleText: xs.Tools.String.createString("gems_str_for_equDetails") }));
        }
    }
    // source line 243, bytecode pc 1343
    (_nextLevelValue = Math.floor(this._equipData.getNextLevelEffectValue()));
    // source line 247, bytecode pc 1463
    this._EffectScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleJ({
    titleText: xs.Tools.String.createString("auto_name_380"),
    contentText: ("+" + _nextLevelValue),
    effectType: this._equipData.getEffectType()
}));
    // source line 252, bytecode pc 1614
    this._EffectScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleJ({
    titleText: xs.Tools.String.createString("auto_name_373"),
    contentText: ("+" + Math.floor(this._equipData.getEffectValue())),
    effectType: this._equipData.getEffectType()
}));
    // source line 257, bytecode pc 1720
    this._EffectScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleA({
    titleText: xs.Tools.String.createString("auto_name_381"),
    contentText: this._equipData.getDescString()
}));
    // source line 260, bytecode pc 1754
    xs.Utils.Node.safeRemoveChild(this._equipWidget);
    // source line 261, bytecode pc 1778
    (this._equipWidget = this._equipData.createCard_Detail());
    // source line 262, bytecode pc 1813
    (pos = this._BGccbNode.getChildByTag(4).getPosition());
    // source line 263, bytecode pc 1835
    this._equipWidget.setPosition(pos);
    // source line 264, bytecode pc 1876
    xs.Utils.Node.attachNodes(this._BGccbNode, this._equipWidget);
    // source line 271, bytecode pc 1898
    (callbackRight1 = function() {
    var parent;
    // source line 267, bytecode pc 29
    xs.log(("callbackRight " + this._equipData));
    // source line 268, bytecode pc 45
    (parent = this.getParent());
    // source line 269, bytecode pc 72
    xs.Views.Mgr.hideDialog();
    // source line 270, bytecode pc 112
    xs.Views.Mgr.showDialogByName("EquipmentStrengthenDialog", this._equipData);
}.bind(this));
    // source line 273, bytecode pc 1932
    xs.Utils.Node.safeRemoveChild(this._panel);
    // source line 280, bytecode pc 2106
    (this._panel = xs.DetailDialogComponent.createDStyleN({
    btnTextL: xs.Tools.String.createString("auto_name_382"),
    callbackLeft: function() {
},
    btnTextR: xs.Tools.String.createString("str_Equipment_Strongger"),
    callbackRight: callbackRight1,
    btnTextUnUse: xs.Tools.String.createString("btnStr_refining"),
    callbackUnUse: function() {
}
}));
    // source line 282, bytecode pc 2131
    (_visibleSize = xs.director.getVisibleSize());
    // source line 283, bytecode pc 2157
    (_panelSize = this._panel._ccbNode.getContentSize());
    // source line 290, bytecode pc 2283
    xs.Utils.Node.attachNodes(this._BGccbNode, this._panel, {
    desc: "lb",
    sc: true,
    offset: { x: (((this._BGccbNode.getContentSize().width / 2) - (_panelSize.width / 2)) - 8), y: 0 }
});
    // source line 293, bytecode pc 2301
    this._FateScrollView.resizeView();
    // source line 294, bytecode pc 2319
    this._SourceScrollView.resizeView();
    // source line 295, bytecode pc 2337
    this._EffectScrollView.resizeView();
},
    setChangEquipCB: function(callback) {
    var button;
    // source line 298, bytecode pc 20
    (button = this._panel.getButtonLeft());
    // source line 300, bytecode pc 39
    button.setOnClickCallBack(callback);
},
    createCell: function(celldata) {
    var _generalData, _fun, _result;
    // source line 307, bytecode pc 50
    (_generalData = xs.Models.General.createWithBase(celldata.getId()));
    // source line 308, bytecode pc 59
    (_fun = function() {
    // source line 309, bytecode pc 63
    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: _generalData, type: "achieve_nothave" });
});
    // source line 311, bytecode pc 77
    (_result = celldata.createIcon_GradeAndName());
    // source line 312, bytecode pc 96
    _result.setOnClickCallBack(_fun);
    // source line 313, bytecode pc 120
    _result.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 314, bytecode pc 124
    return _result;
},
    setDisplayType: function(params) {
    if ((params.flag != null)) {
        // source line 318, bytecode pc 41
        this._panel.setVisible(params.flag);
    }
},
    setUnUseCB: function(callback) {
    var button;
    // source line 322, bytecode pc 20
    (button = this._panel.getButtonUnUse());
    if ((callback == null)) {
        // source line 326, bytecode pc 64
        button.setOnClickCallBack(function() {
    // source line 325, bytecode pc 39
    xs.Views.Mgr.showDialogByName("RefineEquipmentDialog", this._equipData);
}.bind(this));
        // source line 327, bytecode pc 66
        return void 0;
    }
    // source line 330, bytecode pc 85
    button.setOnClickCallBack(callback);
},
    setBaseTouchPriority: function(priority) {
    // source line 333, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 334, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 335, bytecode pc 56
    this.m_endButton.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 340, bytecode pc 296
(xs.Views.Dialog.DetailDialogEquip.create = function(params) {
    var obj, param;
    // source line 341, bytecode pc 28
    (obj = new xs.Views.Dialog.DetailDialogEquip());
    // source line 342, bytecode pc 47
    (param = (params || {}));
    if ((obj && obj.initWithData(param))) {
        // source line 344, bytecode pc 94
        obj.showDialog();
        if ((param.flag != null)) {
            // source line 346, bytecode pc 128
            obj.setDisplayType(param);
        }
        // source line 348, bytecode pc 132
        return obj;
    }
    // source line 350, bytecode pc 134
    return null;
});
// source line 355, bytecode pc 376
xs.Views.Mgr.registerDialog("DetailDialogEquip", { "class": xs.Views.Dialog.DetailDialogEquip, styleType: xs.Constant_DlgStyleType_Large });
