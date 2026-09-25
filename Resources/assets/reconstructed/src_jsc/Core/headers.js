// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/headers.js:1
// source line 85, bytecode pc 0
var xsc;
if ((!xs.Core || xs.Core)) {
    // source line 13, bytecode pc 57
    require("Core/Cocos2d-x/jsb.js");
    // source line 55, bytecode pc 147
    (xs.Core = {
    require: function(filesArray, global) {
    var i;
    // source line 23, bytecode pc 4
    (i = 0);
    while ((i < filesArray.length)) {
        if (!xs.useObfuscate) {
            // source line 25, bytecode pc 53
            require(filesArray[i], global);
        }
        // source line 23, bytecode pc 67
        (i = (+i + 1));
    }
},
    Cpp2Jsb: {
        registerMap: { "default": {} },
        registerCallBack: function(modelName, funcName, callback) {
    if (!this.registerMap[modelName]) {
        // source line 41, bytecode pc 32
        (this.registerMap[modelName] = {});
    }
    // source line 44, bytecode pc 50
    (this.registerMap[modelName][funcName] = callback);
},
        registerCallBackByFuncName: function(arrayNames, callback) {
    var i;
    // source line 48, bytecode pc 4
    (i = 0);
    while ((i < arrayNames.length)) {
        // source line 49, bytecode pc 41
        this.registerCallBack("default", arrayNames[i], callback);
        // source line 48, bytecode pc 55
        (i = (+i + 1));
    }
},
        onCmnMsg: function(moduleName, funcName, other1, other2) {
    var _func, arguments;
    // source line 55, bytecode pc 4
    (arguments = arguments);
    if (this.registerMap[moduleName]) {
        // source line 61, bytecode pc 37
        (_func = this.registerMap[moduleName][funcName]);
        if (_func) {
            // source line 63, bytecode pc 66
            _func.apply(null, arguments);
        } else {
            // source line 66, bytecode pc 105
            xsc.error("funcName err", arguments, this.registerMap);
        }
    } else {
        // source line 70, bytecode pc 144
        xsc.error("moduleName err", arguments, this.registerMap);
    }
}
    }
});
    // source line 78, bytecode pc 163
    (xs.onCpp2Jsb_Core = function() {
    var arguments;
    // source line 78, bytecode pc 4
    (arguments = arguments);
    // source line 80, bytecode pc 46
    xsc.Cpp2Jsb.onCmnMsg.apply(xsc.Cpp2Jsb, arguments);
});
    // source line 85, bytecode pc 195
    (xsc = (xsc || xs.Core));
    // source line 87, bytecode pc 216
    require("Core/Constant.js");
    // source line 88, bytecode pc 237
    require("Core/CoreString.js");
    // source line 89, bytecode pc 258
    require("Core/Utils/headers.js");
    // source line 90, bytecode pc 279
    require("Core/Tools/headers.js");
    // source line 91, bytecode pc 300
    require("Core/Debug/headers.js");
    // source line 92, bytecode pc 321
    require("Core/Factorys/headers.js");
    // source line 93, bytecode pc 342
    require("Core/Scene/headers.js");
    // source line 94, bytecode pc 363
    require("Core/alias.js");
}
