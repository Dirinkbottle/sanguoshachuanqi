// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Prototype/Object.js:1
// source line 8, bytecode pc 20
(Object.prototype.method = function(name, func) {
    // source line 19, bytecode pc 13
    (this.prototype[name] = func);
    // source line 22, bytecode pc 15
    return this;
});
// source line 31, bytecode pc 49
Object.method("log", function(tag, msg) {
    var _name, arguments;
    // source line 31, bytecode pc 4
    (arguments = arguments);
    if ((xs.useLog !== true)) {
        // source line 32, bytecode pc 23
        return void 0;
    }
    // source line 33, bytecode pc 44
    (_name = (this.name || "?"));
    if ((arguments.length === 1)) {
        // source line 36, bytecode pc 86
        xs.log(_name, arguments[0]);
    } else {
        // source line 39, bytecode pc 126
        xs.log(((_name + "-") + tag), msg);
    }
});
// source line 46, bytecode pc 78
Object.method("dump", function(tag, infoObj) {
    var _name, arguments;
    // source line 46, bytecode pc 4
    (arguments = arguments);
    if ((xs.useLog !== true)) {
        // source line 47, bytecode pc 23
        return void 0;
    }
    // source line 49, bytecode pc 44
    (_name = (this.name || "?"));
    if ((arguments.length === 1)) {
        // source line 52, bytecode pc 86
        xs.dump(_name, arguments[0]);
    } else {
        // source line 55, bytecode pc 164
        xs.dump.apply(xs.dump, [ ((_name + "-") + tag), infoObj, arguments[2] ]);
    }
});
// source line 66, bytecode pc 107
Object.method("assert", function(ope, msg, param0, param1) {
    var _name;
    // source line 68, bytecode pc 20
    (_name = (this.name || "?"));
    // source line 70, bytecode pc 63
    xs.assert(ope, ((_name + " assert failed:") + msg), param0, param1);
});
// source line 76, bytecode pc 136
Object.method("error", function(msg, param0, param1) {
    var _name;
    // source line 79, bytecode pc 20
    (_name = (this.name || "?"));
    // source line 81, bytecode pc 61
    xs.assert(false, ((_name + " assert failed:") + msg), param0, param1);
});
// source line 87, bytecode pc 165
Object.method("warn", function(tag, msg) {
    var _name, arguments;
    // source line 87, bytecode pc 4
    (arguments = arguments);
    // source line 91, bytecode pc 25
    (_name = (this.name || "?"));
    if ((arguments.length === 1)) {
        // source line 94, bytecode pc 67
        xs.warn(_name, arguments[0]);
    } else {
        // source line 97, bytecode pc 107
        xs.warn(((_name + "-") + tag), msg);
    }
});
// source line 104, bytecode pc 194
Object.method("warnException", function(e) {
    var _name;
    // source line 107, bytecode pc 20
    (_name = (this.name || "?"));
    // source line 109, bytecode pc 45
    xs.warnException(_name, e);
});
// source line 115, bytecode pc 223
Object.method("markFuncBegin", function(funcName, param) {
    var _name;
    if ((xs.useMark !== true)) {
        // source line 116, bytecode pc 18
        return void 0;
    }
    // source line 119, bytecode pc 39
    (_name = (this.name || "?"));
    if (param) {
        // source line 122, bytecode pc 110
        xs.log(((_name + "-") + funcName), ("begin:" + xs.Debug.toDebugString(param)));
    } else {
        // source line 125, bytecode pc 152
        xs.log(((_name + "-") + funcName), "begin");
    }
});
// source line 132, bytecode pc 252
Object.method("markFuncEnd", function(funcName) {
    var _name;
    if ((xs.useMark !== true)) {
        // source line 133, bytecode pc 18
        return void 0;
    }
    // source line 134, bytecode pc 39
    (_name = (this.name || "?"));
    // source line 136, bytecode pc 76
    xs.log(((_name + "-") + funcName), "end");
});
// source line 143, bytecode pc 281
Object.method("Clone", function() {
    var objClone, key;
    if ((this.constructor == Object)) {
        // source line 146, bytecode pc 35
        (objClone = new this.constructor());
    } else {
        // source line 148, bytecode pc 68
        (objClone = new this.constructor(this.valueOf()));
    }
    for (var key in this) {
        if (!((objClone[key] != this[key]))) continue;
        if ((typeof(this[key]) == "object")) {
            // source line 153, bytecode pc 141
            (objClone[key] = this[key].Clone());
        } else {
            // source line 155, bytecode pc 159
            (objClone[key] = this[key]);
        }
    }
    // source line 159, bytecode pc 182
    (objClone.toString = this.toString);
    // source line 160, bytecode pc 197
    (objClone.valueOf = this.valueOf);
    // source line 161, bytecode pc 201
    return objClone;
});
// source line 168, bytecode pc 310
Object.method("firstObj", function() {
    var mObj, x;
    // source line 169, bytecode pc 4
    (mObj = null);
    for (var x in this) {
        // source line 171, bytecode pc 27
        (mObj = this[x]);
        // source line 172, bytecode pc 31
        return mObj;
    }
    // source line 174, bytecode pc 43
    return false;
});
