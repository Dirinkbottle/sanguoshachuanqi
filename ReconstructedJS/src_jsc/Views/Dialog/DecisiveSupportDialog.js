// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/DecisiveSupportDialog.js:1
// source line 188, bytecode pc 955
(xs.Views.Dialog.DecisiveSupportDialog = xs.Views.HungerLayer.extend({
    name: "DecisiveSupportDialog",
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    cfg: { btnClose: { tag: -1 }, ccbCfg: [ { tag: 2, type: "btn", name: "m_closeBtn", id: "Btn_Close" } ] },
    ccbCfg_first: [
        { name: "l_LunCi", tag: 1, type: "ls", id: "LS_popUI4" },
        { name: "l_ChangCi", tag: 2, type: "ls", id: "LS_popUI4" },
        { name: "l_Name", tag: 3, type: "ls", id: "LS_wujiangName1" },
        { name: "l_LV", tag: 4, type: "ls", id: "LS_yuanfenInf2" },
        { name: "l_RenQi", tag: 5, type: "ls", id: "LS_liebiaoInf2" },
        { name: "m_btnShow", tag: 6, type: "btn", id: "Btn_btn3", stringId: "str_ActivityZhenRongDesc" },
        { name: "m_btnSupport", tag: 7, type: "btn", id: "Btn_btn3", stringId: "decisive_support_button" }
    ],
    ccbCfg_second: [
        { name: "_l_LunCi", tag: 1, type: "ls", id: "LS_popUI4" },
        { name: "_l_ChangCi", tag: 2, type: "ls", id: "LS_popUI4" },
        { name: "_l_Name", tag: 3, type: "ls", id: "LS_wujiangName1" },
        { name: "_l_LV", tag: 4, type: "ls", id: "LS_yuanfenInf2" },
        { name: "_l_RenQi", tag: 5, type: "ls", id: "LS_liebiaoInf2" },
        { name: "_m_btnShow", tag: 6, type: "btn", id: "Btn_btn3", stringId: "str_ActivityZhenRongDesc" },
        { name: "_m_btnSupport", tag: 7, type: "btn", id: "Btn_btn3", stringId: "decisive_support_button" }
    ],
    init: function(params) {
    // source line 39, bytecode pc 12
    this._super();
    // source line 41, bytecode pc 22
    (this.params = params);
    // source line 43, bytecode pc 30
    (this.ccbNode = null);
    // source line 44, bytecode pc 38
    (this.m_ccbNode_first = null);
    // source line 45, bytecode pc 46
    (this.m_ccbNode_second = null);
    // source line 48, bytecode pc 54
    (this.l_LunCi = null);
    // source line 49, bytecode pc 62
    (this.l_ChangCi = null);
    // source line 50, bytecode pc 70
    (this.l_Name = null);
    // source line 51, bytecode pc 78
    (this.l_LV = null);
    // source line 52, bytecode pc 86
    (this.l_RenQi = null);
    // source line 53, bytecode pc 94
    (this.m_btnShow = null);
    // source line 54, bytecode pc 102
    (this.m_btnSupport = null);
    // source line 56, bytecode pc 110
    (this._l_LunCi = null);
    // source line 57, bytecode pc 118
    (this._l_ChangCi = null);
    // source line 58, bytecode pc 126
    (this._l_Name = null);
    // source line 59, bytecode pc 134
    (this._l_LV = null);
    // source line 60, bytecode pc 142
    (this._l_RenQi = null);
    // source line 61, bytecode pc 150
    (this._m_btnShow = null);
    // source line 62, bytecode pc 158
    (this._m_btnSupport = null);
    // source line 65, bytecode pc 209
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DecisiveSupportDialog, this));
    // source line 66, bytecode pc 252
    this.ccbNode.setContentSize(cc.size(700, 450));
    // source line 67, bytecode pc 299
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 68, bytecode pc 352
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 70, bytecode pc 360
    (this.m_closeBtn = null);
    // source line 71, bytecode pc 408
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 73, bytecode pc 432
    this.m_closeBtn.setOnClickCallBack(function() {
    // source line 74, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 79, bytecode pc 447
    (this.m_List = params.list);
    // source line 80, bytecode pc 462
    (this.m_idx = params.idx);
    // source line 81, bytecode pc 477
    (this.m_local = params.local);
    // source line 84, bytecode pc 528
    (this.m_ccbNode_first = xs.ccb_reader.load(xs.Cfg.CCBI.DecisiveSupportDialogCell, this));
    // source line 85, bytecode pc 612
    xs.Utils.Node.attachNodes(this.ccbNode, this.m_ccbNode_first, { desc: "lb", offset: { x: 40, y: 240 } });
    // source line 86, bytecode pc 655
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode_first, this.ccbCfg_first, this);
    // source line 88, bytecode pc 706
    (this.m_ccbNode_second = xs.ccb_reader.load(xs.Cfg.CCBI.DecisiveSupportDialogCell, this));
    // source line 89, bytecode pc 789
    xs.Utils.Node.attachNodes(this.ccbNode, this.m_ccbNode_second, { desc: "lb", offset: { x: 40, y: 100 } });
    // source line 90, bytecode pc 832
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode_second, this.ccbCfg_second, this);
    // source line 92, bytecode pc 845
    this.updateFirst();
    // source line 93, bytecode pc 858
    this.updatesSecond();
    // source line 95, bytecode pc 913
    this.m_btnShow.setOnClickCallBack(this._btnShowCallBack.bind({ self: this, tag: 0 }));
    // source line 96, bytecode pc 968
    this.m_btnSupport.setOnClickCallBack(this._btnSupportCallBack.bind({ self: this, tag: 0 }));
    // source line 97, bytecode pc 1023
    this._m_btnShow.setOnClickCallBack(this._btnShowCallBack.bind({ self: this, tag: 1 }));
    // source line 98, bytecode pc 1078
    this._m_btnSupport.setOnClickCallBack(this._btnSupportCallBack.bind({ self: this, tag: 1 }));
    // source line 100, bytecode pc 1080
    return true;
},
    onEnter: function() {
    // source line 104, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 107, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 111, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 112, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 113, bytecode pc 71
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.tag));
    // source line 114, bytecode pc 113
    this.m_btnShow.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.tag));
    // source line 115, bytecode pc 155
    this.m_btnSupport.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.tag));
    // source line 116, bytecode pc 197
    this._m_btnShow.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.tag));
    // source line 117, bytecode pc 239
    this._m_btnSupport.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.tag));
},
    _btnShowCallBack: function() {
    var self, tag;
    // source line 121, bytecode pc 15
    (self = this.self);
    // source line 122, bytecode pc 31
    (tag = this.tag);
    // source line 133, bytecode pc 151
    xs.Tools.Net.DecisiveGetOverview({ player_id: self.m_List[tag].uid }, self.m_local, function(jsonObj) {
    var _id, _info;
    // source line 129, bytecode pc 32
    (_id = self.m_List[tag].uid);
    // source line 130, bytecode pc 48
    (_info = jsonObj.info[_id]);
    // source line 131, bytecode pc 89
    xs.Views.Mgr.showDialogByName("TeamInfoDialog", _id, _info);
}.bind(self), self);
},
    _btnSupportCallBack: function() {
    var self, tag;
    // source line 137, bytecode pc 15
    (self = this.self);
    // source line 138, bytecode pc 25
    (tag = this.tag);
    // source line 157, bytecode pc 233
    xs.Tools.Net.DecisiveSupportPlayer({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    player_id: self.m_List[tag].uid,
    round: self.params.round,
    session: self.m_List[tag].session
}, self.m_local, function(jsonObj) {
    if (jsonObj.result) {
        // source line 150, bytecode pc 72
        xs.Views.Mgr.showToast(xs.Tools.String.createString("decisive_support_success"));
        // source line 151, bytecode pc 100
        self.m_btnSupport.setEnabled(false);
        // source line 152, bytecode pc 128
        self._m_btnSupport.setEnabled(false);
        // source line 153, bytecode pc 192
        xs.Utils.Notify.postNotification(xs.Constant_Notify_DecisiveBattle_support, { idx: self.m_idx });
    }
}, self);
},
    updateFirst: function() {
    var strArray, _strArray, server_id, nick;
    // source line 162, bytecode pc 8
    (strArray = []);
    // source line 163, bytecode pc 36
    (strArray[0] = (this.params.round || ""));
    // source line 164, bytecode pc 91
    this.l_LunCi.setString(xs.Tools.String.createStringWithArgsArray("DecisiveBattle_round", strArray));
    // source line 166, bytecode pc 100
    (_strArray = []);
    // source line 167, bytecode pc 130
    (_strArray[0] = (this.m_List[0].session || ""));
    // source line 168, bytecode pc 185
    this.l_ChangCi.setString(xs.Tools.String.createStringWithArgsArray("DecisiveBattle_session", _strArray));
    // source line 171, bytecode pc 213
    (server_id = (this.m_List[0].server_id || ""));
    // source line 172, bytecode pc 241
    (nick = (this.m_List[0].nick || ""));
    // source line 174, bytecode pc 273
    this.l_Name.setString((("S" + server_id) + nick));
    // source line 175, bytecode pc 305
    this.l_LV.setString(this.m_List[0].level);
    // source line 176, bytecode pc 337
    this.l_RenQi.setString(this.m_List[0].support_sum);
    if (!this.m_List[0].can_support) {
        // source line 180, bytecode pc 376
        this.m_btnSupport.setEnabled(false);
    }
    if (!this.m_List[0].can_overview) {
        // source line 184, bytecode pc 415
        this.m_btnShow.setEnabled(false);
    }
},
    updatesSecond: function() {
    var strArray, _strArray, server_id, nick;
    // source line 190, bytecode pc 8
    (strArray = []);
    // source line 191, bytecode pc 36
    (strArray[0] = (this.params.round || ""));
    // source line 192, bytecode pc 91
    this._l_LunCi.setString(xs.Tools.String.createStringWithArgsArray("DecisiveBattle_round", strArray));
    // source line 194, bytecode pc 100
    (_strArray = []);
    // source line 195, bytecode pc 130
    (_strArray[0] = (this.m_List[1].session || ""));
    // source line 196, bytecode pc 185
    this._l_ChangCi.setString(xs.Tools.String.createStringWithArgsArray("DecisiveBattle_session", _strArray));
    // source line 199, bytecode pc 213
    (server_id = (this.m_List[1].server_id || ""));
    // source line 200, bytecode pc 241
    (nick = (this.m_List[1].nick || ""));
    // source line 202, bytecode pc 273
    this._l_Name.setString((("S" + server_id) + nick));
    // source line 203, bytecode pc 305
    this._l_LV.setString(this.m_List[1].level);
    // source line 204, bytecode pc 337
    this._l_RenQi.setString(this.m_List[1].support_sum);
    if (!this.m_List[1].can_support) {
        // source line 208, bytecode pc 376
        this._m_btnSupport.setEnabled(false);
    }
    if (!this.m_List[1].can_overview) {
        // source line 212, bytecode pc 415
        this._m_btnShow.setEnabled(false);
    }
}
}));
// source line 218, bytecode pc 986
(xs.Views.Dialog.DecisiveSupportDialog.create = function(params) {
    var ret;
    // source line 219, bytecode pc 28
    (ret = new xs.Views.Dialog.DecisiveSupportDialog());
    if ((ret && ret.init(params))) {
        // source line 221, bytecode pc 64
        return ret;
    }
    // source line 223, bytecode pc 66
    return null;
});
// source line 230, bytecode pc 1111
xs.Views.Mgr.registerDialog("DecisiveSupportDialog", {
    "class": xs.Views.Dialog.DecisiveSupportDialog,
    styleType: xs.Constant_DlgStyleType_Large,
    dlgType: xs.Cfg.Scene.CommonScene.Dialog,
    viewType: xs.Constant_ViewType_Dlg
});
// source line 352, bytecode pc 1437
(xs.Views.Dialog.DecisiveSupportDialogFirst = xs.Views.HungerLayer.extend({
    name: "DecisiveSupportDialogFirst",
    ctor: function() {
    // source line 240, bytecode pc 12
    this._super();
    // source line 241, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    cfg: {
        btnClose: { tag: -1 },
        ccbCfg: [
            { tag: 1, type: "ls", name: "lblTitle", id: "LS_huodong_title" },
            { tag: 2, type: "btn", name: "m_closeBtn", id: "Btn_Close" }
        ]
    },
    init: function(params) {
    var _visibleSize, strArray;
    // source line 253, bytecode pc 12
    this._super();
    // source line 255, bytecode pc 22
    (this.m_params = params);
    // source line 256, bytecode pc 42
    (this.m_List = params.data.player_list);
    // source line 257, bytecode pc 57
    (this.m_round = params.round);
    // source line 258, bytecode pc 72
    (this.m_local = params.local);
    // source line 260, bytecode pc 80
    (this.m_closeBtn = null);
    // source line 262, bytecode pc 131
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.InterServicePointsDialog, this));
    // source line 263, bytecode pc 174
    this.ccbNode.setContentSize(cc.size(932, 614));
    // source line 264, bytecode pc 221
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 265, bytecode pc 274
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 267, bytecode pc 322
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 269, bytecode pc 346
    this.m_closeBtn.setOnClickCallBack(function() {
    // source line 270, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 274, bytecode pc 374
    (_visibleSize = cc.size(889, 530));
    // source line 276, bytecode pc 408
    (this.m_tableView = cc.TableView.create(this, _visibleSize));
    // source line 277, bytecode pc 437
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 278, bytecode pc 457
    this.m_tableView.setDelegate(this);
    // source line 279, bytecode pc 486
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 281, bytecode pc 569
    xs.Utils.Node.attachNodes(this.ccbNode, this.m_tableView, { desc: "lb", offset: { x: 16, y: 10 } });
    // source line 283, bytecode pc 587
    this.m_tableView.reloadData();
    // source line 286, bytecode pc 596
    (strArray = []);
    // source line 287, bytecode pc 632
    (strArray[0] = (params.round.toString() || ""));
    // source line 288, bytecode pc 701
    this.lblTitle.setString((xs.Tools.String.createStringWithArgsArray("DecisiveBattle_round", strArray) + params.data.round_name));
    // source line 290, bytecode pc 703
    return true;
},
    onEnter: function() {
    // source line 294, bytecode pc 12
    this._super();
    // source line 295, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.refreshDataAndView, xs.Constant_Notify_DecisiveBattle_support);
},
    onExit: function() {
    // source line 298, bytecode pc 12
    this._super();
    // source line 299, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_DecisiveBattle_support);
},
    setBaseTouchPriority: function(priority) {
    // source line 302, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 304, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 305, bytecode pc 56
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 306, bytecode pc 98
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.tag));
},
    refreshDataAndView: function(param) {
    // source line 310, bytecode pc 23
    (this.m_List[param.idx][0].can_support = false);
    // source line 311, bytecode pc 47
    (this.m_List[param.idx][1].can_support = false);
    // source line 313, bytecode pc 60
    this._updateDate();
},
    _updateDate: function() {
    if (!this.oldContentOffset) {
        // source line 318, bytecode pc 29
        this.m_tableView.reloadData();
        // source line 319, bytecode pc 53
        (this.oldContentOffset = this.m_tableView.getContentOffset());
    } else {
        // source line 321, bytecode pc 82
        (this.oldContentOffset = this.m_tableView.getContentOffset());
        // source line 322, bytecode pc 100
        this.m_tableView.reloadData();
        // source line 323, bytecode pc 125
        this.m_tableView.setContentOffset(this.oldContentOffset);
    }
    if ((this.oldContentOffset.y < this.m_tableView.minContainerOffset().y)) {
        // source line 327, bytecode pc 182
        this.m_tableView.reloadData();
    }
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function(view) {
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 339, bytecode pc 23
    return cc.size(620, 125);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 343, bytecode pc 21
    (cell = table.cellAtIndex(idx));
    if (!cell) {
        // source line 345, bytecode pc 65
        (cell = xs.Views.Dialog.DecisiveSupportDialogCellFirst.create());
    }
    // source line 347, bytecode pc 86
    cell.update(this, idx);
    // source line 350, bytecode pc 90
    return cell;
},
    numberOfCellsInTableView: function(table) {
    if (this.m_List) {
        // source line 354, bytecode pc 22
        return this.m_List.length;
    }
    // source line 356, bytecode pc 24
    return 0;
}
}));
// source line 360, bytecode pc 1468
(xs.Views.Dialog.DecisiveSupportDialogFirst.create = function(params) {
    var ret;
    // source line 361, bytecode pc 28
    (ret = new xs.Views.Dialog.DecisiveSupportDialogFirst());
    if ((ret && ret.init(params))) {
        // source line 363, bytecode pc 64
        return ret;
    }
    // source line 365, bytecode pc 66
    return null;
});
// source line 372, bytecode pc 1593
xs.Views.Mgr.registerDialog("DecisiveSupportDialogFirst", {
    "class": xs.Views.Dialog.DecisiveSupportDialogFirst,
    styleType: xs.Constant_DlgStyleType_Large,
    dlgType: xs.Cfg.Scene.CommonScene.Dialog,
    viewType: xs.Constant_ViewType_Dlg
});
// source line 454, bytecode pc 1976
(xs.Views.Dialog.DecisiveSupportDialogCellFirst = cc.TableViewCell.extend({
    ccbCfg: [
        { name: "l_ChangCi", tag: 1, type: "ls", id: "LS_popUI4" },
        { name: "l_Name", tag: 2, type: "ls", id: "LS_wujiangName1" },
        { name: "l_vs", tag: 3, type: "ls", id: "LS_popUI4" },
        { name: "l_Name2", tag: 4, type: "ls", id: "LS_wujiangName1" },
        { name: "m_btnSupport", tag: 5, type: "btn", id: "Btn_btn3", stringId: "decisive_support_button" }
    ],
    draw: function(ctx) {
    // source line 386, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 390, bytecode pc 12
    this._super();
    // source line 391, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(param) {
    if (!this._super()) {
        // source line 396, bytecode pc 19
        return false;
    }
    // source line 399, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 401, bytecode pc 35
    (this.m_ccbNode = null);
    // source line 402, bytecode pc 43
    (this.m_btnSupport = null);
    // source line 404, bytecode pc 51
    (this.l_ChangCi = null);
    // source line 405, bytecode pc 59
    (this.l_Name = null);
    // source line 406, bytecode pc 67
    (this.l_vs = null);
    // source line 407, bytecode pc 75
    (this.l_Name2 = null);
    // source line 408, bytecode pc 85
    (this.m_round = param);
    // source line 410, bytecode pc 93
    (this.m_data = null);
    // source line 412, bytecode pc 144
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DecisiveSupportDialogCellFirst, this));
    // source line 413, bytecode pc 180
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 414, bytecode pc 223
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 416, bytecode pc 261
    this.m_btnSupport.setOnClickCallBack(this._btnSupportCallBack.bind(this));
    // source line 418, bytecode pc 263
    return true;
},
    _btnSupportCallBack: function() {
    var params;
    // source line 423, bytecode pc 9
    (params = {});
    // source line 424, bytecode pc 36
    (params.list = this.m_par.m_List[this.m_idx]);
    // source line 425, bytecode pc 56
    (params.round = this.m_par.m_round);
    // source line 426, bytecode pc 71
    (params.idx = this.m_idx);
    // source line 427, bytecode pc 91
    (params.local = this.m_par.m_local);
    // source line 428, bytecode pc 128
    xs.Views.Mgr.showDialogByName("DecisiveSupportDialog", params);
},
    setBaseTouchPriority: function(priority) {
    // source line 432, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 433, bytecode pc 36
    this.m_btnSupport.setTouchPriority((this.m_baseTouchPriority - 1));
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 437, bytecode pc 12
    this._super();
    // source line 439, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 442, bytecode pc 63
            (this.m_parentView = parent);
            // source line 443, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 444, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 447, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 451, bytecode pc 12
    this._super();
},
    update: function(data, idx) {
    var cellData, strArray, server_1, server_2, nick1, nick2;
    // source line 456, bytecode pc 9
    (this.m_par = data);
    // source line 457, bytecode pc 19
    (this.m_idx = idx);
    // source line 458, bytecode pc 38
    (cellData = this.m_par.m_List[idx]);
    // source line 461, bytecode pc 47
    (strArray = []);
    // source line 462, bytecode pc 85
    (strArray[0] = (cellData[0].session.toString() || ""));
    // source line 463, bytecode pc 140
    this.l_ChangCi.setString(xs.Tools.String.createStringWithArgsArray("DecisiveBattle_session", strArray));
    // source line 466, bytecode pc 171
    (server_1 = (("S" + cellData[0].server_id) || ""));
    // source line 467, bytecode pc 202
    (server_2 = (("S" + cellData[1].server_id) || ""));
    // source line 469, bytecode pc 211
    (nick1 = "");
    // source line 470, bytecode pc 220
    (nick2 = "");
    if (xs.Utils.isSet(cellData[0])) {
        // source line 472, bytecode pc 266
        (nick1 = cellData[0].nick);
    }
    // source line 474, bytecode pc 298
    this.l_Name.setString(((server_1 + "\n") + nick1));
    // source line 476, bytecode pc 322
    this.l_vs.setString("vs");
    if (xs.Utils.isSet(cellData[1])) {
        // source line 479, bytecode pc 368
        (nick2 = cellData[1].nick);
    }
    // source line 481, bytecode pc 400
    this.l_Name2.setString(((server_2 + "\n") + nick2));
    if ((!cellData[0].can_support && !cellData[0].can_overview)) {
        // source line 488, bytecode pc 453
        this.m_btnSupport.setEnabled(false);
    }
    if ((!cellData[0].can_support && cellData[0].can_overview)) {
        // source line 492, bytecode pc 536
        this.m_btnSupport.setString(xs.Tools.String.createString("1070610048"));
    }
}
}));
// source line 501, bytecode pc 2007
(xs.Views.Dialog.DecisiveSupportDialogCellFirst.create = function(param) {
    var cell;
    // source line 502, bytecode pc 28
    (cell = new xs.Views.Dialog.DecisiveSupportDialogCellFirst());
    if ((cell && cell.init(param))) {
        // source line 504, bytecode pc 64
        return cell;
    }
    // source line 507, bytecode pc 66
    return null;
});
