// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/MTipsListView.js:1
// source line 63, bytecode pc 133
(xs.Views.MTipsListView = cc.Layer.extend({
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var visibleOrigin, visibleSize;
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 21, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 22, bytecode pc 35
    (this.m_tableViewSize = null);
    // source line 23, bytecode pc 43
    (this.m_tableView = null);
    // source line 25, bytecode pc 68
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 26, bytecode pc 93
    (visibleSize = xs.director.getVisibleSize());
    // source line 29, bytecode pc 133
    (this.m_tableViewSize = cc.size(840, (visibleSize.height - 140)));
    // source line 30, bytecode pc 170
    (this.m_tableView = cc.TableView.create(this, this.m_tableViewSize));
    // source line 31, bytecode pc 199
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 32, bytecode pc 228
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 33, bytecode pc 248
    this.m_tableView.setDelegate(this);
    // source line 35, bytecode pc 268
    this.addChild(this.m_tableView);
    // source line 37, bytecode pc 270
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 40, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    scrollViewDidScroll: function() {
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
    var idx;
    // source line 48, bytecode pc 17
    (idx = cell.getIdx());
    // source line 49, bytecode pc 44
    xs.log(("tableCellTouched : " + idx));
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 52, bytecode pc 23
    return cc.size(860, 120);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 56, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 58, bytecode pc 56
        (cell = xs.Views.MTipsCell.create());
    }
    // source line 61, bytecode pc 60
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 64, bytecode pc 2
    return 9;
}
}));
// source line 68, bytecode pc 159
(xs.Views.MTipsListView.create = function() {
    var layer;
    // source line 69, bytecode pc 23
    (layer = new xs.Views.MTipsListView());
    if ((layer && layer.init())) {
        // source line 71, bytecode pc 55
        return layer;
    }
    // source line 73, bytecode pc 57
    return null;
});
