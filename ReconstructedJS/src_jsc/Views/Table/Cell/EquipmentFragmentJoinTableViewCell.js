// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/EquipmentFragmentJoinTableViewCell.js:1
// source line 72, bytecode pc 138
(xs.Views.Table.Cell.EquipmentFragmentJoinTableViewCell = xs.Views.Table.Cell.BaseTableViewExtraCell.extend({
    name: "EquipmentFragmentJoinTableViewCell",
    initWithData: function(data) {
    var func;
    if ((data != null)) {
        // source line 12, bytecode pc 19
        (this._data = data);
    }
    // source line 15, bytecode pc 32
    this.init();
    // source line 18, bytecode pc 75
    (this._ccbNode = xs.Views.Table.Cell.BaseCmnStyleACell.create());
    // source line 20, bytecode pc 111
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 24, bytecode pc 120
    (func = function() {
    // source line 25, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("FightChapters");
});
    // source line 27, bytecode pc 192
    (this._button = xs.Views.Btn.createWithString("Btn_TableLastButton", xs.Tools.String.createString("auto_name_76")));
    // source line 29, bytecode pc 246
    this._button.setString(xs.Tools.String.createString("auto_name_497"), 32);
    // source line 30, bytecode pc 288
    this._button.setButtonSize(cc.size(838, 107));
    // source line 31, bytecode pc 330
    this._button.setPosition(cc.p(420, 53));
    // source line 32, bytecode pc 352
    this._button.setOnClickCallBack(func);
    // source line 33, bytecode pc 388
    xs.Utils.Node.attachNodes(this, this._button);
    // source line 36, bytecode pc 420
    this._ccbNode.m_btn.addCallBackForEvent(this, this._join);
    // source line 37, bytecode pc 438
    this._ccbNode.formatCell();
    // source line 38, bytecode pc 440
    return true;
},
    updateCell: function(data) {
    // source line 42, bytecode pc 9
    (this._data = data);
    // source line 43, bytecode pc 29
    this._button.setVisible(false);
    // source line 44, bytecode pc 49
    this._ccbNode.setVisible(true);
    // source line 45, bytecode pc 62
    this.ccbUpdateCell();
},
    updateCellEx: function(idx) {
    // source line 50, bytecode pc 19
    this._ccbNode.setVisible(false);
    // source line 51, bytecode pc 39
    this._button.setVisible(true);
},
    _joinEx: function(data) {
    // source line 56, bytecode pc 47
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
    // source line 57, bytecode pc 107
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_498"));
},
    _join: function() {
    var param;
    if ((this._data.getNum() < this._data.getComposePieceNum())) {
        // source line 61, bytecode pc 103
        xs.Views.Table.Cell.EquipmentFragmentJoinTableViewCell.createDialog(xs.Views.Mgr.getRunningScene());
        // source line 62, bytecode pc 105
        return void 0;
    }
    // source line 66, bytecode pc 137
    (param = { equipment_id: this._data.getPkId() });
    // source line 68, bytecode pc 177
    xs.Tools.Net.requireEquipPieceComposite(param, this._joinEx, this);
},
    ccbUpdateCell: function() {
    var id, pos;
    // source line 75, bytecode pc 24
    this._ccbNode.m_validityLab.setVisible(false);
    // source line 77, bytecode pc 49
    this._ccbNode.m_icon.setVisible(false);
    // source line 79, bytecode pc 74
    this._ccbNode.m_gradeIcon.setVisible(true);
    // source line 81, bytecode pc 99
    this._ccbNode.m_nameLab.setVisible(true);
    // source line 83, bytecode pc 124
    this._ccbNode.m_descLab.setVisible(true);
    // source line 85, bytecode pc 149
    this._ccbNode.m_numLab.setVisible(true);
    // source line 87, bytecode pc 174
    this._ccbNode.m_numTxtLab.setVisible(true);
    // source line 90, bytecode pc 199
    this._ccbNode.m_btn.setVisible(true);
    // source line 91, bytecode pc 255
    this._ccbNode.m_btn.setString(xs.Tools.String.createString("chaos_compose"));
    // source line 92, bytecode pc 280
    this._ccbNode.m_btn.setEventOnDisable(true);
    if ((this._data.getNum() < this._data.getComposePieceNum())) {
        // source line 94, bytecode pc 345
        this._ccbNode.m_btn.setEnabled(false);
    } else {
        // source line 96, bytecode pc 375
        this._ccbNode.m_btn.setEnabled(true);
    }
    // source line 101, bytecode pc 409
    xs.Utils.Node.safeRemoveChild(this._head);
    // source line 102, bytecode pc 433
    (this._head = this._data.createIcon_Grade());
    // source line 103, bytecode pc 474
    xs.Utils.Node.attachNodes(this._ccbNode, this._head);
    // source line 110, bytecode pc 511
    this._head.setOnClickCallBack(function() {
    var _id, _model;
    // source line 105, bytecode pc 20
    (_id = this._data.getId());
    // source line 106, bytecode pc 54
    (_model = xs.Models.Equipment.createWithBase(_id));
    // source line 108, bytecode pc 102
    xs.Views.Mgr.showDialogByName("EquipNoPanel", { equipData: _model });
}.bind(this));
    // source line 111, bytecode pc 552
    this._head.setPosition(this._ccbNode.m_icon.getPosition());
    // source line 114, bytecode pc 593
    this._ccbNode.m_nameLab.setString(this._data.getNameString());
    // source line 118, bytecode pc 693
    this._ccbNode.m_descLab.setString(this._data.getPieceDesc().convWithArgs([ this._data.getNameString(), this._data.getComposePieceNum() ]));
    // source line 120, bytecode pc 714
    (id = this._data.getId());
    // source line 123, bytecode pc 779
    this._ccbNode.m_numLab.setString(((this._data.getNum() + "/") + this._data.getComposePieceNum()));
    // source line 127, bytecode pc 805
    (pos = this._ccbNode.m_gradeIcon.getPosition());
    // source line 128, bytecode pc 844
    xs.Utils.Node.safeRemoveChild(this._ccbNode.m_gradeIcon);
    // source line 129, bytecode pc 900
    (this._ccbNode.m_gradeIcon = xs.Tools.UI.createGradeSmallIcon(this._data.getGrade()));
    // source line 130, bytecode pc 927
    this._ccbNode.m_gradeIcon.setPosition(pos);
    // source line 131, bytecode pc 973
    xs.Utils.Node.attachNodes(this._ccbNode, this._ccbNode.m_gradeIcon);
}
}));
// source line 134, bytecode pc 174
(xs.Views.Table.Cell.EquipmentFragmentJoinTableViewCell.create = function(data) {
    var ret;
    // source line 135, bytecode pc 33
    (ret = new xs.Views.Table.Cell.EquipmentFragmentJoinTableViewCell());
    if ((ret && ret.initWithData(data))) {
        // source line 137, bytecode pc 69
        return ret;
    }
    // source line 139, bytecode pc 88
    this.error("EquipmentFragmentJoinTableViewCell.create:");
    // source line 140, bytecode pc 90
    return null;
});
// source line 143, bytecode pc 210
(xs.Views.Table.Cell.EquipmentFragmentJoinTableViewCell.createDialog = function(target) {
    // source line 144, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_499"));
});
