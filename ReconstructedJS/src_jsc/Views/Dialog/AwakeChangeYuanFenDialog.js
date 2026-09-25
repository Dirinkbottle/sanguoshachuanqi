// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/AwakeChangeYuanFenDialog.js:1
// source line 171, bytecode pc 339
(xs.Views.Dialog.AwakeChangeYuanFenDialog = xs.Views.Dialog.CommonDialog.extend({
    name: "AwakeChangeYuanFenDialog",
    ccbCfg: [
        { tag: 101, type: "btn", name: "m_btnCancel", id: "Btn_btn1" },
        { tag: 102, type: "btn", name: "m_btnSure", id: "Btn_btn1" },
        { tag: 103, type: "btn", name: "m_btnClose", id: "Btn_Close" }
    ],
    loadCCBI: function() {
    var _visibleSize, _ccbNodeSize;
    // source line 19, bytecode pc 24
    (_visibleSize = xs.director.getVisibleSize());
    // source line 21, bytecode pc 75
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.AwakeChangeYuanFenDialog, this));
    // source line 22, bytecode pc 96
    (_ccbNodeSize = this._ccbNode.getContentSize());
    // source line 28, bytecode pc 216
    xs.Utils.Node.attachNodes(this, this._ccbNode, {
    desc: "lb",
    sc: true,
    offset: {
        x: ((_visibleSize.width - _ccbNodeSize.width) / 2),
        y: ((_visibleSize.height - _ccbNodeSize.height) / 2)
    }
});
    // source line 32, bytecode pc 224
    (this.m_btnClose = null);
    // source line 33, bytecode pc 232
    (this.m_btnCancel = null);
    // source line 34, bytecode pc 240
    (this.m_btnSure = null);
    // source line 36, bytecode pc 283
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 37, bytecode pc 334
    this.m_btnCancel.setString(xs.Tools.String.createString("1070610006"));
    // source line 38, bytecode pc 385
    this.m_btnSure.setString(xs.Tools.String.createString("btn_sure_change_yuanfen"));
    // source line 40, bytecode pc 423
    this.m_btnClose.setOnClickCallBack(this.onClose.bind(this));
    // source line 41, bytecode pc 461
    this.m_btnCancel.setOnClickCallBack(this.onClose.bind(this));
    // source line 78, bytecode pc 498
    this.m_btnSure.setOnClickCallBack(function() {
    var changeObj, i;
    if (this.m_isReadyChange) {
        // source line 47, bytecode pc 20
        (changeObj = {});
        // source line 48, bytecode pc 25
        (i = 0);
        while ((i < this.m_itemsState.length)) {
            if (((this.m_itemsState[i] != null) && this.m_itemsState[i].isChange)) {
                // source line 52, bytecode pc 104
                (changeObj[this.m_itemsState[i].key] = this.m_itemsState[i].state);
            }
            // source line 48, bytecode pc 118
            (i = (+i + 1));
        }
        // source line 70, bytecode pc 212
        xs.Tools.Net.requestEvolutionChangeYuanFen({ evolution_id: this.evolutionInfo.evolution_id, fate_ids: changeObj, ignoreRandEvent: true }, function(jsonObj, _modelMap) {
    // source line 65, bytecode pc 36
    xs.Scene.Mgr.saveStatus("GeneralCompound_RandEvent", _modelMap);
    // source line 68, bytecode pc 63
    xs.Views.Mgr.hideDialog();
    // source line 69, bytecode pc 123
    xs.Views.Mgr.showToast(xs.Tools.String.createString("evolution_yuanfen_changed"));
}, this);
    } else {
        // source line 74, bytecode pc 277
        xs.Views.Mgr.showToast(xs.Tools.String.createString("evolution_yuanfen_unchanged"));
    }
}.bind(this));
    // source line 82, bytecode pc 553
    (this.m_tableView = cc.TableView.create(this, cc.size(674, 300)));
    // source line 83, bytecode pc 582
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 84, bytecode pc 623
    this.m_tableView.setPosition(cc.p(42, 110));
    // source line 86, bytecode pc 643
    this.m_tableView.setDelegate(this);
    // source line 87, bytecode pc 672
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 88, bytecode pc 697
    this._ccbNode.addChild(this.m_tableView);
    // source line 89, bytecode pc 715
    this.m_tableView.reloadData();
    // source line 91, bytecode pc 723
    (this._allData = null);
},
    onCallBackChange: function(jsonObj) {
    // source line 95, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    showDialog: function(fateIds, evolutionInfo) {
    // source line 99, bytecode pc 22
    xs.log("showDialog");
    // source line 101, bytecode pc 32
    (this.fateIds = fateIds);
    // source line 102, bytecode pc 42
    (this.evolutionInfo = evolutionInfo);
    // source line 104, bytecode pc 66
    (this.addValueYuanfen = this.evolutionInfo.getAllYuanVaule());
    if (((this.fateIds != null) && (this.fateIds.length > 0))) {
        // source line 110, bytecode pc 118
        this.initTable(this.fateIds);
    }
},
    onEnter: function() {
},
    onExit: function() {
},
    onClose: function() {
    // source line 120, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    setBaseTouchPriority: function(priority) {
    // source line 122, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 123, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 124, bytecode pc 56
    this.m_btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 125, bytecode pc 83
    this.m_btnSure.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 126, bytecode pc 110
    this.m_btnCancel.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 127, bytecode pc 137
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    initTable: function(fateIds) {
    // source line 133, bytecode pc 22
    xs.log_ck("initTable");
    // source line 144, bytecode pc 32
    (this._allData = fateIds);
    // source line 146, bytecode pc 50
    this.m_tableView.reloadData();
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 149, bytecode pc 23
    return cc.size(674, 100);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 153, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 155, bytecode pc 62
        (cell = xs.Views.AwakeYuanFenTableCell.create(this, idx));
        // source line 156, bytecode pc 84
        cell.setBaseTouchPriority(this.m_baseTouchPriority);
    }
    // source line 162, bytecode pc 117
    cell.update(this._allData[idx], this.addValueYuanfen);
    // source line 163, bytecode pc 121
    return cell;
},
    numberOfCellsInTableView: function(table) {
    var length;
    // source line 166, bytecode pc 4
    (length = 0);
    if ((this._allData != null)) {
        // source line 168, bytecode pc 32
        (length = this._allData.length);
    }
    // source line 170, bytecode pc 36
    return length;
},
    onLocalChangeData: function(index, isChange, state, key) {
    var i;
    // source line 173, bytecode pc 7
    (this.m_isReadyChange = false);
    if ((this.m_itemsState == null)) {
        // source line 176, bytecode pc 50
        (this.m_itemsState = new Array(this.numberOfCellsInTableView()));
    }
    // source line 179, bytecode pc 91
    (this.m_itemsState[index] = { isChange: isChange, state: state, key: key });
    if (isChange) {
        // source line 182, bytecode pc 109
        (this.m_isReadyChange = isChange);
    } else {
        // source line 185, bytecode pc 122
        (this.m_isReadyChange = false);
        // source line 186, bytecode pc 127
        (i = 0);
        while ((i < this.m_itemsState.length)) {
            if (((this.m_itemsState[i] != null) && this.m_itemsState[i].isChange)) {
                // source line 190, bytecode pc 179
                (this.m_isReadyChange = true);
                break;
            }
            // source line 186, bytecode pc 198
            (i = (+i + 1));
        }
    }
}
}));
// source line 200, bytecode pc 370
(xs.Views.Dialog.AwakeChangeYuanFenDialog.create = function(fateIds, evolutionInfo) {
    var obj;
    // source line 202, bytecode pc 28
    (obj = new xs.Views.Dialog.AwakeChangeYuanFenDialog());
    if ((obj && obj.init())) {
        // source line 204, bytecode pc 79
        obj.showDialog(fateIds, evolutionInfo);
        // source line 206, bytecode pc 83
        return obj;
    }
    // source line 208, bytecode pc 131
    xs.error((((" xs.Views.Dialog.AwakeInfoDialog.create error, " + obj) + ",") + obj.init()));
    // source line 209, bytecode pc 133
    return null;
});
// source line 215, bytecode pc 450
xs.Views.Mgr.registerDialog("AwakeChangeYuanFenDialog", { "class": xs.Views.Dialog.AwakeChangeYuanFenDialog, styleType: xs.Constant_DlgStyleType_Large });
// source line 393, bytecode pc 999
(xs.Views.AwakeYuanFenTableCell = cc.TableViewCell.extend({
    ccbCfg: [
        { tag: 104, type: "ls", name: "m_yuanfenName1", id: "LS_yuanfenInf2" },
        { tag: 105, type: "ls", name: "m_yuanfenDesc1", id: "LS_qiangduo_time" },
        { tag: 107, type: "ls", name: "m_yuanfenSXJC1", id: "LS_SXJC" },
        { tag: 204, type: "ls", name: "m_yuanfenName2", id: "LS_yuanfenInf2" },
        { tag: 205, type: "ls", name: "m_yuanfenDesc2", id: "LS_qiangduo_time" },
        { tag: 207, type: "ls", name: "m_yuanfenSXJC2", id: "LS_SXJC" },
        { tag: 208, type: "ls", name: "m_unOpen", id: "LS_yuanfenInf1" }
    ],
    ccgTag: { icon1: { tag: 1 }, icon2: { tag: 2 }, icon3: { tag: 3 }, stateBg: { tag: 6 } },
    ctor: function() {
    // source line 236, bytecode pc 12
    this._super();
    // source line 237, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(dialog, index) {
    var centerY, _ccbNodeSize, leftPosition, rightPosition;
    if (!this._super()) {
        // source line 241, bytecode pc 19
        return false;
    }
    // source line 243, bytecode pc 29
    (this.dialog = dialog);
    // source line 244, bytecode pc 39
    (this.index = index);
    // source line 245, bytecode pc 45
    (centerY = 40);
    // source line 246, bytecode pc 96
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.AwakeChangeYuanFenView, this));
    // source line 247, bytecode pc 117
    (_ccbNodeSize = this._ccbNode.getContentSize());
    // source line 249, bytecode pc 170
    xs.Utils.Node.attachNodes(this, this._ccbNode, { desc: "c" });
    // source line 252, bytecode pc 213
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 254, bytecode pc 264
    this.m_yuanfenSXJC1.setString(xs.Tools.String.createString("auto_name_368"));
    // source line 255, bytecode pc 315
    this.m_yuanfenSXJC2.setString(xs.Tools.String.createString("auto_name_368"));
    // source line 256, bytecode pc 366
    this.m_unOpen.setString(xs.Tools.String.createString("txt_unopen"));
    // source line 257, bytecode pc 386
    this.m_unOpen.setVisible(false);
    // source line 259, bytecode pc 427
    this.m_yuanfenDesc1.setDimensions(cc.size(300, 0));
    // source line 260, bytecode pc 468
    this.m_yuanfenDesc2.setDimensions(cc.size(300, 0));
    // source line 264, bytecode pc 520
    (leftPosition = this._ccbNode.getChildByTag((100 + this.ccgTag.icon1.tag)).getPosition());
    // source line 265, bytecode pc 573
    (rightPosition = this._ccbNode.getChildByTag((200 + this.ccgTag.icon1.tag)).getPosition());
    // source line 266, bytecode pc 629
    (this.leftBtn = xs.Views.Btn.createInvisible(cc.size(38, 38)));
    // source line 273, bytecode pc 752
    xs.Utils.Node.attachNodes(this._ccbNode, this.leftBtn, {
    desc: "c",
    offset: cc.p(((-_ccbNodeSize.width / 2) + leftPosition.x), ((-_ccbNodeSize.height / 2) + leftPosition.y))
});
    // source line 276, bytecode pc 789
    this.leftBtn.setOnClickCallBack(function() {
    // source line 275, bytecode pc 14
    this.onSwitch(0);
}.bind(this));
    // source line 278, bytecode pc 845
    (this.rightBtn = xs.Views.Btn.createInvisible(cc.size(38, 38)));
    // source line 281, bytecode pc 968
    xs.Utils.Node.attachNodes(this._ccbNode, this.rightBtn, {
    desc: "c",
    offset: cc.p(((-_ccbNodeSize.width / 2) + rightPosition.x), ((-_ccbNodeSize.height / 2) + rightPosition.y))
});
    // source line 285, bytecode pc 1005
    this.rightBtn.setOnClickCallBack(function() {
    // source line 284, bytecode pc 14
    this.onSwitch(1);
}.bind(this));
    // source line 288, bytecode pc 1007
    return true;
},
    onEnter: function() {
    // source line 292, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 295, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 299, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    if (this.leftBtn) {
        // source line 304, bytecode pc 47
        this.leftBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    }
    if (this.rightBtn) {
        // source line 307, bytecode pc 85
        this.rightBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    }
},
    onSwitch: function(state) {
    var isChanged;
    // source line 310, bytecode pc 26
    xs.log_ck(("onSwicth:" + state));
    // source line 311, bytecode pc 56
    xs.log_ck(("oldSwitch:" + this.ctState));
    if ((this.isUnOpen && (state == 1))) {
        // source line 314, bytecode pc 80
        return void 0;
    }
    if ((this.nowState != state)) {
        // source line 317, bytecode pc 109
        (isChanged = (this.ctState != state));
        // source line 318, bytecode pc 149
        this.dialog.onLocalChangeData(this.index, isChanged, state, this.leftData);
        // source line 319, bytecode pc 159
        (this.nowState = state);
        // source line 320, bytecode pc 172
        this.refreshUI();
    }
},
    refreshUI: function() {
    var leftData, rightData, leftState, leftId, rightId, rightState, leftFate, rightFate;
    // source line 325, bytecode pc 29
    xs.log_ck(("refreshUI item " + this.leftData));
    // source line 327, bytecode pc 39
    (leftData = this.leftData);
    // source line 328, bytecode pc 49
    (rightData = this.rightData);
    // source line 332, bytecode pc 61
    (leftState = (this.nowState == 0));
    // source line 333, bytecode pc 67
    (leftId = 100);
    // source line 334, bytecode pc 74
    (rightId = 200);
    // source line 335, bytecode pc 86
    (rightState = (this.nowState == 1));
    // source line 337, bytecode pc 108
    this.m_yuanfenSXJC1.setVisible(leftState);
    // source line 338, bytecode pc 162
    xs.Utils.setNodeVisible(this._ccbNode, (leftId + this.ccgTag.stateBg.tag), leftState);
    // source line 339, bytecode pc 216
    xs.Utils.setNodeVisible(this._ccbNode, (leftId + this.ccgTag.icon1.tag), leftState);
    // source line 340, bytecode pc 270
    xs.Utils.setNodeVisible(this._ccbNode, (leftId + this.ccgTag.icon2.tag), leftState);
    // source line 341, bytecode pc 325
    xs.Utils.setNodeVisible(this._ccbNode, (leftId + this.ccgTag.icon3.tag), !leftState);
    if (leftData) {
        // source line 345, bytecode pc 367
        (leftFate = xs.Models.Fate.createWithBase(leftData));
        // source line 346, bytecode pc 400
        this.m_yuanfenName1.setString(leftFate.getNameString());
        if ((this.addValueYuanfen > 0)) {
            // source line 349, bytecode pc 465
            this.m_yuanfenDesc1.setString((((leftFate.getDescString() + "(+") + this.addValueYuanfen) + "%)"));
        } else {
            // source line 352, bytecode pc 503
            this.m_yuanfenDesc1.setString(leftFate.getDescString());
        }
    }
    // source line 356, bytecode pc 525
    this.m_yuanfenSXJC2.setVisible(rightState);
    // source line 357, bytecode pc 579
    xs.Utils.setNodeVisible(this._ccbNode, (rightId + this.ccgTag.stateBg.tag), rightState);
    // source line 358, bytecode pc 633
    xs.Utils.setNodeVisible(this._ccbNode, (rightId + this.ccgTag.icon1.tag), rightState);
    // source line 359, bytecode pc 687
    xs.Utils.setNodeVisible(this._ccbNode, (rightId + this.ccgTag.icon2.tag), rightState);
    // source line 360, bytecode pc 742
    xs.Utils.setNodeVisible(this._ccbNode, (rightId + this.ccgTag.icon3.tag), !rightState);
    if (rightData) {
        // source line 364, bytecode pc 784
        (rightFate = xs.Models.Fate.createWithBase(rightData));
        // source line 365, bytecode pc 817
        this.m_yuanfenName2.setString(rightFate.getNameString());
        if ((this.addValueYuanfen > 0)) {
            // source line 368, bytecode pc 882
            this.m_yuanfenDesc2.setString((((rightFate.getDescString() + "(+") + this.addValueYuanfen) + "%)"));
        } else {
            // source line 371, bytecode pc 920
            this.m_yuanfenDesc2.setString(rightFate.getDescString());
        }
    } else {
        // source line 375, bytecode pc 949
        this.m_yuanfenName2.setString("");
        // source line 376, bytecode pc 973
        this.m_yuanfenDesc2.setString("");
    }
    if (this.isUnOpen) {
        // source line 381, bytecode pc 1035
        this.m_yuanfenSXJC1.setString(xs.Tools.String.createString("txt_selectd"));
        // source line 382, bytecode pc 1055
        this.m_unOpen.setVisible(true);
    } else {
        // source line 386, bytecode pc 1111
        this.m_yuanfenSXJC1.setString(xs.Tools.String.createString("auto_name_368"));
        // source line 387, bytecode pc 1131
        this.m_unOpen.setVisible(false);
    }
},
    update: function(param, addValueYuanfen) {
    // source line 397, bytecode pc 14
    (this.leftData = param.left);
    // source line 398, bytecode pc 29
    (this.rightData = param.right);
    // source line 399, bytecode pc 44
    (this.ctState = param.now);
    // source line 400, bytecode pc 57
    (this.nowState = this.ctState);
    // source line 401, bytecode pc 72
    (this.isUnOpen = (this.rightData == null));
    // source line 402, bytecode pc 89
    (this.addValueYuanfen = (addValueYuanfen || 0));
    // source line 403, bytecode pc 102
    this.refreshUI();
}
}));
// source line 409, bytecode pc 1025
(xs.Views.AwakeYuanFenTableCell.create = function(dialog, index) {
    var cell;
    // source line 410, bytecode pc 23
    (cell = new xs.Views.AwakeYuanFenTableCell());
    if ((cell && cell.init(dialog, index))) {
        // source line 412, bytecode pc 63
        return cell;
    }
    // source line 414, bytecode pc 65
    return null;
});
