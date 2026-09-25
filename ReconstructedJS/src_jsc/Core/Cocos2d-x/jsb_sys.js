// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Cocos2d-x/jsb_sys.js:1
// source line 5, bytecode pc 0
var sys;
// source line 5, bytecode pc 32
(sys = (sys || {}));
// source line 44, bytecode pc 194
Object.defineProperties(sys, {
    capabilities: {
        get: function() {
    var capabilities;
    // source line 11, bytecode pc 15
    (capabilities = { opengl: true });
    if ((sys.platform == "mobile")) {
        // source line 13, bytecode pc 46
        (capabilities.accelerometer = true);
        // source line 14, bytecode pc 56
        (capabilities.touches = true);
    } else {
        // source line 17, bytecode pc 71
        (capabilities.keyboard = true);
        // source line 18, bytecode pc 81
        (capabilities.mouse = true);
    }
    // source line 20, bytecode pc 85
    return capabilities;
},
        enumerable: true,
        configurable: true
    },
    os: {
        get: function() {
    // source line 27, bytecode pc 14
    return __getOS();
},
        enumerable: true,
        configurable: true
    },
    platform: {
        get: function() {
    // source line 34, bytecode pc 14
    return __getPlatform();
},
        enumerable: true,
        configurable: true
    },
    version: {
        get: function() {
    // source line 41, bytecode pc 14
    return __getVersion();
},
        enumerable: true,
        configurable: true
    }
});
// source line 50, bytecode pc 210
(sys.garbageCollect = function() {
    // source line 51, bytecode pc 16
    __jsc__.garbageCollect();
});
// source line 55, bytecode pc 226
(sys.dumpRoot = function() {
    // source line 56, bytecode pc 16
    __jsc__.dumpRoot();
});
// source line 60, bytecode pc 242
(sys.restartVM = function() {
    // source line 61, bytecode pc 14
    __restartVM();
});
