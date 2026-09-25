// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Armature/AutoAudioArmature.js:1
// source line 11, bytecode pc 63
(xs.Views.Armature.AutoAudioArmature = xs.Libs.Views.Armature.BaseArmature.extend({}));
// source line 15, bytecode pc 94
(xs.Views.Armature.AutoAudioArmature.create = function(id, viewCfg) {
    var _ret;
    // source line 17, bytecode pc 28
    (_ret = new xs.Views.Armature.AutoAudioArmature());
    // source line 18, bytecode pc 51
    _ret.init(id, viewCfg);
    if (xs.Profile.UserCfg.isVoiceOn_Eff()) {
        // source line 23, bytecode pc 118
        _ret.setFrameEventCallFunc(xs.Tools.Audio.effect_frameEventCallFunc);
    }
    // source line 27, bytecode pc 122
    return _ret;
});
// source line 33, bytecode pc 158
(xs.Views.Armature.FightArmature = xs.Libs.Views.Armature.BaseArmature.extend({}));
// source line 37, bytecode pc 189
(xs.Views.Armature.FightArmature.Event_FrameEvent = "FightArmature_Event_FrameEvent");
// source line 39, bytecode pc 220
(xs.Views.Armature.FightArmature.create = function(id, viewCfg, context) {
    var _ret;
    // source line 41, bytecode pc 28
    (_ret = new xs.Views.Armature.FightArmature());
    // source line 42, bytecode pc 51
    _ret.init(id, viewCfg);
    // source line 45, bytecode pc 72
    _ret.setFrameEventCallFunc(function(bone, frameEventName, originFrameIndex, currentFrameIndex) {
    var _obj, _context, _para, _env, _fnc;
    // source line 51, bytecode pc 31
    (_obj = { context: context, frameEventName: frameEventName });
    if (((frameEventName.indexOf("to_") == 0) || ((frameEventName.indexOf("from_") == 0) || ((frameEventName.indexOf("ani_from_") == 0) || (frameEventName.indexOf("ani_to_") == 0))))) {
        // source line 61, bytecode pc 154
        (_context = _obj.context);
        // source line 62, bytecode pc 166
        (_para = _context.para);
        // source line 63, bytecode pc 178
        (_env = _para.env);
        // source line 64, bytecode pc 196
        (_fnc = _env.getFightNotifyCenter());
        // source line 69, bytecode pc 241
        _fnc.postNotification(xs.Views.Armature.FightArmature.Event_FrameEvent, _obj);
    } else {
        if (xs.Profile.UserCfg.isVoiceOn_Eff()) {
            // source line 73, bytecode pc 309
            xs.audio.playEffectByFile((frameEventName + ".mp3"));
        }
    }
});
    // source line 79, bytecode pc 76
    return _ret;
});
