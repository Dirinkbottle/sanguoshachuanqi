// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Utils/FileSys.js:1
// source line 30, bytecode pc 102
(xs.Utils.FileSys = (xs.Utils.FileSys || {
    name: "xs.Utils.FileSys",
    isFileExist: function(data) {
    // source line 14, bytecode pc 36
    return cc.FileUtils.getInstance().isFileExist(data);
},
    getSearchPaths: function() {
    // source line 18, bytecode pc 32
    return cc.FileUtils.getInstance().getSearchPaths();
},
    setSearchPaths: function(array) {
    // source line 22, bytecode pc 36
    return cc.FileUtils.getInstance().setSearchPaths(array);
},
    getFileDataSize: function(fileNameFull) {
    var _ret;
    // source line 26, bytecode pc 51
    (_ret = xs.JsbConnecter.getInstance().invoke("Utils", "getFileDataSize", fileNameFull));
    // source line 27, bytecode pc 92
    return ((_ret == "err") ? 0 : xs.parseInt(_ret));
},
    deleteDir: function(dirNameFull) {
    // source line 31, bytecode pc 48
    xs.JsbConnecter.getInstance().invoke("Utils", "deleteDir", dirNameFull);
}
}));
