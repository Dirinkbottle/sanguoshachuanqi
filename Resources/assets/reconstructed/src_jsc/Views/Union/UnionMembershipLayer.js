// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Union/UnionMembershipLayer.js:1
// source line 146, bytecode pc 477
(xs.Views.Union.UnionMembershipCell = cc.TableViewCell.extend({
    ccbCfg: [
        { name: "m_nameLab", tag: 2, type: "ls", id: "LS_Lv" },
        { name: "m_playerLevel", tag: 1, type: "ls", id: "LS_mainLv" },
        { name: "m_vipLevel", tag: 3, type: "ls", id: "LS_Lv" },
        { name: "m_ladderRank", tag: 4, type: "ls_ext", ids: [ "LS_jinengInf1", "LS_wujiangName1" ] },
        { name: "m_centerBtn", tag: 6, type: "btn", id: "Btn_btn3", stringId: "agree" },
        { name: "m_fastBtn", tag: 5, type: "btn", id: "Btn_btn3", stringId: "reject" }
    ],
    draw: function(ctx) {
    // source line 13, bytecode pc 16
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
        // source line 21, bytecode pc 19
        return false;
    }
    // source line 24, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 25, bytecode pc 35
    (this.m_listener = null);
    // source line 27, bytecode pc 43
    (this.m_ccbNode = null);
    // source line 28, bytecode pc 51
    (this.m_nameLab = null);
    // source line 29, bytecode pc 59
    (this.m_vipLevel = null);
    // source line 30, bytecode pc 67
    (this.m_ladderRank = null);
    // source line 31, bytecode pc 75
    (this.m_playerLevel = null);
    // source line 32, bytecode pc 83
    (this.m_centerBtn = null);
    // source line 33, bytecode pc 91
    (this.m_fastBtn = null);
    // source line 34, bytecode pc 99
    (this.m_parentView = null);
    // source line 36, bytecode pc 150
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.MembershipCell, this));
    // source line 37, bytecode pc 186
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 39, bytecode pc 229
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 42, bytecode pc 293
    this.m_centerBtn.setOnClickCallBack(this.onTouchCallBack.bind({ self: this, type: xs.Constant_UnionMember_Agree }));
    // source line 43, bytecode pc 313
    this.m_centerBtn.setSwallowTouch(false);
    // source line 44, bytecode pc 333
    this.m_centerBtn.setZoomOnTouchDown(false);
    // source line 46, bytecode pc 397
    this.m_fastBtn.setOnClickCallBack(this.onTouchCallBack.bind({ self: this, type: xs.Constant_UnionMember_Reject }));
    // source line 47, bytecode pc 417
    this.m_fastBtn.setSwallowTouch(false);
    // source line 48, bytecode pc 437
    this.m_fastBtn.setZoomOnTouchDown(false);
    // source line 50, bytecode pc 439
    return true;
},
    onTouchCallBackToReject: function() {
},
    onTouchCallBack: function() {
    // source line 60, bytecode pc 34
    xs.log("nummm", this.self.num);
    // source line 110, bytecode pc 269
    xs.Tools.Net.requestApplyOperation({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    union_id: xs.Profile.GameData.Mgr.getInstance().Union.getUnion().getUnionId(),
    target_id: this.self.otherPlayerId,
    type: this.type
}, function(data) {
    var m_str;
    // source line 72, bytecode pc 26
    xs.dump("listData", data);
    // source line 75, bytecode pc 58
    this.par.m_playerList.splice(this.num, 1);
    // source line 76, bytecode pc 76
    this.par.refreshPlayerList();
    // source line 77, bytecode pc 136
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_555"));
    // source line 79, bytecode pc 153
    (m_str = data.return_info.log_content);
    if ((m_str && (m_str != ""))) {
        // source line 82, bytecode pc 229
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_AddUnionLogAndRefresh, { content: m_str });
    }
    // source line 85, bytecode pc 290
    xs.Profile.GameData.Mgr.getInstance().Union.getUnion().chgMemberNum(1);
    // source line 86, bytecode pc 328
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Union_PeopleChange);
    // source line 87, bytecode pc 368
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Union_NeedUpdate_MemberLayer, true);
}.bind(this.self), function(params) {
    // source line 93, bytecode pc 26
    xs.dump("params", params);
    if ((params.error_code === "e_6003")) {
        // source line 95, bytecode pc 77
        this.par.m_playerList.splice(this.num, 1);
        // source line 96, bytecode pc 95
        this.par.refreshPlayerList();
        // source line 97, bytecode pc 155
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_570"));
        // source line 99, bytecode pc 157
        return true;
    } else {
        if ((params.error_code === "e_6001")) {
            // source line 101, bytecode pc 241
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_571"));
            // source line 102, bytecode pc 243
            return true;
        }
    }
}.bind(this.self));
},
    setBaseTouchPriority: function(priority) {
    // source line 116, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 118, bytecode pc 36
    this.m_centerBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 119, bytecode pc 63
    this.m_fastBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    setListener: function(listener) {
    // source line 124, bytecode pc 9
    (this.m_listener = listener);
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 128, bytecode pc 12
    this._super();
    // source line 130, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 133, bytecode pc 63
            (this.m_parentView = parent);
            // source line 134, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 136, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 139, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 143, bytecode pc 12
    this._super();
},
    update: function(par, num) {
    // source line 147, bytecode pc 26
    xs.log("idx---", num);
    // source line 148, bytecode pc 36
    (this.par = par);
    // source line 149, bytecode pc 46
    (this.num = num);
    // source line 152, bytecode pc 91
    this.m_nameLab.setString(this.par.m_playerList[num].getPlayerName());
    // source line 153, bytecode pc 136
    this.m_playerLevel.setString(this.par.m_playerList[num].getPlayerLevel());
    // source line 154, bytecode pc 181
    this.m_vipLevel.setString(this.par.m_playerList[num].getVipLevel());
    // source line 155, bytecode pc 271
    this.m_ladderRank.setStringByStrings([ xs.Tools.String.createString("auto_name_554"), this.par.m_playerList[num].getLadderRank() ]);
    // source line 157, bytecode pc 304
    (this.otherPlayerId = this.par.m_playerList[num].getUserId());
}
}));
// source line 165, bytecode pc 508
(xs.Views.Union.UnionMembershipCell.create = function() {
    var cell;
    // source line 166, bytecode pc 28
    (cell = new xs.Views.Union.UnionMembershipCell());
    if ((cell && cell.init())) {
        // source line 168, bytecode pc 60
        return cell;
    }
    // source line 171, bytecode pc 62
    return null;
});
// source line 357, bytecode pc 747
(xs.Views.Union.UnionMembershipLayer = xs.Views.Union.UnionBaseLayer.extend({
    ctor: function() {
    // source line 186, bytecode pc 12
    this._super();
    // source line 187, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var winSize;
    // source line 197, bytecode pc 12
    this._super();
    // source line 199, bytecode pc 24
    (this.m_playerList = []);
    // source line 201, bytecode pc 49
    (winSize = xs.director.getVisibleSize());
    // source line 204, bytecode pc 80
    (this.m_defaultSize = cc.size(891, 420));
    // source line 206, bytecode pc 139
    (this.m_bg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_contentBg02.frameName));
    // source line 207, bytecode pc 178
    this.m_bg.setAnchorPoint(cc.p(0, 0));
    // source line 208, bytecode pc 203
    this.m_bg.setContentSize(this.m_defaultSize);
    // source line 210, bytecode pc 280
    xs.Utils.Node.attachNodes(this, this.m_bg, { desc: "lb", offset: { x: -8, y: 0 } });
    // source line 211, bytecode pc 310
    xs.dump("m_scale9ContentBg:", this.m_bg);
    // source line 214, bytecode pc 379
    (this.m_tableView = cc.TableView.create(this, cc.size(882, (this.m_defaultSize.height * 0.95))));
    // source line 215, bytecode pc 408
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 216, bytecode pc 449
    this.m_tableView.setPosition(cc.p(5, 11));
    // source line 217, bytecode pc 469
    this.m_tableView.setDelegate(this);
    // source line 219, bytecode pc 498
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 220, bytecode pc 523
    this.m_bg.addChild(this.m_tableView);
    // source line 221, bytecode pc 541
    this.m_tableView.reloadData();
    // source line 226, bytecode pc 543
    return true;
},
    _readPlayerList: function() {
    // source line 253, bytecode pc 180
    xs.Tools.Net.requestApplyList({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    union_id: xs.Profile.GameData.Mgr.getInstance().Union.getUnion().getUnionId()
}, function(data) {
    var mList, x;
    // source line 237, bytecode pc 26
    xs.dump("listData", data);
    // source line 240, bytecode pc 38
    (mList = data.return_info);
    // source line 241, bytecode pc 65
    xs.dump("mmList", mList);
    // source line 242, bytecode pc 77
    (this.m_playerList = []);
    // source line 244, bytecode pc 82
    (x = 0);
    while ((x < mList.length)) {
        // source line 245, bytecode pc 141
        this.m_playerList.push(xs.Models.UnionMember.createWithJson(mList[x]));
        // source line 244, bytecode pc 156
        x++;
    }
    // source line 248, bytecode pc 204
    xs.dump("m_playerList", this.m_playerList);
    // source line 250, bytecode pc 222
    this.m_tableView.reloadData();
}.bind(this), this);
},
    refreshFromMenuClick: function() {
    // source line 278, bytecode pc 22
    xs.log("refreshFromMenuClick in baseLayer");
    if (this.isNeedRefresh) {
        // source line 280, bytecode pc 41
        (this.isNeedRefresh = false);
        // source line 281, bytecode pc 54
        this._readPlayerList();
    }
},
    onEnterTransitionDidFinish: function() {
    // source line 267, bytecode pc 12
    this._super();
    // source line 268, bytecode pc 25
    this._readPlayerList();
},
    onExitTransitionDidStart: function() {
    // source line 273, bytecode pc 12
    this._super();
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function() {
    // source line 354, bytecode pc 32
    xs.Views.Mgr.showToast("scrollViewDidZoom");
},
    tableCellTouched: function(table, cell) {
},
    refreshPlayerList: function() {
    var pos, offset, size;
    // source line 303, bytecode pc 53
    (pos = xs.Utils.clone(this.m_tableView.getContainer().getPosition()));
    // source line 304, bytecode pc 96
    (offset = xs.Utils.clone(this.m_tableView.getContentOffset()));
    // source line 306, bytecode pc 114
    this.m_tableView.reloadData();
    // source line 308, bytecode pc 168
    (size = xs.Utils.clone(this.m_tableView.getContainer().getContentSize()));
    if ((this.m_defaultSize.height < size.height)) {
        if (((this.m_defaultSize.height - offset.y) >= size.height)) {
            // source line 311, bytecode pc 229
            return void 0;
        }
        // source line 313, bytecode pc 253
        this.m_tableView.setContentOffset(offset, 0);
    }
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 318, bytecode pc 23
    return cc.size(882, 107);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 325, bytecode pc 26
    cc.log((idx + "-----"));
    // source line 327, bytecode pc 44
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 329, bytecode pc 88
        (cell = xs.Views.Union.UnionMembershipCell.create());
    }
    // source line 332, bytecode pc 109
    cell.update(this, idx);
    // source line 335, bytecode pc 113
    return cell;
},
    setBaseTouchPriority: function(priority) {
    // source line 339, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 341, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 342, bytecode pc 56
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    numberOfCellsInTableView: function(table) {
    // source line 346, bytecode pc 11
    return this.m_playerList.length;
}
}));
// source line 363, bytecode pc 778
(xs.Views.Union.UnionMembershipLayer.create = function() {
    var retObj;
    // source line 364, bytecode pc 28
    (retObj = new xs.Views.Union.UnionMembershipLayer());
    if ((retObj && retObj.init())) {
        // source line 366, bytecode pc 60
        return retObj;
    }
    // source line 368, bytecode pc 62
    return null;
});
