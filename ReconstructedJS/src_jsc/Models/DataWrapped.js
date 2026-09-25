// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/DataWrapped.js:1
// source line 22, bytecode pc 83
(xs.Models.DataWrapped = cc.Class.extend({
    name: "xs.Models.DataWrapped",
    init: function(modelOri, modelExt) {
    // source line 12, bytecode pc 9
    (this.m_modelOri = modelOri);
    // source line 13, bytecode pc 19
    (this.m_modelExt = modelExt);
    // source line 14, bytecode pc 21
    return true;
},
    getModelOri: function() {
    // source line 19, bytecode pc 6
    return this.m_modelOri;
},
    getModelExt: function() {
    // source line 23, bytecode pc 6
    return this.m_modelExt;
}
}));
// source line 28, bytecode pc 109
(xs.Models.DataWrapped.create = function(modelOri, modelExt) {
    var ret;
    // source line 29, bytecode pc 23
    (ret = new xs.Models.DataWrapped());
    if ((ret && ret.init(modelOri, modelExt))) {
        // source line 31, bytecode pc 63
        return ret;
    }
    // source line 33, bytecode pc 65
    return null;
});
