// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/SkillExpCfg.js:1
// source line 15, bytecode pc 73
(xs.Models.SkillExpCfg = xs.Models.BaseUpgradeCfg.extend({ CfgDataType: xs.Constant_CfgDataType_Skill_Upgrade, name: "SkillExpCfg" }));
// source line 19, bytecode pc 99
(xs.Models.SkillExpCfg.createWithBase = function(skillGrade, level) {
    var cfg;
    // source line 20, bytecode pc 24
    xs.assert(false, "xs.Models.SkillExpCfg.createWithBase error this file will be remove!!");
    // source line 21, bytecode pc 48
    (cfg = new xs.Models.SkillExpCfg());
    if ((cfg && cfg.init())) {
        // source line 23, bytecode pc 99
        cfg.readBaseData(skillGrade, level);
        // source line 24, bytecode pc 103
        return cfg;
    }
    // source line 26, bytecode pc 105
    return null;
});
