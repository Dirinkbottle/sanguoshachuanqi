// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Libs/Views/Armature/BaseArmature.js:1
// source line 425, bytecode pc 213
(xs.Libs.Views.Armature.BaseArmature = ccs.Armature.extend({
    markFuncBegin: function() {
},
    markFuncEnd: function() {
},
    name: "xs.Libs.Views.Armature.BaseArmature",
    ctor: function() {
    // source line 32, bytecode pc 12
    this._super();
    // source line 33, bytecode pc 42
    cc.associateWithNative(this, cc.Armature);
},
    init: function(id, viewCfg) {
    // source line 42, bytecode pc 9
    (this.armId = id);
    // source line 45, bytecode pc 28
    (this.armCfg = this._getArmCfg());
    // source line 48, bytecode pc 62
    xs.Factorys.Armature.loadArmatureFileInfoById(this.armId);
    // source line 52, bytecode pc 87
    this._super(this.armCfg.name);
    // source line 55, bytecode pc 109
    (this.viewCfg = (viewCfg || {}));
    // source line 67, bytecode pc 145
    xs.Utils.Node.initByViewCfg(this, this.viewCfg);
},
    _getArmCfg: function() {
    var _armInfo;
    // source line 74, bytecode pc 25
    (_armInfo = xs.Cfg.Armature[this.armId]);
    // source line 76, bytecode pc 50
    this.assert(_armInfo, "need armId", this);
    // source line 78, bytecode pc 54
    return _armInfo;
},
    _getAniCfg: function(aniKey) {
    var _armInfo, _aniInfo;
    // source line 83, bytecode pc 15
    (_armInfo = this._getArmCfg());
    // source line 85, bytecode pc 31
    (_aniInfo = _armInfo.animations[aniKey]);
    // source line 87, bytecode pc 60
    this.assert(_aniInfo, ("need aniKey:" + aniKey), this);
    // source line 89, bytecode pc 64
    return _aniInfo;
},
    _getBoneCfg: function(boneKey) {
    var _armInfo, _info;
    // source line 94, bytecode pc 15
    (_armInfo = this._getArmCfg());
    // source line 96, bytecode pc 31
    (_info = _armInfo.bones[boneKey]);
    // source line 98, bytecode pc 67
    this.assert(_info, ("need boneKey: " + boneKey), _armInfo.bones);
    // source line 99, bytecode pc 103
    this.assert(_info.name, ("need boneKey.name: " + boneKey), _info);
    // source line 101, bytecode pc 107
    return _info;
},
    replaceSkin: function(boneName, skin) {
    var _bone, _idx;
    // source line 109, bytecode pc 22
    this.assert(skin, "replaceSkin,need skin err");
    // source line 111, bytecode pc 42
    (_bone = this.getBone(boneName));
    // source line 113, bytecode pc 69
    this.assert(_bone, "replaceSkin err", boneName);
    if (_bone) {
        // source line 116, bytecode pc 82
        (_idx = 0);
        // source line 117, bytecode pc 105
        _bone.addDisplay(skin, _idx);
        // source line 118, bytecode pc 126
        _bone.changeDisplayWithIndex(_idx, true);
    }
},
    replaceSkinByBoneKey: function(key, skin) {
    var _boneCfg, _bone, _idx;
    // source line 124, bytecode pc 22
    this.assert(skin, "replaceSkinByBoneKey,need skin err");
    // source line 129, bytecode pc 42
    (_boneCfg = this._getBoneCfg(key));
    // source line 131, bytecode pc 67
    (_bone = this.getBone(_boneCfg.name));
    // source line 133, bytecode pc 94
    this.assert(_bone, "replaceSkinByBoneKey err", key);
    if (_bone) {
        // source line 136, bytecode pc 107
        (_idx = 0);
        // source line 137, bytecode pc 130
        _bone.addDisplay(skin, _idx);
        // source line 138, bytecode pc 151
        _bone.changeDisplayWithIndex(_idx, true);
    }
},
    getBoneByBoneKey: function(key) {
    var _boneCfg, _bone;
    // source line 145, bytecode pc 19
    (_boneCfg = this._getBoneCfg(key));
    // source line 147, bytecode pc 44
    (_bone = this.getBone(_boneCfg.name));
    // source line 149, bytecode pc 48
    return _bone;
},
    removeBoneByBoneKey: function(key) {
    var _bone;
    // source line 153, bytecode pc 19
    (_bone = this.getBoneByBoneKey(key));
    // source line 154, bytecode pc 38
    this.removeBone(_bone, true);
},
    playAniById: function(aniKey, control) {
    var _control, _aniInfo, _loop, _speed, _animation, _durationTo;
    // source line 164, bytecode pc 18
    this.markFuncBegin("playAnimationById");
    // source line 166, bytecode pc 37
    (_control = (control || {}));
    // source line 169, bytecode pc 57
    (_aniInfo = this._getAniCfg(aniKey));
    // source line 171, bytecode pc 83
    (_loop = ((_control.loop === true) ? 1 : 0));
    // source line 173, bytecode pc 102
    (_speed = (_control.speed || 1));
    // source line 175, bytecode pc 118
    (_animation = this.getAnimation());
    if (this.m_frameEventCallFunc) {
        // source line 178, bytecode pc 162
        _animation.setFrameEventCallFunc(this.m_frameEventCallFunc, xs.unuse_this);
    }
    // source line 181, bytecode pc 192
    _animation.setSpeedScale((xs.ani_scale / _speed));
    // source line 184, bytecode pc 212
    (_durationTo = (_control.durationTo || -1));
    // source line 186, bytecode pc 247
    _animation.play(_aniInfo.name, _durationTo, -1, _loop);
    // source line 189, bytecode pc 266
    this.markFuncEnd("playAnimationById");
},
    createPlayAction: function(aniKey, control) {
    var _actions, _aniInfo, _animation, _control, _dp, _speed, _speedByDp, _loop, _tmpDp, _ret;
    // source line 211, bytecode pc 18
    this.markFuncBegin("createPlayActions");
    // source line 213, bytecode pc 27
    (_actions = []);
    // source line 215, bytecode pc 47
    (_aniInfo = this._getAniCfg(aniKey));
    // source line 217, bytecode pc 83
    xs.assert(_aniInfo.fc, "_aniInfo.fc need", _aniInfo);
    // source line 220, bytecode pc 99
    (_animation = this.getAnimation());
    if (this.m_frameEventCallFunc) {
        // source line 223, bytecode pc 143
        _animation.setFrameEventCallFunc(this.m_frameEventCallFunc, xs.unuse_this);
    }
    // source line 226, bytecode pc 162
    (_control = (control || {}));
    // source line 229, bytecode pc 185
    (_dp = (_aniInfo.fc / xs.fps));
    // source line 231, bytecode pc 204
    (_speed = (_control.speed || 1));
    // source line 232, bytecode pc 209
    (_speedByDp = 1);
    // source line 234, bytecode pc 236
    xs.assert(_animation, "_animation error");
    // source line 236, bytecode pc 262
    (_loop = ((_control.loop === true) ? 1 : 0));
    // source line 271, bytecode pc 379
    _actions.push(cc.CallFunc.create(function(sender, ___param) {
    var _param, _animation, _speed, _aniName, _loop, _speedByDp, _durationTo, _speedScale;
    // source line 243, bytecode pc 4
    (_param = this);
    // source line 244, bytecode pc 16
    (_animation = _param.animation);
    // source line 245, bytecode pc 28
    (_speed = _param.speed);
    // source line 246, bytecode pc 40
    (_aniName = _param.aniName);
    // source line 247, bytecode pc 52
    (_loop = _param.loop);
    // source line 250, bytecode pc 64
    (_speedByDp = _param.speedByDp);
    // source line 252, bytecode pc 70
    (_durationTo = -1);
    // source line 254, bytecode pc 92
    (_speedScale = ((xs.ani_scale / _speed) / _speedByDp));
    // source line 256, bytecode pc 111
    _animation.setSpeedScale(_speedScale);
    // source line 260, bytecode pc 141
    _animation.play(_aniName, _durationTo, -1, _loop);
}.bind({
    aniName: _aniInfo.name,
    animation: _animation,
    speed: _speed,
    speedByDp: _speedByDp,
    loop: _loop
}), xs.unuse_this));
    // source line 285, bytecode pc 446
    _actions.push(cc.CallFunc.create(function(sender, ___param) {
    var _param;
    // source line 279, bytecode pc 4
    (_param = this);
    // source line 280, bytecode pc 21
    _param.setVisible(true);
}.bind(this), xs.unuse_this));
    if ((_control.loop === true)) {
    } else {
        // source line 296, bytecode pc 477
        (_tmpDp = (_dp * _speed));
        // source line 301, bytecode pc 518
        _actions.push(cc.DelayTime.create(_tmpDp));
    }
    // source line 305, bytecode pc 552
    (_ret = xs.Utils.Action.combineSequence(_actions));
    // source line 308, bytecode pc 571
    this.markFuncEnd("createPlayActions");
    // source line 310, bytecode pc 575
    return _ret;
},
    createPlayActionByDp: function(aniKey, dp, control) {
    var _actions, _aniInfo, _animation, _control, _dp, _speed, _speedByDp, _ret, arguments;
    // source line 316, bytecode pc 4
    (arguments = arguments);
    // source line 318, bytecode pc 23
    this.markFuncBegin("createPlayActionByDp");
    // source line 320, bytecode pc 32
    (_actions = []);
    // source line 322, bytecode pc 58
    (_aniInfo = this._getAniCfg(aniKey));
    // source line 324, bytecode pc 106
    xs.assert(_aniInfo.fc, "_aniInfo.fc need", _aniInfo);
    // source line 325, bytecode pc 137
    xs.assert(dp, "dp need", arguments);
    // source line 327, bytecode pc 153
    (_animation = this.getAnimation());
    // source line 328, bytecode pc 180
    xs.assert(_animation, "_animation error");
    if (this.m_frameEventCallFunc) {
        // source line 331, bytecode pc 224
        _animation.setFrameEventCallFunc(this.m_frameEventCallFunc, xs.unuse_this);
    }
    // source line 334, bytecode pc 243
    (_control = (control || {}));
    // source line 337, bytecode pc 250
    (_dp = dp);
    // source line 340, bytecode pc 255
    (_speed = 1);
    // source line 342, bytecode pc 288
    (_speedByDp = (_dp / (_aniInfo.fc / xs.fps)));
    // source line 382, bytecode pc 384
    _actions.push(cc.CallFunc.create(function(sender, ___param) {
    var _param, _control, _animation, _speedByDp, _loop, _durationTo, _speed;
    // source line 352, bytecode pc 4
    (_param = this);
    // source line 353, bytecode pc 28
    (_control = (_param.control || {}));
    // source line 354, bytecode pc 40
    (_animation = _param.animation);
    // source line 357, bytecode pc 52
    (_speedByDp = _param.speedByDp);
    // source line 361, bytecode pc 78
    (_loop = ((_control.loop === true) ? 1 : 0));
    // source line 363, bytecode pc 98
    (_durationTo = (_control.durationTo || -1));
    // source line 365, bytecode pc 117
    (_speed = (_control.speed || 1));
    // source line 369, bytecode pc 151
    _animation.setSpeedScale(((xs.ani_scale / _speed) / _speedByDp));
    // source line 373, bytecode pc 192
    _animation.play(_aniInfo.name, _durationTo, -1, _loop);
}.bind({ animation: _animation, control: control, speedByDp: _speedByDp }), xs.unuse_this));
    // source line 396, bytecode pc 451
    _actions.push(cc.CallFunc.create(function(sender, ___param) {
    var _param;
    // source line 390, bytecode pc 4
    (_param = this);
    // source line 391, bytecode pc 21
    _param.setVisible(true);
}.bind(this), xs.unuse_this));
    // source line 400, bytecode pc 470
    (_speed = (_control.speed || 1));
    if ((_control.loop === true)) {
    } else {
        // source line 409, bytecode pc 535
        _actions.push(cc.DelayTime.create((_dp * _speed)));
    }
    // source line 413, bytecode pc 569
    (_ret = xs.Utils.Action.combineSequence(_actions));
    // source line 416, bytecode pc 588
    this.markFuncEnd("createPlayActionByDp");
    // source line 418, bytecode pc 592
    return _ret;
},
    setFrameEventCallFunc: function(frameEventCallFunc) {
    // source line 426, bytecode pc 9
    (this.m_frameEventCallFunc = frameEventCallFunc);
}
}));
// source line 435, bytecode pc 249
(xs.Libs.Views.Armature.BaseArmature.create = function(id, viewCfg) {
    var _ret;
    // source line 436, bytecode pc 33
    (_ret = new xs.Libs.Views.Armature.BaseArmature());
    // source line 437, bytecode pc 56
    _ret.init(id, viewCfg);
    // source line 438, bytecode pc 60
    return _ret;
});
