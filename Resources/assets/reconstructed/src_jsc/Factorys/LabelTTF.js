// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Factorys/LabelTTF.js:1
// source line 122, bytecode pc 102
(xs.Factorys.LabelTTF = (xs.Factorys.LabelTTF || {
    name: "xs.Factorys.LabelTTF",
    _create: function(str, fontSize, fontName, alignmentH, alignmentV) {
    var _fontName, _str, _ret;
    // source line 19, bytecode pc 17
    (_fontName = (fontName || ""));
    // source line 21, bytecode pc 35
    (_str = (str || ""));
    if ((_fontName === "")) {
    }
    // source line 32, bytecode pc 86
    (_ret = cc.LabelTTF.create(_str, _fontName, fontSize));
    if (((alignmentH !== undefined) && (alignmentH !== null))) {
        // source line 34, bytecode pc 130
        _ret.setHorizontalAlignment(alignmentH);
    }
    if (((alignmentV !== undefined) && (alignmentV !== null))) {
        // source line 38, bytecode pc 174
        _ret.setVerticalAlignment(alignmentV);
    }
    // source line 49, bytecode pc 207
    xs.Factorys.BaseLabel._wrapperExt(_ret, this);
    // source line 51, bytecode pc 222
    _ret.refreshAp();
    // source line 56, bytecode pc 226
    return _ret;
},
    _setNext: function(nextLabel) {
    // source line 72, bytecode pc 26
    this.assert(!this.m_nextLabel, "nextlabel is already exist");
    // source line 74, bytecode pc 36
    (this.m_nextLabel = nextLabel);
    // source line 77, bytecode pc 73
    nextLabel.setAligns(xs.AlignH_Left, xs.AlignV_Center);
    // source line 80, bytecode pc 126
    xs.Utils.Node.attachNodes(this, this.m_nextLabel, { base: "rc" });
    // source line 82, bytecode pc 130
    return nextLabel;
},
    _setLast: function(lastLabel) {
    // source line 87, bytecode pc 26
    this.assert(!this.m_lastLabel, "lastLabel is already exist");
    // source line 89, bytecode pc 36
    (this.m_lastLabel = lastLabel);
    // source line 93, bytecode pc 73
    lastLabel.setAligns(xs.AlignH_Right, xs.AlignV_Center);
    // source line 96, bytecode pc 126
    xs.Utils.Node.attachNodes(this, this.m_lastLabel, { base: "lc" });
    // source line 98, bytecode pc 130
    return lastLabel;
},
    _refreshLayout: function() {
    if (this.m_nextLabel) {
        // source line 107, bytecode pc 69
        xs.Utils.Node.attachNodes(this, this.m_nextLabel, { base: "rc", pc: true });
        // source line 109, bytecode pc 87
        this.m_nextLabel.refreshLayout();
    }
    if (this.m_lastLabel) {
        // source line 114, bytecode pc 157
        xs.Utils.Node.attachNodes(this, this.m_lastLabel, { base: "lc", pc: true });
        // source line 116, bytecode pc 175
        this.m_lastLabel.refreshLayout();
    }
},
    create: function(str, fontId, alignmentH, alignmentV) {
    var _fontId, _info, _fontname, _fontNameKey, _ret;
    // source line 125, bytecode pc 17
    (_fontId = (fontId || "Default"));
    // source line 128, bytecode pc 45
    (_info = xs.Cfg.System.sgs_config_ttf[_fontId]);
    if (!_info) {
        // source line 130, bytecode pc 77
        (_info = xs.Cfg.Font[_fontId]);
    }
    // source line 133, bytecode pc 112
    xs.assert(_info, "createWithFontId ,need _info", _fontId, fontId);
    // source line 136, bytecode pc 124
    (_fontname = _info.fontName);
    if ((_fontId == "Default")) {
        // source line 138, bytecode pc 174
        (_fontNameKey = ("fontName_" + xsc.Tools.ProductSys.getAreaTag()));
        // source line 139, bytecode pc 185
        (_fontname = _info[_fontNameKey]);
    }
    // source line 141, bytecode pc 226
    (_ret = this._create(str, _info.fontSize, _fontname, alignmentH, alignmentV));
    if (_info.color) {
        // source line 148, bytecode pc 265
        _ret.setFontFillColor(_info.color, true);
    }
    if ((_info.strokeColor && _info.strokeSize)) {
        // source line 152, bytecode pc 327
        _ret.enableStroke(_info.strokeColor, _info.strokeSize, true);
    }
    // source line 161, bytecode pc 331
    return _ret;
}
}));
