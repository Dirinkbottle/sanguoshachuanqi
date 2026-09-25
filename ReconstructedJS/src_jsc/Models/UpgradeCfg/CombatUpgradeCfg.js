// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/UpgradeCfg/CombatUpgradeCfg.js:1
// source line 31, bytecode pc 103
(xs.Models.CombatUpgradeCfg = xs.Models.BaseUpgradeCfg.extend({
    CfgDataType: xs.Constant_CfgDataType_CombatLevel,
    name: "CombatUpgradeCfg",
    getExtraBuff: function() {
    // source line 22, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getLevelDataRef().extra_buff);
},
    getNum: function() {
    // source line 27, bytecode pc 39
    return xs.Utils.parseFloatSafe(this.getLevelDataRef().exp_need);
},
    getNumTotal: function() {
    var _arr_obj, num_total, i;
    // source line 32, bytecode pc 15
    (_arr_obj = this.getTypeDataRef());
    // source line 33, bytecode pc 20
    (num_total = 0);
    // source line 34, bytecode pc 25
    (i = 0);
    while ((i < _arr_obj.length)) {
        if (((this.getLevel() - 1) > i)) {
            // source line 35, bytecode pc 96
            (num_total = (num_total + xs.Utils.parseFloatSafe(_arr_obj[i].exp_need)));
        }
        // source line 34, bytecode pc 110
        (i = (+i + 1));
    }
    // source line 38, bytecode pc 171
    this.dump(((("get num total level:" + this.getLevel()) + "num_total:") + num_total));
    // source line 39, bytecode pc 175
    return num_total;
}
}));
// source line 44, bytecode pc 129
(xs.Models.CombatUpgradeCfg.createWithBase = function(type, level) {
    var cfg;
    // source line 46, bytecode pc 28
    xs.assert((level >= 1), "level >=1");
    // source line 48, bytecode pc 52
    (cfg = new xs.Models.CombatUpgradeCfg());
    if ((cfg && cfg.init())) {
        // source line 50, bytecode pc 103
        cfg.readBaseData(type, level);
        // source line 51, bytecode pc 107
        return cfg;
    }
    // source line 53, bytecode pc 126
    this.error("CombatUpgradeCfg.createWithBase");
    // source line 54, bytecode pc 128
    return null;
});
