// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Debug/Debug.js:1
// source line 19, bytecode pc 31
(xs.Debug = (xs.Debug || function() {
}));
// source line 22, bytecode pc 52
(xs.Debug.dumpNode = function(node) {
    var _childs, i;
    // source line 23, bytecode pc 22
    xs.log("-------------------------------");
    // source line 24, bytecode pc 40
    (_childs = node.getChildren());
    // source line 25, bytecode pc 45
    (i = 0);
    while ((i < _childs.length)) {
        // source line 26, bytecode pc 106
        xs.log(("_childs[i]." + _childs[i].name), _childs[i].getZOrder());
        // source line 25, bytecode pc 121
        i++;
    }
    // source line 28, bytecode pc 162
    xs.log("-------------------------------");
});
// source line 31, bytecode pc 73
(xs.Debug.markFuncBegin = function(funcName, who, param) {
    var _name;
    // source line 32, bytecode pc 22
    (_name = (who.name || "?"));
    if (param) {
        // source line 35, bytecode pc 93
        xs.log(((_name + "-") + funcName), ("begin:" + xs.Debug.toDebugString(param)));
    } else {
        // source line 38, bytecode pc 135
        xs.log(((_name + "-") + funcName), "begin");
    }
});
// source line 43, bytecode pc 94
(xs.Debug.markFuncEnd = function(funcName, who) {
    var _name;
    // source line 44, bytecode pc 22
    (_name = (who.name || "?"));
    // source line 46, bytecode pc 59
    xs.log(((_name + "-") + funcName), "end");
});
// source line 50, bytecode pc 115
(xs.Debug.testBegin = function() {
    // source line 52, bytecode pc 36
    (xs.Debug._testbegin = new Date().getTime());
    // source line 53, bytecode pc 53
    (xs.Debug._testIsBegin = true);
});
// source line 56, bytecode pc 136
(xs.Debug.testEnd = function(tag) {
    // source line 57, bytecode pc 36
    (xs.Debug._testEnd = new Date().getTime());
    // source line 58, bytecode pc 77
    xs.assert((xs.Debug._testIsBegin === true), "xs.Debug._testIsBegin need");
    // source line 59, bytecode pc 174
    xs.log(tag, ((((xs.Debug._testEnd + " - ") + xs.Debug._testbegin) + " : ") + (xs.Debug._testEnd - xs.Debug._testbegin)));
    // source line 60, bytecode pc 187
    this.testBegin();
});
// source line 63, bytecode pc 157
(xs.Debug.testBeginByTag = function(tag) {
    // source line 64, bytecode pc 31
    xs.Debug.log("testBeginByTag-begin", tag);
    // source line 65, bytecode pc 73
    (xs.Debug[("_testbegin" + tag)] = new Date().getTime());
    // source line 66, bytecode pc 95
    (xs.Debug[("_testIsBegin" + tag)] = true);
});
// source line 69, bytecode pc 178
(xs.Debug.testEndByTag = function(tag) {
    var _endTime, _beginTime;
    // source line 70, bytecode pc 24
    (_endTime = new Date().getTime());
    // source line 71, bytecode pc 48
    (_beginTime = xs.Debug[("_testbegin" + tag)]);
    // source line 72, bytecode pc 94
    xs.assert((xs.Debug[("_testIsBegin" + tag)] === true), "xs.Debug._testIsBegin need");
    // source line 73, bytecode pc 155
    xs.log(("testBeginByTag-end" + tag), ((((("" + _endTime) + " - ") + _beginTime) + " : ") + (_endTime - _beginTime)));
    // source line 74, bytecode pc 172
    this.testBeginByTag(tag);
});
// source line 79, bytecode pc 199
(xs.Debug.printByte = function(tag, str) {
    var i;
    // source line 80, bytecode pc 26
    cc.log((tag + "\n"));
    // source line 81, bytecode pc 31
    (i = 0);
    while ((i < str.length)) {
        // source line 82, bytecode pc 62
        cc.log(str[i]);
        // source line 81, bytecode pc 77
        i++;
    }
    // source line 84, bytecode pc 118
    cc.log("\n");
});
// source line 88, bytecode pc 220
(xs.Debug.log = function(usrTag, msg) {
    var logstring, _tag, arguments;
    // source line 88, bytecode pc 4
    (arguments = arguments);
    if ((arguments.length === 1)) {
        // source line 91, bytecode pc 56
        (logstring = ((("" + xs.Cfg.Tag) + " : ") + arguments[0]));
        // source line 92, bytecode pc 77
        cc.log(logstring);
        // source line 94, bytecode pc 108
        xs.Debug.Logger.v(logstring);
    } else {
        // source line 98, bytecode pc 131
        (_tag = (usrTag || ""));
        // source line 99, bytecode pc 160
        (_tag = ((xs.Cfg.Tag + "-") + _tag));
        // source line 100, bytecode pc 183
        (logstring = ((("\n" + _tag) + " : ") + msg));
        // source line 101, bytecode pc 204
        cc.log(logstring);
        // source line 103, bytecode pc 235
        xs.Debug.Logger.v(logstring);
    }
});
// source line 107, bytecode pc 241
(xs.Debug.info = function(usrTag, msg) {
    var logstring, _tag, arguments;
    // source line 107, bytecode pc 4
    (arguments = arguments);
    if ((arguments.length === 1)) {
        // source line 110, bytecode pc 56
        (logstring = ((("" + xs.Cfg.Tag) + " : ") + arguments[0]));
        // source line 111, bytecode pc 77
        cc.log(logstring);
        // source line 112, bytecode pc 108
        xs.Debug.Logger.i(logstring);
    } else {
        // source line 114, bytecode pc 131
        (_tag = (usrTag || ""));
        // source line 115, bytecode pc 160
        (_tag = ((xs.Cfg.Tag + "-") + _tag));
        // source line 116, bytecode pc 183
        (logstring = ((("\n" + _tag) + " : ") + msg));
        // source line 117, bytecode pc 204
        cc.log(logstring);
        // source line 118, bytecode pc 235
        xs.Debug.Logger.i(logstring);
    }
});
// source line 122, bytecode pc 262
(xs.Debug.warnException = function(tag, e) {
    // source line 123, bytecode pc 46
    xs.warn(tag, xs.Debug.toJsonString(e));
    // source line 124, bytecode pc 120
    xs.Views.Dialog.ErrorDialog.show((((tag + "-") + xs.Debug.toJsonString(e)) + "\n"));
    // source line 126, bytecode pc 183
    xs.Tools.Statistic.reportLog(((tag + "-") + xs.Debug.toJsonString(e)));
    if ((xs.release !== true)) {
        // source line 129, bytecode pc 204
        throw e;
    }
});
// source line 139, bytecode pc 283
(xs.Debug.logExt = function(baseTag, usrTag, msg) {
    var arguments;
    // source line 139, bytecode pc 4
    (arguments = arguments);
    if ((arguments.length <= 2)) {
        // source line 142, bytecode pc 54
        xs.Debug.log(arguments[0], arguments[1]);
    } else {
        // source line 144, bytecode pc 99
        xs.Debug.log(((baseTag + "-") + usrTag), msg);
    }
});
// source line 148, bytecode pc 304
(xs.Debug.warn = function(usrTag, msg) {
    // source line 149, bytecode pc 45
    xs.Debug.logExt(xs.Cfg.TagWarn, usrTag, msg);
    // source line 151, bytecode pc 86
    xs.Debug.Logger.w(((usrTag + "-") + msg));
});
// source line 155, bytecode pc 325
(xs.Debug.err = function(usrTag, msg) {
    // source line 156, bytecode pc 45
    xs.Debug.logExt(xs.Cfg.TagErr, usrTag, msg);
    // source line 158, bytecode pc 86
    xs.Debug.Logger.e(((usrTag + "-") + msg));
});
// source line 161, bytecode pc 346
(xs.Debug.dumpAllGet = function(obj) {
    var _tmp, _isFunc, _ret;
    for (var _tmp in obj) {
        // source line 166, bytecode pc 48
        (_isFunc = xs.Utils.isFunc(obj[_tmp]));
        // source line 172, bytecode pc 53
        (_ret = null);
        if (!(((_isFunc === true) && (_tmp.indexOf("get") === 0)))) continue;
        // source line 174, bytecode pc 108
        (_ret = obj[_tmp]());
        // source line 175, bytecode pc 148
        xs.log(((obj.name + "-") + _tmp), _ret);
    }
});
// source line 182, bytecode pc 367
(xs.Debug.toJsonString = function(obj, maxLevel, level) {
    var _SPACE, _lastPre, i, _pre, _ret, _isEmptyObj, _tmp, objValue, _type;
    if ((maxLevel === undefined)) {
        // source line 188, bytecode pc 19
        (maxLevel = 10);
    }
    if ((level === undefined)) {
        // source line 192, bytecode pc 38
        (level = 0);
    }
    if ((level === maxLevel)) {
        // source line 197, bytecode pc 66
        return (("" + obj) + "???");
    }
    // source line 204, bytecode pc 75
    (_SPACE = "    ");
    if ((obj === null)) {
        // source line 208, bytecode pc 101
        return (("\"" + obj) + "\"");
    }
    if ((typeof(obj) === "string")) {
        // source line 212, bytecode pc 132
        return (("\"" + obj) + "\"");
    } else {
        if ((typeof(obj) === "function")) {
            // source line 214, bytecode pc 158
            return "Function";
        } else {
            if ((typeof(obj) === "native code")) {
                // source line 216, bytecode pc 184
                return "native code";
            } else {
                if ((typeof(obj) !== "object")) {
                    // source line 222, bytecode pc 214
                    return ("" + obj);
                } else {
                    // source line 230, bytecode pc 228
                    (_lastPre = "");
                    // source line 232, bytecode pc 233
                    (i = 0);
                    while ((i < level)) {
                        // source line 233, bytecode pc 250
                        (_lastPre = (_lastPre + _SPACE));
                        // source line 232, bytecode pc 265
                        i++;
                    }
                    // source line 235, bytecode pc 289
                    (_pre = (_lastPre + _SPACE));
                    // source line 237, bytecode pc 298
                    (_ret = "{\n");
                    // source line 240, bytecode pc 303
                    (_isEmptyObj = true);
                    for (var _tmp in obj) {
                        if ((i === 0)) {
                            // source line 249, bytecode pc 344
                            i++;
                        }
                        if (!obj.hasOwnProperty(_tmp)) {
                        } else {
                            // source line 256, bytecode pc 378
                            (_isEmptyObj = false);
                            // source line 260, bytecode pc 421
                            (objValue = xs.Debug.toJsonString(obj[_tmp], maxLevel, (level + 1)));
                            if ((objValue.indexOf("function") >= 0)) {
                            }
                            if ((objValue === "Function")) {
                            }
                            // source line 272, bytecode pc 473
                            (_ret = (_ret + _pre));
                            if (!obj.hasOwnProperty(_tmp)) {
                                // source line 274, bytecode pc 510
                                (_ret = (_ret + "prototype."));
                            }
                            // source line 280, bytecode pc 527
                            (_type = typeof(obj[_tmp]));
                            // source line 282, bytecode pc 538
                            (_ret = (_ret + _tmp));
                            // source line 283, bytecode pc 555
                            (_ret = (_ret + ("[" + _type)));
                            // source line 284, bytecode pc 568
                            (_ret = (_ret + "]"));
                            // source line 285, bytecode pc 581
                            (_ret = (_ret + " : "));
                            // source line 286, bytecode pc 592
                            (_ret = (_ret + objValue));
                            // source line 287, bytecode pc 605
                            (_ret = (_ret + " ,\n"));
                        }
                    }
                    // source line 292, bytecode pc 630
                    (_ret = (_ret + (_lastPre + "}")));
                    if (_isEmptyObj) {
                        // source line 295, bytecode pc 647
                        (_ret = "{}");
                    }
                    // source line 298, bytecode pc 651
                    return _ret;
                }
            }
        }
    }
});
// source line 305, bytecode pc 398
(xs.Debug.toDebugString = xs.Debug.toJsonString);
// source line 309, bytecode pc 419
(xs.Debug.dump = function(usrTag, obj, _maxLevel) {
    // source line 311, bytecode pc 55
    xs.Debug.log(usrTag, xs.Debug.toDebugString(obj, _maxLevel));
});
// source line 316, bytecode pc 436
(xs.Debug.assertCount = 0);
// source line 317, bytecode pc 457
(xs.Debug.assert = function(expression, msg, info0, info1) {
    var _FunctionStack, _printLastCallStack, params;
    // source line 330, bytecode pc 8
    (_FunctionStack = function() {
    var str, err, stackArr, stack;
    // source line 332, bytecode pc 8
    (str = "");
    // source line 333, bytecode pc 32
    (err = new Error(msg));
    // source line 334, bytecode pc 61
    (stackArr = err.stack.split("\n"));
    // source line 335, bytecode pc 76
    stackArr.shift();
    // source line 336, bytecode pc 100
    (stack = stackArr.join("\n"));
    // source line 337, bytecode pc 109
    (str = "-----STACK-----:");
    // source line 338, bytecode pc 126
    (str = (str + ("\n" + stack)));
    // source line 340, bytecode pc 130
    return str;
});
    // source line 342, bytecode pc 17
    (_printLastCallStack = function() {
    var count, fun, _funcStr, arguments;
    // source line 342, bytecode pc 4
    (arguments = arguments);
    // source line 344, bytecode pc 6
    return void 0;
    // source line 346, bytecode pc 11
    (count = 0);
    // source line 347, bytecode pc 23
    (fun = arguments.callee);
    do {
        if (((count >= 3) && (count < 10))) {
            // source line 354, bytecode pc 62
            (_funcStr = ("" + fun));
            // source line 357, bytecode pc 93
            xs.warn(("stack-" + count), _funcStr);
        } else {
            if ((count >= 10)) {
                break;
            }
        }
        // source line 364, bytecode pc 136
        (fun = fun.arguments.callee.caller);
        // source line 366, bytecode pc 151
        count++;
    } while (fun);
});
    if (((expression === null) || ((expression === undefined) || (expression === false)))) {
        // source line 398, bytecode pc 150
        (params = (((("\n" + "------------err msg------------") + "\n") + xs.Debug.toJsonString({ expression: expression, msg: msg, info0: info0, info1: info1 })) + _FunctionStack()));
        // source line 401, bytecode pc 177
        xs.warn("assert", params);
        // source line 404, bytecode pc 219
        xs.Views.Dialog.ErrorDialog.show((params + "\n"));
        if (xs.cfg_use_report_log) {
            // source line 410, bytecode pc 265
            xs.Tools.Statistic.reportLog(params);
        }
        if ((xs.assertExit !== true)) {
            // source line 413, bytecode pc 284
            return void 0;
        }
        // source line 416, bytecode pc 311
        xs.Utils.Sys.exit();
    }
});
// source line 421, bytecode pc 478
(xs.Debug.emptyFunc = function() {
});
