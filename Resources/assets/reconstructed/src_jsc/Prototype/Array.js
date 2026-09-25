// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Prototype/Array.js:1
// source line 1, bytecode pc 28
Array.method("hasItemString", function() {
    var i;
    // source line 3, bytecode pc 4
    (i = 0);
    while ((i < this.length)) {
        if (xs.Utils.isString(this[i])) {
            // source line 5, bytecode pc 44
            return true;
        }
        // source line 3, bytecode pc 58
        (i = (+i + 1));
    }
    // source line 8, bytecode pc 77
    return false;
});
// source line 12, bytecode pc 57
Array.method("insert", function(index, item) {
    // source line 13, bytecode pc 22
    this.splice(index, 0, item);
});
// source line 16, bytecode pc 86
Array.method("hasItem", function(input) {
    var i;
    // source line 18, bytecode pc 4
    (i = 0);
    while ((i < this.length)) {
        if ((this[i] === input)) {
            // source line 20, bytecode pc 26
            return true;
        }
        // source line 18, bytecode pc 40
        (i = (+i + 1));
    }
    // source line 23, bytecode pc 59
    return false;
});
// source line 27, bytecode pc 115
Array.method("removeEmptys", function() {
    var _ret, i;
    // source line 30, bytecode pc 8
    (_ret = []);
    // source line 32, bytecode pc 13
    (i = 0);
    while ((i < this.length)) {
        if (((this[i] !== null) && (this[i] !== undefined))) {
            // source line 34, bytecode pc 69
            _ret.push(this[i]);
        }
        // source line 32, bytecode pc 83
        (i = (+i + 1));
    }
    // source line 38, bytecode pc 104
    return _ret;
});
// source line 42, bytecode pc 144
Array.method("inArray", function(val, type) {
    var i;
    // source line 44, bytecode pc 13
    (type = (type || false));
    // source line 45, bytecode pc 18
    (i = 0);
    while ((i < this.length)) {
        if (type) {
            if ((val === this[i])) {
                // source line 48, bytecode pc 48
                return true;
            }
        } else {
            if ((val == this[i])) {
                // source line 52, bytecode pc 69
                return true;
            }
        }
        // source line 45, bytecode pc 83
        (i = (+i + 1));
    }
    // source line 56, bytecode pc 102
    return false;
});
