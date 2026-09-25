// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/SkillRefining/RefiningSkillShowTableView.js:1
// source line 30, bytecode pc 108
(xs.Views.Table.RefiningSkillShowTableView = xs.Views.Table.BaseTableView.extend({
    name: "RefiningSkillShowTableView",
    refreshData: function() {
    // source line 7, bytecode pc 11
    (this.arrayModel = []);
    // source line 9, bytecode pc 23
    (this.canRefineSkills = []);
    // source line 10, bytecode pc 36
    this.getAllCanRefineSkills();
    // source line 12, bytecode pc 49
    (this.arrayModel = this.canRefineSkills);
},
    createCell: function(idx) {
    var cell;
    // source line 17, bytecode pc 4
    (cell = null);
    if ((idx < this.arrayModel.length)) {
        // source line 19, bytecode pc 75
        (cell = xs.Views.Table.Cell.RefiningSkillShowTableViewCell.create(this.arrayModel[idx]));
    }
    // source line 21, bytecode pc 79
    return cell;
},
    getAllCanRefineSkills: function() {
    var alldata, key;
    // source line 24, bytecode pc 11
    (this.canRefineSkills = []);
    // source line 25, bytecode pc 52
    (alldata = xs.Tools.CfgData.readRecordByType(xs.Constant_CfgDataType_Skill_refine_conf));
    for (var key in alldata) {
        if (!(!isNaN(key))) continue;
        // source line 27, bytecode pc 114
        this.canRefineSkills.push(key);
    }
},
    makeViewSize: function() {
    var visibleSize;
    // source line 31, bytecode pc 35
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 32, bytecode pc 69
    return cc.size(300, (visibleSize.height - 160));
}
}));
// source line 36, bytecode pc 139
(xs.Views.Table.RefiningSkillShowTableView.create = function() {
    var ret;
    // source line 37, bytecode pc 28
    (ret = new xs.Views.Table.RefiningSkillShowTableView());
    if ((ret && ret.init())) {
        // source line 39, bytecode pc 60
        return ret;
    }
    // source line 41, bytecode pc 79
    this.error("RefiningSkillShowTableView.create:");
    // source line 42, bytecode pc 81
    return null;
});
// source line 76, bytecode pc 263
(xs.Views.Table.Cell.RefiningSkillShowTableViewCell = cc.TableViewCell.extend({
    name: "RefiningSkillShowTableViewCell",
    ctor: function() {
    // source line 49, bytecode pc 12
    this._super();
},
    initWithData: function(data) {
    // source line 54, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.SkillRefiningShowCell, this));
    // source line 55, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 57, bytecode pc 88
    return true;
},
    updateCell: function(data) {
    // source line 62, bytecode pc 9
    (this._data = data);
    // source line 63, bytecode pc 29
    this._ccbNode.setVisible(true);
    // source line 64, bytecode pc 42
    this.ccbUpdateCell();
},
    updateCellEx: function(idx) {
    // source line 69, bytecode pc 19
    this._ccbNode.setVisible(false);
},
    refiningSkill: function() {
    // source line 72, bytecode pc 22
    xs.log("refiningSkill");
    // source line 73, bytecode pc 67
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_SkillSelect, this._data);
    // source line 74, bytecode pc 94
    xs.Views.Mgr.hideDialog();
},
    ccbUpdateCell: function() {
    // source line 77, bytecode pc 22
    xs.log("SkillTableViewCell ccbUpdateCell");
    // source line 79, bytecode pc 62
    (this.skill = xs.Models.Skill.createWithBase(this._data));
    // source line 81, bytecode pc 96
    xs.Utils.Node.safeRemoveChild(this._skillHead);
    // source line 82, bytecode pc 120
    (this._skillHead = this.skill.createIcon_Select());
    // source line 83, bytecode pc 161
    xs.Utils.Node.attachNodes(this._ccbNode, this._skillHead);
    // source line 84, bytecode pc 211
    this._skillHead.setPosition(this._ccbNode.getChildByTag(10).getPosition());
    // source line 87, bytecode pc 261
    this._ccbNode.getChildByTag(11).setString(this.skill.getNameString());
}
}));
// source line 91, bytecode pc 299
(xs.Views.Table.Cell.RefiningSkillShowTableViewCell.create = function(data) {
    var object;
    // source line 92, bytecode pc 22
    xs.log("xs.Views.Table.RefiningSkillShowTableViewCell");
    // source line 93, bytecode pc 56
    (object = new xs.Views.Table.Cell.RefiningSkillShowTableViewCell());
    if ((object && object.initWithData(data))) {
        // source line 95, bytecode pc 92
        return object;
    }
    // source line 97, bytecode pc 117
    xs.assert(false, "xs.Views.Table.Cell.RefiningSkillShowTableViewCell.create error");
    // source line 98, bytecode pc 119
    return null;
});
