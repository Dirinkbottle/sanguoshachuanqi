// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Factorys/String.js:1
// source line 36, bytecode pc 41
(xs.Factorys.String = {
    create: function(stringId) {
    // source line 18, bytecode pc 30
    return xs.Tools.Ml.createString(stringId);
},
    createWithArgs: function(stringId, argsArray) {
    // source line 37, bytecode pc 34
    return xs.Tools.Ml.createStringWithArgsArray(stringId, argsArray);
}
});
