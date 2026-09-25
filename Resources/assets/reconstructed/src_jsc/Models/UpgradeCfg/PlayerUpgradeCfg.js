// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/UpgradeCfg/PlayerUpgradeCfg.js:1
// source line 60, bytecode pc 153
(xs.Models.PlayerUpgradeCfg = xs.Models.BaseUpgradeCfg.extend({
    CfgDataType: xs.Constant_CfgDataType_Player_Upgrade,
    name: "PlayerUpgradeCfg",
    readBaseData: function(level) {
    // source line 18, bytecode pc 36
    xs.assert(this.CfgDataType, "need override CfgDataType", this.name);
    // source line 20, bytecode pc 53
    this.setLevel(level);
},
    getLevelDataRef: function() {
    if (!this.cacheLevelDataRef) {
        // source line 27, bytecode pc 66
        (this.cacheLevelDataRef = xs.Tools.CfgData.readRecordByTypeAndKey(this.CfgDataType, (this.getLevel() - 1)));
    }
    // source line 30, bytecode pc 73
    return this.cacheLevelDataRef;
},
    getNum: function() {
    // source line 35, bytecode pc 39
    return xs.Utils.parseFloatSafe(this.getLevelDataRef().exp_need);
},
    getMaxPower: function() {
    // source line 40, bytecode pc 39
    return xs.Utils.parseFloatSafe(this.getLevelDataRef().max_power);
},
    getMaxEnergy: function() {
    // source line 45, bytecode pc 39
    return xs.Utils.parseFloatSafe(this.getLevelDataRef().max_energy);
},
    getTeamMaxNum: function() {
    // source line 50, bytecode pc 39
    return xs.Utils.parseFloatSafe(this.getLevelDataRef().team_num);
},
    getEquipmentUpgradeTotalLevel: function() {
    // source line 56, bytecode pc 39
    return xs.Utils.parseFloatSafe(this.getLevelDataRef().equipment_upgrade_total_level);
},
    getCombatMaxLevel: function() {
    // source line 61, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getLevelDataRef().combat_max_level);
}
}));
// source line 65, bytecode pc 179
(xs.Models.PlayerUpgradeCfg.createWithBase = function(level) {
    var cfg;
    // source line 66, bytecode pc 23
    (cfg = new xs.Models.PlayerUpgradeCfg());
    if ((cfg && cfg.init())) {
        // source line 68, bytecode pc 70
        cfg.readBaseData(level);
        // source line 69, bytecode pc 74
        return cfg;
    }
    // source line 71, bytecode pc 76
    return null;
});
