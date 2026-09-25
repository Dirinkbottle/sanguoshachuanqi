// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Skill.js:1
// source line 11, bytecode pc 25
(xs.Models.Skill_Type_passive = xs.Constant_Skill_Type_Passive);
// source line 12, bytecode pc 51
(xs.Models.Skill_Type_burst = xs.Constant_Skill_Type_burst);
// source line 13, bytecode pc 77
(xs.Models.Skill_Type_attack = xs.Constant_Skill_Type_attack);
// source line 14, bytecode pc 103
(xs.Models.Skill_Type_blood = xs.Constant_Skill_Type_blood);
// source line 15, bytecode pc 129
(xs.Models.Skill_Type_none = xs.Constant_Skill_Type_None);
// source line 669, bytecode pc 739
(xs.Models.Skill = (xs.Models.Skill || xs.Models.Card.extend({
    name: "xs.Models.Skill",
    CfgDataType: xs.Constant_CfgDataType_Skill,
    ResType: xs.Constant_ResType_Skill,
    init: function() {
    var caches;
    if (!this._super()) {
        // source line 35, bytecode pc 19
        return false;
    }
    // source line 39, bytecode pc 27
    (this.general_pk_id = 0);
    // source line 41, bytecode pc 35
    (this.is_natural = false);
    // source line 43, bytecode pc 43
    (this.pos = 0);
    // source line 45, bytecode pc 51
    (this.exp = 0);
    // source line 48, bytecode pc 59
    (this.bCanFit = false);
    // source line 51, bytecode pc 67
    (this.extra_level = 0);
    // source line 53, bytecode pc 75
    (this.advanced_level = 0);
    // source line 60, bytecode pc 129
    (caches = [
    "_curLevelUpgradeCfg",
    "_fightPoint",
    "_cacheUpgradeCfgByLevel",
    "cachePassiveEffect",
    "_descString"
]);
    // source line 63, bytecode pc 146
    this.registerCaches(caches);
    // source line 65, bytecode pc 148
    return true;
},
    loadJson: function(json) {
    // source line 71, bytecode pc 16
    this._super(json);
    // source line 73, bytecode pc 38
    this.setGeneralPkId(json.general_pk_id);
    // source line 74, bytecode pc 60
    this.setIsNatural(json.is_natural);
    // source line 75, bytecode pc 82
    this.setSkillPos(json.pos);
    // source line 76, bytecode pc 95
    this.setCanFit();
    // source line 78, bytecode pc 117
    (this.extra_level = (json.extra_level || 0));
    // source line 79, bytecode pc 153
    (json.advanced_level && this.setAdvancedLevel(json.advanced_level));
    // source line 99, bytecode pc 175
    this.setExp(json.exp);
},
    setExp: function(exp) {
    // source line 103, bytecode pc 31
    (this.exp = xs.Utils.parseFloatSafe(exp));
},
    setIsNatural: function(is_natural) {
    // source line 108, bytecode pc 9
    (this.is_natural = is_natural);
},
    setGeneralPkId: function(general_pk_id) {
    // source line 113, bytecode pc 9
    (this.general_pk_id = general_pk_id);
},
    setSkillPos: function(pos) {
    // source line 118, bytecode pc 9
    (this.pos = pos);
},
    getSkillPos: function() {
    // source line 123, bytecode pc 6
    return this.pos;
},
    getGeneralPkId: function() {
    // source line 128, bytecode pc 6
    return this.general_pk_id;
},
    setCanFit: function() {
    var skillCfg;
    // source line 134, bytecode pc 53
    (skillCfg = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Skill, this.getId()));
    if ((skillCfg.can_fit === "1")) {
        // source line 137, bytecode pc 80
        (this.bCanFit = true);
    } else {
        // source line 139, bytecode pc 93
        (this.bCanFit = false);
    }
},
    getCanFit: function() {
    // source line 144, bytecode pc 6
    return this.bCanFit;
},
    isInborn: function() {
    if ((true === this.is_natural)) {
        // source line 164, bytecode pc 14
        return true;
    }
    // source line 166, bytecode pc 16
    return false;
},
    getAttrNaked: function(attrType) {
    var _ret;
    // source line 173, bytecode pc 4
    (_ret = 0);
    // source line 174, bytecode pc 8
    switch (attrType) {
        case xs.Constant_AttrType_Hp:
        case xs.Constant_AttrType_Atk:
        case xs.Constant_AttrType_Def:
        case xs.Constant_AttrType_Int:
        break;
        case xs.Constant_AttrType_FightPoint:
        // source line 181, bytecode pc 169
        (_ret = this._getFightPoint());
        break;
        case xs.Constant_AttrType_Miss:
        case xs.Constant_AttrType_Aim:
        case xs.Constant_AttrType_Cri:
        case xs.Constant_AttrType_Tou:
        break;
        default:
        // source line 189, bytecode pc 202
        this.error("getAttr", attrType);
        break;
    }
    // source line 193, bytecode pc 211
    return _ret;
},
    isUpgradeMaterialFor: function(skillModel) {
    var _ret;
    // source line 203, bytecode pc 4
    (_ret = true);
    if ((skillModel.getPkId() === this.getPkId())) {
        // source line 206, bytecode pc 41
        (_ret = false);
    } else {
        if (this.isOnGeneral()) {
            // source line 208, bytecode pc 68
            (_ret = false);
        }
    }
    // source line 211, bytecode pc 72
    return _ret;
},
    isOnGeneral: function() {
    if (this.getGeneralPkId()) {
        // source line 218, bytecode pc 18
        return true;
    }
    // source line 220, bytecode pc 20
    return false;
},
    getCurLevelUpgradeCfg: function() {
    // source line 225, bytecode pc 25
    this.error("getCurLevelUpgradeCfg is deprecated", this.name);
    if (!this._curLevelUpgradeCfg) {
        // source line 227, bytecode pc 96
        (this._curLevelUpgradeCfg = xs.Models.SkillExpCfg.createWithBase(this.getGrade(), this.getLevel()));
    }
    // source line 229, bytecode pc 103
    return this._curLevelUpgradeCfg;
},
    getUpgradeCfgByLevel: function(level) {
    // source line 234, bytecode pc 25
    this.error("getUpgradeCfgByLevel is deprecated", this.name);
    // source line 236, bytecode pc 75
    (this._cacheUpgradeCfgByLevel = xs.Models.SkillExpCfg.createWithBase(this.getGrade(), level));
    // source line 238, bytecode pc 82
    return this._cacheUpgradeCfgByLevel;
},
    isMaxLv: function() {
    // source line 243, bytecode pc 12
    return this._super();
},
    getSkillType: function() {
    // source line 256, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getBaseDataRef().skill_type);
},
    getSkillTypeToString: function() {
    var str;
    // source line 262, bytecode pc 8
    (str = "");
    // source line 263, bytecode pc 21
    switch (this.getSkillType()) {
        case xs.Models.Skill_Type_blood:
        // source line 267, bytecode pc 142
        (str = xs.Tools.String.createString("filter_blood"));
        break;
        case xs.Models.Skill_Type_burst:
        // source line 272, bytecode pc 183
        (str = xs.Tools.String.createString("filter_burst"));
        break;
        case xs.Models.Skill_Type_attack:
        // source line 277, bytecode pc 224
        (str = xs.Tools.String.createString("filter_attack"));
        break;
        case xs.Models.Skill_Type_passive:
        // source line 282, bytecode pc 265
        (str = xs.Tools.String.createString("filter_passive"));
        break;
        default:
        // source line 287, bytecode pc 325
        xs.warn("getSkillType", ((this.getSkillType() + ":") + this.getId()));
        if (!xs.release) {
            // source line 289, bytecode pc 377
            (str = xs.Tools.String.createString("auto_name_35"));
        }
        break;
    }
    // source line 294, bytecode pc 386
    return str;
},
    createSkillTypeIcon: function() {
    var _type, sp;
    // source line 299, bytecode pc 4
    (_type = 0);
    // source line 300, bytecode pc 17
    switch (this.getSkillType()) {
        case xs.Models.Skill_Type_blood:
        // source line 304, bytecode pc 108
        (_type = 3);
        break;
        case xs.Models.Skill_Type_burst:
        // source line 309, bytecode pc 119
        (_type = 2);
        break;
        case xs.Models.Skill_Type_attack:
        // source line 314, bytecode pc 129
        (_type = 1);
        break;
        case xs.Models.Skill_Type_passive:
        // source line 319, bytecode pc 140
        (_type = 4);
        break;
        default:
        // source line 324, bytecode pc 200
        xs.warn("getSkillType", ((this.getSkillType() + ":") + this.getId()));
        break;
    }
    // source line 328, bytecode pc 260
    (sp = xs.Factorys.Sprite.create("Cmn02_icon_skill_type", "Cmn02", [ _type ]));
    // source line 329, bytecode pc 264
    return sp;
},
    getSkillMajorProperty: function() {
    // source line 333, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getBaseDataRef().major_property);
},
    createSkillMajorPropertyIcon: function() {
    var _frameName, _majorProperty, sp;
    // source line 338, bytecode pc 8
    (_frameName = "");
    // source line 339, bytecode pc 24
    (_majorProperty = this.getSkillMajorProperty());
    // source line 340, bytecode pc 51
    xs.log(("_majorProperty = " + _majorProperty));
    // source line 341, bytecode pc 55
    switch (_majorProperty) {
        case xs.Constant_AttrType_Atk:
        // source line 343, bytecode pc 129
        (_frameName = "icon_atk1");
        break;
        case xs.Constant_AttrType_Def:
        // source line 347, bytecode pc 143
        (_frameName = "icon_def1");
        break;
        case xs.Constant_AttrType_Hp:
        // source line 351, bytecode pc 157
        (_frameName = "icon_hp1");
        break;
        case xs.Constant_AttrType_Int:
        // source line 355, bytecode pc 171
        (_frameName = "icon_int1");
        break;
        default:
        // source line 358, bytecode pc 231
        xs.warn("createSkillMajorPropertyIcon", ((this.getSkillMajorProperty() + ":") + this.getId()));
        break;
    }
    if ((_frameName.length > 0)) {
        // source line 363, bytecode pc 291
        (sp = xs.Factorys.Sprite.create(_frameName, "Cmn01"));
        // source line 364, bytecode pc 295
        return sp;
    }
    // source line 366, bytecode pc 297
    return null;
},
    getEffectIds: function() {
    // source line 375, bytecode pc 28
    return (this.getBaseDataRef().skill_effect || []);
},
    getPassiveEffects: function() {
    var _ids, i;
    if (!this.cachePassiveEffects) {
        // source line 382, bytecode pc 23
        (this.cachePassiveEffects = []);
        // source line 384, bytecode pc 39
        (_ids = this.getEffectIds());
        // source line 385, bytecode pc 44
        (i = 0);
        while ((i < _ids.length)) {
            // source line 387, bytecode pc 103
            this.cachePassiveEffects.push(xs.Models.SkillEffect.createWithBase(_ids[i]));
            // source line 385, bytecode pc 117
            (i = (+i + 1));
        }
    }
    // source line 392, bytecode pc 143
    return this.cachePassiveEffects;
},
    _getFightPoint: function() {
    if (!this._fightPoint) {
        // source line 405, bytecode pc 105
        (this._fightPoint = Math.floor((this.getFightBase() * Math.pow(this.getFightStep(), ((this.getLevel() + this.getExtraLevel()) - 1)))));
    }
    // source line 409, bytecode pc 112
    return this._fightPoint;
},
    getAttrOffsetByAttrType: function(attrType, targetGeneralModel, ownerGeneralModel) {
    var _ret, _passiveEffects, i, _effect;
    // source line 417, bytecode pc 4
    (_ret = 0);
    // source line 418, bytecode pc 8
    switch (attrType) {
        case xs.Constant_AttrType_FightPoint:
        // source line 421, bytecode pc 44
        (_ret = this._getFightPoint());
        break;
        default:
        // source line 424, bytecode pc 65
        (_passiveEffects = this.getPassiveEffects());
        // source line 426, bytecode pc 70
        (i = 0);
        break;
    }
    do {
        // source line 427, bytecode pc 87
        (_effect = _passiveEffects[i]);
        if (((_effect.getSkillEffectTarget() === xs.Constant_SkillTarget_All) || ((_effect.getSkillEffectTarget() === xs.Constant_SkillTarget_Self) && (ownerGeneralModel.getPkId() === targetGeneralModel.getPkId())))) {
            // source line 441, bytecode pc 239
            (_ret = (_ret + _effect.getValueOffset(attrType, (this.getLevel() + this.getExtraLevel()), targetGeneralModel)));
        }
        // source line 426, bytecode pc 253
        (i = (+i + 1));
    } while ((i < _passiveEffects.length));
    // source line 449, bytecode pc 281
    return _ret;
    /* TODO_BYTECODE pc=end reason=unconsumed_operand_stack */
},
    isIgnoreByFilter: function() {
    // source line 455, bytecode pc 1
    return false;
},
    getPosType: function() {
    // source line 460, bytecode pc 10
    return xs.Constant_Equ_PosType_Skill;
},
    createPartView: function(partName) {
    // source line 465, bytecode pc 32
    return xs.Tools.Card.createPartView_Skill(this, partName);
},
    createHeadView_General_Equ_Skill: function() {
    // source line 469, bytecode pc 39
    return xs.Tools.Card.createHeadView_General_Equ_Skill(this, xs.Const_Item_Style_Skill);
},
    createCard_Detail: function(viewCfg) {
    var _ret;
    // source line 481, bytecode pc 63
    (_ret = xs.Views.Card.Equ.create({ lv: true, fp: true, type: true }, viewCfg));
    // source line 483, bytecode pc 80
    _ret.reloadData(this);
    // source line 484, bytecode pc 84
    return _ret;
},
    createCard_CardExp: function(viewCfg) {
    var _ret;
    // source line 495, bytecode pc 57
    (_ret = xs.Views.Card.Equ.create({ lv: true, type: true }, viewCfg));
    // source line 497, bytecode pc 74
    _ret.reloadData(this);
    // source line 499, bytecode pc 78
    return _ret;
},
    createIcon_Select: function(viewCfg) {
    var _ret;
    // source line 507, bytecode pc 57
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true }, viewCfg));
    // source line 509, bytecode pc 74
    _ret.reloadData(this);
    // source line 510, bytecode pc 78
    return _ret;
},
    createIcon_GradeAndLvAndAdvancedLv: function(viewCfg) {
    var _ret;
    // source line 520, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true, advancedLv: true }, viewCfg));
    // source line 522, bytecode pc 80
    _ret.reloadData(this);
    // source line 523, bytecode pc 84
    return _ret;
},
    createIcon_GradeAndLvAndName: function(viewCfg) {
    var _ret;
    // source line 533, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true, name: true }, viewCfg));
    // source line 535, bytecode pc 80
    _ret.reloadData(this);
    // source line 536, bytecode pc 84
    return _ret;
},
    createIcon_GradeAndNameOrLv: function(viewCfg) {
    var _ret;
    // source line 545, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true, name: true }, viewCfg));
    // source line 547, bytecode pc 80
    _ret.reloadData(this);
    // source line 548, bytecode pc 84
    return _ret;
},
    getShortDesc: function() {
    // source line 559, bytecode pc 44
    return xs.Tools.Ml.createString(this.getBaseDataRef().short_desc);
},
    getPhaseDesc: function() {
    // source line 564, bytecode pc 44
    return xs.Tools.Ml.createString(this.getBaseDataRef().phase_desc);
},
    getRangeDesc: function() {
    // source line 570, bytecode pc 44
    return xs.Tools.Ml.createString(this.getBaseDataRef().range_desc);
},
    isVersion: function() {
    // source line 574, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getBaseDataRef().is_version);
},
    getSkillCode: function() {
    // source line 580, bytecode pc 17
    return this.getBaseDataRef().skill_code;
},
    getDescString: function() {
    var _descId, _arr_desc_param_value, _arr_desc_param_step, i, _val;
    if (!this._descString) {
        // source line 587, bytecode pc 32
        (_descId = this.getBaseDataRef().desc);
        // source line 589, bytecode pc 70
        (_arr_desc_param_value = this.getBaseDataRef().desc_param_value.split(","));
        // source line 590, bytecode pc 108
        (_arr_desc_param_step = this.getBaseDataRef().desc_param_step.split(","));
        // source line 592, bytecode pc 145
        this.assert((_arr_desc_param_step.length == _arr_desc_param_value.length), "the Skill desc config is error!!");
        // source line 593, bytecode pc 150
        (i = 0);
        while ((i < _arr_desc_param_value.length)) {
            // source line 595, bytecode pc 234
            (_val = (parseFloat(_arr_desc_param_value[i]) + ((this.getLevel() - 1) * parseFloat(_arr_desc_param_step[i]))).toFixed(2));
            if (this.getExtraLevel()) {
                // source line 596, bytecode pc 320
                (_val = (_val + ((" (+" + (this.getExtraLevel() * parseFloat(_arr_desc_param_step[i])).toFixed(2)) + ")")));
            }
            // source line 597, bytecode pc 331
            (_arr_desc_param_value[i] = _val);
            // source line 593, bytecode pc 345
            (i = (+i + 1));
        }
        // source line 601, bytecode pc 405
        (this._descString = xs.Tools.Ml.createStringWithArgsArray(_descId, _arr_desc_param_value));
    }
    // source line 604, bytecode pc 412
    return this._descString;
},
    getComposePieceNum: function() {
    // source line 609, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getBaseDataRef().compose_need_piece_num);
},
    getWarlordGeneralId: function() {
    // source line 612, bytecode pc 17
    return this.getBaseDataRef().warlord_general_id;
},
    getExtraLevel: function() {
    // source line 617, bytecode pc 28
    return xs.Utils.parseIntSafe(this.extra_level);
},
    getAdvancedLevel: function() {
    // source line 621, bytecode pc 6
    return this.advanced_level;
},
    setAdvancedLevel: function(advanced_level) {
    // source line 625, bytecode pc 12
    this._clearCacheAtSetAdvancedLevel();
    // source line 626, bytecode pc 44
    (this.advanced_level = xs.Utils.parseIntSafe(advanced_level));
    // source line 627, bytecode pc 46
    return void 0;
},
    getMaxAdvancedLevel: function() {
    var _baseDataRefAll;
    // source line 635, bytecode pc 47
    (_baseDataRefAll = xs.Tools.CfgData.readRecordByTypeAndKeyNoDefault(xs.Constant_CfgDataType_Skill_Advanced, this.id));
    // source line 638, bytecode pc 73
    return xs.Utils.size(_baseDataRefAll);
},
    getBaseDataRef: function() {
    var _baseDataRefAll;
    // source line 645, bytecode pc 36
    xs.assert(this.id, "need id", this.name);
    if (!this.baseDataRef) {
        if (this.getAdvancedLevel()) {
            // source line 650, bytecode pc 113
            (_baseDataRefAll = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Skill_Advanced, this.id));
            // source line 652, bytecode pc 136
            (this.baseDataRef = _baseDataRefAll[this.getAdvancedLevel()]);
        } else {
            // source line 656, bytecode pc 188
            (this.baseDataRef = xs.Tools.CfgData.readRecordByTypeAndKey(this.CfgDataType, this.id));
        }
    }
    // source line 663, bytecode pc 195
    return this.baseDataRef;
},
    _clearCacheAtSetAdvancedLevel: function() {
    // source line 671, bytecode pc 7
    (this.baseDataRef = null);
    // source line 672, bytecode pc 15
    (this.cacheResInfo = null);
    // source line 673, bytecode pc 23
    (this._nameString = null);
    // source line 674, bytecode pc 31
    (this._descString = null);
    // source line 675, bytecode pc 44
    this.clearCache();
}
})));
// source line 681, bytecode pc 765
(xs.Models.Skill.createWithBase = function(skill_id) {
    var skill;
    // source line 682, bytecode pc 23
    (skill = new xs.Models.Skill());
    if ((skill && skill.init())) {
        // source line 684, bytecode pc 70
        skill.readBaseData(skill_id);
        // source line 685, bytecode pc 74
        return skill;
    }
    // source line 687, bytecode pc 76
    return null;
});
// source line 691, bytecode pc 791
(xs.Models.Skill.createWithJson = function(data) {
    var skill;
    // source line 692, bytecode pc 23
    (skill = new xs.Models.Skill());
    if ((skill && skill.init())) {
        // source line 694, bytecode pc 70
        skill.loadJson(data);
        // source line 695, bytecode pc 74
        return skill;
    }
    // source line 697, bytecode pc 76
    return null;
});
