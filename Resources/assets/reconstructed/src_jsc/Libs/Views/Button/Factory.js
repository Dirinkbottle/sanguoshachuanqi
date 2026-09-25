// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Libs/Views/Button/Factory.js:1
// source line 274, bytecode pc 210
(xs.Libs.Views.Button.Factory = (xs.Libs.Views.Button.Factory || {
    name: "xs.Libs.Views.Button.Factory",
    defaultSize: cc.size(200, 100),
    _createWithFont: function(fontType, fontIds, bgCfg, str, size) {
    var _str, _ret, _spriteAreaCfg, _stateArr, i, _bgId, _bgSpriteP9, _fontId, _label, _size;
    // source line 20, bytecode pc 17
    (_str = (str || ""));
    // source line 22, bytecode pc 52
    (_ret = xs.Libs.Views.Button.create());
    // source line 23, bytecode pc 78
    _ret.setAnchorPoint(xs.ap_c);
    // source line 24, bytecode pc 97
    _ret.setMargins(0, 0);
    if (size) {
        // source line 28, bytecode pc 124
        _ret.setPreferredSize(size);
    }
    // source line 31, bytecode pc 152
    (_spriteAreaCfg = xs.Cfg.Sprite[bgCfg.bgArea]);
    // source line 34, bytecode pc 183
    xs.assert(_spriteAreaCfg, "_spriteAreaCfg error", bgCfg);
    // source line 41, bytecode pc 248
    (_stateArr = [
    cc.CONTROL_STATE_NORMAL,
    cc.CONTROL_STATE_HIGHLIGHTED,
    cc.CONTROL_STATE_DISABLED,
    cc.CONTROL_STATE_SELECTED
]);
    // source line 45, bytecode pc 253
    (i = 0);
    while ((i < _stateArr.length)) {
        // source line 46, bytecode pc 291
        (_bgId = (bgCfg.bgIds[i] || bgCfg.bgIds[0]));
        // source line 51, bytecode pc 327
        _ret.setBackgroundSpriteFrameForState(_spriteAreaCfg[_bgId].frameName, _stateArr[i]);
        if ((bgCfg.bgFlipX === true)) {
            // source line 53, bytecode pc 368
            (_bgSpriteP9 = _ret.getBackgroundSpriteForState(_stateArr[i]));
            // source line 59, bytecode pc 387
            _bgSpriteP9.setRotationY(180);
        }
        if ((fontType === xs.Constant_View_Btn_TTF_V2)) {
            // source line 66, bytecode pc 438
            (_fontId = (bgCfg.fontIds[i] || bgCfg.fontIds[0]));
            // source line 68, bytecode pc 476
            (_label = xs.Factorys.LabelTTF.create(_str, _fontId));
            // source line 70, bytecode pc 514
            _ret.setTitleColorForState(_label.getColor(), _stateArr[i]);
            // source line 71, bytecode pc 541
            _ret.setTitleLabelForState(_label, _stateArr[i]);
        } else {
            if ((fontType === xs.Constant_View_Btn_BMF_V2)) {
                // source line 75, bytecode pc 597
                (_fontId = (bgCfg.fontIds[i] || bgCfg.fontIds[0]));
                // source line 77, bytecode pc 635
                (_label = xs.Factorys.LabelBMFont.create(_str, _fontId));
                // source line 78, bytecode pc 662
                _ret.setTitleLabelForState(_label, _stateArr[i]);
            } else {
                if ((fontType === xs.Constant_View_Btn_NoneFont)) {
                } else {
                    // source line 84, bytecode pc 716
                    xs.assert(false, "fontType error");
                }
            }
        }
        // source line 88, bytecode pc 743
        _ret.setTitleForState(_str, _stateArr[i]);
        // source line 45, bytecode pc 757
        (i = (+i + 1));
    }
    if (size) {
    } else {
        // source line 111, bytecode pc 807
        (_bgId = bgCfg.bgIds[0]);
        // source line 113, bytecode pc 861
        (_size = xs.Factorys.Sprite.create(_bgId, bgCfg.bgArea).getContentSize());
        // source line 114, bytecode pc 880
        _ret.setPreferredSize(_size);
    }
    if (bgCfg.label_ap) {
        // source line 122, bytecode pc 917
        _ret.setLabelAnchorPoint(bgCfg.label_ap);
    }
    // source line 125, bytecode pc 921
    return _ret;
},
    create: function(btnId) {
    var _cfg, _cfgStyle, _str;
    // source line 132, bytecode pc 19
    (_cfg = this._getCfg(btnId));
    // source line 134, bytecode pc 44
    (_cfgStyle = this._getStyleCfg(_cfg.styleId));
    if (_cfg.stringId) {
        // source line 140, bytecode pc 100
        (_str = xs.Tools.Ml.createString(_cfg.stringId));
    } else {
        if (_cfg.string) {
            // source line 143, bytecode pc 130
            (_str = _cfg.string);
        } else {
            // source line 146, bytecode pc 144
            (_str = "");
        }
    }
    // source line 150, bytecode pc 203
    return this._createWithFont(_cfgStyle.type, (_cfgStyle.fontIds || []), _cfgStyle, _str, _cfgStyle.size);
},
    createByStyleId: function(styleId, string) {
    var _cfgStyle;
    // source line 158, bytecode pc 19
    (_cfgStyle = this._getStyleCfg(styleId));
    // source line 159, bytecode pc 89
    return this._createWithFont(_cfgStyle.type, (_cfgStyle.fontIds || []), _cfgStyle, (string || ""), _cfgStyle.size);
},
    getCfg: function(btnId) {
    // source line 164, bytecode pc 16
    return this._getCfg(btnId);
},
    _getCfg: function(btnId) {
    var _cfg;
    // source line 169, bytecode pc 22
    (_cfg = xs.Cfg.Btn[btnId]);
    if (!_cfg) {
        // source line 173, bytecode pc 54
        this.warn(("_cfg cant find,use default:" + btnId));
        // source line 174, bytecode pc 87
        (_cfg = (_cfg || xs.Cfg.Btn.Default));
    }
    // source line 178, bytecode pc 119
    this.assert(_cfg.styleId, "need styleId", _cfg);
    // source line 181, bytecode pc 123
    return _cfg;
},
    _getStyleCfg: function(btnStyleId) {
    var _cfg, _type;
    // source line 187, bytecode pc 22
    (_cfg = xs.Cfg.BtnStyle[btnStyleId]);
    if (!_cfg) {
        // source line 191, bytecode pc 54
        this.warn(("_cfg cant find,use default:" + btnStyleId));
        // source line 192, bytecode pc 87
        (_cfg = (_cfg || xs.Cfg.BtnStyle.Default));
    }
    if ((_cfg.type === xs.Constant_View_Btn_TTF_V2)) {
    } else {
        if ((_cfg.type === xs.Constant_View_Btn_BMF_V2)) {
        } else {
            if ((_cfg.type === xs.Constant_View_Btn_NoneFont)) {
            } else {
                // source line 203, bytecode pc 197
                this.warn(("_cfg _type error :" + btnStyleId));
                // source line 204, bytecode pc 221
                (_cfg = xs.Cfg.BtnStyle.Default);
            }
        }
    }
    // source line 207, bytecode pc 233
    (_type = _cfg.type);
    if (((_type === xs.Constant_View_Btn_TTF_V2) || (_type === xs.Constant_View_Btn_BMF_V2))) {
        // source line 210, bytecode pc 311
        this.assert((_cfg.bgIds.length >= 1), "bgIds at least one", _cfg);
        // source line 211, bytecode pc 350
        this.assert((_cfg.fontIds.length >= 1), "fontIds at least one", _cfg);
    }
    // source line 214, bytecode pc 354
    return _cfg;
},
    createWithStringId: function(btnId, strId) {
    var _ret;
    // source line 222, bytecode pc 19
    (_ret = this.create(btnId));
    // source line 223, bytecode pc 38
    _ret.setStringById(strId);
    // source line 224, bytecode pc 42
    return _ret;
},
    createWithString: function(btnId, string) {
    var _ret;
    // source line 229, bytecode pc 19
    (_ret = this.create(btnId));
    // source line 230, bytecode pc 38
    _ret.setString(string);
    // source line 231, bytecode pc 42
    return _ret;
},
    createInvisible: function(size) {
    var _btn;
    // source line 239, bytecode pc 34
    (_btn = xs.Libs.Views.Button.create());
    // source line 240, bytecode pc 60
    _btn.setAnchorPoint(xs.ap_c);
    // source line 241, bytecode pc 79
    _btn.setPreferredSize(size);
    // source line 243, bytecode pc 110
    xs.Utils.Node.makeDebugBoundRect(_btn);
    // source line 245, bytecode pc 114
    return _btn;
},
    createInvisibleWithChild: function(nodeView) {
    var touchAreaSize, _ret;
    // source line 250, bytecode pc 4
    (touchAreaSize = null);
    if (nodeView.getBodySize) {
        // source line 252, bytecode pc 35
        (touchAreaSize = nodeView.getBodySize());
    } else {
        // source line 255, bytecode pc 108
        this.assert(((nodeView.getContentSize().width !== 0) || (nodeView.getContentSize().height !== 0)), "need impl getBodySize or contentsize != 0");
        // source line 256, bytecode pc 126
        (touchAreaSize = nodeView.getContentSize());
    }
    // source line 259, bytecode pc 146
    (_ret = this.createInvisible(touchAreaSize));
    // source line 263, bytecode pc 177
    xs.Utils.Node.makeDebugBoundRect(_ret);
    // source line 266, bytecode pc 229
    xs.Utils.Node.attachNodes(_ret, nodeView, { desc: "c" });
    // source line 270, bytecode pc 233
    return _ret;
},
    createInvisibleWithParent: function(nodeView) {
    var touchAreaSize, _ret;
    // source line 275, bytecode pc 4
    (touchAreaSize = null);
    if (nodeView.getBodySize) {
        // source line 277, bytecode pc 35
        (touchAreaSize = nodeView.getBodySize());
    } else {
        // source line 280, bytecode pc 108
        this.assert(((nodeView.getContentSize().width !== 0) || (nodeView.getContentSize().height !== 0)), "need impl getBodySize or contentsize != 0");
        // source line 281, bytecode pc 126
        (touchAreaSize = nodeView.getContentSize());
    }
    // source line 284, bytecode pc 146
    (_ret = this.createInvisible(touchAreaSize));
    // source line 288, bytecode pc 177
    xs.Utils.Node.makeDebugBoundRect(_ret);
    // source line 291, bytecode pc 229
    xs.Utils.Node.attachNodes(nodeView, _ret, { desc: "c" });
    // source line 295, bytecode pc 233
    return _ret;
}
}));
