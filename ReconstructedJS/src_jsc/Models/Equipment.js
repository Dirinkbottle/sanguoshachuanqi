// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Equipment.js:1
// source line 13, bytecode pc 25
(xs.Models.Equipment_Pos_Weapon = xs.Constant_Equ_PosType_Weapon);
// source line 14, bytecode pc 51
(xs.Models.Equipment_Pos_Armor = xs.Constant_Equ_PosType_Armor);
// source line 15, bytecode pc 77
(xs.Models.Equipment_Pos_Mount = xs.Constant_Equ_PosType_Mount);
// source line 16, bytecode pc 103
(xs.Models.Equipment_Pos_Kit = xs.Constant_Equ_PosType_Kit);
// source line 21, bytecode pc 129
(xs.Models.Equipment_Type_Atk = xs.Constant_AttrType_Atk);
// source line 22, bytecode pc 155
(xs.Models.Equipment_Type_Def = xs.Constant_AttrType_Def);
// source line 23, bytecode pc 181
(xs.Models.Equipment_Type_Hp = xs.Constant_AttrType_Hp);
// source line 24, bytecode pc 207
(xs.Models.Equipment_Type_Int = xs.Constant_AttrType_Int);
// source line 710, bytecode pc 987
(xs.Models.Equipment = xs.Models.Card.extend({
    name: "xs.Models.Equipment",
    CfgDataType: xs.Constant_CfgDataType_Equipment,
    ResType: xs.Constant_ResType_Equ,
    names: { id: "equipment_id", level: "equipment_level" },
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
    var caches;
    if (!this._super()) {
        // source line 45, bytecode pc 19
        return false;
    }
    // source line 49, bytecode pc 27
    (this.general_pk_id = null);
    // source line 50, bytecode pc 39
    (this.m_bore_list = []);
    // source line 55, bytecode pc 75
    (caches = [ "_curLevelUpgradeCfg", "_cacheUpgradeCfgByLevel", "_cacheBelongGeneral" ]);
    // source line 58, bytecode pc 92
    this.registerCaches(caches);
    // source line 60, bytecode pc 107
    this.setRefineLevel(1);
    // source line 61, bytecode pc 122
    this.setRefineExp(0);
    // source line 63, bytecode pc 124
    return true;
},
    loadJson: function(json) {
    // source line 69, bytecode pc 16
    this._super(json);
    // source line 71, bytecode pc 38
    this.setGeneralPkId(json.general_pk_id);
    // source line 77, bytecode pc 67
    this.setRefineLevel((json.refine_level || 1));
    // source line 78, bytecode pc 96
    this.setRefineExp((json.refine_exp || 0));
    // source line 79, bytecode pc 129
    this.setBoreList((json.bore_list || []));
},
    setBoreList: function(bore_list) {
    // source line 95, bytecode pc 9
    (this.m_bore_list = bore_list);
},
    getBoreList: function() {
    // source line 100, bytecode pc 6
    return this.m_bore_list;
},
    getBoreSpriteNameByType: function(bore_type) {
    var mHoleTypeString;
    // source line 105, bytecode pc 26
    xs.assert(bore_type, "bore_type is error");
    // source line 106, bytecode pc 35
    (mHoleTypeString = "");
    if ((xs.Constant_AttrType_Atk == bore_type)) {
        // source line 108, bytecode pc 63
        (mHoleTypeString = "Cmn03_sanjiaoKong");
    } else {
        if ((xs.Constant_AttrType_Def == bore_type)) {
            // source line 110, bytecode pc 96
            (mHoleTypeString = "Cmn03_fangxingKong");
        } else {
            if ((xs.Constant_AttrType_Hp == bore_type)) {
                // source line 112, bytecode pc 129
                (mHoleTypeString = "Cmn03_yuanxingKong");
            } else {
                if ((xs.Constant_AttrType_Int == bore_type)) {
                    // source line 114, bytecode pc 162
                    (mHoleTypeString = "Cmn03_lingxingKong");
                }
            }
        }
    }
    // source line 116, bytecode pc 166
    return mHoleTypeString;
},
    getGemsIdsInEquipment: function() {
    var _boreList, _gemsIds, i;
    // source line 122, bytecode pc 15
    (_boreList = this.getBoreList());
    // source line 123, bytecode pc 24
    (_gemsIds = []);
    // source line 124, bytecode pc 29
    (i = 0);
    while ((i < _boreList.length)) {
        if (!xs.Utils.isEmpty(_boreList[i].gem_id)) {
            // source line 126, bytecode pc 109
            _gemsIds.push(("" + _boreList[i].gem_id));
        }
        // source line 124, bytecode pc 124
        i++;
    }
    // source line 130, bytecode pc 146
    return _gemsIds;
},
    getGemsFightPoint: function() {
    var _allGemsAttr, _gemsIds, i, _gems, _attr;
    // source line 135, bytecode pc 4
    (_allGemsAttr = 0);
    // source line 136, bytecode pc 20
    (_gemsIds = this.getGemsIdsInEquipment());
    // source line 137, bytecode pc 25
    (i = 0);
    while ((i < _gemsIds.length)) {
        // source line 139, bytecode pc 69
        (_gems = xs.Models.Gems.createWithBase(_gemsIds[i]));
        // source line 140, bytecode pc 96
        xs.log_hsq("_gems", _gems);
        // source line 141, bytecode pc 123
        xs.log_hsq("_gemsIds", _gemsIds);
        // source line 142, bytecode pc 152
        (_attr = _gems.getAttrNaked(xs.Constant_AttrType_FightPoint));
        // source line 143, bytecode pc 163
        (_allGemsAttr = (_allGemsAttr + _attr));
        // source line 144, bytecode pc 190
        xs.log_xjf(("_allGemsAttr = " + _attr));
        // source line 137, bytecode pc 205
        i++;
    }
    // source line 147, bytecode pc 227
    return _allGemsAttr;
},
    setRefineLevelForPreview: function(level) {
    if (!this.oriRefineLevel) {
        // source line 154, bytecode pc 30
        (this.oriRefineLevel = this.getRefineLevel());
    }
    // source line 157, bytecode pc 57
    (this.m_refine_level = xs.parseInt(level));
},
    recoveryRefineLevel: function() {
    if (this.oriRefineLevel) {
        // source line 162, bytecode pc 30
        this.setRefineLevel(this.oriRefineLevel);
        // source line 163, bytecode pc 38
        (this.oriRefineLevel = null);
    }
},
    setRefineLevel: function(level) {
    // source line 169, bytecode pc 26
    this.assert(level, "setRefineLevel error", level);
    // source line 171, bytecode pc 53
    (this.m_refine_level = xs.parseInt(level));
},
    getRefineLevel: function() {
    // source line 176, bytecode pc 6
    return this.m_refine_level;
},
    isMaxLv: function() {
    var strongerMaxLevel, _level;
    // source line 180, bytecode pc 72
    (strongerMaxLevel = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerUpgradeCfg().getEquipmentUpgradeTotalLevel());
    // source line 181, bytecode pc 88
    (_level = this.getLevel());
    // source line 182, bytecode pc 108
    return ((_level >= strongerMaxLevel) ? true : false);
},
    isRefineMaxLv: function() {
    var _level, _maxlevel;
    // source line 185, bytecode pc 15
    (_level = this.getRefineLevel());
    // source line 186, bytecode pc 31
    (_maxlevel = this.getMaxRefineLevel());
    if ((_level >= _maxlevel)) {
        // source line 188, bytecode pc 45
        return true;
    }
    // source line 190, bytecode pc 47
    return false;
},
    setRefineExp: function(exp) {
    // source line 194, bytecode pc 26
    (this.m_refine_exp = xs.parseInt(exp));
},
    getRefineExp: function() {
    // source line 198, bytecode pc 6
    return this.m_refine_exp;
},
    getUpgradeRefineExpNeed: function(refineLevel) {
    var _upgrade_exp_obj;
    if (!refineLevel) {
        // source line 204, bytecode pc 24
        (refineLevel = this.getRefineLevel());
    }
    // source line 206, bytecode pc 50
    (_upgrade_exp_obj = this._getUpgradeExpCfgObj("refine_upgrade_exp_type", refineLevel));
    // source line 207, bytecode pc 65
    return _upgrade_exp_obj.getNum();
},
    getTotalRefineExpByLevel: function(refineLevel) {
    var total;
    if (!refineLevel) {
        // source line 213, bytecode pc 24
        (refineLevel = this.getRefineLevel());
    }
    // source line 215, bytecode pc 61
    (total = this._getUpgradeExpCfgObj("refine_upgrade_exp_type", refineLevel).getNumTotal());
    // source line 216, bytecode pc 65
    return total;
},
    getCurRefineLevelExpPer: function() {
    if ((this.getUpgradeRefineExpNeed() == 0)) {
        // source line 222, bytecode pc 20
        return 0;
    }
    // source line 224, bytecode pc 66
    return Math.floor(((this.getRefineExp() / this.getUpgradeRefineExpNeed()) * 100));
},
    getMaxRefineLevel: function() {
    // source line 229, bytecode pc 29
    return this._getUpgradeExpCfgObj("refine_upgrade_exp_type").getMaxLevel();
},
    getTotalRefineExp: function() {
    var total;
    // source line 234, bytecode pc 45
    (total = this._getUpgradeExpCfgObj("refine_upgrade_exp_type", this.getRefineLevel()).getNumTotal());
    // source line 235, bytecode pc 65
    (total = (total + this.getRefineExp()));
    // source line 236, bytecode pc 69
    return total;
},
    getEatedRefineExp: function() {
    var _upgrade_exp_obj;
    // source line 241, bytecode pc 34
    (_upgrade_exp_obj = this._getEatedExpCfgObj("refine_eaten_exp_type", this.getRefineLevel()));
    // source line 242, bytecode pc 49
    return _upgrade_exp_obj.getNum();
},
    setGeneralPkId: function(general_pk_id) {
    // source line 248, bytecode pc 9
    (this.general_pk_id = general_pk_id);
},
    getGeneralPkId: function() {
    // source line 253, bytecode pc 6
    return this.general_pk_id;
},
    isVersion: function() {
    // source line 272, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getBaseDataRef().is_version);
},
    isEquipped: function() {
    // source line 279, bytecode pc 18
    return (this.general_pk_id ? true : false);
},
    isCanBeSold: function() {
    // source line 284, bytecode pc 18
    return (this.general_pk_id ? false : true);
},
    getCurLevelUpgradeCfg: function() {
    // source line 289, bytecode pc 25
    this.error("getCurLevelUpgradeCfg is deprecated", this.name);
    if (!this._curLevelUpgradeCfg) {
        // source line 295, bytecode pc 109
        (this._curLevelUpgradeCfg = xs.Models.EquipmentCfg.createWithBase(this.getGrade(), this.getPosType(), this.getLevel()));
    }
    // source line 299, bytecode pc 189
    this.assert(this._curLevelUpgradeCfg, "_curLevelUpgradeCfg is null", [ this.getGrade(), this.getPosType(), this.getLevel() ]);
    // source line 300, bytecode pc 196
    return this._curLevelUpgradeCfg;
},
    getUpgradeCfgByLevel: function(level) {
    // source line 306, bytecode pc 18
    this.error("this function is deprecated!");
    // source line 310, bytecode pc 25
    return this._cacheUpgradeCfgByLevel;
},
    getEffectValue: function() {
    // source line 328, bytecode pc 81
    return xs.Utils.floorSafe((((this.getEffectValueBase() + ((this.getLevel() - 1) * this.getEffectValueStep())) * (100 + this.getAttrRefineAdd_100Percent())) / 100));
},
    getNextLevelEffectValue: function() {
    // source line 342, bytecode pc 79
    return xs.Utils.floorSafe((((this.getEffectValueBase() + (this.getLevel() * this.getEffectValueStep())) * (100 + this.getAttrRefineAdd_100Percent())) / 100));
},
    getEffectValueBase: function() {
    // source line 347, bytecode pc 39
    return xs.Utils.parseFloatSafe(this.getBaseDataRef().effect_value);
},
    getEffectValueStep: function() {
    // source line 351, bytecode pc 39
    return xs.Utils.parseFloatSafe(this.getBaseDataRef().effect_step);
},
    getPrice: function() {
    // source line 356, bytecode pc 12
    return this._super();
},
    getMeltRefineStoneId: function() {
    var _tag, _level, _melt_obj;
    // source line 360, bytecode pc 8
    (_tag = "refine_eaten_exp_type");
    // source line 361, bytecode pc 24
    (_level = this.getRefineLevel());
    // source line 362, bytecode pc 75
    (_melt_obj = xs.Models.MeltCfg.createWithBase(this.getBaseDataRef()[_tag], _level));
    // source line 363, bytecode pc 90
    return _melt_obj.getMeltID();
},
    getMeltRefineStoneNum: function() {
    var _tag, _level, _melt_obj;
    // source line 367, bytecode pc 8
    (_tag = "refine_eaten_exp_type");
    // source line 368, bytecode pc 24
    (_level = this.getRefineLevel());
    // source line 369, bytecode pc 75
    (_melt_obj = xs.Models.MeltCfg.createWithBase(this.getBaseDataRef()[_tag], _level));
    // source line 370, bytecode pc 101
    return (_melt_obj.getNum() || "0");
},
    getEffectType: function() {
    // source line 374, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getBaseDataRef().equipment_type);
},
    getPosType: function() {
    // source line 379, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getBaseDataRef().equipment_pos);
},
    getAttrNaked: function(attrType) {
    // source line 383, bytecode pc 16
    return this.getAttr(attrType);
},
    getAttrRefineAdd_100Percent: function(refineLevel) {
    var _obj_cfg;
    // source line 395, bytecode pc 65
    (_obj_cfg = xs.Models.UpgradeCfg.RefineGrowType.createWithBase(this.getBaseDataRef().refine_bonus_type, this.getRefineLevel()));
    // source line 398, bytecode pc 80
    return _obj_cfg.getEffectByAttrType_100Percent();
},
    getAttr: function(attrType) {
    var _ret;
    // source line 405, bytecode pc 4
    (_ret = 0);
    // source line 406, bytecode pc 8
    switch (attrType) {
        case xs.Constant_AttrType_Hp:
        case xs.Constant_AttrType_Atk:
        case xs.Constant_AttrType_Def:
        case xs.Constant_AttrType_Int:
        if ((this.getEffectType() === attrType)) {
            // source line 413, bytecode pc 185
            (_ret = this.getEffectValue());
        }
        break;
        case xs.Constant_AttrType_FightPoint:
        // source line 437, bytecode pc 316
        (_ret = xs.Tools.Card.calculateAttrType_FightPoint(this.getAttr(xs.Constant_AttrType_Atk), this.getAttr(xs.Constant_AttrType_Def), this.getAttr(xs.Constant_AttrType_Hp), this.getAttr(xs.Constant_AttrType_Int)));
        break;
        case xs.Constant_AttrType_Miss:
        case xs.Constant_AttrType_Aim:
        case xs.Constant_AttrType_Cri:
        case xs.Constant_AttrType_Tou:
        break;
        default:
        // source line 451, bytecode pc 349
        this.error("getAttr", attrType);
        break;
    }
    // source line 457, bytecode pc 358
    return _ret;
},
    getAttrWithGems: function(attrType) {
    var _ret, _gemsAttr, _gemsIds, i, _gems, _gemsFightPoint;
    // source line 463, bytecode pc 4
    (_ret = 0);
    // source line 464, bytecode pc 8
    switch (attrType) {
        case xs.Constant_AttrType_Hp:
        case xs.Constant_AttrType_Atk:
        case xs.Constant_AttrType_Def:
        case xs.Constant_AttrType_Int:
        if ((this.getEffectType() === attrType)) {
            // source line 470, bytecode pc 185
            (_ret = this.getEffectValue());
        }
        // source line 474, bytecode pc 190
        (_gemsAttr = 0);
        // source line 475, bytecode pc 206
        (_gemsIds = this.getGemsIdsInEquipment());
        // source line 476, bytecode pc 211
        (i = 0);
        while ((i < _gemsIds.length)) {
            // source line 478, bytecode pc 255
            (_gems = xs.Models.Gems.createWithBase(_gemsIds[i]));
            // source line 479, bytecode pc 281
            (_gemsAttr = (_gemsAttr + _gems.getAttrNaked(attrType)));
            // source line 476, bytecode pc 296
            i++;
        }
        // source line 481, bytecode pc 325
        (_ret = (_ret + _gemsAttr));
        break;
        case xs.Constant_AttrType_FightPoint:
        // source line 490, bytecode pc 456
        (_ret = xs.Tools.Card.calculateAttrType_FightPoint(this.getAttr(xs.Constant_AttrType_Atk), this.getAttr(xs.Constant_AttrType_Def), this.getAttr(xs.Constant_AttrType_Hp), this.getAttr(xs.Constant_AttrType_Int)));
        // source line 493, bytecode pc 472
        (_gemsFightPoint = this.getGemsFightPoint());
        // source line 495, bytecode pc 483
        (_ret = (_ret + _gemsFightPoint));
        break;
        case xs.Constant_AttrType_Miss:
        case xs.Constant_AttrType_Aim:
        case xs.Constant_AttrType_Cri:
        case xs.Constant_AttrType_Tou:
        break;
        default:
        // source line 504, bytecode pc 516
        this.error("getAttr", attrType);
        break;
    }
    // source line 510, bytecode pc 525
    return _ret;
},
    getEquipTypeToString: function() {
    var _txt_lab, _effect_type;
    // source line 515, bytecode pc 8
    (_txt_lab = "");
    // source line 516, bytecode pc 24
    (_effect_type = this.getEffectType());
    // source line 517, bytecode pc 28
    switch (_effect_type) {
        case xs.Models.Equipment_Type_Atk:
        // source line 519, bytecode pc 149
        (_txt_lab = xs.Tools.String.createString("filter_attack"));
        break;
        case xs.Models.Equipment_Type_Def:
        // source line 522, bytecode pc 190
        (_txt_lab = xs.Tools.String.createString("auto_name_15"));
        break;
        case xs.Models.Equipment_Type_Hp:
        // source line 525, bytecode pc 231
        (_txt_lab = xs.Tools.String.createString("auto_name_16"));
        break;
        case xs.Models.Equipment_Type_Int:
        // source line 528, bytecode pc 272
        (_txt_lab = xs.Tools.String.createString("auto_name_17"));
        break;
        default:
        // source line 531, bytecode pc 286
        (_txt_lab = "??");
        break;
    }
    // source line 534, bytecode pc 295
    return _txt_lab;
},
    getEquipStyleToString: function() {
    var _txt_lab, _effect_type;
    // source line 538, bytecode pc 8
    (_txt_lab = "");
    // source line 539, bytecode pc 24
    (_effect_type = this.getEffectType());
    // source line 540, bytecode pc 28
    switch (_effect_type) {
        case xs.Models.Equipment_Type_Atk:
        // source line 542, bytecode pc 149
        (_txt_lab = xs.Tools.String.createString("filter_weapon"));
        break;
        case xs.Models.Equipment_Type_Def:
        // source line 545, bytecode pc 190
        (_txt_lab = xs.Tools.String.createString("filter_armor"));
        break;
        case xs.Models.Equipment_Type_Hp:
        // source line 548, bytecode pc 231
        (_txt_lab = xs.Tools.String.createString("filter_mount"));
        break;
        case xs.Models.Equipment_Type_Int:
        // source line 551, bytecode pc 272
        (_txt_lab = xs.Tools.String.createString("filter_kit"));
        break;
        default:
        // source line 554, bytecode pc 286
        (_txt_lab = "??");
        break;
    }
    // source line 557, bytecode pc 295
    return _txt_lab;
},
    getComposePieceNum: function() {
    // source line 562, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getBaseDataRef().compose_need_piece_num);
},
    getPieceDesc: function() {
    var _piece_desc, equipment_name;
    // source line 567, bytecode pc 8
    (_piece_desc = "");
    // source line 568, bytecode pc 56
    (equipment_name = xs.Tools.Ml.createString(this.getBaseDataRef().name));
    // source line 569, bytecode pc 184
    (_piece_desc = (((((xs.Tools.String.createString("auto_name_18") + equipment_name) + xs.Tools.String.createString("auto_name_19")) + this.getBaseDataRef().compose_need_piece_num) + xs.Tools.String.createString("auto_name_20")) + equipment_name));
    // source line 570, bytecode pc 188
    return _piece_desc;
},
    getPiecePrice: function() {
    var _sell_cfg_obj;
    // source line 575, bytecode pc 32
    (_sell_cfg_obj = this._getSellCfgObj("piece_sell_type", xs.Constant_Sell_Default_Level));
    // source line 576, bytecode pc 47
    return _sell_cfg_obj.getNum();
},
    getBoreNum: function() {
    // source line 580, bytecode pc 17
    return this.getBoreList().length;
},
    getGemNum: function() {
    // source line 584, bytecode pc 17
    return this.getGemsIdsInEquipment().length;
},
    createRefineLvToString: function() {
    var str;
    // source line 589, bytecode pc 42
    (str = xs.Tools.String.convNumberString(this.getRefineLevel()));
    // source line 590, bytecode pc 79
    return (str + xs.Tools.String.createString("auto_name_21"));
},
    getMaxLevel: function() {
    var _upgrade_coin_obj;
    // source line 595, bytecode pc 15
    (_upgrade_coin_obj = this._getUpgradeCoinCfgObj());
    // source line 596, bytecode pc 30
    return _upgrade_coin_obj.getMaxLevel();
},
    getNextLevelNeedMoney: function() {
    var _upgrade_coin_obj;
    // source line 600, bytecode pc 15
    (_upgrade_coin_obj = this._getUpgradeCoinCfgObj());
    // source line 601, bytecode pc 30
    return _upgrade_coin_obj.getNextLevelNeed();
},
    createPartView: function(partName) {
    // source line 606, bytecode pc 32
    return xs.Tools.Card.createPartView_Equ(this, partName);
},
    createHeadView_General_Equ_Skill: function() {
    // source line 610, bytecode pc 39
    return xs.Tools.Card.createHeadView_General_Equ_Skill(this, xs.Const_Item_Style_Equ);
},
    createCard: function(objCfg, viewCfg) {
    var _ret;
    // source line 616, bytecode pc 42
    (_ret = xs.Views.Card.Equ.create(objCfg, viewCfg));
    // source line 618, bytecode pc 59
    _ret.reloadData(this);
    // source line 619, bytecode pc 63
    return _ret;
},
    createCard_Detail: function(viewCfg) {
    var _ret;
    // source line 631, bytecode pc 63
    (_ret = xs.Views.Card.Equ.create({ lv: true, fp: true, attr: true }, viewCfg));
    // source line 633, bytecode pc 80
    _ret.reloadData(this);
    // source line 634, bytecode pc 84
    return _ret;
},
    createCard_Strengthen: function(viewCfg) {
    // source line 642, bytecode pc 31
    return this.createCard({ lv: true, attr: true });
},
    createCard_CardExp: function(viewCfg) {
    // source line 653, bytecode pc 37
    return this.createCard({ lv: true, refine_lv: true, refine_attr_per: true });
},
    createIcon_Select: function(viewCfg) {
    var _ret;
    // source line 665, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true, refine_lv: true }, viewCfg));
    // source line 667, bytecode pc 80
    _ret.reloadData(this);
    // source line 668, bytecode pc 84
    return _ret;
},
    createIcon_GradeAndLvAndName: function(viewCfg) {
    var _ret;
    // source line 679, bytecode pc 69
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true, name: true, refine_lv: true }, viewCfg));
    // source line 681, bytecode pc 86
    _ret.reloadData(this);
    // source line 682, bytecode pc 90
    return _ret;
},
    createIcon_GradeAndNameOrLv: function(viewCfg) {
    var _ret;
    // source line 692, bytecode pc 69
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true, refine_lv: true, name: true }, viewCfg));
    // source line 694, bytecode pc 86
    _ret.reloadData(this);
    // source line 695, bytecode pc 90
    return _ret;
},
    createIcon_GradeAndLv: function(viewCfg) {
    var _ret;
    // source line 705, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true, refine_lv: true }, viewCfg));
    // source line 707, bytecode pc 80
    _ret.reloadData(this);
    // source line 708, bytecode pc 84
    return _ret;
},
    createIcon_GradeAndLvBoreGem: function(viewCfg) {
    var _ret;
    // source line 718, bytecode pc 69
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true, refine_lv: true, boreAndGemNum: true }, viewCfg));
    // source line 720, bytecode pc 86
    _ret.reloadData(this);
    // source line 721, bytecode pc 90
    return _ret;
}
}));
// source line 726, bytecode pc 1013
(xs.Models.Equipment.createWithBase = function(id) {
    var card;
    // source line 727, bytecode pc 23
    (card = new xs.Models.Equipment());
    if ((card && card.init())) {
        // source line 729, bytecode pc 70
        card.readBaseData(id);
        // source line 730, bytecode pc 74
        return card;
    }
    // source line 732, bytecode pc 97
    xs.warn("xs.Models.Equipment.createWithBase");
    // source line 733, bytecode pc 99
    return null;
});
// source line 736, bytecode pc 1039
(xs.Models.Equipment.createWithJson = function(json) {
    var card;
    // source line 737, bytecode pc 23
    (card = new xs.Models.Equipment());
    if ((card && card.init())) {
        // source line 739, bytecode pc 70
        card.loadJson(json);
        // source line 740, bytecode pc 74
        return card;
    }
    // source line 742, bytecode pc 97
    xs.warn("xs.Models.Equipment.createWithJson");
    // source line 743, bytecode pc 99
    return null;
});
