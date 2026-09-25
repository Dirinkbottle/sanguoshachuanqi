// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/QueueTeamView.js:1
// source line 480, bytecode pc 355
(xs.Views.QueueTeamView = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
},
    _CcbCfg: [ { name: "m_closeBtn", tag: 10, type: "btn", id: "Btn_Close" } ],
    init: function(data) {
    var visibleOrigin, visibleSize;
    if (!this._super()) {
        // source line 19, bytecode pc 19
        return false;
    }
    // source line 23, bytecode pc 27
    (this.m_tableViewSize = null);
    // source line 24, bytecode pc 35
    (this.m_tableView = null);
    // source line 25, bytecode pc 47
    (this.m_teams = []);
    // source line 26, bytecode pc 56
    (this.m_selectedIdx = -1);
    // source line 27, bytecode pc 65
    (this.m_changeIdx = -1);
    // source line 28, bytecode pc 73
    (this.m_baseTouchPriority = 0);
    // source line 29, bytecode pc 81
    (this.m_ccbNode = null);
    // source line 30, bytecode pc 89
    (this.m_isSchedule = false);
    // source line 32, bytecode pc 97
    (this.m_confirmBtn = null);
    // source line 33, bytecode pc 105
    (this.m_saveBtn = null);
    // source line 34, bytecode pc 113
    (this.m_vipLvLab = null);
    // source line 35, bytecode pc 121
    (this.m_playerNameLab = null);
    // source line 36, bytecode pc 129
    (this.m_commandLab = null);
    // source line 37, bytecode pc 137
    (this.m_fightLab = null);
    // source line 39, bytecode pc 145
    (this.m_card1 = null);
    // source line 40, bytecode pc 153
    (this.m_card2 = null);
    // source line 41, bytecode pc 161
    (this.m_card3 = null);
    // source line 42, bytecode pc 169
    (this.m_arrow1 = null);
    // source line 43, bytecode pc 177
    (this.m_arrow2 = null);
    // source line 44, bytecode pc 185
    (this.m_arrow3 = null);
    // source line 45, bytecode pc 193
    (this.m_card1AlterBg = null);
    // source line 46, bytecode pc 201
    (this.m_card1AlterLab = null);
    // source line 47, bytecode pc 209
    (this.m_card2AlterBg = null);
    // source line 48, bytecode pc 217
    (this.m_card2AlterLab = null);
    // source line 49, bytecode pc 225
    (this.m_card3AlterBg = null);
    // source line 50, bytecode pc 233
    (this.m_card3AlterLab = null);
    // source line 52, bytecode pc 241
    (this.m_alterBg = null);
    // source line 53, bytecode pc 249
    (this.m_alterLab = null);
    // source line 55, bytecode pc 257
    (this.m_card1Btn = null);
    // source line 56, bytecode pc 265
    (this.m_card2Btn = null);
    // source line 57, bytecode pc 273
    (this.m_card3Btn = null);
    // source line 59, bytecode pc 281
    (this.m_closeBtn = null);
    // source line 60, bytecode pc 289
    (this.m_node = null);
    // source line 62, bytecode pc 299
    (this.m_bool = data);
    if (this.m_bool) {
        // source line 68, bytecode pc 346
        (this.m_node = xs.ccb_reader.load("ccb3/QueueTeamTablePageView.ccbi", this));
        // source line 69, bytecode pc 389
        this.m_node.setContentSize(cc.size(702, 625));
        // source line 70, bytecode pc 436
        this.m_node.setAnchorPoint(cc.p(0.5, 0.5));
        // source line 71, bytecode pc 518
        xs.Utils.Node.attachNodes(this, this.m_node, { desc: "c", sc: true, offset: { x: 0, y: 0 } });
        // source line 72, bytecode pc 561
        xs.Utils.UI.replaceCcbByCfg(this.m_node, this._CcbCfg, this);
        // source line 75, bytecode pc 598
        this.m_closeBtn.setOnClickCallBack(function() {
    // source line 74, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this));
    }
    // source line 80, bytecode pc 623
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 81, bytecode pc 648
    (visibleSize = xs.director.getVisibleSize());
    // source line 87, bytecode pc 699
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.TeamBuild_QueueTeam, this));
    // source line 88, bytecode pc 742
    this.m_ccbNode.setContentSize(cc.size(620, 550));
    if (this.m_bool) {
        // source line 91, bytecode pc 843
        xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "c", sc: true, offset: { x: -352, y: -314 } });
    } else {
        // source line 93, bytecode pc 930
        xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "lb", sc: true, offset: { x: 0, y: 0 } });
    }
    // source line 96, bytecode pc 992
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.QueueTeamView.cfg.CcbCfg, this);
    // source line 98, bytecode pc 1012
    this.m_saveBtn.setVisible(false);
    // source line 99, bytecode pc 1050
    this.m_confirmBtn.setOnClickCallBack(this.confirmCallback.bind(this));
    // source line 101, bytecode pc 1087
    (this.m_card1Btn = this.setUpCardBtn(this.m_card1, this.cardBtnCallback, this, 0));
    // source line 102, bytecode pc 1124
    (this.m_card2Btn = this.setUpCardBtn(this.m_card2, this.cardBtnCallback, this, 1));
    // source line 103, bytecode pc 1162
    (this.m_card3Btn = this.setUpCardBtn(this.m_card3, this.cardBtnCallback, this, 2));
    // source line 106, bytecode pc 1175
    this.freshDataSource();
    // source line 108, bytecode pc 1196
    this.m_alterBg.setZOrder(2);
    // source line 109, bytecode pc 1217
    this.m_alterLab.setZOrder(2);
    // source line 110, bytecode pc 1238
    this.m_arrow1.setZOrder(2);
    // source line 111, bytecode pc 1259
    this.m_arrow2.setZOrder(2);
    // source line 112, bytecode pc 1280
    this.m_arrow3.setZOrder(2);
    // source line 113, bytecode pc 1301
    this.m_card1AlterBg.setZOrder(2);
    // source line 114, bytecode pc 1322
    this.m_card1AlterLab.setZOrder(2);
    // source line 115, bytecode pc 1343
    this.m_card2AlterBg.setZOrder(2);
    // source line 116, bytecode pc 1364
    this.m_card2AlterLab.setZOrder(2);
    // source line 117, bytecode pc 1385
    this.m_card3AlterBg.setZOrder(2);
    // source line 118, bytecode pc 1406
    this.m_card3AlterLab.setZOrder(2);
    // source line 121, bytecode pc 1436
    (this.m_tableViewSize = cc.size(600, 120));
    // source line 122, bytecode pc 1473
    (this.m_tableView = cc.TableView.create(this, this.m_tableViewSize));
    // source line 123, bytecode pc 1502
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL);
    // source line 124, bytecode pc 1531
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 125, bytecode pc 1551
    this.m_tableView.setDelegate(this);
    // source line 126, bytecode pc 1593
    this.m_tableView.setPosition(cc.p(50, 460));
    // source line 127, bytecode pc 1613
    this.m_tableView.setBounceable(false);
    // source line 128, bytecode pc 1654
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_tableView);
    // source line 131, bytecode pc 1667
    this.updateTeamStatusView();
    // source line 132, bytecode pc 1680
    this.updateInfoView();
    // source line 135, bytecode pc 1682
    return true;
},
    onEnter: function() {
    // source line 138, bytecode pc 12
    this._super();
    // source line 140, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.refreshView, xs.Constant_Notify_QueueTeamView_refresh);
    // source line 141, bytecode pc 141
    this.m_tableView.setContentOffset(cc.p((-100 * (((this.m_teams.length - 4) > 0) ? (this.m_teams.length - 4) : 0)), 0));
},
    onExit: function() {
    // source line 144, bytecode pc 12
    this._super();
    // source line 145, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_QueueTeamView_refresh);
},
    setBaseTouchPriority: function(priority) {
    // source line 148, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 149, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 150, bytecode pc 85
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority + xs.Views.QueueTeamView.cfg.m_tableView.priority));
    // source line 151, bytecode pc 141
    this.m_confirmBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.QueueTeamView.cfg.m_confirmBtn.priority));
    // source line 153, bytecode pc 197
    this.m_card1Btn.setTouchPriority((this.m_baseTouchPriority + xs.Views.QueueTeamView.cfg.m_card1Btn.priority));
    // source line 154, bytecode pc 253
    this.m_card2Btn.setTouchPriority((this.m_baseTouchPriority + xs.Views.QueueTeamView.cfg.m_card2Btn.priority));
    // source line 155, bytecode pc 309
    this.m_card3Btn.setTouchPriority((this.m_baseTouchPriority + xs.Views.QueueTeamView.cfg.m_card3Btn.priority));
    if (this.m_bool) {
        if (this.m_closeBtn) {
            // source line 158, bytecode pc 387
            this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.QueueTeamView.cfg.m_closeBtn.priority));
        }
    }
},
    _getQueueTeamDataInPos: function(pos) {
    var data, i;
    // source line 164, bytecode pc 4
    (data = null);
    // source line 165, bytecode pc 9
    (i = 0);
    while ((i < this.m_teams.length)) {
        if ((pos === this.m_teams[i].m_pos)) {
            // source line 167, bytecode pc 53
            (data = this.m_teams[i]);
        }
        // source line 165, bytecode pc 66
        (i = (+i + 1));
    }
    // source line 170, bytecode pc 91
    return data;
},
    setUpCardBtn: function(posNode, selector, target, data) {
    var size, btn, pos;
    // source line 173, bytecode pc 27
    (size = cc.size(140, 200));
    // source line 174, bytecode pc 57
    (btn = xs.Views.EventLayer.create());
    // source line 176, bytecode pc 76
    btn.setContentSize(size);
    // source line 177, bytecode pc 103
    btn.setTouchCallback(selector, target, data);
    // source line 178, bytecode pc 121
    (pos = posNode.getPosition());
    // source line 179, bytecode pc 195
    btn.setPosition(cc.p((pos.x - (size.width / 2)), (pos.y - (size.height / 2))));
    // source line 180, bytecode pc 233
    xs.Utils.Node.attachNodes(this.m_ccbNode, btn);
    // source line 181, bytecode pc 237
    return btn;
},
    setUpCard: function(index) {
    var teamData, general, cardView;
    // source line 185, bytecode pc 19
    (teamData = this._getQueueTeamDataInPos(index));
    if (!teamData) {
        // source line 188, bytecode pc 75
        xs.Utils.Node.fastSetVisible(this[(("m_card" + index) + "Btn")], false);
        // source line 189, bytecode pc 77
        return void 0;
    }
    if (!teamData.m_teamData) {
        // source line 194, bytecode pc 138
        xs.Utils.Node.fastSetVisible(this[(("m_card" + index) + "Btn")], false);
        // source line 195, bytecode pc 140
        return void 0;
    }
    // source line 199, bytecode pc 200
    (general = xs.Profile.GameData.Mgr.getInstance().Team.getGeneral(teamData.m_teamData));
    if (!general) {
        // source line 202, bytecode pc 256
        xs.Utils.Node.fastSetVisible(this[(("m_card" + index) + "Btn")], false);
        // source line 203, bytecode pc 258
        return void 0;
    }
    // source line 206, bytecode pc 305
    xs.Utils.Node.fastSetVisible(this[(("m_card" + index) + "Btn")], true);
    // source line 207, bytecode pc 340
    this[(("m_card" + index) + "Btn")].setTouchCallbackData((index - 1));
    // source line 209, bytecode pc 358
    (cardView = general.createCard_Fight());
    // source line 211, bytecode pc 396
    cardView.setPosition(this[("m_card" + index)].getPosition());
    // source line 212, bytecode pc 434
    xs.Utils.Node.attachNodes(this.m_ccbNode, cardView);
    // source line 213, bytecode pc 473
    xs.Utils.Node.safeRemoveChild(this[("m_card" + index)]);
    // source line 215, bytecode pc 488
    (this[("m_card" + index)] = cardView);
    if (teamData.b_isWakeUp) {
        // source line 218, bytecode pc 526
        this[("m_arrow" + index)].setVisible(true);
        // source line 219, bytecode pc 557
        this[(("m_card" + index) + "AlterBg")].setVisible(true);
        // source line 220, bytecode pc 588
        this[(("m_card" + index) + "AlterLab")].setVisible(true);
    } else {
        // source line 222, bytecode pc 618
        this[("m_arrow" + index)].setVisible(false);
        // source line 223, bytecode pc 649
        this[(("m_card" + index) + "AlterBg")].setVisible(false);
        // source line 224, bytecode pc 680
        this[(("m_card" + index) + "AlterLab")].setVisible(false);
    }
},
    setPerLayer: function(perLayer) {
    // source line 229, bytecode pc 9
    (this.m_perLayer = perLayer);
},
    freshDataSource: function() {
    var length, team, i, queueTeam;
    // source line 234, bytecode pc 14
    (length = this.m_teams.length);
    // source line 235, bytecode pc 38
    this.m_teams.splice(0, length);
    // source line 238, bytecode pc 89
    (team = xs.Profile.GameData.Mgr.getInstance().Team.getTeamGenerals());
    // source line 239, bytecode pc 121
    xs.log(("team.................length : " + team.length));
    // source line 240, bytecode pc 126
    (i = 0);
    while ((i < team.length)) {
        // source line 241, bytecode pc 161
        (queueTeam = new xs.Views.QueueTeamView.QueueTeam());
        // source line 242, bytecode pc 177
        (queueTeam.m_teamData = team[i]);
        // source line 243, bytecode pc 214
        (queueTeam.m_pos = parseInt(queueTeam.m_teamData.general_position));
        // source line 244, bytecode pc 224
        (queueTeam.b_isSelected = false);
        // source line 245, bytecode pc 234
        (queueTeam.b_isWakeUp = false);
        // source line 246, bytecode pc 256
        this.m_teams.push(queueTeam);
        // source line 247, bytecode pc 288
        xs.dump(i, this.m_teams[i]);
        // source line 240, bytecode pc 301
        (i = (+i + 1));
    }
},
    TouchedInPos: function(pos) {
    var i, teamPos, selectTeam, changeTeam;
    // source line 254, bytecode pc 8
    (pos = (pos + 1));
    // source line 255, bytecode pc 35
    xs.log(("TouchedInPos............" + pos));
    if ((this.m_selectedIdx === -1)) {
        // source line 257, bytecode pc 59
        (this.m_selectedIdx = pos);
        // source line 258, bytecode pc 68
        (this.m_changeIdx = -1);
        // source line 259, bytecode pc 111
        xs.log(((("this.m_selectedIdx = " + this.m_selectedIdx) + " this.m_changeIdx = ") + this.m_changeIdx));
        // source line 260, bytecode pc 116
        (i = 0);
        while ((i < this.m_teams.length)) {
            // source line 261, bytecode pc 141
            (teamPos = this.m_teams[i].m_pos);
            if ((teamPos === pos)) {
                // source line 263, bytecode pc 170
                (this.m_teams[i].b_isSelected = true);
                // source line 264, bytecode pc 187
                (this.m_teams[i].b_isWakeUp = false);
            } else {
                // source line 266, bytecode pc 209
                (this.m_teams[i].b_isSelected = false);
                // source line 267, bytecode pc 226
                (this.m_teams[i].b_isWakeUp = true);
            }
            // source line 260, bytecode pc 239
            (i = (+i + 1));
        }
    } else {
        // source line 271, bytecode pc 275
        (this.m_changeIdx = pos);
        // source line 272, bytecode pc 318
        xs.log(((("this.m_selectedIdx = " + this.m_selectedIdx) + " this.m_changeIdx = ") + this.m_changeIdx));
        if ((this.m_changeIdx === this.m_selectedIdx)) {
        } else {
            // source line 283, bytecode pc 375
            (selectTeam = this._getQueueTeamDataInPos(this.m_selectedIdx).clone());
            // source line 284, bytecode pc 409
            (changeTeam = this._getQueueTeamDataInPos(this.m_changeIdx).clone());
            // source line 291, bytecode pc 414
            (i = 0);
            while ((i < this.m_teams.length)) {
                if ((selectTeam.m_pos == this.m_teams[i].m_pos)) {
                    // source line 293, bytecode pc 473
                    (this.m_teams[i].m_teamData = changeTeam.m_teamData);
                    // source line 294, bytecode pc 497
                    (this.m_teams[i].m_pos = selectTeam.m_pos);
                } else {
                    if ((changeTeam.m_pos == this.m_teams[i].m_pos)) {
                        // source line 296, bytecode pc 555
                        (this.m_teams[i].m_teamData = selectTeam.m_teamData);
                        // source line 297, bytecode pc 579
                        (this.m_teams[i].m_pos = changeTeam.m_pos);
                    }
                }
                // source line 291, bytecode pc 592
                (i = (+i + 1));
            }
        }
        // source line 304, bytecode pc 618
        (i = 0);
        while ((i < this.m_teams.length)) {
            // source line 305, bytecode pc 641
            (this.m_teams[i].b_isSelected = false);
            // source line 306, bytecode pc 658
            (this.m_teams[i].b_isWakeUp = false);
            // source line 304, bytecode pc 671
            (i = (+i + 1));
        }
        // source line 309, bytecode pc 701
        (this.m_selectedIdx = -1);
        // source line 310, bytecode pc 710
        (this.m_changeIdx = -1);
    }
    // source line 313, bytecode pc 740
    xs.dump("teams", this.m_teams);
    // source line 314, bytecode pc 753
    this.updateTeamStatusView();
},
    updateTeamStatusView: function() {
    var i, length;
    // source line 319, bytecode pc 4
    (i = 1);
    while ((i <= 3)) {
        // source line 321, bytecode pc 35
        this[("m_card" + i)].setVisible(false);
        // source line 322, bytecode pc 60
        this[("m_arrow" + i)].setVisible(false);
        // source line 323, bytecode pc 91
        this[(("m_card" + i) + "AlterBg")].setVisible(false);
        // source line 324, bytecode pc 122
        this[(("m_card" + i) + "AlterLab")].setVisible(false);
        // source line 326, bytecode pc 139
        this.setUpCard(i);
        // source line 319, bytecode pc 152
        (i = (+i + 1));
    }
    if ((this.m_selectedIdx === -1)) {
        // source line 331, bytecode pc 198
        this.m_alterBg.setVisible(true);
        // source line 332, bytecode pc 218
        this.m_alterLab.setVisible(true);
    } else {
        // source line 334, bytecode pc 243
        this.m_alterBg.setVisible(false);
        // source line 335, bytecode pc 263
        this.m_alterLab.setVisible(false);
    }
    // source line 338, bytecode pc 286
    (length = this.numberOfCellsInTableView(this.m_tableView));
    // source line 339, bytecode pc 291
    (i = 0);
    while ((i < length)) {
        // source line 340, bytecode pc 319
        this.m_tableView.updateCellAtIndex(i);
        // source line 339, bytecode pc 332
        (i = (+i + 1));
    }
},
    updateInfoView: function() {
    var playerInfo;
    // source line 345, bytecode pc 50
    (playerInfo = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 346, bytecode pc 83
    this.m_vipLvLab.setString(playerInfo.getPlayerVipLevel());
    // source line 347, bytecode pc 116
    this.m_playerNameLab.setString(playerInfo.getPlayerName());
    // source line 348, bytecode pc 149
    this.m_commandLab.setString(playerInfo.getPlayerAbility());
    // source line 349, bytecode pc 215
    this.m_fightLab.setString(xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting());
},
    closeCallback: function(sender) {
    // source line 353, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    confirmCallback: function() {
    var param, i;
    // source line 356, bytecode pc 22
    xs.log(".........confirmCallback");
    // source line 358, bytecode pc 32
    (param = {});
    // source line 359, bytecode pc 46
    (param.team_id = "1");
    // source line 360, bytecode pc 61
    (param.team = {});
    // source line 361, bytecode pc 66
    (i = 0);
    while ((i < this.m_teams.length)) {
        // source line 362, bytecode pc 123
        (param.team[(this.m_teams[i].m_pos + "")] = this.m_teams[i].m_teamData.general_pk_id);
        // source line 361, bytecode pc 136
        (i = (+i + 1));
    }
    // source line 365, bytecode pc 197
    xs.Tools.Net.requestQueueTeam(param, this.QueueTeamSucceccCallback, this);
},
    QueueTeamSucceccCallback: function(data) {
    // source line 371, bytecode pc 32
    xs.Views.Mgr.showToastByStringId("queueTeam_19");
    // source line 373, bytecode pc 80
    xs.Profile.GameData.Mgr.getInstance().Hint.updateTeamHintInfo();
},
    refreshView: function() {
    // source line 381, bytecode pc 12
    this.freshDataSource();
    // source line 382, bytecode pc 25
    this.updateTeamStatusView();
    // source line 383, bytecode pc 38
    this.updateInfoView();
},
    cardBtnCallback: function(data) {
    // source line 390, bytecode pc 16
    this.TouchedInPos(data);
},
    tableViewSchedule: function() {
    var offset, cellSize, x, floatIndex, index, point;
    // source line 395, bytecode pc 20
    (offset = this.m_tableView.getContentOffset());
    // source line 396, bytecode pc 45
    (cellSize = this.tableCellSizeForIndex(this.m_tableView, 0));
    // source line 398, bytecode pc 57
    (x = offset.x);
    // source line 399, bytecode pc 95
    (floatIndex = Math.abs((offset.x / cellSize.width)));
    // source line 400, bytecode pc 117
    (index = parseInt(floatIndex));
    // source line 401, bytecode pc 128
    (point = (floatIndex - index));
    if ((point >= 0.5)) {
        // source line 404, bytecode pc 151
        (index = (index + 1));
    }
    if ((index < 0)) {
        // source line 407, bytecode pc 166
        (index = 0);
    }
    if ((index >= this.numberOfCellsInTableView())) {
        // source line 410, bytecode pc 205
        (index = (this.numberOfCellsInTableView() - 1));
    }
    // source line 412, bytecode pc 224
    (x = ((-1 * index) * cellSize.width));
    // source line 414, bytecode pc 265
    this.m_tableView.setContentOffset(cc.p(x, 0));
    // source line 416, bytecode pc 285
    this.unschedule(this.tableViewSchedule);
    // source line 417, bytecode pc 293
    (this.m_isSchedule = false);
},
    scrollViewDidScroll: function(tableView) {
    // source line 423, bytecode pc 1
    return void 0;
    if (!this.m_isSchedule) {
        // source line 426, bytecode pc 21
        (this.m_isSchedule = true);
        // source line 427, bytecode pc 47
        this.schedule(this.tableViewSchedule, 0.2);
    }
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
    var idx, cellNum, index, teamData;
    // source line 434, bytecode pc 17
    (idx = cell.getIdx());
    // source line 438, bytecode pc 37
    (cellNum = this.numberOfCellsInTableView(table));
    // source line 439, bytecode pc 53
    (index = (((cellNum + 3) - 1) - idx));
    // source line 443, bytecode pc 75
    (teamData = this._getQueueTeamDataInPos((index + 1)));
    if (teamData) {
        if (teamData.m_teamData) {
            if (xs.Profile.GameData.Mgr.getInstance().Team.getGeneral(teamData.m_teamData)) {
                // source line 448, bytecode pc 174
                this.TouchedInPos(index);
            }
        }
    }
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 455, bytecode pc 22
    return cc.size(100, 120);
},
    tableCellAtIndex: function(table, idx) {
    var cellData, cellNum, index, cell;
    // source line 460, bytecode pc 4
    (cellData = null);
    // source line 462, bytecode pc 24
    (cellNum = this.numberOfCellsInTableView(table));
    // source line 465, bytecode pc 40
    (index = (((cellNum + 3) - 1) - idx));
    // source line 470, bytecode pc 62
    (cellData = this._getQueueTeamDataInPos((index + 1)));
    // source line 472, bytecode pc 80
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 474, bytecode pc 129
        (cell = xs.Views.Table.Cell.TeamQueueTeamCell.create());
    }
    // source line 477, bytecode pc 148
    cell.setCellData(cellData);
    // source line 478, bytecode pc 152
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 482, bytecode pc 43
    return (((this.m_teams.length - 3) < 4) ? 4 : (this.m_teams.length - 3));
}
}));
// source line 486, bytecode pc 381
(xs.Views.QueueTeamView.create = function(data) {
    var layer;
    // source line 487, bytecode pc 23
    (layer = new xs.Views.QueueTeamView());
    if ((layer && layer.init(data))) {
        // source line 489, bytecode pc 59
        return layer;
    }
    // source line 491, bytecode pc 61
    return null;
});
// source line 494, bytecode pc 407
(xs.Views.QueueTeamView.load = function() {
    // source line 495, bytecode pc 34
    xs.Factorys.Sprite.load("FightScene01", true);
    // source line 496, bytecode pc 69
    xs.Factorys.Sprite.load("FightScene02", true);
    // source line 497, bytecode pc 104
    xs.Factorys.Sprite.load("FightScene10", true);
    // source line 498, bytecode pc 139
    xs.Factorys.Sprite.load("FightScene11", true);
    // source line 499, bytecode pc 174
    xs.Factorys.Sprite.load("FightScene12", true);
    // source line 500, bytecode pc 209
    xs.Factorys.Sprite.load("FightScene13", true);
    // source line 501, bytecode pc 244
    xs.Factorys.Sprite.load("FightScene14", true);
    // source line 502, bytecode pc 279
    xs.Factorys.Sprite.load("FightScene15", true);
});
// source line 505, bytecode pc 433
(xs.Views.QueueTeamView.unload = function() {
    // source line 506, bytecode pc 34
    xs.Factorys.Sprite.load("FightScene01", true);
    // source line 507, bytecode pc 69
    xs.Factorys.Sprite.load("FightScene02", true);
    // source line 508, bytecode pc 104
    xs.Factorys.Sprite.load("FightScene10", true);
    // source line 509, bytecode pc 139
    xs.Factorys.Sprite.load("FightScene11", true);
    // source line 510, bytecode pc 174
    xs.Factorys.Sprite.load("FightScene12", true);
    // source line 511, bytecode pc 209
    xs.Factorys.Sprite.load("FightScene13", true);
    // source line 512, bytecode pc 244
    xs.Factorys.Sprite.load("FightScene14", true);
    // source line 513, bytecode pc 279
    xs.Factorys.Sprite.load("FightScene15", true);
});
// source line 557, bytecode pc 1351
(xs.Views.QueueTeamView.cfg = {
    CcbCfg: [
        { name: "m_saveBtn", tag: 10 },
        { name: "m_confirmBtn", tag: 15, type: "btn", id: "Btn_Confirm" },
        { name: "m_vipLvLab", tag: 11, type: "ls", id: "LS_Lv" },
        { name: "m_playerNameLab", tag: 12, type: "ls", id: "LS_fightUI1" },
        { name: "m_commandLab", tag: 13, type: "ls", id: "LS_mainUI4" },
        { name: "m_fightLab", tag: 14, type: "ls", id: "LS_mainUI4" },
        { name: "m_card1", tag: 16 },
        { name: "m_card2", tag: 17 },
        { name: "m_card3", tag: 18 },
        { name: "m_arrow1", tag: 19 },
        { name: "m_arrow2", tag: 20 },
        { name: "m_arrow3", tag: 21 },
        { name: "m_alterBg", tag: 22 },
        { name: "m_alterLab", tag: 23, type: "ls", id: "LS_fightUI1", stringId: "str_QueueTeam_alter" },
        { name: "m_card1AlterBg", tag: 24 },
        {
            name: "m_card1AlterLab",
            tag: 25,
            type: "ls",
            id: "LS_fightUI1",
            stringId: "str_QueueTeam_replace"
        },
        { name: "m_card2AlterBg", tag: 26 },
        {
            name: "m_card2AlterLab",
            tag: 27,
            type: "ls",
            id: "LS_fightUI1",
            stringId: "str_QueueTeam_replace"
        },
        { name: "m_card3AlterBg", tag: 28 },
        {
            name: "m_card3AlterLab",
            tag: 29,
            type: "ls",
            id: "LS_fightUI1",
            stringId: "str_QueueTeam_replace"
        }
    ],
    m_closeBtn: { priority: -5 },
    m_confirmBtn: { priority: -5 },
    m_card1Btn: { priority: -2 },
    m_card2Btn: { priority: -2 },
    m_card3Btn: { priority: -2 },
    m_tableView: { zOrder: 0, tag: -1, priority: -2 }
});
// source line 563, bytecode pc 1411
xs.Views.Mgr.registerDialog("QueueTeamDialog", { "class": xs.Views.QueueTeamView });
// source line 574, bytecode pc 1494
(xs.Views.QueueTeamView.QueueTeam = cc.Class.extend({
    m_pos: 0,
    m_teamData: null,
    b_isWakeUp: false,
    b_isSelected: false,
    clone: function() {
    var queueTeam;
    // source line 575, bytecode pc 28
    (queueTeam = new xs.Views.QueueTeamView.QueueTeam());
    // source line 576, bytecode pc 43
    (queueTeam.m_pos = this.m_pos);
    // source line 577, bytecode pc 58
    (queueTeam.m_teamData = this.m_teamData);
    // source line 578, bytecode pc 73
    (queueTeam.b_isWakeUp = this.b_isWakeUp);
    // source line 579, bytecode pc 88
    (queueTeam.b_isSelected = this.b_isSelected);
    // source line 580, bytecode pc 92
    return queueTeam;
}
}));
