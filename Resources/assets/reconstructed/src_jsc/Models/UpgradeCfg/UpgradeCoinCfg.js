// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/UpgradeCfg/UpgradeCoinCfg.js:1
// source line 10, bytecode pc 73
(xs.Models.UpgradeCoinCfg = xs.Models.BaseUpgradeCfg.extend({ CfgDataType: xs.Constant_CfgDataType_Upgrade_Coin, name: "UpgradeCoinCfg" }));
// source line 14, bytecode pc 99
(xs.Models.UpgradeCoinCfg.createWithBase = function(type, level) {
    var cfg;
    // source line 15, bytecode pc 23
    (cfg = new xs.Models.UpgradeCoinCfg());
    if ((cfg && cfg.init())) {
        // source line 17, bytecode pc 74
        cfg.readBaseData(type, level);
        // source line 18, bytecode pc 78
        return cfg;
    }
    // source line 20, bytecode pc 103
    xs.assert(false, "xs.Models.UpgradeCoinCfg.createWithBase error");
    // source line 21, bytecode pc 105
    return null;
});
