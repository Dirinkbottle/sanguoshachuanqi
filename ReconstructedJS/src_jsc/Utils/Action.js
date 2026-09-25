// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Utils/Action.js:1
// source line 83, bytecode pc 101
(xs.Utils.Action = {
    log: function() {
},
    dump: function() {
},
    name: "xs.Utils.Action",
    combine: function(arr, funcObj) {
    var _arrSafe, _ret;
    // source line 23, bytecode pc 33
    this.log("combine", ("begin:" + arr.length));
    // source line 24, bytecode pc 62
    this.log("combine", ("begin:" + arr));
    // source line 27, bytecode pc 115
    xs.assert(xs.Utils.isArray(arr), "arr must be array", arr);
    // source line 30, bytecode pc 133
    (_arrSafe = arr.removeEmptys());
    // source line 37, bytecode pc 138
    (_ret = null);
    if (((_arrSafe === null) || (_arrSafe === undefined))) {
        // source line 40, bytecode pc 168
        (_ret = null);
    } else {
        if ((_arrSafe.length === 1)) {
            // source line 43, bytecode pc 197
            (_ret = _arrSafe[0]);
        } else {
            if ((_arrSafe.length === 0)) {
                // source line 47, bytecode pc 222
                (_ret = null);
            } else {
                // source line 51, bytecode pc 254
                xs.assert(funcObj, "need funcObj");
                // source line 55, bytecode pc 285
                (_ret = funcObj.create.apply(funcObj, _arrSafe));
            }
        }
    }
    // source line 58, bytecode pc 319
    this.log("Utils/Action/combine", ("end:" + _arrSafe.length));
    // source line 60, bytecode pc 323
    return _ret;
},
    combineNotNull: function(arr, funcObj) {
    var _ret;
    // source line 67, bytecode pc 26
    xs.assert(arr, "arr err");
    // source line 69, bytecode pc 79
    (_ret = (this.combine(arr, funcObj) || cc.DelayTime.create(0)));
    // source line 73, bytecode pc 83
    return _ret;
},
    combineSequence: function(arr) {
    // source line 77, bytecode pc 27
    return this.combine(arr, cc.Sequence);
},
    combineSpawn: function(arr) {
    // source line 80, bytecode pc 27
    return this.combine(arr, cc.Spawn);
},
    combineSequenceWithTarget: function(arr, target) {
    var _arrSafe, i, _type;
    // source line 85, bytecode pc 17
    (_arrSafe = arr.removeEmptys());
    // source line 87, bytecode pc 22
    (i = 0);
    while ((i < _arrSafe.length)) {
        // source line 88, bytecode pc 45
        (_type = ("" + _arrSafe[i]));
        if ((_type.indexOf("[object CallFunc]") >= 0)) {
        } else {
            // source line 93, bytecode pc 118
            (_arrSafe[i] = cc.TargetedAction.create(target, _arrSafe[i]));
        }
        // source line 87, bytecode pc 133
        i++;
    }
    // source line 97, bytecode pc 179
    return this.combine(_arrSafe, cc.Sequence);
}
});
