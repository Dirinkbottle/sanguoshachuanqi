// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/SocialTableView.js:1
// source line 53, bytecode pc 138
(xs.Views.Table.SocialTableView = xs.Views.Table.BaseTableView.extend({
    name: "SocialTableView",
    init: function() {
    if (!this._super()) {
        // source line 13, bytecode pc 19
        return false;
    }
    // source line 16, bytecode pc 43
    this.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 17, bytecode pc 67
    this.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 19, bytecode pc 69
    return true;
},
    refreshData: function() {
    // source line 25, bytecode pc 11
    (this.arrayModel = []);
},
    setData: function(datas, viewType) {
    // source line 29, bytecode pc 9
    (this.arrayModel = datas);
    // source line 30, bytecode pc 19
    (this.viewType = viewType);
},
    tableCellTouched: function(table, cell) {
    if ((cell.isBtnTouched() === false)) {
        if ((this.viewType === xs.Views.SocialView_Type_Friends)) {
            // source line 37, bytecode pc 102
            xs.Views.Mgr.showDialogByName("FriendOperationDialog", this.arrayModel[cell.getIdx()]);
        }
    }
    // source line 40, bytecode pc 119
    cell.setBtnTouched(false);
},
    createCell: function(idx) {
    // source line 45, bytecode pc 44
    return xs.Views.SocialTableViewCell.create(this.arrayModel[idx], this.viewType);
},
    makeViewSize: function() {
    // source line 50, bytecode pc 26
    return xs.Views.TablePage.getTableViewSize();
},
    getContentOffsetY: function() {
    // source line 54, bytecode pc 17
    return this.getContentOffset().y;
}
}));
// source line 58, bytecode pc 169
(xs.Views.Table.SocialTableView.create = function() {
    var ret;
    // source line 59, bytecode pc 28
    (ret = new xs.Views.Table.SocialTableView());
    if ((ret && ret.init())) {
        // source line 61, bytecode pc 60
        return ret;
    }
    // source line 63, bytecode pc 62
    return null;
});
