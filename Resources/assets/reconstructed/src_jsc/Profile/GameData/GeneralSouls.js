// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/GeneralSouls.js:1
// source line 136, bytecode pc 238
(xs.Profile.GameData.GeneralSouls = xs.Profile.GameData.Base.extend({
    name: "xs.Profile.GameData.GeneralSouls",
    nameType: xs.Constant_GameData_GeneralSoul,
    modelName: xs.Models.GeneralSoul,
    dump: xs.Debug.emptyFunc,
    log: xs.Debug.emptyFunc,
    sortBy: xs.Constant_SortType_GeneralSoul_Default,
    init: function(param) {
    // source line 22, bytecode pc 16
    this._super(param);
    // source line 23, bytecode pc 65
    this.dataRef.getNotifyCenter().addObserver(this, this.clearCache, xs.Constant_Notify_ModelChange_GeneralSoul_SortChange);
    // source line 24, bytecode pc 67
    return true;
},
    getReferenceGeneral: function(obj_soul_model) {
    var general_cache, general;
    // source line 29, bytecode pc 17
    (general_cache = obj_soul_model._getReferenceGeneralCache());
    if ((general_cache != -1)) {
        // source line 32, bytecode pc 32
        return general_cache;
    }
    // source line 34, bytecode pc 83
    (general = this._initInstance().Generals.getById(obj_soul_model.getId(), false)[0]);
    // source line 35, bytecode pc 102
    obj_soul_model._setReferenceGeneralCache(general);
    if (general) {
        // source line 37, bytecode pc 114
        return general;
    }
    // source line 39, bytecode pc 116
    return null;
},
    canReincarnate: function(obj_model) {
    if (this.getReferenceGeneral(obj_model)) {
        // source line 46, bytecode pc 22
        return false;
    }
    if ((obj_model.getNum() < obj_model.getReincarnateNum())) {
        // source line 51, bytecode pc 58
        return false;
    }
    // source line 53, bytecode pc 60
    return true;
},
    canAbleToBreach: function(obj_model) {
    var general;
    // source line 58, bytecode pc 19
    (general = this.getReferenceGeneral(obj_model));
    if (general) {
        if (general.checkAbleToBreach()) {
            // source line 62, bytecode pc 48
            return true;
        }
    }
    // source line 64, bytecode pc 50
    return false;
},
    getAll_canReincarnate: function() {
    var _ret, _array_all, i, _tmp;
    // source line 72, bytecode pc 8
    (_ret = []);
    // source line 73, bytecode pc 24
    (_array_all = this.getAll());
    // source line 74, bytecode pc 29
    (i = 0);
    while ((i < _array_all.length)) {
        // source line 75, bytecode pc 46
        (_tmp = _array_all[i]);
        if (this.canReincarnate(_tmp)) {
            // source line 78, bytecode pc 86
            _ret.push(_tmp);
        }
        // source line 74, bytecode pc 101
        i++;
    }
    // source line 81, bytecode pc 123
    return _ret;
},
    getAll_breach: function() {
    var _ret_1, _ret_2, _array_all, i, _tmp, general, _grade;
    // source line 90, bytecode pc 8
    (_ret_1 = []);
    // source line 91, bytecode pc 17
    (_ret_2 = []);
    // source line 92, bytecode pc 33
    (_array_all = this.getAll());
    // source line 93, bytecode pc 38
    (i = 0);
    while ((i < _array_all.length)) {
        // source line 94, bytecode pc 55
        (_tmp = _array_all[i]);
        // source line 97, bytecode pc 75
        (general = this.getReferenceGeneral(_tmp));
        if (general) {
            if (general.isBreachToMax()) {
                // source line 100, bytecode pc 121
                _ret_2.push(_tmp);
            } else {
                // source line 102, bytecode pc 144
                (_grade = general.getGrade());
                if ((general.checkAbleToBreach() && ((_grade == xs.Constant_Grade_Demon) || (_grade == xs.Constant_Grade_God)))) {
                    // source line 104, bytecode pc 222
                    _ret_1.push(_tmp);
                } else {
                    // source line 106, bytecode pc 246
                    _ret_2.push(_tmp);
                }
            }
        }
        // source line 93, bytecode pc 261
        i++;
    }
    // source line 111, bytecode pc 332
    _ret_1.sort(xs.Tools.Sort.by(xs.Constant_SortType_SortGrade));
    // source line 112, bytecode pc 385
    _ret_2.sort(xs.Tools.Sort.by(xs.Constant_SortType_SortGrade));
    // source line 114, bytecode pc 407
    (_ret_1 = _ret_1.concat(_ret_2));
    // source line 116, bytecode pc 411
    return _ret_1;
},
    getAll_reincarnate: function() {
    var _ret, _array_all, i, _tmp;
    // source line 124, bytecode pc 8
    (_ret = []);
    // source line 125, bytecode pc 24
    (_array_all = this.getAll());
    // source line 126, bytecode pc 29
    (i = 0);
    while ((i < _array_all.length)) {
        // source line 127, bytecode pc 46
        (_tmp = _array_all[i]);
        if (!this.getReferenceGeneral(_tmp)) {
            // source line 131, bytecode pc 87
            _ret.push(_tmp);
        }
        // source line 126, bytecode pc 102
        i++;
    }
    // source line 134, bytecode pc 124
    return _ret;
},
    getSoulNumsByGeneralId: function(generalId) {
    var nums, _array_all, i, _tmp;
    // source line 137, bytecode pc 4
    (nums = 0);
    // source line 138, bytecode pc 20
    (_array_all = this.getAll());
    // source line 139, bytecode pc 25
    (i = 0);
    while ((i < _array_all.length)) {
        // source line 140, bytecode pc 42
        (_tmp = _array_all[i]);
        if ((_tmp.getId() == generalId)) {
            // source line 143, bytecode pc 77
            (nums = _tmp.num);
        }
        // source line 139, bytecode pc 92
        i++;
    }
    // source line 146, bytecode pc 114
    return nums;
}
}));
// source line 154, bytecode pc 269
(xs.Profile.GameData.GeneralSouls.create = function(param) {
    var _str, _cls_name, obj;
    // source line 155, bytecode pc 11
    (_str = param.play_id);
    // source line 156, bytecode pc 35
    (_cls_name = xs.Profile.GameData.GeneralSouls);
    // source line 157, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 160, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 163, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 165, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 166, bytecode pc 179
        return obj;
    }
    // source line 168, bytecode pc 202
    xs.error("xs.Profile.GameData.GeneralSouls.create failed");
    // source line 169, bytecode pc 204
    return null;
});
