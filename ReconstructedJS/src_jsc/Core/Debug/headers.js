// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Debug/headers.js:1
// source line 82, bytecode pc 81
(xs.Core.Debug = {
    log: function(tag, obj) {
    // source line 8, bytecode pc 30
    cc.log(((tag + ":") + obj));
},
    warn: function(tag, obj) {
    // source line 12, bytecode pc 36
    cc.log((((tag + "(warning)") + ":") + obj));
},
    dump: function(tag, obj) {
    // source line 16, bytecode pc 32
    cc.log((("--- dump " + tag) + " ---"));
    if ((typeof(obj) == "string")) {
        // source line 19, bytecode pc 68
        cc.log(obj);
    } else {
        // source line 22, bytecode pc 94
        cc.dump(obj);
    }
    // source line 25, bytecode pc 117
    cc.log("------------------------");
},
    assert: function(expression, msg, info0, info1) {
    var _createLastCallStackString, params;
    // source line 31, bytecode pc 8
    (_createLastCallStackString = function() {
    var _ret, count, fun, _funcStr, arguments;
    // source line 31, bytecode pc 4
    (arguments = arguments);
    // source line 33, bytecode pc 10
    return "_createLastCallStackString 111";
    // source line 35, bytecode pc 19
    (_ret = "");
    // source line 37, bytecode pc 24
    (count = 0);
    // source line 38, bytecode pc 36
    (fun = arguments.callee);
    do {
        if (((count >= 3) && (count < 10))) {
            // source line 44, bytecode pc 75
            (_funcStr = ("" + fun));
            // source line 45, bytecode pc 86
            (_ret = (_ret + _funcStr));
        } else {
            if ((count >= 10)) {
                break;
            }
        }
        // source line 52, bytecode pc 129
        (fun = fun.arguments.callee.caller);
        // source line 54, bytecode pc 143
        (count = (+count + 1));
    } while (fun);
    // source line 58, bytecode pc 156
    return _ret;
});
    if (((expression === null) || ((expression === undefined) || (expression === false)))) {
        // source line 65, bytecode pc 62
        (params = ("\n------------call stack ------------\n" + _createLastCallStackString()));
        // source line 67, bytecode pc 94
        xsc.Debug.log("call stack", params);
        // source line 68, bytecode pc 126
        xsc.Debug.log("assert msg", msg);
        // source line 69, bytecode pc 158
        xsc.Debug.dump("info0", info0);
        // source line 70, bytecode pc 190
        xsc.Debug.dump("info1", info1);
    }
},
    error: function(msg, info0, info1) {
    // source line 77, bytecode pc 35
    xsc.Debug.assert(false, msg, info0, info1);
},
    warnException: function(tag, e) {
    // source line 83, bytecode pc 24
    xsc.warn(tag, e);
    if ((xs.release !== true)) {
        // source line 85, bytecode pc 45
        throw e;
    }
}
});
