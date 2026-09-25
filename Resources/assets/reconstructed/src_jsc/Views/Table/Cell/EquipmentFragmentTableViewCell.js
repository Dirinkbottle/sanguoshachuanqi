// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/EquipmentFragmentTableViewCell.js:1
// source line 67, bytecode pc 138
(xs.Views.Table.Cell.EquipmentFragmentTableViewCell = xs.Views.Table.Cell.BaseTableViewExtraCell.extend({
    name: "EquipmentFragmentTableViewCell",
    initWithData: function(data) {
    var func;
    // source line 8, bytecode pc 22
    xs.log("EquipmentFragmentTableViewCell initWithData");
    if ((data != null)) {
        // source line 12, bytecode pc 42
        (this._data = data);
    }
    // source line 14, bytecode pc 65
    xs.log("EquipmentFragmentTableViewCell _button 4");
    // source line 15, bytecode pc 78
    this.init();
    // source line 16, bytecode pc 101
    xs.log("EquipmentFragmentTableViewCell _button 2");
    // source line 18, bytecode pc 144
    (this._ccbNode = xs.Views.Table.Cell.BaseCmnStyleACell.create());
    // source line 19, bytecode pc 167
    xs.log("EquipmentFragmentTableViewCell _button 3");
    // source line 20, bytecode pc 203
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 22, bytecode pc 226
    xs.log("EquipmentFragmentTableViewCell _button 1");
    // source line 24, bytecode pc 235
    (func = function() {
    // source line 25, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("FightChapters");
});
    // source line 27, bytecode pc 307
    (this._button = xs.Views.Btn.createWithString("Btn_TableLastButton", xs.Tools.String.createString("auto_name_76")));
    // source line 28, bytecode pc 337
    xs.log(("EquipmentFragmentTableViewCell _button " + this._button));
    // source line 29, bytecode pc 391
    this._button.setString(xs.Tools.String.createString("auto_name_497"), 32);
    // source line 30, bytecode pc 433
    this._button.setButtonSize(cc.size(838, 107));
    // source line 31, bytecode pc 475
    this._button.setPosition(cc.p(420, 53));
    // source line 32, bytecode pc 497
    this._button.setOnClickCallBack(func);
    // source line 33, bytecode pc 533
    xs.Utils.Node.attachNodes(this, this._button);
    // source line 34, bytecode pc 556
    xs.log("EquipmentFragmentTableViewCell initWithData end");
    // source line 36, bytecode pc 588
    this._ccbNode.m_btn.addCallBackForEvent(this, this._sell);
    // source line 37, bytecode pc 606
    this._ccbNode.formatCell();
    // source line 39, bytecode pc 608
    return true;
},
    updateCell: function(data) {
    // source line 43, bytecode pc 9
    (this._data = data);
    // source line 44, bytecode pc 29
    this._button.setVisible(false);
    // source line 45, bytecode pc 49
    this._ccbNode.setVisible(true);
    // source line 46, bytecode pc 62
    this.ccbUpdateCell();
},
    updateCellEx: function(idx) {
    // source line 51, bytecode pc 19
    this._ccbNode.setVisible(false);
    // source line 52, bytecode pc 39
    this._button.setVisible(true);
},
    _sellEx: function(data) {
    // source line 55, bytecode pc 22
    xs.log("_sellEx");
    // source line 56, bytecode pc 118
    xs.Views.Mgr.showToast((xs.Tools.String.createString("str_Equipment_SellSucess") + (this._data.getPiecePrice() * this._data.getNum())));
},
    _sell: function() {
    var param;
    // source line 59, bytecode pc 40
    xs.log(("EquipmentFragmentTableViewCell _sellEx " + this._data.getPkId()));
    // source line 61, bytecode pc 72
    (param = { equipment_id: this._data.getPkId() });
    // source line 63, bytecode pc 112
    xs.Tools.Net.requireEquipPieceSell(param, this._sellEx, this);
},
    ccbUpdateCell: function() {
    var id, pos;
    // source line 68, bytecode pc 22
    xs.log("EquipmentFragmentTableViewCell ccbUpdateCell");
    // source line 72, bytecode pc 47
    this._ccbNode.m_icon.setVisible(true);
    // source line 73, bytecode pc 70
    xs.log("EquipmentFragmentTableViewCell ccbUpdateCell 6");
    // source line 74, bytecode pc 95
    this._ccbNode.m_gradeIcon.setVisible(false);
    // source line 75, bytecode pc 118
    xs.log("EquipmentFragmentTableViewCell ccbUpdateCell 6");
    // source line 76, bytecode pc 143
    this._ccbNode.m_nameLab.setVisible(true);
    // source line 77, bytecode pc 166
    xs.log("EquipmentFragmentTableViewCell ccbUpdateCell 6");
    // source line 78, bytecode pc 191
    this._ccbNode.m_descLab.setVisible(true);
    // source line 79, bytecode pc 214
    xs.log("EquipmentFragmentTableViewCell ccbUpdateCell 6");
    // source line 80, bytecode pc 239
    this._ccbNode.m_numLab.setVisible(true);
    // source line 81, bytecode pc 264
    this._ccbNode.m_priceBg.setVisible(true);
    // source line 82, bytecode pc 289
    this._ccbNode.m_coinIcon.setVisible(true);
    // source line 83, bytecode pc 314
    this._ccbNode.m_priceLab.setVisible(true);
    // source line 85, bytecode pc 339
    this._ccbNode.m_btn.setVisible(true);
    // source line 86, bytecode pc 395
    this._ccbNode.m_btn.setString(xs.Tools.String.createString("str_Equipment_Sell"));
    // source line 89, bytecode pc 419
    (this._head = this._data.createHeadView());
    // source line 90, bytecode pc 453
    xs.Utils.Node.safeRemoveChild(this._head);
    // source line 91, bytecode pc 494
    xs.Utils.Node.attachNodes(this._ccbNode, this._head);
    // source line 98, bytecode pc 531
    this._head.setOnClickCallBack(function() {
    var _id, _model;
    // source line 93, bytecode pc 20
    (_id = this._data.getId());
    // source line 94, bytecode pc 54
    (_model = xs.Models.Equipment.createWithBase(_id));
    // source line 96, bytecode pc 102
    xs.Views.Mgr.showDialogByName("EquipNoPanel", { equipData: _model });
}.bind(this));
    // source line 99, bytecode pc 572
    this._head.setPosition(this._ccbNode.m_icon.getPosition());
    // source line 101, bytecode pc 613
    this._ccbNode.m_nameLab.setString(this._data.getNameString());
    // source line 103, bytecode pc 713
    this._ccbNode.m_descLab.setString(this._data.getPieceDesc().convWithArgs([ this._data.getNameString(), this._data.getComposePieceNum() ]));
    // source line 105, bytecode pc 734
    (id = this._data.getId());
    // source line 107, bytecode pc 793
    this._ccbNode.m_priceLab.setString((this._data.getPiecePrice() * this._data.getNum()));
    // source line 109, bytecode pc 858
    this._ccbNode.m_numLab.setString(((this._data.getNum() + "/") + this._data.getComposePieceNum()));
    // source line 112, bytecode pc 884
    (pos = this._ccbNode.m_gradeIcon.getPosition());
    // source line 113, bytecode pc 923
    xs.Utils.Node.safeRemoveChild(this._ccbNode.m_gradeIcon);
    // source line 114, bytecode pc 979
    (this._ccbNode.m_gradeIcon = xs.Tools.UI.createGradeSmallIcon(this._data.getGrade()));
    // source line 115, bytecode pc 1006
    this._ccbNode.m_gradeIcon.setPosition(pos);
    // source line 116, bytecode pc 1052
    xs.Utils.Node.attachNodes(this._ccbNode, this._ccbNode.m_gradeIcon);
}
}));
// source line 120, bytecode pc 174
(xs.Views.Table.Cell.EquipmentFragmentTableViewCell.create = function(data) {
    var ret;
    // source line 121, bytecode pc 33
    (ret = new xs.Views.Table.Cell.EquipmentFragmentTableViewCell());
    if ((ret && ret.initWithData(data))) {
        // source line 123, bytecode pc 69
        return ret;
    }
    // source line 125, bytecode pc 88
    this.error("EquipmentFragmentTableViewCell.create:");
    // source line 126, bytecode pc 90
    return null;
});
// source line 129, bytecode pc 210
(xs.Views.Table.Cell.EquipmentFragmentTableViewCell.createDialog = function(sendCallback, target) {
});
