// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Prototype/String.js:1
// source line 13, bytecode pc 28
String.method("convWithArgs", function(argsArray) {
    var _ret, i, _arg;
    // source line 14, bytecode pc 50
    xs.assert((xs.Utils.isArray(argsArray) === true), "argsArray must be array");
    // source line 17, bytecode pc 55
    (_ret = this);
    if ((_ret == "")) {
        // source line 21, bytecode pc 78
        (_ret = argsArray[0]);
    } else {
        // source line 24, bytecode pc 88
        (i = 0);
        while ((i < argsArray.length)) {
            // source line 25, bytecode pc 105
            (_arg = argsArray[i]);
            // source line 26, bytecode pc 139
            (_ret = _ret.replace(("$" + (i + 1)), _arg));
            // source line 24, bytecode pc 154
            i++;
        }
        if ((_ret.indexOf("$") >= 0)) {
            // source line 30, bytecode pc 234
            xs.warn("String", (("convWithArgs need more args:" + this) + argsArray));
        }
    }
    // source line 40, bytecode pc 238
    return _ret;
});
// source line 43, bytecode pc 57
String.method("toWordBreak", function() {
    var _ret, i;
    // source line 44, bytecode pc 8
    (_ret = "");
    // source line 46, bytecode pc 13
    (i = 0);
    while ((i < this.length)) {
        // source line 47, bytecode pc 43
        (_ret = (_ret + this.charAt(i)));
        if ((i !== (this.length - 1))) {
            // source line 50, bytecode pc 73
            (_ret = (_ret + "\n"));
        }
        // source line 46, bytecode pc 88
        i++;
    }
    // source line 54, bytecode pc 108
    return _ret;
});
// source line 58, bytecode pc 86
String.method("toJson", function() {
    var arguments;
    // source line 58, bytecode pc 10
    (arguments = arguments);
    // source line 59, bytecode pc 30
    return eval(this);
});
// source line 62, bytecode pc 115
String.method("removeSlash", function() {
    /* TODO_BYTECODE pc=9 opcode=regexp reason=regexp_object_literal_not_dumped */
    // source line 63, bytecode pc 24
    return this.replace(undefined /* TODO_BYTECODE pc=9 opcode=regexp reason=regexp_object_literal_not_dumped */, "");
});
