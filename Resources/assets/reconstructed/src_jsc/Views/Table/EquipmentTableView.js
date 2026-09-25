// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/EquipmentTableView.js:1
// source line 52, bytecode pc 153
(xs.Views.Table.EquipmentTableView = xs.Views.Table.BaseTableViewExtra.extend({
    name: "EquipmentTableView",
    Cfg: { modelTypes: [ xs.Constant_Notify_ModelChange_Equ ] },
    refreshData: function() {
    var params;
    if (((this._filterResult == null) && (this._filterType == null))) {
        // source line 15, bytecode pc 80
        (this.arrayModel = xs.Profile.GameData.Mgr.getInstance().Equipments.getAll());
        // source line 16, bytecode pc 136
        this.arrayModel.sort(xs.Tools.Sort.by(xs.Constant_SortType_Equipment_Default_Reverse));
    } else {
        // source line 22, bytecode pc 240
        (params = {
    data: xs.Profile.GameData.Mgr.getInstance().Equipments.getAll(),
    result: this._filterResult,
    filterConditions: this._filterType,
    sortConditions: xs.Constant_SortType_Equipment_Default_Reverse
});
        // source line 24, bytecode pc 277
        (this.arrayModel = xs.Tools.Filter.filterData(params));
    }
},
    createCell: function(idx) {
    var cell;
    // source line 29, bytecode pc 4
    (cell = null);
    if ((idx >= this.arrayModel.length)) {
        // source line 31, bytecode pc 64
        (cell = xs.Views.Table.Cell.EquipmentTableViewCell.create());
    } else {
        // source line 33, bytecode pc 120
        (cell = xs.Views.Table.Cell.EquipmentTableViewCell.create(this.arrayModel[idx]));
    }
    if ((idx === 0)) {
        // source line 36, bytecode pc 149
        cell.setCellGuideTag(4002);
    } else {
        // source line 38, bytecode pc 172
        cell.setCellGuideTag(-1);
    }
    // source line 40, bytecode pc 176
    return cell;
},
    makeViewSize: function() {
    // source line 44, bytecode pc 26
    return xs.Views.TablePage.getTableViewSize();
},
    onFilterChange: function(filterType, filterResult) {
    // source line 47, bytecode pc 36
    xs.log(((("EquipmentTableView onFilterChange " + filterType) + ",") + filterResult));
    // source line 48, bytecode pc 46
    (this._filterType = filterType);
    // source line 49, bytecode pc 56
    (this._filterResult = filterResult);
    // source line 50, bytecode pc 69
    this.refreshDataAndReload();
},
    setBaseTouchPriority: function(priority) {
    // source line 53, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 54, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
}
}));
// source line 58, bytecode pc 184
(xs.Views.Table.EquipmentTableView.create = function() {
    var ret;
    // source line 59, bytecode pc 28
    (ret = new xs.Views.Table.EquipmentTableView());
    if ((ret && ret.init())) {
        // source line 61, bytecode pc 60
        return ret;
    }
    // source line 63, bytecode pc 79
    this.error("EquipmentTableView.create:");
    // source line 64, bytecode pc 81
    return null;
});
