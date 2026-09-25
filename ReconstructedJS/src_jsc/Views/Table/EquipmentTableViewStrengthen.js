// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/EquipmentTableViewStrengthen.js:1
// source line 63, bytecode pc 153
(xs.Views.Table.EquipmentTableViewStrengthen = xs.Views.Table.BaseTableViewExtra.extend({
    name: "EquipmentTableViewStrengthen",
    Cfg: { modelTypes: [ xs.Constant_Notify_ModelChange_Equ ] },
    refreshData: function() {
    var params;
    if (((this._filterResult == null) && (this._filterType == null))) {
        // source line 19, bytecode pc 80
        (this.arrayModel = xs.Profile.GameData.Mgr.getInstance().Equipments.getAll());
        // source line 20, bytecode pc 136
        this.arrayModel.sort(xs.Tools.Sort.by(xs.Constant_SortType_Equipment_DefaultWithIsEquipped));
    } else {
        // source line 26, bytecode pc 225
        (params = {
    data: xs.Profile.GameData.Mgr.getInstance().Equipments.getAll(),
    result: this._filterResult,
    filterConditions: this._filterType
});
        // source line 29, bytecode pc 262
        (this.arrayModel = xs.Tools.Filter.filterData(params));
    }
},
    createCell: function(idx) {
    var cell;
    // source line 39, bytecode pc 57
    xs.log(((((("EquipmentTableViewStrengthen createCell," + this.arrayModel) + ",") + this.arrayModel.length) + ",") + idx));
    // source line 40, bytecode pc 62
    (cell = null);
    if ((idx >= this.arrayModel.length)) {
        // source line 42, bytecode pc 122
        (cell = xs.Views.Table.Cell.EquipmentTableViewStrengthenCell.create());
    } else {
        // source line 44, bytecode pc 178
        (cell = xs.Views.Table.Cell.EquipmentTableViewStrengthenCell.create(this.arrayModel[idx]));
    }
    if ((idx === 0)) {
        // source line 47, bytecode pc 207
        cell.setCellGuideTag(4002);
    } else {
        // source line 49, bytecode pc 230
        cell.setCellGuideTag(-1);
    }
    // source line 51, bytecode pc 234
    return cell;
},
    makeViewSize: function() {
    // source line 55, bytecode pc 26
    return xs.Views.TablePage.getTableViewSize();
},
    onFilterChange: function(filterType, filterResult) {
    // source line 58, bytecode pc 36
    xs.log(((("EquipmentTableViewStrengthen onFilterChange " + filterType) + ",") + filterResult));
    // source line 59, bytecode pc 46
    (this._filterType = filterType);
    // source line 60, bytecode pc 56
    (this._filterResult = filterResult);
    // source line 61, bytecode pc 69
    this.refreshDataAndReload();
},
    setBaseTouchPriority: function(priority) {
    // source line 64, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 65, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
}
}));
// source line 69, bytecode pc 184
(xs.Views.Table.EquipmentTableViewStrengthen.create = function() {
    var ret;
    // source line 70, bytecode pc 22
    xs.log("EquipmentTableViewStrengthen create");
    // source line 71, bytecode pc 51
    (ret = new xs.Views.Table.EquipmentTableViewStrengthen());
    if ((ret && ret.init())) {
        // source line 73, bytecode pc 83
        return ret;
    }
    // source line 75, bytecode pc 102
    this.error("EquipmentTableViewStrengthen.create:");
    // source line 76, bytecode pc 104
    return null;
});
