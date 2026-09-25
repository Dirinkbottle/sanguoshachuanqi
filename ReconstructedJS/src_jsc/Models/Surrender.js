// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Surrender.js:1
// source line 160, bytecode pc 219
(xs.Models.Surrender = (xs.Models.Surrender || xs.Models.Card.extend({
    name: "xs.Models.Surrender",
    CfgDataType: xs.Constant_CfgDataType_Surrender,
    CfgDataTypeSec: xs.Constant_CfgDataType_General_Surrender,
    _getGeneralSurrenderDataRef: function() {
    if (!this.cacheGeneralSurrenderDataRef) {
        // source line 18, bytecode pc 64
        (this.cacheGeneralSurrenderDataRef = xs.Tools.CfgData.readRecordByTypeAndKey(this.CfgDataTypeSec, this._getGid()));
    }
    // source line 21, bytecode pc 71
    return this.cacheGeneralSurrenderDataRef;
},
    _getSurrenderDataRef: function() {
    var surrenderDataRef;
    // source line 27, bytecode pc 49
    (surrenderDataRef = xs.Tools.CfgData.readRecordByTypeAndKey(this.CfgDataType, this._getSurrenderId()));
    // source line 29, bytecode pc 53
    return surrenderDataRef;
},
    init: function() {
    // source line 33, bytecode pc 12
    this._super();
    // source line 35, bytecode pc 20
    (this.gid = 0);
    // source line 36, bytecode pc 32
    (this.surrender_list = "");
    // source line 37, bytecode pc 40
    (this.item_id = 0);
    // source line 38, bytecode pc 48
    (this.item_status = 0);
    // source line 39, bytecode pc 56
    (this.all_status = false);
    // source line 40, bytecode pc 68
    (this.complated_list = "");
    // source line 41, bytecode pc 70
    return true;
},
    loadJson: function(gid, json, status) {
    var surrenderList, i, _surrender_id, _surrender, _surrender_cfg, govern;
    // source line 45, bytecode pc 16
    this._setGid(gid);
    // source line 47, bytecode pc 28
    (surrenderList = json.surrender_list);
    if ((status == 1)) {
        // source line 52, bytecode pc 50
        (surrenderList = json.evolution_surrender_list);
    }
    // source line 56, bytecode pc 62
    (this.surrender_list = []);
    // source line 58, bytecode pc 67
    (i = 0);
    while ((i < surrenderList.length)) {
        // source line 59, bytecode pc 89
        (_surrender_id = surrenderList[i].surrender_id);
        // source line 64, bytecode pc 98
        (_surrender = []);
        // source line 65, bytecode pc 110
        (_surrender.surrender_id = _surrender_id);
        // source line 66, bytecode pc 127
        this._setSurrenderId(_surrender_id);
        // source line 67, bytecode pc 143
        (_surrender_cfg = this._getSurrenderDataRef());
        // source line 68, bytecode pc 160
        (_surrender.surrender_title = _surrender_cfg.surrender_title);
        // source line 69, bytecode pc 177
        (_surrender.surrender_desc = _surrender_cfg.surrender_desc);
        // source line 71, bytecode pc 186
        (govern = []);
        // source line 72, bytecode pc 205
        (govern.type = xs.Constant_ObjType_PlayerAttr);
        // source line 73, bytecode pc 229
        (govern.id = xs.Models.AddPlayerInfoType_TeamPoint);
        // source line 74, bytecode pc 246
        (govern.num = _surrender_cfg.govern_value);
        // source line 75, bytecode pc 258
        (_surrender.govern = govern);
        // source line 77, bytecode pc 275
        (_surrender.govern_value = _surrender_cfg.govern_value);
        // source line 78, bytecode pc 292
        (_surrender.progress_num = _surrender_cfg.progress_num);
        // source line 80, bytecode pc 313
        (_surrender.progressed_num = surrenderList[i].progress_num);
        // source line 81, bytecode pc 334
        (_surrender.surrender_status = surrenderList[i].surrender_status);
        // source line 84, bytecode pc 351
        (_surrender.source = _surrender_cfg.source);
        // source line 87, bytecode pc 373
        this.surrender_list.push(_surrender);
        // source line 58, bytecode pc 386
        (i = (+i + 1));
    }
    // source line 90, bytecode pc 419
    (this.item_id = json.item_id);
    // source line 91, bytecode pc 434
    (this.item_status = json.item_status);
    if ((status == 1)) {
        // source line 94, bytecode pc 459
        (this.item_id = json.evolution_item_id);
        // source line 95, bytecode pc 474
        (this.item_status = json.evolution_item_status);
    }
    // source line 97, bytecode pc 497
    xs.log_ck("数据解析完成");
},
    _setGid: function(gid) {
    // source line 103, bytecode pc 9
    (this.gid = gid);
    // source line 104, bytecode pc 11
    return null;
},
    _getGid: function() {
    // source line 108, bytecode pc 6
    return this.gid;
},
    _setSurrenderId: function(surrender_id) {
    // source line 112, bytecode pc 9
    (this.surrender_id = surrender_id);
    // source line 113, bytecode pc 11
    return null;
},
    _getSurrenderId: function() {
    // source line 117, bytecode pc 6
    return this.surrender_id;
},
    getAchieveData: function(gid, json) {
    var complete_list, all_status, all_progress, all_progressed, i, _surrender, _surrender_cfg, govern;
    // source line 121, bytecode pc 16
    this._setGid(gid);
    // source line 122, bytecode pc 28
    (complete_list = json.complete_list);
    if ((complete_list !== undefined)) {
        // source line 124, bytecode pc 54
        (all_status = json.all_status);
        // source line 125, bytecode pc 78
        (this.all_status = ((all_status == 1) ? true : false));
        // source line 126, bytecode pc 90
        (all_progress = json.all_progress);
        // source line 127, bytecode pc 102
        (all_progressed = json.all_progressed);
        // source line 128, bytecode pc 118
        (all_progressed = (all_progressed - complete_list.length));
        // source line 129, bytecode pc 130
        (this.surrender_list = []);
        // source line 130, bytecode pc 135
        (i = 0);
        while ((i < complete_list.length)) {
            // source line 131, bytecode pc 150
            (_surrender = []);
            // source line 132, bytecode pc 166
            (_surrender.surrender_id = complete_list[i]);
            // source line 133, bytecode pc 187
            this._setSurrenderId(complete_list[i]);
            // source line 134, bytecode pc 203
            (_surrender_cfg = this._getSurrenderDataRef());
            // source line 135, bytecode pc 220
            (_surrender.surrender_title = _surrender_cfg.surrender_title);
            // source line 136, bytecode pc 237
            (_surrender.surrender_desc = _surrender_cfg.surrender_desc);
            // source line 137, bytecode pc 246
            (govern = []);
            // source line 138, bytecode pc 265
            (govern.type = xs.Constant_ObjType_PlayerAttr);
            // source line 139, bytecode pc 289
            (govern.id = xs.Models.AddPlayerInfoType_TeamPoint);
            // source line 140, bytecode pc 306
            (govern.num = _surrender_cfg.govern_value);
            // source line 141, bytecode pc 318
            (_surrender.govern = govern);
            // source line 142, bytecode pc 335
            (_surrender.govern_value = _surrender_cfg.govern_value);
            // source line 143, bytecode pc 352
            (_surrender.progress_num = _surrender_cfg.progress_num);
            // source line 144, bytecode pc 369
            (_surrender.progressed_num = _surrender_cfg.progress_num);
            // source line 145, bytecode pc 379
            (_surrender.surrender_status = 1);
            // source line 146, bytecode pc 391
            (_surrender.all_progress = all_progress);
            // source line 147, bytecode pc 406
            all_progressed++;
            // source line 148, bytecode pc 418
            (_surrender.all_progressed = all_progressed);
            // source line 149, bytecode pc 440
            this.surrender_list.push(_surrender);
            // source line 130, bytecode pc 453
            (i = (+i + 1));
        }
    }
},
    getSurrenderList: function() {
    // source line 156, bytecode pc 6
    return this.surrender_list;
},
    getAllStatus: function() {
    // source line 161, bytecode pc 6
    return this.all_status;
}
})));
// source line 168, bytecode pc 245
(xs.Models.Surrender.createWithJson = function(gid, json_data, status) {
    var card;
    // source line 169, bytecode pc 23
    (card = new xs.Models.Surrender());
    if ((card && card.init())) {
        // source line 171, bytecode pc 78
        card.loadJson(gid, json_data, status);
        // source line 172, bytecode pc 82
        return card;
    }
    // source line 174, bytecode pc 84
    return null;
});
// source line 178, bytecode pc 271
(xs.Models.Surrender.create = function(gid, json_data) {
    var card;
    // source line 179, bytecode pc 23
    (card = new xs.Models.Surrender());
    if ((card && card.init())) {
        // source line 181, bytecode pc 74
        card.getAchieveData(gid, json_data);
        // source line 182, bytecode pc 83
        return card.surrender_list;
    }
    // source line 184, bytecode pc 85
    return null;
});
