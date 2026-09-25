// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Team.js:1
// source line 313, bytecode pc 338
(xs.Profile.GameData.Team = xs.Profile.GameData.Base.extend({
    name: "xs.Profile.GameData.Team",
    dump: xs.Debug.emptyFunc,
    init: function(param) {
    // source line 13, bytecode pc 16
    this._super(param);
    // source line 14, bytecode pc 65
    this.dataRef.getNotifyCenter().addObserver(this, this.clearCache, xs.Constant_Notify_ModelChange_Team_SortChange);
    // source line 15, bytecode pc 67
    return true;
},
    getTeamTotalFighting: function() {
    var totalFighting, _ret, i;
    // source line 25, bytecode pc 4
    (totalFighting = 0);
    // source line 26, bytecode pc 20
    (_ret = this._getTeamGeneralsWithoutEmptyPos());
    // source line 27, bytecode pc 25
    (i = 0);
    while ((i < _ret.length)) {
        // source line 28, bytecode pc 51
        (totalFighting = (totalFighting + _ret[i].fighting));
        // source line 27, bytecode pc 66
        i++;
    }
    // source line 38, bytecode pc 88
    return totalFighting;
},
    getTeamGeneralByPkId: function(pk_id) {
    var teaminfo, i;
    // source line 41, bytecode pc 15
    (teaminfo = this._getTeamGeneralsWithoutEmptyPos());
    // source line 42, bytecode pc 20
    (i = 0);
    while ((i < teaminfo.length)) {
        if ((pk_id === teaminfo[i].getGeneralPkId())) {
            // source line 44, bytecode pc 61
            return teaminfo[i];
        }
        // source line 42, bytecode pc 76
        i++;
    }
    // source line 47, bytecode pc 96
    return null;
},
    getIsAllSkillsIsHighest: function() {
    var _bool, _ret, i, _arr_skill, j;
    // source line 51, bytecode pc 4
    (_bool = true);
    // source line 52, bytecode pc 20
    (_ret = this._getTeamGeneralsWithoutEmptyPos());
    // source line 53, bytecode pc 25
    (i = 0);
    while ((i < _ret.length)) {
        // source line 54, bytecode pc 76
        (_arr_skill = this._initInstance().Skills.getSkillByGeneralPkId(_ret[i].general_pk_id));
        // source line 55, bytecode pc 81
        (j = 0);
        while ((j < _arr_skill.length)) {
            if (!_arr_skill[j].isMaxLv()) {
                // source line 57, bytecode pc 116
                (_bool = false);
                // source line 58, bytecode pc 120
                return _bool;
            }
            // source line 55, bytecode pc 135
            j++;
        }
        // source line 53, bytecode pc 168
        i++;
    }
    // source line 62, bytecode pc 190
    return _bool;
},
    getNotAllEquipmentsStrongerIsHighest: function() {
    var haveCanEquipment, moneyEnough, _ret, playerMoney, i, _arr_equipment, j, nextMoney;
    // source line 66, bytecode pc 4
    (haveCanEquipment = false);
    // source line 67, bytecode pc 9
    (moneyEnough = false);
    // source line 68, bytecode pc 25
    (_ret = this._getTeamGeneralsWithoutEmptyPos());
    // source line 70, bytecode pc 68
    (playerMoney = this._initInstance().Player.getPlayer().getPlayerTongQian());
    // source line 72, bytecode pc 73
    (i = 0);
    while ((i < _ret.length)) {
        // source line 74, bytecode pc 124
        (_arr_equipment = this._initInstance().Equipments.getEquimentByGeneralPkId(_ret[i].general_pk_id));
        // source line 76, bytecode pc 129
        (j = 0);
        while ((j < _arr_equipment.length)) {
            if (!_arr_equipment[j].isMaxLv()) {
                // source line 80, bytecode pc 164
                (haveCanEquipment = true);
                // source line 82, bytecode pc 169
                (nextMoney = 0);
                try {
                    // source line 85, bytecode pc 192
                    (nextMoney = _arr_equipment[i].getNextLevelNeedMoney());
                } catch (e) {
                    // source line 88, bytecode pc 234
                    xs.log_hsq("getNextLevelNeedMoney error:", e);
                    // source line 89, bytecode pc 239
                    (nextMoney = 0);
                    /* TODO_BYTECODE pc=240 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
                }
                if ((playerMoney > nextMoney)) {
                    // source line 93, bytecode pc 265
                    (moneyEnough = true);
                    // source line 96, bytecode pc 288
                    return { haveCanEquip: haveCanEquipment, moneyEnough: moneyEnough }
                }
            }
            // source line 76, bytecode pc 303
            j++;
        }
        // source line 72, bytecode pc 336
        i++;
    }
    // source line 104, bytecode pc 377
    return { haveCanEquip: haveCanEquipment, moneyEnough: moneyEnough }
},
    getIsAllEquipmentsRefineIsHighest: function() {
    var _bool, _ret, i, _arr_equipment, j;
    // source line 109, bytecode pc 4
    (_bool = false);
    // source line 110, bytecode pc 20
    (_ret = this._getTeamGeneralsWithoutEmptyPos());
    // source line 111, bytecode pc 25
    (i = 0);
    while ((i < _ret.length)) {
        // source line 112, bytecode pc 76
        (_arr_equipment = this._initInstance().Equipments.getEquimentByGeneralPkId(_ret[i].general_pk_id));
        // source line 113, bytecode pc 81
        (j = 0);
        while ((j < _arr_equipment.length)) {
            if (!_arr_equipment[j].isRefineMaxLv()) {
                // source line 115, bytecode pc 116
                (_bool = true);
                // source line 116, bytecode pc 120
                return _bool;
            }
            // source line 113, bytecode pc 135
            j++;
        }
        // source line 111, bytecode pc 168
        i++;
    }
    // source line 120, bytecode pc 190
    return _bool;
},
    getTeamLengthPercentageString: function() {
    // source line 123, bytecode pc 31
    return ((this.getCurTeamLength() + "/") + this.getCurTeamMaxLength());
},
    getCurTeamMaxLength: function() {
    // source line 128, bytecode pc 39
    return this._initInstance().Player.getPlayer().getCurTeamMaxLength();
},
    getCurTeamLength: function() {
    // source line 133, bytecode pc 12
    return this.getGeneralNumInTeam();
},
    getTeamMaxLength: function() {
    // source line 138, bytecode pc 39
    return this._initInstance().Player.getPlayer().getTeamMaxLength();
},
    getOpenLevelByTeamPos: function(pos) {
    // source line 143, bytecode pc 43
    return this._initInstance().Player.getPlayer().getPlayerLevelByTeamPos(pos);
},
    getOpenLevelByLieutenantPos: function(pos) {
    // source line 148, bytecode pc 43
    return this._initInstance().Player.getPlayer().getPlayerLevelByLieutenantPos(pos);
},
    getCurLieutenantMaxLength: function() {
    // source line 153, bytecode pc 39
    return this._initInstance().Player.getPlayer().getCurLieutenantMaxLength();
},
    getGeneralNumInTeam: function() {
    // source line 159, bytecode pc 33
    return this.dataRef.getModelsByTypeAndFilter(xs.Constant_GameData_Team).length;
},
    getGeneralsInTeam: function() {
    var _teamGeneralModels, _retArray, i, _tmpTeamGeneralModel, general;
    // source line 165, bytecode pc 15
    (_teamGeneralModels = this._getTeamGeneralsWithoutEmptyPos());
    // source line 167, bytecode pc 38
    this.dump("getGeneralsInTeam", _teamGeneralModels);
    // source line 171, bytecode pc 47
    (_retArray = []);
    // source line 172, bytecode pc 52
    (i = 0);
    while ((i < _teamGeneralModels.length)) {
        // source line 174, bytecode pc 69
        (_tmpTeamGeneralModel = _teamGeneralModels[i]);
        // source line 178, bytecode pc 89
        (general = this.getGeneral(_tmpTeamGeneralModel));
        if (general) {
            // source line 180, bytecode pc 116
            _retArray.push(general);
        }
        // source line 172, bytecode pc 131
        i++;
    }
    // source line 184, bytecode pc 153
    return _retArray;
},
    getGeneralsInTeamHulaoBattle: function() {
    var _arr_pk_id, a, _rs_obj, _arr_general_all, i, arguments;
    // source line 187, bytecode pc 4
    (arguments = arguments);
    // source line 188, bytecode pc 13
    (_arr_pk_id = []);
    // source line 189, bytecode pc 18
    (a = 0);
    while ((a < arguments.length)) {
        // source line 190, bytecode pc 47
        _arr_pk_id.push(arguments[a]);
        // source line 189, bytecode pc 62
        a++;
    }
    // source line 193, bytecode pc 89
    (_rs_obj = []);
    // source line 194, bytecode pc 105
    (_arr_general_all = this.getGeneralsInTeam());
    // source line 195, bytecode pc 110
    (i = 0);
    while ((i < _arr_general_all.length)) {
        if ((_arr_pk_id.inArray(_arr_general_all[i].getPkId()) === false)) {
            // source line 197, bytecode pc 179
            _rs_obj.push(_arr_general_all[i]);
        }
        // source line 195, bytecode pc 194
        i++;
    }
    // source line 200, bytecode pc 216
    return _rs_obj;
},
    isInTeam: function(pk_id) {
    var teaminfo, i;
    // source line 204, bytecode pc 15
    (teaminfo = this._getTeamGeneralsWithoutEmptyPos());
    // source line 205, bytecode pc 20
    (i = 0);
    while ((i < teaminfo.length)) {
        if ((pk_id === teaminfo[i].getGeneralPkId())) {
            // source line 207, bytecode pc 55
            return true;
        }
        // source line 205, bytecode pc 70
        i++;
    }
    // source line 210, bytecode pc 90
    return false;
},
    isInTeamOrInLieutenant_GeneralId: function(general_id) {
    var teaminfo, i, _general_pk_id, _arr_Lieutenant, j, buddyGenerals;
    // source line 215, bytecode pc 15
    (teaminfo = this._getTeamGeneralsWithoutEmptyPos());
    // source line 216, bytecode pc 20
    (i = 0);
    while ((i < teaminfo.length)) {
        // source line 217, bytecode pc 48
        (_general_pk_id = teaminfo[i].getGeneralPkId());
        if ((general_id === this._initInstance().Generals.getByPkId(_general_pk_id).getId())) {
            // source line 219, bytecode pc 102
            return true;
        }
        // source line 223, bytecode pc 138
        (_arr_Lieutenant = this._initInstance().Generals.getLieutenantByPkId(_general_pk_id));
        // source line 224, bytecode pc 143
        (j = 0);
        while ((j < _arr_Lieutenant.length)) {
            if ((general_id === this._initInstance().Generals.getByPkId(_arr_Lieutenant[j].getPkId()).getId())) {
                // source line 226, bytecode pc 218
                return true;
            }
            // source line 224, bytecode pc 233
            j++;
        }
        // source line 216, bytecode pc 266
        i++;
    }
    // source line 231, bytecode pc 316
    (buddyGenerals = this._initInstance().Buddy.getBuddyGeneralsWithoutEmptyPos());
    // source line 232, bytecode pc 321
    (i = 0);
    while ((i < buddyGenerals.length)) {
        // source line 233, bytecode pc 349
        (_general_pk_id = buddyGenerals[i].getGeneralPkId());
        if ((general_id === this._initInstance().Generals.getByPkId(_general_pk_id).getId())) {
            // source line 235, bytecode pc 403
            return true;
        }
        // source line 232, bytecode pc 418
        i++;
    }
    // source line 239, bytecode pc 438
    return false;
},
    getInTeamPos: function(pk_id) {
    var teaminfo, i;
    // source line 245, bytecode pc 15
    (teaminfo = this._getTeamGeneralsWithoutEmptyPos());
    // source line 246, bytecode pc 20
    (i = 0);
    while ((i < teaminfo.length)) {
        if ((pk_id === teaminfo[i].getGeneralPkId())) {
            // source line 248, bytecode pc 72
            return teaminfo[i].getIdxInTeam();
        }
        // source line 246, bytecode pc 87
        i++;
    }
    // source line 251, bytecode pc 107
    return null;
},
    getTeamGeneralInPos: function(pos) {
    var teaminfo, i, _max_pos_unlock;
    // source line 256, bytecode pc 15
    (teaminfo = this._getTeamGeneralsWithoutEmptyPos());
    // source line 257, bytecode pc 20
    (i = 0);
    while ((i < teaminfo.length)) {
        if ((pos === teaminfo[i].getGeneralPos())) {
            // source line 259, bytecode pc 61
            return teaminfo[i];
        }
        // source line 257, bytecode pc 74
        (i = (+i + 1));
    }
    // source line 264, bytecode pc 108
    (_max_pos_unlock = this.getCurTeamMaxLength());
    if ((pos <= _max_pos_unlock)) {
        // source line 266, bytecode pc 147
        return xs.Models.TeamGeneral.createWithBase();
    }
    // source line 269, bytecode pc 174
    xs.warn(("null TeamGeneral In Pos " + pos));
    // source line 270, bytecode pc 176
    return null;
},
    _getTeamGeneralsWithoutEmptyPos: function() {
    var _ret, _rs, i;
    // source line 275, bytecode pc 31
    (_ret = this.dataRef.getDataByNameType(xs.Constant_GameData_Team));
    // source line 277, bytecode pc 40
    (_rs = []);
    // source line 278, bytecode pc 45
    (i = 0);
    while ((i < _ret.length)) {
        if (!xs.Utils.isEmpty(_ret[i].getGeneralPkId())) {
            // source line 280, bytecode pc 120
            _rs.push(_ret[i]);
        }
        // source line 278, bytecode pc 133
        (i = (+i + 1));
    }
    // source line 283, bytecode pc 155
    return _rs;
},
    _updateNotice: function() {
    // source line 288, bytecode pc 39
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Team_Change, this);
},
    getTeamGenerals: function() {
    var _ret;
    // source line 294, bytecode pc 31
    (_ret = this.dataRef.getDataByNameType(xs.Constant_GameData_Team));
    // source line 295, bytecode pc 35
    return _ret;
},
    getTeamGeneralsClone: function() {
    var _ret, _ret_clone, i, _temp;
    // source line 300, bytecode pc 15
    (_ret = this.getTeamGenerals());
    // source line 301, bytecode pc 24
    (_ret_clone = []);
    // source line 302, bytecode pc 29
    (i = 0);
    while ((i < _ret.length)) {
        // source line 303, bytecode pc 57
        (_temp = _ret[i].Clone());
        // source line 304, bytecode pc 68
        (_temp.general_position = 100);
        // source line 305, bytecode pc 87
        _ret_clone.push(_temp);
        // source line 302, bytecode pc 102
        i++;
    }
    // source line 307, bytecode pc 143
    this.dump("team clone before", _ret);
    // source line 308, bytecode pc 166
    this.dump("team clone done", _ret_clone);
    // source line 309, bytecode pc 170
    return _ret_clone;
},
    getGeneral: function(obj_team_general) {
    var general_pk_id;
    // source line 314, bytecode pc 17
    (general_pk_id = obj_team_general.getGeneralPkId());
    if (!xs.Utils.isEmpty(general_pk_id)) {
        // source line 316, bytecode pc 81
        return this._initInstance().Generals.getByPkId(general_pk_id);
    }
    // source line 318, bytecode pc 83
    return null;
}
}));
// source line 322, bytecode pc 369
(xs.Profile.GameData.Team.create = function(param) {
    var _str, _cls_name, obj;
    // source line 323, bytecode pc 11
    (_str = param.play_id);
    // source line 324, bytecode pc 35
    (_cls_name = xs.Profile.GameData.Team);
    // source line 325, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 328, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 331, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 333, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 334, bytecode pc 179
        return obj;
    }
    // source line 336, bytecode pc 202
    xs.error("xs.Profile.GameData.Team.create failed");
    // source line 337, bytecode pc 204
    return null;
});
