// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/UpgradeCfg/BaseUpgradeCfg.js:1
// source line 142, bytecode pc 198
(xs.Models.BaseUpgradeCfg = xs.Models.BaseCfg.extend({
    name: "BaseUpgradeCfg",
    init: function() {
    var caches;
    // source line 27, bytecode pc 12
    this._super();
    // source line 30, bytecode pc 20
    (this.type = null);
    // source line 31, bytecode pc 28
    (this.level = null);
    // source line 36, bytecode pc 64
    (caches = [ "cacheTypeDataRef", "cacheLevelDataRef", "cacheMaxLevelDataRef" ]);
    // source line 39, bytecode pc 81
    this.registerCaches(caches);
    // source line 41, bytecode pc 83
    return true;
},
    setLevel: function(level) {
    // source line 47, bytecode pc 32
    xs.assert((level > 0), "level must be > 0", level);
    // source line 48, bytecode pc 42
    (this.level = level);
    // source line 49, bytecode pc 55
    this.clearCache();
},
    getLevel: function() {
    // source line 54, bytecode pc 6
    return this.level;
},
    setType: function(type) {
    // source line 59, bytecode pc 9
    (this.type = type);
    // source line 60, bytecode pc 22
    this.clearCache();
},
    getType: function() {
    // source line 65, bytecode pc 6
    return this.type;
},
    getTypeDataRef: function() {
    if (!this.cacheTypeDataRef) {
        // source line 73, bytecode pc 58
        (this.cacheTypeDataRef = xs.Tools.CfgData.readRecordByTypeAndKey(this.CfgDataType, this.type));
    }
    // source line 77, bytecode pc 110
    this.assert(this.cacheTypeDataRef, ((("the cacheTypeDataRef is null CfgDataType is:" + this.CfgDataType) + " type is:") + this.getType()));
    // source line 78, bytecode pc 117
    return this.cacheTypeDataRef;
},
    getLevelDataRef: function() {
    var _idx;
    if (!this.cacheLevelDataRef) {
        // source line 84, bytecode pc 29
        (_idx = (this.getLevel() - 1));
        if ((_idx >= this.getTypeDataRef().length)) {
            // source line 88, bytecode pc 109
            this.warn(((((this.name + "_idx overflow:") + _idx) + " in ") + this.getTypeDataRef().length));
            // source line 89, bytecode pc 132
            (_idx = (this.getTypeDataRef().length - 1));
        }
        // source line 92, bytecode pc 155
        (this.cacheLevelDataRef = this.getTypeDataRef()[_idx]);
    }
    // source line 94, bytecode pc 201
    this.assert(this.cacheLevelDataRef, "need cacheLevelDataRef", this.getTypeDataRef(), this.level);
    // source line 98, bytecode pc 208
    return this.cacheLevelDataRef;
},
    readBaseData: function(type, level) {
    // source line 103, bytecode pc 36
    xs.assert(this.CfgDataType, "need override CfgDataType", this.name);
    // source line 104, bytecode pc 53
    this.setType(type);
    // source line 105, bytecode pc 70
    this.setLevel(level);
},
    getMaxLevelDataRef: function() {
    if (!this.cacheMaxLevelDataRef) {
        // source line 113, bytecode pc 45
        (this.cacheMaxLevelDataRef = this.getTypeDataRef()[(this.getMaxLevel() - 1)]);
    }
    // source line 115, bytecode pc 52
    return this.cacheMaxLevelDataRef;
},
    getMaxLevel: function() {
    // source line 120, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getTypeDataRef().length);
},
    getNum: function() {
    // source line 125, bytecode pc 39
    return xs.Utils.parseFloatSafe(this.getLevelDataRef().num);
},
    getMeltID: function() {
    // source line 129, bytecode pc 39
    return xs.Utils.parseFloatSafe(this.getLevelDataRef().item_id);
},
    getNumTotal: function() {
    var _arr_obj, num_total, i;
    // source line 133, bytecode pc 15
    (_arr_obj = this.getTypeDataRef());
    // source line 134, bytecode pc 20
    (num_total = 0);
    // source line 135, bytecode pc 25
    (i = 0);
    while ((i < _arr_obj.length)) {
        if (((this.getLevel() - 1) > i)) {
            // source line 136, bytecode pc 96
            (num_total = (num_total + xs.Utils.parseFloatSafe(_arr_obj[i].num)));
        }
        // source line 135, bytecode pc 111
        i++;
    }
    // source line 140, bytecode pc 133
    return num_total;
},
    getNextLevelNeed: function() {
    var _arr_obj;
    if ((this.getLevel() == this.getMaxLevel())) {
        // source line 144, bytecode pc 31
        return 0;
    }
    // source line 146, bytecode pc 47
    (_arr_obj = this.getTypeDataRef());
    if (_arr_obj[(this.getLevel() - 1)].num) {
        // source line 148, bytecode pc 99
        return _arr_obj[(this.getLevel() - 1)].num;
    }
    // source line 150, bytecode pc 101
    return 0;
}
}));
