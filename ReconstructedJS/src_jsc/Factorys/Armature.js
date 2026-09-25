// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Factorys/Armature.js:1
// source line 325, bytecode pc 181
(xs.Factorys.Armature = {
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    jsonPath: "cs1/armature/",
    jsonExt: ".ExportJson",
    texPath: "",
    name: "xs.Factorys.Armature",
    loadArmatureFileInfoById: function(armId) {
    var _armCfg, _plist, _fileName, i, _prefix, _plistFile, _pngFile;
    if (!this.m_cacheArm) {
        // source line 32, bytecode pc 24
        (this.m_cacheArm = {});
    }
    if ((this.m_cacheArm[armId] >= 0)) {
        // source line 40, bytecode pc 64
        this.log(("loadArmatureFileInfoById ignore " + armId));
        // source line 41, bytecode pc 66
        return void 0;
    } else {
        // source line 45, bytecode pc 83
        (this.m_cacheArm[armId] = 1);
        // source line 46, bytecode pc 112
        this.log("xs.Factorys.Armature", ("loadArmatureFileInfoById load " + armId));
    }
    // source line 49, bytecode pc 132
    (_armCfg = this._getArmCfg(armId));
    // source line 54, bytecode pc 155
    (_plist = (_armCfg.plists || []));
    // source line 56, bytecode pc 181
    (_fileName = ((this.jsonPath + _armCfg.name) + this.jsonExt));
    if ((_plist.length === 0)) {
        // source line 62, bytecode pc 245
        cc.ArmatureDataManager.getInstance().addArmatureFileInfo("", "", _fileName);
    } else {
        // source line 66, bytecode pc 255
        (i = 0);
        while ((i < _plist.length)) {
            // source line 68, bytecode pc 279
            (_prefix = (this.texPath + _plist[i]));
            // source line 69, bytecode pc 292
            (_plistFile = (_prefix + ".plist"));
            // source line 70, bytecode pc 305
            (_pngFile = (_prefix + ".png"));
            // source line 75, bytecode pc 350
            cc.ArmatureDataManager.getInstance().addArmatureFileInfo(_pngFile, _plistFile, _fileName);
            // source line 66, bytecode pc 364
            (i = (+i + 1));
        }
    }
},
    unloadArmatureFileInfos: function() {
    var tmp, _armCfg, _plist, i, _prefix, _plistFile;
    if (!this.m_cacheArm) {
        // source line 84, bytecode pc 24
        (this.m_cacheArm = {});
    }
    for (var tmp in this.m_cacheArm) {
        if (!(this.m_cacheArm.hasOwnProperty(tmp))) continue;
        // source line 91, bytecode pc 98
        this.log("xs.Factorys.Armature", ("unloadArmatureFileInfoById remove " + tmp));
        // source line 93, bytecode pc 135
        cc.ArmatureDataManager.getInstance().removeArmatureFileInfo(tmp);
        // source line 95, bytecode pc 155
        (_armCfg = this._getArmCfg(tmp));
        // source line 100, bytecode pc 178
        (_plist = (_armCfg.plists || []));
        // source line 102, bytecode pc 201
        this.dump("_plist1111", _plist);
        // source line 106, bytecode pc 206
        (i = 0);
        while ((i < _plist.length)) {
            // source line 107, bytecode pc 230
            (_prefix = (this.texPath + _plist[i]));
            // source line 108, bytecode pc 243
            (_plistFile = (_prefix + ".plist"));
            // source line 114, bytecode pc 280
            cc.SpriteFrameCache.getInstance().removeSpriteFramesFromFile(_plistFile);
            // source line 106, bytecode pc 294
            (i = (+i + 1));
        }
    }
    // source line 119, bytecode pc 334
    (this.m_cacheArm = {});
},
    _getArmCfg: function(armId) {
    var _armInfo;
    // source line 124, bytecode pc 22
    (_armInfo = xs.Cfg.Armature[armId]);
    // source line 126, bytecode pc 45
    this.assert(_armInfo, "need armId");
    // source line 128, bytecode pc 49
    return _armInfo;
},
    create: function(armatureId) {
    var _info, _ret;
    // source line 135, bytecode pc 24
    this.log("Armature/create", "begin");
    // source line 137, bytecode pc 47
    (_info = xs.Cfg.Armature[armatureId]);
    // source line 139, bytecode pc 78
    xs.assert(_info, " armatureId not exist", armatureId);
    // source line 141, bytecode pc 109
    xs.Factorys.Armature.loadArmatureFileInfoById(armatureId);
    // source line 146, bytecode pc 147
    (_ret = cc.Armature.create(_info.name));
    // source line 148, bytecode pc 172
    this.log("Armature/create", "end");
    // source line 150, bytecode pc 176
    return _ret;
},
    playByAnimationId: function(armature, armatureId, animationId, control) {
    var _armInfo, _aniInfo, _loop, _speed, _animation, _durationTo;
    // source line 155, bytecode pc 24
    this.log("playByAnimationId", "begin");
    // source line 157, bytecode pc 47
    (_armInfo = xs.Cfg.Armature[armatureId]);
    // source line 159, bytecode pc 63
    (_aniInfo = _armInfo.animations[animationId]);
    // source line 161, bytecode pc 89
    (_loop = ((control.loop === true) ? 1 : 0));
    // source line 163, bytecode pc 108
    (_speed = (control.speed || 1));
    // source line 165, bytecode pc 126
    (_animation = armature.getAnimation());
    // source line 167, bytecode pc 156
    _animation.setSpeedScale((xs.ani_scale / _speed));
    // source line 171, bytecode pc 162
    (_durationTo = -1);
    // source line 173, bytecode pc 197
    _animation.play(_aniInfo.name, _durationTo, -1, _loop);
    // source line 176, bytecode pc 222
    this.log("playByAnimationId", "end");
},
    createPlayActions: function(armature, armatureId, animationId, control, dp) {
    var _actions, _armInfo, _aniInfo, _animation, _control, _dp, _speed, _tmpDp, _ret;
    // source line 181, bytecode pc 24
    this.log("createPlayActions", "begin");
    // source line 184, bytecode pc 33
    (_actions = []);
    // source line 186, bytecode pc 56
    (_armInfo = xs.Cfg.Armature[armatureId]);
    // source line 188, bytecode pc 87
    xs.assert(_armInfo, "need _armInfo", armatureId);
    // source line 190, bytecode pc 109
    (_aniInfo = _armInfo.animations[animationId]);
    // source line 192, bytecode pc 150
    xs.assert(_aniInfo, "need _aniInfo", armatureId, animationId);
    // source line 194, bytecode pc 168
    (_animation = armature.getAnimation());
    // source line 196, bytecode pc 187
    (_control = (control || {}));
    // source line 197, bytecode pc 201
    (_dp = (dp || 1));
    // source line 206, bytecode pc 228
    xs.assert(_animation, "_animation error");
    // source line 217, bytecode pc 297
    _actions.push(cc.CallFunc.create(function(sender, ___param) {
    var _param;
    // source line 211, bytecode pc 4
    (_param = this);
    // source line 212, bytecode pc 21
    _param.setVisible(true);
}.bind(armature), xs.unuse_this));
    // source line 256, bytecode pc 393
    _actions.push(cc.CallFunc.create(function(sender, ___param) {
    var _param, _control, _dp, _loop, _durationTo, _animation, _speed;
    // source line 225, bytecode pc 4
    (_param = this);
    // source line 227, bytecode pc 28
    (_control = (_param.control || {}));
    // source line 229, bytecode pc 47
    (_dp = (_param.baseDp || 1));
    // source line 231, bytecode pc 73
    (_loop = ((_control.loop === true) ? 1 : 0));
    // source line 233, bytecode pc 93
    (_durationTo = (_control.durationTo || -1));
    // source line 235, bytecode pc 105
    (_animation = _param.animation);
    // source line 237, bytecode pc 132
    xs.assert(_animation, "_animation error 222");
    // source line 239, bytecode pc 151
    (_speed = (_control.speed || 1));
    // source line 241, bytecode pc 162
    (_speed = (_speed * _dp));
    // source line 243, bytecode pc 192
    _animation.setSpeedScale((xs.ani_scale / _speed));
    // source line 247, bytecode pc 233
    _animation.play(_aniInfo.name, _durationTo, -1, _loop);
}.bind({ animation: _animation, control: control, baseDp: dp }), xs.unuse_this));
    // source line 260, bytecode pc 412
    (_speed = (_control.speed || 1));
    // source line 262, bytecode pc 460
    xs.assert(_aniInfo.fc, "_aniInfo.fc need", _aniInfo);
    if ((_control.loop === true)) {
    } else {
        // source line 269, bytecode pc 517
        (_tmpDp = (((_aniInfo.fc / _speed) / xs.app_fps) * _dp));
        // source line 274, bytecode pc 558
        _actions.push(cc.DelayTime.create(_tmpDp));
    }
    // source line 279, bytecode pc 592
    (_ret = xs.Utils.Action.combineSequence(_actions));
    // source line 281, bytecode pc 617
    this.log("createPlayActions", "end");
    // source line 283, bytecode pc 621
    return _ret;
},
    callFunc_frameEvent: function(bone, frameEventName, originFrameIndex, currentFrameIndex) {
    var _param, _eventAction;
    // source line 304, bytecode pc 4
    (_param = this);
    // source line 312, bytecode pc 20
    (_eventAction = _param.listeners[frameEventName]);
    if (_eventAction) {
        // source line 317, bytecode pc 63
        _param.who.runAction(_eventAction.clone());
    } else {
        // source line 321, bytecode pc 101
        xs.warn("frameEventName", ("need listener :" + frameEventName));
    }
},
    callFunc_movementEvent: function(armature, eventType, name) {
}
});
// source line 339, bytecode pc 197
(callFunc_frameEvent = function(bone, frameEventName, originFrameIndex, currentFrameIndex) {
    var _param, _event, _actions, _i;
    // source line 341, bytecode pc 1
    return void 0;
    // source line 343, bytecode pc 6
    (_param = this);
    // source line 345, bytecode pc 22
    (_event = _param.events[frameEventName]);
    if (_event) {
        // source line 348, bytecode pc 39
        (_actions = []);
        for (var _i in _event) {
            if (!(_event.hasOwnProperty(_i))) continue;
            if (!(_event[_i])) continue;
            // source line 351, bytecode pc 113
            _actions.push(_event[_i]);
        }
        // source line 356, bytecode pc 172
        _param.who.runAction(xs.Utils.Action.combineSpawn(_actions));
    }
});
