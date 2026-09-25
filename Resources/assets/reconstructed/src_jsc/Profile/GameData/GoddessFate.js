// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/GoddessFate.js:1
// source line 122, bytecode pc 169
(xs.Profile.GameData.GoddessFate = xs.Profile.GameData.Base.extend({
    fateInfo: {},
    name: "xs.Profile.GameData.GoddessFate",
    dump: xs.Debug.emptyFunc,
    init: function(param) {
    // source line 15, bytecode pc 16
    this._super(param);
    // source line 17, bytecode pc 65
    this.dataRef.getNotifyCenter().addObserver(this, this.clearCache, xs.Constant_Notify_ModelChange_Goddess_SortChange);
    // source line 18, bytecode pc 67
    return true;
},
    _clearLightedInGeneral: function() {
    // source line 23, bytecode pc 22
    xs.log_hsq("_clearLightedInGeneral");
    if (this._cache_in_func.isLightedInGeneral) {
        // source line 26, bytecode pc 51
        (this._cache_in_func.isLightedInGeneral = null);
    }
},
    getById: function(id) {
    // source line 32, bytecode pc 22
    this.assert(id, "gamedata/Fate.js getById error");
    if ((this.fateInfo[id] === undefined)) {
        // source line 34, bytecode pc 84
        (this.fateInfo[id] = xs.Models.GoddessFate.createWithBase(id));
    }
    // source line 37, bytecode pc 95
    return this.fateInfo[id];
},
    getAttrPer: function(fateModel, type, generalModel) {
    if ((type === fateModel.getAdditionType())) {
        // source line 44, bytecode pc 43
        return this.getEffectPer(fateModel, generalModel);
    } else {
        // source line 47, bytecode pc 50
        return 0;
    }
},
    getEffectPer: function(fateModel, generalModel) {
    var count, _fate_ids, _base, _step;
    // source line 54, bytecode pc 23
    (count = this._countStepNum(fateModel, generalModel));
    // source line 56, bytecode pc 57
    (_fate_ids = (fateModel.getBaseDataRef().fate_object || []));
    // source line 58, bytecode pc 72
    switch (fateModel.getLimit()) {
        case xs.Models.Fate_Limit_Step:
        if ((count > 0)) {
            // source line 62, bytecode pc 172
            (_base = xs.Utils.parseFloatSafe(fateModel.getBaseDataRef().fate_effect));
            // source line 63, bytecode pc 217
            (_step = xs.Utils.parseFloatSafe(fateModel.getBaseDataRef().fate_effect_step));
            // source line 64, bytecode pc 237
            (this._effectValue = (_base + ((count - 1) * _step)));
            // source line 65, bytecode pc 247
            return (this._effectValue / 100);
        } else {
            // source line 67, bytecode pc 254
            return 0;
        }
        break;
        case xs.Models.Fate_Limit_All:
        if ((count === _fate_ids.length)) {
            // source line 74, bytecode pc 321
            (_base = xs.Utils.parseFloatSafe(fateModel.getBaseDataRef().fate_effect));
            // source line 75, bytecode pc 328
            return (_base / 100);
        } else {
            // source line 77, bytecode pc 335
            return 0;
        }
        break;
        default:
        // source line 83, bytecode pc 342
        return 0;
        break;
    }
},
    _countStepNum: function(fateModel, generalModel) {
    var count, _fate_ids, i;
    // source line 92, bytecode pc 4
    (count = 0);
    // source line 95, bytecode pc 38
    (_fate_ids = (fateModel.getBaseDataRef().fate_object || []));
    // source line 97, bytecode pc 53
    switch (fateModel.getType()) {
        case xs.Models.Fate_Type_Goddess:
        // source line 100, bytecode pc 83
        (i = 0);
        while ((i < _fate_ids.length)) {
            if (this._initInstance().Goddess.isHaveGoddess_GoddessId(_fate_ids[i])) {
                // source line 103, bytecode pc 139
                (count = (count + 1));
            }
            // source line 100, bytecode pc 152
            (i = (+i + 1));
        }
        break;
        default:
        // source line 110, bytecode pc 209
        this.error("fate this.getType()", fateModel.getType());
        // source line 111, bytecode pc 211
        return 0;
        break;
    }
    // source line 116, bytecode pc 220
    return count;
},
    isLightedInGoddess: function(fateModel, goddessModel) {
    var _cache_key_0, _cache_key_1, count, _fate_ids, _ret;
    // source line 124, bytecode pc 17
    (_cache_key_0 = fateModel.getId());
    // source line 125, bytecode pc 35
    (_cache_key_1 = goddessModel.getId());
    if (this._isCacheHint("isLightedInGeneral", [ _cache_key_0, _cache_key_1 ])) {
        // source line 128, bytecode pc 117
        return this._getCacheData("isLightedInGeneral", [ _cache_key_0, _cache_key_1 ]);
    }
    // source line 131, bytecode pc 141
    (count = this._countStepNum(fateModel, goddessModel));
    // source line 133, bytecode pc 175
    (_fate_ids = (fateModel.getBaseDataRef().fate_object || []));
    // source line 135, bytecode pc 180
    (_ret = false);
    // source line 136, bytecode pc 195
    switch (fateModel.getLimit()) {
        case xs.Models.Fate_Limit_Step:
        if ((count > 0)) {
            // source line 140, bytecode pc 255
            (_ret = true);
        }
        break;
        case xs.Models.Fate_Limit_All:
        if ((count === _fate_ids.length)) {
            // source line 147, bytecode pc 282
            (_ret = true);
        }
        break;
        default:
        break;
    }
    // source line 159, bytecode pc 357
    this._setCacheData("isLightedInGeneral", [ fateModel.getId(), goddessModel.getPkId() ], _ret);
    // source line 162, bytecode pc 361
    return _ret;
}
}));
// source line 166, bytecode pc 200
(xs.Profile.GameData.GoddessFate.create = function(param) {
    var _str, _cls_name, obj;
    // source line 167, bytecode pc 11
    (_str = param.play_id);
    // source line 168, bytecode pc 35
    (_cls_name = xs.Profile.GameData.GoddessFate);
    // source line 169, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 172, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 175, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 177, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 178, bytecode pc 179
        return obj;
    }
    // source line 180, bytecode pc 202
    xs.error("xs.Profile.GameData.GoddessFate.create failed");
    // source line 181, bytecode pc 204
    return null;
});
