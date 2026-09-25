// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/DecisiveBattle/SupportRecordView.js:1
// source line 135, bytecode pc 343
(xs.Views.SupportRecordView = cc.Layer.extend({
    name: "xs.Views.SupportRecordView",
    cfg: [
        { tag: 10, type: "ls", name: "m_honorNumLabel", id: "LS_liebiaoInf2" },
        {
            tag: 2,
            type: "ls",
            name: "m_hintLabel",
            id: "LS_qiangduo_Inf",
            stringId: "DecisiveBattle_ExchangeIntro"
        },
        {
            tag: 1,
            type: "ls",
            name: "m_pointsTodayLabel",
            id: "LS_qiangduo_Inf",
            stringId: "DecisiveBattle_supportPoints"
        }
    ],
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(data) {
    if (!this._super()) {
        // source line 18, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 27
    (this.m_tableView = null);
    // source line 21, bytecode pc 35
    (this.headBarNode = null);
    // source line 22, bytecode pc 43
    (this.m_honorNumLabel = null);
    // source line 23, bytecode pc 51
    (this.m_pointsTodayLabel = null);
    // source line 24, bytecode pc 63
    (this.m_data = []);
    // source line 26, bytecode pc 78
    (this.m_local = data.local);
    // source line 30, bytecode pc 114
    (this.headBarNode = xs.ccb_reader.load("ccb3/beta_1_duihuanrongyudi.ccbi", this));
    // source line 31, bytecode pc 156
    this.headBarNode.setContentSize(cc.size(554, 36));
    // source line 32, bytecode pc 195
    this.headBarNode.setAnchorPoint(cc.p(0, 1));
    // source line 33, bytecode pc 254
    xs.Utils.Node.attachNodes(this, this.headBarNode, { desc: "lt", sc: true });
    // source line 34, bytecode pc 297
    xs.Utils.UI.replaceCcbByCfg(this.headBarNode, this.cfg, this);
    // source line 36, bytecode pc 321
    this.m_honorNumLabel.setString("0");
    // source line 37, bytecode pc 383
    this.m_hintLabel.setPositionX(((this.m_honorNumLabel.getPositionX() + this.m_honorNumLabel.getContentSize().width) + 12));
    // source line 41, bytecode pc 407
    this.m_pointsTodayLabel.setScale(0.85);
    // source line 44, bytecode pc 464
    (this.m_tableView = cc.TableView.create(this, xs.Views.TablePage.getTableViewSize()));
    // source line 45, bytecode pc 484
    this.m_tableView.setDelegate(this);
    // source line 46, bytecode pc 513
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 47, bytecode pc 542
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 52, bytecode pc 632
    xs.Utils.Node.attachNodes(this, this.m_tableView, { desc: "lb", offset: xs.Views.TablePage.getTableViewOffset(), sc: true });
    // source line 54, bytecode pc 650
    this.m_tableView.reloadData();
    if (!xs.Utils.isEmpty(data.jsonData)) {
        // source line 58, bytecode pc 740
        this.m_honorNumLabel.setString((data.jsonData.point.toString() || ""));
        // source line 59, bytecode pc 802
        this.m_hintLabel.setPositionX(((this.m_honorNumLabel.getPositionX() + this.m_honorNumLabel.getContentSize().width) + 12));
        if (data.jsonData.support_list) {
            // source line 62, bytecode pc 840
            (this.m_data = data.jsonData.support_list);
            // source line 64, bytecode pc 858
            this.m_tableView.reloadData();
        }
    } else {
        // source line 68, bytecode pc 885
        this.switchRequestDataForNet(data.type);
    }
    // source line 71, bytecode pc 887
    return true;
},
    switchRequestDataForNet: function(type) {
    // source line 91, bytecode pc 119
    xs.Tools.Net.requestDecisiveBattleSupportRecord({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), type: type }, this.m_local, function(data) {
    // source line 82, bytecode pc 48
    this.m_honorNumLabel.setString((data.point.toString() || ""));
    // source line 83, bytecode pc 110
    this.m_hintLabel.setPositionX(((this.m_honorNumLabel.getPositionX() + this.m_honorNumLabel.getContentSize().width) + 12));
    if (data.support_list) {
        // source line 86, bytecode pc 138
        (this.m_data = data.support_list);
        // source line 88, bytecode pc 156
        this.m_tableView.reloadData();
    }
}, this);
},
    onEnter: function() {
    // source line 95, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 99, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 102, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 103, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 104, bytecode pc 56
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function(view) {
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 112, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 114, bytecode pc 56
        (cell = xs.Views.SupportRecordTableCell.create());
    }
    // source line 118, bytecode pc 82
    cell.updateInfo(this.m_data[idx]);
    // source line 120, bytecode pc 86
    return cell;
},
    numberOfCellsInTableView: function(table) {
    if (this.m_data) {
        // source line 125, bytecode pc 22
        return this.m_data.length;
    }
    // source line 128, bytecode pc 24
    return 0;
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 132, bytecode pc 23
    return cc.size(850, 120);
},
    tableCellTouched: function(table, cell) {
}
}));
// source line 140, bytecode pc 369
(xs.Views.SupportRecordView.create = function(data) {
    var ret;
    // source line 141, bytecode pc 23
    (ret = new xs.Views.SupportRecordView());
    if ((ret && ret.init(data))) {
        // source line 143, bytecode pc 59
        return ret;
    }
    // source line 145, bytecode pc 61
    return null;
});
// source line 190, bytecode pc 811
(xs.Views.SupportRecordTableCell = cc.TableViewCell.extend({
    ccbCfg: [
        { tag: 1, type: "ls", name: "m_date", id: "LS_wujiangInf1" },
        { tag: 2, type: "ls", name: "m_rounds", id: "LS_wujiangInf1" },
        { tag: 3, type: "ls", name: "m_sessions", id: "LS_wujiangInf1" },
        {
            tag: 4,
            type: "ls",
            name: "m_selectSupport",
            id: "LS_popUI2",
            stringId: "decisive_support_select"
        },
        { tag: 5, type: "ls", name: "m_userName", id: "LS_popUI2" },
        { tag: 6, type: "ls", name: "m_result", id: "LS_popUI2" },
        { tag: 7, type: "ls", name: "m_points", id: "LS_popUI2" }
    ],
    draw: function(ctx) {
    // source line 161, bytecode pc 16
    this._super(ctx);
},
    init: function() {
    // source line 165, bytecode pc 7
    (this.m_date = null);
    // source line 166, bytecode pc 15
    (this.m_sessions = null);
    // source line 167, bytecode pc 23
    (this.m_rounds = null);
    // source line 168, bytecode pc 31
    (this.m_userName = null);
    // source line 169, bytecode pc 39
    (this.m_result = null);
    // source line 170, bytecode pc 47
    (this.m_points = null);
    // source line 172, bytecode pc 55
    (this.m_pic = null);
    // source line 174, bytecode pc 91
    (this.ccbNode = xs.ccb_reader.load("ccb3/SupportRecordCell.ccbi", this));
    // source line 175, bytecode pc 150
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "lb", sc: false });
    // source line 176, bytecode pc 193
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 178, bytecode pc 220
    (this.m_pic = this.ccbNode.getChildByTag(8));
    // source line 180, bytecode pc 222
    return true;
},
    onEnter: function() {
    // source line 184, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 188, bytecode pc 12
    this._super();
},
    updateInfo: function(data) {
    var strArray, _strArray, str, _label, pic_bg, _pointStr, _str, _pointLabel;
    // source line 192, bytecode pc 8
    (strArray = []);
    // source line 193, bytecode pc 33
    (strArray[0] = (data.round || ""));
    // source line 195, bytecode pc 42
    (_strArray = []);
    // source line 196, bytecode pc 67
    (_strArray[0] = (data.session || ""));
    // source line 197, bytecode pc 105
    this.m_date.setString((data.date || ""));
    // source line 198, bytecode pc 160
    this.m_rounds.setString(xs.Tools.String.createStringWithArgsArray("DecisiveBattle_round", strArray));
    // source line 199, bytecode pc 215
    this.m_sessions.setString(xs.Tools.String.createStringWithArgsArray("DecisiveBattle_session", _strArray));
    // source line 201, bytecode pc 253
    this.m_userName.setString((data.player_nick || ""));
    if ((data.status == 0)) {
        // source line 206, bytecode pc 304
        (str = xs.Tools.String.createString("DecisiveBattle_noWinNoFaile"));
        // source line 207, bytecode pc 344
        (_label = xs.Factorys.Label.createByStyleIdWithString("LS_BntHui", str));
        // source line 209, bytecode pc 389
        xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_result, _label);
        // source line 210, bytecode pc 399
        (this.m_result = _label);
        // source line 212, bytecode pc 419
        this.m_points.setVisible(false);
        // source line 215, bytecode pc 461
        (pic_bg = xs.Factorys.Sprite.create("Cmn03_jingqingqidai", "Cmn03"));
        // source line 216, bytecode pc 506
        xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_pic, pic_bg);
        // source line 217, bytecode pc 516
        (this.m_pic = pic_bg);
    } else {
        if ((data.status == 1)) {
            // source line 223, bytecode pc 556
            this.m_points.setVisible(true);
            // source line 225, bytecode pc 592
            (str = xs.Tools.String.createString("DecisiveBattle_Win"));
            // source line 226, bytecode pc 632
            (_label = xs.Factorys.Label.createByStyleIdWithString("LS_danyao", str));
            // source line 228, bytecode pc 677
            xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_result, _label);
            // source line 229, bytecode pc 687
            (this.m_result = _label);
            // source line 231, bytecode pc 723
            (_pointStr = xs.Tools.String.createString("DecisiveBattle_points"));
            // source line 232, bytecode pc 745
            (_str = ((_pointStr + "+") + data.point));
            // source line 233, bytecode pc 785
            (_pointLabel = xs.Factorys.Label.createByStyleIdWithString("LS_danyao", _str));
            // source line 235, bytecode pc 830
            xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_points, _pointLabel);
            // source line 236, bytecode pc 840
            (this.m_points = _pointLabel);
            // source line 238, bytecode pc 882
            (pic_bg = xs.Factorys.Sprite.create("Cmn03_zhichizhengque", "Cmn03"));
            // source line 239, bytecode pc 927
            xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_pic, pic_bg);
            // source line 240, bytecode pc 937
            (this.m_pic = pic_bg);
        } else {
            if ((data.status == 2)) {
                // source line 246, bytecode pc 978
                this.m_points.setVisible(true);
                // source line 248, bytecode pc 1014
                (str = xs.Tools.String.createString("DecisiveBattle_Faile"));
                // source line 249, bytecode pc 1054
                (_label = xs.Factorys.Label.createByStyleIdWithString("LS_fightUI1", str));
                // source line 251, bytecode pc 1099
                xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_result, _label);
                // source line 252, bytecode pc 1109
                (this.m_result = _label);
                // source line 254, bytecode pc 1145
                (_pointStr = xs.Tools.String.createString("DecisiveBattle_points"));
                // source line 255, bytecode pc 1167
                (_str = ((_pointStr + "+") + data.point));
                // source line 256, bytecode pc 1207
                (_pointLabel = xs.Factorys.Label.createByStyleIdWithString("LS_fightUI1", _str));
                // source line 258, bytecode pc 1252
                xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_points, _pointLabel);
                // source line 259, bytecode pc 1262
                (this.m_points = _pointLabel);
                // source line 261, bytecode pc 1304
                (pic_bg = xs.Factorys.Sprite.create("Cmn03_zhichishiwu", "Cmn03"));
                // source line 262, bytecode pc 1349
                xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_pic, pic_bg);
                // source line 263, bytecode pc 1359
                (this.m_pic = pic_bg);
            }
        }
    }
}
}));
// source line 268, bytecode pc 837
(xs.Views.SupportRecordTableCell.create = function() {
    var ret;
    // source line 269, bytecode pc 23
    (ret = new xs.Views.SupportRecordTableCell());
    if ((ret && ret.init())) {
        // source line 271, bytecode pc 55
        return ret;
    }
    // source line 273, bytecode pc 57
    return null;
});
