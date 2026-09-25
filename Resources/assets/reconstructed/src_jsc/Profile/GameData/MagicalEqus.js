// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/MagicalEqus.js:1
// source line 46, bytecode pc 193
(xs.Profile.GameData.MagicalEqus = xs.Profile.GameData.Base.extend({
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    name: "xs.Profile.GameData.MagicalEqus",
    nameType: xs.Constant_GameData_MagicalEqu,
    modelName: xs.Models.MagicalEqu,
    sortBy: "",
    init: function(param) {
    // source line 21, bytecode pc 16
    this._super(param);
    // source line 22, bytecode pc 65
    this.dataRef.getNotifyCenter().addObserver(this, this.clearCache, xs.Constant_Notify_ModelChange_MagicalEqus_SortChange);
    // source line 23, bytecode pc 67
    return true;
},
    getByGeneralId: function(general_id) {
    var _obj_list, i;
    // source line 29, bytecode pc 15
    (_obj_list = this.getAllWithDefaultSort());
    // source line 30, bytecode pc 20
    (i = 0);
    while ((i < _obj_list.length)) {
        if ((_obj_list[i].getGeneralId() == general_id)) {
            // source line 32, bytecode pc 61
            return _obj_list[i];
        }
        // source line 30, bytecode pc 75
        (i = (+i + 1));
    }
    // source line 36, bytecode pc 96
    return null;
},
    _updateNotice: function() {
    // source line 41, bytecode pc 39
    xs.Utils.Notify.postNotification(xs.Constant_Notify_EagicalEqus_Change, this);
},
    getIndexByGeneralId: function(general_id) {
    var index, _obj_list, i;
    // source line 47, bytecode pc 4
    (index = 0);
    // source line 48, bytecode pc 20
    (_obj_list = this.getAllWithDefaultSort());
    // source line 49, bytecode pc 25
    (i = 0);
    while ((i < _obj_list.length)) {
        if ((_obj_list[i].getGeneralId() == general_id)) {
            // source line 51, bytecode pc 65
            (index = i);
            // source line 52, bytecode pc 69
            return index;
        }
        // source line 49, bytecode pc 83
        (i = (+i + 1));
    }
    // source line 56, bytecode pc 106
    return index;
}
}));
// source line 62, bytecode pc 224
(xs.Profile.GameData.MagicalEqus.create = function(param) {
    var _str, _cls_name, obj;
    // source line 64, bytecode pc 22
    xs.log_hsq("param222");
    // source line 65, bytecode pc 34
    (_str = param.play_id);
    // source line 66, bytecode pc 58
    (_cls_name = xs.Profile.GameData.MagicalEqus);
    // source line 67, bytecode pc 108
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 70, bytecode pc 138
        return _cls_name._instance[_str];
    }
    // source line 73, bytecode pc 150
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 75, bytecode pc 198
        (_cls_name._instance[_str] = obj);
        // source line 76, bytecode pc 202
        return obj;
    }
    // source line 79, bytecode pc 225
    xs.error("xs.Profile.GameData.MagicalEqus.create failed");
    // source line 80, bytecode pc 227
    return null;
});
