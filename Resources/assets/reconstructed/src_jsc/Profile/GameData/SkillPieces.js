// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/SkillPieces.js:1
// source line 25, bytecode pc 163
(xs.Profile.GameData.SkillPieces = xs.Profile.GameData.Base.extend({
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    name: "xs.Profile.GameData.SkillPieces",
    nameType: xs.Constant_GameData_SkillPiece,
    modelName: xs.Models.SkillPiece,
    init: function(param) {
    // source line 20, bytecode pc 16
    this._super(param);
    // source line 21, bytecode pc 65
    this.dataRef.getNotifyCenter().addObserver(this, this.clearCache, xs.Constant_Notify_ModelChange_SkillPiece_SortChange);
    // source line 22, bytecode pc 67
    return true;
},
    _updateNotice: function() {
    // source line 26, bytecode pc 22
    xs.log_hsq("_updateNotice SkillPieces");
    // source line 27, bytecode pc 62
    xs.Utils.Notify.postNotification(xs.Constant_Notify_SkillPoeces_Change, this);
}
}));
// source line 33, bytecode pc 194
(xs.Profile.GameData.SkillPieces.create = function(param) {
    var _str, _cls_name, obj;
    // source line 34, bytecode pc 11
    (_str = param.play_id);
    // source line 35, bytecode pc 35
    (_cls_name = xs.Profile.GameData.SkillPieces);
    // source line 36, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 39, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 42, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 44, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 45, bytecode pc 179
        return obj;
    }
    // source line 47, bytecode pc 202
    xs.error("xs.Profile.GameData.SkillPieces.create failed");
    // source line 48, bytecode pc 204
    return null;
});
