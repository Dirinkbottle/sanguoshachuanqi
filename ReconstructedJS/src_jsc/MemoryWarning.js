// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/MemoryWarning.js:1
if (xs.main_is_ok) {
    // source line 9, bytecode pc 74
    xs.Views.Mgr.showToast(xs.Tools.String.createString("toast_OutOfMemory"));
    // source line 10, bytecode pc 107
    cc.SpriteFrameCache.getInstance().removeUnusedSpriteFrames();
    // source line 11, bytecode pc 140
    cc.TextureCache.getInstance().removeUnusedTextures();
}
