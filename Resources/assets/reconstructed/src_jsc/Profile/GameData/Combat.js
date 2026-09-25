// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Combat.js:1
// source line 29, bytecode pc 108
(xs.Profile.GameData.Combat = xs.Profile.GameData.Base.extend({
    name: "xs.Profile.GameData.Combat",
    init: function(param) {
    // source line 11, bytecode pc 16
    this._super(param);
    // source line 12, bytecode pc 18
    return true;
},
    getCombats: function() {
    // source line 16, bytecode pc 28
    return this.dataRef.getDataByNameType(xs.Constant_GameData_Combat);
},
    getCombatByType: function(combatType) {
    var m_combats, i;
    // source line 20, bytecode pc 31
    (m_combats = this.dataRef.getDataByNameType(xs.Constant_GameData_Combat));
    // source line 21, bytecode pc 36
    (i = 0);
    while ((i < m_combats.length)) {
        if ((m_combats[i].getType() === combatType)) {
            // source line 23, bytecode pc 77
            return m_combats[i];
        }
        // source line 21, bytecode pc 92
        i++;
    }
},
    getNotify: function() {
    if (!this.notify) {
        // source line 31, bytecode pc 44
        (this.notify = xs.Utils.Notify.create());
    }
    // source line 33, bytecode pc 51
    return this.notify;
}
}));
// source line 37, bytecode pc 139
(xs.Profile.GameData.Combat.create = function(param) {
    var _str, _cls_name, obj;
    // source line 38, bytecode pc 11
    (_str = param.play_id);
    // source line 39, bytecode pc 35
    (_cls_name = xs.Profile.GameData.Combat);
    // source line 40, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 43, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 46, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 48, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 49, bytecode pc 179
        return obj;
    }
    // source line 51, bytecode pc 202
    xs.error("xs.Profile.GameData.Combat.create failed");
    // source line 52, bytecode pc 204
    return null;
});
