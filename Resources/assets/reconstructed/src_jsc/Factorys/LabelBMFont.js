// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Factorys/LabelBMFont.js:1
// source line 178, bytecode pc 183
(xs.Factorys.LabelBMFont = (xs.Factorys.LabelBMFont || {
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    preload_map: {},
    _create: function(str, file, alignment, width) {
    var _beginTime, _ret, _endTime, _useTime, arguments;
    // source line 20, bytecode pc 4
    (arguments = arguments);
    // source line 22, bytecode pc 29
    this.log("LabelBMFont/_create", "begin");
    // source line 23, bytecode pc 52
    this.dump("LabelBMFont/_create", arguments);
    // source line 26, bytecode pc 77
    (_beginTime = new Date().getTime());
    // source line 28, bytecode pc 122
    (_ret = cc.LabelBMFont.create(str, (("fnt/" + file) + ".fnt")));
    // source line 30, bytecode pc 147
    (_endTime = new Date().getTime());
    // source line 32, bytecode pc 158
    (_useTime = (_endTime - _beginTime));
    if ((_useTime > 100)) {
        // source line 35, bytecode pc 206
        xs.warn("LabelBMFont load > 100:", ((file + "|") + _useTime));
    }
    if (((alignment !== undefined) && (alignment !== null))) {
        // source line 39, bytecode pc 250
        _ret.setAlignment(alignment);
    }
    if (((width !== undefined) && (width !== null))) {
        // source line 44, bytecode pc 294
        _ret.setWidth(width);
    }
    // source line 50, bytecode pc 327
    xs.Factorys.BaseLabel._wrapperExt(_ret, this);
    // source line 54, bytecode pc 352
    this.log("LabelBMFont/_create", "end");
    // source line 56, bytecode pc 356
    return _ret;
},
    _setNext: function(nextLabel) {
    // source line 71, bytecode pc 26
    this.assert(!this.m_nextLabel, "nextlabel is already exist");
    // source line 73, bytecode pc 36
    (this.m_nextLabel = nextLabel);
    // source line 76, bytecode pc 73
    nextLabel.setAligns(xs.AlignH_Left, xs.AlignV_Center);
    // source line 80, bytecode pc 120
    xs.Utils.Node.attachNodes(this.getParent(), this.m_nextLabel);
    // source line 85, bytecode pc 209
    this.m_nextLabel.setPosition(cc.p((this.getPosition().x + this.getContentSize().width), this.getPosition().y));
    // source line 89, bytecode pc 213
    return nextLabel;
},
    _setLast: function(lastLabel) {
    // source line 93, bytecode pc 26
    this.assert(!this.m_lastLabel, "lastLabel is already exist");
    // source line 95, bytecode pc 36
    (this.m_lastLabel = lastLabel);
    // source line 99, bytecode pc 73
    lastLabel.setAligns(xs.AlignH_Right, xs.AlignV_Center);
    // source line 102, bytecode pc 120
    xs.Utils.Node.attachNodes(this.getParent(), this.m_lastLabel);
    // source line 107, bytecode pc 209
    this.m_lastLabel.setPosition(cc.p((this.getPosition().x - this.getContentSize().width), this.getPosition().y));
    // source line 111, bytecode pc 213
    return lastLabel;
},
    _refreshLayout: function() {
    if (this.m_nextLabel) {
        // source line 120, bytecode pc 99
        this.m_nextLabel.setPosition(cc.p((this.getPosition().x + this.getContentSize().width), this.getPosition().y));
        // source line 124, bytecode pc 117
        this.m_nextLabel.refreshLayout();
    }
    if (this.m_lastLabel) {
        // source line 132, bytecode pc 217
        this.m_lastLabel.setPosition(cc.p((this.getPosition().x - this.getContentSize().width), this.getPosition().y));
        // source line 136, bytecode pc 235
        this.m_lastLabel.refreshLayout();
    }
},
    _getCfg: function(fontId) {
    var _info;
    // source line 142, bytecode pc 27
    (_info = xs.Cfg.System.sgs_config_bmf[fontId]);
    if (!_info) {
        // source line 144, bytecode pc 59
        (_info = xs.Cfg.BMF[fontId]);
    }
    // source line 146, bytecode pc 90
    xs.assert(_info, "createWithBMFontId ,need _info", fontId);
    // source line 147, bytecode pc 94
    return _info;
},
    getFileName: function(fontId) {
    var _info;
    // source line 152, bytecode pc 19
    (_info = this._getCfg(fontId));
    // source line 153, bytecode pc 40
    return (("fnt/" + _info.file) + ".fnt");
},
    preload: function(fontId) {
    var _fileName, _tmp;
    // source line 162, bytecode pc 19
    (_fileName = this.getFileName(fontId));
    // source line 165, bytecode pc 54
    (_tmp = cc.LabelBMFont.create("", _fileName));
    // source line 168, bytecode pc 68
    (this.preload_map[fontId] = _tmp);
    // source line 169, bytecode pc 83
    _tmp.retain();
},
    unload_preload: function(fontId) {
    // source line 175, bytecode pc 21
    this.preload_map[fontId].release();
},
    create: function(str, fontId, alignment, width) {
    var _info, _ret, arguments;
    // source line 178, bytecode pc 4
    (arguments = arguments);
    // source line 180, bytecode pc 29
    this.log("LabelBMFont/create", "begin");
    // source line 181, bytecode pc 52
    this.dump("LabelBMFont/create", arguments);
    // source line 183, bytecode pc 72
    (_info = this._getCfg(fontId));
    // source line 185, bytecode pc 103
    xs.assert(_info, "createWithBMFontId ,need _info", fontId);
    // source line 187, bytecode pc 140
    (_ret = this._create(str, _info.file, alignment, width));
    // source line 191, bytecode pc 165
    this.log("LabelBMFont/create", "end");
    // source line 193, bytecode pc 169
    return _ret;
}
}));
// source line 197, bytecode pc 219
(xs.Factorys.LabelBMFont.prototype = xs.Factorys.BaseLabel);
