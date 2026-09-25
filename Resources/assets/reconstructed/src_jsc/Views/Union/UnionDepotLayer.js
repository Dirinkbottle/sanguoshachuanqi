// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Union/UnionDepotLayer.js:1
// source line 102, bytecode pc 365
(xs.Views.Union.UnionDepotItemCell = cc.TableViewCell.extend({
    ccbCfg: [
        { name: "m_itemName", tag: 1, type: "ls", id: "LS_wujiangInf1" },
        { name: "m_itemDescription", tag: 2, type: "ls", id: "LS_liebiaoInf" },
        { name: "m_numberTitle", tag: 3, type: "ls", id: "LS_liebiaoInf" },
        { name: "m_number", tag: 5, type: "ls", id: "LS_liebiaoInf2" }
    ],
    draw: function(ctx) {
    // source line 15, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 19, bytecode pc 12
    this._super();
    // source line 20, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 25, bytecode pc 19
        return false;
    }
    // source line 28, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 29, bytecode pc 35
    (this.m_listener = null);
    // source line 30, bytecode pc 43
    (this.m_ccbNode = null);
    // source line 31, bytecode pc 51
    (this.m_itemName = null);
    // source line 32, bytecode pc 59
    (this.m_itemDescription = null);
    // source line 33, bytecode pc 67
    (this.m_numberTitle = null);
    // source line 34, bytecode pc 75
    (this.m_number = null);
    // source line 35, bytecode pc 83
    (this.m_listener = null);
    // source line 36, bytecode pc 91
    (this.m_itemData = null);
    // source line 37, bytecode pc 99
    (this.m_hasPermission = null);
    // source line 38, bytecode pc 107
    (this.m_distributionButton = null);
    // source line 39, bytecode pc 120
    (this.m_itemInfo = {});
    // source line 40, bytecode pc 171
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.UnionDepotDistributionCell, this));
    // source line 41, bytecode pc 207
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 42, bytecode pc 250
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 43, bytecode pc 288
    (this.m_itemIcon = xs.Utils.getChildByTag(this.m_ccbNode, 7));
    // source line 44, bytecode pc 326
    (this.m_distributionButton = xs.Utils.getChildByTag(this.m_ccbNode, 6));
    // source line 45, bytecode pc 328
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 49, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 50, bytecode pc 36
    this.m_distributionButton.setTouchPriority((this.m_baseTouchPriority - 1));
},
    setListener: function(listener) {
    // source line 56, bytecode pc 9
    (this.m_listener = listener);
},
    setItemData: function(itemData) {
    // source line 60, bytecode pc 9
    (this.m_itemData = itemData);
    // source line 61, bytecode pc 22
    this.update();
},
    setPermission: function(permission) {
    // source line 65, bytecode pc 9
    (this.m_hasPermission = permission);
},
    confirmDistribution: function(user_id, member_id, pk_id, num) {
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 72, bytecode pc 12
    this._super();
    // source line 74, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 77, bytecode pc 63
            (this.m_parentView = parent);
            // source line 78, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 80, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 83, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 87, bytecode pc 12
    this._super();
},
    showUnionDepotNumChooseDialog: function() {
    var memberDialog;
    if (this.m_itemInfo) {
        // source line 94, bytecode pc 45
        xs.log("itemInfo", this.m_itemInfo.maxNum);
        // source line 95, bytecode pc 88
        (memberDialog = xs.Views.Mgr.showDialogByName("UnionDepotMemberDialog", this.m_itemInfo));
        // source line 96, bytecode pc 105
        memberDialog.setListener(this);
    } else {
        // source line 100, bytecode pc 133
        xs.log("m_itemInfo is null");
    }
},
    update: function() {
    var head1Sp, str, tempButton;
    // source line 105, bytecode pc 22
    (this.m_itemInfo.pk_id = this.m_itemData.pk_id);
    // source line 106, bytecode pc 45
    (this.m_itemInfo.maxNum = this.m_itemData.num);
    // source line 107, bytecode pc 80
    xs.log("itemNum", this.m_itemData.num);
    // source line 108, bytecode pc 115
    xs.log("itemPkID", this.m_itemData.pk_id);
    // source line 109, bytecode pc 145
    this.m_number.setString(this.m_itemData.num);
    // source line 110, bytecode pc 211
    (this.obj_item = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(this.m_itemData.id));
    // source line 111, bytecode pc 232
    (head1Sp = this.obj_item.createIcon_Grade());
    // source line 112, bytecode pc 277
    xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_itemIcon, head1Sp);
    // source line 113, bytecode pc 287
    (this.m_itemIcon = head1Sp);
    // source line 114, bytecode pc 323
    this.m_itemName.setString(this.obj_item.getNameString());
    // source line 115, bytecode pc 359
    this.m_itemDescription.setString(this.obj_item.getDescString());
    // source line 116, bytecode pc 395
    (str = xs.Tools.String.createString("str_Bag_num"));
    // source line 117, bytecode pc 417
    this.m_numberTitle.setString(str);
    // source line 118, bytecode pc 453
    (tempButton = xs.Views.Btn.createByStyleId("BS_Btn3"));
    // source line 119, bytecode pc 493
    xs.Utils.Node.replaceChildSafe(this, this.m_distributionButton, tempButton);
    // source line 120, bytecode pc 503
    (this.m_distributionButton = tempButton);
    // source line 121, bytecode pc 523
    this.m_distributionButton.setSwallowTouch(false);
    // source line 122, bytecode pc 543
    this.m_distributionButton.setZoomOnTouchDown(true);
    // source line 123, bytecode pc 594
    this.m_distributionButton.setString(xs.Tools.String.createString("btnStr_unionDepotMbrDlgAllotTtl"));
    // source line 124, bytecode pc 632
    this.m_distributionButton.setOnClickCallBack(this.showUnionDepotNumChooseDialog.bind(this));
    if (!this.m_hasPermission) {
        // source line 125, bytecode pc 664
        this.m_distributionButton.setVisible(false);
    }
}
}));
// source line 131, bytecode pc 396
(xs.Views.Union.UnionDepotItemCell.create = function(hasPermission) {
    var cell;
    // source line 132, bytecode pc 28
    (cell = new xs.Views.Union.UnionDepotItemCell());
    if ((cell && cell.init(hasPermission))) {
        // source line 134, bytecode pc 64
        return cell;
    }
    // source line 137, bytecode pc 66
    return null;
});
// source line 309, bytecode pc 615
(xs.Views.Union.UnionDepotLayer = xs.Views.Union.UnionBaseLayer.extend({
    ctor: function() {
    // source line 146, bytecode pc 12
    this._super();
    // source line 147, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var winSize;
    // source line 152, bytecode pc 12
    this._super();
    // source line 153, bytecode pc 24
    (this.m_depotList = []);
    // source line 154, bytecode pc 49
    (winSize = xs.director.getVisibleSize());
    // source line 156, bytecode pc 80
    (this.m_defaultSize = cc.size(891, 400));
    // source line 158, bytecode pc 139
    (this.m_bg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_contentBg02.frameName));
    // source line 159, bytecode pc 178
    this.m_bg.setAnchorPoint(cc.p(0, 0));
    // source line 160, bytecode pc 203
    this.m_bg.setContentSize(this.m_defaultSize);
    // source line 164, bytecode pc 280
    xs.Utils.Node.attachNodes(this, this.m_bg, { desc: "lb", offset: { x: -8, y: 0 } });
    // source line 167, bytecode pc 319
    (this.m_descriptionLabel = xs.Factorys.Label.createByStyleId("LS_liaotian_3"));
    // source line 168, bytecode pc 370
    this.m_descriptionLabel.setString(xs.Tools.String.createString("lblStr_unionDepotMbrDlgDes"));
    // source line 169, bytecode pc 415
    this.m_descriptionLabel.setPosition(cc.p(447.5, 420));
    // source line 170, bytecode pc 456
    xs.Utils.Node.attachNodes(this.m_bg, this.m_descriptionLabel);
    // source line 172, bytecode pc 525
    (this.m_tableView = cc.TableView.create(this, cc.size(882, (this.m_defaultSize.height * 0.95))));
    // source line 173, bytecode pc 554
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 174, bytecode pc 595
    this.m_tableView.setPosition(cc.p(5, 11));
    // source line 175, bytecode pc 615
    this.m_tableView.setDelegate(this);
    // source line 179, bytecode pc 644
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 180, bytecode pc 669
    this.m_bg.addChild(this.m_tableView);
    // source line 183, bytecode pc 687
    this.m_tableView.reloadData();
    // source line 184, bytecode pc 695
    (this.m_hasPermission = null);
    // source line 203, bytecode pc 819
    xs.Tools.Net.requestGetUnionInfo({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(resultData) {
    if ((resultData.return_info.user_role < 3)) {
        // source line 193, bytecode pc 28
        (this.m_hasPermission = true);
    } else {
        // source line 197, bytecode pc 41
        (this.m_hasPermission = false);
    }
}.bind(this), function(resultData) {
}, this);
    // source line 205, bytecode pc 849
    xs.log("permission:", this.m_hasPermission);
    // source line 207, bytecode pc 851
    return true;
},
    _readUnionDepotList: function() {
    // source line 213, bytecode pc 22
    xs.log("m_4:");
    // source line 229, bytecode pc 140
    xs.Tools.Net.requestUnionDepotList({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    // source line 220, bytecode pc 14
    (this.m_depotList = data.depot_list);
    // source line 221, bytecode pc 44
    xs.dump("depotList", this.m_depotList);
    // source line 223, bytecode pc 79
    xs.log("length", this.m_depotList.length);
    // source line 226, bytecode pc 97
    this.m_tableView.reloadData();
}.bind(this), this);
    // source line 230, bytecode pc 158
    this.m_tableView.reloadData();
},
    refreshFromMenuClick: function() {
    // source line 234, bytecode pc 22
    xs.log("refreshFromMenuClick in baseLayer");
    if (this.isNeedRefresh) {
        // source line 236, bytecode pc 41
        (this.isNeedRefresh = false);
        // source line 237, bytecode pc 54
        this._readUnionDepotList();
    }
},
    onEnterTransitionDidFinish: function() {
    // source line 245, bytecode pc 12
    this._super();
    // source line 246, bytecode pc 60
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
    // source line 247, bytecode pc 73
    this._readUnionDepotList();
},
    onExitTransitionDidStart: function() {
    // source line 252, bytecode pc 12
    this._super();
    // source line 253, bytecode pc 60
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function() {
    // source line 306, bytecode pc 32
    xs.Views.Mgr.showToast("scrollViewDidZoom");
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 268, bytecode pc 23
    return cc.size(882, 107);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 272, bytecode pc 26
    cc.log((idx + "-----"));
    // source line 274, bytecode pc 44
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 276, bytecode pc 88
        (cell = xs.Views.Union.UnionDepotItemCell.create());
    }
    // source line 279, bytecode pc 105
    cell.setListener(this);
    // source line 280, bytecode pc 131
    cell.setItemData(this.m_depotList[idx]);
    // source line 281, bytecode pc 153
    cell.setPermission(this.m_hasPermission);
    // source line 282, bytecode pc 174
    cell.update(this, idx);
    // source line 285, bytecode pc 178
    return cell;
},
    setBaseTouchPriority: function(priority) {
    // source line 289, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 291, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 292, bytecode pc 56
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    numberOfCellsInTableView: function(table) {
    // source line 296, bytecode pc 22
    xs.log("numberOfCellsInTableView");
    // source line 297, bytecode pc 34
    return this.m_depotList.length;
}
}));
// source line 315, bytecode pc 646
(xs.Views.Union.UnionDepotLayer.create = function() {
    var retObj;
    // source line 316, bytecode pc 28
    (retObj = new xs.Views.Union.UnionDepotLayer());
    if ((retObj && retObj.init())) {
        // source line 318, bytecode pc 60
        return retObj;
    }
    // source line 320, bytecode pc 62
    return null;
});
