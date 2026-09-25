// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Index.js:1
// source line 84, bytecode pc 138
(xs.Profile.GameData.Index = cc.Class.extend({
    name: "xs.Profile.GameData.Index",
    init: function(originalData) {
    // source line 15, bytecode pc 9
    (this.originalData = originalData);
    // source line 16, bytecode pc 22
    (this.index = {});
    // source line 17, bytecode pc 35
    (this.isIndexValid = {});
    // source line 18, bytecode pc 37
    return true;
},
    createIndexAll: function(arrIndexKey) {
    var i;
    // source line 22, bytecode pc 4
    (i = 0);
    while ((i < arrIndexKey.length)) {
        // source line 23, bytecode pc 31
        this.createIndex(arrIndexKey[i]);
        // source line 22, bytecode pc 46
        i++;
    }
},
    createIndex: function(indexKey) {
    var _modelsMap, _index, key_pk_id, _tmpModel;
    if (this.isIndexValid[indexKey]) {
        // source line 28, bytecode pc 16
        return void 0;
    }
    // source line 30, bytecode pc 26
    (_modelsMap = this.originalData);
    // source line 32, bytecode pc 36
    (_index = {});
    for (var key_pk_id in _modelsMap) {
        if (!(_modelsMap.hasOwnProperty(key_pk_id))) continue;
        // source line 35, bytecode pc 86
        (_tmpModel = _modelsMap[key_pk_id]);
        if (!_tmpModel[indexKey]) {
            // source line 39, bytecode pc 122
            this.error(("create the index error" + indexKey));
        }
        // source line 42, bytecode pc 190
        (xs.Utils.isSet(_index[_tmpModel[indexKey]()]) || (_index[_tmpModel[indexKey]()] = []));
        // source line 44, bytecode pc 223
        _index[_tmpModel[indexKey]()].push(key_pk_id);
    }
    // source line 48, bytecode pc 245
    (this.index[indexKey] = _index);
    // source line 50, bytecode pc 257
    (this.isIndexValid[indexKey] = true);
},
    updateIndex: function() {
    // source line 55, bytecode pc 18
    this.error("error update index!!!");
},
    findWithIndex: function(indexKey, indexValue) {
    // source line 59, bytecode pc 16
    this.createIndex(indexKey);
    if ((this.isIndexValid[indexKey] == false)) {
        // source line 63, bytecode pc 36
        return -1;
    }
    // source line 68, bytecode pc 103
    return (!xs.Utils.isEmpty(this.index[indexKey][indexValue]) ? this.index[indexKey][indexValue] : []);
},
    deleteIndex: function(indexKey) {
    // source line 74, bytecode pc 10
    delete this.index[indexKey];
    // source line 75, bytecode pc 22
    (this.isIndexValid[indexKey] = false);
},
    deleteIndexAll: function() {
    // source line 80, bytecode pc 12
    (this.index = {});
    // source line 81, bytecode pc 25
    (this.isIndexValid = {});
},
    flush: function(arrIndexKey) {
    // source line 85, bytecode pc 12
    this.deleteIndexAll();
    // source line 86, bytecode pc 29
    this.createIndexAll(arrIndexKey);
}
}));
// source line 93, bytecode pc 169
(xs.Profile.GameData.Index.create = function(originalData) {
    var obj;
    // source line 94, bytecode pc 28
    (obj = new xs.Profile.GameData.Index());
    if ((obj && obj.init(originalData))) {
        // source line 96, bytecode pc 64
        return obj;
    }
    // source line 98, bytecode pc 87
    xs.error("xs.Profile.GameData.Index.create failed");
    // source line 99, bytecode pc 89
    return null;
});
