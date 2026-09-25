// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/Impl.js:1
// source line 23, bytecode pc 62
(xs.Skill.Impl = {
    init: function() {
    // source line 12, bytecode pc 7
    (this.m_idx = 0);
},
    updateParams: function(params) {
    if (params) {
        if (params.idx) {
            // source line 17, bytecode pc 35
            (this.m_idx = params.idx);
        }
    }
},
    Creater: {
        HitTextPos: function(params) {
    var _input, _needRevertX, _idx, _baseView, _offset_ori, _offset;
    // source line 27, bytecode pc 11
    (_input = params.input);
    // source line 28, bytecode pc 23
    (_needRevertX = params.needRevertX);
    // source line 29, bytecode pc 54
    (_idx = (xs.Skill.Impl.m_idx || 0));
    // source line 31, bytecode pc 94
    (_baseView = xs.Factorys.Skill.getViewByName(_input, "to"));
    // source line 40, bytecode pc 126
    (_offset_ori = cc.p(0, (120 + (_idx * 20))));
    // source line 41, bytecode pc 131
    (_offset = null);
    if (_needRevertX) {
        // source line 43, bytecode pc 180
        (_offset = cc.p((_offset_ori.x * -1), _offset_ori.y));
    } else {
        // source line 46, bytecode pc 192
        (_offset = _offset_ori);
    }
    // source line 51, bytecode pc 228
    return cc.pAdd(_baseView.getPosition(), _offset);
}
    }
});
