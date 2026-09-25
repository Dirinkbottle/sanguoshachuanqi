// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/InterServiceRewardPreviewTableView.js:1
// source line 68, bytecode pc 234
(xs.Views.Table.InterServiceRewardPreviewTableViewCell = xs.Views.Table.Cell.BaseCell.extend({
    ccbCfg: [
        { tag: 11, type: "ls", name: "m_rewardName", id: "LS_wujiangInf1" },
        { tag: 2, type: "ls", name: "m_rewardDesc", id: "LS_wujiangInf2" },
        { tag: 10, name: "m_rewardIcon" }
    ],
    draw: function(ctx) {
    // source line 16, bytecode pc 16
    this._super(ctx);
},
    init: function() {
    if (!this._super()) {
        // source line 21, bytecode pc 19
        return false;
    }
    // source line 24, bytecode pc 27
    (this.m_data = null);
    // source line 26, bytecode pc 35
    (this.m_rewardName = null);
    // source line 27, bytecode pc 43
    (this.m_rewardDesc = null);
    // source line 28, bytecode pc 51
    (this.m_rewardIcon = null);
    // source line 33, bytecode pc 87
    (this.ccbNode = xs.ccb_reader.load("ccb3/InterServiceRewardListCell.ccbi", this));
    // source line 34, bytecode pc 126
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 35, bytecode pc 162
    xs.Utils.Node.attachNodes(this, this.ccbNode);
    // source line 36, bytecode pc 205
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 38, bytecode pc 207
    return true;
},
    updateCell: function(data) {
    var iconId, iconSprite;
    if (data) {
        // source line 44, bytecode pc 17
        (this.m_data = data);
    }
    if ((this.m_data == null)) {
        // source line 48, bytecode pc 53
        xs.error("InterServiceRewardPreviewTableViewCell data is null!!");
        // source line 49, bytecode pc 55
        return void 0;
    }
    // source line 53, bytecode pc 70
    (iconId = this.m_data.item_id);
    // source line 54, bytecode pc 128
    (this.obj_item = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(iconId));
    // source line 55, bytecode pc 149
    (iconSprite = this.obj_item.createIcon_Grade());
    // source line 56, bytecode pc 189
    xs.Utils.Node.replaceChildSafe(this, this.m_rewardIcon, iconSprite);
    // source line 57, bytecode pc 199
    (this.m_rewardIcon = iconSprite);
    // source line 61, bytecode pc 267
    this.m_rewardName.setString((xs.Tools.String.createString(this.m_data.goods_name) || ""));
    // source line 64, bytecode pc 335
    this.m_rewardDesc.setString((xs.Tools.String.createString(this.m_data.goods_desc) || ""));
},
    setBaseTouchPriority: function(priority) {
    // source line 69, bytecode pc 9
    (this.m_baseTouchPriority = priority);
}
}));
// source line 73, bytecode pc 265
(xs.Views.Table.InterServiceRewardPreviewTableViewCell.create = function() {
    var cell;
    // source line 74, bytecode pc 28
    (cell = new xs.Views.Table.InterServiceRewardPreviewTableViewCell());
    if ((cell && cell.init())) {
        // source line 76, bytecode pc 60
        return cell;
    }
    // source line 78, bytecode pc 62
    return null;
});
// source line 138, bytecode pc 404
(xs.Views.Table.InterServiceRewardPreviewTableView = xs.Views.Table.BaseTableView.extend({
    name: "InterServiceRewardPreviewTableView",
    init: function(viewSize) {
    // source line 88, bytecode pc 9
    (this.viewSize = viewSize);
    if (!this._super()) {
        // source line 91, bytecode pc 29
        return false;
    }
    // source line 93, bytecode pc 41
    (this.arrayModel = []);
    // source line 94, bytecode pc 49
    (this.m_cell_cache_use = false);
    // source line 96, bytecode pc 73
    this.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 97, bytecode pc 97
    this.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 99, bytecode pc 99
    return true;
},
    onExit: function() {
    // source line 103, bytecode pc 12
    this._super();
},
    refreshData: function(arrModels) {
    if (arrModels) {
        if ((this.arrayModel.length == 0)) {
            // source line 112, bytecode pc 35
            (this.arrayModel = arrModels);
            // source line 113, bytecode pc 48
            this.reloadData();
        } else {
            // source line 116, bytecode pc 63
            (this.arrayModel = arrModels);
            // source line 117, bytecode pc 76
            this.refreshDataAndReload();
        }
    }
},
    createCell: function(idx) {
    // source line 125, bytecode pc 42
    return xs.Views.Table.InterServiceRewardPreviewTableViewCell.create(this.arrayModel[idx]);
},
    makeViewSize: function() {
    // source line 130, bytecode pc 22
    xs.log("设置view大小");
    // source line 131, bytecode pc 63
    return cc.size(this.viewSize.width, this.viewSize.height);
},
    makeCellSize: function(idx) {
    // source line 135, bytecode pc 23
    return cc.size(530, 114);
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 139, bytecode pc 16
    return this.makeCellSize(idx);
}
}));
// source line 143, bytecode pc 435
(xs.Views.Table.InterServiceRewardPreviewTableView.create = function(viewSize) {
    var ret;
    // source line 144, bytecode pc 28
    (ret = new xs.Views.Table.InterServiceRewardPreviewTableView());
    if ((ret && ret.init(viewSize))) {
        // source line 146, bytecode pc 64
        return ret;
    }
    // source line 149, bytecode pc 93
    xs.assert(false, "xs.Views.Table.InterServiceRewardPreviewTableView.create fail", ret);
    // source line 150, bytecode pc 95
    return null;
});
