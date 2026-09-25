// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Factorys/Sprite.js:1
// source line 309, bytecode pc 187
(xs.Factorys.Sprite = {
    path: "",
    defAreas: null,
    name: "xs.Factorys.Sprite",
    createDummy: function() {
    var _ret;
    // source line 27, bytecode pc 27
    (_ret = this.create("dummy", "Cmn01"));
    // source line 29, bytecode pc 37
    (_ret.isDummySprite = true);
    // source line 31, bytecode pc 41
    return _ret;
},
    createSpriteBatchNode: function(area) {
    var _cfg_area, _plist, _idx;
    // source line 37, bytecode pc 19
    (_cfg_area = this._getCfgByArea(area));
    // source line 38, bytecode pc 31
    (_plist = _cfg_area.plist);
    if ((_plist.indexOf("tex/") === 0)) {
        // source line 41, bytecode pc 79
        (_plist = _plist.slice(4));
    }
    // source line 44, bytecode pc 103
    (_idx = _plist.indexOf(".plist"));
    if ((_idx > 0)) {
        // source line 47, bytecode pc 137
        (_plist = _plist.slice(0, _idx));
        // source line 48, bytecode pc 150
        (_plist = (_plist + ".png"));
    }
    // source line 52, bytecode pc 177
    xs.log("createSpriteBatchNode", _plist);
    // source line 55, bytecode pc 203
    return cc.SpriteBatchNode.create(_plist);
},
    _createWithFileName: function(name, rect) {
    var _sprite;
    // source line 62, bytecode pc 4
    (_sprite = null);
    if (rect) {
        // source line 65, bytecode pc 45
        (_sprite = cc.Sprite.create(name, rect));
    } else {
        // source line 68, bytecode pc 79
        (_sprite = cc.Sprite.create(name));
    }
    if ((_sprite === null)) {
        // source line 78, bytecode pc 116
        xs.warn("Sprite.createWithFileName is null", name);
    }
    // source line 81, bytecode pc 120
    return _sprite;
},
    createWithFileName: function(name, rect) {
    var _ret;
    // source line 86, bytecode pc 23
    (_ret = this._createWithFileName(name, rect));
    if ((_ret === null)) {
        // source line 89, bytecode pc 49
        (_ret = this.createDummy());
    }
    // source line 94, bytecode pc 76
    xs.assert(_ret, "createWithFileName failed");
    // source line 96, bytecode pc 80
    return _ret;
},
    setDefaultArea: function(area) {
    // source line 101, bytecode pc 9
    (this.defAreas = area);
},
    createWithDefaultArea: function(name) {
    var _areas, i;
    // source line 107, bytecode pc 9
    (_areas = this.defAreas);
    // source line 109, bytecode pc 66
    xs.assert(xs.Utils.isArray(_areas), "_areas is not array", _areas, name);
    // source line 111, bytecode pc 71
    (i = 0);
    while ((i < _areas.length)) {
        if ((xs.Cfg.Sprite[_areas[i]] && xs.Cfg.Sprite[_areas[i]][name])) {
            // source line 113, bytecode pc 163
            return this.create(name, _areas[i]);
        }
        // source line 111, bytecode pc 182
        (i = (+i + 1));
    }
    // source line 119, bytecode pc 234
    xs.assert(false, "createWithDefaultArea failed", name, _areas);
},
    getSpriteFrame: function(name, area, paramArray) {
    var _cfg_area, _cfg_name, _frameName;
    // source line 125, bytecode pc 19
    (_cfg_area = this._getCfgByArea(area));
    // source line 126, bytecode pc 43
    (_cfg_name = this._getCfgByName(_cfg_area, name));
    // source line 128, bytecode pc 55
    (_frameName = _cfg_name.frameName);
    if (paramArray) {
        // source line 131, bytecode pc 85
        (_frameName = _frameName.convWithArgs(paramArray));
    }
    // source line 134, bytecode pc 122
    return cc.SpriteFrameCache.getInstance().getSpriteFrame(_frameName);
},
    load: function(area, bRetain) {
    var _plist;
    // source line 142, bytecode pc 32
    this.log(((("111load:" + area) + "|") + bRetain));
    if (!this.m_cacheMap) {
        // source line 145, bytecode pc 57
        (this.m_cacheMap = {});
    }
    if ((this.m_cacheMap[area] > 0)) {
        // source line 150, bytecode pc 89
        (this.m_cacheMap[area] = (this.m_cacheMap[area] + 1));
    } else {
        // source line 153, bytecode pc 106
        (this.m_cacheMap[area] = 1);
    }
    // source line 156, bytecode pc 139
    this.log(((("222load:" + area) + "|") + bRetain));
    if (area) {
        // source line 163, bytecode pc 198
        xs.assert(xs.Cfg.Sprite[area], "check area ,load", area);
        // source line 164, bytecode pc 226
        (_plist = xs.Cfg.Sprite[area].plist);
        if ((_plist.indexOf("tex/") === 0)) {
            // source line 167, bytecode pc 274
            (_plist = _plist.slice(4));
        }
        // source line 170, bytecode pc 291
        this.addSpriteFrames(_plist);
        if (bRetain) {
            // source line 176, bytecode pc 348
            xs.JsbConnecter.getInstance().invoke("SpriteFrameCache", "retainSpriteFramesWithFile", _plist);
        }
    } else {
        // source line 185, bytecode pc 382
        xs.assert(false, "load", area);
    }
},
    unload: function(area, bRelease) {
    var _plist;
    if (!this.m_cacheMap) {
        // source line 200, bytecode pc 24
        (this.m_cacheMap = {});
    }
    if ((this.m_cacheMap[area] > 0)) {
        // source line 205, bytecode pc 56
        (this.m_cacheMap[area] = (this.m_cacheMap[area] - 1));
        if ((this.m_cacheMap[area] > 0)) {
            // source line 209, bytecode pc 75
            return void 0;
        }
    } else {
        // source line 213, bytecode pc 82
        return void 0;
    }
    // source line 219, bytecode pc 119
    xs.log_cmn(((("unload:" + area) + "|") + bRelease));
    if (area) {
        // source line 224, bytecode pc 178
        xs.assert(xs.Cfg.Sprite[area], "check area ,load", area);
        // source line 225, bytecode pc 206
        (_plist = xs.Cfg.Sprite[area].plist);
        if ((_plist.indexOf("tex/") === 0)) {
            // source line 228, bytecode pc 254
            (_plist = _plist.slice(4));
        }
        if (bRelease) {
            // source line 236, bytecode pc 311
            xs.JsbConnecter.getInstance().invoke("SpriteFrameCache", "releaseSpriteFramesWithFile", _plist);
        }
        // source line 242, bytecode pc 328
        this.removeSpriteFrames(_plist);
    } else {
        // source line 253, bytecode pc 362
        xs.assert(false, "unload", area);
    }
},
    removeSpriteFrames: function(filePlist) {
    var _plist;
    // source line 260, bytecode pc 6
    (_plist = filePlist);
    if ((_plist.indexOf("tex/") === 0)) {
        // source line 263, bytecode pc 54
        (_plist = _plist.slice(4));
    }
    // source line 267, bytecode pc 77
    this.log("removeSpriteFrames", _plist);
    // source line 268, bytecode pc 114
    cc.SpriteFrameCache.getInstance().removeSpriteFramesFromFile(_plist);
},
    addSpriteFrames: function(filePlist) {
    var _plist;
    // source line 275, bytecode pc 6
    (_plist = filePlist);
    if ((_plist.indexOf("tex/") === 0)) {
        // source line 278, bytecode pc 54
        (_plist = _plist.slice(4));
    }
    // source line 282, bytecode pc 77
    this.log("addSpriteFrames", _plist);
    // source line 284, bytecode pc 114
    cc.SpriteFrameCache.getInstance().addSpriteFrames(_plist);
},
    _getCfgByArea: function(area) {
    var _ret, _plist, arguments;
    // source line 288, bytecode pc 4
    (arguments = arguments);
    // source line 290, bytecode pc 27
    (_ret = xs.Cfg.Sprite[area]);
    // source line 291, bytecode pc 58
    xs.assert(_ret, "check area", area);
    // source line 292, bytecode pc 86
    (_plist = xs.Cfg.Sprite[area].plist);
    // source line 293, bytecode pc 117
    xs.assert(_plist, "need _plist", arguments);
    // source line 295, bytecode pc 121
    return _ret;
},
    _getCfgByName: function(cfg, name) {
    var _ret;
    // source line 300, bytecode pc 10
    (_ret = cfg[name]);
    // source line 301, bytecode pc 41
    xs.assert(_ret, "check area and name", name);
    // source line 303, bytecode pc 45
    return _ret;
},
    create: function(name, area, paramArray, autoAp) {
    var _cfg_area, _cfg_name, _plist, _frameName, _sprite, _size;
    // source line 311, bytecode pc 19
    (_cfg_area = this._getCfgByArea(area));
    // source line 312, bytecode pc 43
    (_cfg_name = this._getCfgByName(_cfg_area, name));
    // source line 314, bytecode pc 55
    (_plist = _cfg_area.plist);
    // source line 315, bytecode pc 67
    (_frameName = _cfg_name.frameName);
    if (paramArray) {
        // source line 318, bytecode pc 97
        (_frameName = _frameName.convWithArgs(paramArray));
    }
    // source line 322, bytecode pc 102
    (_sprite = null);
    if (_plist) {
        // source line 327, bytecode pc 139
        (_sprite = cc.Sprite.createWithSpriteFrameName(_frameName));
    }
    // source line 335, bytecode pc 205
    xs.assert(_sprite, "create Sprite failed", { name: name, area: area, frameName: _frameName, plist: _plist });
    if ((autoAp === true)) {
        if (((_cfg_name.ap_x !== null) && ((_cfg_name.ap_y !== null) && ((_cfg_name.ap_x !== undefined) && (_cfg_name.ap_y !== undefined))))) {
            // source line 346, bytecode pc 304
            (_size = _sprite.getContentSize());
            // source line 349, bytecode pc 364
            _sprite.setAnchorPoint((_cfg_name.ap_x / _size.width), ((_size.height - _cfg_name.ap_y) / _size.height));
        }
    }
    // source line 354, bytecode pc 381
    _sprite.setCascadeOpacityEnabled(true);
    // source line 355, bytecode pc 398
    _sprite.setCascadeColorEnabled(true);
    // source line 357, bytecode pc 402
    return _sprite;
}
});
