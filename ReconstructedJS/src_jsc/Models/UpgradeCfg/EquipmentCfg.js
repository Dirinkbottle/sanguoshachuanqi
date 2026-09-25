// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/UpgradeCfg/EquipmentCfg.js:1
// source line 76, bytecode pc 133
(xs.Models.EquipmentCfg = xs.Models.BaseUpgradeCfg.extend({
    CfgDataType: xs.Constant_CfgDataType_Equipment_Upgrade,
    name: "EquipmentCfg",
    init: function() {
    var caches;
    // source line 17, bytecode pc 12
    this._super();
    // source line 20, bytecode pc 30
    (caches = [ "typeDataRef" ]);
    // source line 23, bytecode pc 47
    this.registerCaches(caches);
    // source line 25, bytecode pc 49
    return true;
},
    readBaseData: function(grade, type, level) {
    // source line 30, bytecode pc 36
    xs.assert(this.CfgDataType, "need override CfgDataType", this.name);
    // source line 32, bytecode pc 53
    this.setType(type);
    // source line 33, bytecode pc 70
    this.setGrade(grade);
    // source line 34, bytecode pc 87
    this.setLevel(level);
},
    setType: function(type) {
    // source line 38, bytecode pc 9
    (this.type = type);
},
    getTypeDataRef: function() {
    if (!this.typeDataRef) {
        // source line 43, bytecode pc 37
        (this.typeDataRef = this.getGradeDataRef()[this.type]);
    }
    // source line 45, bytecode pc 44
    return this.typeDataRef;
},
    getLevelDataRef: function() {
    var _idx;
    if (!this.levelDataRef) {
        // source line 54, bytecode pc 29
        (_idx = (this.getLevel() - 1));
        if ((_idx >= this.getTypeDataRef().length)) {
            // source line 57, bytecode pc 78
            (_idx = (this.getTypeDataRef().length - 1));
            // source line 58, bytecode pc 125
            this.warn(((("_idx overflow:" + _idx) + " in ") + this.getTypeDataRef().length));
        }
        // source line 61, bytecode pc 148
        (this.levelDataRef = this.getTypeDataRef()[_idx]);
    }
    // source line 64, bytecode pc 200
    this.assert(this.levelDataRef, "need levelDataRef", this.getTypeDataRef(), this.getLevel());
    // source line 66, bytecode pc 207
    return this.levelDataRef;
},
    getMaxLevel: function() {
    // source line 78, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getTypeDataRef().length);
}
}));
// source line 84, bytecode pc 159
(xs.Models.EquipmentCfg.createWithBase = function(grade, type, level) {
    var cfg;
    // source line 85, bytecode pc 22
    xs.error("xs.Models.EquipmentCfg.createWithBase this file will remove");
    // source line 86, bytecode pc 46
    (cfg = new xs.Models.EquipmentCfg());
    if ((cfg && cfg.init())) {
        // source line 88, bytecode pc 101
        cfg.readBaseData(grade, type, level);
        // source line 89, bytecode pc 105
        return cfg;
    }
    // source line 91, bytecode pc 128
    xs.error("xs.Models.EquipmentCfg.createWithBase");
    // source line 92, bytecode pc 130
    return null;
});
