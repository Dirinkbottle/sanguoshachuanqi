// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Scene/headers.js:1
// source line 7, bytecode pc 42
(xs.Core.Scene = {
    Mgr: {
        changeScene: function(scene) {
    if (xsc.director.getRunningScene()) {
        // source line 9, bytecode pc 51
        xsc.director.replaceScene(scene);
    } else {
        // source line 12, bytecode pc 82
        xsc.director.runWithScene(scene);
    }
    // source line 14, bytecode pc 86
    return scene;
}
    }
});
