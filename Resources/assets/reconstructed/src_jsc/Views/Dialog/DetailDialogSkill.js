// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/DetailDialogSkill.js:1
// source line 395, bytecode pc 294
(xs.Views.Dialog.DetailDialogSkill = xs.Views.Dialog.CommonDialog.extend({
    ccbCfg: [ { tag: 1, type: "ls", name: "", id: "LS_popUI1", stringId: "auto_name_384" } ],
    loadCCBI: function() {
    var _visibleSize, _BGccbNodeSize;
    // source line 7, bytecode pc 24
    (_visibleSize = xs.director.getVisibleSize());
    // source line 9, bytecode pc 75
    (this._BGccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DeatailDialogBG, this));
    // source line 10, bytecode pc 96
    (_BGccbNodeSize = this._BGccbNode.getContentSize());
    // source line 16, bytecode pc 216
    xs.Utils.Node.attachNodes(this, this._BGccbNode, {
    desc: "lb",
    sc: true,
    offset: {
        x: ((_visibleSize.width - _BGccbNodeSize.width) / 2),
        y: ((_visibleSize.height - _BGccbNodeSize.height) / 2)
    }
});
    // source line 20, bytecode pc 259
    xs.Utils.UI.replaceCcbByCfg(this._BGccbNode, this.ccbCfg, this);
    // source line 21, bytecode pc 293
    this._BGccbNode.getChildByTag(104).setVisible(false);
    // source line 22, bytecode pc 327
    this._BGccbNode.getChildByTag(103).setVisible(false);
    // source line 23, bytecode pc 361
    this._BGccbNode.getChildByTag(102).setVisible(false);
    // source line 24, bytecode pc 395
    this._BGccbNode.getChildByTag(101).setVisible(false);
    // source line 26, bytecode pc 467
    (this._effectpageBtn = xs.Views.Btn.createWithString("Btn_TableChat", xs.Tools.String.createString("auto_name_375")));
    // source line 27, bytecode pc 506
    this._effectpageBtn.setAnchorPoint(cc.p(0, 1));
    // source line 28, bytecode pc 526
    this._effectpageBtn.setZoomOnTouchDown(false);
    // source line 29, bytecode pc 576
    this._effectpageBtn.setPosition(this._BGccbNode.getChildByTag(101).getPosition());
    // source line 30, bytecode pc 617
    xs.Utils.Node.attachNodes(this._BGccbNode, this._effectpageBtn);
    // source line 31, bytecode pc 664
    this._effectpageBtn.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 32, bytecode pc 701
    this._effectpageBtn.setOnClickCallBack(function() {
    // source line 32, bytecode pc 12
    this._effectBtnCB();
}.bind(this));
    // source line 33, bytecode pc 742
    this._effectpageBtn.setPreferredSize(cc.size(115, 62));
    // source line 35, bytecode pc 814
    (this._fatepageBtn = xs.Views.Btn.createWithString("Btn_TableChat", xs.Tools.String.createString("auto_name_376")));
    // source line 36, bytecode pc 853
    this._fatepageBtn.setAnchorPoint(cc.p(0, 1));
    // source line 37, bytecode pc 873
    this._fatepageBtn.setZoomOnTouchDown(false);
    // source line 38, bytecode pc 923
    this._fatepageBtn.setPosition(this._BGccbNode.getChildByTag(102).getPosition());
    // source line 39, bytecode pc 964
    xs.Utils.Node.attachNodes(this._BGccbNode, this._fatepageBtn);
    // source line 40, bytecode pc 1001
    this._fatepageBtn.setOnClickCallBack(function() {
    // source line 40, bytecode pc 12
    this._fatepageBtnCB();
}.bind(this));
    // source line 41, bytecode pc 1048
    this._fatepageBtn.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 42, bytecode pc 1089
    this._fatepageBtn.setPreferredSize(cc.size(115, 62));
    // source line 44, bytecode pc 1161
    (this._sourcepageBtn = xs.Views.Btn.createWithString("Btn_TableChat", xs.Tools.String.createString("auto_name_377")));
    // source line 45, bytecode pc 1200
    this._sourcepageBtn.setAnchorPoint(cc.p(0, 1));
    // source line 46, bytecode pc 1220
    this._sourcepageBtn.setZoomOnTouchDown(false);
    // source line 47, bytecode pc 1270
    this._sourcepageBtn.setPosition(this._BGccbNode.getChildByTag(103).getPosition());
    // source line 48, bytecode pc 1311
    xs.Utils.Node.attachNodes(this._BGccbNode, this._sourcepageBtn);
    // source line 49, bytecode pc 1348
    this._sourcepageBtn.setOnClickCallBack(function() {
    // source line 49, bytecode pc 12
    this._sourcepageBtnCB();
}.bind(this));
    // source line 50, bytecode pc 1395
    this._sourcepageBtn.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 51, bytecode pc 1436
    this._sourcepageBtn.setPreferredSize(cc.size(115, 62));
},
    showPageArrow: function() {
    var _player_vip, max_advanced_level, SkillAdvancedShowConf, unlock_vip_level;
    if (!this.leftArrow) {
        // source line 58, bytecode pc 55
        (this._arm_left = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
        // source line 59, bytecode pc 98
        this._arm_left.playAniById("guide", { loop: true, speed: 1 });
        // source line 61, bytecode pc 138
        (this.leftArrow = xs.Views.Btn.createInvisibleWithChild(this._arm_left));
        // source line 62, bytecode pc 160
        this.leftArrow.setRotation(180);
        // source line 63, bytecode pc 188
        this.leftArrow.setTouchPriority((this.m_baseTouchPriority - 2));
        // source line 64, bytecode pc 226
        this.leftArrow.setOnClickCallBack(this._onLeftMove.bind(this));
        // source line 66, bytecode pc 311
        xs.Utils.Node.attachNodes(this, this.leftArrow, { desc: "cl", offset: cc.p(30, 0), sc: true });
    }
    if (!this.rightArrow) {
        // source line 70, bytecode pc 367
        (this._arm_right = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
        // source line 71, bytecode pc 410
        this._arm_right.playAniById("guide", { loop: true, speed: 1 });
        // source line 73, bytecode pc 450
        (this.rightArrow = xs.Views.Btn.createInvisibleWithChild(this._arm_right));
        // source line 74, bytecode pc 478
        this.rightArrow.setTouchPriority((this.m_baseTouchPriority - 2));
        // source line 75, bytecode pc 516
        this.rightArrow.setOnClickCallBack(this._onRightMove.bind(this));
        // source line 78, bytecode pc 601
        xs.Utils.Node.attachNodes(this, this.rightArrow, { desc: "cr", offset: cc.p(-50, 0), sc: true });
    }
    // source line 82, bytecode pc 663
    (_player_vip = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
    // source line 83, bytecode pc 684
    (max_advanced_level = this._skillData.getMaxAdvancedLevel());
    if ((this._skillData.id == 311017)) {
        // source line 85, bytecode pc 710
        (max_advanced_level = null);
    }
    // source line 87, bytecode pc 746
    (SkillAdvancedShowConf = xs.Tools.CfgData.getGlobalConf("SkillAdvancedShowConf"));
    // source line 89, bytecode pc 801
    (unlock_vip_level = (!xs.Utils.isEmpty(SkillAdvancedShowConf.unlock_vip_level) ? SkillAdvancedShowConf.unlock_vip_level : 12));
    if ((max_advanced_level && (_player_vip < unlock_vip_level))) {
        // source line 91, bytecode pc 876
        (max_advanced_level = (!xs.Utils.isEmpty(SkillAdvancedShowConf.show_level) ? SkillAdvancedShowConf.show_level : 1));
    }
    if (max_advanced_level) {
        if ((this._skillData.getAdvancedLevel() == 0)) {
            // source line 96, bytecode pc 928
            this.leftArrow.setVisible(false);
            // source line 97, bytecode pc 948
            this.rightArrow.setVisible(true);
        } else {
            if ((this._skillData.getAdvancedLevel() == max_advanced_level)) {
                // source line 99, bytecode pc 999
                this.leftArrow.setVisible(true);
                // source line 100, bytecode pc 1019
                this.rightArrow.setVisible(false);
            } else {
                // source line 102, bytecode pc 1044
                this.leftArrow.setVisible(true);
                // source line 103, bytecode pc 1064
                this.rightArrow.setVisible(true);
            }
        }
    } else {
        // source line 106, bytecode pc 1089
        this.leftArrow.setVisible(false);
        // source line 107, bytecode pc 1109
        this.rightArrow.setVisible(false);
    }
},
    _onRightMove: function() {
    var _skillData, _isVisible;
    // source line 112, bytecode pc 20
    (_skillData = this._skillData.Clone());
    // source line 113, bytecode pc 52
    _skillData.setAdvancedLevel((_skillData.getAdvancedLevel() + 1));
    // source line 114, bytecode pc 73
    (_isVisible = this._panel.isVisible());
    // source line 115, bytecode pc 83
    (this._skillData = _skillData);
    // source line 117, bytecode pc 96
    this.showDialog();
    // source line 118, bytecode pc 124
    this.setDisplayType({ flag: _isVisible });
},
    _onLeftMove: function() {
    var _skillData, _isVisible;
    // source line 124, bytecode pc 20
    (_skillData = this._skillData.Clone());
    // source line 126, bytecode pc 52
    _skillData.setAdvancedLevel((_skillData.getAdvancedLevel() - 1));
    // source line 127, bytecode pc 62
    (this._skillData = _skillData);
    // source line 128, bytecode pc 83
    (_isVisible = this._panel.isVisible());
    // source line 129, bytecode pc 96
    this.showDialog();
    // source line 130, bytecode pc 124
    this.setDisplayType({ flag: _isVisible });
},
    _resetState: function() {
    // source line 134, bytecode pc 19
    this._sourcepageBtn.setSelected(false);
    // source line 135, bytecode pc 39
    this._fatepageBtn.setSelected(false);
    // source line 136, bytecode pc 59
    this._effectpageBtn.setSelected(false);
    // source line 138, bytecode pc 79
    this._FateScrollView.setVisible(false);
    // source line 139, bytecode pc 99
    this._SourceScrollView.setVisible(false);
    // source line 140, bytecode pc 119
    this._EffectScrollView.setVisible(false);
},
    _effectBtnCB: function() {
    // source line 143, bytecode pc 12
    this._resetState();
    // source line 144, bytecode pc 32
    this._effectpageBtn.setSelected(true);
    // source line 145, bytecode pc 52
    this._EffectScrollView.setVisible(true);
},
    _fatepageBtnCB: function() {
    // source line 148, bytecode pc 12
    this._resetState();
    // source line 149, bytecode pc 32
    this._fatepageBtn.setSelected(true);
    // source line 150, bytecode pc 52
    this._FateScrollView.setVisible(true);
},
    _sourcepageBtnCB: function() {
    // source line 153, bytecode pc 12
    this._resetState();
    // source line 154, bytecode pc 32
    this._sourcepageBtn.setSelected(true);
    // source line 155, bytecode pc 52
    this._SourceScrollView.setVisible(true);
},
    initWithData: function(params) {
    var param;
    if (!this.init()) {
        // source line 159, bytecode pc 19
        return false;
    }
    // source line 161, bytecode pc 38
    (param = (params || {}));
    // source line 162, bytecode pc 53
    (this._skillData = param.skillData);
    // source line 163, bytecode pc 68
    (this.m_playerId = param.playerId);
    // source line 164, bytecode pc 83
    (this.m_playerData = param.playerData);
    // source line 166, bytecode pc 96
    this.loadCCBI();
    // source line 169, bytecode pc 127
    (this._EffectScrollViewSize = cc.size(490, 452));
    // source line 170, bytecode pc 167
    (this._EffectScrollView = xs.Views.ScrollView.create(this._EffectScrollViewSize));
    // source line 171, bytecode pc 209
    this._EffectScrollView.setPosition(cc.p(380, 30));
    // source line 172, bytecode pc 239
    xs.log(("this.m_baseTouchPriority is " + this.m_baseTouchPriority));
    // source line 173, bytecode pc 266
    this._EffectScrollView.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 174, bytecode pc 307
    xs.Utils.Node.attachNodes(this._BGccbNode, this._EffectScrollView);
    // source line 176, bytecode pc 338
    (this._EffectScrollViewSize = cc.size(490, 452));
    // source line 177, bytecode pc 378
    (this._FateScrollView = xs.Views.ScrollView.create(this._EffectScrollViewSize));
    // source line 178, bytecode pc 420
    this._FateScrollView.setPosition(cc.p(380, 30));
    // source line 179, bytecode pc 450
    xs.log(("this.m_baseTouchPriority is " + this.m_baseTouchPriority));
    // source line 180, bytecode pc 477
    this._FateScrollView.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 181, bytecode pc 518
    xs.Utils.Node.attachNodes(this._BGccbNode, this._FateScrollView);
    // source line 183, bytecode pc 549
    (this._EffectScrollViewSize = cc.size(490, 452));
    // source line 184, bytecode pc 589
    (this._SourceScrollView = xs.Views.ScrollView.create(this._EffectScrollViewSize));
    // source line 185, bytecode pc 631
    this._SourceScrollView.setPosition(cc.p(380, 30));
    // source line 186, bytecode pc 661
    xs.log(("this.m_baseTouchPriority is " + this.m_baseTouchPriority));
    // source line 187, bytecode pc 688
    this._SourceScrollView.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 188, bytecode pc 729
    xs.Utils.Node.attachNodes(this._BGccbNode, this._SourceScrollView);
    // source line 190, bytecode pc 757
    this._fatepageBtn.setTouchPriority((this.m_baseTouchPriority - 10));
    // source line 191, bytecode pc 785
    this._effectpageBtn.setTouchPriority((this.m_baseTouchPriority - 10));
    // source line 192, bytecode pc 813
    this._sourcepageBtn.setTouchPriority((this.m_baseTouchPriority - 10));
    // source line 195, bytecode pc 863
    (this.m_endButton = xs.Utils.replaceButton(this._BGccbNode, 5, "Btn_Close", ""));
    // source line 197, bytecode pc 887
    this.m_endButton.setOnClickCallBack(function() {
    // source line 198, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 208, bytecode pc 900
    this._effectBtnCB();
    // source line 210, bytecode pc 902
    return true;
},
    showDialog: function() {
    var _source, i, _generalId, _generalModel, _generalName, general, _lvNum, _xingXing, pos, callbackRight1, _panelSize;
    // source line 215, bytecode pc 17
    this._SourceScrollView.removeAllChildrenView();
    // source line 216, bytecode pc 35
    this._FateScrollView.removeAllChildrenView();
    // source line 217, bytecode pc 53
    this._EffectScrollView.removeAllChildrenView();
    // source line 218, bytecode pc 74
    (_source = this._skillData.getSource());
    // source line 219, bytecode pc 79
    (i = 0);
    while ((i < _source.length)) {
        // source line 220, bytecode pc 106
        (_generalId = this._skillData.getWarlordGeneralId());
        // source line 221, bytecode pc 140
        (_generalModel = xs.Models.General.createWithBase(_generalId));
        // source line 222, bytecode pc 158
        (_generalName = _generalModel.getNameString());
        // source line 232, bytecode pc 382
        this._SourceScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleG({
    explanationText: xs.Tools.String.createStringWithArgsArray(_source[i].source_desc, [ _generalName ]),
    btnText: xs.Tools.String.createString(_source[i].button_name),
    type: _source[i].source_type,
    generalId: _generalId,
    dungeonId: _source[i].param_value,
    map_id: _source[i].map_id,
    pkid: _source[i].param_value
}));
        // source line 219, bytecode pc 397
        i++;
    }
    // source line 237, bytecode pc 499
    this._SourceScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleD({ titleText: xs.Tools.String.createString("auto_name_385") }));
    // source line 240, bytecode pc 568
    (general = xs.Profile.GameData.Mgr.getInstance().Skills.getHasFateGeneral(this._skillData.getId()));
    if ((general.length > 0)) {
        // source line 243, bytecode pc 588
        (i = 0);
        while ((i < general.length)) {
            // source line 251, bytecode pc 645
            (general[i].drawSelf = function() {
    var _this, _cellData;
    // source line 245, bytecode pc 6
    (_this = this[0]);
    // source line 246, bytecode pc 13
    (_cellData = this[1]);
    if ((_this.createCell == null)) {
        // source line 248, bytecode pc 51
        xs.error("DetailDialogSkill showDialog error _this.createCell is null");
    }
    // source line 250, bytecode pc 70
    return _this.createCell(_cellData);
}.bind([ this, general[i] ]));
            // source line 243, bytecode pc 660
            i++;
        }
        // source line 253, bytecode pc 715
        (general = xs.Views.Table.changeDimensionsOneToTwo(general, 4));
        // source line 255, bytecode pc 770
        this._FateScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleI({ generalData: general }));
        // source line 259, bytecode pc 854
        this._FateScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleD({ titleText: xs.Tools.String.createString("auto_name_379") }));
    }
    // source line 266, bytecode pc 960
    this._EffectScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleC({
    titleText: xs.Tools.String.createString("auto_name_386"),
    contentText: this._skillData.getDescString()
}));
    // source line 271, bytecode pc 1066
    this._EffectScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleC({
    titleText: xs.Tools.String.createString("auto_name_387"),
    contentText: this._skillData.getRangeDesc()
}));
    // source line 276, bytecode pc 1172
    this._EffectScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleC({
    titleText: xs.Tools.String.createString("auto_name_388"),
    contentText: this._skillData.getPhaseDesc()
}));
    // source line 282, bytecode pc 1278
    this._EffectScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleA({
    titleText: xs.Tools.String.createString("auto_name_389"),
    contentText: this._skillData.getShortDesc()
}));
    // source line 286, bytecode pc 1299
    (_lvNum = this._skillData.getAdvancedLevel());
    if (Number(_lvNum)) {
        if (!this._skillAdvancedLevelBg) {
            // source line 290, bytecode pc 1379
            (this._skillAdvancedLevelBg = xs.Factorys.Sprite.create("smallIcon_fp_bg", "Cmn01"));
            // source line 291, bytecode pc 1403
            this._skillAdvancedLevelBg.setScale(0.8);
            // source line 292, bytecode pc 1423
            this._skillAdvancedLevelBg.setVisible(true);
            // source line 295, bytecode pc 1506
            xs.Utils.Node.attachNodes(this._EffectScrollView, this._skillAdvancedLevelBg, { desc: "tr", offset: { x: -50, y: -15 } });
            // source line 299, bytecode pc 1548
            (_xingXing = xs.Factorys.Sprite.create("Cmn03_chuizi", "Cmn03"));
            // source line 300, bytecode pc 1569
            _xingXing.setScale(0.3);
            // source line 301, bytecode pc 1648
            xs.Utils.Node.attachNodes(this._skillAdvancedLevelBg, _xingXing, { desc: "c", offset: { x: -40, y: 1 } });
            // source line 302, bytecode pc 1687
            (this.m_advancedLv = xs.Factorys.Label.createByStyleId("LS_Lv"));
            // source line 303, bytecode pc 1769
            xs.Utils.Node.attachNodes(this._skillAdvancedLevelBg, this.m_advancedLv, { desc: "c", offset: { x: -15, y: 1 } });
        }
        if (this.m_advancedLv) {
            // source line 306, bytecode pc 1802
            this.m_advancedLv.setString(_lvNum);
        }
    } else {
        if (this._skillAdvancedLevelBg) {
            // source line 310, bytecode pc 1843
            this._EffectScrollView.removeChild(this._skillAdvancedLevelBg);
            // source line 311, bytecode pc 1851
            (this._skillAdvancedLevelBg = null);
        }
    }
    // source line 318, bytecode pc 1885
    xs.Utils.Node.safeRemoveChild(this._skillWidget);
    // source line 319, bytecode pc 1909
    (this._skillWidget = this._skillData.createCard_Detail());
    // source line 320, bytecode pc 1944
    (pos = this._BGccbNode.getChildByTag(4).getPosition());
    // source line 321, bytecode pc 1966
    this._skillWidget.setPosition(pos);
    // source line 322, bytecode pc 2007
    xs.Utils.Node.attachNodes(this._BGccbNode, this._skillWidget);
    // source line 328, bytecode pc 2029
    (callbackRight1 = function() {
    // source line 325, bytecode pc 29
    xs.log(("callbackRight " + this._skillData));
    // source line 326, bytecode pc 69
    xs.Scene.Mgr.changeSceneByName("SkillUpScene", this._skillData);
    // source line 327, bytecode pc 96
    xs.Views.Mgr.hideDialog();
}.bind(this));
    if (!this._panel) {
        // source line 338, bytecode pc 2215
        (this._panel = xs.DetailDialogComponent.createDStyleN({
    btnTextL: xs.Tools.String.createString("str_ReplaceDialog_replaceSkill"),
    callbackLeft: function() {
},
    btnTextR: xs.Tools.String.createString("auto_name_390"),
    callbackRight: callbackRight1,
    btnTextUnUse: xs.Tools.String.createString("str_ReplaceDialog_discharge"),
    callbackUnUse: function() {
}
}));
        // source line 341, bytecode pc 2241
        (_panelSize = this._panel._ccbNode.getContentSize());
        // source line 347, bytecode pc 2367
        xs.Utils.Node.attachNodes(this._BGccbNode, this._panel, {
    desc: "lb",
    sc: true,
    offset: { x: (((this._BGccbNode.getContentSize().width / 2) - (_panelSize.width / 2)) - 8), y: 0 }
});
    }
    // source line 352, bytecode pc 2385
    this._EffectScrollView.resizeView();
    // source line 353, bytecode pc 2403
    this._FateScrollView.resizeView();
    // source line 354, bytecode pc 2421
    this._SourceScrollView.resizeView();
    // source line 356, bytecode pc 2434
    this.showPageArrow();
},
    setChangSkillCB: function(callback) {
    var button;
    // source line 359, bytecode pc 20
    (button = this._panel.getButtonLeft());
    // source line 361, bytecode pc 39
    button.setOnClickCallBack(callback);
},
    getChangeSkillButton: function() {
    if (this._panel.getButtonLeft()) {
        // source line 365, bytecode pc 39
        return this._panel.getButtonLeft();
    }
},
    createCell: function(celldata) {
    var _generalData, _fun, _result;
    // source line 371, bytecode pc 50
    (_generalData = xs.Models.General.createWithBase(celldata.getId()));
    // source line 372, bytecode pc 59
    (_fun = function() {
    // source line 373, bytecode pc 63
    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: _generalData, type: "achieve_nothave" });
});
    // source line 375, bytecode pc 77
    (_result = celldata.createIcon_GradeAndName());
    // source line 376, bytecode pc 96
    _result.setOnClickCallBack(_fun);
    // source line 377, bytecode pc 120
    _result.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 378, bytecode pc 124
    return _result;
},
    setDisplayType: function(params) {
    // source line 382, bytecode pc 26
    this._panel.setVisible(params.flag);
},
    setUnUseCB: function(callback) {
    var button;
    // source line 385, bytecode pc 20
    (button = this._panel.getButtonUnUse());
    // source line 387, bytecode pc 39
    button.setOnClickCallBack(callback);
},
    getUnUseButton: function(callback) {
    if (this._panel.getButtonUnUse()) {
        // source line 392, bytecode pc 39
        return this._panel.getButtonUnUse();
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 396, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 397, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 398, bytecode pc 56
    this.m_endButton.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 403, bytecode pc 325
(xs.Views.Dialog.DetailDialogSkill.create = function(params) {
    var obj, param;
    // source line 404, bytecode pc 28
    (obj = new xs.Views.Dialog.DetailDialogSkill());
    // source line 405, bytecode pc 47
    (param = (params || {}));
    if ((obj && obj.initWithData(param))) {
        // source line 407, bytecode pc 94
        obj.showDialog();
        if ((param.flag != null)) {
            // source line 409, bytecode pc 128
            obj.setDisplayType(param);
        }
        // source line 411, bytecode pc 132
        return obj;
    }
    // source line 413, bytecode pc 134
    return null;
});
// source line 417, bytecode pc 405
xs.Views.Mgr.registerDialog("DetailDialogSkill", { "class": xs.Views.Dialog.DetailDialogSkill, styleType: xs.Constant_DlgStyleType_Large });
