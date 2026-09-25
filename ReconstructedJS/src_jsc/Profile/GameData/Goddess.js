// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Goddess.js:1
// source line 166, bytecode pc 283
(xs.Profile.GameData.Goddess = xs.Profile.GameData.Base.extend({
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    name: "xs.Profile.GameData.Goddess",
    nameType: xs.Constant_GameData_Goddess,
    modelName: xs.Models.Goddess,
    sortBy: "",
    init: function(param) {
    // source line 20, bytecode pc 16
    this._super(param);
    // source line 21, bytecode pc 65
    this.dataRef.getNotifyCenter().addObserver(this, this.clearCache, xs.Constant_Notify_ModelChange_Goddess_SortChange);
    // source line 22, bytecode pc 67
    return true;
},
    getHaveGoddessNum: function() {
    // source line 27, bytecode pc 17
    return this.getAllWithDefaultSort().length;
},
    isHaveGoddess_GoddessId: function(goddessID) {
    var goddessList, i;
    // source line 31, bytecode pc 15
    (goddessList = this.getAllWithDefaultSort());
    // source line 32, bytecode pc 20
    (i = 0);
    while ((i < goddessList.length)) {
        if ((goddessList[i].getId() == goddessID)) {
            // source line 34, bytecode pc 55
            return true;
        }
        // source line 32, bytecode pc 70
        i++;
    }
    // source line 36, bytecode pc 90
    return false;
},
    getHaveGoddessSkinNum: function() {
    var index, _obj_list, i;
    // source line 41, bytecode pc 4
    (index = 0);
    // source line 42, bytecode pc 20
    (_obj_list = this.getAllWithDefaultSort());
    // source line 43, bytecode pc 25
    (i = 0);
    while ((i < _obj_list.length)) {
        // source line 44, bytecode pc 62
        (index = (index + _obj_list[i].getSkinList().length));
        // source line 43, bytecode pc 77
        i++;
    }
    // source line 47, bytecode pc 99
    return index;
},
    getGoddessSkinListByGoddessId: function(id) {
    var skinModelList, skinList, key;
    // source line 51, bytecode pc 8
    (skinModelList = []);
    // source line 54, bytecode pc 53
    (skinList = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_GoddessSurface, id));
    for (var key in skinList) {
        if (!(skinList.hasOwnProperty(key))) continue;
        if (!(!xs.Utils.isEmpty(skinList[key].id))) continue;
        // source line 61, bytecode pc 187
        skinModelList.push(xs.Models.Goddess.createWithBaseSurface(skinList[key].id));
    }
    // source line 65, bytecode pc 199
    return skinModelList;
},
    getHaveGoddessSkinList: function(model) {
    var skinModelList, skinList, i;
    // source line 70, bytecode pc 8
    (skinModelList = []);
    // source line 71, bytecode pc 26
    (skinList = model.getSkinList());
    // source line 73, bytecode pc 31
    (i = 0);
    while ((i < skinList.length)) {
        // source line 75, bytecode pc 87
        skinModelList.push(xs.Models.Goddess.createWithBaseSurface(skinList[i]));
        // source line 73, bytecode pc 102
        i++;
    }
    // source line 77, bytecode pc 124
    return skinModelList;
},
    isStrongestInFight: function() {
    var goddessList, fight, fightList, i;
    // source line 81, bytecode pc 15
    (goddessList = this.getAllWithDefaultSort());
    // source line 82, bytecode pc 20
    (fight = 0);
    // source line 83, bytecode pc 29
    (fightList = []);
    // source line 84, bytecode pc 34
    (i = 0);
    while ((i < goddessList.length)) {
        // source line 85, bytecode pc 74
        fightList.push(goddessList[i].getSmallFighting());
        if ((goddessList[i].getIsFight() == 1)) {
            // source line 87, bytecode pc 121
            (fight = goddessList[i].getSmallFighting());
        }
        // source line 84, bytecode pc 136
        i++;
    }
    if ((fight == 0)) {
        // source line 91, bytecode pc 166
        return false;
    }
    // source line 94, bytecode pc 171
    (i = 0);
    while ((i < fightList.length)) {
        if ((fightList[i] > fight)) {
            // source line 96, bytecode pc 195
            return false;
        }
        // source line 94, bytecode pc 210
        i++;
    }
    // source line 99, bytecode pc 230
    return true;
},
    getNotFightGoddessNum: function() {
    var num, goddessList, i;
    // source line 102, bytecode pc 4
    (num = 1);
    // source line 103, bytecode pc 20
    (goddessList = this.getAllWithDefaultSort());
    if ((goddessList.length == 0)) {
        // source line 105, bytecode pc 40
        (num = 0);
    }
    // source line 108, bytecode pc 45
    (i = 0);
    while ((i < goddessList.length)) {
        if ((goddessList[i].getIsFight() == 1)) {
            // source line 111, bytecode pc 81
            (num = 0);
            break;
        }
        // source line 108, bytecode pc 101
        i++;
    }
    // source line 115, bytecode pc 123
    return num;
},
    _updateNotice: function() {
    // source line 120, bytecode pc 39
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Goddess_Change, this);
},
    getFightGoddessID: function() {
    var goddessList, i;
    // source line 125, bytecode pc 15
    (goddessList = this.getAllWithDefaultSort());
    if ((goddessList.length == 0)) {
        // source line 127, bytecode pc 32
        return null;
    }
    // source line 130, bytecode pc 37
    (i = 0);
    while ((i < goddessList.length)) {
        if ((goddessList[i].getIsFight() == 1)) {
            // source line 132, bytecode pc 87
            return goddessList[i].getId();
        }
        // source line 130, bytecode pc 102
        i++;
    }
},
    getFightGoddess: function() {
    var goddessList, i;
    // source line 138, bytecode pc 15
    (goddessList = this.getAllWithDefaultSort());
    if ((goddessList.length == 0)) {
        // source line 140, bytecode pc 32
        return null;
    }
    // source line 143, bytecode pc 37
    (i = 0);
    while ((i < goddessList.length)) {
        if ((goddessList[i].getIsFight() == 1)) {
            // source line 145, bytecode pc 76
            return goddessList[i];
        }
        // source line 143, bytecode pc 91
        i++;
    }
},
    getFateGoddess: function() {
    var fightGoddess, goddessList;
    // source line 152, bytecode pc 15
    (fightGoddess = this.getFightGoddessID());
    // source line 153, bytecode pc 31
    (goddessList = this.getAllWithDefaultSort());
    if ((goddessList.length == 0)) {
        // source line 155, bytecode pc 48
        return null;
    }
    // source line 163, bytecode pc 52
    return fightGoddess;
},
    isHaveGoddessBySkinId: function(skinId) {
    var result, goddessList, goddessSkinListData, i, skinList, key;
    // source line 167, bytecode pc 4
    (result = false);
    // source line 168, bytecode pc 20
    (goddessList = this.getAllWithDefaultSort());
    // source line 169, bytecode pc 44
    (goddessSkinListData = xs.Cfg.System.sgs_godness_skin);
    // source line 170, bytecode pc 49
    (i = 0);
    while ((i < goddessList.length)) {
        // source line 171, bytecode pc 81
        (skinList = goddessSkinListData[goddessList[i].getId()]);
        if (!xs.Utils.isEmpty(skinList)) {
            for (var key in skinList) {
                if (!(skinList.hasOwnProperty(key))) continue;
                if (!((skinList[key].id == skinId))) continue;
                // source line 176, bytecode pc 177
                (result = true);
                break;
            }
        }
        // source line 170, bytecode pc 205
        i++;
    }
    // source line 185, bytecode pc 227
    return result;
}
}));
// source line 193, bytecode pc 314
(xs.Profile.GameData.Goddess.create = function(param) {
    var _str, _cls_name, obj;
    // source line 195, bytecode pc 11
    (_str = param.play_id);
    // source line 196, bytecode pc 35
    (_cls_name = xs.Profile.GameData.Goddess);
    // source line 197, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 200, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 203, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 205, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 206, bytecode pc 179
        return obj;
    }
    // source line 209, bytecode pc 202
    xs.error("xs.Profile.GameData.Goddess.create failed");
    // source line 210, bytecode pc 204
    return null;
});
