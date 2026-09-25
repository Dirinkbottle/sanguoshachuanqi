// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/TmpInfo/Achieve.js:1
// source line 101, bytecode pc 208
(xs.Models.TmpInfo.Achieve = cc.Class.extend({
    name: "xs.Models.TmpInfo.Achieve",
    init: function() {
    // source line 7, bytecode pc 7
    (this.gid = null);
    // source line 8, bytecode pc 19
    (this.surrender_list = []);
    // source line 9, bytecode pc 27
    (this.item_id = 0);
    // source line 10, bytecode pc 39
    (this.surrender_dialog = "");
    // source line 11, bytecode pc 47
    (this.all_status = 0);
    // source line 12, bytecode pc 55
    (this.is_receive = 0);
    // source line 13, bytecode pc 57
    return true;
},
    loadJson: function(data) {
    // source line 17, bytecode pc 14
    (this.complete_list = data.complete_list);
    // source line 18, bytecode pc 29
    (this.gid = data.general_id);
    // source line 21, bytecode pc 66
    (this.item_id = xs.Utils.parseStringSafe(data.item_id));
    // source line 22, bytecode pc 81
    (this.surrender_dialog = data.surrender_dialog);
    // source line 23, bytecode pc 96
    (this.all_status = data.all_status);
    // source line 24, bytecode pc 111
    (this.is_receive = data.is_receive);
},
    getCompleteSurrenderTitle: function() {
    var surrenderDataRef;
    // source line 30, bytecode pc 49
    (surrenderDataRef = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Surrender, this.complete_list[0]));
    // source line 32, bytecode pc 58
    return surrenderDataRef.surrender_title;
},
    getGovernValue: function() {
    var surrenderDataRef;
    // source line 38, bytecode pc 49
    (surrenderDataRef = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Surrender, this.complete_list[0]));
    // source line 40, bytecode pc 58
    return surrenderDataRef.govern_value;
},
    getGid: function() {
    // source line 44, bytecode pc 6
    return this.gid;
},
    getSurrenderList: function() {
    // source line 48, bytecode pc 6
    return this.surrender_list;
},
    getItemId: function() {
    // source line 53, bytecode pc 6
    return this.item_id;
},
    _getGeneralModel: function() {
    var _obj;
    // source line 58, bytecode pc 63
    (_obj = xs.Profile.GameData.Mgr.getInstance().Generals.createWithBase(this.getGid()));
    // source line 59, bytecode pc 67
    return _obj;
},
    getTalking: function() {
    var _str_talking;
    // source line 67, bytecode pc 106
    (_str_talking = (xs.Utils.isEmpty(this.surrender_dialog) ? xs.Tools.String.createString("auto_name_46") : xs.Factorys.String.create(this.surrender_dialog)));
    // source line 68, bytecode pc 110
    return _str_talking;
},
    getTitle: function() {
    var title;
    // source line 73, bytecode pc 59
    (title = (this._getGeneralModel().getNameString() + xs.Tools.String.createString("auto_name_47")));
    // source line 74, bytecode pc 63
    return title;
},
    getGeneralReceive: function() {
    // source line 79, bytecode pc 6
    return this.is_receive;
},
    getGeneralStatus: function() {
    // source line 86, bytecode pc 6
    return this.all_status;
},
    getCard: function() {
    // source line 90, bytecode pc 34
    return this._getGeneralModel().getRes().createOriginalSprite_Foot();
},
    getIcon: function() {
    var _obj;
    // source line 94, bytecode pc 31
    this.assert(this.getItemId(), "the surrender item id is null");
    // source line 96, bytecode pc 95
    (_obj = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(this.getItemId()));
    // source line 97, bytecode pc 110
    return _obj.createIcon_Grade();
},
    getName: function() {
    var _obj;
    // source line 102, bytecode pc 63
    (_obj = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(this.getItemId()));
    // source line 103, bytecode pc 78
    return _obj.getNameString();
}
}));
// source line 110, bytecode pc 239
(xs.Models.TmpInfo.Achieve.createWithJson = function(data) {
    var _ret;
    // source line 111, bytecode pc 28
    (_ret = new xs.Models.TmpInfo.Achieve());
    if ((_ret && _ret.init())) {
        // source line 113, bytecode pc 75
        _ret.loadJson(data);
        // source line 114, bytecode pc 79
        return _ret;
    }
    // source line 116, bytecode pc 81
    return null;
});
// source line 120, bytecode pc 270
(xs.Models.TmpInfo.Achieve.loadData = function(data) {
    var com_general, completed, gid, _obj;
    // source line 121, bytecode pc 11
    (com_general = data.general_list);
    // source line 122, bytecode pc 20
    (completed = []);
    for (var gid in com_general) {
        if (!(com_general.hasOwnProperty(gid))) continue;
        // source line 125, bytecode pc 75
        (com_general[gid].general_id = gid);
        // source line 126, bytecode pc 118
        (_obj = xs.Models.TmpInfo.Achieve.createWithJson(com_general[gid]));
        // source line 127, bytecode pc 137
        completed.push(_obj);
    }
    // source line 134, bytecode pc 149
    return completed;
});
// source line 138, bytecode pc 301
(xs.Models.TmpInfo.Achieve.loadDataAwake = function(data) {
    var com_general, completed, gid, _obj;
    // source line 139, bytecode pc 11
    (com_general = data.evolution_list);
    // source line 140, bytecode pc 20
    (completed = []);
    for (var gid in com_general) {
        if (!(com_general.hasOwnProperty(gid))) continue;
        // source line 143, bytecode pc 75
        (com_general[gid].general_id = gid);
        // source line 144, bytecode pc 118
        (_obj = xs.Models.TmpInfo.Achieve.createWithJson(com_general[gid]));
        // source line 145, bytecode pc 137
        completed.push(_obj);
    }
    // source line 152, bytecode pc 149
    return completed;
});
