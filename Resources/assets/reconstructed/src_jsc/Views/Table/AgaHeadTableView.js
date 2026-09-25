// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/AgaHeadTableView.js:1
// source line 94, bytecode pc 168
(xs.Views.Table.AgaHeadTableView = xs.Views.Table.BaseTableView.extend({
    name: "AgaHeadTableView",
    init: function(generalDatas) {
    if (!this._super()) {
        // source line 10, bytecode pc 19
        return false;
    }
    // source line 13, bytecode pc 28
    (this.lastSelectIdx = -99);
    // source line 14, bytecode pc 38
    (this.arrayModel = generalDatas);
    // source line 16, bytecode pc 46
    (this.m_cell_cache_use = true);
    // source line 18, bytecode pc 70
    this.setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL);
    // source line 19, bytecode pc 94
    this.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 21, bytecode pc 139
    (this.m_selectedIcon = xs.Factorys.Sprite.create("head_select", "Cmn02"));
    // source line 22, bytecode pc 157
    this.m_selectedIcon.retain();
    // source line 24, bytecode pc 159
    return true;
},
    onExit: function() {
    // source line 28, bytecode pc 22
    xs.log("释放");
    // source line 29, bytecode pc 40
    this.m_selectedIcon.release();
    // source line 30, bytecode pc 53
    this._super();
},
    setClickCallBack: function(callBack) {
    // source line 34, bytecode pc 9
    (this._callBack = callBack);
},
    refreshData: function() {
},
    createCell: function(idx) {
    // source line 45, bytecode pc 37
    return xs.Views.AgaHeadTableViewCell.create(this.arrayModel[idx]);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    try {
        if (this.m_cell_cache_use) {
            if (this.m_cell_cache[idx]) {
                // source line 53, bytecode pc 49
                this.log("cache", idx);
                // source line 54, bytecode pc 60
                return this.m_cell_cache[idx];
            } else {
                // source line 57, bytecode pc 88
                this.log("no cache", idx);
                // source line 59, bytecode pc 108
                (cell = this.createCell(idx));
                // source line 60, bytecode pc 134
                cell.updateCell(this.arrayModel[idx]);
                // source line 62, bytecode pc 161
                xs.log_xjf("make cache", idx);
                // source line 63, bytecode pc 175
                (this.m_cell_cache[idx] = cell);
                // source line 64, bytecode pc 197
                this.m_cell_cache[idx].retain();
                // source line 66, bytecode pc 201
                return cell;
            }
        }
    } catch (e) {
        // source line 70, bytecode pc 233
        this.warnException(e);
        /* TODO_BYTECODE pc=234 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 73, bytecode pc 246
    return cell;
},
    makeViewSize: function() {
    // source line 78, bytecode pc 23
    return cc.size(884, 110);
},
    makeCellSize: function() {
    // source line 82, bytecode pc 22
    return cc.size(115, 100);
},
    tableCellTouched: function(table, cell) {
    // source line 86, bytecode pc 22
    xs.log("点击");
    if ((cell.getIdx() != this.lastSelectIdx)) {
        // source line 89, bytecode pc 82
        this.selectHeadIcon(table, cell.getIdx(), true);
    }
},
    selectHeadIcon: function(table, index, isCallBack) {
    var cell;
    // source line 96, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_selectedIcon);
    // source line 98, bytecode pc 57
    (cell = this.tableCellAtIndex(table, index));
    // source line 99, bytecode pc 78
    (this.lastSelectIdx = cell.getIdx());
    // source line 100, bytecode pc 100
    cell.addSelectedIcon(this.m_selectedIcon);
    if (isCallBack) {
        // source line 102, bytecode pc 143
        this._callBack(this.arrayModel[cell.getIdx()]);
    }
}
}));
// source line 108, bytecode pc 199
(xs.Views.Table.AgaHeadTableView.create = function(generalDatas) {
    var ret;
    // source line 109, bytecode pc 28
    (ret = new xs.Views.Table.AgaHeadTableView());
    if ((ret && ret.init(generalDatas))) {
        // source line 111, bytecode pc 64
        return ret;
    }
    // source line 114, bytecode pc 93
    xs.assert(false, "xs.Views.Table.AgaHeadTableView.create fail", ret);
    // source line 115, bytecode pc 95
    return null;
});
