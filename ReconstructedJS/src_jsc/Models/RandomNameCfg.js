// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/RandomNameCfg.js:1
// source line 117, bytecode pc 198
(xs.Models.RandomNameCfg = xs.Models.BaseCfg.extend({
    name: "xs.Models.RandomNameCfg",
    init: function() {
    var caches;
    // source line 14, bytecode pc 12
    this._super();
    // source line 16, bytecode pc 21
    (caches = []);
    // source line 20, bytecode pc 38
    this.registerCaches(caches);
    // source line 22, bytecode pc 40
    return true;
},
    setLevel: function(level) {
    // source line 27, bytecode pc 9
    (this.level = level);
    // source line 28, bytecode pc 22
    this.clearCache();
},
    getLevel: function() {
    // source line 33, bytecode pc 6
    return this.level;
},
    setGrade: function(grade) {
    // source line 38, bytecode pc 9
    (this.grade = grade);
    // source line 39, bytecode pc 22
    this.clearCache();
},
    readBaseData: function(grade, level) {
    // source line 44, bytecode pc 36
    xs.assert(this.CfgDataType, "need override CfgDataType", this.name);
    // source line 45, bytecode pc 53
    this.setGrade(grade);
    // source line 46, bytecode pc 70
    this.setLevel(level);
},
    getGradeDataRef: function() {
    if (!this.cacheGradeDataRef) {
        // source line 54, bytecode pc 58
        (this.cacheGradeDataRef = xs.Tools.CfgData.readRecordByTypeAndKey(this.CfgDataType, this.grade));
    }
    // source line 57, bytecode pc 65
    return this.cacheGradeDataRef;
},
    getLevelDataRef: function() {
    var _idx;
    if (!this.cacheLevelDataRef) {
        // source line 66, bytecode pc 29
        (_idx = (this.getLevel() - 1));
        if ((_idx >= this.getGradeDataRef().length)) {
            // source line 69, bytecode pc 109
            this.warn(((((this.name + "_idx overflow:") + _idx) + " in ") + this.getGradeDataRef().length));
            // source line 70, bytecode pc 132
            (_idx = (this.getGradeDataRef().length - 1));
        }
        // source line 74, bytecode pc 155
        (this.cacheLevelDataRef = this.getGradeDataRef()[_idx]);
    }
    // source line 78, bytecode pc 206
    this.assert(this.cacheLevelDataRef, "need cacheLevelDataRef", this.getGradeDataRef().length, this.level);
    // source line 80, bytecode pc 213
    return this.cacheLevelDataRef;
},
    getMaxLevelDataRef: function() {
    if (!this.cacheMaxLevelDataRef) {
        // source line 87, bytecode pc 45
        (this.cacheMaxLevelDataRef = this.getGradeDataRef()[(this.getMaxLevel() - 1)]);
    }
    // source line 89, bytecode pc 52
    return this.cacheMaxLevelDataRef;
},
    getMaxLevel: function() {
    // source line 95, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getGradeDataRef().length);
},
    getExpNeed: function() {
    // source line 100, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getLevelDataRef().exp_need);
},
    getExpTotal: function() {
    // source line 104, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getLevelDataRef().exp_total);
},
    getEatedProdExp: function() {
    // source line 108, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getLevelDataRef().exp_eated);
},
    getCoinNeed: function() {
    // source line 113, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getLevelDataRef().coin_need);
},
    getMaxLevelExpNeed: function() {
    // source line 118, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getMaxLevel().exp_need);
}
}));
