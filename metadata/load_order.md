# Runtime loading evidence

1. `libcocos2djs.so` contains the runtime script path `src_jsc/main.js`. The APK stores the compiled entry at `Resources/assets/src_jsc/main.jsc`; Cocos JSB resolves compiled scripts at runtime.
2. The `assets/jsb.js` bootstrap source requires, in order: `jsb_cocos2d_constants.js`, `jsb_cocos2d.js`, `jsb_cocos2d_extension.js`, `jsb_cocos2d_studio.js`, `jsb_chipmunk_constants.js`, `jsb_chipmunk.js`, `jsb_opengl_constants.js`, `jsb_opengl.js`, `jsb_cocosbuilder.js`, `jsb_sys.js`, `jsb_deprecated.js`.
3. The game's exact `main.js` require sequence and `data_cn_jsc` inclusion order are inside compiled bytecode and are not recoverable by the installed SpiderMonkey 33 decoder.
