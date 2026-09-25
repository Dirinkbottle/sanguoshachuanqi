// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/SkillTableViewCell.js:1
// source line 46, bytecode pc 123
(xs.Views.Table.Cell.SkillTableViewCell = cc.TableViewCell.extend({
    name: "SkillTableViewCell",
    ctor: function() {
    // source line 4, bytecode pc 12
    this._super();
},
    initWithData: function(data) {
    var func;
    // source line 9, bytecode pc 42
    (this._ccbNode = xs.Views.Table.Cell.BaseCmnStyleBCell.create());
    // source line 10, bytecode pc 78
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 12, bytecode pc 150
    (this._button = xs.Views.Btn.createWithString("Btn_TableLastButton", xs.Tools.String.createString("auto_name_506")));
    // source line 13, bytecode pc 180
    xs.log(("EquipmentTableViewCell _button " + this._button));
    // source line 14, bytecode pc 234
    this._button.setString(xs.Tools.String.createString("auto_name_506"), 32);
    // source line 15, bytecode pc 276
    this._button.setButtonSize(cc.size(838, 107));
    // source line 16, bytecode pc 318
    this._button.setPosition(cc.p(420, 53));
    // source line 17, bytecode pc 327
    (func = function() {
    // source line 18, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("FightChapters");
});
    // source line 20, bytecode pc 349
    this._button.setOnClickCallBack(func);
    // source line 21, bytecode pc 385
    xs.Utils.Node.attachNodes(this, this._button);
    // source line 22, bytecode pc 408
    xs.log("EquipmentTableViewCell initWithData end");
    // source line 24, bytecode pc 410
    return true;
},
    updateCell: function(data) {
    // source line 29, bytecode pc 9
    (this._data = data);
    // source line 30, bytecode pc 29
    this._button.setVisible(false);
    // source line 31, bytecode pc 49
    this._ccbNode.setVisible(true);
    // source line 32, bytecode pc 62
    this.ccbUpdateCell();
},
    updateCellEx: function(idx) {
    // source line 37, bytecode pc 19
    this._ccbNode.setVisible(false);
    // source line 38, bytecode pc 39
    this._button.setVisible(true);
},
    SkillLevelUp: function() {
    // source line 41, bytecode pc 22
    xs.log("SkillLevelUp");
    // source line 44, bytecode pc 62
    xs.Scene.Mgr.changeSceneByName("SkillUpScene", this._data);
},
    ccbUpdateCell: function() {
    var belong_general, pos;
    // source line 47, bytecode pc 22
    xs.log("SkillTableViewCell ccbUpdateCell");
    // source line 49, bytecode pc 47
    this._ccbNode.m_fightBg.setVisible(true);
    // source line 50, bytecode pc 72
    this._ccbNode.m_icon.setVisible(false);
    // source line 51, bytecode pc 97
    this._ccbNode.m_gradeIcon.setVisible(true);
    // source line 52, bytecode pc 122
    this._ccbNode.m_nameLab.setVisible(true);
    // source line 53, bytecode pc 147
    this._ccbNode.m_belongLab.setVisible(true);
    // source line 54, bytecode pc 172
    this._ccbNode.m_fightIcon.setVisible(true);
    // source line 55, bytecode pc 197
    this._ccbNode.m_propertyBg.setVisible(false);
    // source line 57, bytecode pc 255
    (belong_general = xs.Profile.GameData.Mgr.getInstance().Skills.getGeneral(this._data));
    if ((belong_general != null)) {
        // source line 60, bytecode pc 336
        this._ccbNode.m_belongLab.setString((xs.Tools.String.createString("str_Equipment_BelongTo") + belong_general.getNameString()));
    } else {
        // source line 62, bytecode pc 370
        this._ccbNode.m_belongLab.setString(" ");
    }
    // source line 64, bytecode pc 395
    this._ccbNode.m_btn.setVisible(true);
    // source line 65, bytecode pc 451
    this._ccbNode.m_btn.setString(xs.Tools.String.createString("auto_name_390"));
    // source line 66, bytecode pc 494
    this._ccbNode.m_btn.setOnClickCallBack(this.SkillLevelUp.bind(this));
    // source line 67, bytecode pc 519
    this._ccbNode.m_atkTxtLab.setVisible(true);
    // source line 68, bytecode pc 544
    this._ccbNode.m_fightLab.setVisible(true);
    // source line 73, bytecode pc 585
    xs.log(("SkillTableViewCell ccbUpdateCell 1 " + this._data.getSkillTypeToString()));
    // source line 75, bytecode pc 626
    this._ccbNode.m_atkTxtLab.setString(this._data.getSkillTypeToString());
    // source line 76, bytecode pc 649
    xs.log("SkillTableViewCell ccbUpdateCell 2");
    // source line 78, bytecode pc 683
    xs.Utils.Node.safeRemoveChild(this._skillHead);
    // source line 79, bytecode pc 707
    (this._skillHead = this._data.createIcon_GradeAndLvAndAdvancedLv());
    // source line 80, bytecode pc 748
    xs.Utils.Node.attachNodes(this._ccbNode, this._skillHead);
    // source line 81, bytecode pc 789
    this._skillHead.setPosition(this._ccbNode.m_icon.getPosition());
    // source line 88, bytecode pc 826
    this._skillHead.setOnClickCallBack(function() {
    var _id, _model;
    // source line 83, bytecode pc 20
    (_id = this._data.getId());
    // source line 84, bytecode pc 30
    (_model = this._data);
    // source line 86, bytecode pc 78
    xs.Views.Mgr.showDialogByName("SkillNoPanel", { skillData: _model });
}.bind(this));
    // source line 89, bytecode pc 849
    xs.log("SkillTableViewCell ccbUpdateCell 3");
    // source line 91, bytecode pc 890
    this._ccbNode.m_nameLab.setString(this._data.getNameString());
    // source line 92, bytecode pc 913
    xs.log("SkillTableViewCell ccbUpdateCell 4");
    // source line 94, bytecode pc 939
    (pos = this._ccbNode.m_gradeIcon.getPosition());
    // source line 95, bytecode pc 978
    xs.Utils.Node.safeRemoveChild(this._ccbNode.m_gradeIcon);
    // source line 96, bytecode pc 1034
    (this._ccbNode.m_gradeIcon = xs.Tools.UI.createGradeSmallIcon(this._data.getGrade()));
    // source line 97, bytecode pc 1061
    this._ccbNode.m_gradeIcon.setPosition(pos);
    // source line 98, bytecode pc 1107
    xs.Utils.Node.attachNodes(this._ccbNode, this._ccbNode.m_gradeIcon);
    // source line 99, bytecode pc 1130
    xs.log("SkillTableViewCell ccbUpdateCell 5");
    // source line 101, bytecode pc 1182
    this._ccbNode.m_fightLab.setString(this._data.getAttrNaked(xs.Constant_AttrType_FightPoint));
}
}));
// source line 105, bytecode pc 159
(xs.Views.Table.Cell.SkillTableViewCell.create = function(data) {
    var object;
    // source line 106, bytecode pc 22
    xs.log("xs.Views.Table.SkillTableViewCell");
    // source line 107, bytecode pc 56
    (object = new xs.Views.Table.Cell.SkillTableViewCell());
    if ((object && object.initWithData(data))) {
        // source line 109, bytecode pc 92
        return object;
    }
    // source line 111, bytecode pc 117
    xs.assert(false, "xs.Views.Table.Cell.SkillTableViewCell.create error");
    // source line 112, bytecode pc 119
    return null;
});
