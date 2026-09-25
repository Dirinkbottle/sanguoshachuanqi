// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/UpgradeCfg/RefineGrowType.js:1
// source line 17, bytecode pc 124
(xs.Models.UpgradeCfg.RefineGrowType = (xs.Models.UpgradeCfg.RefineGrowType || xs.Models.BaseUpgradeCfg.extend({
    CfgDataType: xs.Constant_CfgDataType_Equ_Refine_GrowType,
    name: "xs.Models.UpgradeCfg.RefineGrowType",
    getEffectByAttrType_100Percent: function(attrType) {
    // source line 13, bytecode pc 16
    return this.getEffectByAttrType(attrType);
},
    getEffectByAttrType: function(attrType) {
    // source line 20, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getLevelDataRef().attr_bonus);
}
})));
// source line 51, bytecode pc 155
(xs.Models.UpgradeCfg.RefineGrowType.createWithBase = function(type, level) {
    var cfg;
    // source line 52, bytecode pc 28
    (cfg = new xs.Models.UpgradeCfg.RefineGrowType());
    if ((cfg && cfg.init())) {
        // source line 54, bytecode pc 79
        cfg.readBaseData(type, level);
        // source line 55, bytecode pc 83
        return cfg;
    }
    // source line 57, bytecode pc 108
    xs.assert(false, "xs.Models.UpgradeCfg.RefineGrowType.createWithBase error");
    // source line 58, bytecode pc 110
    return null;
});
