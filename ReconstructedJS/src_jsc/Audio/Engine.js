// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Audio/Engine.js:1
// source line 200, bytecode pc 330
(xs.Audio.Engine = cc.Class.extend({
    engine: null,
    bgPath: "audio/bg/",
    effPath: "audio/eff/",
    name: "xs.Audio.Engine",
    last: {},
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    ctor: function() {
    // source line 30, bytecode pc 11
    (this.m_volumeBg = 0.2);
    // source line 31, bytecode pc 51
    cc.AudioEngine.getInstance().setMusicVolume(this.m_volumeBg);
    // source line 33, bytecode pc 64
    (this.m_effectFileNames = {});
    // source line 35, bytecode pc 72
    (this.m_isOn_Bg = false);
    // source line 36, bytecode pc 80
    (this.m_isOn_Eff = false);
    // source line 39, bytecode pc 93
    (this.last.m_bgFileName = null);
},
    init: function() {
},
    _playMusicByFile: function(file, loop) {
    var _loop;
    if ((xs.useAudio === true)) {
        if ((this.m_isOn_Bg === false)) {
            // source line 52, bytecode pc 31
            return null;
        }
        if ((this.last.m_bgFileName === file)) {
            // source line 57, bytecode pc 53
            return void 0;
        } else {
            // source line 61, bytecode pc 93
            cc.AudioEngine.getInstance().stopMusic(true);
            // source line 63, bytecode pc 107
            (_loop = (loop || false));
            // source line 64, bytecode pc 155
            cc.AudioEngine.getInstance().playMusic((this.bgPath + file), _loop);
            // source line 65, bytecode pc 170
            (this.last.m_bgFileName = file);
        }
    }
},
    _playMusicByInfo: function(info, loop) {
    // source line 73, bytecode pc 25
    this._playMusicByFile(info.file, loop);
},
    stopMusic: function() {
    // source line 79, bytecode pc 18
    this.log("stopMusic1111");
    // source line 80, bytecode pc 51
    cc.AudioEngine.getInstance().stopMusic();
},
    playMusic: function(id, loop) {
    var _info, arguments;
    // source line 85, bytecode pc 4
    (arguments = arguments);
    // source line 87, bytecode pc 23
    this.log("playMusic");
    // source line 89, bytecode pc 82
    (_info = (xs.Cfg.Audio.Bg[id] || xs.Cfg.Audio.Bg.Audio_BG_Default));
    // source line 91, bytecode pc 103
    this._playMusicByInfo(_info, loop);
    // source line 93, bytecode pc 118
    (this.last.arguments = arguments);
},
    playLastMusic: function() {
    if (this.last.arguments) {
        // source line 99, bytecode pc 47
        this.playMusic.apply(this, this.last.arguments);
    }
},
    _playEffectByFile: function(file, loop) {
    var _loop, _file;
    if ((xs.useAudio === true)) {
        if ((this.m_isOn_Eff === false)) {
            // source line 111, bytecode pc 54
            this.log("_playEffectByFile", "ignore when this.m_isOn");
            // source line 112, bytecode pc 56
            return null;
        }
        // source line 115, bytecode pc 70
        (_loop = (loop || false));
        // source line 117, bytecode pc 84
        (_file = (this.effPath + file));
        // source line 119, bytecode pc 107
        this.log("_playEffectByFile", _file);
        // source line 121, bytecode pc 119
        (this.m_effectFileNames[_file] = true);
        // source line 124, bytecode pc 160
        return cc.AudioEngine.getInstance().playEffect(_file, _loop);
    } else {
        // source line 127, bytecode pc 190
        this.log("_playEffectByFile", "ignore by xs.useAudio !== true");
    }
    // source line 130, bytecode pc 192
    return null;
},
    playEffectByFile: function(file, loop) {
    // source line 134, bytecode pc 20
    return this._playEffectByFile(file, loop);
},
    playEffectByInfo: function(info, loop) {
    // source line 138, bytecode pc 25
    this._playEffectByFile(info.file, loop);
},
    playEffect: function(id, loop) {
    var _info;
    // source line 142, bytecode pc 58
    (_info = (xs.Cfg.Audio.Effect[id] || xs.Cfg.Audio.Effect.Audio_EFF_Default));
    // source line 144, bytecode pc 79
    this.playEffectByInfo(_info, loop);
},
    _stopEffect: function(soundId) {
    if ((xs.useAudio === true)) {
        // source line 149, bytecode pc 53
        return cc.AudioEngine.getInstance().stopEffect(soundId);
    }
},
    stopEffect: function(soundId) {
    // source line 154, bytecode pc 16
    this._stopEffect(soundId);
},
    stopAllEffects: function() {
    if ((xs.useAudio === true)) {
        // source line 159, bytecode pc 49
        return cc.AudioEngine.getInstance().stopAllEffects();
    }
},
    releaseAllEffects: function() {
    var tmp;
    for (var tmp in this.m_effectFileNames) {
        if (!(this.m_effectFileNames.hasOwnProperty(tmp))) continue;
        // source line 168, bytecode pc 81
        cc.AudioEngine.getInstance().unloadEffect(tmp);
    }
    // source line 170, bytecode pc 102
    (this.m_effectFileNames = {});
},
    end: function() {
    // source line 176, bytecode pc 18
    this.error("end TODO");
    if ((xs.useAudio === true)) {
        // source line 178, bytecode pc 57
        cc.AudioEngine.end();
    }
},
    turnOn_Bg: function() {
    // source line 185, bytecode pc 7
    (this.m_isOn_Bg = true);
},
    turnOff_Bg: function() {
    // source line 188, bytecode pc 7
    (this.m_isOn_Bg = false);
    // source line 189, bytecode pc 40
    cc.AudioEngine.getInstance().stopMusic();
    // source line 190, bytecode pc 53
    (this.last.m_bgFileName = null);
},
    turnOn_Eff: function() {
    // source line 197, bytecode pc 7
    (this.m_isOn_Eff = true);
},
    turnOff_Eff: function() {
    // source line 201, bytecode pc 7
    (this.m_isOn_Eff = false);
}
}));
// source line 207, bytecode pc 361
(xs.Audio.Engine.invokeOnce = (function() {
    if (!xs.audio) {
        // source line 210, bytecode pc 46
        (xs.audio = new xs.Audio.Engine());
        // source line 211, bytecode pc 68
        xs.audio.init();
    }
}).call(void 0));
