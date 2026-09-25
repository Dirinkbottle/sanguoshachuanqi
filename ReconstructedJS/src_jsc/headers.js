// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/headers.js:1
// source line 33, bytecode pc 0
var xs;
// source line 109, bytecode pc 5
var i;
// source line 30, bytecode pc 32
cc.log("main headers.js begin");
// source line 33, bytecode pc 60
(xs = (xs || {}));
// source line 36, bytecode pc 81
require("cfg.js");
// source line 45, bytecode pc 186
xsc.dump("main info", {
    release: xs.release,
    useObfuscate: xs.useObfuscate,
    version: xs.resVersion,
    loadTest: xs.loadTest,
    useAudio: xs.useAudio
});
// source line 101, bytecode pc 346
(xs.appFiles = [
    "Libs/headers.js",
    "Utils/headers.js",
    "Cfg/headers.js",
    "Debug/headers.js",
    "Prototype/headers.js",
    "Factorys/headers.js",
    "Tools/headers.js",
    "AnySdk/headers.js",
    "EasySdk/headers.js",
    "Models/headers.js",
    "Profile/headers.js",
    "Views/headers.js",
    "Audio/headers.js",
    "Skill/headers.js",
    "Scene/headers.js",
    "Guide/headers.js"
]);
// source line 107, bytecode pc 367
require("cpp2jsb.js");
// source line 109, bytecode pc 379
(i = 0);
while ((i < xs.appFiles.length)) {
    if (!xs.useObfuscate) {
        // source line 111, bytecode pc 433
        require(xs.appFiles[i]);
    }
    // source line 109, bytecode pc 462
    (i = (+i + 1));
}
// source line 119, bytecode pc 511
require("debug.js");
// source line 122, bytecode pc 534
cc.log("main headers.js end");
