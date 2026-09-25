// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Ladder/LadderTenFightResultDialog.js:1
// source line 140, bytecode pc 265
(xs.Views.LadderTenFightResultDialog = xs.Views.HungerLayer.extend({
    name: "LadderTenFightResultDialog",
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(params) {
    var titleStr;
    // source line 13, bytecode pc 12
    this._super();
    // source line 16, bytecode pc 22
    (this.m_data = params);
    // source line 20, bytecode pc 46
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 21, bytecode pc 61
    this.setTouchEnabled(true);
    // source line 23, bytecode pc 97
    (this.node = xs.ccb_reader.load("ccb3/0_7_10_MulitiFightResult.ccbi", this));
    // source line 24, bytecode pc 140
    this.node.setContentSize(cc.size(810, 609));
    // source line 25, bytecode pc 187
    this.node.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 26, bytecode pc 271
    xs.Utils.Node.attachNodes(this, this.node, { desc: "c", offset: cc.p(0, 0), sc: true });
    // source line 30, bytecode pc 307
    (titleStr = xs.Tools.String.createString("tenKillResult"));
    // source line 31, bytecode pc 381
    xs.Utils.replaceLabelWithString(this.node, this.cfg.title.tag, [ "LS_popUI1" ], [ titleStr ]);
    // source line 34, bytecode pc 436
    (this.infoTableView = cc.TableView.create(this, cc.size(710, 450)));
    // source line 35, bytecode pc 465
    this.infoTableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 37, bytecode pc 506
    this.infoTableView.setPosition(cc.p(60, 80));
    // source line 38, bytecode pc 526
    this.infoTableView.setDelegate(this);
    // source line 39, bytecode pc 555
    this.infoTableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 40, bytecode pc 580
    this.node.addChild(this.infoTableView);
    // source line 41, bytecode pc 598
    this.infoTableView.reloadData();
    // source line 45, bytecode pc 689
    (this.confirmBtn = xs.Utils.replaceButton(this.node, this.cfg.confirmBtn.tag, xs.Views.Btn.createWithStringId("Btn_btn1", "1071310061")));
    // source line 47, bytecode pc 727
    this.confirmBtn.setOnClickCallBack(this.end.bind(this));
    // source line 50, bytecode pc 812
    (this.closeBtn = xs.Utils.replaceButton(this.node, this.cfg.closeBtn.tag, xs.Views.Btn.create("Btn_Close")));
    // source line 52, bytecode pc 850
    this.closeBtn.setOnClickCallBack(this.end.bind(this));
    // source line 54, bytecode pc 852
    return true;
},
    end: function() {
    var _modelMap, data, dropData, otherData, i;
    // source line 59, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 62, bytecode pc 62
    (_modelMap = xs.Scene.Mgr.loadStatusAndClear("PveFight_RandEvent"));
    if (_modelMap) {
        // source line 64, bytecode pc 82
        (data = _modelMap.RandEvent);
        // source line 65, bytecode pc 91
        (dropData = []);
        // source line 66, bytecode pc 100
        (otherData = []);
        // source line 67, bytecode pc 105
        (i = 0);
        while ((i < data.length)) {
            if ((data[i].type == xs.Constant_RandEvent_adventure)) {
                // source line 69, bytecode pc 162
                dropData.push(data[i]);
            } else {
                // source line 71, bytecode pc 190
                otherData.push(data[i]);
            }
            // source line 67, bytecode pc 204
            (i = (+i + 1));
        }
        if ((dropData.length == 0)) {
            // source line 75, bytecode pc 275
            xs.Views.Mgr.showDialogByName("RandEvent", _modelMap);
        } else {
            // source line 79, bytecode pc 357
            xs.Views.Mgr.showDialogByName("AdventureDropDialog", { dropData: dropData, otherData: { RandEvent: otherData }, title: "ladderDrop" });
        }
    }
},
    onTouchBegan: function(touch, e) {
    // source line 86, bytecode pc 1
    return true;
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function(view) {
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 98, bytecode pc 24
    return cc.size(686, 130);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 103, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 105, bytecode pc 56
        (cell = xs.Views.LadderTenFightResultTableViewCell.create());
    }
    // source line 108, bytecode pc 77
    cell.update(this, idx);
    // source line 110, bytecode pc 81
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 114, bytecode pc 11
    return this.m_data.length;
},
    setBaseTouchPriority: function(priority) {
    // source line 117, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 118, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 119, bytecode pc 71
    this.confirmBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.confirmBtn.priority));
    // source line 120, bytecode pc 113
    this.closeBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.closeBtn.priority));
    // source line 121, bytecode pc 155
    this.infoTableView.setTouchPriority((this.m_baseTouchPriority + this.cfg.tableView.priority));
},
    cfg: {
        title: { tag: 10 },
        tableView: { priority: -1 },
        confirmBtn: { tag: 11, priority: -1 },
        closeBtn: { tag: 12, priority: -1 }
    }
}));
// source line 145, bytecode pc 291
(xs.Views.LadderTenFightResultDialog.create = function(params) {
    var ret;
    // source line 146, bytecode pc 23
    (ret = new xs.Views.LadderTenFightResultDialog());
    if ((ret && ret.init(params))) {
        // source line 148, bytecode pc 59
        return ret;
    }
    // source line 151, bytecode pc 61
    return null;
});
// source line 158, bytecode pc 411
xs.Views.Mgr.registerDialog("LadderTenFightResultDialog", {
    "class": xs.Views.LadderTenFightResultDialog,
    styleType: xs.Constant_DlgStyleType_Large,
    dlgType: xs.Cfg.Scene.CommonScene.Dialog,
    viewType: xs.Constant_ViewType_Dlg
});
// source line 221, bytecode pc 1045
(xs.Views.LadderTenFightResultTableViewCell = cc.TableViewCell.extend({
    ccbCfg: [
        { tag: 10, type: "ls", name: "m_title", id: "LS_yuanfen" },
        { tag: 20, type: "ls", name: "m_zhuGongExp", id: "LS_wujiangInf1", stringId: "1071110050" },
        { tag: 11, type: "ls", name: "m_playerExpLabel", id: "LS_mainUI4" },
        { tag: 21, type: "ls", name: "m_yinLiang", id: "LS_wujiangInf1", stringId: "coin" },
        { tag: 12, type: "ls", name: "m_coinNum", id: "LS_mainUI4" },
        { tag: 22, type: "ls", name: "m_fengLu", id: "LS_wujiangInf1", stringId: "salary_1" },
        { tag: 13, type: "ls", name: "m_fengLuNumLabel", id: "LS_mainUI4" },
        { tag: 23, type: "ls", name: "m_rongYu", id: "LS_wujiangInf1", stringId: "honor_1" },
        { tag: 14, type: "ls", name: "m_rongYuNumLabel", id: "LS_mainUI4" },
        { tag: 15, type: "ls", name: "m_winLabel", id: "LS_wujiangInf1" }
    ],
    draw: function(ctx) {
    // source line 181, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 184, bytecode pc 12
    this._super();
    // source line 185, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 189, bytecode pc 19
        return false;
    }
    // source line 192, bytecode pc 27
    (this.m_title = null);
    // source line 193, bytecode pc 35
    (this.m_playerExpLabel = null);
    // source line 194, bytecode pc 43
    (this.m_coinNum = null);
    // source line 195, bytecode pc 51
    (this.m_fengLuNumLabel = null);
    // source line 196, bytecode pc 59
    (this.m_rongYuNumLabel = null);
    // source line 197, bytecode pc 67
    (this.ccbNode = null);
    // source line 198, bytecode pc 75
    (this.m_winLabel = null);
    // source line 201, bytecode pc 111
    (this.ccbNode = xs.ccb_reader.load("ccb3/LadderTenFightResultCell.ccbi", this));
    // source line 202, bytecode pc 150
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 203, bytecode pc 189
    this.ccbNode.setPosition(cc.p(0, 0));
    // source line 204, bytecode pc 225
    xs.Utils.Node.attachNodes(this, this.ccbNode);
    // source line 205, bytecode pc 268
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 208, bytecode pc 270
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 211, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    onEnter: function() {
    // source line 215, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 218, bytecode pc 12
    this._super();
},
    update: function(par, num) {
    var numStr;
    // source line 223, bytecode pc 9
    (this.par = par);
    // source line 226, bytecode pc 56
    (numStr = (xs.Tools.String.convNumberString((num + 1)) || ""));
    // source line 227, bytecode pc 120
    this.m_title.setString(xs.Tools.String.createStringWithArgsArray("FightNum", [ numStr ]));
    // source line 230, bytecode pc 165
    this.m_playerExpLabel.setString(("+" + this.par.m_data[num].user_exp));
    // source line 232, bytecode pc 210
    this.m_coinNum.setString(("+" + this.par.m_data[num].user_coin));
    // source line 234, bytecode pc 255
    this.m_fengLuNumLabel.setString(("+" + this.par.m_data[num].rank_salary));
    // source line 236, bytecode pc 300
    this.m_rongYuNumLabel.setString(("+" + this.par.m_data[num].reward_honor));
    if (this.par.m_data[num].success) {
        // source line 239, bytecode pc 376
        this.m_winLabel.setString(xs.Tools.String.createString("auto_name_297"));
    } else {
        // source line 241, bytecode pc 432
        this.m_winLabel.setString(xs.Tools.String.createString("auto_name_298"));
    }
}
}));
// source line 249, bytecode pc 1071
(xs.Views.LadderTenFightResultTableViewCell.create = function() {
    var cell;
    // source line 250, bytecode pc 23
    (cell = new xs.Views.LadderTenFightResultTableViewCell());
    if ((cell && cell.init())) {
        // source line 252, bytecode pc 55
        return cell;
    }
    // source line 254, bytecode pc 57
    return null;
});
