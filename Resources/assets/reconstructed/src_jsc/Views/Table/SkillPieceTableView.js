// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/SkillPieceTableView.js:1
// source line 84, bytecode pc 168
(xs.Views.Table.SkillPieceTableView = xs.Views.Table.BaseTableView.extend({
    name: "SkillPieceTableView",
    init: function(skillPieces, viewSize) {
    // source line 11, bytecode pc 9
    (this.viewSize = viewSize);
    if (!this._super()) {
        // source line 13, bytecode pc 29
        return false;
    }
    // source line 15, bytecode pc 39
    (this.arrayModel = skillPieces);
    // source line 17, bytecode pc 63
    this.setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL);
    // source line 18, bytecode pc 87
    this.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 20, bytecode pc 95
    (this.selectedIdx = 0);
    // source line 24, bytecode pc 97
    return true;
},
    refreshData: function() {
},
    createCell: function(idx) {
    // source line 35, bytecode pc 37
    return xs.Views.SkillPieceTableViewCell.create(this.arrayModel[idx]);
},
    makeViewSize: function() {
    // source line 41, bytecode pc 6
    return this.viewSize;
},
    makeCellSize: function() {
    // source line 45, bytecode pc 22
    return cc.size(100, 94);
},
    tableCellTouched: function(table, cell) {
    // source line 50, bytecode pc 20
    (this.selectedIdx = cell.getIdx());
    // source line 51, bytecode pc 45
    this.m_listener.setCurSelectByIdx(this.selectedIdx);
},
    setIdx: function(mIdx) {
    var contentOffset_y;
    // source line 56, bytecode pc 20
    (contentOffset_y = this.getContentOffset().y);
    if (((mIdx >= 0) && (mIdx < this.arrayModel.length))) {
        // source line 58, bytecode pc 61
        (this.selectedIdx = mIdx);
    } else {
        // source line 60, bytecode pc 74
        (this.selectedIdx = 0);
    }
    // source line 63, bytecode pc 120
    this.setContentOffset(cc.p((-100 * this.selectedIdx), contentOffset_y), true);
},
    next: function() {
    var contentOffset_y;
    // source line 68, bytecode pc 20
    (contentOffset_y = this.getContentOffset().y);
    // source line 69, bytecode pc 60
    (this.selectedIdx = ((this.selectedIdx = (+this.selectedIdx + 1)) % this.arrayModel.length));
    // source line 71, bytecode pc 106
    this.setContentOffset(cc.p((-100 * this.selectedIdx), contentOffset_y), true);
},
    prev: function() {
    var contentOffset_y;
    // source line 75, bytecode pc 20
    (contentOffset_y = this.getContentOffset().y);
    if ((this.selectedIdx > 0)) {
        // source line 77, bytecode pc 59
        (this.selectedIdx = (+this.selectedIdx - 1));
    } else {
        // source line 79, bytecode pc 85
        (this.selectedIdx = (this.arrayModel.length - 1));
    }
    // source line 81, bytecode pc 131
    this.setContentOffset(cc.p((-100 * this.selectedIdx), contentOffset_y), true);
},
    setListener: function(listener) {
    // source line 85, bytecode pc 9
    (this.m_listener = listener);
}
}));
// source line 90, bytecode pc 199
(xs.Views.Table.SkillPieceTableView.create = function(skillPieces, viewSize) {
    var ret;
    // source line 91, bytecode pc 28
    (ret = new xs.Views.Table.SkillPieceTableView());
    if ((ret && ret.init(skillPieces, viewSize))) {
        // source line 93, bytecode pc 68
        return ret;
    }
    // source line 96, bytecode pc 97
    xs.assert(false, "xs.Views.Table.SkillPieceTableView.create fail", ret);
    // source line 97, bytecode pc 99
    return null;
});
