// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/EvolutionInfos.js:1
// source line 59, bytecode pc 223
(xs.Profile.GameData.EvolutionInfos = xs.Profile.GameData.Base.extend({
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    name: "xs.Profile.GameData.EvolutionInfos",
    nameType: xs.Constant_GameData_Evolution,
    modelName: xs.Models.EvolutionInfo,
    sortBy: "",
    init: function(param) {
    // source line 16, bytecode pc 16
    this._super(param);
    // source line 17, bytecode pc 65
    this.dataRef.getNotifyCenter().addObserver(this, this.clearCache, xs.Constant_Notify_ModelChange_Evolution_SortChange);
    // source line 18, bytecode pc 73
    (this.hitNum = 0);
    // source line 19, bytecode pc 75
    return true;
},
    getByGeneralId: function(general_id) {
    var _obj_list, i;
    // source line 26, bytecode pc 15
    (_obj_list = this.getAllWithDefaultSort());
    // source line 27, bytecode pc 20
    (i = 0);
    while ((i < _obj_list.length)) {
        if ((_obj_list[i].getGeneralId() == general_id)) {
            // source line 29, bytecode pc 61
            return _obj_list[i];
        }
        // source line 27, bytecode pc 76
        i++;
    }
    // source line 32, bytecode pc 96
    return null;
},
    _updateNotice: function() {
    // source line 37, bytecode pc 39
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Evolution_Change, this);
},
    checkAwakedByGeneralId: function(general_id) {
    var evolution;
    // source line 40, bytecode pc 19
    (evolution = this.getByGeneralId(general_id));
    if (((evolution != null) && (evolution.getStatusAwake() == xs.Constant_Evolution_Status_Enable))) {
        // source line 42, bytecode pc 62
        return true;
    }
    // source line 43, bytecode pc 64
    return false;
},
    checkCanAwakeByGeneral: function(generalModel) {
    if ((generalModel == null)) {
        // source line 47, bytecode pc 11
        return false;
    }
    // source line 51, bytecode pc 131
    return xs.Models.EvolutionInfo.createWithBase(generalModel.getId()).isCanAwake(generalModel, xs.Profile.GameData.Mgr.getInstance().MagicalEqus.getByGeneralId(generalModel.getId()));
},
    getAllGeneralCanAwakeNum: function() {
    // source line 57, bytecode pc 6
    return this.hitNum;
},
    getAllGeneralAwake: function() {
    var allList, _awake_obj, waitAwakeObjs, openAwakeObjs, closeAwakeObjs, i, magicalEqusItem, tmpGeneralId, obj;
    // source line 62, bytecode pc 50
    (allList = xs.Profile.GameData.Mgr.getInstance().MagicalEqus.getAll());
    // source line 64, bytecode pc 59
    (_awake_obj = []);
    // source line 65, bytecode pc 68
    (waitAwakeObjs = []);
    // source line 66, bytecode pc 77
    (openAwakeObjs = []);
    // source line 67, bytecode pc 86
    (closeAwakeObjs = []);
    // source line 70, bytecode pc 91
    (i = 0);
    while ((i < allList.length)) {
        // source line 71, bytecode pc 108
        (magicalEqusItem = allList[i]);
        // source line 72, bytecode pc 126
        (tmpGeneralId = magicalEqusItem.getGeneralId());
        // source line 73, bytecode pc 146
        (obj = this.getByGeneralId(tmpGeneralId));
        if ((obj == null)) {
            // source line 76, bytecode pc 190
            (obj = xs.Models.EvolutionInfo.createWithBase(tmpGeneralId));
        }
        // source line 78, bytecode pc 209
        obj.initCachePoint(magicalEqusItem);
        if ((obj.getStatusAwake() == xs.Constant_Evolution_Status_Close)) {
            // source line 81, bytecode pc 258
            closeAwakeObjs.push(obj);
        } else {
            if ((obj.getStatusAwake() == xs.Constant_Evolution_Status_Unable)) {
                if (obj.isCanAwake()) {
                    // source line 87, bytecode pc 331
                    waitAwakeObjs.push(obj);
                } else {
                    // source line 90, bytecode pc 355
                    openAwakeObjs.push(obj);
                }
            } else {
                if ((obj.getStatusAwake() == xs.Constant_Evolution_Status_Enable)) {
                    // source line 95, bytecode pc 409
                    _awake_obj.push(obj);
                }
            }
        }
        // source line 70, bytecode pc 424
        i++;
    }
    // source line 99, bytecode pc 457
    (this.hitNum = waitAwakeObjs.length);
    // source line 101, bytecode pc 462
    (i = 0);
    while ((i < waitAwakeObjs.length)) {
        // source line 102, bytecode pc 491
        _awake_obj.push(waitAwakeObjs[i]);
        // source line 101, bytecode pc 506
        i++;
    }
    // source line 105, bytecode pc 529
    (i = 0);
    while ((i < openAwakeObjs.length)) {
        // source line 106, bytecode pc 558
        _awake_obj.push(openAwakeObjs[i]);
        // source line 105, bytecode pc 573
        i++;
    }
    // source line 108, bytecode pc 596
    (i = 0);
    while ((i < closeAwakeObjs.length)) {
        // source line 109, bytecode pc 625
        _awake_obj.push(closeAwakeObjs[i]);
        // source line 108, bytecode pc 640
        i++;
    }
    // source line 112, bytecode pc 662
    return _awake_obj;
}
}));
// source line 119, bytecode pc 254
(xs.Profile.GameData.EvolutionInfos.create = function(param) {
    var _str, _cls_name, obj;
    // source line 121, bytecode pc 11
    (_str = param.play_id);
    // source line 122, bytecode pc 35
    (_cls_name = xs.Profile.GameData.EvolutionInfos);
    // source line 123, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 126, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 129, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 131, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 132, bytecode pc 179
        return obj;
    }
    // source line 135, bytecode pc 202
    xs.error("xs.Profile.GameData.EvolutionInfos.create failed");
    // source line 136, bytecode pc 204
    return null;
});
