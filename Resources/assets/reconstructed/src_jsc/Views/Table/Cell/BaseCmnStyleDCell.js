// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/BaseCmnStyleDCell.js:1
// source line 72, bytecode pc 118
(xs.Views.Table.Cell.BaseCmnStyleDCell = xs.Views.Table.Cell.BaseCell.extend({
    init: function() {
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 14, bytecode pc 45
    this.assert(this.updateCell, "the class need override updateCell");
    // source line 15, bytecode pc 71
    this.assert(this.formatCell, "the class need override formatCell");
    // source line 17, bytecode pc 79
    (this.m_cellData = null);
    // source line 20, bytecode pc 87
    (this.m_icon = null);
    // source line 21, bytecode pc 95
    (this.m_btn = null);
    // source line 22, bytecode pc 103
    (this.m_nameLab = null);
    // source line 23, bytecode pc 111
    (this.m_descLab = null);
    // source line 24, bytecode pc 119
    (this.m_originalPriceTxtLab = null);
    // source line 25, bytecode pc 127
    (this.m_originalPriceIcon = null);
    // source line 26, bytecode pc 135
    (this.m_originalPriceLab = null);
    // source line 27, bytecode pc 143
    (this.m_discountPriceTxtLab = null);
    // source line 28, bytecode pc 151
    (this.m_discountPriceIcon = null);
    // source line 29, bytecode pc 159
    (this.m_discountPriceLab = null);
    // source line 30, bytecode pc 167
    (this.m_validNumTxtLab = null);
    // source line 31, bytecode pc 175
    (this.m_validNumLab = null);
    // source line 32, bytecode pc 183
    (this.m_yuanjiaHuaxian = null);
    // source line 34, bytecode pc 234
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.CmnStyleDCell, this));
    // source line 35, bytecode pc 270
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 37, bytecode pc 342
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.Table.Cell.BaseCmnStyleDCell.cfg.ccbCfg, this);
    // source line 39, bytecode pc 362
    this.m_btn.setSwallowTouch(false);
    // source line 40, bytecode pc 382
    this.m_btn.setZoomOnTouchDown(false);
    // source line 42, bytecode pc 395
    this.formatCell();
    // source line 43, bytecode pc 397
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 46, bytecode pc 16
    this._super(priority);
    // source line 48, bytecode pc 82
    this.m_btn.setTouchPriority((this.m_baseTouchPriority + xs.Views.Table.Cell.BaseCmnStyleDCell.cfg.m_btn.priority));
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
    this.m_btn.setVisible(false);
    // source line 58, bytecode pc 59
    this.m_nameLab.setVisible(false);
    // source line 59, bytecode pc 79
    this.m_descLab.setVisible(false);
    // source line 60, bytecode pc 99
    this.m_originalPriceTxtLab.setVisible(false);
    // source line 61, bytecode pc 119
    this.m_originalPriceIcon.setVisible(false);
    // source line 62, bytecode pc 139
    this.m_originalPriceLab.setVisible(false);
    // source line 63, bytecode pc 159
    this.m_discountPriceTxtLab.setVisible(false);
    // source line 64, bytecode pc 179
    this.m_discountPriceIcon.setVisible(false);
    // source line 65, bytecode pc 199
    this.m_discountPriceLab.setVisible(false);
    // source line 66, bytecode pc 219
    this.m_validNumTxtLab.setVisible(false);
    // source line 67, bytecode pc 239
    this.m_validNumLab.setVisible(false);
    // source line 68, bytecode pc 259
    this.m_yuanjiaHuaxian.setVisible(false);
},
    updateCell: function() {
}
}));
// source line 77, bytecode pc 154
(xs.Views.Table.Cell.BaseCmnStyleDCell.create = function() {
    var cell;
    // source line 78, bytecode pc 33
    (cell = new xs.Views.Table.Cell.BaseCmnStyleDCell());
    if ((cell && cell.init())) {
        // source line 80, bytecode pc 65
        return cell;
    }
    // source line 82, bytecode pc 88
    xs.warn("xs.Views.Table.Cell.BaseCmnStyleDCell.create error");
    // source line 83, bytecode pc 90
    return null;
});
// source line 105, bytecode pc 780
(xs.Views.Table.Cell.BaseCmnStyleDCell.cfg = {
    ccbCfg: [
        { name: "m_icon", tag: 12 },
        { name: "m_btn", tag: 13, type: "btn", id: "Btn_btn3" },
        { name: "m_nameLab", tag: 14, type: "ls", id: "LS_wujiangInf1" },
        { name: "m_descLab", tag: 15, type: "ls", id: "LS_liebiaoInf" },
        {
            name: "m_originalPriceTxtLab",
            tag: 16,
            type: "ls",
            id: "LS_liebiaoInf",
            stringId: "str_Store_originPrice"
        },
        { name: "m_originalPriceIcon", tag: 17 },
        { name: "m_originalPriceLab", tag: 18, type: "ls", id: "LS_liebiaoInf2" },
        {
            name: "m_discountPriceTxtLab",
            tag: 19,
            type: "ls",
            id: "LS_liebiaoInf",
            stringId: "str_Store_discountPrice"
        },
        { name: "m_discountPriceIcon", tag: 20 },
        { name: "m_discountPriceLab", tag: 21, type: "ls", id: "LS_liebiaoInf2" },
        {
            name: "m_validNumTxtLab",
            tag: 22,
            type: "ls",
            id: "LS_liebiaoInf",
            stringId: "str_Store_validNum"
        },
        { name: "m_validNumLab", tag: 23, type: "ls", id: "LS_liebiaoInf2" },
        { name: "m_yuanjiaHuaxian", tag: 30 }
    ],
    m_btn: { priority: -1 }
});
