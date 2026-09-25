// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Label/LabelExt.js:1
// source line 190, bytecode pc 199
(xs.Views.Label.LabelExt = (xs.Views.Label.LabelExt || xs.Views.BaseView.extend({
    initByLabelIds: function(arrIds) {
    var i, _id;
    // source line 11, bytecode pc 11
    (this.m_labels = []);
    // source line 13, bytecode pc 16
    (i = 0);
    while ((i < arrIds.length)) {
        // source line 14, bytecode pc 33
        (_id = arrIds[i]);
        // source line 16, bytecode pc 74
        (this.m_labels[i] = xs.Factorys.Label.createByLabelId(_id));
        // source line 13, bytecode pc 89
        i++;
    }
    // source line 19, bytecode pc 120
    this.init();
},
    initByStyleIds: function(arrLs) {
    var i, _id;
    // source line 23, bytecode pc 11
    (this.m_labels = []);
    // source line 24, bytecode pc 16
    (i = 0);
    while ((i < arrLs.length)) {
        // source line 25, bytecode pc 33
        (_id = arrLs[i]);
        // source line 27, bytecode pc 74
        (this.m_labels[i] = xs.Factorys.Label.createByStyleId(_id));
        // source line 24, bytecode pc 89
        i++;
    }
    // source line 30, bytecode pc 120
    this.init();
},
    init: function() {
    var i;
    // source line 35, bytecode pc 12
    this._super();
    // source line 39, bytecode pc 17
    (i = 0);
    while ((i < this.m_labels.length)) {
        if (this.m_labels[i].setHorizontalAlignment) {
            // source line 46, bytecode pc 76
            this.m_labels[i].setHorizontalAlignment(xs.AlignH_Left);
        }
        if (this.m_labels[i].setVerticalAlignment) {
            // source line 49, bytecode pc 129
            this.m_labels[i].setVerticalAlignment(xs.AlignV_Center);
        }
        // source line 52, bytecode pc 162
        this.m_labels[i].setAnchorPoint(xs.ap_lc);
        // source line 59, bytecode pc 202
        xs.Utils.Node.attachNodes(this, this.m_labels[i]);
        // source line 39, bytecode pc 217
        i++;
    }
    // source line 65, bytecode pc 251
    this.reloadLayout();
},
    reloadLayout: function() {
    var _hMax, _wMax, i, _size, _wOffset;
    // source line 71, bytecode pc 4
    (_hMax = 0);
    // source line 72, bytecode pc 9
    (_wMax = 0);
    // source line 74, bytecode pc 14
    (i = 0);
    while ((i < this.m_labels.length)) {
        // source line 76, bytecode pc 138
        (_size = cc.size((this.m_labels[i].getContentSize().width * this.m_labels[i].getScaleX()), (this.m_labels[i].getContentSize().height * this.m_labels[i].getScaleY())));
        // source line 78, bytecode pc 175
        (_hMax = ((_size.height > _hMax) ? _size.height : _hMax));
        // source line 79, bytecode pc 191
        (_wMax = (_wMax + _size.width));
        // source line 74, bytecode pc 206
        i++;
    }
    // source line 82, bytecode pc 265
    this.setContentSize(cc.size(_wMax, _hMax));
    // source line 84, bytecode pc 270
    (_wOffset = 0);
    // source line 85, bytecode pc 275
    (i = 0);
    while ((i < this.m_labels.length)) {
        // source line 90, bytecode pc 331
        this.m_labels[i].setPosition(cc.p(_wOffset, (_hMax / 2)));
        // source line 93, bytecode pc 387
        (_wOffset = (_wOffset + (this.m_labels[i].getContentSize().width * this.m_labels[i].getScaleX())));
        // source line 85, bytecode pc 402
        i++;
    }
},
    getLabelByIdx: function(idx) {
    // source line 125, bytecode pc 48
    this.assert((idx < this.m_labels.length), " idx error ", this.m_params, this.m_labels);
    // source line 127, bytecode pc 59
    return this.m_labels[idx];
},
    setStringById: function(idx, stringId, paramArray) {
    var _label, arguments;
    // source line 130, bytecode pc 4
    (arguments = arguments);
    if ((arguments.length === 1)) {
        // source line 132, bytecode pc 28
        (stringId = arguments[0]);
        // source line 133, bytecode pc 33
        (idx = 0);
    }
    // source line 136, bytecode pc 53
    (_label = this.getLabelByIdx(idx));
    // source line 138, bytecode pc 76
    _label.setStringById(stringId, paramArray);
    // source line 140, bytecode pc 89
    this.reloadLayout();
},
    setStringParams: function(idx, paramArray) {
    var _label, arguments;
    // source line 143, bytecode pc 4
    (arguments = arguments);
    if ((arguments.length === 1)) {
        // source line 145, bytecode pc 28
        (paramArray = arguments[0]);
        // source line 146, bytecode pc 33
        (idx = 0);
    }
    // source line 148, bytecode pc 53
    (_label = this.getLabelByIdx(idx));
    // source line 150, bytecode pc 72
    _label.setStringParams(paramArray);
    // source line 152, bytecode pc 85
    this.reloadLayout();
},
    setString: function(idx, string) {
    var _label, arguments;
    // source line 155, bytecode pc 4
    (arguments = arguments);
    if ((arguments.length === 1)) {
        // source line 157, bytecode pc 28
        (string = arguments[0]);
        // source line 158, bytecode pc 33
        (idx = 0);
    }
    // source line 161, bytecode pc 53
    (_label = this.getLabelByIdx(idx));
    // source line 163, bytecode pc 72
    _label.setString(string);
    // source line 165, bytecode pc 85
    this.reloadLayout();
},
    setStringByIds: function(stringIds) {
    var i;
    // source line 169, bytecode pc 4
    (i = 0);
    while ((i < stringIds.length)) {
        // source line 170, bytecode pc 46
        this.getLabelByIdx(i).setStringById(stringIds[i]);
        // source line 169, bytecode pc 61
        i++;
    }
    // source line 172, bytecode pc 92
    this.reloadLayout();
},
    setStringByKeys: function(stringKeys) {
    var i;
    // source line 176, bytecode pc 4
    (i = 0);
    while ((i < stringKeys.length)) {
        // source line 177, bytecode pc 73
        this.getLabelByIdx(i).setString(xs.Tools.String.createString(stringKeys[i]));
        // source line 176, bytecode pc 88
        i++;
    }
    // source line 179, bytecode pc 119
    this.reloadLayout();
},
    setStringByStrings: function(strings) {
    var i;
    // source line 183, bytecode pc 4
    (i = 0);
    while ((i < strings.length)) {
        // source line 184, bytecode pc 46
        this.getLabelByIdx(i).setString(strings[i]);
        // source line 183, bytecode pc 61
        i++;
    }
    // source line 186, bytecode pc 92
    this.reloadLayout();
},
    setFontScaleAtIndex: function(idx, scale) {
    // source line 191, bytecode pc 31
    this.getLabelByIdx(idx).setScale(scale);
    // source line 192, bytecode pc 44
    this.reloadLayout();
}
})));
// source line 198, bytecode pc 230
(xs.Views.Label.LabelExt.createWithIds = function(arrIds) {
    var _labelExt, arguments;
    // source line 198, bytecode pc 4
    (arguments = arguments);
    // source line 199, bytecode pc 33
    (_labelExt = new xs.Views.Label.LabelExt());
    // source line 200, bytecode pc 45
    (_labelExt.m_params = arguments);
    // source line 201, bytecode pc 64
    _labelExt.initByLabelIds(arrIds);
    // source line 205, bytecode pc 68
    return _labelExt;
});
// source line 210, bytecode pc 261
(xs.Views.Label.LabelExt.createWithStyles = function(arrLs) {
    var _labelExt, arguments;
    // source line 210, bytecode pc 4
    (arguments = arguments);
    // source line 212, bytecode pc 33
    (_labelExt = new xs.Views.Label.LabelExt());
    // source line 213, bytecode pc 45
    (_labelExt.m_params = arguments);
    // source line 214, bytecode pc 64
    _labelExt.initByStyleIds(arrLs);
    // source line 216, bytecode pc 68
    return _labelExt;
});
// source line 220, bytecode pc 292
(xs.Views.Label.LabelExt.create = function() {
});
// source line 270, bytecode pc 392
(xs.Views.Label.LabelExtSprite = (xs.Views.Label.LabelExt2 || xs.Views.BaseView.extend({
    init: function() {
    var i, _subObj, _labelDataObj, _label, _spritePath, _plist, _spriteObj;
    // source line 229, bytecode pc 12
    this._super();
    // source line 230, bytecode pc 24
    (this._allobj = []);
    // source line 231, bytecode pc 29
    (i = 0);
    while ((i < this._data.length)) {
        // source line 233, bytecode pc 49
        (_subObj = this._data[i]);
        if ((_subObj.label != null)) {
            // source line 237, bytecode pc 76
            (_labelDataObj = _subObj.label);
            // source line 238, bytecode pc 115
            (_label = xs.Factorys.Label.createByStyleId(_labelDataObj.styleID));
            if (_label.setHorizontalAlignment) {
                // source line 241, bytecode pc 154
                _label.setHorizontalAlignment(xs.AlignH_Left);
            }
            if (_label.setVerticalAlignment) {
                // source line 244, bytecode pc 193
                _label.setVerticalAlignment(xs.AlignV_Center);
            }
            // source line 246, bytecode pc 219
            _label.setAnchorPoint(xs.ap_lc);
            // source line 248, bytecode pc 243
            _label.setString(_labelDataObj.content);
            // source line 249, bytecode pc 276
            xs.Utils.Node.attachNodes(this, _label);
            // source line 250, bytecode pc 290
            (this._allobj[i] = _label);
            // source line 251, bytecode pc 311
            (this._allobj[i].type = "label");
        } else {
            if ((_subObj.name != null)) {
                // source line 254, bytecode pc 343
                (_spritePath = _subObj.name);
                // source line 255, bytecode pc 348
                (_plist = null);
                if ((_subObj.plistName != null)) {
                    // source line 257, bytecode pc 375
                    (_plist = _subObj.plistName);
                }
                // source line 259, bytecode pc 413
                (_spriteObj = xs.Factorys.Sprite.create(_spritePath, _plist));
                // source line 261, bytecode pc 439
                _spriteObj.setAnchorPoint(xs.ap_lc);
                // source line 263, bytecode pc 472
                xs.Utils.Node.attachNodes(this, _spriteObj);
                // source line 264, bytecode pc 486
                (this._allobj[i] = _spriteObj);
                // source line 265, bytecode pc 507
                (this._allobj[i].type = "sprite");
            }
        }
        // source line 231, bytecode pc 522
        i++;
    }
    // source line 268, bytecode pc 556
    this.reloadLayout();
},
    reloadLayout: function() {
    var _hMax, _wMax, i, _size, _wOffset;
    // source line 271, bytecode pc 4
    (_hMax = 0);
    // source line 272, bytecode pc 9
    (_wMax = 0);
    // source line 274, bytecode pc 14
    (i = 0);
    while ((i < this._allobj.length)) {
        // source line 276, bytecode pc 138
        (_size = cc.size((this._allobj[i].getContentSize().width * this._allobj[i].getScaleX()), (this._allobj[i].getContentSize().height * this._allobj[i].getScaleY())));
        // source line 278, bytecode pc 175
        (_hMax = ((_size.height > _hMax) ? _size.height : _hMax));
        // source line 279, bytecode pc 191
        (_wMax = (_wMax + _size.width));
        // source line 274, bytecode pc 206
        i++;
    }
    // source line 281, bytecode pc 265
    this.setContentSize(cc.size(_wMax, _hMax));
    // source line 282, bytecode pc 270
    (_wOffset = 0);
    // source line 283, bytecode pc 275
    (i = 0);
    while ((i < this._allobj.length)) {
        // source line 288, bytecode pc 331
        this._allobj[i].setPosition(cc.p(_wOffset, (_hMax / 2)));
        // source line 291, bytecode pc 387
        (_wOffset = (_wOffset + (this._allobj[i].getContentSize().width * this._allobj[i].getScaleX())));
        // source line 283, bytecode pc 402
        i++;
    }
}
})));
// source line 295, bytecode pc 423
(xs.Views.Label.LabelExtSprite.createLabelObj = function(styleIDValue, contentValue) {
    var _label;
    // source line 296, bytecode pc 9
    (_label = {});
    // source line 297, bytecode pc 24
    (_label.label = {});
    // source line 298, bytecode pc 41
    (_label.label.styleID = styleIDValue);
    // source line 299, bytecode pc 58
    (_label.label.content = contentValue);
    // source line 301, bytecode pc 62
    return _label;
});
// source line 303, bytecode pc 454
(xs.Views.Label.LabelExtSprite.createSpriteObj = function(spriteName, plistNameValue) {
    var _sprite;
    // source line 304, bytecode pc 9
    (_sprite = {});
    // source line 305, bytecode pc 21
    (_sprite.name = spriteName);
    // source line 306, bytecode pc 33
    (_sprite.plistName = plistNameValue);
    // source line 308, bytecode pc 37
    return _sprite;
});
// source line 310, bytecode pc 485
(xs.Views.Label.LabelExtSprite.create = function(str) {
    var jsonObj, _labelExt;
    // source line 311, bytecode pc 4
    (jsonObj = null);
    try {
        // source line 314, bytecode pc 29
        (jsonObj = JSON.parse(str));
    } catch (e) {
        // source line 317, bytecode pc 46
        return void 0;
    }
    // source line 319, bytecode pc 88
    (_labelExt = new xs.Views.Label.LabelExtSprite());
    // source line 320, bytecode pc 100
    (_labelExt._data = jsonObj);
    // source line 321, bytecode pc 115
    _labelExt.init();
    // source line 322, bytecode pc 119
    return _labelExt;
});
