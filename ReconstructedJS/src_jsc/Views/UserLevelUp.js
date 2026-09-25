// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/UserLevelUp.js:1
// source line 16, bytecode pc 78
(xs.Views.UserLevelUpView = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    // source line 13, bytecode pc 1
    return true;
},
    layerTouched: function() {
    // source line 17, bytecode pc 22
    xs.log("UserLevelUpView->layerTouched");
}
}));
// source line 25, bytecode pc 104
(xs.Views.UserLevelUpView.checkLevelUp = function(userInfo) {
    var curLevel, playerInfoHandle;
    // source line 27, bytecode pc 26
    (curLevel = parseInt(userInfo.user_level));
    // source line 28, bytecode pc 56
    (playerInfoHandle = xs.Models.Player.getInstance());
    if ((playerInfoHandle.getPlayerLevel() < curLevel)) {
        // source line 30, bytecode pc 102
        xs.log("恭喜你！升级了！");
    }
    // source line 36, bytecode pc 121
    playerInfoHandle.updateNormalUserInfo(userInfo);
});
