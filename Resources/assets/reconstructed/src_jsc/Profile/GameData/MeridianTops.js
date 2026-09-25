// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/MeridianTops.js:1
// source line 97, bytecode pc 193
(xs.Profile.GameData.MeridianTops = xs.Profile.GameData.Base.extend({
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    name: "xs.Profile.GameData.MeridianTops",
    nameType: xs.Constant_GameData_MeridianTops,
    modelName: xs.Models.MeridianTop,
    sortBy: "",
    init: function(param) {
    // source line 16, bytecode pc 16
    this._super(param);
    // source line 17, bytecode pc 65
    this.dataRef.getNotifyCenter().addObserver(this, this.clearCache, xs.Constant_Notify_ModelChange_MeridianTop_SortChange);
    // source line 18, bytecode pc 67
    return true;
},
    getIsInTeamByGeneralId: function(list, generalId) {
    var _bool, i;
    // source line 21, bytecode pc 4
    (_bool = true);
    // source line 22, bytecode pc 9
    (i = 0);
    while ((i < list.length)) {
        if ((list[i] == generalId)) {
            // source line 24, bytecode pc 36
            (_bool = false);
        }
        // source line 22, bytecode pc 51
        i++;
    }
    // source line 27, bytecode pc 73
    return _bool;
},
    getAllMeridianTopModel: function() {
    var _obj_list, _data, teamModels, i, meridianTopModel, generalLevel, needGeneralLevel, list_1, list_2, list_3, teamGeneralModels, teamGeneralPkid, meridianModels, idx, _bool, j;
    // source line 31, bytecode pc 15
    (_obj_list = this.getAllWithDefaultSort());
    if (xs.Utils.isEmpty(_obj_list)) {
        // source line 33, bytecode pc 54
        (_data = []);
        // source line 34, bytecode pc 105
        (teamModels = xs.Profile.GameData.Mgr.getInstance().Team.getGeneralsInTeam());
        // source line 35, bytecode pc 110
        (i = 0);
        while ((i < teamModels.length)) {
            // source line 40, bytecode pc 217
            (meridianTopModel = xs.Models.MeridianTop.createWithJson({
    user_general_id: teamModels[i].getPkId().toString(),
    top_level: "1",
    meridian_level: "1",
    point_level: "0"
}));
            // source line 42, bytecode pc 239
            (generalLevel = teamModels[i].getLevel());
            // source line 43, bytecode pc 257
            (needGeneralLevel = meridianTopModel.getMeridianTopGeneralLevel());
            if ((parseInt(generalLevel) >= parseInt(needGeneralLevel))) {
                // source line 45, bytecode pc 318
                _data.push(meridianTopModel);
            }
            // source line 35, bytecode pc 333
            i++;
        }
        // source line 48, bytecode pc 355
        return _data;
    } else {
        // source line 50, bytecode pc 369
        (list_1 = []);
        // source line 51, bytecode pc 378
        (list_2 = []);
        // source line 52, bytecode pc 387
        (list_3 = []);
        // source line 53, bytecode pc 427
        (teamModels = xs.Profile.GameData.Mgr.getInstance().Team);
        // source line 54, bytecode pc 432
        (i = 0);
        while ((i < _obj_list.length)) {
            if (teamModels.isInTeam(_obj_list[i].getUserGeneralPkid())) {
                // source line 56, bytecode pc 499
                list_1.push(_obj_list[i]);
            } else {
                // source line 58, bytecode pc 527
                list_2.push(_obj_list[i]);
            }
            // source line 54, bytecode pc 542
            i++;
        }
        // source line 61, bytecode pc 578
        (teamGeneralModels = teamModels.getGeneralsInTeam());
        // source line 62, bytecode pc 583
        (i = 0);
        while ((i < teamGeneralModels.length)) {
            // source line 63, bytecode pc 622
            (teamGeneralPkid = teamGeneralModels[i].getPkId().toString());
            // source line 68, bytecode pc 697
            (meridianModels = xs.Models.MeridianTop.createWithJson({ user_general_id: teamGeneralPkid, top_level: "1", meridian_level: "1", point_level: "0" }));
            // source line 70, bytecode pc 719
            (generalLevel = teamGeneralModels[i].getLevel());
            // source line 71, bytecode pc 737
            (needGeneralLevel = meridianModels.getMeridianTopGeneralLevel());
            if ((parseInt(generalLevel) >= parseInt(needGeneralLevel))) {
                // source line 73, bytecode pc 784
                (idx = 0);
                // source line 74, bytecode pc 789
                (_bool = false);
                // source line 75, bytecode pc 794
                (j = 0);
                while ((j < list_1.length)) {
                    if ((teamGeneralPkid == list_1[j].getUserGeneralPkid())) {
                        // source line 77, bytecode pc 832
                        (_bool = true);
                        // source line 78, bytecode pc 839
                        (idx = j);
                        break;
                    }
                    // source line 75, bytecode pc 859
                    j++;
                }
                if (_bool) {
                    // source line 84, bytecode pc 908
                    list_3.push(list_1[idx]);
                } else {
                    // source line 86, bytecode pc 932
                    list_3.push(meridianModels);
                }
            }
            // source line 62, bytecode pc 947
            i++;
        }
        // source line 91, bytecode pc 987
        (list_3 = list_3.concat(list_2));
        // source line 92, bytecode pc 991
        return list_3;
    }
},
    getByGeneralPkId: function(general_pkId) {
    var _obj_list, i;
    // source line 98, bytecode pc 15
    (_obj_list = this.getAllMeridianTopModel());
    // source line 99, bytecode pc 20
    (i = 0);
    while ((i < _obj_list.length)) {
        if ((_obj_list[i].getUserGeneralPkid() == general_pkId)) {
            // source line 101, bytecode pc 61
            return _obj_list[i];
        }
        // source line 99, bytecode pc 76
        i++;
    }
    // source line 104, bytecode pc 96
    return null;
}
}));
// source line 110, bytecode pc 224
(xs.Profile.GameData.MeridianTops.create = function(param) {
    var _str, _cls_name, obj;
    // source line 112, bytecode pc 11
    (_str = param.play_id);
    // source line 113, bytecode pc 35
    (_cls_name = xs.Profile.GameData.MeridianTops);
    // source line 114, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 117, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 120, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 122, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 123, bytecode pc 179
        return obj;
    }
    // source line 126, bytecode pc 202
    xs.error("xs.Profile.GameData.MeridianTops.create failed");
    // source line 127, bytecode pc 204
    return null;
});
