// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/StoreItemView.js:1
// source line 9, bytecode pc 16
(xs.Views.StoreItemViewType_Item = 0);
// source line 10, bytecode pc 33
(xs.Views.StoreItemViewType_Gift = 1);
// source line 154, bytecode pc 262
(xs.Views.StoreItemView = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 14, bytecode pc 12
    this._super();
},
    init: function(type) {
    if (!this._super()) {
        // source line 18, bytecode pc 19
        return false;
    }
    // source line 21, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 22, bytecode pc 35
    (this.m_tableView = null);
    // source line 23, bytecode pc 47
    (this.m_dataSource = []);
    // source line 24, bytecode pc 57
    (this.m_type = type);
    // source line 25, bytecode pc 65
    (this.m_listener = null);
    // source line 27, bytecode pc 80
    this.setIsEatEvent(false);
    // source line 30, bytecode pc 145
    (this.m_playLevel = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
    // source line 32, bytecode pc 202
    (this.m_tableView = cc.TableView.create(this, xs.Views.TablePage.getTableViewSize()));
    // source line 33, bytecode pc 222
    this.m_tableView.setDelegate(this);
    // source line 34, bytecode pc 251
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 35, bytecode pc 280
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 37, bytecode pc 370
    xs.Utils.Node.attachNodes(this, this.m_tableView, { desc: "lb", offset: xs.Views.TablePage.getTableViewOffset(), sc: true });
    // source line 39, bytecode pc 372
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 42, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 43, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 44, bytecode pc 85
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority + xs.Views.StoreItemView.cfg.m_tableView.priority));
},
    onEnter: function() {
    // source line 47, bytecode pc 12
    this._super();
    // source line 49, bytecode pc 25
    this.refreshStore();
    // source line 51, bytecode pc 67
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.coolDown);
    // source line 52, bytecode pc 122
    xs.director.getScheduler().scheduleCallbackForTarget(this, this.coolDown, 1, cc.REPEAT_FOREVER);
},
    onExit: function() {
    // source line 55, bytecode pc 41
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.coolDown);
    // source line 56, bytecode pc 54
    this._super();
},
    setListener: function(listener) {
    // source line 59, bytecode pc 9
    (this.m_listener = listener);
},
    refreshStore: function() {
    var param;
    // source line 62, bytecode pc 9
    (param = {});
    // source line 63, bytecode pc 24
    (param.is_gift = this.m_type);
    // source line 64, bytecode pc 34
    (param.belongs_shop = 1);
    // source line 65, bytecode pc 74
    xs.Tools.Net.requestGoodsList(param, this.refreshStoreSuccessCallback, this);
},
    refreshStoreSuccessCallback: function(data) {
    var length, infoList, i, good;
    // source line 69, bytecode pc 14
    (length = this.m_dataSource.length);
    // source line 70, bytecode pc 38
    this.m_dataSource.splice(0, length);
    // source line 72, bytecode pc 50
    (infoList = data.item_list);
    // source line 73, bytecode pc 55
    (i = 0);
    while ((i < infoList.length)) {
        // source line 74, bytecode pc 99
        (good = xs.Models.Good.createWithJson(infoList[i]));
        if ((good.getVipLevel() == 15)) {
            if ((this.m_playLevel > 12)) {
                // source line 77, bytecode pc 157
                this.m_dataSource.push(good);
            }
        } else {
            // source line 80, bytecode pc 184
            this.m_dataSource.push(good);
        }
        // source line 73, bytecode pc 197
        (i = (+i + 1));
    }
    // source line 83, bytecode pc 228
    this.refreshTableViewWithOldPos();
},
    refreshTableViewWithOldPos: function() {
    if (!this.oldContentOffset) {
        // source line 89, bytecode pc 29
        this.m_tableView.reloadData();
        // source line 90, bytecode pc 53
        (this.oldContentOffset = this.m_tableView.getContentOffset());
    } else {
        // source line 92, bytecode pc 82
        (this.oldContentOffset = this.m_tableView.getContentOffset());
        // source line 93, bytecode pc 100
        this.m_tableView.reloadData();
        // source line 94, bytecode pc 125
        this.m_tableView.setContentOffset(this.oldContentOffset);
    }
    if ((this.oldContentOffset.y < this.m_tableView.minContainerOffset().y)) {
        // source line 98, bytecode pc 182
        this.m_tableView.reloadData();
    }
},
    coolDown: function() {
    var i, data;
    // source line 103, bytecode pc 4
    (i = 0);
    while ((i < this.m_dataSource.length)) {
        // source line 104, bytecode pc 24
        (data = this.m_dataSource[i]);
        // source line 105, bytecode pc 39
        data.updateCloseTime();
        // source line 103, bytecode pc 53
        (i = (+i + 1));
    }
    // source line 108, bytecode pc 113
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Store_CloseTimeUpdate);
},
    scrollViewDidScroll: function() {
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 121, bytecode pc 23
    return cc.size(860, 120);
},
    tableCellAtIndex: function(table, idx) {
    var cell, data;
    try {
        // source line 127, bytecode pc 18
        (cell = table.dequeueCell());
        // source line 128, bytecode pc 32
        (data = this.m_dataSource[idx]);
        if (!cell) {
            // source line 130, bytecode pc 71
            (cell = xs.Views.StoreItemCell.create());
        }
        // source line 132, bytecode pc 88
        cell.setListener(this);
        // source line 133, bytecode pc 107
        cell.setGoodData(data);
    } catch (e) {
        // source line 137, bytecode pc 149
        xs.warn("tableCellAtIndex", e);
        /* TODO_BYTECODE pc=150 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 140, bytecode pc 162
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 143, bytecode pc 11
    return this.m_dataSource.length;
},
    centerBtnCallback: function(goodData) {
    if (this.m_listener) {
        // source line 150, bytecode pc 32
        this.m_listener.buyGood(goodData);
    }
},
    goodDetailCallback: function(goodData) {
    var item;
    // source line 155, bytecode pc 17
    (item = goodData.getItem());
    // source line 156, bytecode pc 65
    xs.Views.Mgr.showDialogByName("priviewGiftPackDialog", item.getId());
}
}));
// source line 161, bytecode pc 288
(xs.Views.StoreItemView.create = function(type) {
    var layer;
    // source line 162, bytecode pc 23
    (layer = new xs.Views.StoreItemView());
    if ((layer && layer.init(type))) {
        // source line 164, bytecode pc 59
        return layer;
    }
    // source line 166, bytecode pc 61
    return null;
});
// source line 174, bytecode pc 350
(xs.Views.StoreItemView.cfg = { m_tableView: { priority: 0 }, lackPopLayer: { priority: -20 } });
