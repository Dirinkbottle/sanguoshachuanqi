// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Utils/LocalStore.js:1
// source line 16, bytecode pc 72
(xs.Utils.LocalStore = (xs.Utils.LocalStore || {
    name: "xs.Utils.LocalStore ",
    setItem: function(key, value) {
    // source line 14, bytecode pc 29
    sys.localStorage.setItem(key, value);
},
    getItem: function(key) {
    // source line 18, bytecode pc 25
    return sys.localStorage.getItem(key);
}
}));
