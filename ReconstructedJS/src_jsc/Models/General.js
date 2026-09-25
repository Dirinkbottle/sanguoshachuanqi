// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/General.js:1
// source line 1258, bytecode pc 1009
(xs.Models.General = xs.Models.Card.extend({
    name: "xs.Models.General",
    ResType: xs.Constant_ResType_General,
    CfgDataType: xs.Constant_CfgDataType_General,
    names: { level: "general_level", id: "general_id" },
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
    var caches;
    if (!this._super()) {
        // source line 29, bytecode pc 19
        return false;
    }
    // source line 35, bytecode pc 46
    (caches = [ "cacheNaturalSkill", "cacheCurLevelUpgradeCfg" ]);
    // source line 38, bytecode pc 63
    this.registerCaches(caches);
    // source line 40, bytecode pc 71
    (this.talent_point = 0);
    // source line 42, bytecode pc 79
    (this.culture_info = null);
    // source line 43, bytecode pc 87
    (this.ganoderma_num = 0);
    // source line 46, bytecode pc 95
    (this.general_hp_attr = 0);
    // source line 47, bytecode pc 103
    (this.general_attack_attr = 0);
    // source line 48, bytecode pc 111
    (this.general_defense_attr = 0);
    // source line 49, bytecode pc 119
    (this.general_wisdom_attr = 0);
    // source line 51, bytecode pc 127
    (this.breachLevel = 1);
    // source line 53, bytecode pc 135
    (this.general_naturalskill_id = 0);
    // source line 55, bytecode pc 147
    (this.major_pk_id = "");
    // source line 56, bytecode pc 155
    (this.position = 0);
    // source line 61, bytecode pc 163
    (this.m_cultureWords = null);
    // source line 63, bytecode pc 171
    (this._cache_breachLevelMax = null);
    // source line 65, bytecode pc 179
    (this.lieutenant_skill_id = null);
    // source line 67, bytecode pc 187
    (this._fightPointNum = 0);
    // source line 74, bytecode pc 195
    (this.base_hp = 0);
    // source line 75, bytecode pc 203
    (this.base_attack = 0);
    // source line 76, bytecode pc 211
    (this.base_defense = 0);
    // source line 77, bytecode pc 219
    (this.base_wisdom = 0);
    // source line 79, bytecode pc 227
    (this.ls_type = 0);
    // source line 80, bytecode pc 235
    (this.ls_value = 0);
    // source line 81, bytecode pc 243
    (this.evolution_image_status = false);
    // source line 89, bytecode pc 245
    return true;
},
    havaLieutenantAttrPlus: function() {
    if ((this.lieutenant_skill_id && (this.lieutenant_skill_id !== "0"))) {
        // source line 95, bytecode pc 30
        return true;
    }
    // source line 97, bytecode pc 32
    return false;
},
    getLieutenantAttrPlusName: function() {
    var lieutenantSkill;
    // source line 103, bytecode pc 47
    (lieutenantSkill = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_LieutennantAttrPlus, this.lieutenant_skill_id));
    if (lieutenantSkill) {
        // source line 105, bytecode pc 91
        return xs.Tools.String.createString(lieutenantSkill.skill_name);
    } else {
        // source line 107, bytecode pc 102
        return "";
    }
},
    getLieutenantAttrPlusTypes: function() {
    var lieutenantSkill, attrTypes;
    // source line 114, bytecode pc 47
    (lieutenantSkill = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_LieutennantAttrPlus, this.lieutenant_skill_id));
    if (lieutenantSkill) {
        // source line 117, bytecode pc 91
        (attrTypes = { firstAttrType: lieutenantSkill.first_attr_type, secAttrType: lieutenantSkill.second_attr_type });
        // source line 118, bytecode pc 95
        return attrTypes;
    }
    // source line 120, bytecode pc 97
    return null;
},
    getLieutenantAttrPlusEffects: function(bCurBreach) {
    var lieutenantSkill, skillGrowList, skillGrow, effects;
    // source line 132, bytecode pc 47
    (lieutenantSkill = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_LieutennantAttrPlus, this.lieutenant_skill_id));
    // source line 133, bytecode pc 59
    (skillGrowList = lieutenantSkill.skill_grow);
    // source line 134, bytecode pc 64
    (skillGrow = null);
    if (bCurBreach) {
        // source line 136, bytecode pc 98
        (skillGrow = skillGrowList[(this._getBreachLevel() + "")]);
    } else {
        // source line 138, bytecode pc 131
        (skillGrow = skillGrowList[((this._getBreachLevel() + 1) + "")]);
    }
    if (skillGrow) {
        // source line 143, bytecode pc 188
        (effects = {
    breachLevel: skillGrow.insight_level,
    firstAttr: skillGrow.first_attr_value,
    secAttr: skillGrow.second_attr_value
});
        // source line 144, bytecode pc 192
        return effects;
    }
    // source line 146, bytecode pc 194
    return null;
},
    getCurLevelUpgradeCfg: function() {
    // source line 152, bytecode pc 25
    this.error("getCurLevelUpgradeCfg is deprecated", this.name);
    if (!this.cacheCurLevelUpgradeCfg) {
        // source line 154, bytecode pc 96
        (this.cacheCurLevelUpgradeCfg = xs.Models.GeneralExpCfg.createWithBase(this.getGrade(), this.getLevel()));
    }
    // source line 156, bytecode pc 103
    return this.cacheCurLevelUpgradeCfg;
},
    getUpgradeCfgByLevel: function(level) {
    // source line 161, bytecode pc 25
    this.error("getUpgradeCfgByLevel is deprecated", this.name);
    // source line 162, bytecode pc 75
    (this._cacheUpgradeCfgByLevel = xs.Models.GeneralExpCfg.createWithBase(this.getGrade(), level));
    // source line 163, bytecode pc 82
    return this._cacheUpgradeCfgByLevel;
},
    getNaturalSkillPkId: function() {
    // source line 169, bytecode pc 6
    return this.general_naturalskill_id;
},
    getNaturalSkillId: function() {
    var _natural_skill_id;
    // source line 174, bytecode pc 20
    (_natural_skill_id = this.getBaseDataRef().general_naturalskill_id);
    // source line 175, bytecode pc 24
    return _natural_skill_id;
},
    getBreachLevelMax: function() {
    if (!this._cache_breachLevelMax) {
        // source line 180, bytecode pc 50
        (this._cache_breachLevelMax = parseInt(this.getBaseDataRef().insight_max_level));
    }
    // source line 182, bytecode pc 57
    return this._cache_breachLevelMax;
},
    isBreachToMax: function() {
    if ((this.getBreachLevel() >= this.getBreachLevelMax())) {
        // source line 188, bytecode pc 31
        return true;
    }
    // source line 190, bytecode pc 33
    return false;
},
    getGanodermaNum: function() {
    // source line 195, bytecode pc 6
    return this.ganoderma_num;
},
    loadJson: function(json) {
    // source line 220, bytecode pc 32
    xs.assert((json !== undefined), "what??");
    // source line 221, bytecode pc 49
    this._super(json);
    // source line 226, bytecode pc 86
    (this.ganoderma_num = xs.Utils.parseIntSafe(json.ganoderma_num));
    // source line 228, bytecode pc 123
    (this.talent_point = xs.Utils.parseIntSafe(json.talent_point));
    // source line 229, bytecode pc 138
    (this.general_naturalskill_id = json.general_naturalskill_id);
    // source line 232, bytecode pc 180
    (this.culture_info = xs.Models.CultureMedicine.create(json.culture_info));
    // source line 235, bytecode pc 217
    (this.general_hp_attr = xs.Utils.parseIntSafe(json.attr_hp));
    // source line 236, bytecode pc 254
    (this.general_attack_attr = xs.Utils.parseIntSafe(json.attr_attack));
    // source line 237, bytecode pc 291
    (this.general_defense_attr = xs.Utils.parseIntSafe(json.attr_defense));
    // source line 238, bytecode pc 328
    (this.general_wisdom_attr = xs.Utils.parseIntSafe(json.attr_wisdom));
    // source line 240, bytecode pc 365
    (this.base_hp = xs.Utils.parseIntSafe(json.base_hp));
    // source line 241, bytecode pc 402
    (this.base_attack = xs.Utils.parseIntSafe(json.base_attack));
    // source line 242, bytecode pc 439
    (this.base_defense = xs.Utils.parseIntSafe(json.base_defense));
    // source line 243, bytecode pc 476
    (this.base_wisdom = xs.Utils.parseIntSafe(json.base_wisdom));
    // source line 251, bytecode pc 513
    (this.ls_type = xs.Utils.parseIntSafe(json.ls_type));
    // source line 252, bytecode pc 550
    (this.ls_value = xs.Utils.parseFloatSafe(json.ls_value));
    // source line 255, bytecode pc 587
    (this.breachLevel = xs.Utils.parseIntSafe(json.insight_level));
    // source line 257, bytecode pc 602
    (this.major_pk_id = json.major_pk_id);
    // source line 258, bytecode pc 639
    (this.position = xs.Utils.parseIntSafe(json.position));
    // source line 260, bytecode pc 663
    (this.lieutenant_skill_id = this.getBaseDataRef().lieutenant_skill_id);
    if ((this.evolution_image_status != json.evolution_image_status)) {
        if (((this.cacheResInfo === null) || (this.cacheResInfo === undefined))) {
        } else {
            // source line 270, bytecode pc 727
            (this.cacheResInfo = null);
        }
    }
    // source line 274, bytecode pc 749
    (this.evolution_image_status = (json.evolution_image_status || false));
},
    getFates: function() {
    var _fatesCfg, _obj_magicalEqu, _fate_magicalEqu, i, _obj_evolutionInfo, _fate_evolution, j, _fate;
    // source line 286, bytecode pc 11
    (this._fates = []);
    // source line 287, bytecode pc 43
    (_fatesCfg = (this.getBaseDataRef().general_fate_id || []));
    // source line 290, bytecode pc 107
    (_obj_magicalEqu = xs.Profile.GameData.Mgr.getInstance().MagicalEqus.getByGeneralId(this.getId()));
    if (_obj_magicalEqu) {
        // source line 292, bytecode pc 133
        (_fate_magicalEqu = _obj_magicalEqu.getPointEffectFate());
        if (_fate_magicalEqu) {
            // source line 294, bytecode pc 146
            (i = 0);
            while ((i < _fatesCfg.length)) {
                if (!xs.Utils.isEmpty(_fate_magicalEqu[_fatesCfg[i]])) {
                    // source line 297, bytecode pc 210
                    (_fatesCfg[i] = _fate_magicalEqu[_fatesCfg[i]]);
                }
                // source line 294, bytecode pc 224
                (i = (+i + 1));
            }
        }
    }
    // source line 303, bytecode pc 307
    (_obj_evolutionInfo = xs.Profile.GameData.Mgr.getInstance().EvolutionInfos.getByGeneralId(this.getId()));
    if (_obj_evolutionInfo) {
        // source line 306, bytecode pc 327
        (_fate_evolution = _obj_evolutionInfo.fate_ids);
        // source line 307, bytecode pc 332
        (i = 0);
        while ((i < _fate_evolution.length)) {
            if ((_fate_evolution[i].now == 1)) {
                // source line 312, bytecode pc 362
                (j = 0);
                while ((j < _fatesCfg.length)) {
                    if ((_fatesCfg[j] == _fate_evolution[i].left)) {
                        // source line 315, bytecode pc 413
                        (_fatesCfg[j] = _fate_evolution[i].right);
                    }
                    // source line 312, bytecode pc 426
                    (j = (+j + 1));
                }
            } else {
                if ((_fate_evolution[i].now == 0)) {
                    // source line 322, bytecode pc 473
                    (j = 0);
                    while ((j < _fatesCfg.length)) {
                        if ((_fatesCfg[j] == _fate_evolution[i].right)) {
                            // source line 325, bytecode pc 524
                            (_fatesCfg[j] = _fate_evolution[i].left);
                        }
                        // source line 322, bytecode pc 537
                        (j = (+j + 1));
                    }
                }
            }
            // source line 307, bytecode pc 569
            (i = (+i + 1));
        }
    }
    // source line 332, bytecode pc 593
    (i = 0);
    while ((i < _fatesCfg.length)) {
        // source line 333, bytecode pc 637
        (_fate = xs.Models.Fate.createWithBase(_fatesCfg[i]));
        // source line 334, bytecode pc 659
        this._fates.push(_fate);
        // source line 332, bytecode pc 672
        (i = (+i + 1));
    }
    // source line 337, bytecode pc 697
    return this._fates;
},
    isFateConnectWithSkillId: function(skillId) {
    var fates, fate, i;
    // source line 341, bytecode pc 15
    (fates = this.getFates());
    // source line 342, bytecode pc 20
    (fate = null);
    // source line 343, bytecode pc 25
    (i = 0);
    while ((i < fates.length)) {
        // source line 344, bytecode pc 42
        (fate = fates[i]);
        if ((fate.getType() === xs.Models.Fate_Type_Skill)) {
            if (fate.isConnectWithId(skillId)) {
                // source line 347, bytecode pc 102
                return true;
            }
        }
        // source line 343, bytecode pc 115
        (i = (+i + 1));
    }
    // source line 351, bytecode pc 135
    return false;
},
    isFateConnectWithEquipmentId: function(equId) {
    var fates, fate, i;
    // source line 355, bytecode pc 15
    (fates = this.getFates());
    // source line 356, bytecode pc 20
    (fate = null);
    // source line 357, bytecode pc 25
    (i = 0);
    while ((i < fates.length)) {
        // source line 358, bytecode pc 42
        (fate = fates[i]);
        if ((fate.getType() === xs.Models.Fate_Type_Equipment)) {
            if (fate.isConnectWithId(equId)) {
                // source line 361, bytecode pc 102
                return true;
            }
        }
        // source line 357, bytecode pc 115
        (i = (+i + 1));
    }
    // source line 365, bytecode pc 135
    return false;
},
    isFateConnectWithGeneralId: function(generalId) {
    var fates, fate, i;
    // source line 370, bytecode pc 15
    (fates = this.getFates());
    // source line 371, bytecode pc 20
    (fate = null);
    // source line 372, bytecode pc 25
    (i = 0);
    while ((i < fates.length)) {
        // source line 373, bytecode pc 42
        (fate = fates[i]);
        if ((fate.getType() === xs.Models.Fate_Type_General)) {
            if (fate.isConnectWithId(generalId)) {
                // source line 376, bytecode pc 102
                return true;
            }
        }
        // source line 372, bytecode pc 115
        (i = (+i + 1));
    }
    // source line 380, bytecode pc 135
    return false;
},
    setFightPoint: function(fightNum) {
    // source line 383, bytecode pc 9
    (this._fightPointNum = fightNum);
},
    getFightPoint: function() {
    // source line 387, bytecode pc 6
    return this._fightPointNum;
},
    getAttrNaked: function(attrType) {
    var _attr;
    if ((attrType == xs.Constant_AttrType_FightPoint)) {
        if (this.getFightPoint()) {
            // source line 394, bytecode pc 48
            return this.getFightPoint();
        }
    }
    // source line 398, bytecode pc 53
    (_attr = 0);
    // source line 400, bytecode pc 57
    switch (attrType) {
        case xs.Constant_AttrType_Hp:
        if (((this.base_hp == 0) && (this.general_hp_attr == 0))) {
            // source line 404, bytecode pc 266
            (_attr = xs.Utils.parseIntSafe(this._getAttrOriginal(attrType)));
        } else {
            // source line 407, bytecode pc 281
            (_attr = this.base_hp);
        }
        break;
        case xs.Constant_AttrType_Atk:
        if (((this.base_attack == 0) && (this.general_attack_attr == 0))) {
            // source line 412, bytecode pc 355
            (_attr = xs.Utils.parseIntSafe(this._getAttrOriginal(attrType)));
        } else {
            // source line 415, bytecode pc 370
            (_attr = this.base_attack);
        }
        break;
        case xs.Constant_AttrType_Def:
        if (((this.base_defense == 0) && (this.general_defense_attr == 0))) {
            // source line 420, bytecode pc 444
            (_attr = xs.Utils.parseIntSafe(this._getAttrOriginal(attrType)));
        } else {
            // source line 423, bytecode pc 459
            (_attr = this.base_defense);
        }
        break;
        case xs.Constant_AttrType_Int:
        if (((this.base_wisdom == 0) && (this.general_wisdom_attr == 0))) {
            // source line 428, bytecode pc 533
            (_attr = xs.Utils.parseIntSafe(this._getAttrOriginal(attrType)));
        } else {
            // source line 431, bytecode pc 548
            (_attr = this.base_wisdom);
        }
        break;
        case xs.Constant_AttrType_FightPoint:
        // source line 440, bytecode pc 611
        (_attr = xs.Tools.Card.calculateAttrType_FightPoint(this.base_attack, this.base_defense, this.base_hp, this.base_wisdom));
        break;
        case xs.Constant_AttrType_Miss:
        case xs.Constant_AttrType_Aim:
        case xs.Constant_AttrType_Cri:
        case xs.Constant_AttrType_Tou:
        break;
        default:
        // source line 453, bytecode pc 654
        xs.warn("getAttrNaked", ("attrType error:" + attrType));
        // source line 454, bytecode pc 659
        (_attr = 0);
        break;
    }
    // source line 456, bytecode pc 663
    return _attr;
},
    getGeneralStatus: function() {
    // source line 510, bytecode pc 10
    return xs.Constant_GeneralStatus_Surrender;
},
    _getAttrBase: function(attrType) {
    var _ret;
    // source line 516, bytecode pc 4
    (_ret = 0);
    // source line 517, bytecode pc 8
    switch (attrType) {
        case xs.Constant_AttrType_Hp:
        // source line 519, bytecode pc 169
        (_ret = this.getBaseDataRef().general_hp);
        break;
        case xs.Constant_AttrType_Atk:
        // source line 522, bytecode pc 195
        (_ret = this.getBaseDataRef().general_attack);
        break;
        case xs.Constant_AttrType_Def:
        // source line 525, bytecode pc 221
        (_ret = this.getBaseDataRef().general_defense);
        break;
        case xs.Constant_AttrType_Int:
        // source line 528, bytecode pc 247
        (_ret = this.getBaseDataRef().general_wisdom);
        break;
        case xs.Constant_AttrType_FightPoint:
        // source line 531, bytecode pc 273
        (_ret = this.getBaseDataRef().fighting);
        break;
        case xs.Constant_AttrType_Miss:
        // source line 534, bytecode pc 299
        (_ret = this.getBaseDataRef().general_dodge);
        break;
        case xs.Constant_AttrType_Aim:
        // source line 537, bytecode pc 325
        (_ret = this.getBaseDataRef().general_preciseness);
        break;
        case xs.Constant_AttrType_Cri:
        // source line 540, bytecode pc 351
        (_ret = this.getBaseDataRef().general_crit);
        break;
        case xs.Constant_AttrType_Tou:
        // source line 543, bytecode pc 377
        (_ret = this.getBaseDataRef().general_tenacity);
        break;
        default:
        // source line 546, bytecode pc 403
        (_ret = this.getBaseDataRef().general_hp);
        // source line 547, bytecode pc 436
        xs.warn("general._getAttrBase", ("_getAttrBase,attrType error:" + attrType));
        break;
    }
    // source line 549, bytecode pc 462
    return xs.Utils.parseFloatSafe(_ret);
},
    _getAttrStep: function(attrType) {
    var _ret;
    // source line 556, bytecode pc 4
    (_ret = 0);
    // source line 558, bytecode pc 8
    switch (attrType) {
        case xs.Constant_AttrType_Hp:
        // source line 560, bytecode pc 169
        (_ret = this.getBaseDataRef().general_hp_step);
        break;
        case xs.Constant_AttrType_Atk:
        // source line 563, bytecode pc 195
        (_ret = this.getBaseDataRef().general_attack_step);
        break;
        case xs.Constant_AttrType_Def:
        // source line 566, bytecode pc 221
        (_ret = this.getBaseDataRef().general_defense_step);
        break;
        case xs.Constant_AttrType_Int:
        // source line 569, bytecode pc 247
        (_ret = this.getBaseDataRef().general_wisdom_step);
        break;
        case xs.Constant_AttrType_FightPoint:
        // source line 572, bytecode pc 273
        (_ret = this.getBaseDataRef().fighting_step);
        break;
        case xs.Constant_AttrType_Miss:
        // source line 575, bytecode pc 280
        return 0;
        case xs.Constant_AttrType_Aim:
        // source line 577, bytecode pc 282
        return 0;
        case xs.Constant_AttrType_Cri:
        // source line 579, bytecode pc 284
        return 0;
        case xs.Constant_AttrType_Tou:
        // source line 581, bytecode pc 286
        return 0;
        default:
        // source line 583, bytecode pc 313
        xs.error(("_getAttrStep,attrType error:" + attrType));
        // source line 584, bytecode pc 315
        return 0;
    }
    // source line 587, bytecode pc 341
    return xs.Utils.parseFloatSafe(_ret);
},
    _getAttrOriginal_onlyLevel: function(attrType) {
    var _base, _step;
    // source line 593, bytecode pc 19
    (_base = this._getAttrBase(attrType));
    // source line 594, bytecode pc 39
    (_step = this._getAttrStep(attrType));
    // source line 595, bytecode pc 65
    (_base = (_base + ((this.getLevel() - 1) * _step)));
    // source line 597, bytecode pc 69
    return _base;
},
    _getAttrOriginal: function(attrType) {
    var _ret, _value_level, _level_breach, _obj_cfg, _val_magicalEqu;
    if ((attrType === xs.Constant_AttrType_FightPoint)) {
        // source line 610, bytecode pc 148
        (_ret = xs.Tools.Card.calculateAttrType_FightPoint(this._getAttrOriginal(xs.Constant_AttrType_Atk), this._getAttrOriginal(xs.Constant_AttrType_Def), this._getAttrOriginal(xs.Constant_AttrType_Hp), this._getAttrOriginal(xs.Constant_AttrType_Int)));
    } else {
        // source line 615, bytecode pc 173
        (_value_level = this._getAttrOriginal_onlyLevel(attrType));
        // source line 617, bytecode pc 189
        (_level_breach = this._getBreachLevel());
        // source line 622, bytecode pc 241
        (_obj_cfg = xs.Models.InsightGrowType.createWithBase(this.getBaseDataRef().insight_grow_type, _level_breach));
        // source line 624, bytecode pc 246
        (_val_magicalEqu = 0);
        // source line 635, bytecode pc 283
        (_ret = ((_value_level + ((_value_level * _obj_cfg.getEffectByAttrType_100Percent(attrType)) / 100)) + _val_magicalEqu));
    }
    // source line 638, bytecode pc 287
    return _ret;
},
    getAttrAddValueByInsightLevel: function(lvInsight, typeAttr) {
    var _attrValueOri, _obj_cfg;
    // source line 647, bytecode pc 19
    (_attrValueOri = this._getAttrOriginal_onlyLevel(typeAttr));
    // source line 650, bytecode pc 71
    (_obj_cfg = xs.Models.InsightGrowType.createWithBase(this.getBaseDataRef().insight_grow_type, lvInsight));
    // source line 653, bytecode pc 97
    return ((_attrValueOri * _obj_cfg.getEffectByAttrType_100Percent(typeAttr)) / 100);
},
    getPropertyValueForLegacy: function(typeAttr) {
    // source line 660, bytecode pc 52
    return (Math.floor((this.getAttrNaked(typeAttr) - this._getAttrOriginal(typeAttr))) + 1);
},
    getAdditionalSkills: function() {
    var _general_skill, _arrRet, i, _obj_skill;
    // source line 666, bytecode pc 15
    (_general_skill = this.getAllSkills());
    // source line 668, bytecode pc 24
    (_arrRet = []);
    // source line 669, bytecode pc 29
    (i = 0);
    while ((i < _general_skill.length)) {
        // source line 670, bytecode pc 46
        (_obj_skill = _general_skill[i]);
        if ((1 == _obj_skill.getSkillPos())) {
        } else {
            // source line 674, bytecode pc 91
            _arrRet.push(_obj_skill);
        }
        // source line 669, bytecode pc 104
        (i = (+i + 1));
    }
    // source line 679, bytecode pc 126
    return _arrRet;
},
    getNaturalSkillType: function() {
    var _skillModel;
    // source line 683, bytecode pc 42
    (_skillModel = xs.Models.Skill.createWithBase(this.getNaturalSkillId()));
    // source line 684, bytecode pc 57
    return _skillModel.getSkillType();
},
    getNaturalSkillTypeToString: function() {
    var _skillModel;
    // source line 688, bytecode pc 42
    (_skillModel = xs.Models.Skill.createWithBase(this.getNaturalSkillId()));
    // source line 689, bytecode pc 57
    return _skillModel.getSkillTypeToString();
},
    createNaturalSkillTypeIcon: function() {
    var _skillModel;
    // source line 693, bytecode pc 42
    (_skillModel = xs.Models.Skill.createWithBase(this.getNaturalSkillId()));
    // source line 694, bytecode pc 57
    return _skillModel.createSkillTypeIcon();
},
    getVoiceFileName: function() {
    // source line 698, bytecode pc 17
    return this.getBaseDataRef().voice_file;
},
    playAudioEffect: function() {
    if (((this.getVoiceFileName() === "") || ((this.getVoiceFileName() === null) || (this.getVoiceFileName() === undefined)))) {
    } else {
        // source line 706, bytecode pc 118
        xs.audio.playEffectByFile((("Voice/" + this.getVoiceFileName()) + ".mp3"));
    }
},
    getEatedProExp: function() {
    // source line 712, bytecode pc 18
    this.error("getEatedProExp cannot use at general Model");
},
    getProExp: function() {
    // source line 717, bytecode pc 20
    this.assert(false, "the function is deprecated");
    // source line 718, bytecode pc 60
    return xs.Utils.parseIntSafe(this.getBaseDataRef().general_pro_exp);
},
    getProCombatExp: function() {
    var _upgrade_exp_obj;
    // source line 723, bytecode pc 32
    (_upgrade_exp_obj = this._getEatedExpCfgObj("eated_exp_type", xs.Constant_Eated_Default_Level));
    // source line 724, bytecode pc 47
    return _upgrade_exp_obj.getNum();
},
    getProLibateExp: function() {
    // source line 730, bytecode pc 12
    return this.getTotalExp();
},
    getProLibateGanoderma: function() {
    // source line 735, bytecode pc 12
    return this.getGanodermaNum();
},
    getProLibateSoulNum: function() {
    // source line 740, bytecode pc 12
    return this.getCurBreachTotalUsedSoulNum();
},
    getNextBreachNeedSoulNum: function() {
    var _upgrade_exp_obj;
    if (!this.isBreachToMax()) {
        // source line 746, bytecode pc 52
        (_upgrade_exp_obj = this._getUpgradeExpCfgObj("insight_upgrade_exp_type", this._getBreachLevel()));
        // source line 747, bytecode pc 67
        return _upgrade_exp_obj.getNum();
    }
    // source line 749, bytecode pc 69
    return 0;
},
    getCurBreachTotalUsedSoulNum: function() {
    var _upgrade_exp_obj;
    if (!this.isBreachToMax()) {
        // source line 755, bytecode pc 52
        (_upgrade_exp_obj = this._getUpgradeExpCfgObj("insight_upgrade_exp_type", this._getBreachLevel()));
        // source line 756, bytecode pc 67
        return _upgrade_exp_obj.getNumTotal();
    }
    // source line 758, bytecode pc 69
    return 0;
},
    getBreachLevelUpgradeByGeneralPkId: function(num, obj_general) {
    if ((obj_general.getGrade() === this.getGrade())) {
        if ((this.getBreachLevel() > obj_general.getBreachLevel())) {
            // source line 768, bytecode pc 76
            return this.getBreachLevel();
        } else {
            // source line 770, bytecode pc 145
            return ((obj_general.getBreachLevel() > this.getBreachLevelMax()) ? this.getBreachLevelMax() : obj_general.getBreachLevel());
        }
    } else {
        // source line 773, bytecode pc 163
        return this.getBreachLevel();
    }
},
    getMaxBranchLevel: function() {
    // source line 779, bytecode pc 34
    return (parseInt(this.getBaseDataRef().insight_max_level) + 1);
},
    _getBreachLevelUpgradeBySoulNum: function(num) {
    var max_level, _now_num, level, _next_num;
    // source line 785, bytecode pc 15
    (max_level = this.getMaxBranchLevel());
    // source line 787, bytecode pc 50
    (_now_num = (this.getCurBreachTotalUsedSoulNum() + parseInt(num)));
    // source line 788, bytecode pc 66
    (level = this._getBreachLevel());
    // source line 789, bytecode pc 71
    (_next_num = 0);
    do {
        // source line 791, bytecode pc 83
        (level = (level + 1));
        // source line 792, bytecode pc 120
        (_next_num = this._getUpgradeExpCfgObj("insight_upgrade_exp_type", level).getNumTotal());
    } while (((_now_num >= _next_num) && (level <= max_level)));
    // source line 795, bytecode pc 151
    return (level - 1);
},
    getLevelUpgradeByExp: function(exp) {
    var _now_total_exp, level, _upgrade_exp_obj, _next_total_exp, m_maxLevel;
    // source line 801, bytecode pc 34
    (_now_total_exp = (this.getTotalExp() + parseInt(exp)));
    // source line 802, bytecode pc 52
    (level = (this.getLevel() + 1));
    // source line 803, bytecode pc 74
    (_upgrade_exp_obj = this._getUpgradeExpCfgObj(null, level));
    // source line 804, bytecode pc 92
    (_next_total_exp = _upgrade_exp_obj.getNumTotal());
    // source line 805, bytecode pc 157
    (m_maxLevel = (xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel() * 4));
    while ((_now_total_exp > _next_total_exp)) {
        if ((level > m_maxLevel)) {
            break;
        }
        // source line 809, bytecode pc 207
        xs.log_zhz("level", level);
        // source line 810, bytecode pc 216
        (level = (level + 1));
        // source line 811, bytecode pc 249
        (_next_total_exp = this._getUpgradeExpCfgObj(null, level).getNumTotal());
        if ((_next_total_exp == 0)) {
            // source line 814, bytecode pc 268
            (level = (level - 1));
            break;
        }
    }
    // source line 819, bytecode pc 314
    return (((level - 1) > m_maxLevel) ? m_maxLevel : (level - 1));
},
    getReincarnateNum: function() {
    // source line 824, bytecode pc 17
    return this.getBaseDataRef().reincarnate_num;
},
    getObrit: function() {
    // source line 829, bytecode pc 17
    return this.getBaseDataRef().general_orbit;
},
    setSide: function(side) {
    // source line 836, bytecode pc 9
    (this.side = side);
},
    getAlchemyInfo: function() {
    // source line 841, bytecode pc 6
    return this.culture_info;
},
    getDevelopWords: function() {
    if (this.getBaseDataRef().culture_desc) {
        // source line 847, bytecode pc 66
        return xs.Tools.Ml.createString(this.getBaseDataRef().culture_desc);
    }
    // source line 849, bytecode pc 72
    return "";
},
    createCard_Grade: function(viewCfg) {
    var _ret;
    // source line 854, bytecode pc 51
    (_ret = xs.Views.Card.General.create({ grade: true }, viewCfg));
    // source line 856, bytecode pc 68
    _ret.reloadData(this);
    // source line 858, bytecode pc 72
    return _ret;
},
    createCard_FightSkin: function(viewCfg) {
    var _ret;
    if ((this.side === 0)) {
        // source line 866, bytecode pc 64
        (_ret = xs.Views.Card.General.create({ hp: true }, viewCfg));
    } else {
        // source line 869, bytecode pc 127
        (_ret = xs.Views.Card.General.create({ hp: true, side: 1 }, viewCfg));
    }
    // source line 871, bytecode pc 144
    _ret.reloadData(this);
    // source line 872, bytecode pc 148
    return _ret;
},
    createCard_Fight: function(viewCfg) {
    var _viewCfg, _ret;
    // source line 878, bytecode pc 37
    (_viewCfg = (viewCfg || xs.Cfg.Scene.FightScene.layout_normal));
    // source line 880, bytecode pc 78
    (_ret = xs.Views.Card.Fight.create(this, _viewCfg));
    // source line 881, bytecode pc 99
    _ret.playAni("ani_idle");
    // source line 883, bytecode pc 103
    return _ret;
},
    createIcon_Fight: function(viewCfg) {
    var _ret;
    // source line 896, bytecode pc 57
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, hp: true }, viewCfg));
    // source line 899, bytecode pc 74
    _ret.reloadData(this);
    // source line 901, bytecode pc 78
    return _ret;
},
    createIcon_Select: function(viewCfg) {
    var _ret;
    // source line 911, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true, inteam: true }, viewCfg));
    // source line 913, bytecode pc 80
    _ret.reloadData(this);
    // source line 914, bytecode pc 84
    return _ret;
},
    createIcon_CombatSelect: function(viewCfg) {
    var _ret;
    // source line 921, bytecode pc 15
    (_ret = this.createIcon_GradeAndName());
    // source line 923, bytecode pc 19
    return _ret;
},
    createIcon_Grade: function(viewCfg) {
    var _ret;
    // source line 931, bytecode pc 51
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true }, viewCfg));
    // source line 934, bytecode pc 68
    _ret.reloadData(this);
    // source line 936, bytecode pc 72
    return _ret;
},
    createIcon_TeamBuild: function(viewCfg) {
    var _ret;
    // source line 948, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true, idx: true }, viewCfg));
    // source line 951, bytecode pc 80
    _ret.reloadData(this);
    // source line 953, bytecode pc 84
    return _ret;
},
    setStatus: function(status) {
    // source line 959, bytecode pc 9
    (this.status = status);
},
    getStatus: function() {
    // source line 965, bytecode pc 6
    return this.status;
},
    createHeadViewWithStatus: function(viewCfg) {
    var status, _head, _viewCfg;
    // source line 972, bytecode pc 15
    (status = this.getStatus());
    if ((status === xs.Constant_GeneralStatus_Have)) {
        // source line 975, bytecode pc 54
        (_head = this.createHeadView(viewCfg));
        // source line 976, bytecode pc 58
        return _head;
    } else {
        if ((status === xs.Constant_GeneralStatus_NotHave)) {
            // source line 979, bytecode pc 111
            (_viewCfg = xs.Utils.clone(viewCfg));
            // source line 980, bytecode pc 122
            (_viewCfg.opacity = 100);
            // source line 981, bytecode pc 142
            (_head = this.createHeadView(_viewCfg));
            // source line 982, bytecode pc 146
            return _head;
        } else {
            if ((status === xs.Constant_GeneralStatus_Surrender)) {
                // source line 985, bytecode pc 190
                (_head = this.createHeadView(_viewCfg));
                // source line 987, bytecode pc 194
                return _head;
            } else {
                // source line 990, bytecode pc 222
                this.error("status error", status);
            }
        }
    }
},
    createHeadBtnWithStatus: function(funcOnClick, viewCfg) {
    var headView, _ret;
    // source line 997, bytecode pc 22
    this.assert(funcOnClick, "need funcOnClick");
    // source line 998, bytecode pc 42
    (headView = this.createHeadViewWithStatus(viewCfg));
    // source line 999, bytecode pc 76
    (_ret = xs.Views.Btn.createInvisibleWithChild(headView));
    // source line 1000, bytecode pc 88
    (_ret.headView = headView);
    // source line 1002, bytecode pc 107
    _ret.setOnClickCallBack(funcOnClick);
    // source line 1004, bytecode pc 111
    return _ret;
},
    createPartView: function(partName) {
    // source line 1009, bytecode pc 32
    return xs.Tools.Card.createPartView_General(this, partName);
},
    createHeadView_General_Equ_Skill: function() {
    // source line 1013, bytecode pc 39
    return xs.Tools.Card.createHeadView_General_Equ_Skill(this, xs.Const_Item_Style_General);
},
    checkAbleToBreach: function() {
    var nextBreachSoulNum, _rs, _model_generalsoul;
    // source line 1021, bytecode pc 15
    (nextBreachSoulNum = this.getNextBreachNeedSoulNum());
    // source line 1023, bytecode pc 79
    (_rs = xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getById(this.getId()));
    if (xs.Utils.isEmpty(_rs)) {
        // source line 1026, bytecode pc 111
        return false;
    }
    // source line 1029, bytecode pc 120
    (_model_generalsoul = _rs[0]);
    if ((_model_generalsoul && (_model_generalsoul.getNum() >= nextBreachSoulNum))) {
        // source line 1034, bytecode pc 154
        return true;
    }
    // source line 1036, bytecode pc 156
    return false;
},
    getBreachLevel: function() {
    // source line 1041, bytecode pc 25
    return this._processBreachLevel(this._getBreachLevel());
},
    getBreachStar: function() {
    var node, _breachLevelMax, i, starBg;
    // source line 1045, bytecode pc 24
    (node = cc.Node.create());
    if ((this.getBreachLevel() === 0)) {
        // source line 1047, bytecode pc 47
        return node;
    }
    // source line 1063, bytecode pc 63
    (_breachLevelMax = this.getBreachLevelMax());
    // source line 1064, bytecode pc 68
    (i = 1);
    while ((i <= _breachLevelMax)) {
        // source line 1065, bytecode pc 79
        (starBg = null);
        if ((i > this.getBreachLevel())) {
            // source line 1067, bytecode pc 142
            (starBg = xs.Factorys.Sprite.create("Cmn01_Star_bg", "Cmn01"));
        } else {
            // source line 1069, bytecode pc 189
            (starBg = xs.Factorys.Sprite.create("Cmn01_Dungeon_GradeStar", "Cmn01"));
            // source line 1070, bytecode pc 210
            starBg.setScale(0.75);
        }
        // source line 1073, bytecode pc 306
        xs.Utils.Node.attachNodes(node, starBg, { desc: "lb", offset: cc.p((0 - ((_breachLevelMax - i) * 32)), 0), sc: true }, null);
        // source line 1064, bytecode pc 320
        (i = (+i + 1));
    }
    // source line 1075, bytecode pc 338
    return node;
},
    _processBreachLevel: function(num) {
    // source line 1080, bytecode pc 5
    return (num - 1);
},
    _getBreachLevel: function() {
    // source line 1085, bytecode pc 28
    return xs.Utils.parseIntSafe(this.breachLevel);
},
    getTalentPoint: function() {
    // source line 1103, bytecode pc 6
    return this.talent_point;
},
    isSkillEmptyAtIndex: function(index) {
    var i, gSkill;
    // source line 1111, bytecode pc 18
    this.error("isSkillEmptyAtIndex ");
    // source line 1112, bytecode pc 23
    (i = 0);
    while ((i < this.general_skills.length)) {
        // source line 1113, bytecode pc 43
        (gSkill = this.general_skills[i]);
        if (((index + "") === gSkill.skill_position)) {
            // source line 1115, bytecode pc 68
            return false;
        }
        // source line 1112, bytecode pc 81
        (i = (+i + 1));
    }
    // source line 1118, bytecode pc 104
    return true;
},
    createCard_Toast: function(viewCfg) {
    var _ret;
    // source line 1131, bytecode pc 63
    (_ret = xs.Views.Card.General.create({ lv: true, sell: true, type: true }, viewCfg));
    // source line 1133, bytecode pc 80
    _ret.reloadData(this);
    // source line 1135, bytecode pc 84
    return _ret;
},
    createCard_General: function(viewCfg) {
    var _ret;
    // source line 1147, bytecode pc 63
    (_ret = xs.Views.Card.General.create({ lv: true, hint: true, type: true }, viewCfg));
    // source line 1149, bytecode pc 80
    _ret.reloadData(this);
    // source line 1151, bytecode pc 84
    return _ret;
},
    createCard_GeneralLvAndType: function(viewCfg) {
    var _ret;
    // source line 1160, bytecode pc 57
    (_ret = xs.Views.Card.General.create({ lv: true, type: true }, viewCfg));
    // source line 1162, bytecode pc 74
    _ret.reloadData(this);
    // source line 1164, bytecode pc 78
    return _ret;
},
    createCard_Detail: function(viewCfg) {
    var _ret;
    // source line 1177, bytecode pc 63
    (_ret = xs.Views.Card.General.create({ lv: true, fp: true, type: true }, viewCfg));
    // source line 1179, bytecode pc 80
    _ret.reloadData(this);
    // source line 1181, bytecode pc 84
    return _ret;
},
    createCard_Chapter: function(viewCfg) {
    var _ret;
    // source line 1192, bytecode pc 45
    (_ret = xs.Views.Card.General.create({}, viewCfg));
    // source line 1194, bytecode pc 62
    _ret.reloadData(this);
    // source line 1196, bytecode pc 66
    return _ret;
},
    isLieutenant: function() {
    // source line 1201, bytecode pc 40
    return (xs.Utils.isEmpty(this.major_pk_id) ? false : true);
},
    getMajorPkId: function() {
    // source line 1206, bytecode pc 45
    return (xs.Utils.isEmpty(this.major_pk_id) ? null : this.major_pk_id);
},
    getLieutenantPosition: function() {
    // source line 1211, bytecode pc 45
    return (xs.Utils.isEmpty(this.position) ? null : this.position);
},
    initDisplayProperty: function() {
    // source line 1215, bytecode pc 23
    (this.lieutenant_skill_id = this.getBaseDataRef().lieutenant_skill_id);
},
    isVersion: function() {
    // source line 1220, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getBaseDataRef().is_version);
},
    isCanAwaked: function() {
    // source line 1224, bytecode pc 49
    return xs.Profile.GameData.Mgr.getInstance().EvolutionInfos.checkCanAwakeByGeneral(this);
},
    getRes: function() {
    var _resId, evolutionData, evoResId;
    if (((this.cacheResInfo === null) || (this.cacheResInfo === undefined))) {
        // source line 1230, bytecode pc 51
        (_resId = this.getBaseDataRef().resource_id);
        if (this.isNewRes()) {
            // source line 1233, bytecode pc 132
            (evolutionData = xs.Profile.GameData.Mgr.getInstance().EvolutionInfos.getByGeneralId(this.getId()));
            if (evolutionData) {
                if (evolutionData.cfgInfo) {
                    // source line 1238, bytecode pc 170
                    (evoResId = evolutionData.cfgInfo.resource_id);
                    if (evoResId) {
                        // source line 1241, bytecode pc 185
                        (_resId = evoResId);
                    }
                }
            }
        }
        // source line 1248, bytecode pc 223
        this.assert(_resId, "_resId error", this, this.getBaseDataRef());
        // source line 1249, bytecode pc 249
        this.assert(this.ResType, "need this.ResType");
        // source line 1250, bytecode pc 293
        (this.cacheResInfo = xs.Models.Resource.createWithBase(_resId, this.ResType));
    }
    // source line 1253, bytecode pc 300
    return this.cacheResInfo;
},
    isNewRes: function() {
    // source line 1256, bytecode pc 6
    return this.evolution_image_status;
},
    isAwaked: function() {
    // source line 1261, bytecode pc 60
    return xs.Profile.GameData.Mgr.getInstance().EvolutionInfos.checkAwakedByGeneralId(this.getId());
}
}));
// source line 1265, bytecode pc 1035
(xs.Models.General.createWithBase = function(id) {
    var card;
    // source line 1266, bytecode pc 23
    (card = new xs.Models.General());
    if ((card && card.init())) {
        // source line 1268, bytecode pc 70
        card.readBaseData(id);
        // source line 1269, bytecode pc 85
        card.initDisplayProperty();
        // source line 1270, bytecode pc 89
        return card;
    }
    // source line 1272, bytecode pc 114
    xs.assert(false, "xs.Models.General.createWithBase failed");
    // source line 1273, bytecode pc 116
    return null;
});
// source line 1276, bytecode pc 1061
(xs.Models.General.createWithJson = function(data) {
    var card;
    // source line 1278, bytecode pc 23
    (card = new xs.Models.General());
    if ((card && card.init())) {
        // source line 1281, bytecode pc 70
        card.loadJson(data);
        // source line 1282, bytecode pc 74
        return card;
    }
    // source line 1284, bytecode pc 99
    xs.assert(false, "xs.Models.General.createWithJson failed");
    // source line 1285, bytecode pc 101
    return null;
});
