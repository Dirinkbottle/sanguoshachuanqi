// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/UpgradeCfg/GeneralExpCfg.js:1
// source line 16, bytecode pc 73
(xs.Models.GeneralExpCfg = xs.Models.BaseUpgradeCfg.extend({ CfgDataType: xs.Constant_CfgDataType_GeneralLevel, name: "GeneralExpCfg" }));
// source line 20, bytecode pc 99
(xs.Models.GeneralExpCfg.createWithBase = function(generalGrade, generalLevel) {
    var cfg;
    // source line 21, bytecode pc 24
    xs.assert(false, "xs.Models.GeneralExpCfg.createWithBase error this file will be remove");
    // source line 22, bytecode pc 48
    (cfg = new xs.Models.GeneralExpCfg());
    if ((cfg && cfg.init())) {
        // source line 24, bytecode pc 99
        cfg.readBaseData(generalGrade, generalLevel);
        // source line 25, bytecode pc 103
        return cfg;
    }
    // source line 27, bytecode pc 128
    xs.assert(false, "xs.Models.GeneralExpCfg.createWithBase error");
    // source line 28, bytecode pc 130
    return null;
});
