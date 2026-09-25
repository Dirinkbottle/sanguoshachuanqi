// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/SkillMeltTableView.js:1
// source line 1, bytecode pc 15
(xs.test_tt = "SkillMeltTableView 123456");
// source line 53, bytecode pc 169
(xs.Views.Table.SkillMeltTableView = xs.Views.Table.BaseTableViewExtra.extend({
    name: "SkillMeltTableView",
    Cfg: { modelTypes: [ xs.Constant_Notify_ModelChange_Skill ] },
    refreshData: function() {
    var params;
    // source line 13, bytecode pc 22
    xs.log_ck("SkillMeltTableView refreshData");
    if (((this._filterResult == null) && (this._filterType == null))) {
        // source line 15, bytecode pc 103
        (this.arrayModel = xs.Profile.GameData.Mgr.getInstance().Skills.getAllWithDefaultSort());
        // source line 16, bytecode pc 159
        this.arrayModel.sort(xs.Tools.Sort.by(xs.Constant_SortType_Skill_Default_Reverse));
    } else {
        // source line 22, bytecode pc 263
        (params = {
    data: xs.Profile.GameData.Mgr.getInstance().Skills.getAllWithDefaultSort(),
    result: this._filterResult,
    filterConditions: this._filterType,
    sortConditions: xs.Constant_SortType_Skill_Default_Reverse
});
        // source line 24, bytecode pc 300
        (this.arrayModel = xs.Tools.Filter.filterData(params));
    }
},
    createCell: function(idx) {
    var cell;
    // source line 29, bytecode pc 22
    xs.log_ck("SkillMeltTableView createCell");
    // source line 30, bytecode pc 27
    (cell = null);
    if ((idx >= this.arrayModel.length)) {
        // source line 32, bytecode pc 87
        (cell = xs.Views.Table.Cell.SkillMeltTableCell.create());
    } else {
        // source line 34, bytecode pc 143
        (cell = xs.Views.Table.Cell.SkillMeltTableCell.create(this.arrayModel[idx]));
    }
    if ((idx === 0)) {
        // source line 37, bytecode pc 172
        cell.setCellGuideTag(4002);
    } else {
        // source line 39, bytecode pc 195
        cell.setCellGuideTag(-1);
    }
    // source line 41, bytecode pc 199
    return cell;
},
    makeViewSize: function() {
    // source line 45, bytecode pc 26
    return xs.Views.TablePage.getTableViewSize();
},
    onFilterChange: function(filterType, filterResult) {
    // source line 48, bytecode pc 36
    xs.log(((("SkillMeltTableView onFilterChange " + filterType) + ",") + filterResult));
    // source line 49, bytecode pc 46
    (this._filterType = filterType);
    // source line 50, bytecode pc 56
    (this._filterResult = filterResult);
    // source line 51, bytecode pc 69
    this.refreshDataAndReload();
},
    setBaseTouchPriority: function(priority) {
    // source line 54, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 55, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
}
}));
// source line 59, bytecode pc 200
(xs.Views.Table.SkillMeltTableView.create = function() {
    var ret;
    // source line 60, bytecode pc 22
    xs.log_ck("SkillMeltTableView create 789");
    // source line 61, bytecode pc 51
    (ret = new xs.Views.Table.SkillMeltTableView());
    if ((ret && ret.init())) {
        // source line 63, bytecode pc 83
        return ret;
    }
    // source line 65, bytecode pc 102
    this.error("SkillMeltTableView.create:");
    // source line 66, bytecode pc 104
    return null;
});
