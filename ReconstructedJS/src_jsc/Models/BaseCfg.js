// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/BaseCfg.js:1
// source line 105, bytecode pc 138
(xs.Models.BaseCfg = xs.Models.Base.extend({
    name: "BaseCfg",
    init: function() {
    // source line 18, bytecode pc 12
    this._super();
    // source line 21, bytecode pc 20
    (this.id = null);
    // source line 24, bytecode pc 22
    return true;
},
    setId: function(id) {
    var _id;
    // source line 32, bytecode pc 17
    (_id = (id || "empty"));
    // source line 33, bytecode pc 66
    this.assert(xs.Utils.isString(_id), "id must be string", _id);
    // source line 35, bytecode pc 76
    (this.id = _id);
},
    getId: function() {
    // source line 40, bytecode pc 36
    xs.assert(this.id, "this.id error", this.name);
    // source line 41, bytecode pc 43
    return this.id;
},
    readBaseData: function(id) {
    // source line 50, bytecode pc 36
    xs.assert(this.CfgDataType, "need override CfgDataType", this.name);
    // source line 51, bytecode pc 69
    xs.assert(id, "readBaseData id error", id, this);
    // source line 53, bytecode pc 106
    xs.assert(this.name, "need override name", this.name);
    // source line 55, bytecode pc 123
    this.setId(id);
},
    loadJson: function(data) {
    // source line 62, bytecode pc 16
    this._super(data);
    // source line 68, bytecode pc 53
    xs.assert(this.name, "need override name", this.name);
    // source line 71, bytecode pc 75
    this.setId(data.id);
},
    getBaseDataRef: function() {
    // source line 81, bytecode pc 36
    xs.assert(this.id, "need id", this.name);
    if (!this.baseDataRef) {
        // source line 86, bytecode pc 95
        (this.baseDataRef = xs.Tools.CfgData.readRecordByTypeAndKey(this.CfgDataType, this.id));
    }
    // source line 90, bytecode pc 102
    return this.baseDataRef;
},
    getNameString: function() {
    var _nameId;
    if (!this._nameString) {
        // source line 97, bytecode pc 32
        (_nameId = this.getBaseDataRef().name);
        // source line 98, bytecode pc 72
        xs.assert(_nameId, "_nameId error", this.getBaseDataRef());
        // source line 99, bytecode pc 123
        (this._nameString = xs.Tools.Ml.createString(this.getBaseDataRef().name));
    }
    // source line 101, bytecode pc 130
    return this._nameString;
},
    getDescString: function() {
    var _descId;
    if (!this._descString) {
        // source line 108, bytecode pc 32
        (_descId = this.getBaseDataRef().desc);
        // source line 109, bytecode pc 72
        xs.assert(_descId, "_descId error", this.getBaseDataRef());
        // source line 110, bytecode pc 123
        (this._descString = xs.Tools.Ml.createString(this.getBaseDataRef().desc));
    }
    // source line 112, bytecode pc 130
    return this._descString;
}
}));
