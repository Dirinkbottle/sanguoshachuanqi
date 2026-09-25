// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Tools/Jsb.js:1
// source line 125, bytecode pc 248
(xs.Core.Tools.Jsb = {
    getDeviceId: function() {
    // source line 13, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("Cfg", "getDeviceId", "");
},
    getDeviceType: function() {
    // source line 17, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("Cfg", "getDeviceType", "");
},
    getDeviceOS: function() {
    // source line 25, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("Cfg", "getDeviceOS", "");
},
    getDeviceMobile: function() {
    // source line 29, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("Cfg", "getDeviceMobile", "");
},
    getDeviceOSVer: function() {
    // source line 33, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("Cfg", "getDeviceOSVer", "");
},
    getDevicePixel: function() {
    // source line 37, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("Cfg", "getDevicePixel", "");
},
    getDeviceNetwork: function() {
    // source line 41, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("Cfg", "getDeviceNetwork", "");
},
    getDeviceCarrier: function() {
    // source line 45, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("Cfg", "getDeviceCarrier", "");
},
    mkdir: function(pathDir) {
    // source line 53, bytecode pc 48
    xs.JsbConnecter.getInstance().invoke("Cfg", "mkdir", pathDir);
},
    getOriResCode: function() {
    // source line 56, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("Build", "getOriResCode", "");
},
    visitUrl: function(url) {
    // source line 60, bytecode pc 54
    return xs.JsbConnecter.getInstance().invoke("GlobalMethod", "visitUrl", ("" + url));
},
    visitStore: function() {
    // source line 64, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("GlobalMethod", "visitStore", "");
},
    AssetsMgr: {
        init: function(urlDownload, dirDlFull, fileDlShort, dirUnzipFull) {
    // source line 76, bytecode pc 84
    xs.JsbConnecter.getInstance().invoke("AssetsMgr", "init", ((((((("" + urlDownload) + "|") + dirDlFull) + "|") + fileDlShort) + "|") + dirUnzipFull));
},
        setDownloadRange: function(begin, end) {
    var _str;
    // source line 82, bytecode pc 16
    (_str = ((begin + "-") + end));
    // source line 86, bytecode pc 71
    return xs.JsbConnecter.getInstance().invoke("AssetsMgr", "setDownloadRangeByString", ("" + _str));
},
        setConnectionTimeout: function(timeout) {
    // source line 90, bytecode pc 54
    return xs.JsbConnecter.getInstance().invoke("AssetsMgr", "setConnectionTimeout", ("" + timeout));
},
        setOperationTimeout: function(timeout) {
    // source line 94, bytecode pc 54
    return xs.JsbConnecter.getInstance().invoke("AssetsMgr", "setOperationTimeout", ("" + timeout));
},
        release: function() {
    // source line 101, bytecode pc 50
    xs.JsbConnecter.getInstance().invoke("AssetsMgr", "release", "");
},
        startDownloadThread: function() {
    var _ret;
    // source line 109, bytecode pc 53
    (_ret = xs.JsbConnecter.getInstance().invoke("AssetsMgr", "startDownloadThread", ""));
    // source line 111, bytecode pc 86
    xsc.assert((_ret === "true"), "startDownloadThread error");
},
        startUncompressThread: function() {
    // source line 120, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("AssetsMgr", "startUncompressThread", "");
}
    },
    Utils: {
        md5file: function(fileFullName) {
    // source line 126, bytecode pc 48
    return xs.JsbConnecter.getInstance().invoke("Utils", "md5file", fileFullName);
}
    }
});
