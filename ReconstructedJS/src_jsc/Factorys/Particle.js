// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Factorys/Particle.js:1
// source line 17, bytecode pc 58
(xs.Factorys.Particle = {
    private: { path: "particle/", areaDef: null },
    create: function(id) {
    var _ret, _cfg;
    // source line 19, bytecode pc 4
    (_ret = null);
    // source line 20, bytecode pc 27
    (_cfg = xs.Cfg.Particle[id]);
    // source line 22, bytecode pc 58
    xs.assert(_cfg, "cant find ParticleId ", id);
    if ((_cfg === undefined)) {
        // source line 24, bytecode pc 96
        (_cfg = xs.Cfg.Particle.Particle_Default);
    }
    if (_cfg["class"]) {
        // source line 28, bytecode pc 132
        (_ret = _cfg["class"].create());
    } else {
        if (_cfg.file) {
            // source line 31, bytecode pc 196
            (_ret = cc.ParticleSystem.create((this.private.path + _cfg.file)));
        }
    }
    // source line 34, bytecode pc 231
    xs.assert(_ret, "cant find class ", id, _ret);
    // source line 36, bytecode pc 257
    _ret.setPosition(cc.POINT_ZERO);
    // source line 38, bytecode pc 261
    return _ret;
}
});
