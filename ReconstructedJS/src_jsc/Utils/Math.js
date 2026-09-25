// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Utils/Math.js:1
// source line 40, bytecode pc 137
(xs.Utils.Math = (xs.Utils.Math || {
    log: function() {
},
    dump: function() {
},
    bound_min: function(value, min, max) {
    if ((value < min)) {
        // source line 18, bytecode pc 15
        return min;
    }
    // source line 20, bytecode pc 19
    return value;
},
    bound_max: function(value, min, max) {
    if ((value > max)) {
        // source line 24, bytecode pc 15
        return max;
    }
    // source line 26, bytecode pc 19
    return value;
},
    bound_min_max: function(value, min, max) {
    if ((value < min)) {
        // source line 30, bytecode pc 15
        return min;
    }
    if ((value > max)) {
        // source line 33, bytecode pc 31
        return max;
    }
    // source line 35, bytecode pc 35
    return value;
},
    min: Math.min,
    abs: Math.abs,
    random: Math.random
}));
