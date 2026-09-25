// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Utils/Statistic.js:1
// source line 64, bytecode pc 124
(xs.Utils.Statistic = (xs.Utils.Statistic || cc.Class.extend({
    name: "Statistic",
    init: function(param) {
    // source line 7, bytecode pc 27
    (this._priorityCommandQueue = new buckets.PriorityQueue(function(ElementA, ElementB) {
    if ((ElementA.priority < ElementB.priority)) {
        // source line 10, bytecode pc 24
        return -1;
    }
    if ((ElementA.priority > ElementB.property)) {
        // source line 13, bytecode pc 48
        return 1;
    }
    // source line 16, bytecode pc 50
    return 0;
}));
    // source line 19, bytecode pc 49
    (this._dictionaryKeyAndSendFunc = new buckets.Dictionary());
    // source line 21, bytecode pc 51
    return true;
},
    add: function(priority, funckey, params) {
    var _Element;
    if ((typeof(priority) != "number")) {
        // source line 27, bytecode pc 37
        xs.warn("statistic add priority uncorrect");
        // source line 28, bytecode pc 39
        return void 0;
    }
    if (((typeof(params) != "string") || !params)) {
        // source line 31, bytecode pc 87
        xs.warn("statistic add priority uncorrect");
        // source line 32, bytecode pc 89
        return void 0;
    }
    // source line 34, bytecode pc 99
    (_Element = {});
    // source line 35, bytecode pc 133
    (_Element.priority = xs.Utils.parseIntSafe(priority));
    // source line 37, bytecode pc 145
    (_Element.params = params);
    // source line 38, bytecode pc 157
    (_Element.key = funckey);
    // source line 39, bytecode pc 179
    this._priorityCommandQueue.add(_Element);
},
    sendToServer: function() {
    var _Element, _func;
    while (this._priorityCommandQueue.size()) {
        // source line 47, bytecode pc 26
        (_Element = this._priorityCommandQueue.dequeue());
        // source line 49, bytecode pc 56
        (_func = this._dictionaryKeyAndSendFunc.get(_Element.key));
        if ((typeof(_func) == "function")) {
            // source line 54, bytecode pc 89
            _func(_Element.params);
        }
    }
},
    registerKeyAndSendFunc: function(key, func) {
    if ((!key || (typeof(key) != "string"))) {
        // source line 59, bytecode pc 26
        return void 0;
    }
    if (((func == null) || (typeof(func) != "function"))) {
        // source line 60, bytecode pc 54
        return void 0;
    }
    // source line 61, bytecode pc 80
    this._dictionaryKeyAndSendFunc.set(key, func);
},
    addAndSend: function(funckey, params) {
    // source line 66, bytecode pc 22
    this.add(0, funckey, params);
    // source line 67, bytecode pc 35
    this.sendToServer();
}
})));
// source line 72, bytecode pc 150
(xs.Utils.Statistic.create = function(param) {
    var obj;
    // source line 73, bytecode pc 23
    (obj = new xs.Utils.Statistic());
    if ((obj && obj.init(param))) {
        // source line 75, bytecode pc 59
        return obj;
    }
    // source line 77, bytecode pc 82
    xs.log("Create xs.Utils.Statistic error");
    // source line 78, bytecode pc 84
    return null;
});
// source line 81, bytecode pc 176
(xs.Utils.Statistic.getInstance = function() {
    var param;
    if ((xs.Utils.Statistic._instance == null)) {
        // source line 83, bytecode pc 36
        (param = {});
        // source line 84, bytecode pc 87
        (xs.Utils.Statistic._instance = xs.Utils.Statistic.create(param));
    }
    // source line 86, bytecode pc 108
    return xs.Utils.Statistic._instance;
});
// source line 95, bytecode pc 226
xs.Utils.Statistic.getInstance().registerKeyAndSendFunc("Umeng_startLevel", function(params) {
    // source line 99, bytecode pc 54
    xs.JsbConnecter.getInstance().invoke("Statistic", "statistic", ("UMENG|startLevel|" + params));
});
// source line 104, bytecode pc 276
xs.Utils.Statistic.getInstance().registerKeyAndSendFunc("Umeng_finishLevel", function(params) {
    // source line 108, bytecode pc 54
    xs.JsbConnecter.getInstance().invoke("Statistic", "statistic", ("UMENG|finishLevel|" + params));
});
// source line 111, bytecode pc 326
xs.Utils.Statistic.getInstance().registerKeyAndSendFunc("Umeng_failLevel", function(params) {
    // source line 115, bytecode pc 54
    xs.JsbConnecter.getInstance().invoke("Statistic", "statistic", ("UMENG|failLevel|" + params));
});
// source line 118, bytecode pc 376
xs.Utils.Statistic.getInstance().registerKeyAndSendFunc("Umeng_setUserLevel", function(params) {
    // source line 119, bytecode pc 54
    xs.JsbConnecter.getInstance().invoke("Statistic", "statistic", ("UMENG|setUserLevel|" + params));
});
// source line 122, bytecode pc 426
xs.Utils.Statistic.getInstance().registerKeyAndSendFunc("Umeng_setUserInfo", function(params) {
    // source line 123, bytecode pc 54
    xs.JsbConnecter.getInstance().invoke("Statistic", "statistic", ("UMENG|setUserInfo|" + params));
});
// source line 126, bytecode pc 476
xs.Utils.Statistic.getInstance().registerKeyAndSendFunc("Umeng_buy", function(params) {
    // source line 127, bytecode pc 54
    xs.JsbConnecter.getInstance().invoke("Statistic", "statistic", ("UMENG|buy|" + params));
});
// source line 130, bytecode pc 526
xs.Utils.Statistic.getInstance().registerKeyAndSendFunc("Umeng_event", function(params) {
    // source line 131, bytecode pc 54
    xs.JsbConnecter.getInstance().invoke("Statistic", "statistic", ("UMENG|event|" + params));
});
// source line 134, bytecode pc 576
xs.Utils.Statistic.getInstance().registerKeyAndSendFunc("Umeng_pay", function(params) {
    // source line 135, bytecode pc 54
    xs.JsbConnecter.getInstance().invoke("Statistic", "statistic", ("UMENG|pay|" + params));
});
