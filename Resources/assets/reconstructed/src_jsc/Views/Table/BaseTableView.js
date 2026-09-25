// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/BaseTableView.js:1
// source line 252, bytecode pc 345
(xs.Views.Table.BaseTableView = (xs.Views.Table.BaseTableView || cc.TableView.extend({
    name: "BaseTableView",
    Cfg: { modelTypes: [] },
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    ctor: function() {
    // source line 23, bytecode pc 12
    this._super();
    // source line 24, bytecode pc 42
    cc.associateWithNative(this, cc.TableView);
},
    init: function() {
    // source line 34, bytecode pc 25
    this.assert(this.refreshData, "need override this.refreshData");
    // source line 35, bytecode pc 51
    this.assert(this.createCell, "need override this.createCell");
    // source line 36, bytecode pc 77
    this.assert(this.makeViewSize, "need override this.makeViewSize");
    // source line 39, bytecode pc 89
    (this.arrayModel = []);
    // source line 41, bytecode pc 115
    this.initWithViewSize(this.makeViewSize());
    // source line 42, bytecode pc 130
    this.setDataSource(this);
    // source line 43, bytecode pc 145
    this.setDelegate(this);
    // source line 44, bytecode pc 169
    this.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 45, bytecode pc 193
    this.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 48, bytecode pc 206
    (this.m_cell_cache = {});
    // source line 49, bytecode pc 214
    (this.m_cell_cache_use = false);
    // source line 51, bytecode pc 222
    (this._keepOldOffsetFlagEx = true);
    // source line 53, bytecode pc 224
    return true;
},
    onEnter: function() {
    var i;
    // source line 57, bytecode pc 12
    this._super();
    // source line 59, bytecode pc 35
    xs.log("onEnter");
    // source line 61, bytecode pc 40
    (i = 0);
    while ((i < this.Cfg.modelTypes)) {
        // source line 62, bytecode pc 98
        xs.Utils.Notify.addObserver(this, this.refreshDataAndReload, this.Cfg.modelTypes[i]);
        // source line 61, bytecode pc 113
        i++;
    }
    // source line 65, bytecode pc 147
    this.refreshDataAndReload();
},
    onExit: function() {
    var i, _i;
    // source line 71, bytecode pc 12
    this._super();
    // source line 74, bytecode pc 17
    (i = 0);
    while ((i < this.Cfg.modelTypes)) {
        // source line 75, bytecode pc 68
        xs.Utils.Notify.removeObserver(this, this.Cfg.modelTypes[i]);
        // source line 74, bytecode pc 83
        i++;
    }
    if (this.m_cell_cache_use) {
        for (var _i in this.m_cell_cache) {
            if (!(this.m_cell_cache.hasOwnProperty(_i))) continue;
            // source line 81, bytecode pc 183
            this.log("cache release ", _i);
            if (this.m_cell_cache[_i]) {
                // source line 84, bytecode pc 220
                this.m_cell_cache[_i].release();
            }
            // source line 86, bytecode pc 232
            (this.m_cell_cache[_i] = null);
        }
        // source line 88, bytecode pc 259
        this.log("cache release finish");
    }
},
    refreshData: function() {
    try {
        // source line 97, bytecode pc 19
        this.error("need override refreshData");
        // source line 98, bytecode pc 31
        (this.arrayModel = []);
    } catch (e) {
        // source line 100, bytecode pc 63
        this.warnException(e);
        /* TODO_BYTECODE pc=64 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    getArrayModel: function() {
    // source line 106, bytecode pc 6
    return this.arrayModel;
},
    refreshDataAndReload: function() {
    // source line 113, bytecode pc 12
    this.refreshData();
    // source line 114, bytecode pc 53
    (this._oldOffset = xs.Utils.clone(this.getContentOffset()));
    // source line 117, bytecode pc 66
    this.reloadData();
    // source line 118, bytecode pc 107
    (this._newOffset = xs.Utils.clone(this.getContentOffset()));
    // source line 120, bytecode pc 120
    this.refreshTableViewOldOffset();
    // source line 122, bytecode pc 128
    (this._keepOldOffsetFlagEx = false);
},
    registerSortModel: function(sortModel) {
    // source line 127, bytecode pc 9
    (this.sortModel = sortModel);
    // source line 128, bytecode pc 47
    this.sortModel.setSortChgCallBack(this.onSortChg.bind(this));
},
    onSortChg: function(sortedData) {
},
    createCell: function(idx) {
},
    makeViewSize: function() {
    // source line 139, bytecode pc 26
    return xs.Views.TablePage.getTableViewSize();
},
    makeCellSize: function(table, idx) {
    // source line 143, bytecode pc 23
    return cc.size(840, 120);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    try {
        if (this.m_cell_cache_use) {
            if (this.m_cell_cache[idx]) {
                // source line 151, bytecode pc 49
                this.log("cache", idx);
                // source line 152, bytecode pc 60
                return this.m_cell_cache[idx];
            } else {
                // source line 154, bytecode pc 88
                this.log("no cache", idx);
                // source line 157, bytecode pc 108
                (cell = this.createCell(idx));
                // source line 158, bytecode pc 134
                cell.updateCell(this.arrayModel[idx]);
                if (this.m_cell_cache_use) {
                    // source line 161, bytecode pc 172
                    xs.log_xjf("make cache", idx);
                    // source line 162, bytecode pc 186
                    (this.m_cell_cache[idx] = cell);
                    // source line 163, bytecode pc 208
                    this.m_cell_cache[idx].retain();
                }
                // source line 166, bytecode pc 212
                return cell;
            }
        }
        // source line 170, bytecode pc 230
        (cell = table.dequeueCell());
        if (!cell) {
            // source line 174, bytecode pc 259
            (cell = this.createCell(idx));
        }
        // source line 177, bytecode pc 289
        cell.updateCell(this.arrayModel[idx], idx);
    } catch (e) {
        // source line 180, bytecode pc 321
        this.warnException(e);
        /* TODO_BYTECODE pc=322 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 183, bytecode pc 334
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 187, bytecode pc 18
    this.markFuncBegin("numberOfCellsInTableView");
    try {
        // source line 190, bytecode pc 31
        return this.arrayModel.length;
    } catch (e) {
        // source line 192, bytecode pc 63
        this.warnException(e);
        /* TODO_BYTECODE pc=64 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 195, bytecode pc 91
    this.markFuncEnd("numberOfCellsInTableView");
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 199, bytecode pc 20
    return this.makeCellSize(table, idx);
},
    tableCellTouched: function(table, cell) {
},
    scrollViewDidScroll: function() {
},
    refreshTableViewOldOffset: function() {
    var _newContainerSize, _viewsize;
    if ((this._keepOldOffsetFlag == true)) {
        if ((this._keepOldOffsetFlagEx == false)) {
            // source line 213, bytecode pc 74
            (_newContainerSize = xs.Utils.clone(this.getContainer().getContentSize()));
            // source line 214, bytecode pc 90
            (_viewsize = this.getViewSize());
            if ((_viewsize.height < _newContainerSize.height)) {
                if (((_viewsize.height - this._oldOffset.y) >= _newContainerSize.height)) {
                    // source line 218, bytecode pc 148
                    return void 0;
                }
                // source line 221, bytecode pc 170
                this.setContentOffset(this._oldOffset, 0);
            }
        }
    }
},
    refreshTableViewAutoOffset: function(isAnimation) {
    var oldContentSize, offsetOld, addHeight, offsetOld_after;
    // source line 231, bytecode pc 20
    (oldContentSize = this.getContentSize().height);
    // source line 232, bytecode pc 36
    (offsetOld = this.getContentOffset());
    // source line 234, bytecode pc 49
    this.reloadData();
    // source line 236, bytecode pc 74
    (addHeight = (this.getContentSize().height - oldContentSize));
    // source line 238, bytecode pc 116
    (offsetOld_after = cc.p(offsetOld.x, (offsetOld.y - addHeight)));
    if ((this.getContentSize().height >= this.getViewSize().height)) {
        if (isAnimation) {
            // source line 243, bytecode pc 183
            this.setContentOffset(offsetOld_after, false);
            // source line 244, bytecode pc 226
            this.setContentOffset(cc.p(offsetOld.x, 0), true);
        } else {
            // source line 247, bytecode pc 274
            this.setContentOffset(cc.p(offsetOld.x, 0), false);
        }
    }
},
    setKeepOldOffsetFlag: function(flag) {
    // source line 253, bytecode pc 22
    xs.log("setKeepOldOffsetFlag this._oldOffset");
    // source line 254, bytecode pc 32
    (this._keepOldOffsetFlag = flag);
}
})));
// source line 258, bytecode pc 376
(xs.Views.Table.BaseTableView.create = function(objClass) {
    var ret;
    // source line 259, bytecode pc 11
    (ret = new objClass());
    if ((ret && ret.init())) {
        // source line 261, bytecode pc 43
        return ret;
    }
    // source line 263, bytecode pc 71
    this.error(("BaseTableView.create:" + objClass.name));
    // source line 264, bytecode pc 73
    return null;
});
