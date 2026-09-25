// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/BaseCmnStyleCCell.js:1
// source line 101, bytecode pc 138
(xs.Views.Table.Cell.BaseCmnStyleCCell = xs.Views.Table.Cell.BaseCell.extend({
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
    // source line 19, bytecode pc 87
    (this.m_listener = null);
    // source line 22, bytecode pc 95
    (this.m_icon = null);
    // source line 23, bytecode pc 103
    (this.m_gradeIcon = null);
    // source line 24, bytecode pc 111
    (this.m_nameLab = null);
    // source line 25, bytecode pc 119
    (this.m_propertyBg = null);
    // source line 26, bytecode pc 127
    (this.m_propertyIcon = null);
    // source line 27, bytecode pc 135
    (this.m_propertyLab = null);
    // source line 28, bytecode pc 143
    (this.m_btn = null);
    // source line 29, bytecode pc 151
    (this.m_validityTxtLab = null);
    // source line 30, bytecode pc 159
    (this.m_validityLab = null);
    // source line 31, bytecode pc 167
    (this.m_fightBg = null);
    // source line 32, bytecode pc 175
    (this.m_fightIcon = null);
    // source line 33, bytecode pc 183
    (this.m_fightLab = null);
    // source line 34, bytecode pc 191
    (this.m_atkLab = null);
    // source line 35, bytecode pc 199
    (this.m_bg = null);
    // source line 36, bytecode pc 207
    (this.m_alterBg = null);
    // source line 37, bytecode pc 215
    (this.m_alterLab = null);
    // source line 38, bytecode pc 223
    (this.m_atkIcon = null);
    // source line 39, bytecode pc 231
    (this.m_nameSmalLab = null);
    // source line 40, bytecode pc 239
    (this.m_nameSmalTypeIcon = null);
    // source line 43, bytecode pc 247
    (this.m_iconBtn = null);
    // source line 46, bytecode pc 298
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.CmnStyleCCell, this));
    // source line 47, bytecode pc 381
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "lb", sc: false, offset: { x: 0, y: 4 } });
    // source line 49, bytecode pc 453
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.Table.Cell.BaseCmnStyleCCell.cfg.ccbCfg, this);
    // source line 51, bytecode pc 473
    this.m_btn.setSwallowTouch(false);
    // source line 52, bytecode pc 493
    this.m_btn.setZoomOnTouchDown(false);
    // source line 54, bytecode pc 552
    this.m_alterLab.setZOrder(xs.Views.Table.Cell.BaseCmnStyleCCell.cfg.m_alterLab.zOrder);
    // source line 56, bytecode pc 565
    this.formatCell();
    // source line 57, bytecode pc 567
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 60, bytecode pc 16
    this._super(priority);
    // source line 62, bytecode pc 82
    this.m_btn.setTouchPriority((this.m_baseTouchPriority + xs.Views.Table.Cell.BaseCmnStyleCCell.cfg.m_btn.priority));
    if (this.m_iconBtn) {
        // source line 65, bytecode pc 159
        this.m_iconBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.Table.Cell.BaseCmnStyleCCell.cfg.m_iconBtn.priority));
    }
},
    setCellData: function(data) {
    // source line 69, bytecode pc 9
    (this.m_cellData = data);
    // source line 70, bytecode pc 22
    this.updateCell();
},
    setListener: function(listener) {
    // source line 73, bytecode pc 9
    (this.m_listener = listener);
},
    formatCell: function() {
    // source line 77, bytecode pc 19
    this.m_icon.setVisible(false);
    // source line 78, bytecode pc 39
    this.m_gradeIcon.setVisible(false);
    // source line 79, bytecode pc 59
    this.m_nameLab.setVisible(false);
    // source line 80, bytecode pc 79
    this.m_propertyBg.setVisible(false);
    // source line 81, bytecode pc 99
    this.m_propertyIcon.setVisible(false);
    // source line 82, bytecode pc 119
    this.m_propertyLab.setVisible(false);
    // source line 83, bytecode pc 139
    this.m_btn.setVisible(false);
    // source line 84, bytecode pc 159
    this.m_validityTxtLab.setVisible(false);
    // source line 85, bytecode pc 179
    this.m_validityLab.setVisible(false);
    // source line 86, bytecode pc 199
    this.m_fightBg.setVisible(false);
    // source line 87, bytecode pc 219
    this.m_fightIcon.setVisible(false);
    // source line 88, bytecode pc 239
    this.m_fightLab.setVisible(false);
    // source line 89, bytecode pc 259
    this.m_atkLab.setVisible(false);
    // source line 90, bytecode pc 279
    this.m_alterLab.setVisible(false);
    // source line 91, bytecode pc 299
    this.m_alterBg.setVisible(false);
    // source line 92, bytecode pc 319
    this.m_atkIcon.setVisible(false);
    // source line 93, bytecode pc 339
    this.m_nameSmalLab.setVisible(false);
    // source line 94, bytecode pc 359
    this.m_nameSmalTypeIcon.setVisible(false);
},
    updateCell: function() {
},
    setAlter: function(alter) {
    if (this.m_alterLab) {
        // source line 103, bytecode pc 32
        this.m_alterLab.setString(alter);
    }
}
}));
// source line 108, bytecode pc 174
(xs.Views.Table.Cell.BaseCmnStyleCCell.create = function() {
    var cell;
    // source line 109, bytecode pc 33
    (cell = new xs.Views.Table.Cell.BaseCmnStyleCCell());
    if ((cell && cell.init())) {
        // source line 111, bytecode pc 65
        return cell;
    }
    // source line 113, bytecode pc 88
    xs.warn("xs.Views.Table.Cell.BaseCmnStyleACell.create error");
    // source line 114, bytecode pc 90
    return null;
});
// source line 148, bytecode pc 928
(xs.Views.Table.Cell.BaseCmnStyleCCell.cfg = {
    ccbCfg: [
        { name: "m_icon", tag: 10 },
        { name: "m_gradeIcon", tag: 11 },
        { name: "m_nameLab", tag: 12, type: "ls", id: "LS_wujiangInf1" },
        { name: "m_propertyBg", tag: 13 },
        { name: "m_propertyIcon", tag: 15 },
        { name: "m_propertyLab", tag: 16, type: "ls", id: "LS_mainUI4" },
        { name: "m_btn", tag: 17, type: "btn", id: "Btn_btn3" },
        { name: "m_validityTxtLab", tag: 18 },
        { name: "m_validityLab", tag: 19 },
        { name: "m_fightBg", tag: 20 },
        { name: "m_fightIcon", tag: 21 },
        { name: "m_fightLab", tag: 22, type: "ls", id: "LS_mainUI4" },
        { name: "m_atkLab", tag: 23, type: "ls", id: "LS_shiji" },
        { name: "m_alterLab", tag: 24, type: "ls", id: "LS_bnt1" },
        { name: "m_bg", tag: 25 },
        { name: "m_alterBg", tag: 26 },
        { name: "m_nameSmalLab", tag: 27, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_nameSmalTypeIcon", tag: 28 },
        { name: "m_atkIcon", tag: 29 }
    ],
    m_btn: { priority: -1 },
    m_iconBtn: { priority: -1 },
    m_alterLab: { zOrder: 5 }
});
