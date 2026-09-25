// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Factorys/Label.js:1
// source line 116, bytecode pc 111
(xs.Factorys.Label = {
    name: "xs.Factorys.Label",
    _getCfg: function(labelId) {
    var _cfg;
    // source line 29, bytecode pc 52
    (_cfg = (xs.Cfg.Label[labelId] || xs.Cfg.System.sgs_config_label[labelId]));
    if (!_cfg) {
        // source line 32, bytecode pc 84
        this.warn(("_cfg cant find,use default:" + labelId));
        // source line 33, bytecode pc 117
        (_cfg = (_cfg || xs.Cfg.Label.Default));
    }
    // source line 36, bytecode pc 149
    this.assert(_cfg.styleId, "need styleId", _cfg);
    // source line 39, bytecode pc 153
    return _cfg;
},
    _getStyleCfg: function(styleId) {
    var _cfg;
    // source line 45, bytecode pc 27
    (_cfg = xs.Cfg.System.sgs_config_ls[styleId]);
    if (!_cfg) {
        // source line 48, bytecode pc 59
        (_cfg = xs.Cfg.LabelStyle[styleId]);
    }
    if (!_cfg) {
        // source line 52, bytecode pc 91
        this.warn(("_getStyleCfg ,_cfg cant find,use default:" + styleId));
        // source line 53, bytecode pc 124
        (_cfg = (_cfg || xs.Cfg.LabelStyle.Default));
    }
    // source line 56, bytecode pc 128
    return _cfg;
},
    createByLabelId: function(labelId) {
    var _labelCfg, _ret;
    // source line 63, bytecode pc 19
    (_labelCfg = this._getCfg(labelId));
    // source line 64, bytecode pc 44
    (_ret = this.createByStyleId(_labelCfg.styleId));
    if (_labelCfg.stringId) {
        // source line 67, bytecode pc 81
        _ret.setStringById(_labelCfg.stringId);
    }
    if (_labelCfg.string) {
        // source line 71, bytecode pc 118
        _ret.setString(_labelCfg.string);
    }
    // source line 74, bytecode pc 122
    return _ret;
},
    createByStyleId: function(styleId) {
    var _cfg, _ret;
    // source line 79, bytecode pc 19
    (_cfg = this._getStyleCfg(styleId));
    if ((_cfg.fontType === xs.Constant_FontType_BMF)) {
        // source line 84, bytecode pc 101
        (_ret = xs.Factorys.LabelBMFont.create("", _cfg.fontId, _cfg.alignH));
    } else {
        if ((_cfg.fontType === xs.Constant_FontType_TTF)) {
            // source line 87, bytecode pc 193
            (_ret = xs.Factorys.LabelTTF.create("", _cfg.fontId, _cfg.alignH, _cfg.alignV));
        } else {
            // source line 90, bytecode pc 227
            this.warn("createByLabelId", ("need fontType " + styleId));
        }
    }
    // source line 93, bytecode pc 231
    return _ret;
},
    createByStyleIdWithString: function(styleId, string) {
    var ret;
    // source line 97, bytecode pc 19
    (ret = this.createByStyleId(styleId));
    // source line 98, bytecode pc 38
    ret.setString(string);
    // source line 99, bytecode pc 42
    return ret;
},
    createByStyleIdWithStringId: function(styleId, stringId) {
    var ret;
    // source line 103, bytecode pc 19
    (ret = this.createByStyleId(styleId));
    // source line 104, bytecode pc 38
    ret.setStringById(stringId);
    // source line 105, bytecode pc 42
    return ret;
},
    createWithString: function(labelId, string) {
    var _string, _ret;
    // source line 110, bytecode pc 17
    (_string = (string || ""));
    // source line 111, bytecode pc 37
    (_ret = this.createByLabelId(labelId));
    // source line 112, bytecode pc 56
    _ret.setString(_string);
    // source line 114, bytecode pc 60
    return _ret;
},
    createWithStringId: function(labelId, stringId, paramArray) {
    var _ret;
    // source line 117, bytecode pc 19
    (_ret = this.createByLabelId(labelId));
    // source line 118, bytecode pc 38
    _ret.setStringById(stringId);
    // source line 119, bytecode pc 57
    _ret.setStringParams(paramArray);
    // source line 120, bytecode pc 61
    return _ret;
}
});
