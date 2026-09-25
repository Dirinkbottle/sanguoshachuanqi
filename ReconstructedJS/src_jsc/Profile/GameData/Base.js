// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Base.js:1
// source line 262, bytecode pc 293
(xs.Profile.GameData.Base = cc.Class.extend({
    name: "xs.Profile.GameData.Base",
    nameType: xs.Constant_GameData_Equ,
    sortBy: [],
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function(param) {
    // source line 19, bytecode pc 7
    (this.IsCacheValid = false);
    // source line 20, bytecode pc 20
    (this.cache = {});
    // source line 23, bytecode pc 48
    this.assert(param.dataRef, "the data reference error!!!!");
    // source line 24, bytecode pc 63
    (this.dataRef = param.dataRef);
    // source line 26, bytecode pc 73
    (this._cacheParam = param);
    // source line 32, bytecode pc 86
    (this._cache_in_func = {});
    // source line 34, bytecode pc 88
    return true;
},
    onClearCache_InFunc: function() {
    // source line 38, bytecode pc 12
    (this._cache_in_func = {});
},
    _invokeFuncWithCache: function(func, arrayArguments, strFuncName, keysForCache) {
    var _ret;
    if (this._isCacheHint(strFuncName, keysForCache)) {
        // source line 47, bytecode pc 45
        return this._getCacheData(strFuncName, keysForCache);
    }
    // source line 49, bytecode pc 68
    xs.log_hsq("_invokeFuncWithCache");
    // source line 52, bytecode pc 92
    (_ret = func.apply(this, arrayArguments));
    // source line 53, bytecode pc 117
    this._setCacheData(strFuncName, keysForCache, _ret);
    // source line 54, bytecode pc 121
    return _ret;
},
    _isCacheHint: function(funcName, keys) {
    var _ret, _root, i, _key;
    // source line 61, bytecode pc 26
    xs.log_hsq("_isCacheHint", funcName);
    if (!this._cache_in_func[funcName]) {
        // source line 66, bytecode pc 48
        return false;
    }
    // source line 69, bytecode pc 62
    (_root = this._cache_in_func[funcName]);
    // source line 71, bytecode pc 67
    (i = 0);
    while ((keys && (i < keys.length))) {
        // source line 72, bytecode pc 84
        (_key = keys[i]);
        // source line 73, bytecode pc 95
        (_root = _root[_key]);
        if ((_root === undefined)) {
            // source line 80, bytecode pc 111
            return false;
        }
        // source line 71, bytecode pc 125
        (i = (+i + 1));
    }
    // source line 83, bytecode pc 158
    (_ret = true);
    // source line 87, bytecode pc 162
    return _ret;
},
    _getCacheData: function(funcName, keys) {
    var _root, i, _key;
    // source line 91, bytecode pc 13
    (_root = this._cache_in_func[funcName]);
    // source line 93, bytecode pc 18
    (i = 0);
    while ((keys && (i < keys.length))) {
        // source line 94, bytecode pc 35
        (_key = keys[i]);
        // source line 95, bytecode pc 46
        (_root = _root[_key]);
        // source line 93, bytecode pc 60
        (i = (+i + 1));
    }
    // source line 100, bytecode pc 92
    return _root;
},
    _setCacheData: function(funcName, keys, value) {
    var _root, _key, i;
    // source line 104, bytecode pc 9
    (_root = this._cache_in_func);
    // source line 105, bytecode pc 16
    (_key = funcName);
    if (!keys) {
        // source line 108, bytecode pc 36
        (_root[_key] = value);
        // source line 109, bytecode pc 38
        return void 0;
    }
    if (!_root[_key]) {
        // source line 113, bytecode pc 65
        (_root[_key] = {});
    }
    // source line 115, bytecode pc 76
    (_root = _root[_key]);
    // source line 117, bytecode pc 81
    (i = 0);
    while ((i < keys.length)) {
        // source line 118, bytecode pc 98
        (_key = keys[i]);
        if ((i === (keys.length - 1))) {
            // source line 120, bytecode pc 128
            (_root[_key] = value);
        } else {
            // source line 123, bytecode pc 160
            (_root[_key] = (_root[_key] || {}));
        }
        // source line 125, bytecode pc 171
        (_root = _root[_key]);
        // source line 117, bytecode pc 185
        (i = (+i + 1));
    }
},
    getByPkId: function(pk_id) {
    var _obj_equipment;
    // source line 137, bytecode pc 31
    (_obj_equipment = this.dataRef.getModelByTypeAndPkId(this.nameType, pk_id));
    // source line 139, bytecode pc 35
    return _obj_equipment;
},
    getAllWithoutSort: function() {
    var _arr_equipment_all;
    // source line 146, bytecode pc 15
    (_arr_equipment_all = this.getAllWithDefaultSort());
    // source line 148, bytecode pc 19
    return _arr_equipment_all;
},
    _getWithIndex: function(indexName, indexValue) {
    var _arr_equipment_all;
    // source line 153, bytecode pc 35
    (_arr_equipment_all = this.dataRef.getModelsByTypeAndIndex(this.nameType, indexName, indexValue));
    // source line 155, bytecode pc 39
    return _arr_equipment_all;
},
    getAllWithDefaultSort: function() {
    var _all, _arr_equipment_all, sort_by;
    if ((this.IsCacheValid === true)) {
        // source line 161, bytecode pc 21
        (_all = []);
        // source line 162, bytecode pc 48
        return _all.concat(this.cache.getAllWithDefaultSort);
    }
    // source line 165, bytecode pc 82
    (_arr_equipment_all = this.dataRef.getModelsByTypeAndFilter(this.nameType, []));
    // source line 166, bytecode pc 92
    (sort_by = this.sortBy);
    // source line 168, bytecode pc 138
    _arr_equipment_all.sort(xs.Tools.Sort.by(sort_by));
    // source line 169, bytecode pc 146
    (this.IsCacheValid = true);
    // source line 170, bytecode pc 161
    (this.cache.getAllWithDefaultSort = _arr_equipment_all);
    // source line 171, bytecode pc 165
    return _arr_equipment_all;
},
    getAll: function(sort_by) {
    var _arr_equipment_all;
    // source line 177, bytecode pc 15
    (_arr_equipment_all = this.getAllWithDefaultSort());
    // source line 179, bytecode pc 19
    return _arr_equipment_all;
},
    getById: function(equipment_id, need_sort) {
    var _rs_obj, _arr_equipment_all, i;
    // source line 185, bytecode pc 13
    (need_sort = (need_sort || true));
    // source line 186, bytecode pc 36
    this.assert(equipment_id, "the id is error!!");
    // source line 187, bytecode pc 45
    (_rs_obj = []);
    // source line 188, bytecode pc 61
    (_arr_equipment_all = this.getAllWithDefaultSort());
    // source line 189, bytecode pc 66
    (i = 0);
    while ((i < _arr_equipment_all.length)) {
        if ((_arr_equipment_all[i].getId() == equipment_id)) {
            // source line 191, bytecode pc 122
            _rs_obj.push(_arr_equipment_all[i]);
        }
        // source line 189, bytecode pc 136
        (i = (+i + 1));
    }
    if (need_sort) {
        // source line 196, bytecode pc 212
        _rs_obj.sort(xs.Tools.Sort.by(this.sortBy));
    }
    // source line 198, bytecode pc 216
    return _rs_obj;
},
    createWithBase: function(equipment_id) {
    var _rs_obj;
    // source line 203, bytecode pc 22
    this.assert(equipment_id, "the id is error!!");
    // source line 208, bytecode pc 47
    (_rs_obj = this.modelName.createWithBase(equipment_id));
    // source line 209, bytecode pc 70
    this.dump("_rs_obj", _rs_obj);
    // source line 210, bytecode pc 74
    return _rs_obj;
},
    getAllClone: function() {
    var _rs_obj, _arr_general_all, i, temp;
    // source line 215, bytecode pc 8
    (_rs_obj = []);
    // source line 216, bytecode pc 24
    (_arr_general_all = this.getAllWithDefaultSort());
    // source line 217, bytecode pc 29
    (i = 0);
    while ((i < _arr_general_all.length)) {
        // source line 218, bytecode pc 57
        (temp = _arr_general_all[i].Clone());
        // source line 219, bytecode pc 76
        _rs_obj.push(temp);
        // source line 217, bytecode pc 90
        (i = (+i + 1));
    }
    // source line 221, bytecode pc 113
    return _rs_obj;
},
    isThisPkIdExists: function(pk_id) {
    var _arr_general_all, i;
    // source line 226, bytecode pc 15
    (_arr_general_all = this.getAllWithDefaultSort());
    // source line 227, bytecode pc 20
    (i = 0);
    while ((i < _arr_general_all.length)) {
        if ((_arr_general_all[i].getPkId() == pk_id)) {
            // source line 229, bytecode pc 55
            return true;
        }
        // source line 227, bytecode pc 69
        (i = (+i + 1));
    }
    // source line 232, bytecode pc 90
    return false;
},
    _initInstance: function() {
    var i, _temp, _class_name;
    // source line 236, bytecode pc 41
    (xs.Utils.isSet(this.inited) || (this.inited = false));
    if (!this.inited) {
        // source line 240, bytecode pc 61
        (this.inited = true);
        // source line 241, bytecode pc 66
        (i = 0);
        while ((i < xs.Profile.GameData.ArrInstance.length)) {
            // source line 243, bytecode pc 96
            (_temp = xs.Profile.GameData.ArrInstance);
            // source line 245, bytecode pc 107
            (_class_name = _temp[i]);
            if ((this.name == _class_name)) {
            } else {
                // source line 247, bytecode pc 170
                (this[_class_name] = xs.Profile.GameData[_class_name].create(this._cacheParam));
            }
            // source line 241, bytecode pc 184
            (i = (+i + 1));
        }
    }
    // source line 255, bytecode pc 227
    return this;
},
    clearCache: function(params) {
    var _needReSort, _arr_equipment_all, _temp, i, j;
    if (this._updateNotice) {
        // source line 268, bytecode pc 23
        this._updateNotice();
    }
    // source line 274, bytecode pc 28
    (_needReSort = false);
    // source line 275, bytecode pc 54
    (_arr_equipment_all = (this.cache.getAllWithDefaultSort || []));
    if (!xs.Utils.isEmpty(params.del)) {
        // source line 280, bytecode pc 99
        (_temp = []);
        // source line 281, bytecode pc 104
        (i = 0);
        while ((i < _arr_equipment_all.length)) {
            if (!params.del.inArray(_arr_equipment_all[i].getPkId())) {
                // source line 283, bytecode pc 177
                _temp.push(_arr_equipment_all[i]);
            }
            // source line 281, bytecode pc 191
            (i = (+i + 1));
        }
        // source line 286, bytecode pc 217
        (_arr_equipment_all = _temp);
    }
    if (!xs.Utils.isEmpty(params.add)) {
        // source line 290, bytecode pc 258
        (_needReSort = true);
        // source line 291, bytecode pc 263
        (j = 0);
        while ((j < params.add.length)) {
            // source line 292, bytecode pc 310
            _arr_equipment_all.push(this.getByPkId(params.add[j]));
            // source line 291, bytecode pc 324
            (j = (+j + 1));
        }
    }
    if (!xs.Utils.isEmpty(params.upd)) {
        // source line 298, bytecode pc 389
        (_needReSort = true);
    }
    if (_needReSort) {
        // source line 303, bytecode pc 446
        _arr_equipment_all.sort(xs.Tools.Sort.by(this.sortBy));
    }
    // source line 308, bytecode pc 454
    (this.IsCacheValid = true);
    // source line 309, bytecode pc 469
    (this.cache.getAllWithDefaultSort = _arr_equipment_all);
}
}));
