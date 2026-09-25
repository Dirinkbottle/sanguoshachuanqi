// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Cocos2d-x/main.debug.js:1
// source line 9, bytecode pc 0
var files;
// source line 15, bytecode pc 5
var i;
// source line 9, bytecode pc 34
(files = [ "MoonWarriors-jsb.js" ]);
if ((typeof(startDebugger) !== "undefined")) {
    // source line 11, bytecode pc 74
    cc.log("**** will start debugger ****");
    // source line 12, bytecode pc 97
    startDebugger(this, files);
} else {
    // source line 14, bytecode pc 125
    cc.log("**** no debugger loaded ****");
    for (var i in files) {
        // source line 16, bytecode pc 179
        require(files[i]);
    }
}
