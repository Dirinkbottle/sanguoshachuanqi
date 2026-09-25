// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/BaseCmnStyleBCell.js:1
// source line 97, bytecode pc 128
(xs.Views.Table.Cell.BaseCmnStyleBCell = xs.Views.Table.Cell.BaseCell.extend({
    init: function() {
    if (!this._super()) {
        // source line 13, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 45
    this.assert(this.updateCell, "the class need override updateCell");
    // source line 16, bytecode pc 71
    this.assert(this.formatCell, "the class need override formatCell");
    // source line 18, bytecode pc 79
    (this.m_cellData = null);
    // source line 21, bytecode pc 87
    (this.m_icon = null);
    // source line 22, bytecode pc 95
    (this.m_gradeIcon = null);
    // source line 23, bytecode pc 103
    (this.m_nameLab = null);
    // source line 24, bytecode pc 111
    (this.m_belongLab = null);
    // source line 25, bytecode pc 119
    (this.m_propertyBg = null);
    // source line 26, bytecode pc 127
    (this.m_fightBg = null);
    // source line 27, bytecode pc 135
    (this.m_priceBg = null);
    // source line 28, bytecode pc 143
    (this.m_propertyIcon = null);
    // source line 29, bytecode pc 151
    (this.m_coinIcon = null);
    // source line 30, bytecode pc 159
    (this.m_propertyLab = null);
    // source line 31, bytecode pc 167
    (this.m_priceLab = null);
    // source line 32, bytecode pc 175
    (this.m_btn = null);
    // source line 33, bytecode pc 183
    (this.m_btn_2 = null);
    // source line 34, bytecode pc 191
    (this.m_validityTxtLab = null);
    // source line 35, bytecode pc 199
    (this.m_validityLab = null);
    // source line 36, bytecode pc 207
    (this.m_fightIcon = null);
    // source line 37, bytecode pc 215
    (this.m_beforAtkTxtLab = null);
    // source line 38, bytecode pc 223
    (this.m_fightLab = null);
    // source line 39, bytecode pc 231
    (this.m_atkTxtLab = null);
    // source line 42, bytecode pc 282
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.CmnStyleBCell, this));
    // source line 43, bytecode pc 318
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 45, bytecode pc 390
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.Table.Cell.BaseCmnStyleBCell.cfg.ccbCfg, this);
    // source line 47, bytecode pc 410
    this.m_btn.setSwallowTouch(false);
    // source line 48, bytecode pc 430
    this.m_btn.setZoomOnTouchDown(false);
    // source line 50, bytecode pc 443
    this.formatCell();
    // source line 51, bytecode pc 445
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 54, bytecode pc 16
    this._super(priority);
    // source line 56, bytecode pc 82
    this.m_btn.setTouchPriority((this.m_baseTouchPriority + xs.Views.Table.Cell.BaseCmnStyleBCell.cfg.m_btn.priority));
},
    setCellData: function(data) {
    // source line 59, bytecode pc 9
    (this.m_cellData = data);
    // source line 60, bytecode pc 22
    this.updateCell();
},
    formatCell: function() {
    // source line 65, bytecode pc 12
    this.formatCellBefore();
    // source line 67, bytecode pc 32
    this.m_icon.setVisible(false);
    // source line 68, bytecode pc 52
    this.m_gradeIcon.setVisible(false);
    // source line 69, bytecode pc 72
    this.m_nameLab.setVisible(false);
    // source line 70, bytecode pc 92
    this.m_belongLab.setVisible(false);
    // source line 71, bytecode pc 112
    this.m_propertyBg.setVisible(false);
    // source line 72, bytecode pc 132
    this.m_fightBg.setVisible(false);
    // source line 73, bytecode pc 152
    this.m_priceBg.setVisible(false);
    // source line 74, bytecode pc 172
    this.m_propertyIcon.setVisible(false);
    // source line 75, bytecode pc 192
    this.m_coinIcon.setVisible(false);
    // source line 76, bytecode pc 212
    this.m_propertyLab.setVisible(false);
    // source line 77, bytecode pc 232
    this.m_priceLab.setVisible(false);
    // source line 78, bytecode pc 252
    this.m_btn.setVisible(false);
    // source line 79, bytecode pc 272
    this.m_btn_2.setVisible(false);
    // source line 80, bytecode pc 292
    this.m_validityTxtLab.setVisible(false);
    // source line 81, bytecode pc 312
    this.m_validityLab.setVisible(false);
    // source line 82, bytecode pc 332
    this.m_fightIcon.setVisible(false);
    // source line 83, bytecode pc 352
    this.m_beforAtkTxtLab.setVisible(false);
    // source line 84, bytecode pc 372
    this.m_fightLab.setVisible(false);
    // source line 85, bytecode pc 392
    this.m_atkTxtLab.setVisible(false);
    // source line 86, bytecode pc 412
    this.m_levelIcon.setVisible(false);
    // source line 87, bytecode pc 432
    this.m_levelLab.setVisible(false);
},
    formatCellBefore: function() {
    // source line 90, bytecode pc 63
    (this.m_fightLab = xs.Utils.replaceLabelWithString(this.m_ccbNode, 26, [ "LS_mainUI4" ], [ 1 ]));
    // source line 91, bytecode pc 127
    (this.m_propertyLab = xs.Utils.replaceLabelWithString(this.m_ccbNode, 19, [ "LS_mainUI4" ], [ 1 ]));
    // source line 92, bytecode pc 191
    (this.m_belongLab = xs.Utils.replaceLabelWithString(this.m_ccbNode, 13, [ "LS_yishangzhen" ], [ 1 ]));
    // source line 93, bytecode pc 255
    (this.m_atkTxtLab = xs.Utils.replaceLabelWithString(this.m_ccbNode, 27, [ "LS_shiji" ], [ 1 ]));
    // source line 94, bytecode pc 319
    (this.m_nameLab = xs.Utils.replaceLabelWithString(this.m_ccbNode, 12, [ "LS_wujiangInf1" ], [ 1 ]));
},
    updateCell: function() {
}
}));
// source line 102, bytecode pc 164
(xs.Views.Table.Cell.BaseCmnStyleBCell.create = function() {
    var cell;
    // source line 103, bytecode pc 33
    (cell = new xs.Views.Table.Cell.BaseCmnStyleBCell());
    if ((cell && cell.init())) {
        // source line 105, bytecode pc 65
        return cell;
    }
    // source line 107, bytecode pc 88
    xs.warn("xs.Views.Table.Cell.BaseCmnStyleACell.create error");
    // source line 108, bytecode pc 90
    return null;
});
// source line 183, bytecode pc 836
(xs.Views.Table.Cell.BaseCmnStyleBCell.cfg = {
    ccbCfg: [
        { name: "m_icon", tag: 10 },
        { name: "m_gradeIcon", tag: 11 },
        { name: "m_nameLab", tag: 12 },
        { name: "m_belongLab", tag: 13 },
        { name: "m_propertyBg", tag: 14 },
        { name: "m_fightBg", tag: 15 },
        { name: "m_priceBg", tag: 16 },
        { name: "m_propertyIcon", tag: 17 },
        { name: "m_coinIcon", tag: 18 },
        { name: "m_propertyLab", tag: 19 },
        { name: "m_priceLab", tag: 20 },
        { name: "m_btn", tag: 21, type: "btn", id: "Btn_btn3" },
        { name: "m_btn_2", tag: 30, type: "btn", id: "Btn_btn3" },
        { name: "m_validityTxtLab", tag: 22 },
        { name: "m_validityLab", tag: 23 },
        { name: "m_fightIcon", tag: 24 },
        { name: "m_beforAtkTxtLab", tag: 25 },
        { name: "m_fightLab", tag: 26 },
        { name: "m_atkTxtLab", tag: 27 },
        { name: "m_levelIcon", tag: 28 },
        { name: "m_levelLab", tag: 29 }
    ],
    m_btn: { priority: -1 }
});
