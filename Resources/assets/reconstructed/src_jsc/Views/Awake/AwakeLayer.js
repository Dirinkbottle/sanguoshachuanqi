// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Awake/AwakeLayer.js:1
// source line 505, bytecode pc 768
(xs.Views.AwakeLayer = cc.Layer.extend({
    name: "xs.Views.AwakeLayer",
    ccbCfg_Infor: [
        { tag: 0, type: "ls", name: "m_star_label", id: "LS_yuanfenInf2" },
        { tag: 1, type: "ls", name: "m_reward_label", id: "LS_Lv" },
        { tag: 2, type: "ls", name: "m_effect_label", id: "LS_qiangduo_time" },
        { tag: 3, type: "ls", name: "m_consume_label", id: "LS_qiangduo_time" },
        { tag: 4, type: "ls", name: "m_level_label", id: "LS_Lv" },
        { tag: 6, type: "ls", name: "m_first_Need", id: "LS_EXPInf" },
        { tag: 7, type: "ls", name: "m_first_Have", id: "LS_Lv" },
        { tag: 8, type: "ls", name: "m_second_Need", id: "LS_EXPInf" },
        { tag: 9, type: "ls", name: "m_second_Have", id: "LS_Lv" },
        { tag: 11, type: "ls", name: "m_nameLabel", id: "LS_wujiangName1" },
        { tag: 24, type: "btn", name: "m_activateButton", id: "Btn_btn1", stringId: "AwakeActivateBtn" }
    ],
    ctor: function() {
    // source line 29, bytecode pc 12
    this._super();
    // source line 30, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(param) {
    var grade, visibleSize, mainMenuWidth, offset_x, tt_width, tt_height, ccbiArr;
    if (!this._super()) {
        // source line 35, bytecode pc 19
        return false;
    }
    // source line 37, bytecode pc 34
    (this.m_generalId = param.generalId);
    // source line 38, bytecode pc 42
    (this.m_level_label = null);
    // source line 39, bytecode pc 50
    (this.m_nameLabel = null);
    // source line 40, bytecode pc 58
    (this.m_star_label = null);
    // source line 41, bytecode pc 66
    (this.m_reward_label = null);
    // source line 42, bytecode pc 74
    (this.m_effect_label = null);
    // source line 43, bytecode pc 82
    (this.m_consume_label = null);
    // source line 45, bytecode pc 90
    (this.m_first_Need = null);
    // source line 46, bytecode pc 98
    (this.m_first_Have = null);
    // source line 47, bytecode pc 106
    (this.m_second_Need = null);
    // source line 48, bytecode pc 114
    (this.m_second_Have = null);
    // source line 50, bytecode pc 122
    (this.m_first_icon = null);
    // source line 51, bytecode pc 130
    (this.m_second_icon = null);
    // source line 53, bytecode pc 138
    (this.m_activateButton = null);
    // source line 56, bytecode pc 150
    (this.m_conditionArray = []);
    // source line 57, bytecode pc 162
    (this.m_haveArray = []);
    // source line 59, bytecode pc 174
    (this.m_needList = []);
    // source line 60, bytecode pc 186
    (this.m_haveList = []);
    // source line 61, bytecode pc 198
    (this.m_iconsList = []);
    // source line 64, bytecode pc 252
    (this.arrayPieces = xs.Profile.GameData.Mgr.getInstance().EquipmentPieces.getAll());
    // source line 67, bytecode pc 264
    (this.m_lightStars = []);
    // source line 68, bytecode pc 276
    (this.m_darkStars = []);
    // source line 70, bytecode pc 337
    (this.evoInfo = xs.Profile.GameData.Mgr.getInstance().EvolutionInfos.getByGeneralId(this.m_generalId));
    // source line 71, bytecode pc 355
    this.evoInfo.initCachePoint();
    // source line 73, bytecode pc 373
    (this.evolution_id = this.evoInfo.evolution_id);
    // source line 74, bytecode pc 424
    (this.buff_config = xs.Models.EvolutionInfo.createWithBase(this.m_generalId).getBuffInfo());
    // source line 76, bytecode pc 464
    (this.generalModel = xs.Models.General.createWithBase(this.m_generalId));
    // source line 77, bytecode pc 495
    (this.m_generalName = this.generalModel.getNameString(this.m_generalId));
    // source line 78, bytecode pc 519
    (this.m_generalOrbit = this.generalModel.getObrit());
    // source line 81, bytecode pc 543
    (this.m_evolution_level = this.evoInfo.getEvolutionLevel());
    // source line 82, bytecode pc 567
    (this.m_evolution_sub_level = this.evoInfo.getEvolutionSubLevel());
    if (((this.m_evolution_level == 5) && (this.m_evolution_sub_level == 7))) {
        // source line 86, bytecode pc 605
        (this.m_fixLevel = 5);
        // source line 87, bytecode pc 614
        (this.m_fixSubLevel = 8);
    } else {
        // source line 89, bytecode pc 649
        (grade = this.getNextGrade(this.m_evolution_level, this.m_evolution_sub_level));
        // source line 91, bytecode pc 664
        (this.m_fixLevel = grade.level);
        // source line 92, bytecode pc 679
        (this.m_fixSubLevel = grade.sub_level);
    }
    // source line 96, bytecode pc 715
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 97, bytecode pc 732
    this.setContentSize(visibleSize);
    // source line 99, bytecode pc 756
    (mainMenuWidth = xs.Views.MainMenuView.Width);
    // source line 102, bytecode pc 766
    (offset_x = (mainMenuWidth / 2));
    // source line 104, bytecode pc 773
    (tt_width = 520);
    // source line 105, bytecode pc 780
    (tt_height = 640);
    if ((this.m_generalOrbit > 5)) {
        // source line 110, bytecode pc 803
        (this.m_generalOrbit = 5);
    }
    // source line 113, bytecode pc 932
    (ccbiArr = [
    xs.Cfg.CCBI.Evolution_1,
    xs.Cfg.CCBI.Evolution_2,
    xs.Cfg.CCBI.Evolution_3,
    xs.Cfg.CCBI.Evolution_4,
    xs.Cfg.CCBI.Evolution_5
]);
    // source line 114, bytecode pc 975
    (this.ccbNodeTuTeng = xs.ccb_reader.load(ccbiArr[(this.m_generalOrbit - 1)], this));
    // source line 120, bytecode pc 1093
    xs.Utils.Node.attachNodes(this, this.ccbNodeTuTeng, { desc: "c", offset: cc.p(((20 - tt_width) - offset_x), (-tt_height / 2)), sc: true }, { zOrder: 0, tag: 1 });
    // source line 123, bytecode pc 1144
    (this.ccbNode_Infor = xs.ccb_reader.load(xs.Cfg.CCBI.EvolutionInfor, this));
    // source line 124, bytecode pc 1187
    this.ccbNode_Infor.setContentSize(cc.size(400, 640));
    // source line 125, bytecode pc 1230
    this.ccbNode_Infor.setAnchorPoint(cc.p(1, 0.5));
    // source line 131, bytecode pc 1336
    xs.Utils.Node.attachNodes(this, this.ccbNode_Infor, {
    desc: "lb",
    offset: { x: ((visibleSize.width - mainMenuWidth) + 20), y: (visibleSize.height / 2) },
    sc: true
});
    // source line 133, bytecode pc 1379
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode_Infor, this.ccbCfg_Infor, this);
    // source line 135, bytecode pc 1404
    this.m_nameLabel.setString(this.m_generalName);
    // source line 136, bytecode pc 1454
    xs.Utils.replaceGradeIcon(this.ccbNode_Infor, 10, this.generalModel.getGrade());
    // source line 138, bytecode pc 1478
    this.m_effect_label.setString("激活的下一个图腾效果为:");
    // source line 139, bytecode pc 1502
    this.m_consume_label.setString("激活下一个图腾效果需消耗:");
    // source line 142, bytecode pc 1529
    (this.m_first_icon = this.ccbNode_Infor.getChildByTag(21));
    // source line 143, bytecode pc 1556
    (this.m_second_icon = this.ccbNode_Infor.getChildByTag(22));
    // source line 144, bytecode pc 1581
    this.m_iconsList.push(this.m_first_icon);
    // source line 145, bytecode pc 1606
    this.m_iconsList.push(this.m_second_icon);
    // source line 147, bytecode pc 1631
    this.m_needList.push(this.m_first_Need);
    // source line 148, bytecode pc 1656
    this.m_needList.push(this.m_second_Need);
    // source line 149, bytecode pc 1681
    this.m_haveList.push(this.m_first_Have);
    // source line 150, bytecode pc 1706
    this.m_haveList.push(this.m_second_Have);
    // source line 152, bytecode pc 1744
    this.m_activateButton.setOnClickCallBack(this.ActivateCallback.bind(this));
    // source line 153, bytecode pc 1757
    this.initStars();
    // source line 155, bytecode pc 1770
    this.updateInfo();
    // source line 157, bytecode pc 1783
    this.setActiveButtonStatus();
    // source line 160, bytecode pc 1785
    return true;
},
    onEnter: function() {
    // source line 165, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 169, bytecode pc 12
    this._super();
},
    setActiveButtonStatus: function() {
    if (((this.m_evolution_level == 5) && (this.m_evolution_sub_level == 7))) {
        // source line 174, bytecode pc 48
        this.m_activateButton.setEnabled(false);
    } else {
        // source line 177, bytecode pc 73
        this.m_activateButton.setEnabled(true);
    }
},
    getNextGrade: function(level, sub_level) {
    var grade;
    // source line 182, bytecode pc 4
    (grade = null);
    if ((sub_level == 7)) {
        if ((level != 7)) {
            // source line 186, bytecode pc 40
            (level = (+level + 1));
            // source line 187, bytecode pc 46
            (sub_level = 1);
        }
    } else {
        // source line 191, bytecode pc 65
        (sub_level = (+sub_level + 1));
    }
    // source line 195, bytecode pc 92
    (grade = { level: level, sub_level: sub_level });
    // source line 199, bytecode pc 96
    return grade;
},
    getRewardStr: function(info) {
    // source line 204, bytecode pc 8
    return info.buff_desc;
},
    createItemIcon: function(data, idex) {
    var model, head, array, str, introduction, goodNum, _array, _str, haveNum;
    // source line 210, bytecode pc 15
    (this.m_conditionArray[idex] = data[1]);
    // source line 213, bytecode pc 51
    (model = xs.Models.Item.createWithBase(data[0]));
    // source line 215, bytecode pc 69
    (head = model.createIcon_Grade());
    // source line 217, bytecode pc 118
    xs.Utils.Node.replaceChildSafe(this.ccbNode_Infor, this.m_iconsList[idex], head);
    // source line 218, bytecode pc 132
    (this.m_iconsList[idex] = head);
    // source line 221, bytecode pc 141
    (array = []);
    // source line 222, bytecode pc 161
    (array[0] = model.getNameString());
    // source line 223, bytecode pc 172
    (array[1] = data[1]);
    // source line 224, bytecode pc 208
    (str = xs.Tools.String.createString("MiracleWeapon_1"));
    // source line 225, bytecode pc 246
    (introduction = xs.Tools.String.replaceStringByArray(str, array));
    // source line 227, bytecode pc 272
    this.m_needList[idex].setString(introduction);
    // source line 230, bytecode pc 329
    (goodNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(data[0]));
    // source line 232, bytecode pc 343
    (this.m_haveArray[idex] = goodNum);
    // source line 234, bytecode pc 352
    (_array = []);
    // source line 235, bytecode pc 372
    (_array[0] = goodNum.toString());
    // source line 236, bytecode pc 408
    (_str = xs.Tools.String.createString("MiracleWeapon_have"));
    // source line 237, bytecode pc 446
    (haveNum = xs.Tools.String.replaceStringByArray(_str, _array));
    // source line 239, bytecode pc 472
    this.m_haveList[idex].setString(haveNum);
},
    createEquipmentFragmentIcon: function(data, idex) {
    var equipmentlId, model, equipData, head, array, str, introduction, EquipmentPieceNum, i, _array, _str, haveNum;
    // source line 245, bytecode pc 15
    (this.m_conditionArray[idex] = data[1]);
    // source line 248, bytecode pc 24
    (equipmentlId = data[0]);
    // source line 249, bytecode pc 69
    (model = xs.Models.Equipment.createWithBase(equipmentlId.toString()));
    // source line 250, bytecode pc 114
    (equipData = xs.Models.EquipmentPiece.createWithBase(equipmentlId.toString()));
    // source line 251, bytecode pc 132
    (head = equipData.createIcon_Grade());
    // source line 253, bytecode pc 181
    xs.Utils.Node.replaceChildSafe(this.ccbNode_Infor, this.m_iconsList[idex], head);
    // source line 254, bytecode pc 195
    (this.m_iconsList[idex] = head);
    // source line 256, bytecode pc 204
    (array = []);
    // source line 257, bytecode pc 224
    (array[0] = equipData.getNameString());
    // source line 258, bytecode pc 235
    (array[1] = data[1]);
    // source line 259, bytecode pc 271
    (str = xs.Tools.String.createString("MiracleWeapon_3"));
    // source line 260, bytecode pc 309
    (introduction = xs.Tools.String.replaceStringByArray(str, array));
    // source line 261, bytecode pc 335
    this.m_needList[idex].setString(introduction);
    // source line 264, bytecode pc 340
    (EquipmentPieceNum = 0);
    // source line 265, bytecode pc 345
    (i = 0);
    while ((i < this.arrayPieces.length)) {
        if ((this.arrayPieces[i].pk_id == data[0])) {
            // source line 268, bytecode pc 396
            (EquipmentPieceNum = this.arrayPieces[i].num);
            break;
        }
        // source line 265, bytecode pc 415
        (i = (+i + 1));
    }
    // source line 273, bytecode pc 451
    (this.m_haveArray[idex] = EquipmentPieceNum);
    // source line 275, bytecode pc 460
    (_array = []);
    // source line 276, bytecode pc 480
    (_array[0] = EquipmentPieceNum.toString());
    // source line 277, bytecode pc 516
    (_str = xs.Tools.String.createString("MiracleWeapon_have"));
    // source line 278, bytecode pc 554
    (haveNum = xs.Tools.String.replaceStringByArray(_str, _array));
    // source line 279, bytecode pc 580
    this.m_haveList[idex].setString(haveNum);
},
    createGeneralsSoulIcon: function(data, idex) {
    var generalId, equipData, model, head, array, str, introduction, EquipmentPieceNum, i, _array, _str, haveNum;
    // source line 289, bytecode pc 15
    (this.m_conditionArray[idex] = data[1]);
    // source line 292, bytecode pc 24
    (generalId = data[0]);
    // source line 293, bytecode pc 75
    (equipData = xs.Models.General.createWithBase(generalId.toString()));
    // source line 294, bytecode pc 120
    (model = xs.Models.GeneralSoul.createWithBase(generalId.toString()));
    // source line 295, bytecode pc 138
    (head = model.createIcon_Grade());
    // source line 302, bytecode pc 172
    head.setOnClickCallBack(function() {
    // source line 300, bytecode pc 63
    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: equipData, type: "achieve_nothave" });
}.bind(this));
    // source line 304, bytecode pc 221
    xs.Utils.Node.replaceChildSafe(this.ccbNode_Infor, this.m_iconsList[idex], head);
    // source line 305, bytecode pc 235
    (this.m_iconsList[idex] = head);
    // source line 308, bytecode pc 244
    (array = []);
    // source line 309, bytecode pc 264
    (array[0] = model.getNameString());
    // source line 310, bytecode pc 275
    (array[1] = data[1]);
    // source line 311, bytecode pc 311
    (str = xs.Tools.String.createString("MiracleWeapon_2"));
    // source line 312, bytecode pc 349
    (introduction = xs.Tools.String.replaceStringByArray(str, array));
    // source line 314, bytecode pc 375
    this.m_needList[idex].setString(introduction);
    // source line 318, bytecode pc 380
    (EquipmentPieceNum = 0);
    // source line 319, bytecode pc 434
    (this.arraySouls = xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getAll());
    // source line 321, bytecode pc 439
    (i = 0);
    while ((i < this.arraySouls.length)) {
        if ((this.arraySouls[i].pk_id == data[0])) {
            // source line 323, bytecode pc 490
            (EquipmentPieceNum = this.arraySouls[i].num);
            break;
        }
        // source line 321, bytecode pc 509
        (i = (+i + 1));
    }
    // source line 329, bytecode pc 545
    (this.m_haveArray[idex] = EquipmentPieceNum);
    // source line 331, bytecode pc 554
    (_array = []);
    // source line 332, bytecode pc 574
    (_array[0] = EquipmentPieceNum.toString());
    // source line 334, bytecode pc 610
    (_str = xs.Tools.String.createString("MiracleWeapon_have"));
    // source line 335, bytecode pc 648
    (haveNum = xs.Tools.String.replaceStringByArray(_str, _array));
    // source line 336, bytecode pc 674
    this.m_haveList[idex].setString(haveNum);
},
    refreshData: function() {
    var grade;
    // source line 342, bytecode pc 60
    (this.evoInfo = xs.Profile.GameData.Mgr.getInstance().EvolutionInfos.getByGeneralId(this.m_generalId));
    // source line 343, bytecode pc 78
    this.evoInfo.initCachePoint();
    // source line 345, bytecode pc 96
    (this.evolution_id = this.evoInfo.evolution_id);
    // source line 346, bytecode pc 147
    (this.buff_config = xs.Models.EvolutionInfo.createWithBase(this.m_generalId).getBuffInfo());
    // source line 348, bytecode pc 187
    (this.generalModel = xs.Models.General.createWithBase(this.m_generalId));
    // source line 349, bytecode pc 218
    (this.m_generalName = this.generalModel.getNameString(this.m_generalId));
    // source line 351, bytecode pc 242
    (this.m_evolution_level = this.evoInfo.getEvolutionLevel());
    // source line 352, bytecode pc 266
    (this.m_evolution_sub_level = this.evoInfo.getEvolutionSubLevel());
    if (((this.m_evolution_level == 5) && (this.m_evolution_sub_level == 7))) {
        // source line 366, bytecode pc 304
        (this.m_fixLevel = 5);
        // source line 367, bytecode pc 313
        (this.m_fixSubLevel = 8);
    } else {
        // source line 369, bytecode pc 348
        (grade = this.getNextGrade(this.m_evolution_level, this.m_evolution_sub_level));
        // source line 371, bytecode pc 363
        (this.m_fixLevel = grade.level);
        // source line 372, bytecode pc 378
        (this.m_fixSubLevel = grade.sub_level);
    }
},
    updateUI: function() {
    // source line 379, bytecode pc 12
    this.refreshData();
    // source line 381, bytecode pc 25
    this.updateInfo();
    // source line 383, bytecode pc 38
    this.updateStars();
},
    updateInfo: function() {
    var info, i;
    // source line 387, bytecode pc 29
    xs.log("---- this.m_evolution_level = ", this.m_evolution_level);
    // source line 388, bytecode pc 56
    this.m_level_label.setString((this.m_fixLevel - 1));
    // source line 389, bytecode pc 77
    this.m_level_label.setFontSize(36);
    // source line 390, bytecode pc 82
    (info = null);
    if ((this.m_fixSubLevel != 8)) {
        // source line 393, bytecode pc 150
        (info = this.buff_config[String(this.m_fixLevel)][String(this.m_fixSubLevel)]);
    } else {
        // source line 395, bytecode pc 209
        (info = this.buff_config[String(this.m_evolution_level)][String(this.m_evolution_sub_level)]);
    }
    // source line 398, bytecode pc 238
    this.m_star_label.setStringById(info[0].sub_name);
    // source line 399, bytecode pc 275
    this.m_reward_label.setString(this.getRewardStr(info[0]));
    // source line 402, bytecode pc 280
    (i = 0);
    while ((i < 2)) {
        // source line 403, bytecode pc 329
        this.switchCreateIcon(info[0].item_list[i.toString()], i);
        // source line 402, bytecode pc 343
        (i = (+i + 1));
    }
    if ((this.m_fixSubLevel == 8)) {
        // source line 407, bytecode pc 395
        this.m_level_label.setString(this.m_evolution_level);
        // source line 408, bytecode pc 416
        this.m_level_label.setFontSize(36);
        // source line 409, bytecode pc 436
        this.m_activateButton.setEnabled(false);
    }
},
    initStars: function() {
    var i, starBtn;
    // source line 415, bytecode pc 4
    (i = 0);
    while ((i < 7)) {
        // source line 417, bytecode pc 45
        (this.m_lightStars[i] = this.ccbNodeTuTeng.getChildByTag((8 + i)));
        // source line 418, bytecode pc 70
        this.m_lightStars[i].setZOrder(2);
        if ((i >= (this.m_fixSubLevel - 1))) {
            // source line 421, bytecode pc 111
            this.m_lightStars[i].setVisible(false);
        }
        // source line 423, bytecode pc 145
        (this.m_darkStars[i] = this.ccbNodeTuTeng.getChildByTag((1 + i)));
        // source line 424, bytecode pc 169
        this.m_darkStars[i].setZOrder(1);
        // source line 426, bytecode pc 210
        (starBtn = xs.Views.Btn.createInvisibleWithParent(this.m_darkStars[i]));
        // source line 427, bytecode pc 266
        starBtn.setOnClickCallBack(this.ClickStarCallback.bind({ self: this, tag: (i + 1) }));
        // source line 415, bytecode pc 280
        (i = (+i + 1));
    }
},
    updateStars: function() {
    var i;
    // source line 433, bytecode pc 4
    (i = 0);
    while ((i < 7)) {
        // source line 434, bytecode pc 34
        this.m_lightStars[i].setVisible(true);
        // source line 433, bytecode pc 48
        (i = (+i + 1));
    }
    // source line 437, bytecode pc 66
    (i = 0);
    while ((i < 7)) {
        if ((i >= (this.m_fixSubLevel - 1))) {
            // source line 439, bytecode pc 113
            this.m_lightStars[i].setVisible(false);
        }
        // source line 437, bytecode pc 127
        (i = (+i + 1));
    }
    if ((this.m_fixSubLevel == 8)) {
        // source line 444, bytecode pc 159
        (i = 0);
        while ((i < 7)) {
            // source line 445, bytecode pc 189
            this.m_lightStars[i].setVisible(true);
            // source line 444, bytecode pc 203
            (i = (+i + 1));
        }
    }
},
    ClickStarCallback: function() {
    var tag, self, info, i;
    // source line 451, bytecode pc 9
    (tag = this.tag);
    // source line 452, bytecode pc 19
    (self = this.self);
    // source line 454, bytecode pc 74
    (info = self.buff_config[String(self.m_fixLevel)][String(tag)]);
    // source line 455, bytecode pc 105
    self.m_star_label.setStringById(info[0].sub_name);
    // source line 456, bytecode pc 146
    self.m_reward_label.setString(self.getRewardStr(info[0]));
    // source line 458, bytecode pc 151
    (i = 0);
    while ((i < 2)) {
        // source line 459, bytecode pc 202
        self.switchCreateIcon(info[0].item_list[i.toString()], i);
        // source line 458, bytecode pc 216
        (i = (+i + 1));
    }
    if ((tag != self.m_fixSubLevel)) {
        // source line 463, bytecode pc 268
        self.m_activateButton.setEnabled(false);
    } else {
        // source line 465, bytecode pc 295
        self.m_activateButton.setEnabled(true);
    }
},
    ActivateCallback: function() {
    var conditionNum, i;
    // source line 472, bytecode pc 4
    (conditionNum = 0);
    // source line 473, bytecode pc 9
    (i = 0);
    while ((i < 2)) {
        if ((this.m_haveArray[i] >= this.m_conditionArray[i])) {
            // source line 477, bytecode pc 55
            (conditionNum = (+conditionNum + 1));
        }
        // source line 473, bytecode pc 70
        (i = (+i + 1));
    }
    if ((conditionNum == 2)) {
        // source line 496, bytecode pc 216
        xs.Tools.Net.requestEvolutionActive({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    evolution_id: this.evolution_id
}, function(data) {
    if ((data.result == true)) {
        // source line 491, bytecode pc 27
        this.updateUI();
    }
}, function(data) {
}, this);
    } else {
        // source line 500, bytecode pc 281
        xs.Views.Mgr.showToast(xs.Tools.String.createString("AwakeActiveDisable"));
    }
},
    switchCreateIcon: function(data, i) {
    var type;
    // source line 506, bytecode pc 22
    xs.log("------ 55555555555 ------");
    // source line 507, bytecode pc 43
    xs.dump(data);
    // source line 508, bytecode pc 68
    (type = Number(data[2]));
    // source line 509, bytecode pc 72
    switch (type) {
        case 7:
        /* TODO_BYTECODE pc=72 opcode=tableswitch reason=tableswitch_target_invalid */
        break;
        case 5:
        // source line 512, bytecode pc 121
        this.createItemIcon(data, i);
        break;
        case 6:
        // source line 517, bytecode pc 147
        this.createGeneralsSoulIcon(data, i);
        break;
        case 8:
        // source line 521, bytecode pc 175
        xs.log("----- 碎片 -----");
        // source line 522, bytecode pc 196
        this.createEquipmentFragmentIcon(data, i);
        break;
        default:
        // source line 526, bytecode pc 224
        xs.warn("this.switchCreateIcon tag error! ");
        break;
    }
}
}));
// source line 535, bytecode pc 794
(xs.Views.AwakeLayer.create = function(param) {
    var view;
    // source line 537, bytecode pc 23
    (view = new xs.Views.AwakeLayer());
    if ((view && view.init(param))) {
        // source line 540, bytecode pc 59
        return view;
    }
    // source line 543, bytecode pc 84
    xs.assert(false, "xs.Views.AwakeLayer.create error!");
    // source line 545, bytecode pc 86
    return null;
});
