// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Factorys/Fate.js:1
// source line 11, bytecode pc 31
(xs.Factorys.Fate = {
    create: function(id) {
    var fate;
    // source line 12, bytecode pc 29
    (fate = xs.Models.Fate.create());
    // source line 13, bytecode pc 56
    xs.assert(id, "Fate id error");
    // source line 14, bytecode pc 75
    fate.readBaseData(id);
    // source line 15, bytecode pc 79
    return fate;
}
});
