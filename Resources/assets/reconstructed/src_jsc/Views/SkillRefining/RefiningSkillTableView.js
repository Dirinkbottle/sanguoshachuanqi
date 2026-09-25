// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/SkillRefining/RefiningSkillTableView.js:1
// source line 43, bytecode pc 143
(xs.Views.Table.RefiningSkillTableView = xs.Views.Table.BaseTableView.extend({
    name: "RefiningSkillTableView",
    Cfg: { modelTypes: [ xs.Constant_Notify_ModelChange_Skill ] },
    refreshData: function() {
    var skills, key;
    // source line 12, bytecode pc 11
    (this.arrayModel = []);
    // source line 14, bytecode pc 23
    (this.canRefineSkills = []);
    // source line 15, bytecode pc 36
    this.getAllCanRefineSkills();
    // source line 17, bytecode pc 87
    (skills = xs.Profile.GameData.Mgr.getInstance().Skills.getAllWithDefaultSort());
    // source line 18, bytecode pc 140
    skills.sort(xs.Tools.Sort.by(xs.Constant_SortType_Skill_DefaultWithIsOnGeneral));
    for (var key in skills) {
        if (!((this.canRefineSkills.inArray(skills[key].id) && (skills[key].pos != "1")))) continue;
        // source line 22, bytecode pc 241
        this.arrayModel.push(skills[key]);
    }
},
    createCell: function(idx) {
    var cell;
    // source line 30, bytecode pc 4
    (cell = null);
    if ((idx < this.arrayModel.length)) {
        // source line 32, bytecode pc 75
        (cell = xs.Views.Table.Cell.RefiningSkillTableViewCell.create(this.arrayModel[idx]));
    }
    // source line 34, bytecode pc 79
    return cell;
},
    getAllCanRefineSkills: function() {
    var alldata, key;
    // source line 37, bytecode pc 11
    (this.canRefineSkills = []);
    // source line 38, bytecode pc 52
    (alldata = xs.Tools.CfgData.readRecordByType(xs.Constant_CfgDataType_Skill_refine_conf));
    for (var key in alldata) {
        if (!(!isNaN(key))) continue;
        // source line 40, bytecode pc 114
        this.canRefineSkills.push(key);
    }
},
    makeViewSize: function() {
    // source line 44, bytecode pc 26
    return xs.Views.TablePage.getTableViewSize();
}
}));
// source line 48, bytecode pc 174
(xs.Views.Table.RefiningSkillTableView.create = function() {
    var ret;
    // source line 49, bytecode pc 28
    (ret = new xs.Views.Table.RefiningSkillTableView());
    if ((ret && ret.init())) {
        // source line 51, bytecode pc 60
        return ret;
    }
    // source line 53, bytecode pc 79
    this.error("SkillTableView.create:");
    // source line 54, bytecode pc 81
    return null;
});
