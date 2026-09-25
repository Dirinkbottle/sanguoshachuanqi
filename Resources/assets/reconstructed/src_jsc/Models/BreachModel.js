// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/BreachModel.js:1
// source line 108, bytecode pc 263
(xs.Models.BaseBreach = cc.Class.extend({
    name: "xs.Models.BaseBreach",
    init: function(jsonObj, generalModel) {
    // source line 11, bytecode pc 9
    (this.generalModel = generalModel);
    // source line 13, bytecode pc 30
    (this.generalName = generalModel.getNameString());
    // source line 14, bytecode pc 51
    (this.generalId = generalModel.getId());
    // source line 15, bytecode pc 72
    (this.grade = generalModel.getGrade());
    // source line 17, bytecode pc 92
    (this.generalLevel_new = jsonObj.info.general_level_now);
    // source line 18, bytecode pc 112
    (this.generalLevel_old = jsonObj.info.general_level_before);
    // source line 20, bytecode pc 154
    (this.breachLevel_old = xs.Utils.parseIntSafe(jsonObj.info.insight_level_before));
    // source line 21, bytecode pc 196
    (this.breachLevel_new = xs.Utils.parseIntSafe(jsonObj.info.insight_level_now));
    // source line 24, bytecode pc 216
    (this.hp_plus = jsonObj.info.attr_hp);
    // source line 25, bytecode pc 236
    (this.attack_plus = jsonObj.info.attr_attack);
    // source line 26, bytecode pc 256
    (this.defence_plus = jsonObj.info.attr_defense);
    // source line 27, bytecode pc 276
    (this.intelligence_plus = jsonObj.info.attr_wisdom);
    // source line 29, bytecode pc 278
    return true;
},
    getGeneralName: function() {
    // source line 33, bytecode pc 6
    return this.generalName;
},
    getGeneralId: function() {
    // source line 37, bytecode pc 6
    return this.generalId;
},
    getGeneralLevel: function() {
    // source line 41, bytecode pc 17
    return this.generalModel.getLevel();
},
    getGeneralGrade: function() {
    // source line 45, bytecode pc 6
    return this.grade;
},
    getGeneralOldLevel: function() {
    // source line 49, bytecode pc 6
    return this.generalLevel_old;
},
    getGeneralNewLevel: function() {
    // source line 53, bytecode pc 6
    return this.generalLevel_new;
},
    getBreachOldLevel: function() {
    // source line 57, bytecode pc 6
    return this.breachLevel_old;
},
    getBreachNewLevel: function() {
    // source line 61, bytecode pc 6
    return this.breachLevel_new;
},
    getBreachLevelString_preLevel: function() {
    // source line 65, bytecode pc 19
    return this.getBreachLevelStringByLevel(this.breachLevel_old);
},
    getBreachLevelString: function() {
    // source line 69, bytecode pc 19
    return this.getBreachLevelStringByLevel(this.breachLevel_new);
},
    getHp: function() {
    // source line 73, bytecode pc 28
    return this.generalModel.getAttrNaked(xs.Constant_AttrType_Hp);
},
    getAttack: function() {
    // source line 77, bytecode pc 28
    return this.generalModel.getAttrNaked(xs.Constant_AttrType_Atk);
},
    getDefence: function() {
    // source line 81, bytecode pc 28
    return this.generalModel.getAttrNaked(xs.Constant_AttrType_Def);
},
    getIntelligence: function() {
    // source line 85, bytecode pc 28
    return this.generalModel.getAttrNaked(xs.Constant_AttrType_Int);
},
    getHpPlus: function() {
    // source line 89, bytecode pc 6
    return this.hp_plus;
},
    getAttackPlus: function() {
    // source line 93, bytecode pc 6
    return this.attack_plus;
},
    getDefencePlus: function() {
    // source line 97, bytecode pc 6
    return this.defence_plus;
},
    getIntelligencePlus: function() {
    // source line 101, bytecode pc 6
    return this.intelligence_plus;
},
    createCardView: function() {
    // source line 105, bytecode pc 17
    return this.generalModel.createCard_General();
},
    getBreachLevelStringByLevel: function(level) {
    var stringKeys;
    // source line 110, bytecode pc 107
    (stringKeys = [
    "breach_0",
    "breach_1",
    "breach_2",
    "breach_3",
    "breach_4",
    "breach_5",
    "breach_6",
    "breach_7",
    "breach_8",
    "breach_9",
    "breach_10"
]);
    // source line 111, bytecode pc 142
    return xs.Tools.String.createString(stringKeys[level]);
}
}));
// source line 145, bytecode pc 352
(xs.Models.BreachModel = xs.Models.BaseBreach.extend({
    name: "xs.Models.BreachModel",
    init: function(jsonObj, generalModel) {
    var _obj_reference_soul;
    if (!this._super(jsonObj, generalModel)) {
        // source line 122, bytecode pc 27
        return false;
    }
    // source line 127, bytecode pc 85
    (_obj_reference_soul = xs.Profile.GameData.Mgr.getInstance().Generals.getReferenceSoul(this.generalModel));
    if (_obj_reference_soul) {
        // source line 130, bytecode pc 114
        (this.lastSoulNum = _obj_reference_soul.getNum());
    } else {
        // source line 132, bytecode pc 127
        (this.lastSoulNum = 0);
    }
    // source line 136, bytecode pc 151
    (this.nextNeedSuolNum = this.generalModel.getNextBreachNeedSoulNum());
    // source line 138, bytecode pc 153
    return true;
},
    getLastSoulNum: function() {
    // source line 142, bytecode pc 6
    return this.lastSoulNum;
},
    getNextBreachSoulNum: function() {
    // source line 146, bytecode pc 6
    return this.nextNeedSuolNum;
}
}));
// source line 153, bytecode pc 378
(xs.Models.BreachModel.create = function(jsonObj, generalModel) {
    var ret;
    // source line 154, bytecode pc 23
    (ret = new xs.Models.BreachModel());
    if ((ret && ret.init(jsonObj, generalModel))) {
        // source line 156, bytecode pc 63
        return ret;
    }
    // source line 158, bytecode pc 65
    return null;
});
