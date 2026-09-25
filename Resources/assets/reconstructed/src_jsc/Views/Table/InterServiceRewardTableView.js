// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/InterServiceRewardTableView.js:1
// source line 138, bytecode pc 475
(xs.Views.Table.InterServiceRewardTableViewCell = xs.Views.Table.Cell.BaseCell.extend({
    ccbCfg: [
        { tag: 1, type: "ls", name: "m_rewardName", id: "LS_wujiangInf1" },
        { tag: 2, type: "ls", name: "m_rewardDesc", id: "LS_wujiangInf2" },
        { tag: 3, type: "ls", name: "m_bottomLabel", id: "LS_liebiaoInf" },
        { tag: 4, type: "ls", name: "m_numLabel", id: "LS_liebiaoInf2" },
        { tag: 5, name: "m_priceIcon" },
        { tag: 6, type: "ls", name: "m_usedLbl", id: "LS_weidacheng", stringId: "interService_rewardUsed" },
        { tag: 9, name: "m_rewardIcon" },
        { tag: 20, name: "m_gou_di" },
        { tag: 21, name: "m_gou" }
    ],
    draw: function(ctx) {
    // source line 21, bytecode pc 16
    this._super(ctx);
},
    init: function() {
    if (!this._super()) {
        // source line 26, bytecode pc 19
        return false;
    }
    // source line 29, bytecode pc 27
    (this.m_data = null);
    // source line 31, bytecode pc 35
    (this.m_rewardName = null);
    // source line 32, bytecode pc 43
    (this.m_rewardDesc = null);
    // source line 33, bytecode pc 51
    (this.m_bottomLabel = null);
    // source line 34, bytecode pc 59
    (this.m_numLabel = null);
    // source line 35, bytecode pc 67
    (this.m_priceIcon = null);
    // source line 36, bytecode pc 75
    (this.m_rewardIcon = null);
    // source line 37, bytecode pc 83
    (this.m_gou = null);
    // source line 38, bytecode pc 91
    (this.m_gou_di = null);
    // source line 39, bytecode pc 99
    (this.m_usedLbl = null);
    // source line 42, bytecode pc 135
    (this.ccbNode = xs.ccb_reader.load("ccb3/InterServerhangRewardTableViewCell.ccbi", this));
    // source line 43, bytecode pc 174
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 44, bytecode pc 210
    xs.Utils.Node.attachNodes(this, this.ccbNode);
    // source line 45, bytecode pc 253
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 47, bytecode pc 273
    this.m_gou.setVisible(false);
    // source line 48, bytecode pc 293
    this.m_usedLbl.setVisible(false);
    // source line 49, bytecode pc 295
    return true;
},
    updateCell: function(data) {
    var iconId, iconSprite;
    if (data) {
        // source line 55, bytecode pc 17
        (this.m_data = data);
    }
    if ((this.m_data == null)) {
        // source line 59, bytecode pc 53
        xs.error("InterServiceRewardTableViewCell data is null!!");
        // source line 60, bytecode pc 55
        return void 0;
    }
    // source line 64, bytecode pc 70
    (iconId = this.m_data.item_id);
    // source line 65, bytecode pc 128
    (this.obj_item = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(iconId));
    // source line 66, bytecode pc 149
    (iconSprite = this.obj_item.createIcon_Grade());
    // source line 67, bytecode pc 189
    xs.Utils.Node.replaceChildSafe(this, this.m_rewardIcon, iconSprite);
    // source line 68, bytecode pc 199
    (this.m_rewardIcon = iconSprite);
    // source line 72, bytecode pc 267
    this.m_rewardName.setString((xs.Tools.String.createString(this.m_data.goods_name) || ""));
    // source line 75, bytecode pc 335
    this.m_rewardDesc.setString((xs.Tools.String.createString(this.m_data.goods_desc) || ""));
    // source line 78, bytecode pc 386
    this.m_bottomLabel.setString(xs.Tools.String.createString("interService_price"));
    // source line 79, bytecode pc 427
    this.m_numLabel.setString((this.m_data.price || "9999"));
    // source line 83, bytecode pc 521
    this.m_priceIcon.setPosition(cc.p((this.m_bottomLabel.getPositionX() + this.m_bottomLabel.getContentSize().width), this.m_bottomLabel.getPositionY()));
    // source line 84, bytecode pc 541
    this.m_priceIcon.setVisible(true);
    // source line 90, bytecode pc 689
    this.m_numLabel.setPosition(cc.p(((this.m_bottomLabel.getPositionX() + this.m_bottomLabel.getContentSize().width) + (this.m_priceIcon.isVisible() ? (this.m_priceIcon.getContentSize().width + 6) : 0)), this.m_bottomLabel.getPositionY()));
    if (this.m_data.is_used) {
        // source line 94, bytecode pc 725
        this.m_usedLbl.setVisible(true);
        // source line 95, bytecode pc 745
        this.m_gou.setVisible(false);
        // source line 96, bytecode pc 765
        this.m_gou_di.setVisible(false);
    } else {
        // source line 99, bytecode pc 790
        this.m_usedLbl.setVisible(false);
        // source line 100, bytecode pc 810
        this.m_gou_di.setVisible(true);
        if (this.m_data.is_selected) {
            // source line 103, bytecode pc 846
            this.m_gou.setVisible(true);
        } else {
            // source line 106, bytecode pc 871
            this.m_gou.setVisible(false);
        }
    }
},
    onCellClicked: function() {
    if (!this.m_data) {
        // source line 115, bytecode pc 34
        xs.warn("警告! cell数据为空! return!");
        // source line 116, bytecode pc 36
        return void 0;
    }
    if (this.m_data.is_used) {
    } else {
        if (this.m_data.is_selected) {
            // source line 125, bytecode pc 86
            (this.m_data.is_selected = false);
            // source line 126, bytecode pc 106
            this.m_gou.setVisible(false);
        } else {
            // source line 130, bytecode pc 124
            (this.m_data.is_selected = true);
            // source line 131, bytecode pc 144
            this.m_gou.setVisible(true);
        }
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 139, bytecode pc 9
    (this.m_baseTouchPriority = priority);
}
}));
// source line 143, bytecode pc 506
(xs.Views.Table.InterServiceRewardTableViewCell.create = function() {
    var cell;
    // source line 144, bytecode pc 28
    (cell = new xs.Views.Table.InterServiceRewardTableViewCell());
    if ((cell && cell.init())) {
        // source line 146, bytecode pc 60
        return cell;
    }
    // source line 148, bytecode pc 62
    return null;
});
// source line 212, bytecode pc 655
(xs.Views.Table.InterServiceRewardTableView = xs.Views.Table.BaseTableView.extend({
    name: "InterServiceRewardTableView",
    init: function(viewSize) {
    // source line 158, bytecode pc 9
    (this.viewSize = viewSize);
    if (!this._super()) {
        // source line 161, bytecode pc 29
        return false;
    }
    // source line 163, bytecode pc 41
    (this.arrayModel = []);
    // source line 164, bytecode pc 49
    (this.m_cell_cache_use = false);
    // source line 166, bytecode pc 73
    this.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 167, bytecode pc 97
    this.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 169, bytecode pc 99
    return true;
},
    onExit: function() {
    // source line 173, bytecode pc 12
    this._super();
},
    refreshData: function(arrModels) {
    if (arrModels) {
        if ((this.arrayModel.length == 0)) {
            // source line 182, bytecode pc 35
            (this.arrayModel = arrModels);
            // source line 183, bytecode pc 48
            this.reloadData();
        } else {
            // source line 186, bytecode pc 63
            (this.arrayModel = arrModels);
            // source line 187, bytecode pc 76
            this.refreshDataAndReload();
        }
    }
},
    createCell: function(idx) {
    // source line 195, bytecode pc 42
    return xs.Views.Table.InterServiceRewardTableViewCell.create(this.arrayModel[idx]);
},
    makeViewSize: function() {
    // source line 200, bytecode pc 22
    xs.log("设置view大小");
    // source line 201, bytecode pc 63
    return cc.size(this.viewSize.width, this.viewSize.height);
},
    makeCellSize: function(idx) {
    // source line 205, bytecode pc 23
    return cc.size(880, 120);
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 209, bytecode pc 16
    return this.makeCellSize(idx);
},
    tableCellTouched: function(table, cell) {
    // source line 213, bytecode pc 14
    cell.onCellClicked();
}
}));
// source line 218, bytecode pc 686
(xs.Views.Table.InterServiceRewardTableView.create = function(viewSize) {
    var ret;
    // source line 219, bytecode pc 28
    (ret = new xs.Views.Table.InterServiceRewardTableView());
    if ((ret && ret.init(viewSize))) {
        // source line 221, bytecode pc 64
        return ret;
    }
    // source line 224, bytecode pc 93
    xs.assert(false, "xs.Views.Table.InterServiceRewardTableView.create fail", ret);
    // source line 225, bytecode pc 95
    return null;
});
