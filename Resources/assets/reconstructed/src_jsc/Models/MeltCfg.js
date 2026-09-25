// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/MeltCfg.js:1
// source line 7, bytecode pc 73
(xs.Models.MeltCfg = xs.Models.BaseUpgradeCfg.extend({ CfgDataType: xs.Constant_CfgDataType_Melt, name: "MeltCfg" }));
// source line 11, bytecode pc 99
(xs.Models.MeltCfg.createWithBase = function(type, level) {
    var cfg;
    // source line 12, bytecode pc 23
    (cfg = new xs.Models.MeltCfg());
    if ((cfg && cfg.init())) {
        // source line 14, bytecode pc 74
        cfg.readBaseData(type, level);
        // source line 15, bytecode pc 78
        return cfg;
    }
    // source line 17, bytecode pc 103
    xs.assert(false, "xs.Models.MeltCfg.createWithBase error");
    // source line 18, bytecode pc 105
    return null;
});
