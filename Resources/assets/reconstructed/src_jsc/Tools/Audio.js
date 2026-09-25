// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/Audio.js:1
// source line 72, bytecode pc 142
(xs.Tools.Audio = (xs.Tools.Audio || {
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    effect_frameEventCallFunc: function(bone, frameEventName, originFrameIndex, currentFrameIndex) {
    // source line 16, bytecode pc 31
    xs.audio.playEffectByFile((frameEventName + ".mp3"));
},
    effect_btnOnClickCallFunc: function() {
    var _type, _idEff;
    // source line 26, bytecode pc 9
    (_type = this.audioId);
    // source line 30, bytecode pc 14
    (_idEff = null);
    if ((_type === xs.Constant_AudioType_Cancel)) {
        // source line 33, bytecode pc 42
        (_idEff = "Audio_EFF_Cancel");
    } else {
        if ((_type === xs.Constant_AudioType_Normal)) {
            // source line 36, bytecode pc 75
            (_idEff = "Audio_EFF_Confirm");
        } else {
            if ((_type === xs.Constant_AudioType_Shortcut)) {
                // source line 39, bytecode pc 108
                (_idEff = "Audio_EFF_Shortcut");
            } else {
                // source line 42, bytecode pc 122
                (_idEff = "Audio_EFF_Confirm");
            }
        }
    }
    if ((_idEff !== null)) {
        // source line 48, bytecode pc 160
        xs.audio.playEffect(_idEff, false);
    }
},
    turnOn_Bg: function() {
    // source line 54, bytecode pc 24
    this.log("turnOn_Bg", "turnOn_Bg");
    // source line 55, bytecode pc 53
    xs.Profile.UserCfg.setVoiceOn_Bg(true);
    // source line 56, bytecode pc 75
    xs.audio.turnOn_Bg();
    // source line 58, bytecode pc 97
    xs.audio.playLastMusic();
},
    turnOff_Bg: function() {
    // source line 62, bytecode pc 28
    xs.Profile.UserCfg.setVoiceOn_Bg(false);
    // source line 63, bytecode pc 50
    xs.audio.turnOff_Bg();
},
    turnOn_Eff: function() {
    // source line 67, bytecode pc 24
    this.log("turnOn_Eff", "turnOn_Eff");
    // source line 68, bytecode pc 53
    xs.Profile.UserCfg.setVoiceOn_Eff(true);
    // source line 69, bytecode pc 75
    xs.audio.turnOn_Eff();
},
    turnOff_Eff: function() {
    // source line 73, bytecode pc 28
    xs.Profile.UserCfg.setVoiceOn_Eff(false);
    // source line 74, bytecode pc 50
    xs.audio.turnOff_Eff();
}
}));
