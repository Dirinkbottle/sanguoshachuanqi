// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Utils/headers.js:1
// source line 11, bytecode pc 32
(xs.Utils = (xs.Utils || {}));
// source line 13, bytecode pc 53
(xs.Utils.require = function(filesArray, global) {
    var i;
    // source line 15, bytecode pc 4
    (i = 0);
    while ((i < filesArray.length)) {
        // source line 16, bytecode pc 41
        cc.log(("xs utils level require:" + filesArray[i]));
        if (!xs.useObfuscate) {
            // source line 18, bytecode pc 84
            require(filesArray[i], global);
        }
        // source line 15, bytecode pc 99
        i++;
    }
});
// source line 45, bytecode pc 234
xs.Utils.require([
    "Utils/buckets.js",
    "Utils/common.js",
    "Utils/Math.js",
    "Utils/Sys.js",
    "Utils/Notify.js",
    "Utils/Node.js",
    "Utils/UI.js",
    "Utils/Net.js",
    "Utils/Action.js",
    "Utils/LocalStore.js",
    "Utils/CfgReader.js",
    "Utils/Md5.js",
    "Utils/Base64.js",
    "Utils/Rc4.js",
    "Utils/Statistic.js",
    "Utils/FileSys.js",
    "Utils/alias.js"
]);
