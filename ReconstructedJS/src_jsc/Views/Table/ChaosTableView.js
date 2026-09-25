// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/ChaosTableView.js:1
// source line 49, bytecode pc 138
(xs.Views.Table.ChaosTableView = xs.Views.Table.BaseTableView.extend({
    name: "ChaosTableView",
    init: function(otherUsers) {
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 29
    (this.arrayModel = otherUsers);
    // source line 17, bytecode pc 53
    this.setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL);
    // source line 18, bytecode pc 77
    this.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 20, bytecode pc 79
    return true;
},
    refreshData: function() {
},
    createCell: function(idx) {
    // source line 31, bytecode pc 44
    return xs.Views.ChaosTableViewCell.create(this.arrayModel[idx], this.skillPieceModel);
},
    makeViewSize: function() {
    var visibelSize;
    // source line 36, bytecode pc 35
    (visibelSize = cc.Director.getInstance().getVisibleSize());
    // source line 37, bytecode pc 65
    return cc.size(visibelSize.width, 407);
},
    makeCellSize: function() {
    // source line 41, bytecode pc 24
    return cc.size(265, 407);
},
    setSkillPiece: function(skillPieceModel) {
    // source line 46, bytecode pc 9
    (this.skillPieceModel = skillPieceModel);
},
    setDataArray: function(otherUsers) {
    // source line 50, bytecode pc 9
    (this.arrayModel = otherUsers);
    // source line 51, bytecode pc 22
    this.refreshDataAndReload();
}
}));
// source line 55, bytecode pc 169
(xs.Views.Table.ChaosTableView.create = function(otherUsers, skillPieceModel) {
    var ret;
    // source line 56, bytecode pc 28
    (ret = new xs.Views.Table.ChaosTableView());
    if ((ret && ret.init(otherUsers))) {
        // source line 58, bytecode pc 79
        ret.setSkillPiece(skillPieceModel);
        // source line 59, bytecode pc 83
        return ret;
    }
    // source line 62, bytecode pc 112
    xs.assert(false, "xs.Views.Table.ChaosTableView.create fail", ret);
    // source line 63, bytecode pc 114
    return null;
});
