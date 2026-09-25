// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/AdInfo.js:1
// source line 15, bytecode pc 72
(xs.Profile.GameData.AdInfo = (xs.Profile.GameData.AdInfo || {
    name: "xs.Profile.GameData.AdInfo",
    getInstance: function() {
    var _ret;
    // source line 17, bytecode pc 67
    (_ret = xs.Profile.GameData.Mgr.getInstance().getDataRef().getDataByNameType(xs.Constant_GameData_Ad));
    // source line 19, bytecode pc 71
    return _ret;
}
}));
