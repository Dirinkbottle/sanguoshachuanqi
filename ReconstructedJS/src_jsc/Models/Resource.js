// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Resource.js:1
// source line 271, bytecode pc 294
(xs.Models.Resource = xs.Models.BaseCfg.extend({
    name: "Resource",
    CfgDataType: xs.Constant_CfgDataType_Res,
    names: {},
    init: function(resType) {
    // source line 22, bytecode pc 12
    this._super();
    // source line 24, bytecode pc 22
    (this.type = resType);
    // source line 26, bytecode pc 54
    xs.assert(this.type, "need resType ", this);
    // source line 28, bytecode pc 56
    return true;
},
    getHDUrl: function() {
    // source line 33, bytecode pc 17
    return this.getBaseDataRef().hd_url;
},
    getPaintingId: function() {
    // source line 39, bytecode pc 17
    return this.getBaseDataRef().painting_id;
},
    getIconCoordinate: function() {
    // source line 44, bytecode pc 17
    return this.getBaseDataRef().icon_coordinate;
},
    getChartCardCoordinate: function() {
    // source line 48, bytecode pc 17
    return this.getBaseDataRef().ladder_head_rect;
},
    getPosOfWaist: function() {
    var _str, _strArray;
    // source line 55, bytecode pc 31
    (_str = (this.getBaseDataRef().waist_position || ""));
    // source line 56, bytecode pc 55
    (_strArray = _str.split(","));
    // source line 62, bytecode pc 128
    return cc.p(xs.Utils.parseIntSafe(_strArray[0]), xs.Utils.parseIntSafe(_strArray[1]));
},
    getPosOfFoot: function() {
    var _str, _strArray;
    // source line 69, bytecode pc 31
    (_str = (this.getBaseDataRef().foot_position || ""));
    // source line 70, bytecode pc 55
    (_strArray = _str.split(","));
    // source line 75, bytecode pc 128
    return cc.p(xs.Utils.parseIntSafe(_strArray[0]), xs.Utils.parseIntSafe(_strArray[1]));
},
    getChapterHeadCoordinateArray: function() {
    var _coorString, _arr;
    // source line 83, bytecode pc 20
    (_coorString = this.getBaseDataRef().head_chapter_rect);
    if (((_coorString === null) || (_coorString === undefined))) {
        // source line 87, bytecode pc 61
        (_coorString = this.getIconCoordinate());
        // source line 88, bytecode pc 85
        (_arr = _coorString.split(","));
        // source line 89, bytecode pc 96
        (_arr[0] = (_arr[0] - 80));
        // source line 90, bytecode pc 107
        (_arr[1] = (_arr[1] - 80));
        // source line 91, bytecode pc 120
        (_arr[2] = (_arr[2] + 160));
        // source line 92, bytecode pc 133
        (_arr[3] = (_arr[3] + 160));
        // source line 94, bytecode pc 137
        return _arr;
    }
    // source line 97, bytecode pc 161
    (_arr = _coorString.split(","));
    // source line 99, bytecode pc 165
    return _arr;
},
    createHeadSprite: function() {
    var _paintingId, _ret;
    // source line 105, bytecode pc 15
    (_paintingId = this.getPaintingId());
    // source line 115, bytecode pc 61
    (_ret = xs.Factorys.Sprite.createWithFileName((("icon/Cmn04_" + _paintingId) + ".png")));
    // source line 117, bytecode pc 65
    return _ret;
},
    createChapterHeadSprite: function() {
    var _ret;
    // source line 124, bytecode pc 15
    (_ret = this.createHeadSprite());
    // source line 125, bytecode pc 76
    _ret.setScaleX((xs.Cfg.Resource.HeadChapter.w / _ret.getContentSize().width));
    // source line 126, bytecode pc 137
    _ret.setScaleY((xs.Cfg.Resource.HeadChapter.h / _ret.getContentSize().height));
    // source line 127, bytecode pc 141
    return _ret;
},
    createOriginalSprite: function() {
    var _file, _ret;
    // source line 133, bytecode pc 15
    (_file = this.getResFileName());
    // source line 135, bytecode pc 49
    (_ret = xs.Factorys.Sprite.createWithFileName(_file));
    // source line 137, bytecode pc 53
    return _ret;
},
    getResFileName: function() {
    if ((this.type === xs.Constant_ResType_General)) {
        // source line 144, bytecode pc 71
        return ((xs.Cfg.Resource.Path.Card1_V2.file_pre + this.getPaintingId()) + ".png");
    } else {
        if ((this.type === xs.Constant_ResType_Equ)) {
            // source line 147, bytecode pc 148
            return ((xs.Cfg.Resource.Path.Equ1.file_pre + this.getPaintingId()) + ".png");
        } else {
            if ((this.type === xs.Constant_ResType_Skill)) {
                // source line 150, bytecode pc 225
                return ((xs.Cfg.Resource.Path.Skill1.file_pre + this.getPaintingId()) + ".png");
            } else {
                // source line 153, bytecode pc 262
                xs.assert(false, "need ResType", this.name);
            }
        }
    }
},
    getResFileName_Chapter: function() {
    // source line 160, bytecode pc 49
    return ((xs.Cfg.Resource.Path.ChapterBg.file_pre + this.getPaintingId()) + ".png");
},
    getResFileName_Fight: function() {
    // source line 164, bytecode pc 49
    return ((xs.Cfg.Resource.Path.FightBg.file_pre + this.getPaintingId()) + ".png");
},
    createBgSprite_Map: function() {
    var _file, _ret;
    // source line 169, bytecode pc 15
    (_file = this.getResFileName_Chapter());
    // source line 172, bytecode pc 49
    (_ret = xs.Factorys.Sprite.createWithFileName(_file));
    // source line 175, bytecode pc 53
    return _ret;
},
    createBgSprite_Fight: function() {
    var _file, _ret;
    // source line 181, bytecode pc 15
    (_file = this.getResFileName_Fight());
    // source line 184, bytecode pc 49
    (_ret = xs.Factorys.Sprite.createWithFileName(_file));
    // source line 187, bytecode pc 53
    return _ret;
},
    createCard_LadderChart: function() {
    var _file, waistPos, scale, _pos, _ret;
    // source line 192, bytecode pc 15
    (_file = this.getResFileName());
    // source line 194, bytecode pc 31
    (waistPos = this.getPosOfWaist());
    // source line 196, bytecode pc 40
    (scale = 0.6);
    // source line 201, bytecode pc 125
    (_pos = {
    x: (waistPos.x - ((168 / scale) / 2)),
    y: ((waistPos.y - ((267 / scale) / 2)) - 90),
    w: (168 / scale),
    h: (267 / scale)
});
    // source line 210, bytecode pc 212
    (_ret = xs.Factorys.Sprite.createWithFileName(_file, cc.rect(_pos.x, _pos.y, _pos.w, _pos.h)));
    // source line 214, bytecode pc 216
    return _ret;
},
    _createOriginalSpriteByApType: function(apType, isRotation) {
    var _fileName, _tex2d, _size, _ret, _pos;
    // source line 218, bytecode pc 15
    (_fileName = this.getResFileName());
    // source line 220, bytecode pc 44
    (_tex2d = xs.tex_cache.addImage(_fileName));
    if (_tex2d) {
        // source line 224, bytecode pc 70
        (_size = _tex2d.getContentSizeInPixels());
        // source line 228, bytecode pc 104
        (_ret = xs.Factorys.Sprite.createWithFileName(_fileName));
        // source line 232, bytecode pc 156
        (_pos = ((apType === xs.Constant_ApType_Waist) ? this.getPosOfWaist() : this.getPosOfFoot()));
        // source line 236, bytecode pc 233
        _ret.setAnchorPoint(cc.p((_pos.x / _size.width), ((_size.height - _pos.y) / _size.height)));
        if (isRotation) {
            // source line 239, bytecode pc 260
            _ret.setRotationY(180);
        }
        // source line 241, bytecode pc 264
        return _ret;
    } else {
        // source line 245, bytecode pc 303
        (_ret = xs.Factorys.Sprite.createWithFileName(_fileName));
        if (isRotation) {
            // source line 247, bytecode pc 330
            _ret.setRotationY(180);
        } else {
            // source line 249, bytecode pc 352
            _ret.setRotationY(0);
        }
        // source line 251, bytecode pc 356
        return _ret;
    }
},
    createOriginalSprite_Waist: function() {
    // source line 258, bytecode pc 23
    return this._createOriginalSpriteByApType(xs.Constant_ApType_Waist);
},
    createOriginalSprite_Waist_Rotation: function() {
    // source line 264, bytecode pc 25
    return this._createOriginalSpriteByApType(xs.Constant_ApType_Waist, true);
},
    createOriginalSprite_Foot: function() {
    // source line 272, bytecode pc 23
    return this._createOriginalSpriteByApType(xs.Constant_ApType_Foot);
}
}));
// source line 278, bytecode pc 320
(xs.Models.Resource.createWithBase = function(id, resType) {
    var resource;
    // source line 280, bytecode pc 30
    xs.assert(id, "resource id error", id);
    // source line 281, bytecode pc 61
    xs.assert(resType, "resType error", resType);
    // source line 283, bytecode pc 85
    (resource = new xs.Models.Resource());
    if ((resource && resource.init(resType))) {
        // source line 285, bytecode pc 136
        resource.readBaseData(id);
        // source line 286, bytecode pc 140
        return resource;
    }
    // source line 288, bytecode pc 169
    xs.assert(false, "xs.Models.Resource.createWithBase error", id);
    // source line 289, bytecode pc 171
    return null;
});
