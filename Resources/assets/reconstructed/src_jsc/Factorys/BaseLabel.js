// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Factorys/BaseLabel.js:1
// source line 220, bytecode pc 202
(xs.Factorys.BaseLabel = (xs.Factorys.BaseLabel || {
    name: "xs.Factorys.BaseLabel",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    _wrapperExt: function(label, child) {
    // source line 33, bytecode pc 29
    (label.setStringById = this._setStringById.bind(label));
    // source line 34, bytecode pc 59
    (label.setStringParams = this._setStringParams.bind(label));
    // source line 35, bytecode pc 89
    (label.getNext = this._getNext.bind(label));
    // source line 36, bytecode pc 119
    (label.getLast = this._getLast.bind(label));
    // source line 37, bytecode pc 149
    (label.refreshAp = this._refreshAp.bind(label));
    // source line 38, bytecode pc 179
    (label.setAlignH = this._setAlignH.bind(label));
    // source line 39, bytecode pc 209
    (label.setAlignV = this._setAlignV.bind(label));
    // source line 40, bytecode pc 239
    (label.setAligns = this._setAligns.bind(label));
    // source line 42, bytecode pc 271
    (label.setNext = child._setNext.bind(label));
    // source line 43, bytecode pc 303
    (label.setLast = child._setLast.bind(label));
    // source line 44, bytecode pc 335
    (label.refreshLayout = child._refreshLayout.bind(label));
},
    _wrapperButton: function(btn, child) {
    // source line 48, bytecode pc 29
    (btn.setStringById = this._setStringById.bind(btn));
    // source line 49, bytecode pc 59
    (btn.setStringParams = this._setStringParams.bind(btn));
},
    _setAligns: function(alignH, alignV) {
    if (this.setHorizontalAlignment) {
        // source line 58, bytecode pc 27
        this.setHorizontalAlignment(alignH);
    }
    if (this.setVerticalAlignment) {
        // source line 62, bytecode pc 55
        this.setVerticalAlignment(alignV);
    }
    // source line 65, bytecode pc 65
    (this.m_alignH = alignH);
    // source line 66, bytecode pc 75
    (this.m_alignV = alignV);
    // source line 68, bytecode pc 88
    this.refreshAp();
    // source line 72, bytecode pc 90
    return this;
},
    _setAlignV: function(alignV) {
    // source line 76, bytecode pc 16
    this.setVerticalAlignment(alignV);
    // source line 78, bytecode pc 26
    (this.m_alignV = alignV);
    // source line 80, bytecode pc 39
    this.refreshAp();
    // source line 82, bytecode pc 41
    return this;
},
    _setAlignH: function(alignH) {
    // source line 86, bytecode pc 16
    this.setHorizontalAlignment(alignH);
    // source line 88, bytecode pc 26
    (this.m_alignH = alignH);
    // source line 90, bytecode pc 39
    this.refreshAp();
    // source line 91, bytecode pc 41
    return this;
},
    _refreshAp: function() {
    var _alignH, _alignV, _ap;
    if (this.getHorizontalAlignment) {
        // source line 100, bytecode pc 34
        (_alignH = this.getHorizontalAlignment());
    } else {
        // source line 103, bytecode pc 53
        (_alignH = xs.AlignH_Center);
    }
    if (this.getVerticalAlignment) {
        // source line 107, bytecode pc 80
        (_alignV = this.getVerticalAlignment());
    } else {
        // source line 110, bytecode pc 99
        (_alignV = xs.AlignV_Center);
    }
    // source line 114, bytecode pc 109
    (_alignH = this.m_alignH);
    // source line 115, bytecode pc 119
    (_alignV = this.m_alignV);
    // source line 126, bytecode pc 157
    (_ap = xs.Factorys.BaseLabel.getAnchorPointByAlign(_alignH, _alignV));
    // source line 130, bytecode pc 174
    this.setAnchorPoint(_ap);
    // source line 131, bytecode pc 176
    return this;
},
    getAnchorPointByAlign: function(alignmentH, alignmentV) {
    var _alignmentH, _alignmentV, _cfg, _ret;
    // source line 137, bytecode pc 6
    (_alignmentH = alignmentH);
    // source line 138, bytecode pc 13
    (_alignmentV = alignmentV);
    if (((_alignmentH === null) || (_alignmentH === undefined))) {
        // source line 141, bytecode pc 52
        (_alignmentH = cc.TEXT_ALIGNMENT_CENTER);
    }
    if (((_alignmentV === null) || (_alignmentV === undefined))) {
        // source line 144, bytecode pc 91
        (_alignmentV = cc.VERTICAL_TEXT_ALIGNMENT_CENTER);
    }
    // source line 164, bytecode pc 253
    (_cfg = [
    [ xs.ap_lt, xs.ap_lc, xs.ap_lb ],
    [ xs.ap_tc, xs.ap_c, xs.ap_bc ],
    [ xs.ap_rt, xs.ap_rc, xs.ap_rb ]
]);
    // source line 169, bytecode pc 268
    (_ret = _cfg[_alignmentH][_alignmentV]);
    // source line 171, bytecode pc 272
    return _ret;
},
    _setStringById: function(stringId, paramArray) {
    // source line 176, bytecode pc 9
    (this._stringId = stringId);
    // source line 177, bytecode pc 26
    this.setStringParams(paramArray);
    // source line 179, bytecode pc 28
    return this;
},
    _setStringParams: function(paramArray) {
    var _string;
    if (this._stringId) {
        if (paramArray) {
            // source line 189, bytecode pc 69
            this.setString(xs.Tools.String.createStringWithArgsArray(this._stringId, paramArray));
        } else {
            // source line 192, bytecode pc 121
            this.setString(xs.Tools.String.createString(this._stringId));
        }
    } else {
        if (!this._stringSrc) {
            // source line 198, bytecode pc 168
            (this._stringSrc = (this.getString() || ""));
        }
        if (paramArray) {
            // source line 204, bytecode pc 205
            (_string = this._stringSrc.convWithArgs(paramArray));
        } else {
            // source line 207, bytecode pc 220
            (_string = this._stringSrc);
        }
        // source line 210, bytecode pc 237
        this.setString(_string);
    }
    // source line 213, bytecode pc 239
    return this;
},
    _getNext: function() {
    // source line 217, bytecode pc 6
    return this.m_nextLabel;
},
    _getLast: function() {
    // source line 221, bytecode pc 6
    return this.m_lastLabel;
}
}));
