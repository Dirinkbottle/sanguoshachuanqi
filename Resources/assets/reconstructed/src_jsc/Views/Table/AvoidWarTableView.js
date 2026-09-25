// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/AvoidWarTableView.js:1
// source line 105, bytecode pc 178
(xs.Views.Table.AvoidWarTableView = xs.Views.Table.BaseTableView.extend({
    name: "AvoidWarTableView",
    init: function() {
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 43
    this.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 16, bytecode pc 67
    this.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 18, bytecode pc 105
    this.setContentSize(cc.size(600, 450));
    // source line 20, bytecode pc 152
    xs.Utils.Notify.addObserver(this, this.reGetData, xs.Constant_Notify_ModelChange_Item);
    // source line 22, bytecode pc 154
    return true;
},
    onEnter: function() {
    // source line 26, bytecode pc 12
    this._super();
    // source line 27, bytecode pc 25
    this.reGetData();
},
    onExit: function() {
    // source line 31, bytecode pc 12
    this._super();
    // source line 32, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_Item);
},
    reGetData: function() {
    var leakIDs, param;
    // source line 36, bytecode pc 11
    (this.arrayModel = []);
    // source line 40, bytecode pc 125
    (leakIDs = xs.Profile.GameData.Mgr.getInstance().Items.chkById([
    xs.Models.ItemID_FightFreeLicenseNormal,
    xs.Models.ItemID_FightFreeLicenseHigh,
    xs.Models.ItemID_FightFreeLicenseSuper
]));
    if ((leakIDs.length > 0)) {
        // source line 44, bytecode pc 150
        (param = {});
        // source line 45, bytecode pc 162
        (param.item_id = leakIDs);
        // source line 46, bytecode pc 202
        xs.Tools.Net.requestLimitGoodsList(param, this.requestLimitGoodsListSuccessCallback, this);
    } else {
        // source line 48, bytecode pc 220
        this.addExistItemInDataSource();
        // source line 49, bytecode pc 233
        this.refreshDataAndReload();
    }
},
    refreshData: function() {
},
    requestLimitGoodsListSuccessCallback: function(jsonObj) {
    var goodList, i, good;
    // source line 60, bytecode pc 11
    (goodList = jsonObj.item_list);
    // source line 61, bytecode pc 16
    (i = 0);
    while ((i < goodList.length)) {
        // source line 62, bytecode pc 60
        (good = xs.Models.Good.createWithJson(goodList[i]));
        // source line 63, bytecode pc 82
        this.arrayModel.push(good);
        // source line 61, bytecode pc 95
        (i = (+i + 1));
    }
    // source line 65, bytecode pc 126
    this.addExistItemInDataSource();
    // source line 66, bytecode pc 139
    this.refreshDataAndReload();
},
    addExistItemInDataSource: function() {
    var item_1, item_2, item_3;
    // source line 71, bytecode pc 66
    (item_1 = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(xs.Models.ItemID_FightFreeLicenseNormal));
    if (item_1) {
        // source line 73, bytecode pc 96
        this.arrayModel.push(item_1);
    }
    // source line 75, bytecode pc 163
    (item_2 = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(xs.Models.ItemID_FightFreeLicenseHigh));
    if (item_2) {
        // source line 77, bytecode pc 193
        this.arrayModel.push(item_2);
    }
    // source line 79, bytecode pc 260
    (item_3 = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(xs.Models.ItemID_FightFreeLicenseSuper));
    if (item_3) {
        // source line 81, bytecode pc 290
        this.arrayModel.push(item_3);
    }
    // source line 84, bytecode pc 314
    this.arrayModel.sort(function(a, b) {
    // source line 85, bytecode pc 73
    return (xs.Utils.parseIntSafe(a.getItemId()) < xs.Utils.parseIntSafe(b.getItemId()));
});
},
    createCell: function(idx) {
    var cell;
    // source line 91, bytecode pc 40
    (cell = xs.Views.AvoidWarTableViewCell.create(this.arrayModel[idx]));
    // source line 92, bytecode pc 62
    cell.setBaseTouchPriority(this.m_baseTouchPriority);
    // source line 93, bytecode pc 66
    return cell;
},
    makeViewSize: function() {
    // source line 98, bytecode pc 24
    return cc.size(600, 450);
},
    makeCellSize: function() {
    // source line 102, bytecode pc 24
    return cc.size(600, 150);
},
    setBaseTouchPriority: function(priority) {
    // source line 106, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 107, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
}
}));
// source line 111, bytecode pc 209
(xs.Views.Table.AvoidWarTableView.create = function() {
    var ret;
    // source line 112, bytecode pc 28
    (ret = new xs.Views.Table.AvoidWarTableView());
    if ((ret && ret.init())) {
        // source line 114, bytecode pc 60
        return ret;
    }
    // source line 117, bytecode pc 89
    xs.assert(false, "xs.Views.Table.AvoidWarTableView.create fail", ret);
    // source line 118, bytecode pc 91
    return null;
});
