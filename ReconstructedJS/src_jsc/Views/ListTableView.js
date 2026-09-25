// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ListTableView.js:1
// source line 2, bytecode pc 20
(xs.Views.ListTableViewDelegateAndDataSource = function() {
    // source line 3, bytecode pc 11
    (this.init = function(data, createCellFun) {
    // source line 5, bytecode pc 9
    (this.m_data = data);
    // source line 6, bytecode pc 19
    (this.m_cellCreateFunc = createCellFun);
    // source line 7, bytecode pc 27
    (this.m_testCount = 0);
    // source line 8, bytecode pc 35
    (this.m_Count1 = 0);
    // source line 9, bytecode pc 47
    (this._cellArray = []);
    // source line 10, bytecode pc 69
    (this._iconArray = new buckets.Dictionary());
    // source line 12, bytecode pc 87
    (this._numberOfCells = this.m_data.numberOfCells);
    // source line 13, bytecode pc 105
    (this._numberOfCellsInRow = this.m_data.numberOfCellsInRow);
    // source line 15, bytecode pc 128
    (this.m_data.originData = this.m_data.allCellData);
    // source line 17, bytecode pc 130
    return true;
});
    // source line 19, bytecode pc 23
    (this.tableCellTouched = function(table, cell) {
});
    // source line 22, bytecode pc 35
    (this.numberOfCellsInTableView = function(table) {
    var remainder, cellNum;
    // source line 24, bytecode pc 16
    (remainder = (this._numberOfCells % this._numberOfCellsInRow));
    // source line 25, bytecode pc 33
    (cellNum = (this._numberOfCells / this._numberOfCellsInRow));
    if ((remainder != 0)) {
        // source line 27, bytecode pc 52
        (cellNum = (cellNum + 1));
    }
    // source line 31, bytecode pc 56
    return cellNum;
});
    // source line 33, bytecode pc 47
    (this.tableCellSizeForIndex = function(table, idx) {
    // source line 36, bytecode pc 11
    return this.m_data.cellSize;
});
    // source line 38, bytecode pc 59
    (this.tableCellAtIndex = function(table, idx) {
    var cell;
    // source line 39, bytecode pc 22
    xs.log("tableCellAtIndex");
    // source line 40, bytecode pc 40
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 46, bytecode pc 79
        xs.log(("this._iconArray" + this._iconArray));
        // source line 47, bytecode pc 128
        (cell = new this.m_cellCreateFunc(this.m_data.allCellData, this._numberOfCellsInRow, table, idx, this._iconArray));
        // source line 49, bytecode pc 143
        (this.m_Count1 = (this.m_Count1 + 1));
        // source line 50, bytecode pc 173
        xs.log(("this.m_Count1 is " + this.m_Count1));
        // source line 51, bytecode pc 195
        this._cellArray.push(cell);
    }
    // source line 54, bytecode pc 210
    (this.m_testCount = (this.m_testCount + 1));
    // source line 55, bytecode pc 240
    xs.log(("this.m_testCount is " + this.m_testCount));
    // source line 56, bytecode pc 275
    cell.updateCellView(table, idx, this.m_data.allCellData);
    // source line 57, bytecode pc 311
    cell.setAnchorPoint(cc.p(0, 0));
    // source line 59, bytecode pc 315
    return cell;
});
    // source line 61, bytecode pc 71
    (this.scrollViewDidScroll = function() {
});
    // source line 64, bytecode pc 83
    (this.onExit = function() {
    var _callback;
    // source line 65, bytecode pc 22
    xs.log("xs.Views.ListTableViewDelegateAndDataSource onExit");
    // source line 66, bytecode pc 31
    (_callback = function(key, value) {
    // source line 67, bytecode pc 14
    value.release();
});
    // source line 69, bytecode pc 53
    this._iconArray.forEach(_callback);
});
    // source line 72, bytecode pc 95
    (this.onFilterChange = function(filterType, filterResult) {
    var params;
    // source line 73, bytecode pc 9
    (this._filterType = filterType);
    // source line 74, bytecode pc 19
    (this._filterResult = filterResult);
    // source line 79, bytecode pc 82
    (params = {
    data: this.m_data.originData,
    result: this._filterResult,
    filterConditions: this._filterType,
    sortConditions: xs.Constant_SortType_Altas_Default
});
    // source line 81, bytecode pc 124
    (this.m_data.allCellData = xs.Tools.Filter.filterData(params));
    // source line 83, bytecode pc 147
    (this._numberOfCells = this.m_data.allCellData.length);
    // source line 84, bytecode pc 177
    xs.log(("this._numberOfCells is " + this._numberOfCells));
});
});
// source line 87, bytecode pc 46
(xs.Views.ListTableViewDelegateAndDataSource.create = function(data, createCellFun) {
    var object;
    // source line 88, bytecode pc 23
    (object = new xs.Views.ListTableViewDelegateAndDataSource());
    if ((object && object.init(data, createCellFun))) {
        // source line 90, bytecode pc 63
        return object;
    }
    // source line 92, bytecode pc 88
    xs.assert(false, "xs.Views.ListTableViewDelegateAndDataSource.create error");
    // source line 93, bytecode pc 90
    return null;
});
// source line 128, bytecode pc 145
(xs.Views.ListTableView = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 98, bytecode pc 12
    this._super();
},
    init: function(Delegate, viewSize) {
    // source line 101, bytecode pc 46
    xs.log(((("viewSize is:" + viewSize.width) + ",") + viewSize.height));
    // source line 102, bytecode pc 73
    xs.log(("Delegate is:" + Delegate));
    // source line 103, bytecode pc 90
    this.setContentSize(viewSize);
    // source line 105, bytecode pc 126
    (this.m_tableView = cc.TableView.create(Delegate, viewSize));
    // source line 106, bytecode pc 155
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 107, bytecode pc 177
    this.m_tableView.setDelegate(Delegate);
    // source line 108, bytecode pc 206
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 110, bytecode pc 226
    this.addChild(this.m_tableView);
    // source line 111, bytecode pc 273
    xs.log(((("viewSize is:" + viewSize.width) + ",") + viewSize.height));
    // source line 113, bytecode pc 283
    (this._dataSource = Delegate);
    // source line 114, bytecode pc 285
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 117, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 118, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    if ((this.m_tableView != null)) {
        // source line 120, bytecode pc 72
        xs.log(("this.ListTableView touchpriority:" + this.m_baseTouchPriority));
        // source line 121, bytecode pc 97
        this.m_tableView.setTouchPriority(this.m_baseTouchPriority);
    }
},
    onExit: function() {
    // source line 125, bytecode pc 22
    xs.log("ListTableView onExit");
    // source line 126, bytecode pc 40
    this._dataSource.onExit();
},
    onFilterChange: function(filterType, filterResult) {
    // source line 129, bytecode pc 36
    xs.log(((("ListTableView onFilterChange " + filterType) + ",") + filterResult));
    // source line 130, bytecode pc 62
    this._dataSource.onFilterChange(filterType, filterResult);
    // source line 131, bytecode pc 80
    this.m_tableView.reloadData();
}
}));
// source line 134, bytecode pc 171
(xs.Views.ListTableView.create = function(Delegate, viewSize) {
    var view;
    // source line 135, bytecode pc 23
    (view = new xs.Views.ListTableView());
    if ((view && view.init(Delegate, viewSize))) {
        // source line 137, bytecode pc 63
        return view;
    }
    // source line 139, bytecode pc 88
    xs.assert(false, "xs.Views.ListTableView.create error");
    // source line 140, bytecode pc 90
    return null;
});
