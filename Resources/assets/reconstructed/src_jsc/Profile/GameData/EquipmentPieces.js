// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/EquipmentPieces.js:1
// source line 30, bytecode pc 178
(xs.Profile.GameData.EquipmentPieces = xs.Profile.GameData.Base.extend({
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    name: "xs.Profile.GameData.EquipmentPieces",
    nameType: xs.Constant_GameData_EquPiece,
    modelName: xs.Models.EquipmentPiece,
    sortBy: xs.Constant_SortType_EquipmentPiece_Default,
    init: function(param) {
    // source line 24, bytecode pc 16
    this._super(param);
    // source line 25, bytecode pc 65
    this.dataRef.getNotifyCenter().addObserver(this, this.clearCache, xs.Constant_Notify_ModelChange_EquPiece_SortChange);
    // source line 26, bytecode pc 67
    return true;
},
    _updateNotice: function() {
    // source line 31, bytecode pc 39
    xs.Utils.Notify.postNotification(xs.Constant_Notify_EquipmenPieces_Change, this);
}
}));
// source line 38, bytecode pc 209
(xs.Profile.GameData.EquipmentPieces.create = function(param) {
    var _str, _cls_name, obj;
    // source line 39, bytecode pc 11
    (_str = param.play_id);
    // source line 40, bytecode pc 35
    (_cls_name = xs.Profile.GameData.EquipmentPieces);
    // source line 41, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 44, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 47, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 49, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 50, bytecode pc 179
        return obj;
    }
    // source line 53, bytecode pc 202
    xs.error("xs.Profile.GameData.EquipmentPieces.create failed");
    // source line 54, bytecode pc 204
    return null;
});
