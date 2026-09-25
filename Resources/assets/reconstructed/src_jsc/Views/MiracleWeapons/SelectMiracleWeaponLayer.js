// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/MiracleWeapons/SelectMiracleWeaponLayer.js:1
// source line 365, bytecode pc 459
(xs.Views.SelectMiracleWeaponLayer = cc.Layer.extend({
    name: "xs.Views.SelectMiracleWeaponLayer",
    ccbCfg: [
        { tag: 1, type: "ls", name: "m_MiracleWeaponName", id: "LS_yuanfenInf2" },
        { tag: 2, type: "ls", name: "m_MiracleWeaponGrade", id: "LS_wujiangName1" },
        { tag: 3, type: "ls", name: "m_MiracleWeaponDesc", id: "LS_wujiangName1" },
        {
            tag: 11,
            type: "ls",
            name: "m_MiracleWeaponCondition",
            id: "LS_yuanfenInf2",
            stringId: "MiracleWeapon_condition"
        }
    ],
    ctor: function() {
    // source line 14, bytecode pc 12
    this._super();
    // source line 15, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    m_state_disableOpen: 0,
    m_state_enableOpen: 1,
    m_state_Opened: 2,
    init: function(param) {
    var visibleSize, mainMenuWidth, middlePointX;
    if (!this._super()) {
        // source line 22, bytecode pc 19
        return false;
    }
    // source line 25, bytecode pc 27
    (this.m_weaponsList = null);
    // source line 26, bytecode pc 35
    (this.ccbNode = null);
    // source line 28, bytecode pc 43
    (this.m_MiracleWeaponName = null);
    // source line 29, bytecode pc 51
    (this.m_MiracleWeaponGrade = null);
    // source line 30, bytecode pc 59
    (this.m_MiracleWeaponDesc = null);
    // source line 31, bytecode pc 67
    (this.m_MiracleWeaponCondition = null);
    // source line 32, bytecode pc 75
    (this.m_middleWeaponTable = null);
    // source line 34, bytecode pc 83
    (this.m_instructionBtn = null);
    // source line 37, bytecode pc 91
    (this.m_openRulesArray = null);
    // source line 39, bytecode pc 103
    (this.m_middleWeaponInforArray = []);
    // source line 46, bytecode pc 111
    (this.m_weaponState = 0);
    // source line 49, bytecode pc 123
    (this.m_statePoints = []);
    // source line 50, bytecode pc 131
    (this.m_middleIndex = null);
    // source line 51, bytecode pc 139
    (this.m_weaponId = null);
    // source line 54, bytecode pc 154
    (this.m_weaponsList = param.list);
    // source line 58, bytecode pc 191
    (this.m_weaponsListShow = xs.Views.ThreeMiracleWeaponsShowLayer.create(param));
    // source line 60, bytecode pc 211
    this.m_weaponsListShow.setListener(this);
    // source line 66, bytecode pc 295
    xs.Utils.Node.attachNodes(this, this.m_weaponsListShow, { desc: "lb", sc: true, offset: { x: 0, y: 150 } });
    // source line 71, bytecode pc 340
    (this.m_lightPoint = xs.Factorys.Sprite.create("MiracleWeapons_liangguang", "MiracleWeaponsScene"));
    // source line 72, bytecode pc 360
    this.addChild(this.m_lightPoint);
    // source line 73, bytecode pc 373
    this.setSelectStatePoint();
    // source line 78, bytecode pc 398
    (visibleSize = xs.director.getVisibleSize());
    // source line 79, bytecode pc 422
    (mainMenuWidth = xs.Views.MainMenuView.Width);
    // source line 80, bytecode pc 441
    (middlePointX = ((visibleSize.width - mainMenuWidth) / 2));
    // source line 82, bytecode pc 480
    (this.jiesuoworshipButton = xs.Views.Btn.createByStyleId("BS_Btn1"));
    // source line 83, bytecode pc 518
    this.jiesuoworshipButton.setOnClickCallBack(this.goToMiracleWeaponInfor.bind(this));
    // source line 89, bytecode pc 603
    xs.Utils.Node.attachNodes(this, this.jiesuoworshipButton, { desc: "lb", sc: true, offset: { x: middlePointX, y: 60 } });
    // source line 95, bytecode pc 654
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.MiddleMiracleWeaponIntro, this));
    // source line 96, bytecode pc 697
    this.ccbNode.setContentSize(cc.size(310, 200));
    // source line 97, bytecode pc 744
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 104, bytecode pc 830
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "lb", offset: { x: middlePointX, y: 200 }, sc: true });
    // source line 108, bytecode pc 873
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 112, bytecode pc 898
    this.m_middleWeaponInforArray.push(this.m_MiracleWeaponName);
    // source line 113, bytecode pc 923
    this.m_middleWeaponInforArray.push(this.m_MiracleWeaponGrade);
    // source line 114, bytecode pc 948
    this.m_middleWeaponInforArray.push(this.m_MiracleWeaponDesc);
    // source line 116, bytecode pc 970
    this.updateMiddleWeapon(param.index);
    // source line 120, bytecode pc 1014
    (this.m_instructionBtn = xs.Tools.Views.Btn.createInstruction("MiracleWeapon_Instruction"));
    // source line 121, bytecode pc 1102
    xs.Utils.Node.attachNodes(this, this.m_instructionBtn, { desc: "lb", offset: cc.p(60, 110), sc: true }, null);
    // source line 124, bytecode pc 1104
    return true;
},
    createMiddleWeaponTableView: function() {
    if ((this.m_middleWeaponTable == null)) {
        // source line 130, bytecode pc 66
        (this.m_middleWeaponTable = cc.TableView.create(this, cc.size(310, 120)));
        // source line 131, bytecode pc 95
        this.m_middleWeaponTable.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
        // source line 132, bytecode pc 135
        this.m_middleWeaponTable.setPosition(cc.p(4, 0));
        // source line 133, bytecode pc 155
        this.m_middleWeaponTable.setDelegate(this);
        // source line 134, bytecode pc 184
        this.m_middleWeaponTable.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
        // source line 135, bytecode pc 209
        this.ccbNode.addChild(this.m_middleWeaponTable);
    }
    // source line 138, bytecode pc 227
    this.m_middleWeaponTable.reloadData();
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function(view) {
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 151, bytecode pc 23
    return cc.size(290, 30);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 156, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 158, bytecode pc 56
        (cell = xs.Views.WeaponTableViewCell.create());
    }
    // source line 161, bytecode pc 86
    cell.update(this.m_openRulesArray[idx], idx);
    // source line 163, bytecode pc 90
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 167, bytecode pc 11
    return this.m_openRulesArray.length;
},
    onEnter: function() {
    // source line 171, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 174, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 177, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 178, bytecode pc 34
    this.m_weaponsListShow.setTouchPriority(this.m_baseTouchPriority);
    // source line 179, bytecode pc 61
    this.jiesuoworshipButton.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 180, bytecode pc 88
    this.m_instructionBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    goToMiracleWeaponInfor: function() {
    // source line 186, bytecode pc 6
    switch (this.m_weaponState) {
        case this.m_state_disableOpen:
        // source line 189, bytecode pc 104
        xs.Views.Mgr.showToast(xs.Tools.String.createString("MiracleWeapon_disableOpen"));
        break;
        case this.m_state_enableOpen:
        // source line 216, bytecode pc 231
        xs.Tools.Net.requestOpenMiracleWeapon({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    magic_id: this.m_weaponId
}, function(data) {
    var List;
    if ((data.result == true)) {
        // source line 203, bytecode pc 74
        xs.Views.Mgr.showToast(xs.Tools.String.createString("MiracleWeapon_openSuccess"));
        // source line 205, bytecode pc 125
        (List = xs.Profile.GameData.Mgr.getInstance().MagicalEqus.getAll());
        // source line 206, bytecode pc 135
        (this.m_weaponsList = List);
        // source line 208, bytecode pc 148
        this.updateThisView();
    }
}, function(data) {
}, this);
        break;
        case this.m_state_Opened:
        // source line 225, bytecode pc 283
        xs.Scene.Mgr.changeSceneByName("MiracleWeaponScene", this.m_weaponsList[this.m_middleIndex]);
        break;
        default:
        // source line 229, bytecode pc 311
        xs.warn("this.m_weaponState error! ");
        break;
    }
},
    updateThisView: function() {
    var data;
    // source line 237, bytecode pc 31
    (data = { list: this.m_weaponsList, index: this.m_middleIndex });
    // source line 240, bytecode pc 51
    this.updateMiddleWeapon(this.m_middleIndex);
    // source line 242, bytecode pc 73
    this.m_weaponsListShow.updateThisViewAndData(data);
},
    setSelectStatePoint: function() {
    var points, visibleSize, mainMenuWidth, middlePointX, rightLength, i, pointPosition, intNum, sp;
    // source line 248, bytecode pc 14
    (points = this.m_weaponsList.length);
    // source line 249, bytecode pc 39
    (visibleSize = xs.director.getVisibleSize());
    // source line 250, bytecode pc 63
    (mainMenuWidth = xs.Views.MainMenuView.Width);
    // source line 251, bytecode pc 82
    (middlePointX = ((visibleSize.width - mainMenuWidth) / 2));
    if (((points % 2) == 0)) {
        // source line 253, bytecode pc 117
        (rightLength = ((middlePointX - 22) - (((points / 2) - 1) * 44)));
        // source line 254, bytecode pc 122
        (i = 0);
        while ((i < points)) {
            // source line 255, bytecode pc 162
            (pointPosition = cc.p((rightLength + (44 * i)), 16));
            // source line 256, bytecode pc 184
            this.m_statePoints.push(pointPosition);
            // source line 254, bytecode pc 198
            (i = (+i + 1));
        }
    } else {
        // source line 260, bytecode pc 229
        (intNum = ((points - 1) / 2));
        // source line 261, bytecode pc 243
        (rightLength = (middlePointX - (intNum * 44)));
        if ((points == 1)) {
            // source line 263, bytecode pc 260
            (rightLength = middlePointX);
        }
        // source line 265, bytecode pc 265
        (i = 0);
        while ((i < points)) {
            // source line 266, bytecode pc 305
            (pointPosition = cc.p((rightLength + (44 * i)), 16));
            // source line 267, bytecode pc 327
            this.m_statePoints.push(pointPosition);
            // source line 265, bytecode pc 341
            (i = (+i + 1));
        }
    }
    // source line 271, bytecode pc 360
    (i = 0);
    while ((i < points)) {
        // source line 273, bytecode pc 408
        (sp = xs.Factorys.Sprite.create("MiracleWeapons_andian", "MiracleWeaponsScene"));
        // source line 274, bytecode pc 434
        sp.setPosition(this.m_statePoints[i]);
        // source line 275, bytecode pc 451
        this.addChild(sp);
        // source line 271, bytecode pc 465
        (i = (+i + 1));
    }
    // source line 279, bytecode pc 484
    (i = 0);
    while ((i < (points - 1))) {
        // source line 281, bytecode pc 532
        (sp = xs.Factorys.Sprite.create("MiracleWeapons_xian", "MiracleWeaponsScene"));
        // source line 282, bytecode pc 599
        sp.setPosition(cc.p((this.m_statePoints[i].x + 22), this.m_statePoints[i].y));
        // source line 283, bytecode pc 616
        this.addChild(sp);
        // source line 279, bytecode pc 630
        (i = (+i + 1));
    }
},
    updateMiddleWeapon: function(index) {
    var i, EquipmentName, step, subStep;
    // source line 289, bytecode pc 9
    (this.m_middleIndex = index);
    // source line 290, bytecode pc 37
    (this.m_weaponId = this.m_weaponsList[index].getMagicalId());
    // source line 292, bytecode pc 66
    this.m_lightPoint.setPosition(this.m_statePoints[index]);
    if ((this.m_weaponsList[index].getStatus() == 0)) {
        // source line 296, bytecode pc 129
        this.weaponIsCanOpen(this.m_weaponsList[index].getOpenRules());
        // source line 298, bytecode pc 134
        (i = 0);
        while ((i < this.m_middleWeaponInforArray.length)) {
            if (this.m_middleWeaponInforArray[i]) {
                // source line 302, bytecode pc 179
                this.m_middleWeaponInforArray[i].setVisible(false);
            }
            // source line 298, bytecode pc 193
            (i = (+i + 1));
        }
        // source line 306, bytecode pc 235
        this.m_MiracleWeaponCondition.setVisible(true);
        if (this.m_middleWeaponTable) {
            // source line 308, bytecode pc 266
            this.m_middleWeaponTable.setVisible(true);
        }
        // source line 311, bytecode pc 279
        this.createMiddleWeaponTableView();
        // source line 313, bytecode pc 330
        this.jiesuoworshipButton.setString(xs.Tools.String.createString("MiracleWeapon_open"));
    } else {
        if ((this.m_weaponsList[index].getStatus() == 1)) {
            // source line 319, bytecode pc 368
            (i = 0);
            while ((i < this.m_middleWeaponInforArray.length)) {
                if (this.m_middleWeaponInforArray[i]) {
                    // source line 323, bytecode pc 413
                    this.m_middleWeaponInforArray[i].setVisible(true);
                }
                // source line 319, bytecode pc 427
                (i = (+i + 1));
            }
            // source line 328, bytecode pc 469
            this.m_MiracleWeaponCondition.setVisible(false);
            if (this.m_middleWeaponTable) {
                // source line 330, bytecode pc 500
                this.m_middleWeaponTable.setVisible(false);
            }
            // source line 334, bytecode pc 540
            this.m_MiracleWeaponDesc.setString(this.m_weaponsList[index].getMagicalName());
            // source line 336, bytecode pc 576
            (EquipmentName = this.m_weaponsList[index].getRelationEquObj().getNameString());
            // source line 337, bytecode pc 598
            this.m_MiracleWeaponName.setString(EquipmentName);
            // source line 339, bytecode pc 638
            (step = Number(this.m_weaponsList[index].getNormalStep()));
            // source line 340, bytecode pc 678
            (subStep = Number(this.m_weaponsList[index].getNormalSubStep()));
            // source line 341, bytecode pc 717
            this.m_MiracleWeaponGrade.setString(this.getWeaponChongDuan(step, subStep));
            // source line 343, bytecode pc 768
            this.jiesuoworshipButton.setString(xs.Tools.String.createString("MiracleWeapon_forging"));
            // source line 345, bytecode pc 777
            (this.m_weaponState = 2);
        }
    }
},
    getWeaponChongDuan: function(step, subStep) {
    var array, str, name;
    // source line 355, bytecode pc 8
    (array = []);
    // source line 356, bytecode pc 44
    (array[0] = xs.Tools.String.convNumberString(step));
    // source line 357, bytecode pc 80
    (array[1] = xs.Tools.String.convNumberString(subStep));
    // source line 359, bytecode pc 116
    (str = xs.Tools.String.createString("MiracleWeapon_chongDuan"));
    // source line 360, bytecode pc 154
    (name = xs.Tools.String.replaceStringByArray(str, array));
    // source line 363, bytecode pc 158
    return name;
},
    weaponIsCanOpen: function(data) {
    var n, i;
    // source line 367, bytecode pc 9
    (this.m_openRulesArray = data);
    // source line 369, bytecode pc 14
    (n = 0);
    // source line 370, bytecode pc 19
    (i = 0);
    while ((i < data.length)) {
        // source line 371, bytecode pc 45
        (n = (n + data[i].status));
        // source line 370, bytecode pc 59
        (i = (+i + 1));
    }
    if ((n == data.length)) {
        // source line 375, bytecode pc 103
        (this.m_weaponState = 1);
    } else {
        // source line 377, bytecode pc 116
        (this.m_weaponState = 0);
    }
}
}));
// source line 384, bytecode pc 485
(xs.Views.SelectMiracleWeaponLayer.create = function(param) {
    var view;
    // source line 385, bytecode pc 23
    (view = new xs.Views.SelectMiracleWeaponLayer());
    if ((view && view.init(param))) {
        // source line 387, bytecode pc 59
        return view;
    }
    // source line 389, bytecode pc 84
    xs.assert(false, "xs.Views.SelectMiracleWeaponLayer.create error!");
    // source line 390, bytecode pc 86
    return null;
});
// source line 468, bytecode pc 599
(xs.Views.WeaponTableViewCell = cc.TableViewCell.extend({
    ctor: function() {
    // source line 399, bytecode pc 12
    this._super();
    // source line 400, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 404, bytecode pc 19
        return false;
    }
    // source line 406, bytecode pc 27
    (this.m_label = null);
    // source line 407, bytecode pc 35
    (this.m_light = null);
    // source line 408, bytecode pc 43
    (this.m_dark = null);
    // source line 412, bytecode pc 88
    (this.m_light = xs.Factorys.Sprite.create("MiracleWeapons_liangguang", "MiracleWeaponsScene"));
    // source line 414, bytecode pc 129
    this.m_light.setPosition(cc.p(14, 15));
    // source line 416, bytecode pc 149
    this.addChild(this.m_light);
    // source line 419, bytecode pc 194
    (this.m_dark = xs.Factorys.Sprite.create("MiracleWeapons_andian", "MiracleWeaponsScene"));
    // source line 421, bytecode pc 235
    this.m_dark.setPosition(cc.p(14, 15));
    // source line 423, bytecode pc 255
    this.addChild(this.m_dark);
    // source line 426, bytecode pc 294
    (this.m_label = xs.Factorys.Label.createByStyleId("LS_wujiangName1"));
    // source line 427, bytecode pc 337
    this.m_label.setAnchorPoint(cc.p(0, 0.5));
    // source line 433, bytecode pc 421
    xs.Utils.Node.attachNodes(this, this.m_label, { desc: "lb", sc: true, offset: { x: 30, y: 15 } });
    // source line 438, bytecode pc 423
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 441, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    onEnter: function() {
    // source line 446, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 449, bytecode pc 12
    this._super();
},
    update: function(data, idx) {
    var idex, conditionStr;
    // source line 454, bytecode pc 8
    (idex = (idx + 1));
    // source line 455, bytecode pc 28
    (conditionStr = this.createOpenCondition(data));
    // source line 456, bytecode pc 60
    this.m_label.setString(((idex + ".") + conditionStr));
    if (data.status) {
        // source line 460, bytecode pc 93
        this.m_light.setVisible(true);
    } else {
        // source line 463, bytecode pc 118
        this.m_light.setVisible(false);
    }
},
    createOpenCondition: function(data) {
    var type, conditionStr, _array, _str;
    // source line 469, bytecode pc 26
    (type = Number(data.type));
    // source line 471, bytecode pc 35
    (conditionStr = "");
    // source line 472, bytecode pc 39
    switch (type) {
        case 1:
        // source line 475, bytecode pc 72
        (_array = []);
        // source line 476, bytecode pc 124
        (_array[0] = xs.Models.General.createWithBase(data.object_id).getNameString());
        // source line 477, bytecode pc 138
        (_array[1] = data.condition);
        // source line 479, bytecode pc 174
        (_str = xs.Tools.String.createString("MiracleWeapon_wuXing"));
        // source line 480, bytecode pc 212
        (conditionStr = xs.Tools.String.replaceStringByArray(_str, _array));
        break;
        case 2:
        // source line 486, bytecode pc 226
        (_array = []);
        // source line 487, bytecode pc 278
        (_array[0] = xs.Models.Equipment.createWithBase(data.object_id).getNameString());
        // source line 489, bytecode pc 314
        (_str = xs.Tools.String.createString("MiracleWeapon_tuJian"));
        // source line 490, bytecode pc 352
        (conditionStr = xs.Tools.String.replaceStringByArray(_str, _array));
        break;
        case 3:
        // source line 496, bytecode pc 366
        (_array = []);
        // source line 497, bytecode pc 380
        (_array[0] = data.condition);
        // source line 499, bytecode pc 416
        (_str = xs.Tools.String.createString("MiracleWeapon_dengJi"));
        // source line 500, bytecode pc 454
        (conditionStr = xs.Tools.String.replaceStringByArray(_str, _array));
        break;
        default:
        // source line 505, bytecode pc 482
        xs.warn("this.switchCreateIcon tag error! ");
        break;
    }
    // source line 509, bytecode pc 491
    return conditionStr;
}
}));
// source line 515, bytecode pc 625
(xs.Views.WeaponTableViewCell.create = function() {
    var cell;
    // source line 516, bytecode pc 23
    (cell = new xs.Views.WeaponTableViewCell());
    if ((cell && cell.init())) {
        // source line 518, bytecode pc 55
        return cell;
    }
    // source line 520, bytecode pc 57
    return null;
});
