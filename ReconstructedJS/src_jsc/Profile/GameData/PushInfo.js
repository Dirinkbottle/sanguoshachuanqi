// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/PushInfo.js:1
// source line 21, bytecode pc 72
(xs.Profile.GameData.PushInfo = (xs.Profile.GameData.PushInfo || {
    name: "xs.Profile.GameData.PushInfo",
    getInstance: function() {
    var _ret;
    // source line 23, bytecode pc 67
    (_ret = xs.Profile.GameData.Mgr.getInstance().getDataRef().getDataByNameType(xs.Constant_GameData_Push));
    // source line 25, bytecode pc 71
    return _ret;
}
}));
