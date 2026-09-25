// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Gems/GemsBagView.js:1
// source line 94, bytecode pc 408
(xs.Views.Gems.GemsBagViewCell = cc.TableViewCell.extend({
    ccbCfg: [
        { name: "m_labelName", tag: 2, type: "ls_ext", ids: [ "LS_paihangNomb", "LS_yishangzhen" ] },
        { name: "m_iconPos", tag: 1 },
        { name: "m_labelDes", tag: 3, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_labelQuantity", tag: 4, type: "ls_ext", ids: [ "LS_liebiaoInf", "LS_green" ] },
        { name: "m_operationBtn", tag: 5, type: "btn", id: "Btn_btn3", stringId: "gems_str_goInlay" }
    ],
    draw: function(ctx) {
    // source line 12, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 16, bytecode pc 12
    this._super();
    // source line 17, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 22, bytecode pc 19
        return false;
    }
    // source line 25, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 26, bytecode pc 35
    (this.m_listener = null);
    // source line 28, bytecode pc 43
    (this.m_ccbNode = null);
    // source line 29, bytecode pc 51
    (this.m_nameLab = null);
    // source line 30, bytecode pc 59
    (this.m_iconPos = null);
    // source line 31, bytecode pc 67
    (this.m_labelDes = null);
    // source line 32, bytecode pc 75
    (this.m_labelQuantity = null);
    // source line 33, bytecode pc 83
    (this.m_operationBtn = null);
    // source line 36, bytecode pc 134
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.GemsReolaceSoph, this));
    // source line 37, bytecode pc 170
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 40, bytecode pc 213
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 42, bytecode pc 251
    this.m_operationBtn.setOnClickCallBack(this.onTouchCallBack.bind(this));
    // source line 43, bytecode pc 271
    this.m_operationBtn.setSwallowTouch(false);
    // source line 44, bytecode pc 291
    this.m_operationBtn.setZoomOnTouchDown(false);
    // source line 46, bytecode pc 293
    return true;
},
    onTouchCallBack: function() {
    var _level;
    // source line 50, bytecode pc 61
    (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
    if ((_level < 40)) {
        // source line 52, bytecode pc 132
        xs.Views.Mgr.showToast(xs.Tools.String.createString("gem_baoshi_suoding"));
        // source line 53, bytecode pc 134
        return void 0;
    }
    if (!xs.isShowGem) {
        // source line 56, bytecode pc 210
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_51"));
        // source line 57, bytecode pc 212
        return void 0;
    }
    // source line 59, bytecode pc 258
    xs.Scene.Mgr.changeSceneByName("GemsScene", { index: 1 });
},
    setBaseTouchPriority: function(priority) {
    // source line 65, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 67, bytecode pc 36
    this.m_operationBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    setListener: function(listener) {
    // source line 72, bytecode pc 9
    (this.m_listener = listener);
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 76, bytecode pc 12
    this._super();
    // source line 78, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 81, bytecode pc 63
            (this.m_parentView = parent);
            // source line 82, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 84, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 87, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 91, bytecode pc 12
    this._super();
},
    update: function(par, num) {
    var mCellDate, mUsedNum, mUserStr, mIconPos, isnewState;
    // source line 95, bytecode pc 9
    (this.par = par);
    // source line 96, bytecode pc 19
    (this.num = num);
    // source line 97, bytecode pc 46
    xs.log_hsq(("----" + num));
    // source line 99, bytecode pc 65
    (mCellDate = this.par.m_gemsList[num]);
    // source line 101, bytecode pc 83
    (mUsedNum = mCellDate.getUsedNum());
    // source line 102, bytecode pc 110
    xs.log_hsq("mUsedNum", mUsedNum);
    // source line 103, bytecode pc 119
    (mUserStr = "");
    if ((0 == mUsedNum)) {
        // source line 105, bytecode pc 138
        (mUserStr = "");
    } else {
        // source line 107, bytecode pc 192
        (mUserStr = xs.Tools.String.createStringWithArgsArray("gems_str_gemsInlayNum", [ mUsedNum ]));
    }
    // source line 110, bytecode pc 219
    xs.log_hsq("mUsedNum09", mUserStr);
    // source line 113, bytecode pc 268
    this.m_labelName.setStringByStrings([ mCellDate.getNameString(), mUserStr ]);
    // source line 115, bytecode pc 291
    xs.log_hsq("mUsedNum10");
    // source line 118, bytecode pc 324
    this.m_labelDes.setString(mCellDate.getDescString());
    // source line 120, bytecode pc 402
    this.m_labelQuantity.setStringByStrings([ xs.Tools.String.createString("gems_str_quantity"), mCellDate.getQuantity() ]);
    if (!this.m_icon) {
        // source line 123, bytecode pc 437
        xs.log_hsq("mUsedNum101");
        // source line 124, bytecode pc 458
        (mIconPos = this.m_iconPos.getPosition());
        // source line 125, bytecode pc 479
        (this.m_icon = mCellDate.createIcon_GradeAndAttribute());
        // source line 126, bytecode pc 520
        xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_icon);
        // source line 127, bytecode pc 542
        this.m_icon.setPosition(mIconPos);
        // source line 130, bytecode pc 587
        (this.newPoint = xs.Factorys.Sprite.create("icon_lt_propNew", "Cmn02"));
        // source line 135, bytecode pc 693
        xs.Utils.Node.attachNodes(this.m_icon, this.newPoint, { desc: "rt", offset: cc.p(38, 38) }, { zOrder: 12, tag: 12 });
    } else {
        // source line 139, bytecode pc 721
        xs.log_hsq("mUsedNum102");
        // source line 140, bytecode pc 743
        this.m_icon.reloadData(mCellDate);
    }
    // source line 142, bytecode pc 766
    xs.log_hsq("mUsedNum12");
    // source line 147, bytecode pc 784
    (isnewState = mCellDate.getNewStatus());
    if (!isnewState) {
        // source line 150, bytecode pc 813
        this.newPoint.setVisible(false);
    } else {
        // source line 153, bytecode pc 838
        this.newPoint.setVisible(true);
    }
}
}));
// source line 162, bytecode pc 439
(xs.Views.Gems.GemsBagViewCell.create = function() {
    var cell;
    // source line 163, bytecode pc 28
    (cell = new xs.Views.Gems.GemsBagViewCell());
    if ((cell && cell.init())) {
        // source line 165, bytecode pc 60
        return cell;
    }
    // source line 168, bytecode pc 62
    return null;
});
// source line 335, bytecode pc 663
(xs.Views.Gems.GemsBagView = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 175, bytecode pc 12
    this._super();
    // source line 176, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var visibleSize;
    // source line 180, bytecode pc 12
    this._super();
    // source line 182, bytecode pc 24
    (this.m_gemsList = []);
    // source line 184, bytecode pc 37
    (this.m_isNewDic = {});
    // source line 187, bytecode pc 62
    (visibleSize = xs.director.getVisibleSize());
    // source line 188, bytecode pc 102
    (this.m_defaultSize = cc.size(882, (visibleSize.height - 152)));
    // source line 190, bytecode pc 139
    (this.m_tableView = cc.TableView.create(this, this.m_defaultSize));
    // source line 191, bytecode pc 168
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 192, bytecode pc 188
    this.m_tableView.setDelegate(this);
    // source line 193, bytecode pc 217
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 195, bytecode pc 298
    xs.Utils.Node.attachNodes(this, this.m_tableView, { desc: "lb", offset: { x: -0, y: 20 } });
    // source line 197, bytecode pc 311
    this._readPlayerList();
    // source line 198, bytecode pc 329
    this.m_tableView.reloadData();
    // source line 201, bytecode pc 349
    this.reloadTableViewPositionY(this.m_tableView);
    // source line 204, bytecode pc 351
    return true;
},
    _updateDate: function() {
    var offset, size;
    // source line 209, bytecode pc 22
    xs.log_hsq("_updateDate11");
    // source line 210, bytecode pc 35
    this._readPlayerList();
    // source line 213, bytecode pc 78
    (offset = xs.Utils.clone(this.m_tableView.getContentOffset()));
    // source line 216, bytecode pc 96
    this.m_tableView.reloadData();
    // source line 218, bytecode pc 150
    (size = xs.Utils.clone(this.m_tableView.getContainer().getContentSize()));
    if ((this.m_defaultSize.height < size.height)) {
        if (((this.m_defaultSize.height - offset.y) < size.height)) {
            // source line 221, bytecode pc 233
            this.m_tableView.setContentOffset(offset, 0);
        }
    }
    if (this.m_tableView) {
        // source line 225, bytecode pc 264
        this.reloadTableViewPositionY(this.m_tableView);
    }
},
    _readPlayerList: function() {
    // source line 232, bytecode pc 53
    (this.m_gemsList = xs.Profile.GameData.Mgr.getInstance().Gems.getAll());
},
    onEnterTransitionDidFinish: function() {
    // source line 236, bytecode pc 12
    this._super();
},
    setGemListStatus: function() {
    var key, _idx;
    for (var key in this.m_isNewDic) {
        if (!(this.m_isNewDic.hasOwnProperty(key))) continue;
        // source line 244, bytecode pc 58
        (_idx = this.m_isNewDic[key]);
        if (!(this.m_gemsList[_idx])) continue;
        // source line 246, bytecode pc 97
        this.m_gemsList[_idx].setNewStatus(false);
    }
},
    onExitTransitionDidStart: function() {
    // source line 252, bytecode pc 12
    this._super();
    // source line 256, bytecode pc 35
    xs.log_hsq("onExitTransitionDidStart end11");
},
    onExit: function() {
    // source line 260, bytecode pc 12
    this._super();
},
    reloadTableViewPositionY: function(table) {
    var _length, _idx, i, y;
    // source line 263, bytecode pc 14
    (_length = this.m_gemsList.length);
    // source line 264, bytecode pc 19
    (_idx = 0);
    // source line 265, bytecode pc 24
    (i = 0);
    while ((i < this.m_gemsList.length)) {
        if (this.m_gemsList[i].getStatus()) {
            // source line 267, bytecode pc 63
            (_idx = i);
            break;
        }
        // source line 265, bytecode pc 83
        i++;
    }
    // source line 271, bytecode pc 130
    (y = (((_length - _idx) * 107) - this.m_defaultSize.height));
    // source line 272, bytecode pc 169
    table.setContentOffset(cc.p(0, -y));
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function(view) {
},
    tableCellTouched: function(table, cell) {
},
    refreshPlayerList: function() {
    var pos, offset, size;
    // source line 290, bytecode pc 53
    (pos = xs.Utils.clone(this.m_tableView.getContainer().getPosition()));
    // source line 291, bytecode pc 96
    (offset = xs.Utils.clone(this.m_tableView.getContentOffset()));
    // source line 293, bytecode pc 114
    this.m_tableView.reloadData();
    // source line 295, bytecode pc 168
    (size = xs.Utils.clone(this.m_tableView.getContainer().getContentSize()));
    if ((this.m_defaultSize.height < size.height)) {
        if (((this.m_defaultSize.height - offset.y) >= size.height)) {
            // source line 298, bytecode pc 229
            return void 0;
        }
        // source line 300, bytecode pc 253
        this.m_tableView.setContentOffset(offset, 0);
    }
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 305, bytecode pc 23
    return cc.size(882, 107);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 312, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 314, bytecode pc 61
        (cell = xs.Views.Gems.GemsBagViewCell.create());
    } else {
        if (this.m_gemsList[idx].getStatus()) {
            // source line 317, bytecode pc 106
            (this.m_isNewDic[idx] = idx);
        }
    }
    // source line 321, bytecode pc 127
    cell.update(this, idx);
    // source line 324, bytecode pc 131
    return cell;
},
    setBaseTouchPriority: function(priority) {
    // source line 328, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 330, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 331, bytecode pc 56
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    numberOfCellsInTableView: function(table) {
    // source line 336, bytecode pc 11
    return this.m_gemsList.length;
}
}));
// source line 342, bytecode pc 694
(xs.Views.Gems.GemsBagView.create = function() {
    var retObj;
    // source line 343, bytecode pc 28
    (retObj = new xs.Views.Gems.GemsBagView());
    if ((retObj && retObj.init())) {
        // source line 345, bytecode pc 60
        return retObj;
    }
    // source line 347, bytecode pc 62
    return null;
});
