// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/UpgradeCfg/InsightGrowType.js:1
// source line 17, bytecode pc 93
(xs.Models.InsightGrowType = xs.Models.BaseUpgradeCfg.extend({
    CfgDataType: xs.Constant_CfgDataType_General_Insight_GrowType,
    name: "xs.Models.InsightGrowType",
    getEffectByAttrType_100Percent: function(attrType) {
    // source line 13, bytecode pc 16
    return this.getEffectByAttrType(attrType);
},
    getEffectByAttrType: function(attrType) {
    var _ret;
    // source line 21, bytecode pc 7
    switch (attrType) {
        case xs.Constant_AttrType_Atk:
        // source line 24, bytecode pc 115
        (_ret = xs.Utils.parseIntSafe(this.getLevelDataRef().attr_attack));
        break;
        case xs.Constant_AttrType_Def:
        // source line 27, bytecode pc 163
        (_ret = xs.Utils.parseIntSafe(this.getLevelDataRef().attr_defense));
        break;
        case xs.Constant_AttrType_Hp:
        // source line 30, bytecode pc 211
        (_ret = xs.Utils.parseIntSafe(this.getLevelDataRef().attr_hp));
        break;
        case xs.Constant_AttrType_Int:
        // source line 33, bytecode pc 259
        (_ret = xs.Utils.parseIntSafe(this.getLevelDataRef().attr_wisdom));
        break;
        default:
        // source line 37, bytecode pc 266
        return 0;
        break;
    }
    // source line 41, bytecode pc 275
    return _ret;
}
}));
// source line 46, bytecode pc 119
(xs.Models.InsightGrowType.createWithBase = function(type, level) {
    var cfg;
    // source line 47, bytecode pc 23
    (cfg = new xs.Models.InsightGrowType());
    if ((cfg && cfg.init())) {
        // source line 49, bytecode pc 74
        cfg.readBaseData(type, level);
        // source line 50, bytecode pc 78
        return cfg;
    }
    // source line 52, bytecode pc 103
    xs.assert(false, "xs.Models.InsightGrowType.createWithBase error");
    // source line 53, bytecode pc 105
    return null;
});
