// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Prototype/Number.js:1
// source line 1, bytecode pc 28
Number.method("toInt", function() {
    // source line 2, bytecode pc 37
    return Math[((this < 0) ? "ceil" : "floor")](this);
});
