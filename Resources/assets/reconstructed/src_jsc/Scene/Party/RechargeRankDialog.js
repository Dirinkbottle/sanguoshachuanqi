// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Party/RechargeRankDialog.js:1
// source line 181, bytecode pc 647
(xs.Views.Union.RechargeRankTableViewCell = cc.TableViewCell.extend({
    posCfg: { icon1_x: 190, step: 130 },
    ccbCfg: [
        { tag: 1, type: "ls", name: "m_PlayerNameLabel", id: "LS_wujiangInf1" },
        { tag: 2, type: "ls", name: "m_VIPNumLabel", id: "LS_Lv" },
        {
            tag: 3,
            type: "ls",
            name: "m_IntegrationDescLabel",
            id: "LS_jinengInf1",
            stringId: "str_ActivityConsumeDesc"
        },
        { tag: 4, type: "ls", name: "m_IntegrationNumLabel", id: "LS_Lv" },
        { tag: 5, type: "ls", name: "m_RewardDescLabel", id: "LS_jinengInf1", stringId: "auto_name_511" },
        { tag: 7, type: "ls", name: "m_RewardNum_1", id: "LS_Lv" },
        { tag: 9, type: "ls", name: "m_RewardNum_2", id: "LS_Lv" },
        { tag: 30, type: "btn", name: "m_CheckBtn", id: "Btn_btn3" },
        { tag: 21, type: "ls", name: "m_RankNum", id: "LS_TTPHnomb" }
    ],
    draw: function(ctx) {
    // source line 24, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 27, bytecode pc 12
    this._super();
    // source line 28, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 32, bytecode pc 19
        return false;
    }
    // source line 35, bytecode pc 27
    (this.m_PlayerNameLabel = null);
    // source line 36, bytecode pc 35
    (this.m_VIPNumLabel = null);
    // source line 37, bytecode pc 43
    (this.m_IntegrationDescLabel = null);
    // source line 38, bytecode pc 51
    (this.m_IntegrationNumLabel = null);
    // source line 39, bytecode pc 59
    (this.m_RewardDescLabel = null);
    // source line 40, bytecode pc 67
    (this.m_RewardNum_1 = null);
    // source line 41, bytecode pc 75
    (this.m_RewardNum_2 = null);
    // source line 42, bytecode pc 83
    (this.m_RewardIcon_1 = null);
    // source line 43, bytecode pc 91
    (this.m_RewardIcon_2 = null);
    // source line 44, bytecode pc 99
    (this.m_CheckBtn = null);
    // source line 45, bytecode pc 107
    (this.m_playerId = null);
    // source line 48, bytecode pc 143
    (this.ccbNode = xs.ccb_reader.load("ccb3/RechargeRankTableViewCell.ccbi", this));
    // source line 49, bytecode pc 182
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 50, bytecode pc 218
    xs.Utils.Node.attachNodes(this, this.ccbNode);
    // source line 51, bytecode pc 261
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 54, bytecode pc 312
    this.m_CheckBtn.setString(xs.Tools.String.createString("str_ActivityZhenRongDesc"));
    // source line 55, bytecode pc 332
    this.m_CheckBtn.setSwallowTouch(true);
    // source line 56, bytecode pc 352
    this.m_CheckBtn.setZoomOnTouchDown(false);
    // source line 57, bytecode pc 390
    this.m_CheckBtn.setOnClickCallBack(this.CheckBtnClick.bind(this));
    // source line 58, bytecode pc 410
    this.m_CheckBtn.setVisible(false);
    // source line 60, bytecode pc 448
    (this.m_RewardIcon_1 = xs.Utils.getChildByTag(this.ccbNode, 6));
    // source line 61, bytecode pc 486
    (this.m_RewardIcon_2 = xs.Utils.getChildByTag(this.ccbNode, 8));
    // source line 62, bytecode pc 524
    (this.m_RankNumIcon = xs.Utils.getChildByTag(this.ccbNode, 20));
    // source line 64, bytecode pc 544
    this.m_RewardNum_1.setVisible(false);
    // source line 65, bytecode pc 564
    this.m_RewardNum_2.setVisible(false);
    // source line 66, bytecode pc 584
    this.m_RewardIcon_1.setVisible(false);
    // source line 67, bytecode pc 604
    this.m_RewardIcon_2.setVisible(false);
    // source line 70, bytecode pc 606
    return true;
},
    onTouchCallBackToReject: function() {
},
    onTouchCallBackToAgree: function() {
},
    setBaseTouchPriority: function(priority) {
    // source line 82, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 83, bytecode pc 37
    this.m_CheckBtn.setTouchPriority((this.m_baseTouchPriority - 2));
},
    setListener: function(listener) {
    // source line 87, bytecode pc 9
    (this.m_listener = listener);
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 91, bytecode pc 12
    this._super();
    // source line 92, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 95, bytecode pc 63
            (this.m_parentView = parent);
            // source line 96, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 97, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 100, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 104, bytecode pc 12
    this._super();
},
    CheckBtnClick: function() {
    // source line 108, bytecode pc 22
    xs.log("CheckBtnClick");
    // source line 110, bytecode pc 78
    xs.Tools.Net.getInstance().displayOtherTeamInfo({ other_user_id: this.m_playerId });
},
    update: function(par, num) {
    var m_list, x, _model, i, rewordDataView, _tag, p, newP, tmp, playerNum;
    // source line 116, bytecode pc 9
    (this.par = par);
    // source line 117, bytecode pc 19
    (this.num = num);
    // source line 118, bytecode pc 46
    (this.m_playerId = this.par[num].user_info.user_id);
    // source line 121, bytecode pc 85
    this.m_PlayerNameLabel.setString(this.par[num].user_info.nickname);
    // source line 123, bytecode pc 124
    this.m_VIPNumLabel.setString(this.par[num].user_info.vip);
    // source line 125, bytecode pc 163
    this.m_IntegrationNumLabel.setString(this.par[num].user_info.point);
    // source line 127, bytecode pc 168
    (m_list = null);
    for (var x in this.par[num].object) {
        if (this.par[num].object.hasOwnProperty(x)) {
            // source line 131, bytecode pc 254
            (m_list = this.par[num].object[x]);
        }
        break;
    }
    // source line 135, bytecode pc 306
    (_model = xs.Models.Game.Package.createWithJson(m_list));
    // source line 136, bytecode pc 311
    (i = 0);
    while ((i < _model.getData().length)) {
        // source line 137, bytecode pc 352
        (rewordDataView = xs.Views.Icon.IconPackage.create());
        // source line 138, bytecode pc 381
        rewordDataView.reloadRewordData(_model, i, 0.38);
        // source line 140, bytecode pc 418
        rewordDataView.attr({ ap: xs.ap_c });
        // source line 142, bytecode pc 427
        (_tag = (i + 1));
        // source line 143, bytecode pc 472
        xs.Utils.Node.replaceChildSafe(this, this[("m_RewardIcon_" + _tag)], rewordDataView);
        // source line 144, bytecode pc 525
        this[("m_RewardNum_" + _tag)].setString(("" + _model.getData()[i].num));
        // source line 145, bytecode pc 540
        (this[("m_RewardIcon_" + _tag)] = rewordDataView);
        if ((_tag >= 2)) {
            // source line 152, bytecode pc 662
            (p = cc.p(((this[("m_RewardIcon_" + (_tag - 1))].getPosition().x + 40) + this[("m_RewardNum_" + (_tag - 1))].getContentSize().width), this[("m_RewardIcon_" + _tag)].getPosition().y));
            // source line 154, bytecode pc 693
            (newP = cc.p(0, p.y));
            // source line 155, bytecode pc 698
            (tmp = 1);
            while ((p.x >= newP.x)) {
                // source line 157, bytecode pc 772
                (newP = cc.p((this.posCfg.icon1_x + (this.posCfg.step * tmp++)), newP.y));
            }
            // source line 160, bytecode pc 822
            this[("m_RewardIcon_" + _tag)].setPosition(newP);
            // source line 163, bytecode pc 902
            this[("m_RewardNum_" + _tag)].setPosition(cc.p((newP.x + 24), this[("m_RewardNum_" + _tag)].getPosition().y));
        }
        // source line 166, bytecode pc 927
        this[("m_RewardIcon_" + _tag)].setVisible(true);
        // source line 167, bytecode pc 952
        this[("m_RewardNum_" + _tag)].setVisible(true);
        // source line 136, bytecode pc 967
        i++;
    }
    // source line 171, bytecode pc 1008
    (playerNum = (this.num + 1));
    // source line 178, bytecode pc 1028
    this.setRankTitle(playerNum, 21);
},
    setRankTitle: function(rank, tag) {
    var ranking, labelPos, labelAp;
    // source line 182, bytecode pc 26
    xs.log_hsq(("ClimbLadderTableViewCell setRankTitle is " + rank));
    // source line 183, bytecode pc 55
    (ranking = xs.Utils.parseIntSafe(rank));
    // source line 184, bytecode pc 83
    (this.m_ranking = this.ccbNode.getChildByTag(tag));
    if ((ranking <= 3)) {
        // source line 187, bytecode pc 114
        this.m_ranking.setVisible(false);
        // source line 188, bytecode pc 135
        (labelPos = this.m_ranking.getPosition());
        // source line 189, bytecode pc 156
        (labelAp = this.m_ranking.getAnchorPoint());
        if (this.m_rankingSprite) {
            // source line 191, bytecode pc 201
            xs.Utils.Node.safeRemoveChild(this.m_rankingSprite);
        }
        // source line 193, bytecode pc 205
        switch (ranking) {
            case 1:
            // source line 195, bytecode pc 274
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_First", "Cmn01"));
            break;
            case 2:
            // source line 198, bytecode pc 324
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Second", "Cmn01"));
            break;
            case 3:
            // source line 201, bytecode pc 374
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Third", "Cmn01"));
            break;
            default:
            // source line 204, bytecode pc 408
            xs.assert(false, "ranking is error!", ranking);
            break;
        }
        // source line 208, bytecode pc 435
        this.m_rankingSprite.setPosition(labelPos);
        // source line 209, bytecode pc 457
        this.m_rankingSprite.setAnchorPoint(labelAp);
        // source line 211, bytecode pc 477
        this.m_rankingSprite.setVisible(true);
        // source line 212, bytecode pc 502
        this.ccbNode.addChild(this.m_rankingSprite);
    } else {
        // source line 214, bytecode pc 527
        this.m_ranking.setVisible(true);
        if (this.m_rankingSprite) {
            // source line 216, bytecode pc 558
            this.m_rankingSprite.setVisible(false);
        }
        // source line 219, bytecode pc 586
        this.m_ranking.setString((rank + ""));
    }
}
}));
// source line 224, bytecode pc 678
(xs.Views.Union.RechargeRankTableViewCell.create = function() {
    var cell;
    // source line 225, bytecode pc 28
    (cell = new xs.Views.Union.RechargeRankTableViewCell());
    if ((cell && cell.init())) {
        // source line 227, bytecode pc 60
        return cell;
    }
    // source line 229, bytecode pc 62
    return null;
});
// source line 370, bytecode pc 1059
(xs.Scene.Party.RechargeRankDialog = xs.Views.HungerLayer.extend({
    name: "xs.Scene.Party.RechargeRankDialog",
    CCB_Cfg: [
        { tag: 1, type: "ls", name: "m_title", id: "LS_huodong_title" },
        { tag: 2, type: "ls", name: "m_labelDesc_1", id: "LS_jinengInf1" },
        { tag: 3, type: "bs", name: "m_closeBtn", id: "BS_Close" },
        { tag: 4, type: "ls", name: "m_labelDesc_2", id: "LS_jinengInf1" }
    ],
    ctor: function() {
    // source line 247, bytecode pc 12
    this._super();
    // source line 248, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(params) {
    var strCountDownTime;
    if (!this._super()) {
        // source line 252, bytecode pc 19
        return false;
    }
    // source line 255, bytecode pc 27
    (this.m_data = null);
    // source line 256, bytecode pc 35
    (this.m_title = null);
    // source line 257, bytecode pc 43
    (this.m_labelDesc_1 = null);
    // source line 258, bytecode pc 51
    (this.m_labelDesc_2 = null);
    // source line 259, bytecode pc 59
    (this.m_tableView = null);
    // source line 260, bytecode pc 67
    (this.m_closeBtn = null);
    // source line 261, bytecode pc 75
    (this.m_activityTime = null);
    // source line 262, bytecode pc 83
    (this.m_strTime_1 = null);
    // source line 263, bytecode pc 91
    (this.m_strTime_2 = null);
    // source line 266, bytecode pc 127
    (this.ccbNode = xs.ccb_reader.load("ccb3/RechargeRankDialog.ccbi", this));
    // source line 267, bytecode pc 213
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", offset: cc.p(-466, -306) });
    // source line 268, bytecode pc 256
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.CCB_Cfg, this);
    // source line 271, bytecode pc 280
    this.m_closeBtn.setOnClickCallBack(function() {
    // source line 272, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    if ((xs.Constant_PartyType_Recharge_Rank == params.modelEvent.m_activity_type)) {
        // source line 277, bytecode pc 360
        this.m_title.setString(xs.Tools.String.createString("str_ActivityRechargeRankTitle"));
        // source line 278, bytecode pc 411
        this.m_labelDesc_1.setString(xs.Tools.String.createString("str_ActivityRechargeRankDesc"));
    } else {
        if ((xs.Constant_PartyType_Consume_Rank == params.modelEvent.m_activity_type)) {
            // source line 281, bytecode pc 496
            this.m_title.setString(xs.Tools.String.createString("str_ActivityConsumeRankTitle"));
            // source line 282, bytecode pc 547
            this.m_labelDesc_1.setString(xs.Tools.String.createString("str_ActivityConsumeRankDesc"));
        }
    }
    // source line 285, bytecode pc 586
    (this.m_strTime_1 = xs.Tools.String.createString("str_ActivityTimeDesc_1"));
    // source line 286, bytecode pc 625
    (this.m_strTime_2 = xs.Tools.String.createString("str_ActivityTimeDesc_2"));
    if ((params.modelEvent.instance_countdown && (params.modelEvent.instance_countdown >= 0))) {
        // source line 288, bytecode pc 684
        (this.m_activityTime = params.modelEvent.instance_countdown);
        // source line 290, bytecode pc 716
        (strCountDownTime = xs.Utils.convertSecondToTime(this.m_activityTime));
        // source line 291, bytecode pc 752
        this.m_labelDesc_2.setString(((this.m_strTime_1 + strCountDownTime) + this.m_strTime_2));
    } else {
        // source line 293, bytecode pc 765
        (this.m_activityTime = 0);
        // source line 294, bytecode pc 803
        this.m_labelDesc_2.setString(((this.m_strTime_1 + "00:00:00") + this.m_strTime_2));
    }
    if (params.modelEvent.m_reward_list) {
        // source line 299, bytecode pc 841
        (this.m_data = params.modelEvent.m_reward_list);
    }
    // source line 304, bytecode pc 896
    (this.m_tableView = cc.TableView.create(this, cc.size(895, 472)));
    // source line 305, bytecode pc 925
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 306, bytecode pc 966
    this.m_tableView.setPosition(cc.p(26, 18));
    // source line 307, bytecode pc 986
    this.m_tableView.setDelegate(this);
    // source line 308, bytecode pc 1015
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 309, bytecode pc 1040
    this.ccbNode.addChild(this.m_tableView);
    // source line 310, bytecode pc 1058
    this.m_tableView.reloadData();
    // source line 315, bytecode pc 1060
    return true;
},
    myScheduler: function() {
    var strCountDownTime;
    // source line 319, bytecode pc 26
    this.m_activityTime--;
    if ((this.m_activityTime >= 0)) {
        // source line 321, bytecode pc 71
        (strCountDownTime = xs.Utils.convertSecondToTime(this.m_activityTime));
        // source line 322, bytecode pc 107
        this.m_labelDesc_2.setString(((this.m_strTime_1 + strCountDownTime) + this.m_strTime_2));
    } else {
        // source line 325, bytecode pc 154
        xs.director.getScheduler().unscheduleCallbackForTarget(this, this.myScheduler);
    }
},
    onEnter: function() {
    // source line 331, bytecode pc 12
    this._super();
    // source line 334, bytecode pc 35
    xs.log("scheduleCallbackForTarget");
    // source line 335, bytecode pc 77
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.myScheduler);
    // source line 336, bytecode pc 132
    xs.director.getScheduler().scheduleCallbackForTarget(this, this.myScheduler, 1, cc.REPEAT_FOREVER);
},
    onExit: function() {
    // source line 339, bytecode pc 41
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.myScheduler);
    // source line 340, bytecode pc 54
    this._super();
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function(view) {
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 353, bytecode pc 23
    return cc.size(889, 118);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 359, bytecode pc 34
    (cell = xs.Views.Union.RechargeRankTableViewCell.create());
    // source line 361, bytecode pc 60
    cell.update(this.m_data, idx);
    // source line 363, bytecode pc 64
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 367, bytecode pc 11
    return this.m_data.length;
},
    setBaseTouchPriority: function(priority) {
    // source line 371, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 372, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 373, bytecode pc 56
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 374, bytecode pc 83
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 378, bytecode pc 1090
(xs.Scene.Party.RechargeRankDialog.create = function(params) {
    var ret;
    // source line 379, bytecode pc 28
    (ret = new xs.Scene.Party.RechargeRankDialog());
    if ((ret && ret.init(params))) {
        // source line 381, bytecode pc 64
        return ret;
    }
    // source line 384, bytecode pc 89
    xs.assert(false, "xs.Scene.Party.RechargeRankDialog.create err");
    // source line 385, bytecode pc 91
    return null;
});
// source line 394, bytecode pc 1170
xs.Views.Mgr.registerDialog("RechargeRankDialog", { "class": xs.Scene.Party.RechargeRankDialog, styleType: xs.Constant_DlgStyleType_Large });
