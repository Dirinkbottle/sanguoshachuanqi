// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/UnionLogTableView.js:1
// source line 28, bytecode pc 83
(xs.Models.UnionLog = cc.Class.extend({
    name: "xs.Models.Chat",
    init: function(jsonData) {
    // source line 10, bytecode pc 7
    (this.data = null);
    // source line 11, bytecode pc 16
    (this.lineDistance = 10);
    // source line 12, bytecode pc 26
    (this.data = jsonData);
    // source line 13, bytecode pc 35
    (this.cellHeight = -1);
    // source line 14, bytecode pc 37
    return true;
},
    getCellHeight: function() {
    if ((this.cellHeight != -1)) {
        // source line 19, bytecode pc 20
        return this.cellHeight;
    } else {
        // source line 22, bytecode pc 38
        this.refresh();
        // source line 23, bytecode pc 45
        return this.cellHeight;
    }
},
    refresh: function(cell) {
    var label;
    // source line 29, bytecode pc 47
    (label = xs.Factorys.Label.createByStyleIdWithString("LS_liaotian_5", this.data.content));
    // source line 30, bytecode pc 85
    label.setDimensions(cc.size(400, 0));
    // source line 31, bytecode pc 111
    label.setHorizontalAlignment(cc.TEXT_ALIGNMENT_LEFT);
    // source line 32, bytecode pc 147
    label.setAnchorPoint(cc.p(0, 0));
    // source line 33, bytecode pc 183
    label.setPosition(cc.p(0, 0));
    if (cell) {
        // source line 35, bytecode pc 214
        xs.log_hsq("addCellLabel");
        // source line 36, bytecode pc 249
        xs.Utils.Node.attachNodes(cell, label);
    }
    // source line 40, bytecode pc 275
    (this.cellHeight = label.getContentSize().height);
}
}));
// source line 45, bytecode pc 109
(xs.Models.UnionLog.createWithData = function(jsonData) {
    var _ret;
    // source line 46, bytecode pc 23
    (_ret = new xs.Models.UnionLog());
    if ((_ret && _ret.init(jsonData))) {
        // source line 49, bytecode pc 59
        return _ret;
    }
    // source line 51, bytecode pc 61
    return null;
});
// source line 76, bytecode pc 203
(xs.Views.Table.Cell.UnionLogTableViewCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 58, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 62, bytecode pc 12
    this._super();
    // source line 63, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(data) {
    if (!this._super()) {
        // source line 68, bytecode pc 19
        return false;
    }
    // source line 71, bytecode pc 36
    this.updateCell(data);
    // source line 73, bytecode pc 38
    return true;
},
    updateCell: function(data) {
    // source line 77, bytecode pc 12
    this.removeAllChildren();
    // source line 79, bytecode pc 29
    data.refresh(this);
}
}));
// source line 84, bytecode pc 239
(xs.Views.Table.Cell.UnionLogTableViewCell.create = function(data) {
    var ret;
    // source line 85, bytecode pc 33
    (ret = new xs.Views.Table.Cell.UnionLogTableViewCell());
    if ((ret && ret.init(data))) {
        // source line 87, bytecode pc 69
        return ret;
    }
    // source line 89, bytecode pc 98
    xs.assert(false, "xs.Views.UnionLogTableViewCell.create fail!", ret);
    // source line 90, bytecode pc 100
    return null;
});
// source line 182, bytecode pc 388
(xs.Views.Table.UnionLogTableView = xs.Views.Table.BaseTableView.extend({
    name: "UnionLogTableView",
    init: function(arrUnionLogs, viewSize) {
    // source line 102, bytecode pc 9
    (this.viewSize = viewSize);
    if (!this._super()) {
        // source line 105, bytecode pc 29
        return false;
    }
    // source line 107, bytecode pc 39
    (this.arrayModel = arrUnionLogs);
    // source line 108, bytecode pc 47
    (this.m_cell_cache_use = false);
    // source line 110, bytecode pc 71
    this.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 111, bytecode pc 95
    this.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 113, bytecode pc 97
    return true;
},
    onExit: function() {
    // source line 117, bytecode pc 12
    this._super();
},
    refreshData: function() {
},
    createCell: function(idx) {
    // source line 129, bytecode pc 47
    return xs.Views.Table.Cell.UnionLogTableViewCell.create(this.arrayModel[idx]);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 134, bytecode pc 4
    (cell = null);
    try {
        if (this.m_cell_cache_use) {
            if (this.m_cell_cache[idx]) {
                // source line 138, bytecode pc 58
                xs.log("cache", idx);
                // source line 139, bytecode pc 69
                return this.m_cell_cache[idx];
            } else {
                // source line 142, bytecode pc 101
                xs.log("no cache", idx);
                // source line 144, bytecode pc 121
                (cell = this.createCell(idx));
                // source line 145, bytecode pc 147
                cell.updateCell(this.arrayModel[idx]);
                // source line 147, bytecode pc 174
                xs.log_xjf("make cache", idx);
                // source line 148, bytecode pc 188
                (this.m_cell_cache[idx] = cell);
                // source line 149, bytecode pc 210
                this.m_cell_cache[idx].retain();
                // source line 151, bytecode pc 214
                return cell;
            }
        } else {
            // source line 155, bytecode pc 237
            (cell = table.dequeueCell());
            if (!cell) {
                // source line 159, bytecode pc 266
                (cell = this.createCell(idx));
            }
            // source line 162, bytecode pc 296
            cell.updateCell(this.arrayModel[idx], idx);
        }
    } catch (e) {
        // source line 166, bytecode pc 328
        this.warnException(e);
        /* TODO_BYTECODE pc=329 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 169, bytecode pc 341
    return cell;
},
    makeViewSize: function() {
    // source line 174, bytecode pc 22
    xs.log("设置view大小");
    // source line 175, bytecode pc 63
    return cc.size(this.viewSize.width, this.viewSize.height);
},
    makeCellSize: function(idx) {
    // source line 179, bytecode pc 53
    return cc.size((this.viewSize.width - 10), this.arrayModel[idx].getCellHeight());
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 183, bytecode pc 16
    return this.makeCellSize(idx);
}
}));
// source line 187, bytecode pc 419
(xs.Views.Table.UnionLogTableView.create = function(arrUnionLogs, viewSize) {
    var ret;
    // source line 188, bytecode pc 28
    (ret = new xs.Views.Table.UnionLogTableView());
    if ((ret && ret.init(arrUnionLogs, viewSize))) {
        // source line 190, bytecode pc 68
        return ret;
    }
    // source line 193, bytecode pc 97
    xs.assert(false, "xs.Views.Table.UnionLogTableView.create fail", ret);
    // source line 194, bytecode pc 99
    return null;
});
