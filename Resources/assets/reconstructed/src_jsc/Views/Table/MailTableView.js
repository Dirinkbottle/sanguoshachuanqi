// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/MailTableView.js:1
// source line 41, bytecode pc 128
(xs.Views.Table.MailTableView = xs.Views.Table.BaseTableView.extend({
    name: "MailTableView",
    init: function() {
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 43
    this.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 16, bytecode pc 67
    this.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 18, bytecode pc 69
    return true;
},
    refreshData: function() {
    // source line 24, bytecode pc 11
    (this.arrayModel = []);
},
    setData: function(datas) {
    // source line 28, bytecode pc 9
    (this.arrayModel = datas);
},
    tableCellTouched: function(table, cell) {
},
    createCell: function(idx) {
    // source line 37, bytecode pc 37
    return xs.Views.MailTableViewCell.create(this.arrayModel[idx]);
},
    makeViewSize: function() {
    // source line 42, bytecode pc 26
    return xs.Views.TablePage.getTableViewSize();
}
}));
// source line 46, bytecode pc 159
(xs.Views.Table.MailTableView.create = function() {
    var ret;
    // source line 47, bytecode pc 28
    (ret = new xs.Views.Table.MailTableView());
    if ((ret && ret.init())) {
        // source line 49, bytecode pc 60
        return ret;
    }
    // source line 51, bytecode pc 62
    return null;
});
