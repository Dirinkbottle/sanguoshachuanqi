// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Base.js:1
// source line 65, bytecode pc 123
(xs.Models.Base = cc.Class.extend({
    name: "xs.Models.Base",
    init: function() {
    // source line 15, bytecode pc 11
    (this.cachesAll = []);
    // source line 17, bytecode pc 24
    (this._notifyCenter = {});
    // source line 19, bytecode pc 32
    (this.m_isNew = false);
    // source line 21, bytecode pc 34
    return true;
},
    isNew: function() {
    // source line 27, bytecode pc 6
    return this.m_isNew;
},
    setIsNew: function(isNew) {
    // source line 31, bytecode pc 9
    (this.m_isNew = isNew);
},
    registerCaches: function(caches) {
    // source line 37, bytecode pc 27
    (this.cachesAll = this.cachesAll.concat(caches));
},
    clearCache: function(_cKey) {
    var i, cacheKey;
    if (_cKey) {
        // source line 43, bytecode pc 14
        (this[_cKey] = null);
    } else {
        if (((this.cachesAll !== undefined) && (this.cachesAll !== null))) {
            // source line 48, bytecode pc 55
            (i = 0);
            while ((i < this.cachesAll.length)) {
                // source line 49, bytecode pc 75
                (cacheKey = this.cachesAll[i]);
                // source line 50, bytecode pc 82
                (this[cacheKey] = null);
                // source line 48, bytecode pc 97
                i++;
            }
        }
    }
},
    loadJson: function() {
    // source line 60, bytecode pc 12
    this.clearCache();
},
    getNotifyCenter: function(name) {
    // source line 66, bytecode pc 33
    this.assert(this._notifyCenter[name], ("the notityCenter is error:" + name));
    // source line 67, bytecode pc 44
    return this._notifyCenter[name];
}
}));
