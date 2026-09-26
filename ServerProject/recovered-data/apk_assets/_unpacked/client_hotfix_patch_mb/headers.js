cc.log("main headers.js begin");

var xs = xs || {};
require("cfg.js");

xsc.dump("main info", {
    release: xs.release,
    useObfuscate: xs.useObfuscate,
    version: xs.resVersion,
    loadTest: xs.loadTest,
    useAudio: xs.useAudio
});

xs.appFiles = [
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
];

require("cpp2jsb.js");
for (var i = 0; i < xs.appFiles.length; i++) {
    if (!xs.useObfuscate) {
        require(xs.appFiles[i]);
    }
}
require("debug.js");
require("Patch/sgscq_legacy_text.js");
require("Patch/sgscq_hotfix.js");

cc.log("main headers.js end");
