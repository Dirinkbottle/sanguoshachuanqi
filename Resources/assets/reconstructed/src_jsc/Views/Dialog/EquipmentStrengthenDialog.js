// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/EquipmentStrengthenDialog.js:1
// source line 335, bytecode pc 551
(xs.Views.Dialog.EquipmentStrengthenDialog = xs.Views.Dialog.CommonDialog.extend({
    ccbCfg: [
        { tag: 4, type: "ls", id: "LS_Lv" },
        { tag: 20, type: "ls", id: "LS_Lv" },
        { tag: 21, type: "ls", id: "LS_Lv" },
        { tag: 22, type: "ls", id: "LS_shuxing1" },
        { tag: 23, type: "ls", id: "LS_shuxing1" },
        { tag: 5, type: "ls", id: "LS_mainUI4" },
        { tag: 9, type: "ls", id: "LS_mainUI4" },
        { tag: 100, type: "ls", id: "LS_popUI1", stringId: "auto_name_402" },
        { tag: 101, type: "bs", name: "m_endButton", id: "BS_Close" }
    ],
    name: "EquipmentStrengthenDialog",
    loadCCBI: function() {
    var visibleOrigin, visibleSize, _bgSize, mZBname, mZBnamePosX;
    // source line 20, bytecode pc 24
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 21, bytecode pc 49
    (visibleSize = xs.director.getVisibleSize());
    // source line 25, bytecode pc 100
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.equalmentStrengthen_Dialog, this));
    // source line 26, bytecode pc 121
    (_bgSize = this._ccbNode.getContentSize());
    // source line 28, bytecode pc 168
    xs.log(((("_bgsize is " + _bgSize.width) + ",") + _bgSize.height));
    // source line 29, bytecode pc 215
    xs.log(((("visiblesize is " + visibleSize.width) + ",") + visibleSize.height));
    // source line 35, bytecode pc 352
    xs.Utils.Node.attachNodes(this, this._ccbNode, {
    desc: "lb",
    sc: true,
    offset: {
        x: (Math.abs((visibleSize.width - _bgSize.width)) / 2),
        y: ((visibleSize.height - _bgSize.height) / 2)
    }
});
    // source line 38, bytecode pc 395
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 39, bytecode pc 419
    (mZBname = this._ccbNode.getChildByTag(3));
    // source line 40, bytecode pc 437
    (mZBnamePosX = mZBname.getPositionX());
    // source line 42, bytecode pc 463
    mZBname.setAnchorPoint(xs.ap_lc);
    // source line 43, bytecode pc 485
    mZBname.setPositionX((mZBnamePosX - 45));
    // source line 47, bytecode pc 511
    this.m_endButton.addCallBackForEvent(this, function() {
    // source line 48, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
},
    onEnter: function() {
    // source line 58, bytecode pc 22
    xs.log("EquipmentStrengthenDialog onEnter");
},
    onExit: function() {
    // source line 62, bytecode pc 22
    xs.log("equalmentStrengthen_Dialog onExit");
},
    showDialog: function(equipObj) {
    var quickStreng, Streng, pos;
    // source line 68, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this._equipCard);
    // source line 69, bytecode pc 67
    xs.Utils.Node.safeRemoveChild(this._gradeIcon);
    // source line 70, bytecode pc 101
    xs.Utils.Node.safeRemoveChild(this._quickButton);
    // source line 71, bytecode pc 135
    xs.Utils.Node.safeRemoveChild(this._strengButton);
    // source line 72, bytecode pc 169
    xs.Utils.Node.safeRemoveChild(this._sprite);
    // source line 73, bytecode pc 203
    xs.Utils.Node.safeRemoveChild(this._sprite1);
    // source line 76, bytecode pc 230
    xs.log(("xs.Views.EquipmentStrengthenDialog showDialog," + equipObj));
    if ((equipObj != null)) {
        // source line 78, bytecode pc 250
        (this._data = equipObj);
        // source line 79, bytecode pc 274
        (this._cloneData = this._data.Clone());
    }
    // source line 81, bytecode pc 297
    xs.log("xs.Views.EquipmentStrengthenDialog showDialog1,");
    // source line 83, bytecode pc 348
    (this._gradeIcon = xs.Tools.UI.createGradeSmallIcon(this._data.getGrade()));
    // source line 84, bytecode pc 398
    this._gradeIcon.setPosition(this._ccbNode.getChildByTag(2).getPosition());
    // source line 85, bytecode pc 439
    xs.Utils.Node.attachNodes(this._ccbNode, this._gradeIcon);
    // source line 86, bytecode pc 462
    xs.log("xs.Views.EquipmentStrengthenDialog showDialog2,");
    // source line 88, bytecode pc 512
    this._ccbNode.getChildByTag(3).setString(this._data.getNameString());
    // source line 89, bytecode pc 535
    xs.log("xs.Views.EquipmentStrengthenDialog showDialog7,");
    // source line 91, bytecode pc 630
    xs.log(((("this._data.getMaxLevel() " + xs.Profile.GameData.Mgr.getInstance().Equipments.getEquipmentUpgradeTotalLevel()) + ",") + this._data.getLevel()));
    // source line 93, bytecode pc 734
    this._ccbNode.getChildByTag(4).setString(((this._data.getLevel() + "/") + xs.Profile.GameData.Mgr.getInstance().Equipments.getEquipmentUpgradeTotalLevel()));
    // source line 94, bytecode pc 757
    xs.log("xs.Views.EquipmentStrengthenDialog showDialog3,");
    // source line 96, bytecode pc 798
    xs.log(("this._data.getCurLevelUpgradeCfg().getCoinNeed() " + this._data.getUpgradeCoinNeed()));
    // source line 97, bytecode pc 848
    this._ccbNode.getChildByTag(5).setString(this._data.getUpgradeCoinNeed());
    // source line 99, bytecode pc 939
    this._ccbNode.getChildByTag(9).setString(xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerTongQian());
    // source line 102, bytecode pc 989
    this._ccbNode.getChildByTag(20).setString(this._data.getLevel());
    // source line 103, bytecode pc 1041
    this._ccbNode.getChildByTag(21).setString((this._data.getLevel() + 1));
    // source line 104, bytecode pc 1108
    this._ccbNode.getChildByTag(22).setString(Math.floor(this._data.getEffectValue()));
    // source line 105, bytecode pc 1175
    this._ccbNode.getChildByTag(23).setString(Math.floor(this._data.getNextLevelEffectValue()));
    // source line 106, bytecode pc 1198
    xs.log("xs.Views.EquipmentStrengthenDialog showDialog4,");
    // source line 109, bytecode pc 1222
    (quickStreng = this._ccbNode.getChildByTag(6));
    // source line 110, bytecode pc 1267
    (this._quickButton = xs.Views.Btn.createWithStringId("Btn_btn2", "1070610008"));
    // source line 111, bytecode pc 1300
    this._quickButton.setPosition(quickStreng.getPosition());
    // source line 112, bytecode pc 1338
    this._quickButton.setOnClickCallBack(this.quick.bind(this));
    // source line 113, bytecode pc 1365
    this._quickButton.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 114, bytecode pc 1385
    this._quickButton.setEventOnDisable(true);
    // source line 115, bytecode pc 1426
    xs.Utils.Node.attachNodes(this._ccbNode, this._quickButton);
    // source line 116, bytecode pc 1449
    xs.log("xs.Views.EquipmentStrengthenDialog showDialog5,");
    // source line 119, bytecode pc 1473
    (Streng = this._ccbNode.getChildByTag(7));
    // source line 120, bytecode pc 1518
    (this._strengButton = xs.Views.Btn.createWithStringId("Btn_btn2", "1070610001"));
    // source line 121, bytecode pc 1551
    this._strengButton.setPosition(Streng.getPosition());
    // source line 122, bytecode pc 1589
    this._strengButton.setOnClickCallBack(this.streng.bind(this));
    // source line 123, bytecode pc 1616
    this._strengButton.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 124, bytecode pc 1636
    this._strengButton.setEventOnDisable(true);
    // source line 125, bytecode pc 1677
    xs.Utils.Node.attachNodes(this._ccbNode, this._strengButton);
    // source line 128, bytecode pc 1701
    (this._sprite = this._data.createEffectTypeSmallIcon());
    // source line 129, bytecode pc 1736
    (pos = this._ccbNode.getChildByTag(24).getPosition());
    // source line 130, bytecode pc 1758
    this._sprite.setPosition(pos);
    // source line 131, bytecode pc 1799
    xs.Utils.Node.attachNodes(this._ccbNode, this._sprite);
    // source line 132, bytecode pc 1819
    this._sprite.setZOrder(0);
    // source line 134, bytecode pc 1843
    (this._sprite1 = this._data.createEffectTypeSmallIcon());
    // source line 135, bytecode pc 1878
    (pos = this._ccbNode.getChildByTag(25).getPosition());
    // source line 136, bytecode pc 1900
    this._sprite1.setPosition(pos);
    // source line 137, bytecode pc 1941
    xs.Utils.Node.attachNodes(this._ccbNode, this._sprite1);
    // source line 138, bytecode pc 1961
    this._sprite1.setZOrder(0);
    // source line 141, bytecode pc 1985
    (this._equipCard = this._data.createCard_Strengthen());
    // source line 142, bytecode pc 2010
    this._equipCard.reloadData(this._data);
    // source line 143, bytecode pc 2043
    this._ccbNode.getChildByTag(1).setVisible(false);
    // source line 144, bytecode pc 2083
    (this.touchBtn = xs.Views.Btn.createInvisibleWithChild(this._equipCard));
    // source line 145, bytecode pc 2132
    this.touchBtn.setPosition(this._ccbNode.getChildByTag(1).getPosition());
    // source line 150, bytecode pc 2169
    this.touchBtn.setOnClickCallBack(function() {
    // source line 148, bytecode pc 50
    xs.Views.Mgr.showDialogByName("EquipNoPanel", { equipData: this._data });
}.bind(this));
    // source line 151, bytecode pc 2210
    xs.Utils.Node.attachNodes(this._ccbNode, this.touchBtn);
    // source line 152, bytecode pc 2238
    this.touchBtn.setTouchPriority((this.m_baseTouchPriority - 10));
    if ((this._data.getLevel() >= xs.Profile.GameData.Mgr.getInstance().Equipments.getEquipmentUpgradeTotalLevel())) {
        // source line 156, bytecode pc 2328
        this._quickButton.setEnabled(false);
        // source line 157, bytecode pc 2348
        this._strengButton.setEnabled(false);
    }
    // source line 159, bytecode pc 2371
    xs.log("xs.Views.EquipmentStrengthenDialog showDialog6,");
},
    showDialogByNotRecreate: function(equipObj) {
    // source line 163, bytecode pc 24
    this._equipCard.reloadData(this._cloneData);
    // source line 165, bytecode pc 128
    this._ccbNode.getChildByTag(4).setString(((this._cloneData.getLevel() + "/") + xs.Profile.GameData.Mgr.getInstance().Equipments.getEquipmentUpgradeTotalLevel()));
    // source line 167, bytecode pc 178
    this._ccbNode.getChildByTag(5).setString(this._cloneData.getUpgradeCoinNeed());
    // source line 168, bytecode pc 269
    this._ccbNode.getChildByTag(9).setString(xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerTongQian());
    // source line 172, bytecode pc 319
    this._ccbNode.getChildByTag(20).setString(this._cloneData.getLevel());
    // source line 173, bytecode pc 371
    this._ccbNode.getChildByTag(21).setString((this._cloneData.getLevel() + 1));
    // source line 174, bytecode pc 438
    this._ccbNode.getChildByTag(22).setString(Math.floor(this._cloneData.getEffectValue()));
    // source line 175, bytecode pc 505
    this._ccbNode.getChildByTag(23).setString(Math.floor(this._cloneData.getNextLevelEffectValue()));
    // source line 176, bytecode pc 528
    xs.log("xs.Views.EquipmentStrengthenDialog showDialog4,");
    if ((this._cloneData.getLevel() < xs.Profile.GameData.Mgr.getInstance().Equipments.getEquipmentUpgradeTotalLevel())) {
        // source line 184, bytecode pc 618
        this._quickButton.setEnabled(true);
        // source line 185, bytecode pc 638
        this._strengButton.setEnabled(true);
    } else {
        // source line 187, bytecode pc 663
        this._quickButton.setEnabled(false);
        // source line 188, bytecode pc 683
        this._strengButton.setEnabled(false);
    }
    // source line 190, bytecode pc 706
    xs.log("xs.Views.EquipmentStrengthenDialog showDialog6,");
},
    quick: function() {
    var param;
    if (this.goleNotEnough()) {
        if ((this._data.getLevel() < xs.Profile.GameData.Mgr.getInstance().Equipments.getEquipmentUpgradeTotalLevel())) {
            // source line 196, bytecode pc 109
            xs.log("quick");
            // source line 197, bytecode pc 119
            (param = {});
            // source line 198, bytecode pc 143
            (this._level = this._data.getLevel());
            // source line 199, bytecode pc 169
            (param.user_equipment_id = this._data.getPkId());
            // source line 200, bytecode pc 179
            (param.quick = 1);
            // source line 203, bytecode pc 219
            xs.Tools.Net.requestEquipmentReinforce(param, this.reinforceSuccessCallback, this);
        } else {
            // source line 205, bytecode pc 284
            xs.Views.Mgr.showToast(xs.Tools.String.createString("str_Equipment_TheHightest"));
        }
    } else {
        // source line 208, bytecode pc 349
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_403"));
    }
},
    reinforceSuccessCallback: function(data) {
    // source line 213, bytecode pc 24
    xs.log(("reinforceSuccessCallback " + this));
    // source line 217, bytecode pc 46
    this.playArmature(data.upgrade_level);
},
    streng: function() {
    var param;
    if (this.goleNotEnough()) {
        if ((this._data.getLevel() < xs.Profile.GameData.Mgr.getInstance().Equipments.getEquipmentUpgradeTotalLevel())) {
            // source line 222, bytecode pc 109
            xs.log("streng");
            // source line 223, bytecode pc 119
            (param = {});
            // source line 224, bytecode pc 143
            (this._level = this._data.getLevel());
            // source line 225, bytecode pc 169
            (param.user_equipment_id = this._data.getPkId());
            // source line 226, bytecode pc 179
            (param.quick = 0);
            // source line 228, bytecode pc 203
            (this._oldPropertyValue = this._data.getEffectValue());
            // source line 229, bytecode pc 243
            xs.Tools.Net.requestEquipmentReinforce(param, this.reinforceSuccessCallback, this);
        } else {
            // source line 231, bytecode pc 308
            xs.Views.Mgr.showToast(xs.Tools.String.createString("str_Equipment_TheHightest"));
        }
    } else {
        // source line 234, bytecode pc 373
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_403"));
    }
},
    goleNotEnough: function() {
    var result, player;
    // source line 241, bytecode pc 4
    (result = false);
    // source line 242, bytecode pc 55
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    if ((this._data.getUpgradeCoinNeed() < player.getPlayerTongQian())) {
        // source line 244, bytecode pc 97
        (result = true);
    }
    // source line 246, bytecode pc 101
    return result;
},
    onTouchEnded: function() {
},
    playArmature: function(data) {
    var text, _diffPropertyValue, index, i, _func, _action, _action1;
    // source line 253, bytecode pc 22
    xs.log("playArmature begin");
    // source line 254, bytecode pc 31
    (text = "test");
    // source line 255, bytecode pc 41
    (this._armatureData = data);
    // source line 256, bytecode pc 93
    (_diffPropertyValue = (Math.floor((this._data.getEffectValue() - this._oldPropertyValue)) || 0));
    // source line 257, bytecode pc 124
    (text = ((this._data.getEquipTypeToString() + "+") + _diffPropertyValue));
    if ((this._arm == null)) {
        // source line 259, bytecode pc 181
        (this._arm = xs.Views.Armature.AutoAudioArmature.create("Arm_Reinforce"));
        // source line 262, bytecode pc 222
        xs.Utils.Node.attachNodes(this._equipCard, this._arm);
        // source line 264, bytecode pc 243
        this._arm.setZOrder(2);
        // source line 265, bytecode pc 296
        (this._armLabel1 = xs.Views.Label.LabelExt.createWithStyles([ "LS_fight_cure" ]));
        // source line 266, bytecode pc 320
        this._armLabel1.setScale(0.8);
        // source line 267, bytecode pc 363
        this._armLabel1.setColor(cc.c3b(0, 255, 0));
        // source line 268, bytecode pc 394
        this._arm.replaceSkin("text1", this._armLabel1);
        // source line 269, bytecode pc 441
        this._armLabel1.setAnchorPoint(cc.p(0.5, 0.5));
        // source line 272, bytecode pc 503
        (this._armLabel2 = xs.Views.Label.LabelExt.createWithStyles([ "LS_qianghua_done", "LS_qianghua_doub" ]));
        // source line 273, bytecode pc 546
        this._armLabel2.setColor(cc.c3b(0, 255, 0));
        // source line 274, bytecode pc 577
        this._arm.replaceSkin("text2", this._armLabel2);
        // source line 275, bytecode pc 624
        this._armLabel2.setAnchorPoint(cc.p(0.5, 0.5));
        // source line 277, bytecode pc 695
        (this._armLabel3 = xs.Views.Label.LabelExt.createWithStyles([ "LS_qianghua_done", "LS_qianghua_doub", "LS_qianghua_done" ]));
        // source line 278, bytecode pc 738
        this._armLabel3.setColor(cc.c3b(0, 255, 0));
        // source line 279, bytecode pc 769
        this._arm.replaceSkin("text3", this._armLabel3);
        // source line 280, bytecode pc 816
        this._armLabel3.setAnchorPoint(cc.p(0.5, 0.5));
    }
    // source line 283, bytecode pc 828
    (this._actionarray = []);
    // source line 284, bytecode pc 833
    (index = 0);
    // source line 285, bytecode pc 865
    xs.log(("playArmature length " + data.length));
    // source line 286, bytecode pc 870
    (i = 0);
    while ((i < data.length)) {
        // source line 287, bytecode pc 883
        (index = i);
        // source line 311, bytecode pc 921
        (_func = function(sender, __param) {
    var _this, _oldvalue, _newvalue, _addvalue;
    // source line 289, bytecode pc 6
    (_this = this[0]);
    // source line 290, bytecode pc 48
    xs.log(((("param is " + this[1]) + ",") + _this._level));
    // source line 291, bytecode pc 93
    (_oldvalue = xs.Utils.floorSafe(_this._data.getEffectValue()));
    if ((_this._armatureData[this[1]] > 1)) {
        // source line 293, bytecode pc 157
        (_this._level = (_this._level + parseInt(_this._armatureData[this[1]])));
        // source line 295, bytecode pc 286
        _this._armLabel3.setStringByStrings([
    xs.Tools.String.createString("auto_name_406"),
    parseInt(_this._armatureData[this[1]]),
    xs.Tools.String.createString("auto_name_407")
]);
        // source line 297, bytecode pc 384
        _this._armLabel2.setStringByStrings([ xs.Tools.String.createString("auto_name_408"), xs.Tools.String.createString("auto_name_409") ]);
    } else {
        // source line 301, bytecode pc 408
        (_this._level = (_this._level + 1));
        // source line 302, bytecode pc 479
        _this._armLabel2.setStringByStrings([ " ", xs.Tools.String.createString("auto_name_410") ]);
        // source line 303, bytecode pc 586
        _this._armLabel3.setStringByStrings([
    xs.Tools.String.createString("auto_name_406"),
    "1",
    xs.Tools.String.createString("auto_name_206")
]);
    }
    // source line 307, bytecode pc 631
    (_newvalue = xs.Utils.floorSafe(_this._data.getNextLevelEffectValue()));
    // source line 308, bytecode pc 642
    (_addvalue = (_newvalue - _oldvalue));
    // source line 309, bytecode pc 669
    xs.log(("_addvalue is " + _addvalue));
    // source line 310, bytecode pc 728
    _this._armLabel1.setStringByStrings([ ((_this._data.getEquipTypeToString() + "+") + _addvalue) ]);
}.bind([ this, index ]));
        // source line 312, bytecode pc 950
        (_action = cc.CallFunc.create(_func));
        // source line 313, bytecode pc 972
        this._actionarray.push(_action);
        // source line 317, bytecode pc 1033
        this._actionarray.push(this._arm.createPlayAction("normal", { loop: false, speed: 1 }));
        // source line 324, bytecode pc 1077
        (_action1 = cc.CallFunc.create(function() {
    // source line 320, bytecode pc 24
    this._cloneData.setLevel(this._level);
    // source line 323, bytecode pc 44
    this.showDialogByNotRecreate(this._cloneData);
}.bind(this)));
        // source line 325, bytecode pc 1099
        this._actionarray.push(_action1);
        // source line 286, bytecode pc 1114
        i++;
    }
    // source line 328, bytecode pc 1179
    this.runAction(xs.Utils.Action.combineSequence(this._actionarray));
},
    setBaseTouchPriority: function(priority) {
    // source line 336, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 337, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 338, bytecode pc 56
    this.m_endButton.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 341, bytecode pc 582
(xs.Views.Dialog.EquipmentStrengthenDialog.create = function(equipObj) {
    var obj;
    // source line 343, bytecode pc 28
    (obj = new xs.Views.Dialog.EquipmentStrengthenDialog());
    if ((obj && obj.init())) {
        // source line 345, bytecode pc 75
        obj.showDialog(equipObj);
        // source line 346, bytecode pc 79
        return obj;
    }
    // source line 348, bytecode pc 102
    xs.error("xs.Views.Dialog.EquipmentStrengthenDialog.create error");
    // source line 349, bytecode pc 104
    return null;
});
// source line 353, bytecode pc 662
xs.Views.Mgr.registerDialog("EquipmentStrengthenDialog", { "class": xs.Views.Dialog.EquipmentStrengthenDialog, styleType: xs.Constant_DlgStyleType_Large });
