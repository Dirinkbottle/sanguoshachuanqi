// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Buddy.js:1
// source line 149, bytecode pc 228
(xs.Profile.GameData.Buddy = xs.Profile.GameData.Base.extend({
    name: "xs.Profile.GameData.Buddy",
    dump: xs.Debug.emptyFunc,
    init: function(param) {
    // source line 12, bytecode pc 16
    this._super(param);
    // source line 13, bytecode pc 65
    this.dataRef.getNotifyCenter().addObserver(this, this.clearCache, xs.Constant_Notify_ModelChange_Buddy_SortChange);
    // source line 14, bytecode pc 67
    return true;
},
    getCurBuddyMaxLength: function() {
    // source line 20, bytecode pc 17
    return this.getBuddyGenerals().length;
},
    getCurBuddyLength: function() {
    // source line 25, bytecode pc 17
    return this.getBuddyGeneralsWithoutEmptyPos().length;
},
    getBuddyMaxLength: function() {
    // source line 30, bytecode pc 42
    return xs.Tools.CfgData.getCfgDataByType(xs.Constant_CfgDataType_Buddy).length;
},
    _updateNotice: function() {
    // source line 35, bytecode pc 39
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Buddy_Change, this);
},
    getOpenZhaoLinNumByBuddyPos: function(pos) {
    var _dataObj, num;
    // source line 43, bytecode pc 44
    (_dataObj = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Buddy, pos));
    // source line 45, bytecode pc 49
    (num = 0);
    if (_dataObj) {
        // source line 47, bytecode pc 69
        (num = _dataObj.num);
    }
    // source line 50, bytecode pc 73
    return num;
},
    getGeneralsInBuddy: function() {
    var _BuddyGeneralModels, _retArray, i, _tmpBuddyGeneralModel, general;
    // source line 57, bytecode pc 15
    (_BuddyGeneralModels = this.getBuddyGeneralsWithoutEmptyPos());
    // source line 60, bytecode pc 24
    (_retArray = []);
    // source line 61, bytecode pc 29
    (i = 0);
    while ((i < _BuddyGeneralModels.length)) {
        // source line 63, bytecode pc 46
        (_tmpBuddyGeneralModel = _BuddyGeneralModels[i]);
        // source line 64, bytecode pc 66
        (general = this.getGeneral(_tmpBuddyGeneralModel));
        if (general) {
            // source line 66, bytecode pc 93
            _retArray.push(general);
        }
        // source line 61, bytecode pc 108
        i++;
    }
    // source line 70, bytecode pc 130
    return _retArray;
},
    isInBuddy: function(pk_id) {
    var Buddyinfo, i;
    // source line 75, bytecode pc 15
    (Buddyinfo = this.getBuddyGeneralsWithoutEmptyPos());
    // source line 76, bytecode pc 20
    (i = 0);
    while ((i < Buddyinfo.length)) {
        if ((pk_id === Buddyinfo[i].getGeneralPkId())) {
            // source line 78, bytecode pc 55
            return true;
        }
        // source line 76, bytecode pc 70
        i++;
    }
    // source line 81, bytecode pc 90
    return false;
},
    getBuddyGeneralInPos: function(pos) {
    var Buddyinfo, i, _max_pos_unlock;
    // source line 86, bytecode pc 15
    (Buddyinfo = this.getBuddyGeneralsWithoutEmptyPos());
    // source line 87, bytecode pc 20
    (i = 0);
    while ((i < Buddyinfo.length)) {
        if ((pos === Buddyinfo[i].getGeneralPos())) {
            // source line 89, bytecode pc 61
            return Buddyinfo[i];
        }
        // source line 87, bytecode pc 74
        (i = (+i + 1));
    }
    // source line 94, bytecode pc 108
    (_max_pos_unlock = this.getCurBuddyMaxLength());
    if ((pos <= _max_pos_unlock)) {
        // source line 96, bytecode pc 147
        return xs.Models.BuddyGeneral.createWithBase();
    }
    // source line 99, bytecode pc 174
    xs.warn(("null BuddyGeneral In Pos " + pos));
    // source line 100, bytecode pc 176
    return null;
},
    getBuddyGeneralsWithoutEmptyPos: function() {
    var _ret, _rs, i;
    // source line 105, bytecode pc 31
    (_ret = this.dataRef.getDataByNameType(xs.Constant_GameData_Buddy));
    // source line 107, bytecode pc 40
    (_rs = []);
    // source line 108, bytecode pc 45
    (i = 0);
    while ((i < _ret.length)) {
        if (!xs.Utils.isEmpty(_ret[i].getGeneralPkId())) {
            // source line 110, bytecode pc 120
            _rs.push(_ret[i]);
        }
        // source line 108, bytecode pc 133
        (i = (+i + 1));
    }
    // source line 113, bytecode pc 155
    return _rs;
},
    getBuddyGenerals: function() {
    var _ret;
    // source line 118, bytecode pc 31
    (_ret = this.dataRef.getDataByNameType(xs.Constant_GameData_Buddy));
    // source line 119, bytecode pc 35
    return _ret;
},
    getBuddyGeneralsClone: function() {
    var _ret, _ret_clone, i, _temp;
    // source line 124, bytecode pc 15
    (_ret = this.getBuddyGenerals());
    // source line 125, bytecode pc 24
    (_ret_clone = []);
    // source line 126, bytecode pc 29
    (i = 0);
    while ((i < _ret.length)) {
        // source line 127, bytecode pc 57
        (_temp = _ret[i].Clone());
        // source line 128, bytecode pc 68
        (_temp.general_position = 100);
        // source line 129, bytecode pc 87
        _ret_clone.push(_temp);
        // source line 126, bytecode pc 102
        i++;
    }
    // source line 131, bytecode pc 143
    this.dump("Buddy clone before", _ret);
    // source line 132, bytecode pc 166
    this.dump("Buddy clone done", _ret_clone);
    // source line 133, bytecode pc 170
    return _ret_clone;
},
    isBuddyByGeneralPkId: function(generalPkId) {
    var _ret, isBuddy, i, _temp;
    // source line 137, bytecode pc 15
    (_ret = this.getBuddyGenerals());
    // source line 138, bytecode pc 20
    (isBuddy = false);
    // source line 139, bytecode pc 25
    (i = 0);
    while ((i < _ret.length)) {
        // source line 140, bytecode pc 53
        (_temp = _ret[i].getGeneralPkId());
        if ((generalPkId == _temp)) {
            // source line 142, bytecode pc 70
            (isBuddy = true);
            break;
        }
        // source line 139, bytecode pc 90
        i++;
    }
    // source line 146, bytecode pc 112
    return isBuddy;
},
    getGeneral: function(obj_buddy_general) {
    var general_pk_id;
    // source line 150, bytecode pc 17
    (general_pk_id = obj_buddy_general.getGeneralPkId());
    if (!xs.Utils.isEmpty(general_pk_id)) {
        // source line 152, bytecode pc 81
        return this._initInstance().Generals.getByPkId(general_pk_id);
    }
    // source line 154, bytecode pc 83
    return null;
}
}));
// source line 158, bytecode pc 259
(xs.Profile.GameData.Buddy.create = function(param) {
    var _str, _cls_name, obj;
    // source line 159, bytecode pc 11
    (_str = param.play_id);
    // source line 160, bytecode pc 35
    (_cls_name = xs.Profile.GameData.Buddy);
    // source line 161, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 164, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 167, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 169, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 170, bytecode pc 179
        return obj;
    }
    // source line 172, bytecode pc 202
    xs.error("xs.Profile.GameData.Buddy.create failed");
    // source line 173, bytecode pc 204
    return null;
});
