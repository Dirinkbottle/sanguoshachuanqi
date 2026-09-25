// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/EquipmentTableViewStrengthenCell.js:1
// source line 167, bytecode pc 188
(xs.Views.Table.Cell.EquipmentTableViewStrengthenCell = xs.Views.Table.Cell.BaseTableViewExtraCell.extend({
    name: "EquipmentTableViewStrengthenCell",
    initWithData: function(data) {
    var func, btnWidth, btn2Width;
    // source line 8, bytecode pc 22
    xs.log("EquipmentTableViewStrengthenCell initWithData");
    if ((data != null)) {
        // source line 12, bytecode pc 42
        (this._data = data);
    }
    // source line 14, bytecode pc 50
    (this.m_cellGuideTag = null);
    // source line 17, bytecode pc 63
    this.init();
    // source line 20, bytecode pc 106
    (this._ccbNode = xs.Views.Table.Cell.BaseCmnStyleBCell.create());
    // source line 22, bytecode pc 142
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 29, bytecode pc 214
    (this._button = xs.Views.Btn.createWithString("Btn_TableLastButton", xs.Tools.String.createString("1071310061")));
    // source line 31, bytecode pc 223
    (func = function() {
    // source line 32, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("FightChapters");
});
    // source line 34, bytecode pc 277
    this._button.setString(xs.Tools.String.createString("1070410002"), 32);
    // source line 35, bytecode pc 319
    this._button.setButtonSize(cc.size(838, 107));
    // source line 36, bytecode pc 361
    this._button.setPosition(cc.p(420, 53));
    // source line 37, bytecode pc 383
    this._button.setOnClickCallBack(func);
    // source line 38, bytecode pc 419
    xs.Utils.Node.attachNodes(this, this._button);
    // source line 39, bytecode pc 442
    xs.log("EquipmentTableViewStrengthenCell initWithData end");
    // source line 42, bytecode pc 484
    this._ccbNode.m_btn.setOnClickCallBack(function() {
    // source line 41, bytecode pc 12
    this._sell();
}.bind(this));
    // source line 43, bytecode pc 509
    this._ccbNode.m_btn.setEventOnDisable(true);
    // source line 46, bytecode pc 543
    (btnWidth = (this._ccbNode.m_btn.getContentSize().width / 2));
    // source line 47, bytecode pc 577
    (btn2Width = (this._ccbNode.m_btn_2.getContentSize().width / 2));
    // source line 49, bytecode pc 602
    this._ccbNode.m_btn_2.setVisible(true);
    // source line 50, bytecode pc 659
    this._ccbNode.m_btn_2.setPositionX((((this._ccbNode.m_btn.getPositionX() - btnWidth) - btn2Width) - 10));
    // source line 51, bytecode pc 715
    this._ccbNode.m_btn_2.setString(xs.Tools.String.createString("btnStr_refining"));
    // source line 54, bytecode pc 757
    this._ccbNode.m_btn_2.setOnClickCallBack(function() {
    // source line 53, bytecode pc 12
    this.jinglian();
}.bind(this));
    // source line 55, bytecode pc 782
    this._ccbNode.m_btn_2.setEventOnDisable(true);
    // source line 57, bytecode pc 784
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 60, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 61, bytecode pc 39
    this._ccbNode.m_btn.setTouchPriority(this.m_baseTouchPriority);
    // source line 62, bytecode pc 69
    this._ccbNode.m_btn_2.setTouchPriority(this.m_baseTouchPriority);
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 65, bytecode pc 12
    this._super();
    // source line 67, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 70, bytecode pc 63
            (this.m_parentView = parent);
            // source line 71, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 72, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 75, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 79, bytecode pc 12
    this._super();
},
    setCellGuideTag: function(tag) {
    // source line 82, bytecode pc 9
    (this.m_cellGuideTag = tag);
},
    jinglian: function() {
    var _player;
    // source line 85, bytecode pc 50
    (_player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 86, bytecode pc 106
    xs.log(("精炼：" + xs.Tools.CfgData.getGlobalConf("RefineEquip_Unlock_Level")));
    if ((_player.getPlayerLevel() >= xs.Tools.CfgData.getGlobalConf("RefineEquip_Unlock_Level"))) {
        // source line 89, bytecode pc 198
        xs.Views.Mgr.showDialogByName("RefineEquipmentDialog", this._data);
    } else {
        // source line 93, bytecode pc 296
        xs.Views.Mgr.showToast((xs.Tools.CfgData.getGlobalConf("RefineEquip_Unlock_Level") + xs.Tools.String.createString("auto_name_209")));
    }
},
    updateCell: function(data) {
    var _player;
    // source line 98, bytecode pc 9
    (this._data = data);
    // source line 99, bytecode pc 29
    this._button.setVisible(false);
    // source line 100, bytecode pc 49
    this._ccbNode.setVisible(true);
    // source line 103, bytecode pc 90
    xs.log(("this._data.getLevel() is " + this._data.getLevel()));
    if ((this._data.getLevel() < xs.Profile.GameData.Mgr.getInstance().Equipments.getEquipmentUpgradeTotalLevel())) {
        // source line 106, bytecode pc 185
        this._ccbNode.m_btn.setEnabled(true);
    } else {
        // source line 108, bytecode pc 215
        this._ccbNode.m_btn.setEnabled(false);
    }
    // source line 114, bytecode pc 240
    this._ccbNode.m_btn_2.setVisible(true);
    // source line 116, bytecode pc 291
    (_player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    if ((_player.getPlayerLevel() >= xs.Tools.CfgData.getGlobalConf("RefineEquip_Unlock_Level"))) {
        // source line 119, bytecode pc 368
        this._ccbNode.m_btn_2.setEnabled(true);
    } else {
        // source line 123, bytecode pc 398
        this._ccbNode.m_btn_2.setEnabled(false);
    }
    // source line 126, bytecode pc 411
    this.ccbUpdateCell();
},
    updateCellEx: function(idx) {
    // source line 131, bytecode pc 19
    this._ccbNode.setVisible(false);
    // source line 132, bytecode pc 39
    this._button.setVisible(true);
},
    _sellEx: function() {
    // source line 135, bytecode pc 22
    xs.log("EquipmentTableViewStrengthenCell _sellEx");
},
    _sell: function() {
    // source line 138, bytecode pc 22
    xs.log("EquipmentTableViewStrengthenCell _sell");
    if ((this._data.getLevel() < xs.Profile.GameData.Mgr.getInstance().Equipments.getEquipmentUpgradeTotalLevel())) {
        // source line 159, bytecode pc 132
        xs.Views.Mgr.showDialogByName("EquipmentStrengthenDialog", this._data);
    } else {
        // source line 163, bytecode pc 197
        xs.Views.Mgr.showToast(xs.Tools.String.createString("str_Equipment_TheHightest"));
    }
},
    ccbUpdateCell: function() {
    var belongLab, pos, posPro, sprite;
    // source line 168, bytecode pc 22
    xs.log("EquipmentTableViewStrengthenCell ccbUpdateCell");
    // source line 170, bytecode pc 47
    this._ccbNode.m_gradeIcon.setVisible(true);
    // source line 171, bytecode pc 72
    this._ccbNode.m_nameLab.setVisible(true);
    // source line 172, bytecode pc 97
    this._ccbNode.m_belongLab.setVisible(false);
    // source line 176, bytecode pc 155
    (belongLab = xs.Profile.GameData.Mgr.getInstance().Equipments.getGeneral(this._data));
    if ((belongLab != null)) {
        // source line 178, bytecode pc 190
        this._ccbNode.m_belongLab.setVisible(true);
        // source line 179, bytecode pc 261
        this._ccbNode.m_belongLab.setString((xs.Tools.String.createString("str_Equipment_BelongTo") + belongLab.getNameString()));
    }
    // source line 183, bytecode pc 286
    this._ccbNode.m_propertyBg.setVisible(true);
    // source line 184, bytecode pc 311
    this._ccbNode.m_fightBg.setVisible(true);
    // source line 188, bytecode pc 336
    this._ccbNode.m_propertyLab.setVisible(true);
    // source line 190, bytecode pc 361
    this._ccbNode.m_btn.setVisible(true);
    // source line 191, bytecode pc 417
    this._ccbNode.m_btn.setString(xs.Tools.String.createString("1070610001"));
    // source line 198, bytecode pc 442
    this._ccbNode.m_fightIcon.setVisible(true);
    // source line 199, bytecode pc 467
    this._ccbNode.m_fightLab.setVisible(true);
    // source line 200, bytecode pc 541
    this._ccbNode.m_fightLab.setString(xs.Utils.floorSafe(this._data.getAttrNaked(xs.Constant_AttrType_FightPoint)));
    // source line 204, bytecode pc 575
    xs.Utils.Node.safeRemoveChild(this._head);
    // source line 206, bytecode pc 599
    (this._head = this._data.createIcon_GradeAndLvBoreGem());
    // source line 207, bytecode pc 640
    xs.Utils.Node.attachNodes(this._ccbNode, this._head);
    // source line 208, bytecode pc 681
    this._head.setPosition(this._ccbNode.m_icon.getPosition());
    // source line 215, bytecode pc 718
    this._head.setOnClickCallBack(function() {
    var _id, _model;
    // source line 210, bytecode pc 20
    (_id = this._data.getId());
    // source line 211, bytecode pc 30
    (_model = this._data);
    // source line 213, bytecode pc 78
    xs.Views.Mgr.showDialogByName("EquipNoPanel", { equipData: _model });
}.bind(this));
    // source line 219, bytecode pc 759
    this._ccbNode.m_priceLab.setString(this._data.getPrice());
    // source line 222, bytecode pc 806
    this._ccbNode.m_propertyLab.setString(("+" + this._data.getEffectValue()));
    // source line 225, bytecode pc 847
    this._ccbNode.m_nameLab.setString(this._data.getNameString());
    // source line 227, bytecode pc 873
    (pos = this._ccbNode.m_gradeIcon.getPosition());
    // source line 228, bytecode pc 912
    xs.Utils.Node.safeRemoveChild(this._ccbNode.m_gradeIcon);
    // source line 229, bytecode pc 968
    (this._ccbNode.m_gradeIcon = xs.Tools.UI.createGradeSmallIcon(this._data.getGrade()));
    // source line 230, bytecode pc 995
    this._ccbNode.m_gradeIcon.setPosition(pos);
    // source line 231, bytecode pc 1041
    xs.Utils.Node.attachNodes(this._ccbNode, this._ccbNode.m_gradeIcon);
    // source line 235, bytecode pc 1067
    (posPro = this._ccbNode.m_propertyIcon.getPosition());
    // source line 236, bytecode pc 1088
    (sprite = this._data.createEffectTypeSmallIcon());
    // source line 237, bytecode pc 1122
    xs.Utils.Node.safeRemoveChild(this._propertyIcon);
    // source line 238, bytecode pc 1146
    (this._propertyIcon = this._data.createEffectTypeSmallIcon());
    // source line 239, bytecode pc 1168
    this._propertyIcon.setPosition(posPro);
    // source line 240, bytecode pc 1209
    xs.Utils.Node.attachNodes(this._ccbNode, this._propertyIcon);
    // source line 243, bytecode pc 1239
    this._ccbNode.m_btn.setGuideTag(this.m_cellGuideTag);
}
}));
// source line 246, bytecode pc 224
(xs.Views.Table.Cell.EquipmentTableViewStrengthenCell.create = function(data) {
    var ret;
    // source line 247, bytecode pc 33
    (ret = new xs.Views.Table.Cell.EquipmentTableViewStrengthenCell());
    if ((ret && ret.initWithData(data))) {
        // source line 249, bytecode pc 69
        return ret;
    }
    // source line 251, bytecode pc 88
    this.error("EquipmentTableViewStrengthenCell.create:");
    // source line 252, bytecode pc 90
    return null;
});
// source line 255, bytecode pc 260
(xs.Views.Table.Cell.EquipmentTableViewStrengthenCell.createDialog = function(equipObj, target) {
    var obj;
    // source line 258, bytecode pc 38
    (obj = xs.Views.Dialog.EquipmentStrengthenDialog.create(equipObj));
    // source line 261, bytecode pc 96
    xs.Utils.Node.attachNodes(target, obj, { desc: "lb", sc: true });
    // source line 263, bytecode pc 100
    return obj;
});
