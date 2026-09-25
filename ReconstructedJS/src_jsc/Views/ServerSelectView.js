// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ServerSelectView.js:1
// source line 114, bytecode pc 278
(xs.Views.ServerSelectView = xs.Views.HungerLayer.extend({
    ccbCfg: [
        { tag: 1, type: "ls", id: "LS_huodong_title", stringId: "changeServer" },
        { tag: 2, type: "ls", id: "LS_popUI2", stringId: "auto_name_112" },
        { tag: 3, type: "ls", id: "LS_popUI2", stringId: "auto_name_113" }
    ],
    ctor: function() {
    // source line 15, bytecode pc 12
    this._super();
},
    init: function(data) {
    if (!this._super()) {
        // source line 20, bytecode pc 19
        return false;
    }
    // source line 22, bytecode pc 27
    (this.closeBtn = null);
    // source line 23, bytecode pc 61
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_4_Dialog_ServerSelect.ccbi"));
    // source line 24, bytecode pc 104
    this.ccbNode.setContentSize(cc.size(551, 627));
    // source line 25, bytecode pc 151
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 26, bytecode pc 210
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 27, bytecode pc 253
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 33, bytecode pc 307
    (this.tableView_history = cc.TableView.create(this, cc.size(520, 80)));
    // source line 34, bytecode pc 327
    this.tableView_history.setDelegate(this);
    // source line 35, bytecode pc 356
    this.tableView_history.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 36, bytecode pc 385
    this.tableView_history.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 38, bytecode pc 477
    xs.Utils.Node.attachNodes(this.ccbNode, this.tableView_history, { desc: "lb", offset: cc.p(15, 430), sc: true });
    // source line 42, bytecode pc 532
    (this.tableView_all = cc.TableView.create(this, cc.size(520, 340)));
    // source line 43, bytecode pc 552
    this.tableView_all.setDelegate(this);
    // source line 44, bytecode pc 581
    this.tableView_all.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 45, bytecode pc 610
    this.tableView_all.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 47, bytecode pc 701
    xs.Utils.Node.attachNodes(this.ccbNode, this.tableView_all, { desc: "lb", offset: cc.p(15, 28), sc: true });
    // source line 49, bytecode pc 716
    (this.serverList = data.server_list);
    // source line 50, bytecode pc 731
    (this.serverListLogined = data.server_logined_list);
    // source line 51, bytecode pc 749
    this.tableView_all.reloadData();
    // source line 52, bytecode pc 767
    this.tableView_history.reloadData();
    // source line 54, bytecode pc 769
    return true;
},
    closeCallBack: function() {
    // source line 58, bytecode pc 30
    this.getParent().ccbNode.setVisible(true);
    // source line 59, bytecode pc 45
    this.removeFromParent(true);
},
    registerCallBack: function(callBack) {
    // source line 63, bytecode pc 9
    (this.callBackFun = callBack);
},
    tableCellAtIndex: function(table, idx) {
    var serverDataPair, type, cell;
    // source line 67, bytecode pc 16
    (serverDataPair = new Array(2));
    // source line 68, bytecode pc 35
    (type = xs.Views.ServerSelectCellView_Type_All);
    if ((table === this.tableView_history)) {
        // source line 70, bytecode pc 69
        (serverDataPair[0] = this.serverListLogined[(idx * 2)]);
        if (this.serverListLogined[((idx * 2) + 1)]) {
            // source line 72, bytecode pc 110
            (serverDataPair[1] = this.serverListLogined[((idx * 2) + 1)]);
        }
        // source line 74, bytecode pc 129
        (type = xs.Views.ServerSelectCellView_Type_Logined);
    } else {
        if ((table === this.tableView_all)) {
            // source line 76, bytecode pc 168
            (serverDataPair[0] = this.serverList[(idx * 2)]);
            if (this.serverList[((idx * 2) + 1)]) {
                // source line 78, bytecode pc 209
                (serverDataPair[1] = this.serverList[((idx * 2) + 1)]);
            }
            // source line 80, bytecode pc 228
            (type = xs.Views.ServerSelectCellView_Type_All);
        }
    }
    try {
        // source line 85, bytecode pc 247
        (cell = table.dequeueCell());
        if (!cell) {
            // source line 87, bytecode pc 294
            (cell = xs.Views.ServerSelectCell.create(serverDataPair, type));
        } else {
            // source line 89, bytecode pc 322
            cell.updateCell(serverDataPair, type);
        }
    } catch (e) {
        // source line 94, bytecode pc 364
        xs.warnException("SkillLayer", e);
        /* TODO_BYTECODE pc=365 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 97, bytecode pc 377
    return cell;
},
    numberOfCellsInTableView: function(table) {
    if (((table === this.tableView_all) && this.serverList)) {
        // source line 102, bytecode pc 58
        return Math.ceil((this.serverList.length / 2));
    } else {
        if (((table === this.tableView_history) && this.serverListLogined)) {
            // source line 104, bytecode pc 122
            return Math.ceil((this.serverListLogined.length / 2));
        }
    }
    // source line 107, bytecode pc 124
    return 0;
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 111, bytecode pc 23
    return cc.size(490, 79);
},
    tableCellTouched: function(table, cell) {
    if (((table === this.tableView_all) && (cell.getSelIdx() !== -1))) {
        // source line 121, bytecode pc 125
        this.callBackFun(this.serverList[((cell.getIdx() * 2) + cell.getSelIdx())], ((cell.getIdx() * 2) + cell.getSelIdx()), false);
    } else {
        if (((table === this.tableView_history) && (cell.getSelIdx() !== -1))) {
            // source line 129, bytecode pc 256
            this.callBackFun(this.serverListLogined[((cell.getIdx() * 2) + cell.getSelIdx())], ((cell.getIdx() * 2) + cell.getSelIdx()), true);
        }
    }
}
}));
// source line 141, bytecode pc 304
(xs.Views.ServerSelectView.create = function(data) {
    var ret;
    // source line 142, bytecode pc 23
    (ret = new xs.Views.ServerSelectView());
    if ((ret && ret.init(data))) {
        // source line 144, bytecode pc 59
        return ret;
    }
    // source line 146, bytecode pc 61
    return null;
});
// source line 173, bytecode pc 388
(xs.Views.ServerSelectCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 152, bytecode pc 16
    this._super(ctx);
},
    init: function(serverData, type) {
    if (!this._super()) {
        // source line 157, bytecode pc 19
        return false;
    }
    // source line 160, bytecode pc 40
    this.updateCell(serverData, type);
    // source line 162, bytecode pc 42
    return true;
},
    updateCell: function(serverData, type) {
    if (this.cellView) {
        // source line 167, bytecode pc 30
        this.cellView.removeFromParent(true);
    }
    // source line 169, bytecode pc 71
    (this.cellView = xs.Views.ServerSelectCellView.create(type, serverData));
    // source line 170, bytecode pc 91
    this.addChild(this.cellView);
},
    getSelIdx: function() {
    // source line 174, bytecode pc 17
    return this.cellView.getSelIdx();
}
}));
// source line 178, bytecode pc 414
(xs.Views.ServerSelectCell.create = function(serverData, type) {
    var ret;
    // source line 179, bytecode pc 23
    (ret = new xs.Views.ServerSelectCell());
    if ((ret && ret.init(serverData, type))) {
        // source line 181, bytecode pc 63
        return ret;
    }
    // source line 183, bytecode pc 65
    return null;
});
// source line 187, bytecode pc 431
(xs.Views.ServerSelectCellView_Type_Logined = 0);
// source line 188, bytecode pc 448
(xs.Views.ServerSelectCellView_Type_All = 1);
// source line 351, bytecode pc 636
(xs.Views.ServerSelectCellView = cc.Layer.extend({
    ccbCfg_Logined: [ { tag: 10, type: "ls", id: "LS_bntSign_zuixinfu" } ],
    ccbCfg_All: [ { tag: 10, type: "ls", id: "LS_bntSign_huobaofu" } ],
    ctor: function() {
    // source line 202, bytecode pc 12
    this._super();
    // source line 203, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(type, serverData) {
    if (!this._super()) {
        // source line 207, bytecode pc 19
        return false;
    }
    // source line 211, bytecode pc 34
    this.setTouchEnabled(true);
    // source line 212, bytecode pc 58
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 214, bytecode pc 67
    (this.selectedIdx = -1);
    if ((type === xs.Views.ServerSelectCellView_Type_Logined)) {
        // source line 217, bytecode pc 125
        (this.ccbNodeLeft = xs.ccb_reader.load("ccb3/0_6_4_ServerSelectBtn.ccbi"));
        // source line 218, bytecode pc 159
        (this.ccbNodeRight = xs.ccb_reader.load("ccb3/0_6_4_ServerSelectBtn.ccbi"));
        // source line 219, bytecode pc 202
        xs.Utils.UI.replaceCcbByCfg(this.ccbNodeLeft, this.ccbCfg_Logined, this);
        // source line 220, bytecode pc 245
        xs.Utils.UI.replaceCcbByCfg(this.ccbNodeRight, this.ccbCfg_Logined, this);
    } else {
        if ((type === xs.Views.ServerSelectCellView_Type_All)) {
            // source line 222, bytecode pc 308
            (this.ccbNodeLeft = xs.ccb_reader.load("ccb3/0_6_4_ServerSelectBtn_2.ccbi"));
            // source line 223, bytecode pc 342
            (this.ccbNodeRight = xs.ccb_reader.load("ccb3/0_6_4_ServerSelectBtn_2.ccbi"));
            // source line 224, bytecode pc 385
            xs.Utils.UI.replaceCcbByCfg(this.ccbNodeLeft, this.ccbCfg_All, this);
            // source line 225, bytecode pc 428
            xs.Utils.UI.replaceCcbByCfg(this.ccbNodeRight, this.ccbCfg_All, this);
        }
    }
    // source line 228, bytecode pc 470
    this.ccbNodeLeft.setContentSize(cc.size(233, 79));
    // source line 229, bytecode pc 512
    this.ccbNodeRight.setContentSize(cc.size(233, 79));
    // source line 232, bytecode pc 597
    xs.Utils.Node.attachNodes(this, this.ccbNodeLeft, { desc: "lb", offset: cc.p(15, 0), sc: true });
    // source line 234, bytecode pc 683
    xs.Utils.Node.attachNodes(this, this.ccbNodeRight, { desc: "lb", offset: cc.p(275, 0), sc: true });
    // source line 236, bytecode pc 710
    (this.nameLabLeft = this.ccbNodeLeft.getChildByTag(10));
    // source line 238, bytecode pc 737
    (this.nameLabRight = this.ccbNodeRight.getChildByTag(10));
    // source line 242, bytecode pc 764
    (this.serverFlagLeft_new = this.ccbNodeLeft.getChildByTag(11));
    // source line 243, bytecode pc 785
    this.serverFlagLeft_new.setZOrder(10);
    // source line 244, bytecode pc 805
    this.serverFlagLeft_new.setVisible(false);
    // source line 245, bytecode pc 832
    (this.serverFlagLeft_full = this.ccbNodeLeft.getChildByTag(12));
    // source line 246, bytecode pc 853
    this.serverFlagLeft_full.setZOrder(10);
    // source line 247, bytecode pc 873
    this.serverFlagLeft_full.setVisible(false);
    // source line 248, bytecode pc 900
    (this.serverFlagLeft_completely = this.ccbNodeLeft.getChildByTag(13));
    // source line 249, bytecode pc 921
    this.serverFlagLeft_completely.setZOrder(10);
    // source line 250, bytecode pc 941
    this.serverFlagLeft_completely.setVisible(false);
    // source line 251, bytecode pc 968
    (this.serverFlagLeft_maintain = this.ccbNodeLeft.getChildByTag(14));
    // source line 252, bytecode pc 989
    this.serverFlagLeft_maintain.setZOrder(10);
    // source line 253, bytecode pc 1009
    this.serverFlagLeft_maintain.setVisible(false);
    // source line 257, bytecode pc 1036
    (this.serverFlagRight_new = this.ccbNodeRight.getChildByTag(11));
    // source line 258, bytecode pc 1057
    this.serverFlagRight_new.setZOrder(10);
    // source line 259, bytecode pc 1077
    this.serverFlagRight_new.setVisible(false);
    // source line 260, bytecode pc 1104
    (this.serverFlagRight_full = this.ccbNodeRight.getChildByTag(12));
    // source line 261, bytecode pc 1125
    this.serverFlagRight_full.setZOrder(10);
    // source line 262, bytecode pc 1145
    this.serverFlagRight_full.setVisible(false);
    // source line 263, bytecode pc 1172
    (this.serverFlagRight_completely = this.ccbNodeRight.getChildByTag(13));
    // source line 264, bytecode pc 1193
    this.serverFlagRight_completely.setZOrder(10);
    // source line 265, bytecode pc 1213
    this.serverFlagRight_completely.setVisible(false);
    // source line 266, bytecode pc 1240
    (this.serverFlagRight_maintain = this.ccbNodeRight.getChildByTag(14));
    // source line 267, bytecode pc 1261
    this.serverFlagRight_maintain.setZOrder(10);
    // source line 268, bytecode pc 1281
    this.serverFlagRight_maintain.setVisible(false);
    // source line 272, bytecode pc 1298
    this.serData(serverData);
    // source line 274, bytecode pc 1300
    return true;
},
    serData: function(serverData) {
    if (serverData[0]) {
        // source line 279, bytecode pc 38
        this.nameLabLeft.setString(serverData[0].server_title);
        if ((serverData[0].server_status === "1")) {
            // source line 283, bytecode pc 79
            this.serverFlagLeft_full.setVisible(true);
        } else {
            if ((serverData[0].server_status === "2")) {
                // source line 288, bytecode pc 125
                this.serverFlagLeft_new.setVisible(true);
            } else {
                if ((serverData[0].server_status === "3")) {
                    // source line 292, bytecode pc 171
                    this.serverFlagLeft_completely.setVisible(true);
                } else {
                    if ((serverData[0].server_status === "4")) {
                        // source line 296, bytecode pc 217
                        this.serverFlagLeft_maintain.setVisible(true);
                    } else {
                        // source line 298, bytecode pc 242
                        this.serverFlagLeft_full.setVisible(false);
                        // source line 299, bytecode pc 262
                        this.serverFlagLeft_new.setVisible(false);
                    }
                }
            }
        }
    }
    if (serverData[1]) {
        // source line 304, bytecode pc 301
        this.nameLabRight.setString(serverData[1].server_title);
        if ((serverData[1].server_status === "1")) {
            // source line 307, bytecode pc 342
            this.serverFlagRight_full.setVisible(true);
        } else {
            if ((serverData[1].server_status === "2")) {
                // source line 312, bytecode pc 388
                this.serverFlagRight_new.setVisible(true);
            } else {
                if ((serverData[1].server_status === "3")) {
                    // source line 316, bytecode pc 434
                    this.serverFlagRight_completely.setVisible(true);
                } else {
                    if ((serverData[1].server_status === "4")) {
                        // source line 320, bytecode pc 480
                        this.serverFlagRight_maintain.setVisible(true);
                    } else {
                        // source line 322, bytecode pc 505
                        this.serverFlagRight_full.setVisible(false);
                        // source line 323, bytecode pc 525
                        this.serverFlagRight_new.setVisible(false);
                    }
                }
            }
        }
    } else {
        // source line 326, bytecode pc 550
        this.ccbNodeRight.removeFromParent(true);
        // source line 327, bytecode pc 558
        (this.ccbNodeRight = null);
    }
},
    onTouchBegan: function(touch, e) {
    var touchPos, boundingBoxLeft, boundingBoxRight;
    // source line 333, bytecode pc 19
    (touchPos = this.convertTouchToNodeSpace(touch));
    // source line 335, bytecode pc 40
    (boundingBoxLeft = this.ccbNodeLeft.getBoundingBox());
    // source line 336, bytecode pc 68
    (boundingBoxRight = cc.rect(0, 0, 0, 0));
    if (this.ccbNodeRight) {
        // source line 338, bytecode pc 100
        (boundingBoxRight = this.ccbNodeRight.getBoundingBox());
    }
    if (cc.rectContainsPoint(boundingBoxLeft, touchPos)) {
        // source line 342, bytecode pc 137
        (this.selectedIdx = 0);
    } else {
        if (cc.rectContainsPoint(boundingBoxRight, touchPos)) {
            // source line 344, bytecode pc 179
            (this.selectedIdx = 1);
        } else {
            // source line 346, bytecode pc 193
            (this.selectedIdx = -1);
        }
    }
    // source line 348, bytecode pc 195
    return false;
},
    getSelIdx: function() {
    // source line 352, bytecode pc 6
    return this.selectedIdx;
}
}));
// source line 356, bytecode pc 662
(xs.Views.ServerSelectCellView.create = function(type, serverData) {
    var ret;
    // source line 357, bytecode pc 23
    (ret = new xs.Views.ServerSelectCellView());
    if ((ret && ret.init(type, serverData))) {
        // source line 359, bytecode pc 63
        return ret;
    }
    // source line 361, bytecode pc 65
    return null;
});
