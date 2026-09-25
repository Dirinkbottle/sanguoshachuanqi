// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/SkillTableView.js:1
// source line 48, bytecode pc 143
(xs.Views.Table.SkillTableView = xs.Views.Table.BaseTableViewExtra.extend({
    name: "SkillTableView",
    Cfg: { modelTypes: [ xs.Constant_Notify_ModelChange_Skill ] },
    refreshData: function() {
    var params;
    if (((this._filterResult == null) && (this._filterType == null))) {
        // source line 14, bytecode pc 80
        (this.arrayModel = xs.Profile.GameData.Mgr.getInstance().Skills.getAllWithDefaultSort());
        // source line 15, bytecode pc 136
        this.arrayModel.sort(xs.Tools.Sort.by(xs.Constant_SortType_Skill_DefaultWithIsOnGeneral));
    } else {
        // source line 21, bytecode pc 240
        (params = {
    data: xs.Profile.GameData.Mgr.getInstance().Skills.getAllWithDefaultSort(),
    result: this._filterResult,
    filterConditions: this._filterType,
    sortConditions: xs.Constant_SortType_Skill_DefaultWithIsOnGeneral
});
        // source line 23, bytecode pc 277
        (this.arrayModel = xs.Tools.Filter.filterData(params));
    }
},
    createCell: function(idx) {
    var cell;
    // source line 36, bytecode pc 4
    (cell = null);
    if ((idx >= this.arrayModel.length)) {
        // source line 38, bytecode pc 64
        (cell = xs.Views.Table.Cell.SkillTableViewCell.create());
    } else {
        // source line 40, bytecode pc 120
        (cell = xs.Views.Table.Cell.SkillTableViewCell.create(this.arrayModel[idx]));
    }
    // source line 42, bytecode pc 124
    return cell;
},
    makeViewSize: function() {
    // source line 46, bytecode pc 26
    return xs.Views.TablePage.getTableViewSize();
},
    onFilterChange: function(filterType, filterResult) {
    // source line 49, bytecode pc 36
    xs.log(((("EquipmentTableView onFilterChange " + filterType) + ",") + filterResult));
    // source line 50, bytecode pc 46
    (this._filterType = filterType);
    // source line 51, bytecode pc 56
    (this._filterResult = filterResult);
    // source line 52, bytecode pc 69
    this.refreshDataAndReload();
}
}));
// source line 56, bytecode pc 174
(xs.Views.Table.SkillTableView.create = function() {
    var ret;
    // source line 57, bytecode pc 28
    (ret = new xs.Views.Table.SkillTableView());
    if ((ret && ret.init())) {
        // source line 59, bytecode pc 60
        return ret;
    }
    // source line 61, bytecode pc 79
    this.error("SkillTableView.create:");
    // source line 62, bytecode pc 81
    return null;
});
