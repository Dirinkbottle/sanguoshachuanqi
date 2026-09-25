// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ReplaceCardList.js:1
// source line 293, bytecode pc 283
(xs.Views.ReplaceCardList = cc.Node.extend({
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(cardType) {
    var sortController, contentSize, pos, defaultFilter;
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 29
    (this.cardType = cardType);
    // source line 22, bytecode pc 37
    (this.m_baseTouchPriority = 0);
    // source line 23, bytecode pc 45
    (this.m_plugin = null);
    // source line 24, bytecode pc 53
    (this.m_ccbNode = null);
    // source line 25, bytecode pc 61
    (this.m_listener = null);
    // source line 26, bytecode pc 69
    (this.m_tableView = null);
    // source line 27, bytecode pc 81
    (this.m_dataSource = []);
    // source line 28, bytecode pc 89
    (this.m_replaceData = null);
    // source line 29, bytecode pc 97
    (this.m_onGeneralData = null);
    // source line 30, bytecode pc 109
    (this.m_hideData = []);
    // source line 32, bytecode pc 117
    (this.m_closeBtn = null);
    // source line 33, bytecode pc 125
    (this.m_titleLab = null);
    // source line 35, bytecode pc 133
    (this.m_sortBtn = null);
    // source line 36, bytecode pc 141
    (this.m_filterType = null);
    // source line 37, bytecode pc 149
    (this.m_filterResult = null);
    // source line 39, bytecode pc 196
    (this.m_plugin = xs.Views.Dialog.ReplaceCardDialog.Plugins.getPlugin(cardType));
    // source line 41, bytecode pc 234
    this.setContentSize(cc.size(610, 610));
    // source line 43, bytecode pc 285
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.ReplaceCardListBox, this));
    // source line 44, bytecode pc 321
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 46, bytecode pc 383
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.ReplaceCardList.cfg.ccbCfg, this);
    // source line 48, bytecode pc 421
    this.m_closeBtn.setOnClickCallBack(this.closeCallback.bind(this));
    // source line 51, bytecode pc 434
    this.initDataSource();
    // source line 53, bytecode pc 489
    (this.m_tableView = cc.TableView.create(this, cc.size(510, 420)));
    // source line 54, bytecode pc 509
    this.m_tableView.setDelegate(this);
    // source line 55, bytecode pc 538
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 56, bytecode pc 567
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 57, bytecode pc 606
    this.m_tableView.setAnchorPoint(cc.p(0, 0));
    // source line 63, bytecode pc 695
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_tableView, { desc: "lb", sc: false, offset: { x: 56, y: 30 } });
    // source line 67, bytecode pc 716
    (sortController = this.m_plugin.ReplaceCardList_Plugin_sortController());
    // source line 68, bytecode pc 751
    sortController.setSortChgCallBack(this.sortChangeCallback.bind(this));
    // source line 69, bytecode pc 772
    (contentSize = this.m_sortBtn.getContentSize());
    // source line 70, bytecode pc 793
    (pos = this.m_sortBtn.getPosition());
    // source line 71, bytecode pc 867
    sortController.setPosition(cc.p((pos.x - (contentSize.width / 2)), (pos.y - (contentSize.height / 2))));
    // source line 72, bytecode pc 905
    xs.Utils.Node.attachNodes(this.m_ccbNode, sortController);
    // source line 74, bytecode pc 939
    xs.Utils.Node.safeRemoveChild(this.m_sortBtn);
    // source line 75, bytecode pc 949
    (this.m_sortBtn = sortController);
    // source line 77, bytecode pc 970
    (defaultFilter = this.m_sortBtn.getDefaultFilter());
    // source line 78, bytecode pc 985
    (this.m_filterType = defaultFilter.filterType);
    // source line 79, bytecode pc 1000
    (this.m_filterResult = defaultFilter.filterResult);
    // source line 81, bytecode pc 1002
    return true;
},
    onEnter: function() {
    // source line 84, bytecode pc 12
    this._super();
    // source line 86, bytecode pc 25
    this.updateView();
},
    onExit: function() {
    // source line 90, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 93, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 94, bytecode pc 65
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.ReplaceCardList.cfg.m_closeBtn.priority));
    // source line 95, bytecode pc 121
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority + xs.Views.ReplaceCardList.cfg.m_tableView.priority));
    // source line 96, bytecode pc 177
    this.m_sortBtn.setBaseTouchPriority((this.m_baseTouchPriority + xs.Views.ReplaceCardList.cfg.m_sortBtn.priority));
},
    setListener: function(listener) {
    // source line 99, bytecode pc 9
    (this.m_listener = listener);
},
    setReplaceData: function(data, isReload) {
    // source line 102, bytecode pc 9
    (this.m_replaceData = data);
    // source line 103, bytecode pc 22
    this.initDataSource();
    if (((isReload == null) || (isReload == true))) {
        // source line 105, bytecode pc 56
        this.reloadDataAndView();
    }
},
    setOnGeneralData: function(data, isReload) {
    // source line 109, bytecode pc 9
    (this.m_onGeneralData = data);
    if (((isReload == null) || (isReload == true))) {
        // source line 111, bytecode pc 43
        this.reloadDataAndView();
    }
},
    setHideData: function(arrayData, isReload) {
    // source line 115, bytecode pc 9
    (this.m_hideData = arrayData);
    // source line 116, bytecode pc 22
    this.initDataSource();
    if (((isReload == null) || (isReload == true))) {
        // source line 118, bytecode pc 56
        this.reloadDataAndView();
    }
},
    reloadDataAndView: function() {
    // source line 122, bytecode pc 22
    xs.log("reloadDataAndView");
    // source line 123, bytecode pc 40
    this.m_tableView.reloadData();
    // source line 124, bytecode pc 53
    this.updateView();
},
    closeCallback: function() {
    if (this.m_listener) {
        // source line 129, bytecode pc 28
        this.m_listener.ReplaceCardList_closeCallback();
    }
},
    sortChangeCallback: function(filterType, filterResult) {
    // source line 133, bytecode pc 9
    (this.m_filterType = filterType);
    // source line 134, bytecode pc 19
    (this.m_filterResult = filterResult);
    // source line 137, bytecode pc 32
    this.initDataSource();
    // source line 138, bytecode pc 50
    this.m_tableView.reloadData();
},
    setDataSource: function(dataSource) {
    var _dataSource, i;
    if ((this.cardType === xs.Views.Dialog.ReplaceCardDialog_Type_Worship)) {
        // source line 144, bytecode pc 40
        (_dataSource = []);
        // source line 145, bytecode pc 45
        (i = 0);
        while ((i < dataSource.length)) {
            if (!((dataSource[i].getLevel() === 1) && (dataSource[i].getBreachLevel() === 0))) {
                // source line 147, bytecode pc 126
                _dataSource.push(dataSource[i]);
            }
            // source line 145, bytecode pc 140
            (i = (+i + 1));
        }
        // source line 150, bytecode pc 169
        (this.m_dataSource = _dataSource);
    } else {
        // source line 152, bytecode pc 184
        (this.m_dataSource = dataSource);
    }
},
    initDataSource: function() {
    var pkIds, i, length, param, dataSource;
    // source line 158, bytecode pc 8
    (pkIds = []);
    if ((this.cardType === xs.Views.Dialog.ReplaceCardDialog_Type_BattlePlayer)) {
        // source line 161, bytecode pc 52
        (this.m_dataSource = []);
        // source line 162, bytecode pc 57
        (i = 0);
        while ((i < this.m_hideData.length)) {
            // source line 163, bytecode pc 100
            pkIds.push(this.m_hideData[i].getPlayerId());
            // source line 162, bytecode pc 113
            (i = (+i + 1));
        }
        if (this.m_replaceData) {
            // source line 166, bytecode pc 178
            pkIds.push(this.m_replaceData.getPlayerId());
        }
    } else {
        if ((this.cardType === xs.Views.Dialog.ReplaceCardDialog_Type_HuLaoBattle)) {
            // source line 171, bytecode pc 227
            (this.m_dataSource = []);
            // source line 172, bytecode pc 237
            (pkIds = this.m_hideData);
        } else {
            // source line 176, bytecode pc 257
            (length = this.m_dataSource.length);
            // source line 177, bytecode pc 281
            this.m_dataSource.splice(0, length);
            // source line 179, bytecode pc 286
            (i = 0);
            while ((i < this.m_hideData.length)) {
                // source line 180, bytecode pc 329
                pkIds.push(this.m_hideData[i].getPkId());
                // source line 179, bytecode pc 342
                (i = (+i + 1));
            }
            if (this.m_replaceData) {
                // source line 184, bytecode pc 407
                pkIds.push(this.m_replaceData.getPkId());
            }
        }
    }
    // source line 188, bytecode pc 417
    (param = {});
    // source line 189, bytecode pc 429
    (param.uncludeList = pkIds);
    // source line 190, bytecode pc 444
    (param.filterType = this.m_filterType);
    // source line 191, bytecode pc 459
    (param.filterResult = this.m_filterResult);
    if (this.m_onGeneralData) {
        // source line 193, bytecode pc 496
        (param.general_pk_id = this.m_onGeneralData.getPkId());
    }
    if (this.m_plugin.ReplaceCardList_Plugin_getPosition) {
        // source line 196, bytecode pc 538
        (param.pos = this.m_plugin.ReplaceCardList_Plugin_getPosition());
    }
    // source line 200, bytecode pc 563
    (dataSource = this.m_plugin.ReplaceCardList_Plugin_dataSource(param));
    // source line 201, bytecode pc 580
    this.setDataSource(dataSource);
},
    updateView: function() {
    var title;
    // source line 204, bytecode pc 8
    (title = "");
    if (this.m_replaceData) {
        // source line 206, bytecode pc 40
        (title = this.m_plugin.ReplaceCardList_Plugin_title());
    } else {
        // source line 208, bytecode pc 66
        (title = this.m_plugin.ReplaceCardList_Plugin_title_ep());
    }
    // source line 211, bytecode pc 88
    this.m_titleLab.setString(title);
},
    selectWithFiterIdx: function(filterIdx) {
    var idx;
    // source line 216, bytecode pc 24
    (idx = this.m_sortBtn.getIdxForFilterIdx(filterIdx));
    if ((idx != -1)) {
        // source line 218, bytecode pc 59
        this.m_sortBtn.onSelectCell(idx, true);
    } else {
        // source line 221, bytecode pc 86
        this.m_sortBtn.onSelectCell(0, true);
    }
},
    ReplaceCardCell_btnCallback: function(data) {
    if (this.m_listener) {
        // source line 229, bytecode pc 32
        this.m_listener.ReplaceCardList_replaceCallback(data);
    }
},
    ReplaceCardCell_iconBtnCallback: function(data) {
    // source line 233, bytecode pc 21
    this.m_plugin.ReplaceCardList_Plugin_showDetail(data);
},
    scrollViewDidScroll: function() {
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
    var idx;
    // source line 240, bytecode pc 17
    (idx = cell.getIdx());
    if ((idx == this.m_dataSource.length)) {
        // source line 243, bytecode pc 62
        this.m_plugin.ReplaceCardList_Plugin_alterCallback(this.m_tableView);
    }
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 247, bytecode pc 23
    return cc.size(510, 110);
},
    tableCellAtIndex: function(table, idx) {
    var cell, data, alter, btnStr, specialEnabled;
    try {
        // source line 252, bytecode pc 18
        (cell = table.dequeueCell());
        if (!cell) {
            // source line 254, bytecode pc 48
            (cell = this.m_plugin.ReplaceCardList_Plugin_tableViewCell());
        }
        // source line 256, bytecode pc 53
        (data = null);
        if ((idx < this.m_dataSource.length)) {
            // source line 258, bytecode pc 87
            (data = this.m_dataSource[idx]);
        } else {
            // source line 260, bytecode pc 113
            (alter = this.m_plugin.ReplaceCardList_Plugin_getAlter());
            // source line 261, bytecode pc 132
            cell.setAlter(alter);
        }
        // source line 263, bytecode pc 149
        cell.setListener(this);
        // source line 264, bytecode pc 168
        cell.setCellData(data);
        if (cell.setOnGeneralData) {
            // source line 266, bytecode pc 203
            cell.setOnGeneralData(this.m_onGeneralData);
        }
        if ((idx === 0)) {
            // source line 269, bytecode pc 232
            cell.setSpGuideTag(3006);
        } else {
            // source line 271, bytecode pc 255
            cell.setSpGuideTag(-1);
        }
        // source line 273, bytecode pc 264
        (btnStr = "");
        if (this.m_replaceData) {
            // source line 275, bytecode pc 296
            (btnStr = this.m_plugin.ReplaceCardList_Plugin_btnStr());
        } else {
            // source line 277, bytecode pc 322
            (btnStr = this.m_plugin.ReplaceCardList_Plugin_btnStr_ep());
        }
        // source line 279, bytecode pc 341
        cell.setBtnString(btnStr);
        if ((this.m_plugin.ReplaceCardList_Plugin_btnSpecialEnabled && this.m_onGeneralData)) {
            // source line 282, bytecode pc 401
            (specialEnabled = this.m_plugin.ReplaceCardList_Plugin_btnSpecialEnabled(this.m_onGeneralData, data));
            // source line 283, bytecode pc 420
            cell.setBtnSpecialEnabled(specialEnabled);
        }
        // source line 286, bytecode pc 424
        return cell;
    } catch (e) {
        // source line 288, bytecode pc 466
        xs.warnException("ReplaceCardList", e);
        /* TODO_BYTECODE pc=467 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    numberOfCellsInTableView: function(table) {
    // source line 294, bytecode pc 13
    return (this.m_dataSource.length + 1);
}
}));
// source line 299, bytecode pc 309
(xs.Views.ReplaceCardList.create = function(cardType) {
    var node;
    // source line 300, bytecode pc 23
    (node = new xs.Views.ReplaceCardList());
    if ((node && node.init(cardType))) {
        // source line 302, bytecode pc 59
        return node;
    }
    // source line 304, bytecode pc 82
    xs.warn("xs.Views.ReplaceCardList.create error!");
    // source line 305, bytecode pc 84
    return null;
});
// source line 330, bytecode pc 521
(xs.Views.ReplaceCardList.cfg = {
    ccbCfg: [
        { name: "m_closeBtn", tag: 10, type: "btn", id: "Btn_Close" },
        { name: "m_titleLab", tag: 11, type: "ls", id: "LS_popUI4" },
        { name: "m_sortBtn", tag: 12 }
    ],
    m_closeBtn: { priority: -2 },
    m_tableView: { priority: -2 },
    m_sortBtn: { priority: -4 }
});
