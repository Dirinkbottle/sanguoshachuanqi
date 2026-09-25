// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/MagicalEquPoint.js:1
// source line 96, bytecode pc 233
(xs.Models.MagicalEquPoint = xs.Models.Base.extend({
    name: "xs.Models.MagicalEquPoint",
    CfgDataType: xs.Constant_CfgDataType_MagicalEquPoint,
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
    if (!this._super()) {
        // source line 20, bytecode pc 19
        return false;
    }
    // source line 22, bytecode pc 27
    (this.is_light = false);
    // source line 23, bytecode pc 35
    (this.is_normal = false);
    // source line 24, bytecode pc 43
    (this.step = 0);
    // source line 25, bytecode pc 51
    (this.sub_step = 0);
    // source line 26, bytecode pc 59
    (this.magical_id = 0);
    // source line 27, bytecode pc 61
    return true;
},
    loadJson: function(json) {
    // source line 32, bytecode pc 12
    this._super();
    // source line 34, bytecode pc 20
    (this.is_light = false);
    // source line 35, bytecode pc 35
    (this.is_normal = json.is_normal);
    // source line 36, bytecode pc 50
    (this.step = json.step);
    // source line 37, bytecode pc 65
    (this.sub_step = json.sub_step);
    // source line 38, bytecode pc 80
    (this.magical_id = json.magical_id);
},
    getDesc: function() {
    // source line 43, bytecode pc 17
    return this.getBaseDataRef().buff_desc;
},
    getConditionList: function() {
    var list, idNullList, forgePieceList, i;
    // source line 47, bytecode pc 8
    (list = []);
    // source line 48, bytecode pc 17
    (idNullList = []);
    // source line 49, bytecode pc 38
    (forgePieceList = this.getBaseDataRef().forge_piece);
    // source line 50, bytecode pc 43
    (i = 0);
    while ((i < forgePieceList.length)) {
        if ((forgePieceList[i][0] && (forgePieceList[i][0] != "0"))) {
            // source line 52, bytecode pc 107
            list.push(forgePieceList[i]);
        } else {
            // source line 55, bytecode pc 135
            idNullList.push(forgePieceList[i]);
        }
        // source line 50, bytecode pc 150
        i++;
    }
    // source line 59, bytecode pc 190
    (list = list.concat(idNullList));
    // source line 61, bytecode pc 194
    return list;
},
    setLight: function(status) {
    // source line 65, bytecode pc 9
    (this.is_light = status);
    // source line 66, bytecode pc 11
    return void 0;
},
    isLight: function() {
    // source line 71, bytecode pc 6
    return this.is_light;
},
    getIsNormal: function() {
    // source line 75, bytecode pc 6
    return this.is_normal;
},
    getVipGrade: function() {
    // source line 80, bytecode pc 17
    return this.getBaseDataRef().user_vip_level;
},
    getEffectType: function() {
    // source line 84, bytecode pc 17
    return this.getBaseDataRef().buff_type;
},
    getEffectSubStep: function() {
    // source line 88, bytecode pc 13
    return (this.sub_step || 0);
},
    getEffectVal: function() {
    // source line 92, bytecode pc 17
    return this.getBaseDataRef().buff_effect;
},
    getBaseDataRef: function() {
    var _baseDataRefAll, is_vip;
    if (!this.baseDataRef) {
        // source line 101, bytecode pc 55
        (_baseDataRefAll = xs.Tools.CfgData.readRecordByTypeAndKey(this.CfgDataType, this.magical_id));
        // source line 103, bytecode pc 77
        (is_vip = (this.is_normal ? 0 : 1));
        // source line 104, bytecode pc 159
        (this.baseDataRef = (xs.Utils.isSet(_baseDataRefAll[this.step][is_vip][this.sub_step]) ? _baseDataRefAll[this.step][is_vip][this.sub_step] : null));
    }
    // source line 106, bytecode pc 216
    xs.assert(this.baseDataRef, ((((this.name + "config error step") + this.step) + "sub_step") + this.sub_step));
    // source line 107, bytecode pc 223
    return this.baseDataRef;
}
}));
// source line 113, bytecode pc 259
(xs.Models.MagicalEquPoint.createWithBase = function(id) {
    // source line 114, bytecode pc 22
    xs.error("xs.Models.MagicalEquPoint.createWithBase is error");
    // source line 115, bytecode pc 24
    return null;
});
// source line 118, bytecode pc 285
(xs.Models.MagicalEquPoint.createWithJson = function(json) {
    var card;
    // source line 119, bytecode pc 23
    (card = new xs.Models.MagicalEquPoint());
    if ((card && card.init())) {
        // source line 121, bytecode pc 70
        card.loadJson(json);
        // source line 122, bytecode pc 74
        return card;
    }
    // source line 124, bytecode pc 97
    xs.warn("xs.Models.MagicalEquPoint.createWithJson");
    // source line 125, bytecode pc 99
    return null;
});
