// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/EquipmentFragmentJoinTableView.js:1
// source line 39, bytecode pc 143
(xs.Views.Table.EquipmentFragmentJoinTableView = xs.Views.Table.BaseTableViewExtra.extend({
    name: "EquipmentFragmentJoinTableView",
    Cfg: { modelTypes: [ xs.Constant_Notify_ModelChange_EquPiece ] },
    refreshData: function() {
    var params;
    if (((this._filterResult == null) && (this._filterType == null))) {
        // source line 14, bytecode pc 80
        (this.arrayModel = xs.Profile.GameData.Mgr.getInstance().EquipmentPieces.getAll());
    } else {
        // source line 20, bytecode pc 184
        (params = {
    data: xs.Profile.GameData.Mgr.getInstance().EquipmentPieces.getAll(),
    result: this._filterResult,
    filterConditions: this._filterType,
    sortConditions: xs.Constant_SortType_EquipmentPiece_Default_Reverse
});
        // source line 22, bytecode pc 221
        (this.arrayModel = xs.Tools.Filter.filterData(params));
    }
},
    createCell: function(idx) {
    var cell;
    // source line 27, bytecode pc 4
    (cell = null);
    if ((idx >= this.arrayModel.length)) {
        // source line 29, bytecode pc 64
        (cell = xs.Views.Table.Cell.EquipmentFragmentJoinTableViewCell.create());
    } else {
        // source line 31, bytecode pc 120
        (cell = xs.Views.Table.Cell.EquipmentFragmentJoinTableViewCell.create(this.arrayModel[idx]));
    }
    // source line 33, bytecode pc 124
    return cell;
},
    makeViewSize: function() {
    // source line 37, bytecode pc 26
    return xs.Views.TablePage.getTableViewSize();
},
    onFilterChange: function(filterType, filterResult) {
    // source line 40, bytecode pc 36
    xs.log(((("EquipmentTableView onFilterChange " + filterType) + ",") + filterResult));
    // source line 41, bytecode pc 46
    (this._filterType = filterType);
    // source line 42, bytecode pc 56
    (this._filterResult = filterResult);
    // source line 43, bytecode pc 69
    this.refreshDataAndReload();
}
}));
// source line 47, bytecode pc 174
(xs.Views.Table.EquipmentFragmentJoinTableView.create = function() {
    var ret;
    // source line 48, bytecode pc 28
    (ret = new xs.Views.Table.EquipmentFragmentJoinTableView());
    if ((ret && ret.init())) {
        // source line 50, bytecode pc 60
        return ret;
    }
    // source line 52, bytecode pc 79
    this.error("EquipmentFragmentJoinTableView.create:");
    // source line 53, bytecode pc 81
    return null;
});
