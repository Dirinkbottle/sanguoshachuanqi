// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/UnionDepotMemberDialog.js:1
// source line 125, bytecode pc 701
(xs.Views.Dialog.UnionDepotMemberCell = cc.TableViewCell.extend({
    ccbCfg: [
        { name: "m_nameLab", tag: 2, type: "ls", id: "LS_Lv" },
        { name: "m_vipLevel", tag: 3, type: "ls", id: "LS_Lv" },
        { name: "m_playerLevel", tag: 1, type: "ls", id: "LS_mainLv" },
        { name: "m_contributionTitle", tag: 5, type: "ls", id: "LS_jinengInf1", stringId: "auto_name_550" },
        { name: "m_contributionNum", tag: 6, type: "ls", id: "LS_mainUI4" },
        {
            name: "m_battleTimeTitle",
            tag: 8,
            type: "ls",
            id: "LS_jinengInf1",
            stringId: "lblStr_unionDepotMbrDlgBtlTTtl"
        },
        {
            name: "m_weekActiveTitle",
            tag: 9,
            type: "ls",
            id: "LS_jinengInf1",
            stringId: "lblStr_unionDepotMbrDlgWKAtvTtl"
        },
        { name: "m_battleTime", tag: 12, type: "ls", id: "LS_Lv" },
        { name: "m_weekActive", tag: 13, type: "ls", id: "LS_Lv" },
        { name: "m_distributionButton", tag: 7, type: "btn", id: "Btn_btn3" },
        { name: "m_duty", tag: 4 },
        { name: "m_onlineState", tag: 11 }
    ],
    ctor: function() {
    // source line 22, bytecode pc 12
    this._super();
    // source line 23, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    draw: function(ctx) {
    // source line 26, bytecode pc 16
    this._super(ctx);
},
    init: function(itemInfo) {
    if (!this._super()) {
        // source line 31, bytecode pc 19
        return false;
    }
    // source line 33, bytecode pc 42
    xs.log("cell init start");
    // source line 34, bytecode pc 50
    (this.m_baseTouchPriority = 0);
    // source line 35, bytecode pc 58
    (this.m_otherName = null);
    // source line 36, bytecode pc 66
    (this.m_ccbNode = null);
    // source line 37, bytecode pc 74
    (this.m_nameLab = null);
    // source line 38, bytecode pc 82
    (this.m_vipLevel = null);
    // source line 39, bytecode pc 90
    (this.m_contributionTitle = null);
    // source line 40, bytecode pc 98
    (this.m_contributionNum = null);
    // source line 41, bytecode pc 106
    (this.m_battleTimeTitle = null);
    // source line 42, bytecode pc 114
    (this.m_weekActiveTitle = null);
    // source line 43, bytecode pc 122
    (this.m_battleTime = null);
    // source line 44, bytecode pc 130
    (this.m_weekActive = null);
    // source line 45, bytecode pc 138
    (this.m_distributionButton = null);
    // source line 46, bytecode pc 146
    (this.m_rankingSprite = null);
    // source line 47, bytecode pc 154
    (this.m_duty = null);
    // source line 48, bytecode pc 162
    (this.m_onlineState = null);
    // source line 49, bytecode pc 172
    (this.m_itemInfo = itemInfo);
    // source line 50, bytecode pc 180
    (this.m_memberId = null);
    // source line 51, bytecode pc 188
    (this.m_listener = null);
    // source line 52, bytecode pc 239
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.UnionDepotMemberCell, this));
    // source line 53, bytecode pc 275
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 54, bytecode pc 318
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 55, bytecode pc 369
    this.m_distributionButton.setString(xs.Tools.String.createString("btnStr_unionDepotMbrDlgAllotTtl"));
    // source line 56, bytecode pc 371
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 61, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 62, bytecode pc 36
    this.m_distributionButton.setTouchPriority((this.m_baseTouchPriority - 1));
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 66, bytecode pc 12
    this._super();
    // source line 68, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 71, bytecode pc 63
            (this.m_parentView = parent);
            // source line 72, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 74, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 77, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 81, bytecode pc 12
    this._super();
},
    setListener: function(listener) {
    // source line 84, bytecode pc 9
    (this.m_listener = listener);
},
    update: function(par) {
    var m_role, normalDuty, m_LogonTimeType, lbl_leaveTime;
    // source line 87, bytecode pc 9
    (this.par = par);
    // source line 88, bytecode pc 33
    (this.m_otherName = this.par.getPlayerName());
    // source line 89, bytecode pc 58
    this.m_nameLab.setString(this.m_otherName);
    // source line 90, bytecode pc 94
    this.m_playerLevel.setString(this.par.getPlayerLevel());
    // source line 91, bytecode pc 130
    this.m_vipLevel.setString(this.par.getVipLevel());
    // source line 92, bytecode pc 166
    this.m_weekActive.setString(this.par.getActive());
    // source line 93, bytecode pc 202
    this.m_battleTime.setString(this.par.getUnionJoinTimes());
    // source line 96, bytecode pc 223
    (m_role = this.par.getUserRoleToString());
    if ((m_role == xs.Tools.String.createString("auto_name_42"))) {
        // source line 98, bytecode pc 284
        this.m_duty.setVisible(true);
    } else {
        // source line 100, bytecode pc 309
        this.m_duty.setVisible(false);
        // source line 101, bytecode pc 345
        (normalDuty = xs.Factorys.Label.createByStyleId("LS_wujiangName1"));
        // source line 102, bytecode pc 364
        normalDuty.setString(m_role);
        // source line 103, bytecode pc 404
        xs.Utils.Node.replaceChildSafe(this, this.m_duty, normalDuty);
        // source line 104, bytecode pc 414
        (this.m_duty = normalDuty);
    }
    // source line 107, bytecode pc 450
    this.m_contributionNum.setString(this.par.getUserDonate());
    // source line 109, bytecode pc 471
    (m_LogonTimeType = this.par.getLogonTimeTypeToString());
    if ((m_LogonTimeType == xs.Tools.String.createString("auto_name_37"))) {
        // source line 111, bytecode pc 532
        this.m_onlineState.setVisible(true);
    } else {
        // source line 113, bytecode pc 557
        this.m_onlineState.setVisible(false);
        // source line 114, bytecode pc 593
        (lbl_leaveTime = xs.Factorys.Label.createByStyleId("LS_jinengInf1"));
        // source line 115, bytecode pc 612
        lbl_leaveTime.setString(m_LogonTimeType);
        // source line 116, bytecode pc 652
        xs.Utils.Node.replaceChildSafe(this, this.m_onlineState, lbl_leaveTime);
        // source line 117, bytecode pc 662
        (this.m_onlineState = lbl_leaveTime);
    }
    // source line 121, bytecode pc 686
    (this.m_memberId = this.par.getUserId());
    // source line 122, bytecode pc 724
    this.m_distributionButton.setOnClickCallBack(this.distributionButtonCallBack.bind(this));
},
    distributionButtonCallBack: function() {
    var numChooseDialog;
    // source line 131, bytecode pc 101
    (numChooseDialog = xs.Views.Mgr.showDialogByName("UnionDepotNumChooseDialog", {
    user_id: this.m_itemInfo.user_id,
    member_id: this.m_memberId,
    maxNum: this.m_itemInfo.maxNum,
    pk_id: this.m_itemInfo.pk_id
}));
    // source line 133, bytecode pc 118
    numChooseDialog.setListener(this);
}
}));
// source line 139, bytecode pc 732
(xs.Views.Dialog.UnionDepotMemberCell.create = function(itemInfo) {
    var cell;
    // source line 140, bytecode pc 28
    (cell = new xs.Views.Dialog.UnionDepotMemberCell());
    if ((cell && cell.init(itemInfo))) {
        // source line 142, bytecode pc 64
        return cell;
    }
    // source line 144, bytecode pc 66
    return null;
});
// source line 271, bytecode pc 956
(xs.Views.Dialog.UnionDepotMemberDialogLayer = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 151, bytecode pc 12
    this._super();
    // source line 152, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(itemInfo) {
    // source line 157, bytecode pc 12
    this._super();
    // source line 158, bytecode pc 24
    (this.m_playerList = []);
    // source line 159, bytecode pc 79
    (this.m_tableView = cc.TableView.create(this, cc.size(895, 502)));
    // source line 160, bytecode pc 108
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 161, bytecode pc 148
    this.m_tableView.setPosition(cc.p(0, 14));
    // source line 162, bytecode pc 168
    this.m_tableView.setDelegate(this);
    // source line 163, bytecode pc 197
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 164, bytecode pc 250
    xs.Utils.Node.attachNodes(this, this.m_tableView, { desc: "lb" });
    // source line 165, bytecode pc 260
    (this.m_itemInfo = itemInfo);
    // source line 166, bytecode pc 278
    this.m_tableView.reloadData();
    // source line 167, bytecode pc 286
    (this.m_listener = null);
    // source line 168, bytecode pc 288
    return true;
},
    setListener: function(listener) {
    // source line 171, bytecode pc 9
    (this.m_listener = listener);
},
    _readMemberList: function() {
    // source line 176, bytecode pc 22
    xs.log("m_5:");
    // source line 195, bytecode pc 209
    xs.Tools.Net.requestUnionUserList({
    union_id: xs.Profile.GameData.Mgr.getInstance().Union.getUnion().getUnionId(),
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    forcepush: true
}, function(data) {
    var mList, x;
    if (!data.result) {
        // source line 185, bytecode pc 15
        return void 0;
    }
    // source line 188, bytecode pc 32
    (mList = data.return_info.user_list);
    // source line 189, bytecode pc 44
    (this.m_playerList = []);
    // source line 190, bytecode pc 49
    (x = 0);
    while ((x < mList.length)) {
        // source line 191, bytecode pc 108
        this.m_playerList.push(xs.Models.UnionMember.createWithJson(mList[x]));
        // source line 190, bytecode pc 123
        x++;
    }
    // source line 193, bytecode pc 159
    this.m_tableView.reloadData();
}.bind(this), this);
    // source line 196, bytecode pc 227
    this.m_tableView.reloadData();
},
    refreshFromMenuClick: function() {
    // source line 200, bytecode pc 22
    xs.log("refreshFromMenuClick in baseLayer");
    if (this.isNeedRefresh) {
        // source line 202, bytecode pc 41
        (this.isNeedRefresh = false);
    }
},
    onEnterTransitionDidFinish: function() {
    // source line 210, bytecode pc 12
    this._super();
    // source line 211, bytecode pc 35
    xs.log("EnterTransitionDidFinish");
    // source line 212, bytecode pc 48
    this._readMemberList();
},
    onExitTransitionDidStart: function() {
    // source line 217, bytecode pc 12
    this._super();
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function() {
    // source line 268, bytecode pc 32
    xs.Views.Mgr.showToast("scrollViewDidZoom");
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 233, bytecode pc 23
    return cc.size(882, 107);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 237, bytecode pc 26
    cc.log((idx + "-----"));
    // source line 238, bytecode pc 44
    (cell = table.dequeueCell());
    // source line 239, bytecode pc 67
    xs.log("cell create start");
    if (!cell) {
        // source line 241, bytecode pc 118
        (cell = xs.Views.Dialog.UnionDepotMemberCell.create(this.m_itemInfo));
        // source line 242, bytecode pc 135
        cell.setListener(this);
    }
    // source line 244, bytecode pc 159
    xs.dump(this.m_playerList);
    // source line 245, bytecode pc 185
    cell.update(this.m_playerList[idx]);
    // source line 248, bytecode pc 189
    return cell;
},
    setBaseTouchPriority: function(priority) {
    // source line 252, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 254, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 255, bytecode pc 56
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    numberOfCellsInTableView: function(table) {
    // source line 260, bytecode pc 11
    return this.m_playerList.length;
}
}));
// source line 277, bytecode pc 987
(xs.Views.Dialog.UnionDepotMemberDialogLayer.create = function(itemInfo) {
    var retObj;
    // source line 278, bytecode pc 28
    (retObj = new xs.Views.Dialog.UnionDepotMemberDialogLayer());
    if ((retObj && retObj.init(itemInfo))) {
        // source line 280, bytecode pc 64
        return retObj;
    }
    // source line 282, bytecode pc 66
    return null;
});
// source line 336, bytecode pc 1213
(xs.Views.Dialog.UnionDepotMemberDialog = xs.Views.HungerLayer.extend({
    cfg: {
        btnClose: { priority: -1 },
        ccbCfg: [
            { tag: 2, type: "btn", name: "btnClose", id: "Btn_Close" },
            { tag: 1, type: "ls", name: "lblTitle", id: "LS_huodong_title" }
        ]
    },
    init: function(itemInfo) {
    // source line 297, bytecode pc 12
    this._super();
    // source line 298, bytecode pc 20
    (this.btnClose = null);
    // source line 299, bytecode pc 28
    (this.lblTitle = null);
    // source line 300, bytecode pc 59
    (this.m_defaultSize = cc.size(891, 420));
    // source line 302, bytecode pc 110
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.UnionDepotMemberDialog, this));
    // source line 303, bytecode pc 153
    this.ccbNode.setContentSize(cc.size(935, 613));
    // source line 304, bytecode pc 200
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 305, bytecode pc 208
    (this.m_listener = null);
    // source line 306, bytecode pc 261
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 307, bytecode pc 309
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 309, bytecode pc 347
    this.btnClose.setOnClickCallBack(this.btnCloseClickCallBack.bind(this));
    // source line 311, bytecode pc 398
    this.lblTitle.setString(xs.Tools.String.createString("lblStr_unionDepotMbrDlgTtl"));
    // source line 312, bytecode pc 440
    (this.layer = xs.Views.Dialog.UnionDepotMemberDialogLayer.create(itemInfo));
    // source line 313, bytecode pc 460
    this.layer.setListener(this);
    // source line 314, bytecode pc 551
    xs.Utils.Node.attachNodes(this.ccbNode, this.layer, { offset: cc.p(26, 23), desc: "lb", sc: true });
    // source line 316, bytecode pc 553
    return true;
},
    btnCloseClickCallBack: function() {
    // source line 323, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if ((this.m_listener.m_listener && this.m_listener.m_listener._readUnionDepotList)) {
        // source line 325, bytecode pc 87
        this.m_listener.m_listener._readUnionDepotList();
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 331, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 332, bytecode pc 37
    this.btnClose.setTouchPriority((this.m_baseTouchPriority - 2));
    // source line 333, bytecode pc 64
    this.layer.setBaseTouchPriority((this.m_baseTouchPriority - 1));
},
    setListener: function(listener) {
    // source line 337, bytecode pc 9
    (this.m_listener = listener);
}
}));
// source line 341, bytecode pc 1244
(xs.Views.Dialog.UnionDepotMemberDialog.create = function(itemInfo) {
    var ret;
    // source line 342, bytecode pc 28
    (ret = new xs.Views.Dialog.UnionDepotMemberDialog());
    if ((ret && ret.init(itemInfo))) {
        // source line 344, bytecode pc 64
        return ret;
    }
    // source line 346, bytecode pc 66
    return null;
});
// source line 351, bytecode pc 1324
xs.Views.Mgr.registerDialog("UnionDepotMemberDialog", { "class": xs.Views.Dialog.UnionDepotMemberDialog, styleType: xs.Constant_DlgStyleType_Large });
