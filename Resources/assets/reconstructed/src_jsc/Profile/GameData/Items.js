// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Items.js:1
// source line 174, bytecode pc 328
(xs.Profile.GameData.Items = xs.Profile.GameData.Base.extend({
    name: "xs.Profile.GameData.Items",
    nameType: xs.Constant_GameData_Item,
    modelName: xs.Models.Item,
    sortBy: xs.Constant_SortType_Item_Default,
    dump: xs.Debug.emptyFunc,
    init: function(param) {
    // source line 22, bytecode pc 16
    this._super(param);
    // source line 23, bytecode pc 65
    this.dataRef.getNotifyCenter().addObserver(this, this.clearCache, xs.Constant_Notify_ModelChange_Item_SortChange);
    // source line 24, bytecode pc 67
    return true;
},
    setAllItemsNoNew: function() {
    var allItems, mItemIdx, mItemMode;
    // source line 29, bytecode pc 15
    (allItems = this.getAll());
    for (var mItemIdx in allItems) {
        // source line 31, bytecode pc 42
        (mItemMode = allItems[mItemIdx]);
        if (!((typeof(mItemMode) != "function"))) continue;
        // source line 33, bytecode pc 74
        mItemMode.setNewStatus(false);
    }
},
    getByItemId: function(itemId) {
    var _obj_list, i;
    // source line 40, bytecode pc 15
    (_obj_list = this.getAllWithDefaultSort());
    // source line 41, bytecode pc 20
    (i = 0);
    while ((i < _obj_list.length)) {
        if ((_obj_list[i].getItemId() == itemId)) {
            // source line 43, bytecode pc 61
            return _obj_list[i];
        }
        // source line 41, bytecode pc 76
        i++;
    }
    // source line 46, bytecode pc 96
    return null;
},
    getIdsByType: function(type) {
    var _rs_obj, _arr_equipment_all, i;
    // source line 50, bytecode pc 22
    this.assert(type, "the type is error!!");
    // source line 51, bytecode pc 88
    (_rs_obj = [ xs.Models.ItemID_ThousandWine, xs.Models.ItemID_HundredWine, xs.Models.ItemID_TenWine ]);
    // source line 52, bytecode pc 104
    (_arr_equipment_all = this.getAllWithDefaultSort());
    // source line 53, bytecode pc 109
    (i = 0);
    while ((i < _arr_equipment_all.length)) {
        if (((_arr_equipment_all[i].getBaseDataRef().item_type == type) && (_arr_equipment_all[i].getBaseDataRef().grade == xs.Models.ItemGrade_Master))) {
            // source line 57, bytecode pc 226
            _rs_obj.push(_arr_equipment_all[i].getId());
        }
        // source line 53, bytecode pc 241
        i++;
    }
    // source line 60, bytecode pc 290
    xs.log_zhz(("getIdsByType" + type), _rs_obj);
    // source line 61, bytecode pc 294
    return _rs_obj;
},
    chkById: function(arr) {
    var _arr_rs, a, i;
    // source line 66, bytecode pc 8
    (_arr_rs = []);
    // source line 67, bytecode pc 13
    (a = 0);
    while ((a < arr.length)) {
        // source line 68, bytecode pc 60
        xs.log_zhz((("arr[" + a) + "]"), arr[a]);
        // source line 69, bytecode pc 84
        (i = this.getById(arr[a]));
        if (xs.Utils.isEmpty(i)) {
            // source line 71, bytecode pc 137
            _arr_rs.push(arr[a]);
        }
        // source line 67, bytecode pc 152
        a++;
    }
    // source line 74, bytecode pc 174
    return _arr_rs;
},
    getTotalNumById: function(item_id) {
    var _arr_obj, _num, i;
    // source line 79, bytecode pc 19
    (_arr_obj = this.getById(item_id));
    // source line 80, bytecode pc 24
    (_num = 0);
    // source line 81, bytecode pc 29
    (i = 0);
    while ((i < _arr_obj.length)) {
        // source line 82, bytecode pc 61
        (_num = (_num + _arr_obj[i].getItemNum()));
        // source line 81, bytecode pc 76
        i++;
    }
    // source line 84, bytecode pc 98
    return _num;
},
    getPriorityObjById: function(item_id) {
    var _arr_obj;
    // source line 89, bytecode pc 19
    (_arr_obj = this.getById(item_id));
    if (xs.Utils.isEmpty(_arr_obj)) {
        // source line 91, bytecode pc 51
        return null;
    }
    // source line 93, bytecode pc 57
    return _arr_obj[0];
},
    getGanodermaNum: function() {
    // source line 98, bytecode pc 28
    return this.getTotalNumById(xs.Models.ItemID_Ganoderma);
},
    getSmallBaoZiNum: function() {
    // source line 102, bytecode pc 28
    return this.getTotalNumById(xs.Models.ItemID_SmallBaoZi);
},
    getBigBaoZiNum: function() {
    // source line 106, bytecode pc 28
    return this.getTotalNumById(xs.Models.ItemID_BigBaoZi);
},
    getMagatamaNum: function() {
    // source line 110, bytecode pc 28
    return this.getTotalNumById(xs.Models.ItemID_Magatama);
},
    getTenGlodNum: function() {
    // source line 116, bytecode pc 28
    return this.getTotalNumById(xs.Models.ItemID_JiangJunZhan);
},
    getGoldWineGlassNum: function() {
    // source line 121, bytecode pc 28
    return this.getTotalNumById(xs.Models.ItemID_GoldWineGlass);
},
    getSilverWineGlassNum: function() {
    // source line 126, bytecode pc 28
    return this.getTotalNumById(xs.Models.ItemID_SilverWineGlass);
},
    getCopperWineGlassNum: function() {
    // source line 131, bytecode pc 28
    return this.getTotalNumById(xs.Models.ItemID_CopperWineGlass);
},
    getRefineStones: function() {
    var list, allItems, mItemIdx, mItemMode, itemId;
    // source line 138, bytecode pc 8
    (list = []);
    // source line 139, bytecode pc 24
    (allItems = this.getAll());
    for (var mItemIdx in allItems) {
        // source line 141, bytecode pc 51
        (mItemMode = allItems[mItemIdx]);
        if (!((typeof(mItemMode) != "function"))) continue;
        // source line 143, bytecode pc 84
        (itemId = mItemMode.getId());
        if (!(((itemId == xs.Models.ItemID_RefineStone_chuji) || ((itemId == xs.Models.ItemID_RefineStone_zhongji) || (itemId == xs.Models.ItemID_RefineStone_gaoji))))) continue;
        // source line 146, bytecode pc 177
        list.push(mItemMode);
    }
    // source line 150, bytecode pc 189
    return list;
},
    isHaveRefineStone: function() {
    var _length;
    // source line 154, bytecode pc 20
    (_length = this.getRefineStones().length);
    // source line 155, bytecode pc 38
    return ((_length > 0) ? true : false);
},
    getExpJuanZhou: function() {
    var list, allItems, mItemIdx, mItemMode, itemId;
    // source line 159, bytecode pc 8
    (list = []);
    // source line 160, bytecode pc 24
    (allItems = this.getAll());
    for (var mItemIdx in allItems) {
        // source line 162, bytecode pc 51
        (mItemMode = allItems[mItemIdx]);
        if (!((typeof(mItemMode) != "function"))) continue;
        // source line 164, bytecode pc 84
        (itemId = mItemMode.getId());
        if (!(((itemId == xs.Models.ItemID_JuanZhou_chuji) || ((itemId == xs.Models.ItemID_JuanZhou_zhongji) || (itemId == xs.Models.ItemID_JuanZhou_gaoji))))) continue;
        // source line 167, bytecode pc 177
        list.push(mItemMode);
    }
    // source line 171, bytecode pc 189
    return list;
},
    isHaveExpJuanZhou: function() {
    var _length;
    // source line 175, bytecode pc 20
    (_length = this.getExpJuanZhou().length);
    // source line 176, bytecode pc 38
    return ((_length > 0) ? true : false);
}
}));
// source line 182, bytecode pc 359
(xs.Profile.GameData.Items.create = function(param) {
    var _str, _cls_name, obj;
    // source line 183, bytecode pc 11
    (_str = param.play_id);
    // source line 184, bytecode pc 35
    (_cls_name = xs.Profile.GameData.Items);
    // source line 185, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 188, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 191, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 193, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 194, bytecode pc 179
        return obj;
    }
    // source line 196, bytecode pc 202
    xs.error("xs.Profile.GameData.Items.create failed");
    // source line 197, bytecode pc 204
    return null;
});
