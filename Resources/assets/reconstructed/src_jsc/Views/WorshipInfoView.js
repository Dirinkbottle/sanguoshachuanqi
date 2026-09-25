// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/WorshipInfoView.js:1
// source line 183, bytecode pc 183
(xs.Views.WorshipInfoView = cc.Node.extend({
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 21, bytecode pc 35
    (this.m_ccbNode = null);
    // source line 22, bytecode pc 43
    (this.m_listener = null);
    // source line 23, bytecode pc 51
    (this.m_generalData = null);
    // source line 24, bytecode pc 59
    (this.m_oblationData = null);
    // source line 25, bytecode pc 67
    (this.m_useWineData = null);
    // source line 27, bytecode pc 75
    (this.m_iconBtn = null);
    // source line 29, bytecode pc 83
    (this.m_itemIcon = null);
    // source line 30, bytecode pc 91
    (this.m_itemNameLab = null);
    // source line 31, bytecode pc 99
    (this.m_expLab = null);
    // source line 32, bytecode pc 107
    (this.m_beforeLvLab = null);
    // source line 33, bytecode pc 115
    (this.m_lvArrow = null);
    // source line 34, bytecode pc 123
    (this.m_afterLvLab = null);
    // source line 35, bytecode pc 131
    (this.m_beforeStrikeLab = null);
    // source line 36, bytecode pc 139
    (this.m_strikeArrow = null);
    // source line 37, bytecode pc 147
    (this.m_afterStrikeLab = null);
    // source line 38, bytecode pc 155
    (this.m_ganodermaNumLab = null);
    // source line 39, bytecode pc 163
    (this.m_worshipBtn = null);
    // source line 41, bytecode pc 171
    (this.m_expTxtLab = null);
    // source line 42, bytecode pc 179
    (this.m_lvTxtLab = null);
    // source line 43, bytecode pc 187
    (this.m_ganodermaTxtLab = null);
    // source line 45, bytecode pc 195
    (this.m_beforeTalentLab = null);
    // source line 46, bytecode pc 203
    (this.m_afterTalentLab = null);
    // source line 47, bytecode pc 211
    (this.m_hp = null);
    // source line 48, bytecode pc 219
    (this.m_att = null);
    // source line 49, bytecode pc 227
    (this.m_def = null);
    // source line 50, bytecode pc 235
    (this.m_inf = null);
    // source line 52, bytecode pc 243
    (this.m_mailiItemNum = 0);
    // source line 54, bytecode pc 251
    (this.m_meridianLab_2 = null);
    // source line 57, bytecode pc 289
    this.setContentSize(cc.size(768, 150));
    // source line 59, bytecode pc 340
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.WorshipInfo, this));
    // source line 60, bytecode pc 383
    this.m_ccbNode.setContentSize(cc.size(800, 150));
    // source line 61, bytecode pc 419
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 63, bytecode pc 447
    (this.m_ccbNode_1000 = this.m_ccbNode.getChildByTag(1000));
    // source line 64, bytecode pc 475
    (this.m_ccbNode_1001 = this.m_ccbNode.getChildByTag(1001));
    // source line 65, bytecode pc 537
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode_1000, xs.Views.WorshipInfoView.cfg.ccbCfg_1000, this);
    // source line 66, bytecode pc 599
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode_1001, xs.Views.WorshipInfoView.cfg.ccbCfg_1001, this);
    // source line 67, bytecode pc 661
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.WorshipInfoView.cfg.ccbCfg, this);
    // source line 69, bytecode pc 694
    (this.m_iconBtn = xs.Views.EventLayer.create());
    // source line 71, bytecode pc 736
    this.m_iconBtn.setContentSize(cc.size(128, 110));
    // source line 72, bytecode pc 825
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_iconBtn, { desc: "lb", sc: true, offset: { x: 60, y: 12 } });
    // source line 74, bytecode pc 863
    this.m_worshipBtn.addOnClickCallBack(this.worshipBtnCallback.bind(this));
    // source line 75, bytecode pc 890
    this.m_iconBtn.setTouchCallback(this.iconBtnCallback, this);
    // source line 78, bytecode pc 913
    xs.log_zhz("init-finish");
    // source line 79, bytecode pc 937
    this.m_meridianLab_2.setString("0");
    // source line 81, bytecode pc 939
    return true;
},
    setMasterworkLegacy: function(upgradeLV) {
    var beforeTalent, afterTalent, hp, atk, def, int, needCutTalent;
    // source line 85, bytecode pc 19
    this.m_ccbNode_1000.setVisible(false);
    // source line 86, bytecode pc 39
    this.m_ccbNode_1001.setVisible(true);
    // source line 87, bytecode pc 60
    (beforeTalent = this.m_generalData.getTalentPoint());
    // source line 88, bytecode pc 88
    (afterTalent = (this.m_generalData.getTalentPoint() + (upgradeLV * 15)));
    // source line 89, bytecode pc 103
    (hp = this.m_oblationData.general_hp_attr);
    // source line 90, bytecode pc 118
    (atk = this.m_oblationData.general_attack_attr);
    // source line 91, bytecode pc 133
    (def = this.m_oblationData.general_defense_attr);
    // source line 92, bytecode pc 148
    (int = this.m_oblationData.general_wisdom_attr);
    // source line 93, bytecode pc 175
    xs.log_zhz("hp", hp);
    // source line 94, bytecode pc 202
    xs.log_zhz("atk", atk);
    // source line 95, bytecode pc 229
    xs.log_zhz("def", def);
    // source line 96, bytecode pc 256
    xs.log_zhz("int", int);
    // source line 97, bytecode pc 275
    (needCutTalent = (((hp + atk) + def) + int));
    // source line 98, bytecode pc 339
    this.m_talentCutLab.setString(xs.Tools.String.createStringWithArgsArray("str_Worship_talentNeedCut", [ needCutTalent ]));
    // source line 99, bytecode pc 361
    this.m_beforeTalentLab.setString(beforeTalent);
    // source line 100, bytecode pc 383
    this.m_afterTalentLab.setString(afterTalent);
    // source line 101, bytecode pc 405
    this.m_hp.setString(hp);
    // source line 102, bytecode pc 427
    this.m_att.setString(atk);
    // source line 103, bytecode pc 449
    this.m_def.setString(def);
    // source line 104, bytecode pc 471
    this.m_inf.setString(int);
    // source line 105, bytecode pc 485
    (this.talentFinally = (afterTalent - needCutTalent));
},
    setOrdinaryLegacy: function(gResult) {
    // source line 108, bytecode pc 19
    this.m_ccbNode_1000.setVisible(true);
    // source line 109, bytecode pc 39
    this.m_ccbNode_1001.setVisible(false);
    // source line 110, bytecode pc 61
    this.m_ganodermaNumLab.setString(gResult);
},
    setBaseTouchPriority: function(priority) {
    // source line 113, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 115, bytecode pc 65
    this.m_worshipBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.WorshipInfoView.cfg.m_worshipBtn.priority));
    // source line 117, bytecode pc 121
    this.m_iconBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.WorshipInfoView.cfg.m_iconBtn.priority));
},
    setListener: function(listener) {
    // source line 120, bytecode pc 9
    (this.m_listener = listener);
},
    setGeneralAndOblation: function(general, oblation) {
    // source line 123, bytecode pc 9
    (this.m_generalData = general);
    // source line 124, bytecode pc 19
    (this.m_oblationData = oblation);
    // source line 125, bytecode pc 32
    this.updateView();
},
    setUseWine: function(wine) {
    // source line 128, bytecode pc 9
    (this.m_useWineData = wine);
    // source line 129, bytecode pc 22
    this.updateView();
},
    reset: function() {
    // source line 132, bytecode pc 7
    (this.m_generalData = null);
    // source line 133, bytecode pc 15
    (this.m_oblationData = null);
    // source line 134, bytecode pc 23
    (this.m_useWineData = null);
},
    setVisible: function(visible) {
    // source line 137, bytecode pc 16
    this._super(visible);
    // source line 138, bytecode pc 38
    this.m_iconBtn.setVisible(visible);
},
    worshipBtnCallback: function() {
    if (((this.talentFinally < 0) && this.talentFinallyNeed)) {
        // source line 144, bytecode pc 84
        xs.Views.Mgr.showToast(xs.Tools.String.createString("worship_no_talentFinally"));
        // source line 145, bytecode pc 86
        return void 0;
    }
    if (!this.m_useWineData) {
        if (this.m_listener) {
            // source line 151, bytecode pc 127
            this.m_listener.WorshipInfoView_showItem();
        }
        // source line 153, bytecode pc 129
        return void 0;
    }
    if (this.m_listener) {
        // source line 156, bytecode pc 172
        this.m_listener.WorshipInfoView_worship(this.m_useWineData, this.m_mailiItemNum);
    }
},
    iconBtnCallback: function() {
    if (this.m_listener) {
        // source line 161, bytecode pc 46
        this.m_listener.WorshipInfoView_showItem(this.m_generalData.getId());
    }
},
    _getValuableWorshipItem: function() {
    var itemIds, thousandWine, hundredWine, tenWine;
    // source line 165, bytecode pc 114
    (itemIds = xs.Profile.GameData.Mgr.getInstance().Items.chkById(xs.Profile.GameData.Mgr.getInstance().Items.getIdsByType(xs.Models.ItemType_JiShi)));
    if ((itemIds.length < 3)) {
        // source line 167, bytecode pc 197
        (thousandWine = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(xs.Models.ItemID_ThousandWine));
        if (thousandWine) {
            // source line 169, bytecode pc 209
            return thousandWine;
        }
        // source line 171, bytecode pc 276
        (hundredWine = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(xs.Models.ItemID_HundredWine));
        if (hundredWine) {
            // source line 173, bytecode pc 288
            return hundredWine;
        }
        // source line 175, bytecode pc 355
        (tenWine = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(xs.Models.ItemID_TenWine));
        if (tenWine) {
            // source line 177, bytecode pc 367
            return tenWine;
        }
    } else {
        // source line 180, bytecode pc 374
        return null;
    }
},
    updateView: function() {
    var worshipItem, itemIcon, exp, ratio, realExp, nowLv, afterLv, contentSize, pos, nowStrike, soulNum, afterStrike, ganodermaNum, gResult, meridianTopModel, itemNum;
    // source line 184, bytecode pc 41
    xs.assert((this.m_generalData && this.m_oblationData), "generalData or oblationData missing!");
    // source line 185, bytecode pc 46
    (worshipItem = null);
    if (this.m_useWineData) {
        // source line 187, bytecode pc 67
        (worshipItem = this.m_useWineData);
    } else {
        // source line 189, bytecode pc 88
        (worshipItem = this._getValuableWorshipItem());
        // source line 190, bytecode pc 98
        (this.m_useWineData = worshipItem);
        if (!worshipItem) {
            // source line 192, bytecode pc 174
            (worshipItem = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(xs.Models.ItemID_ThousandWine));
        }
    }
    if ((worshipItem.getItemType() == xs.Models.ItemType_ChuanChenFu_JiPin)) {
        // source line 198, bytecode pc 217
        (this.talentFinallyNeed = true);
    } else {
        // source line 202, bytecode pc 230
        (this.talentFinallyNeed = false);
    }
    // source line 205, bytecode pc 257
    xs.dump("worshipItem", worshipItem);
    // source line 206, bytecode pc 275
    (itemIcon = worshipItem.createIcon_GradeAndNum());
    // source line 207, bytecode pc 294
    itemIcon.reloadData(worshipItem);
    // source line 208, bytecode pc 327
    itemIcon.setPosition(this.m_itemIcon.getPosition());
    // source line 209, bytecode pc 365
    xs.Utils.Node.attachNodes(this.m_ccbNode, itemIcon);
    // source line 210, bytecode pc 399
    xs.Utils.Node.safeRemoveChild(this.m_itemIcon);
    // source line 211, bytecode pc 409
    (this.m_itemIcon = itemIcon);
    // source line 212, bytecode pc 429
    this.m_itemIcon._setZOrder(1);
    // source line 214, bytecode pc 462
    this.m_itemNameLab.setString(worshipItem.getNameString());
    // source line 215, bytecode pc 483
    this.m_itemNameLab._setZOrder(2);
    // source line 217, bytecode pc 504
    (exp = this.m_oblationData.getProLibateExp());
    // source line 218, bytecode pc 522
    (ratio = worshipItem.getExpPercent());
    // source line 219, bytecode pc 553
    (realExp = Math.floor(((exp * ratio) / 100)));
    // source line 220, bytecode pc 603
    this.m_expLab.setStringByStrings([ realExp, (("(" + ratio) + "%)") ]);
    // source line 222, bytecode pc 624
    (nowLv = this.m_generalData.getLevel());
    // source line 223, bytecode pc 649
    (afterLv = this.m_generalData.getLevelUpgradeByExp(realExp));
    // source line 224, bytecode pc 671
    this.m_beforeLvLab.setString(nowLv);
    // source line 225, bytecode pc 693
    this.m_afterLvLab.setString(afterLv);
    // source line 226, bytecode pc 714
    (contentSize = this.m_beforeLvLab.getContentSize());
    // source line 227, bytecode pc 735
    (pos = this.m_beforeLvLab.getPosition());
    // source line 228, bytecode pc 800
    this.m_lvArrow.setPosition(cc.p(((pos.x + contentSize.width) + 14), pos.y));
    // source line 229, bytecode pc 821
    (contentSize = this.m_lvArrow.getContentSize());
    // source line 230, bytecode pc 842
    (pos = this.m_lvArrow.getPosition());
    // source line 231, bytecode pc 910
    this.m_afterLvLab.setPosition(cc.p(((pos.x + (contentSize.width / 2)) + 8), pos.y));
    // source line 233, bytecode pc 931
    (nowStrike = this.m_generalData.getBreachLevel());
    // source line 234, bytecode pc 952
    (soulNum = this.m_oblationData.getCurBreachTotalUsedSoulNum());
    // source line 235, bytecode pc 984
    (afterStrike = this.m_generalData.getBreachLevelUpgradeByGeneralPkId(soulNum, this.m_oblationData));
    // source line 237, bytecode pc 1006
    this.m_beforeStrikeLab.setString(nowStrike);
    // source line 238, bytecode pc 1028
    this.m_afterStrikeLab.setString(afterStrike);
    // source line 239, bytecode pc 1049
    (ganodermaNum = this.m_oblationData.getProLibateGanoderma());
    // source line 240, bytecode pc 1067
    (ratio = worshipItem.getGanodermaPercent());
    // source line 241, bytecode pc 1103
    (gResult = xs.Utils.floorSafe(((ganodermaNum * ratio) / 100)));
    if ((worshipItem.getLegacyGrade() === xs.Models.ItemGrade_Master)) {
        // source line 243, bytecode pc 1159
        this.setMasterworkLegacy((afterLv - nowLv));
    } else {
        // source line 245, bytecode pc 1181
        this.setOrdinaryLegacy(gResult);
    }
    // source line 249, bytecode pc 1250
    (meridianTopModel = xs.Profile.GameData.Mgr.getInstance().MeridianTops.getByGeneralPkId(this.m_oblationData.getPkId()));
    if (meridianTopModel) {
        // source line 251, bytecode pc 1276
        (itemNum = meridianTopModel.getMeridianItemNum());
        // source line 252, bytecode pc 1298
        this.m_meridianLab_2.setString(itemNum);
        // source line 253, bytecode pc 1323
        (this.m_mailiItemNum = parseInt(itemNum));
    } else {
        // source line 255, bytecode pc 1352
        this.m_meridianLab_2.setString("0");
        // source line 256, bytecode pc 1360
        (this.m_mailiItemNum = 0);
    }
}
}));
// source line 304, bytecode pc 1488
(xs.Views.WorshipInfoView.cfg = {
    ccbCfg: [
        { name: "m_meridianLab_1", tag: 30, type: "ls", id: "LS_liebiaoInf", stringId: "MeridiansMain_24" },
        { name: "m_meridianLab_2", tag: 31, type: "ls", id: "LS_liebiaoInf2" },
        { name: "m_itemIcon", tag: 10 },
        { name: "m_itemNameLab", tag: 11, type: "ls", id: "LS_ZbJn" },
        { name: "m_expLab", tag: 12, type: "ls_ext", ids: [ "LS_Lv", "LS_liebiaoInf2" ] },
        { name: "m_beforeLvLab", tag: 13, type: "ls", id: "LS_liebiaoInf2" },
        { name: "m_lvArrow", tag: 19 },
        { name: "m_afterLvLab", tag: 14, type: "ls", id: "LS_liebiaoInf2" },
        { name: "m_beforeStrikeLab", tag: 15, type: "ls", id: "LS_Lv" },
        { name: "m_strikeArrow", tag: 20 },
        { name: "m_afterStrikeLab", tag: 18, type: "ls", id: "LS_Lv" },
        { name: "m_worshipBtn", tag: 17, type: "btn", id: "Btn_btn1", stringId: "str_Worship_give" },
        {
            name: "m_expTxtLab",
            tag: 101,
            type: "ls",
            id: "LS_liebiaoInf",
            stringId: "str_Worship_expTranValue"
        },
        { name: "m_lvTxtLab", tag: 102, type: "ls", id: "LS_liebiaoInf", stringId: "str_Worship_lv" }
    ],
    ccbCfg_1000: [
        { name: "m_ganodermaNumLab", tag: 16, type: "ls", id: "LS_mainUI4" },
        {
            name: "m_ganodermaTxtLab",
            tag: 103,
            type: "ls",
            id: "LS_liebiaoInf",
            stringId: "str_Worship_backValue"
        }
    ],
    ccbCfg_1001: [
        { name: "m_talentTxtLab", tag: 1, type: "ls", id: "LS_liebiaoInf", stringId: "str_Worship_talent" },
        {
            name: "m_talentCutLab",
            tag: 4,
            type: "ls",
            id: "LS_liebiaoInf",
            stringId: "str_Worship_talentNeedCut"
        },
        {
            name: "m_propertyTxtLab",
            tag: 5,
            type: "ls",
            id: "LS_liebiaoInf",
            stringId: "str_Worship_property"
        },
        { name: "m_beforeTalentLab", tag: 2, type: "ls", id: "LS_liebiaoInf2" },
        { name: "m_afterTalentLab", tag: 3, type: "ls", id: "LS_liebiaoInf2" },
        { name: "m_hp", tag: 6, type: "ls", id: "LS_liebiaoInf2" },
        { name: "m_att", tag: 7, type: "ls", id: "LS_liebiaoInf2" },
        { name: "m_def", tag: 8, type: "ls", id: "LS_liebiaoInf2" },
        { name: "m_inf", tag: 9, type: "ls", id: "LS_liebiaoInf2" }
    ],
    m_worshipBtn: { priority: -1 },
    m_iconBtn: { priority: -1 }
});
// source line 308, bytecode pc 1514
(xs.Views.WorshipInfoView.create = function() {
    var view;
    // source line 309, bytecode pc 23
    (view = new xs.Views.WorshipInfoView());
    if ((view && view.init())) {
        // source line 311, bytecode pc 55
        return view;
    }
    // source line 313, bytecode pc 78
    xs.warn("xs.Views.WorshipInfoView.create error!");
    // source line 314, bytecode pc 80
    return null;
});
