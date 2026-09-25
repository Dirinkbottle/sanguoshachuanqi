// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ShowTeamView.js:1
// source line 451, bytecode pc 918
(xs.Views.ShowTeamView = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 6, bytecode pc 12
    this._super();
},
    CcbCfg: [
        { name: "m_saveBtn", tag: 10, type: "btn", id: "Btn_Confirm" },
        { name: "m_useBtn", tag: 15, type: "btn", id: "Btn_Confirm" },
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
        { name: "m_alterLab", tag: 23 },
        { name: "m_card1AlterBg", tag: 24 },
        { name: "m_card1AlterLab", tag: 25 },
        { name: "m_card2AlterBg", tag: 26 },
        { name: "m_card2AlterLab", tag: 27 },
        { name: "m_card3AlterBg", tag: 28 },
        { name: "m_card3AlterLab", tag: 29 }
    ],
    init: function(param) {
    var data;
    if (!this._super()) {
        // source line 32, bytecode pc 19
        return false;
    }
    // source line 34, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 35, bytecode pc 35
    (this.m_tableView = null);
    // source line 36, bytecode pc 43
    (this.m_arrow1 = null);
    // source line 37, bytecode pc 51
    (this.m_arrow2 = null);
    // source line 38, bytecode pc 59
    (this.m_arrow3 = null);
    // source line 40, bytecode pc 67
    (this.m_saveBtn = null);
    // source line 41, bytecode pc 75
    (this.m_useBtn = null);
    // source line 43, bytecode pc 83
    (this.m_alterBg = null);
    // source line 44, bytecode pc 91
    (this.m_alterLab = null);
    // source line 45, bytecode pc 99
    (this.m_card1AlterBg = null);
    // source line 46, bytecode pc 107
    (this.m_card1AlterLab = null);
    // source line 47, bytecode pc 115
    (this.m_card2AlterBg = null);
    // source line 48, bytecode pc 123
    (this.m_card2AlterLab = null);
    // source line 49, bytecode pc 131
    (this.m_card3AlterBg = null);
    // source line 50, bytecode pc 139
    (this.m_card3AlterLab = null);
    // source line 53, bytecode pc 151
    (this.m_data = []);
    // source line 56, bytecode pc 202
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.TeamBuild_QueueTeam, this));
    // source line 57, bytecode pc 245
    this.m_ccbNode.setContentSize(cc.size(620, 550));
    // source line 58, bytecode pc 327
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "lb", sc: true, offset: { x: 0, y: 0 } });
    // source line 60, bytecode pc 370
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.CcbCfg, this);
    // source line 63, bytecode pc 390
    this.m_arrow1.setVisible(false);
    // source line 64, bytecode pc 410
    this.m_arrow2.setVisible(false);
    // source line 65, bytecode pc 430
    this.m_arrow3.setVisible(false);
    // source line 66, bytecode pc 450
    this.m_alterBg.setVisible(false);
    // source line 67, bytecode pc 470
    this.m_alterLab.setVisible(false);
    // source line 69, bytecode pc 490
    this.m_card1AlterBg.setVisible(false);
    // source line 70, bytecode pc 510
    this.m_card1AlterLab.setVisible(false);
    // source line 71, bytecode pc 530
    this.m_card2AlterBg.setVisible(false);
    // source line 72, bytecode pc 550
    this.m_card2AlterLab.setVisible(false);
    // source line 73, bytecode pc 570
    this.m_card3AlterBg.setVisible(false);
    // source line 74, bytecode pc 590
    this.m_card3AlterLab.setVisible(false);
    // source line 77, bytecode pc 629
    (this.m_promptLab_1 = xs.Factorys.Label.createByStyleId("LS_BntHui"));
    // source line 78, bytecode pc 653
    this.m_promptLab_1.setStringById("queueTeam_8");
    // source line 79, bytecode pc 744
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_promptLab_1, { desc: "lb", sc: true, offset: { x: 310, y: 290 } });
    // source line 81, bytecode pc 783
    (this.m_promptLab_2 = xs.Factorys.Label.createByStyleId("LS_huodong_day"));
    // source line 82, bytecode pc 807
    this.m_promptLab_2.setStringById("queueTeam_9");
    // source line 83, bytecode pc 898
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_promptLab_2, { desc: "lb", sc: true, offset: { x: 310, y: 245 } });
    // source line 87, bytecode pc 922
    this.m_saveBtn.setStringById("queueTeam_10");
    // source line 88, bytecode pc 960
    this.m_saveBtn.setOnClickCallBack(this.saveTeamButtonCallback.bind(this));
    // source line 89, bytecode pc 984
    this.m_useBtn.setStringById("queueTeam_11");
    // source line 90, bytecode pc 1022
    this.m_useBtn.setOnClickCallBack(this.useTeamButtonCallback.bind(this));
    // source line 92, bytecode pc 1031
    (data = []);
    if (!xs.Utils.isEmpty(param.data)) {
        // source line 96, bytecode pc 1144
        (data = (xs.Utils.isJsonString(param.data) ? JSON.parse(param.data) : param.data));
        // source line 97, bytecode pc 1156
        (data = data.team);
    }
    // source line 101, bytecode pc 1178
    (this.m_teamId = (param.team_id || 1));
    // source line 103, bytecode pc 1195
    this.refreshView(data);
    // source line 104, bytecode pc 1208
    this.updateInfoView();
    // source line 106, bytecode pc 1238
    (this.m_tableViewSize = cc.size(600, 120));
    // source line 107, bytecode pc 1275
    (this.m_tableView = cc.TableView.create(this, this.m_tableViewSize));
    // source line 108, bytecode pc 1304
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL);
    // source line 109, bytecode pc 1333
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 110, bytecode pc 1353
    this.m_tableView.setDelegate(this);
    // source line 111, bytecode pc 1395
    this.m_tableView.setPosition(cc.p(50, 460));
    // source line 112, bytecode pc 1415
    this.m_tableView.setBounceable(false);
    // source line 113, bytecode pc 1456
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_tableView);
    // source line 115, bytecode pc 1458
    return true;
},
    saveTeamButtonCallback: function() {
    var numStr, promptStr;
    // source line 121, bytecode pc 51
    (numStr = xs.Tools.String.convNumberString(parseInt(this.m_teamId)));
    // source line 122, bytecode pc 100
    (promptStr = xs.Tools.String.createStringWithArgsArray("queueTeam_16", [ numStr ]));
    // source line 147, bytecode pc 278
    xs.Views.Mgr.showDialogByName("NewCommon", {
    title: "queueTeam_15",
    content: promptStr,
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 130, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 146, bytecode pc 115
    xs.Tools.Net.requestSaveOneTeamInfor({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    team_id: this.m_teamId
}, function(jsonData) {
    if (jsonData.team_info.team) {
        // source line 139, bytecode pc 44
        xs.Views.Mgr.hideDialog();
        // source line 140, bytecode pc 77
        xs.Views.Mgr.showToastByStringId("queueTeam_17");
        // source line 141, bytecode pc 104
        this.refreshView(jsonData.team_info.team);
        // source line 143, bytecode pc 117
        this.saveQueueTeamInforLocal();
    }
}, this);
}.bind(this)
});
},
    saveQueueTeamInforLocal: function() {
    var playerAbility, playerFighting, data, key, str;
    // source line 151, bytecode pc 61
    (playerAbility = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerAbility());
    // source line 152, bytecode pc 112
    (playerFighting = xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting());
    // source line 155, bytecode pc 138
    (data = { Ability: playerAbility, Fighting: playerFighting });
    // source line 157, bytecode pc 154
    (key = ("teamid_" + this.m_teamId));
    try {
        // source line 159, bytecode pc 179
        (str = JSON.stringify(data));
        // source line 160, bytecode pc 214
        xs.Utils.LocalStore.setItem(key, str);
        // source line 161, bytecode pc 231
        this.updateInfoView(data);
    } catch (e) {
        // source line 164, bytecode pc 259
        this.updateInfoView();
        /* TODO_BYTECODE pc=260 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    useTeamButtonCallback: function() {
    if (xs.Utils.isEmpty(this.m_data)) {
        // source line 171, bytecode pc 65
        xs.Views.Mgr.showToastByStringId("queueTeam_18");
        // source line 172, bytecode pc 67
        return void 0;
    }
    // source line 189, bytecode pc 183
    xs.Tools.Net.requestLoadOneTeamInfor({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    team_id: this.m_teamId
}, function(jsonData) {
    var data;
    if (!xs.Utils.isEmpty(jsonData.return_info.this_team_info.team)) {
        // source line 181, bytecode pc 67
        (data = jsonData.return_info.this_team_info.team);
        // source line 182, bytecode pc 84
        this.checkTeamInfor(data);
    }
    // source line 184, bytecode pc 122
    xs.Utils.Notify.postNotification(xs.Constant_Notify_QueueTeamView_refresh);
    // source line 186, bytecode pc 170
    xs.Profile.GameData.Mgr.getInstance().Hint.updateTeamHintInfo();
    // source line 187, bytecode pc 208
    xs.Utils.Notify.postNotification(xs.Constant_Notify_HintChange_TeamInfo);
}, this);
},
    checkTeamInfor: function(data) {
    var changeDatas, i, changeData, skillResult, equipmentResult, assist_generalResult, str, key, model;
    // source line 192, bytecode pc 9
    (changeDatas = {});
    // source line 193, bytecode pc 14
    (i = 0);
    while ((i < this.m_data.length)) {
        // source line 194, bytecode pc 30
        (changeData = {});
        if ((data[i].general_pk_id == this.m_data[i].general_pk_id)) {
            if (xs.Utils.isEmpty(data[i].general_pk_id)) {
            }
            // source line 200, bytecode pc 158
            (skillResult = this.compareData(data[i].skill_list, this.m_data[i].skill_list, "skill"));
            // source line 201, bytecode pc 209
            (equipmentResult = this.compareData(data[i].equipments_list, this.m_data[i].equipments_list, "equipment"));
            // source line 202, bytecode pc 260
            (assist_generalResult = this.compareData(data[i].assist_general_list, this.m_data[i].assist_general_list, "assist_general"));
            if ((skillResult || (equipmentResult || assist_generalResult))) {
                // source line 205, bytecode pc 298
                (changeData.skill = skillResult);
                // source line 207, bytecode pc 310
                (changeData.equipment = equipmentResult);
                // source line 209, bytecode pc 322
                (changeData.assist_general = assist_generalResult);
                // source line 211, bytecode pc 342
                (changeDatas[data[i].general_pk_id] = changeData);
            }
        } else {
            // source line 217, bytecode pc 365
            (changeDatas[data[i].general_pk_id] = true);
        }
        // source line 193, bytecode pc 379
        (i = (+i + 1));
    }
    if (!xs.Utils.isEmpty(changeDatas)) {
        // source line 223, bytecode pc 437
        (i = 0);
        // source line 224, bytecode pc 442
        (str = null);
        for (var key in changeDatas) {
            if (!(changeDatas.hasOwnProperty(key))) continue;
            // source line 227, bytecode pc 536
            (model = xs.Profile.GameData.Mgr.getInstance().Generals.getGeneralModelByPkid(key));
            if ((changeDatas[key] == true)) {
                if (model) {
                    // source line 230, bytecode pc 609
                    (str = (model.getNameString() + xs.Tools.String.createString("queueTeam_20")));
                } else {
                    // source line 232, bytecode pc 683
                    (str = (xs.Tools.String.createString("queueTeam_1") + xs.Tools.String.createString("queueTeam_20")));
                }
            } else {
                if (changeDatas[key].skill) {
                    if (model) {
                        // source line 237, bytecode pc 797
                        (str = ((model.getNameString() + xs.Tools.String.createString("queueTeam_22")) + xs.Tools.String.createString("queueTeam_20")));
                    } else {
                        // source line 239, bytecode pc 871
                        (str = (xs.Tools.String.createString("queueTeam_1") + xs.Tools.String.createString("queueTeam_20")));
                    }
                }
                if (changeDatas[key].assist_general) {
                    if (model) {
                        // source line 245, bytecode pc 980
                        (str = ((model.getNameString() + xs.Tools.String.createString("queueTeam_21")) + xs.Tools.String.createString("queueTeam_20")));
                    } else {
                        // source line 247, bytecode pc 1054
                        (str = (xs.Tools.String.createString("queueTeam_1") + xs.Tools.String.createString("queueTeam_20")));
                    }
                }
                if (changeDatas[key].equipment) {
                    if (model) {
                        // source line 252, bytecode pc 1163
                        (str = ((model.getNameString() + xs.Tools.String.createString("queueTeam_23")) + xs.Tools.String.createString("queueTeam_20")));
                    } else {
                        // source line 254, bytecode pc 1237
                        (str = (xs.Tools.String.createString("queueTeam_1") + xs.Tools.String.createString("queueTeam_20")));
                    }
                }
            }
            // source line 258, bytecode pc 1251
            (i = (+i + 1));
        }
        if (!xs.Utils.isEmpty(str)) {
            if ((i == 1)) {
                // source line 263, bytecode pc 1332
                xs.Views.Mgr.showToast(str);
            } else {
                // source line 265, bytecode pc 1430
                xs.Views.Mgr.showToast((xs.Tools.String.createString("queueTeam_1") + xs.Tools.String.createString("queueTeam_20")));
            }
        } else {
            // source line 269, bytecode pc 1468
            xs.Views.Mgr.showToastByStringId("queueTeam_12");
        }
    } else {
        // source line 275, bytecode pc 1506
        xs.Views.Mgr.showToastByStringId("queueTeam_12");
    }
},
    compareData: function(data_1, data_2, type) {
    var i;
    if (xs.Utils.isEmpty(data_1)) {
        if (xs.Utils.isEmpty(data_2)) {
            // source line 284, bytecode pc 61
            return false;
        } else {
            // source line 286, bytecode pc 68
            return true;
        }
    } else {
        if (xs.Utils.isEmpty(data_2)) {
            // source line 293, bytecode pc 105
            return true;
        }
        if ((data_1.length == data_2.length)) {
            if ((type == "assist_general")) {
                // source line 298, bytecode pc 146
                (i = 0);
                while ((i < data_1.length)) {
                    if ((data_1[i].general_pk_id && data_2[i].general_pk_id)) {
                        if ((data_1[i].general_pk_id != data_2[i].general_pk_id)) {
                            // source line 301, bytecode pc 219
                            return true;
                        }
                    }
                    // source line 298, bytecode pc 233
                    (i = (+i + 1));
                }
                // source line 305, bytecode pc 254
                return false;
            } else {
                // source line 308, bytecode pc 264
                (i = 0);
                while ((i < data_1.length)) {
                    if ((data_1[i] != data_2[i])) {
                        // source line 310, bytecode pc 292
                        return true;
                    }
                    // source line 308, bytecode pc 306
                    (i = (+i + 1));
                }
                // source line 313, bytecode pc 327
                return false;
            }
        } else {
            // source line 316, bytecode pc 334
            return true;
        }
    }
},
    refreshView: function(data) {
    var i;
    // source line 328, bytecode pc 9
    (this.m_data = data);
    if ((this.m_data.length > 0)) {
        // source line 330, bytecode pc 47
        this.m_promptLab_1.setVisible(false);
        // source line 331, bytecode pc 67
        this.m_promptLab_2.setVisible(false);
    } else {
        // source line 334, bytecode pc 92
        this.m_promptLab_1.setVisible(true);
        // source line 335, bytecode pc 112
        this.m_promptLab_2.setVisible(true);
        if (this.m_tableView) {
            // source line 338, bytecode pc 143
            this.m_tableView.setVisible(false);
        }
        // source line 340, bytecode pc 148
        (i = 1);
        while ((i < 4)) {
            if (this[("m_card" + i)]) {
                // source line 342, bytecode pc 195
                this[("m_card" + i)].setVisible(false);
            }
            // source line 340, bytecode pc 209
            (i = (+i + 1));
        }
        // source line 345, bytecode pc 224
        return void 0;
    }
    if (this.m_tableView) {
        // source line 348, bytecode pc 255
        this.m_tableView.setVisible(true);
        // source line 349, bytecode pc 273
        this.m_tableView.reloadData();
    }
    // source line 353, bytecode pc 293
    this.updateGeneralCard(this.m_data);
},
    onEnter: function() {
    // source line 357, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 360, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 363, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 364, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 365, bytecode pc 56
    this.m_saveBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 366, bytecode pc 83
    this.m_useBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    updateInfoView: function(data) {
    var playerInfo, key, _data, _result;
    // source line 370, bytecode pc 50
    (playerInfo = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 371, bytecode pc 83
    this.m_vipLvLab.setString(playerInfo.getPlayerVipLevel());
    // source line 372, bytecode pc 116
    this.m_playerNameLab.setString(playerInfo.getPlayerName());
    if (data) {
        // source line 374, bytecode pc 151
        this.m_commandLab.setString(data.Ability);
        // source line 375, bytecode pc 178
        this.m_fightLab.setString(data.Fighting);
    } else {
        // source line 377, bytecode pc 199
        (key = ("teamid_" + this.m_teamId));
        // source line 378, bytecode pc 233
        (_data = xs.Utils.LocalStore.getItem(key));
        if ((_data == "")) {
            // source line 380, bytecode pc 280
            this.m_commandLab.setString(playerInfo.getPlayerAbility());
            // source line 381, bytecode pc 346
            this.m_fightLab.setString(xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting());
        } else {
            try {
                // source line 384, bytecode pc 376
                (_result = JSON.parse(_data));
                // source line 385, bytecode pc 403
                this.m_commandLab.setString(_result.Ability);
                // source line 386, bytecode pc 430
                this.m_fightLab.setString(_result.Fighting);
            } catch (e) {
                // source line 388, bytecode pc 478
                this.m_commandLab.setString(playerInfo.getPlayerAbility());
                // source line 389, bytecode pc 544
                this.m_fightLab.setString(xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting());
                /* TODO_BYTECODE pc=545 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
            }
        }
    }
},
    updateGeneralCard: function(data) {
    var i, generalModel, cardView;
    // source line 396, bytecode pc 4
    (i = 1);
    while ((i < 4)) {
        if (!xs.Utils.isEmpty(data[(i - 1)].general_pk_id)) {
            // source line 399, bytecode pc 118
            (generalModel = xs.Profile.GameData.Mgr.getInstance().Generals.getGeneralModelByPkid(data[(i - 1)].general_pk_id));
            if (generalModel) {
                // source line 401, bytecode pc 144
                (cardView = generalModel.createCard_Fight());
                // source line 402, bytecode pc 182
                cardView.setPosition(this[("m_card" + i)].getPosition());
                // source line 403, bytecode pc 220
                xs.Utils.Node.attachNodes(this.m_ccbNode, cardView);
                // source line 404, bytecode pc 259
                xs.Utils.Node.safeRemoveChild(this[("m_card" + i)]);
                // source line 405, bytecode pc 274
                (this[("m_card" + i)] = cardView);
            } else {
                // source line 408, bytecode pc 321
                (cardView = xs.Factorys.Sprite.create("wujiangpai_back", "ZuiduiMenuScene01"));
                // source line 409, bytecode pc 365
                cardView.setAnchorPoint(cc.p(0.5, 0.5));
                // source line 410, bytecode pc 386
                cardView.setScale(0.5);
                // source line 411, bytecode pc 424
                cardView.setPosition(this[("m_card" + i)].getPosition());
                // source line 412, bytecode pc 462
                xs.Utils.Node.attachNodes(this.m_ccbNode, cardView);
                // source line 413, bytecode pc 501
                xs.Utils.Node.safeRemoveChild(this[("m_card" + i)]);
                // source line 414, bytecode pc 516
                (this[("m_card" + i)] = cardView);
            }
        } else {
            if (this[("m_card" + i)]) {
                // source line 419, bytecode pc 576
                xs.Utils.Node.safeRemoveChild(this[("m_card" + i)]);
                // source line 420, bytecode pc 589
                (this[("m_card" + i)] = null);
            }
        }
        // source line 396, bytecode pc 603
        (i = (+i + 1));
    }
},
    scrollViewDidScroll: function(tableView) {
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 436, bytecode pc 22
    return cc.size(100, 120);
},
    tableCellAtIndex: function(table, idx) {
    var index, cell;
    // source line 439, bytecode pc 18
    (index = (this.m_data.length - idx));
    // source line 441, bytecode pc 36
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 443, bytecode pc 75
        (cell = xs.Views.ShowTeamViewCell.create());
    }
    // source line 445, bytecode pc 107
    cell.refresh(this._getQueueTeamDataInPos(index));
    // source line 446, bytecode pc 111
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 449, bytecode pc 41
    return (((this.m_data.length - 3) < 0) ? 0 : (this.m_data.length - 3));
},
    _getQueueTeamDataInPos: function(pos) {
    var data, i;
    // source line 452, bytecode pc 4
    (data = null);
    // source line 453, bytecode pc 9
    (i = 0);
    while ((i < this.m_data.length)) {
        if ((pos == this.m_data[i].general_position)) {
            // source line 455, bytecode pc 53
            (data = this.m_data[i]);
        }
        // source line 453, bytecode pc 67
        (i = (+i + 1));
    }
    // source line 458, bytecode pc 93
    return data;
}
}));
// source line 462, bytecode pc 944
(xs.Views.ShowTeamView.create = function(param) {
    var layer;
    // source line 463, bytecode pc 23
    (layer = new xs.Views.ShowTeamView());
    if ((layer && layer.init(param))) {
        // source line 465, bytecode pc 59
        return layer;
    }
    // source line 467, bytecode pc 61
    return null;
});
// source line 488, bytecode pc 1018
(xs.Views.ShowTeamViewCell = cc.TableViewCell.extend({
    ctor: function() {
    // source line 473, bytecode pc 12
    this._super();
    // source line 474, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 478, bytecode pc 19
        return false;
    }
    // source line 481, bytecode pc 27
    (this.m_icon = null);
    // source line 482, bytecode pc 35
    (this.m_data = null);
    // source line 484, bytecode pc 71
    this.setContentSize(cc.size(100, 120));
    // source line 486, bytecode pc 73
    return true;
},
    refresh: function(data) {
    var generalModel;
    // source line 489, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_icon);
    // source line 490, bytecode pc 41
    (this.m_icon = null);
    if (xs.Utils.isEmpty(data.general_pk_id)) {
        // source line 492, bytecode pc 78
        return void 0;
    } else {
        // source line 495, bytecode pc 143
        (generalModel = xs.Profile.GameData.Mgr.getInstance().Generals.getGeneralModelByPkid(data.general_pk_id));
        if (generalModel) {
            // source line 498, bytecode pc 172
            (this.m_icon = generalModel.createIcon_Grade());
            // source line 499, bytecode pc 194
            this.m_icon.reloadData(generalModel);
            // source line 500, bytecode pc 271
            xs.Utils.Node.attachNodes(this, this.m_icon, { desc: "cb", offset: { x: 0, y: 50 } });
        } else {
            // source line 504, bytecode pc 321
            (this.m_icon = xs.Factorys.Sprite.create("button_kongzhikuang", "Cmn01"));
            // source line 506, bytecode pc 398
            xs.Utils.Node.attachNodes(this, this.m_icon, { desc: "cb", offset: { x: 0, y: 50 } });
            // source line 509, bytecode pc 443
            (this.m_head = xs.Factorys.Sprite.create("icon_kongTouxiang", "Cmn01"));
            // source line 511, bytecode pc 520
            xs.Utils.Node.attachNodes(this, this.m_head, { desc: "cb", offset: { x: 0, y: 50 } });
        }
    }
}
}));
// source line 521, bytecode pc 1044
(xs.Views.ShowTeamViewCell.create = function() {
    var cell;
    // source line 522, bytecode pc 23
    (cell = new xs.Views.ShowTeamViewCell());
    if ((cell && cell.init())) {
        // source line 524, bytecode pc 55
        return cell;
    }
    // source line 526, bytecode pc 78
    xs.warn("xs.Views.ShowTeamViewCell.create error!");
    // source line 527, bytecode pc 80
    return null;
});
