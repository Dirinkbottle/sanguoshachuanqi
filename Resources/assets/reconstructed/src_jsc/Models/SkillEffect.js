// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/SkillEffect.js:1
// source line 102, bytecode pc 184
(xs.Models.SkillEffect = (xs.Models.SkillEffect || xs.Models.BaseCfg.extend({
    name: "SkillEffect",
    CfgDataType: xs.Constant_CfgDataType_SkillEffect,
    init: function() {
    var caches;
    if (!this._super()) {
        // source line 29, bytecode pc 19
        return false;
    }
    // source line 32, bytecode pc 28
    (caches = []);
    // source line 35, bytecode pc 45
    this.registerCaches(caches);
    // source line 37, bytecode pc 47
    return true;
},
    getValueBase: function() {
    // source line 41, bytecode pc 39
    return xs.Utils.parseFloatSafe(this.getBaseDataRef().effect_value);
},
    getValueStep: function() {
    // source line 45, bytecode pc 39
    return xs.Utils.parseFloatSafe(this.getBaseDataRef().effect_value_step);
},
    getSkillEffectTarget: function() {
    // source line 51, bytecode pc 17
    return this.getBaseDataRef().effect_target;
},
    getAttrType: function() {
    // source line 56, bytecode pc 17
    return this.getBaseDataRef().attr_type;
},
    getValueByLevel: function(level) {
    // source line 61, bytecode pc 31
    return (this.getValueBase() + ((level - 1) * this.getValueStep()));
},
    getValueOffset: function(attrType, level, srcGeneralModel) {
    var _value, _ret;
    if ((attrType !== this.getAttrType())) {
        // source line 71, bytecode pc 22
        return 0;
    }
    // source line 75, bytecode pc 42
    (_value = this.getValueByLevel(level));
    // source line 77, bytecode pc 47
    (_ret = 0);
    if ((this.getValueType() === xs.Constant_ValueType_Normal)) {
        // source line 79, bytecode pc 82
        (_ret = _value);
    } else {
        if ((this.getValueType() === xs.Constant_ValueType_Percent100)) {
            // source line 82, bytecode pc 144
            (_ret = ((srcGeneralModel.getAttrNaked(attrType) * _value) / 100));
        } else {
            // source line 85, bytecode pc 168
            this.error("this.getValueType");
        }
    }
    if ((this.isGain() === false)) {
        // source line 89, bytecode pc 197
        (_ret = (_ret * -1));
    }
    // source line 92, bytecode pc 201
    return _ret;
},
    getValueType: function() {
    // source line 98, bytecode pc 17
    return this.getBaseDataRef().value_type;
},
    isGain: function() {
    // source line 103, bytecode pc 19
    return (this.getBaseDataRef().is_gain === 1);
}
})));
// source line 107, bytecode pc 210
(xs.Models.SkillEffect.createWithBase = function(id) {
    var skill;
    // source line 108, bytecode pc 23
    (skill = new xs.Models.SkillEffect());
    if ((skill && skill.init())) {
        // source line 110, bytecode pc 70
        skill.readBaseData(id);
        // source line 111, bytecode pc 74
        return skill;
    }
    // source line 113, bytecode pc 93
    this.error("SkillEffect.createWithBase");
    // source line 114, bytecode pc 95
    return null;
});
