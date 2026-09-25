// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Factorys/Animate.js:1
// source line 17, bytecode pc 81
(xs.Factorys.Animate = {
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    path: "bak/",
    create: function(animaName, time) {
    var _info, _time, _animation, i, _delayPerUnit, _animate, _sprite, _ret;
    // source line 20, bytecode pc 22
    (_info = xs.Cfg.Animate[animaName]);
    // source line 21, bytecode pc 36
    (_time = (time || 1));
    // source line 24, bytecode pc 74
    xs.assert(_info, "animaName error", animaName, this.cfg);
    // source line 29, bytecode pc 99
    (_animation = cc.Animation.create());
    // source line 32, bytecode pc 111
    (i = _info.first);
    while ((i <= _info.last)) {
        // source line 33, bytecode pc 161
        _animation.addSpriteFrameWithFile((((this.path + _info.prefix) + i) + _info.suffix));
        // source line 32, bytecode pc 175
        (i = (+i + 1));
    }
    // source line 36, bytecode pc 221
    (_delayPerUnit = (_time / ((_info.last - _info.first) + 1)));
    // source line 39, bytecode pc 240
    _animation.setDelayPerUnit(_delayPerUnit);
    // source line 40, bytecode pc 257
    _animation.setRestoreOriginalFrame(false);
    // source line 43, bytecode pc 286
    (_animate = cc.Animate.create(_animation));
    // source line 47, bytecode pc 345
    (_sprite = cc.Sprite.create((((this.path + _info.prefix) + _info.first) + _info.suffix)));
    // source line 49, bytecode pc 383
    xs.assert(_sprite, "create animation sprite error", _info, this.Cfg);
    // source line 52, bytecode pc 407
    (_ret = new xs.Models.Animation());
    // source line 53, bytecode pc 430
    _ret.init(_sprite, _animate);
    // source line 57, bytecode pc 453
    return { sprite: _sprite, animate: _animate }
}
});
