// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/HD.js:1
// source line 104, bytecode pc 153
(xs.Models.HDModel = cc.Class.extend({
    name: "HDModel",
    ctor: function() {
    // source line 4, bytecode pc 22
    xs.log("HDModel ctor");
},
    init: function(param) {
    var directoryPath;
    // source line 7, bytecode pc 22
    xs.log("HDModel init");
    if ((param.directoryName != null)) {
        // source line 10, bytecode pc 82
        (directoryPath = (cc.FileUtils.getInstance().getWritablePath() + param.directoryName));
        // source line 11, bytecode pc 131
        xs.JsbConnecter.getInstance().invoke("Cfg", "mkdir", directoryPath);
        // source line 12, bytecode pc 147
        (this._rootDir = (directoryPath + "/"));
    }
    // source line 14, bytecode pc 169
    (this._readyObserver = new buckets.LinkedList());
    // source line 15, bytecode pc 191
    (this._unreadyObserver = new buckets.LinkedList());
    // source line 16, bytecode pc 193
    return true;
},
    addQuery: function(FileName, target, readyFunc, unreadyFunc) {
    var filepath, url, _readyFunc;
    // source line 23, bytecode pc 34
    this.addObserver(FileName, target, readyFunc, unreadyFunc);
    // source line 25, bytecode pc 54
    (filepath = (this._rootDir + FileName));
    if ((cc.FileUtils.getInstance().isFileExist(filepath) == true)) {
        // source line 27, bytecode pc 127
        this._postNotify(FileName, this._readyObserver);
    } else {
        // source line 30, bytecode pc 162
        this._postNotify(FileName, this._unreadyObserver);
        // source line 32, bytecode pc 196
        (url = (xs.Cfg.Url.DownloadAddr + FileName));
        // source line 33, bytecode pc 223
        xs.log(("Download Url is:" + url));
        // source line 34, bytecode pc 232
        (_readyFunc = function(data) {
    var filepath;
    // source line 35, bytecode pc 22
    xs.log("Download is all right");
    // source line 36, bytecode pc 42
    (filepath = (this._rootDir + FileName));
    // source line 38, bytecode pc 61
    data.writeDataToFile(filepath);
    // source line 39, bytecode pc 91
    this._postNotify(FileName, this._readyObserver);
});
        // source line 41, bytecode pc 280
        xs.Views.Mgr.reqDownload(url, _readyFunc.bind(this));
    }
},
    dequery: function(FileName, target, readyFunc, unreadyFunc) {
    // source line 47, bytecode pc 31
    this._removeObserver(FileName, target, readyFunc, this._readyObserver);
    // source line 49, bytecode pc 63
    this._removeObserver(FileName, target, unreadyFunc, this._unreadyObserver);
},
    dequeryAll: function() {
    // source line 53, bytecode pc 22
    xs.log("dequeryAll");
    // source line 54, bytecode pc 40
    this._readyObserver.clear();
    // source line 55, bytecode pc 58
    this._unreadyObserver.clear();
},
    _postNotify: function(FileName, observerCenter) {
    var callback;
    // source line 58, bytecode pc 8
    (callback = function(obj) {
    var data;
    if ((obj.FileName == FileName)) {
        // source line 60, bytecode pc 32
        (data = {});
        // source line 61, bytecode pc 50
        (data.FileName = FileName);
        // source line 62, bytecode pc 75
        (data.absoluteFilePath = (this._rootDir + FileName));
        // source line 63, bytecode pc 92
        (data.target = obj.target);
        // source line 64, bytecode pc 111
        obj.notifyfunc(data);
    }
});
    // source line 68, bytecode pc 40
    observerCenter.forEach(callback.bind(this));
},
    addObserver: function(FileName, target, readyFunc, unreadyFunc) {
    // source line 72, bytecode pc 31
    this._addObserver(FileName, target, readyFunc, this._readyObserver);
    // source line 74, bytecode pc 63
    this._addObserver(FileName, target, unreadyFunc, this._unreadyObserver);
},
    _addObserver: function(FileName, target, notifyfunc, observerCenter) {
    var obj;
    if (!this._observerExisted(FileName, target, notifyfunc, observerCenter)) {
        // source line 78, bytecode pc 43
        (obj = {});
        // source line 79, bytecode pc 55
        (obj.FileName = FileName);
        // source line 80, bytecode pc 67
        (obj.target = target);
        // source line 81, bytecode pc 79
        (obj.notifyfunc = notifyfunc);
        // source line 82, bytecode pc 98
        observerCenter.add(obj);
    }
    // source line 84, bytecode pc 136
    xs.log(("observerCenter size is:" + observerCenter.size()));
},
    _observerExisted: function(FileName, target, notifyfunc, observerCenter) {
    var result, callback;
    // source line 87, bytecode pc 10
    (result = false);
    // source line 88, bytecode pc 19
    (callback = function(obj) {
    if (((obj.FileName == FileName) && (obj.target == target))) {
        // source line 94, bytecode pc 57
        (result = true);
        // source line 97, bytecode pc 59
        return false;
    }
});
    // source line 100, bytecode pc 38
    observerCenter.forEach(callback);
    // source line 102, bytecode pc 48
    return result;
},
    _removeObserver: function(FileName, target, notifyfunc, observerCenter) {
    var item, equalsFunction;
    // source line 105, bytecode pc 22
    xs.log("_removeObserver: function");
    // source line 106, bytecode pc 32
    (item = {});
    // source line 107, bytecode pc 44
    (item.FileName = FileName);
    // source line 108, bytecode pc 56
    (item.target = target);
    // source line 109, bytecode pc 68
    (item.notifyfunc = notifyfunc);
    // source line 110, bytecode pc 77
    (equalsFunction = function(element, srcItem) {
    if (((element.FileName == srcItem.FileName) && ((element.target == srcItem.target) && (element.notifyfunc == srcItem.notifyfunc)))) {
        // source line 117, bytecode pc 69
        return true;
    }
});
    // source line 120, bytecode pc 100
    observerCenter.remove(item, equalsFunction);
}
}));
// source line 123, bytecode pc 179
(xs.Models.HDModel.create = function(param) {
    var obj;
    // source line 124, bytecode pc 23
    (obj = new xs.Models.HDModel());
    if ((obj && obj.init(param))) {
        // source line 126, bytecode pc 59
        return obj;
    }
    // source line 128, bytecode pc 82
    xs.log("Create xs.Models.HDModel error");
    // source line 129, bytecode pc 84
    return null;
});
// source line 131, bytecode pc 205
(xs.Models.HDModel.getInstance = function() {
    var param;
    if ((xs.Models.HDModel.s_HDModel == null)) {
        // source line 134, bytecode pc 36
        (param = {});
        // source line 136, bytecode pc 50
        (param.directoryName = "HD");
        // source line 137, bytecode pc 101
        (xs.Models.HDModel.s_HDModel = xs.Models.HDModel.create(param));
    }
    // source line 139, bytecode pc 122
    return xs.Models.HDModel.s_HDModel;
});
