// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/BaseCmnStyleACell.js:1
// source line 70, bytecode pc 118
(xs.Views.Table.Cell.BaseCmnStyleACell = xs.Views.Table.Cell.BaseCell.extend({
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
    (this.m_descLab = null);
    // source line 25, bytecode pc 119
    (this.m_numTxtLab = null);
    // source line 26, bytecode pc 127
    (this.m_numLab = null);
    // source line 27, bytecode pc 135
    (this.m_coinIcon = null);
    // source line 28, bytecode pc 143
    (this.m_priceBg = null);
    // source line 29, bytecode pc 151
    (this.m_priceLab = null);
    // source line 30, bytecode pc 159
    (this.m_btn = null);
    // source line 31, bytecode pc 167
    (this.m_validityTxtLab = null);
    // source line 32, bytecode pc 175
    (this.m_validityLab = null);
    // source line 34, bytecode pc 226
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.CmnStyleACell, this));
    // source line 35, bytecode pc 262
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 37, bytecode pc 334
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.Table.Cell.BaseCmnStyleACell.cfg.ccbCfg, this);
    // source line 39, bytecode pc 354
    this.m_btn.setSwallowTouch(false);
    // source line 40, bytecode pc 374
    this.m_btn.setZoomOnTouchDown(false);
    // source line 42, bytecode pc 387
    this.formatCell();
    // source line 43, bytecode pc 389
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 46, bytecode pc 16
    this._super(priority);
    // source line 48, bytecode pc 82
    this.m_btn.setTouchPriority((this.m_baseTouchPriority + xs.Views.Table.Cell.BaseCmnStyleACell.cfg.m_btn.priority));
},
    setCellData: function(data) {
    // source line 51, bytecode pc 9
    (this.m_cellData = data);
    // source line 52, bytecode pc 22
    this.updateCell();
},
    formatCell: function() {
    // source line 56, bytecode pc 19
    this.m_icon.setVisible(false);
    // source line 57, bytecode pc 39
    this.m_gradeIcon.setVisible(false);
    // source line 58, bytecode pc 59
    this.m_nameLab.setVisible(false);
    // source line 59, bytecode pc 79
    this.m_descLab.setVisible(false);
    // source line 60, bytecode pc 99
    this.m_numTxtLab.setVisible(false);
    // source line 61, bytecode pc 119
    this.m_numLab.setVisible(false);
    // source line 62, bytecode pc 139
    this.m_coinIcon.setVisible(false);
    // source line 63, bytecode pc 159
    this.m_priceBg.setVisible(false);
    // source line 64, bytecode pc 179
    this.m_priceLab.setVisible(false);
    // source line 65, bytecode pc 199
    this.m_btn.setVisible(false);
    // source line 66, bytecode pc 219
    this.m_validityLab.setVisible(false);
    // source line 67, bytecode pc 239
    this.m_validityTxtLab.setVisible(false);
},
    updateCell: function() {
}
}));
// source line 75, bytecode pc 154
(xs.Views.Table.Cell.BaseCmnStyleACell.create = function() {
    var cell;
    // source line 76, bytecode pc 33
    (cell = new xs.Views.Table.Cell.BaseCmnStyleACell());
    if ((cell && cell.init())) {
        // source line 78, bytecode pc 65
        return cell;
    }
    // source line 80, bytecode pc 88
    xs.warn("xs.Views.Table.Cell.BaseCmnStyleACell.create error");
    // source line 81, bytecode pc 90
    return null;
});
// source line 125, bytecode pc 563
(xs.Views.Table.Cell.BaseCmnStyleACell.cfg = {
    ccbCfg: [
        { name: "m_icon", tag: 10 },
        { name: "m_gradeIcon", tag: 11 },
        { name: "m_nameLab", tag: 12 },
        { name: "m_descLab", tag: 13 },
        { name: "m_numTxtLab", tag: 14 },
        { name: "m_numLab", tag: 15 },
        { name: "m_coinIcon", tag: 16 },
        { name: "m_priceBg", tag: 17 },
        { name: "m_priceLab", tag: 18 },
        { name: "m_btn", tag: 19, type: "bs", id: "BS_Btn3" },
        { name: "m_validityTxtLab", tag: 20 },
        { name: "m_validityLab", tag: 21 }
    ],
    m_btn: { priority: -1 }
});
