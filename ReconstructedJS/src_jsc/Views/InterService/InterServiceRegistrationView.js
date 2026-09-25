// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/InterService/InterServiceRegistrationView.js:1
// source line 472, bytecode pc 550
(xs.Views.InterServiceRegistrationView = cc.Layer.extend({
    name: "xs.Views.InterServiceRegistrationView",
    ccbCfg: [
        { tag: 1, type: "ls", name: "m_hightestPoints", id: "LS_Lv" },
        { tag: 2, type: "ls", name: "m_residuePoints", id: "LS_Lv" },
        { tag: 3, type: "ls", name: "m_playerNum", id: "LS_Lv" },
        { tag: 4, type: "ls", name: "m_dec_1", id: "LS_qiangduo_Inf", stringId: "interService_historyH" },
        { tag: 5, type: "ls", name: "m_dec_2", id: "LS_qiangduo_Inf", stringId: "interService_residueP" },
        { tag: 6, type: "ls", name: "m_dec_3", id: "LS_qiangduo_Inf", stringId: "interService_myRank" }
    ],
    ccb_yuanbao: [ { tag: 1, type: "ls", name: "m_price", id: "LS_wujiangName1" } ],
    ctor: function() {
    // source line 19, bytecode pc 12
    this._super();
    // source line 20, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(param) {
    var visibleSize, _left_bg, _right_bg, line_right, line_left, color_bg, V_bg, S_bg, activityTime_bg, _ret, sceneKey;
    if (!this._super()) {
        // source line 24, bytecode pc 19
        return false;
    }
    // source line 26, bytecode pc 27
    (this.m_data = null);
    // source line 27, bytecode pc 35
    (this.m_hightestPoints = null);
    // source line 28, bytecode pc 43
    (this.m_residuePoints = null);
    // source line 29, bytecode pc 51
    (this.m_playerNum = null);
    // source line 30, bytecode pc 59
    (this.m_enable_fight = null);
    // source line 31, bytecode pc 67
    (this.worshipButton = null);
    // source line 32, bytecode pc 75
    (this.worshipNumLabel = null);
    // source line 33, bytecode pc 83
    (this.fightButton = null);
    // source line 34, bytecode pc 91
    (this.fightNumLabel = null);
    // source line 35, bytecode pc 99
    (this.playerInfor = null);
    // source line 36, bytecode pc 107
    (this.m_history_residue = null);
    // source line 39, bytecode pc 122
    (this.m_local = param.local);
    // source line 41, bytecode pc 147
    (visibleSize = xs.director.getVisibleSize());
    // source line 44, bytecode pc 183
    (_left_bg = xs.Factorys.Sprite.createWithFileName("tex/card_v2/121009.png"));
    // source line 45, bytecode pc 227
    _left_bg.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 51, bytecode pc 339
    xs.Utils.Node.attachNodes(this, _left_bg, {
    desc: "lb",
    sc: true,
    offset: { x: ((visibleSize.width - xs.Views.MainMenuView.Width) / 4), y: 300 }
});
    // source line 55, bytecode pc 375
    (_right_bg = xs.Factorys.Sprite.createWithFileName("tex/card_v2/111006.png"));
    // source line 56, bytecode pc 419
    _right_bg.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 57, bytecode pc 438
    _right_bg.setRotationY(180);
    // source line 63, bytecode pc 553
    xs.Utils.Node.attachNodes(this, _right_bg, {
    desc: "lb",
    sc: true,
    offset: { x: (((visibleSize.width - xs.Views.MainMenuView.Width) / 4) * 3), y: 300 }
});
    // source line 67, bytecode pc 595
    (line_right = xs.Factorys.Sprite.create("kaichang_PvP_scene07", "kaichang"));
    // source line 68, bytecode pc 614
    line_right.setRotation(200);
    // source line 69, bytecode pc 635
    line_right.setScale(0.8);
    // source line 75, bytecode pc 750
    xs.Utils.Node.attachNodes(this, line_right, {
    desc: "lb",
    sc: true,
    offset: { x: (((visibleSize.width - xs.Views.MainMenuView.Width) / 2) + 66), y: 230 }
});
    // source line 78, bytecode pc 792
    (line_left = xs.Factorys.Sprite.create("kaichang_PvP_scene07", "kaichang"));
    // source line 79, bytecode pc 810
    line_left.setRotation(20);
    // source line 80, bytecode pc 831
    line_left.setScale(0.8);
    // source line 86, bytecode pc 946
    xs.Utils.Node.attachNodes(this, line_left, {
    desc: "lb",
    sc: true,
    offset: { x: (((visibleSize.width - xs.Views.MainMenuView.Width) / 2) - 14), y: 350 }
});
    // source line 89, bytecode pc 988
    (color_bg = xs.Factorys.Sprite.create("Cmn01_Toast_bg", "Cmn01"));
    // source line 90, bytecode pc 1006
    color_bg.setRotation(-70);
    // source line 91, bytecode pc 1024
    color_bg.setScaleY(2);
    // source line 97, bytecode pc 1139
    xs.Utils.Node.attachNodes(this, color_bg, {
    desc: "lb",
    sc: true,
    offset: { x: (((visibleSize.width - xs.Views.MainMenuView.Width) / 2) + 30), y: 300 }
});
    // source line 101, bytecode pc 1181
    (V_bg = xs.Factorys.Sprite.create("kaichang_PvP_v", "kaichang"));
    // source line 107, bytecode pc 1296
    xs.Utils.Node.attachNodes(this, V_bg, {
    desc: "lb",
    sc: true,
    offset: { x: (((visibleSize.width - xs.Views.MainMenuView.Width) / 2) - 30), y: 360 }
});
    // source line 111, bytecode pc 1338
    (S_bg = xs.Factorys.Sprite.create("kaichang_PvP_s", "kaichang"));
    // source line 117, bytecode pc 1453
    xs.Utils.Node.attachNodes(this, S_bg, {
    desc: "lb",
    sc: true,
    offset: { x: (((visibleSize.width - xs.Views.MainMenuView.Width) / 2) + 40), y: 300 }
});
    // source line 122, bytecode pc 1504
    (this.playerInfor = xs.ccb_reader.load(xs.Cfg.CCBI.InterRegistrationPlayerInfor, this));
    // source line 129, bytecode pc 1623
    xs.Utils.Node.attachNodes(this, this.playerInfor, {
    desc: "lb",
    offset: { x: (((visibleSize.width - xs.Views.MainMenuView.Width) / 2) - 150), y: 150 },
    sc: false
});
    // source line 130, bytecode pc 1666
    xs.Utils.UI.replaceCcbByCfg(this.playerInfor, this.ccbCfg, this);
    // source line 133, bytecode pc 1699
    (this.m_infoBar = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 134, bytecode pc 1738
    this.m_infoBar.setAnchorPoint(cc.p(0, 1));
    // source line 137, bytecode pc 1797
    xs.Utils.Node.attachNodes(this, this.m_infoBar, { desc: "lt", sc: true });
    // source line 141, bytecode pc 1839
    (activityTime_bg = xs.Factorys.Sprite.create("Cmn01_Toast_bg", "Cmn01"));
    // source line 145, bytecode pc 1958
    xs.Utils.Node.attachNodes(this, activityTime_bg, {
    desc: "lt",
    offset: { x: ((visibleSize.width / 2) - (xs.Views.MainMenuView.Width / 2)), y: -160 },
    sc: true
}, null);
    // source line 146, bytecode pc 1976
    activityTime_bg.setScaleX(2);
    // source line 150, bytecode pc 2015
    (this.activityTimeLabel = xs.Factorys.Label.createByStyleId("LS_danyao"));
    // source line 151, bytecode pc 2066
    this.activityTimeLabel.setString(xs.Tools.String.createString("interService_waiting"));
    // source line 157, bytecode pc 2184
    xs.Utils.Node.attachNodes(this, this.activityTimeLabel, {
    desc: "lb",
    sc: true,
    offset: { x: activityTime_bg.getPosition().x, y: activityTime_bg.getPosition().y }
});
    // source line 162, bytecode pc 2223
    (this.worshipButton = xs.Views.Btn.createByStyleId("BS_Btn1"));
    // source line 163, bytecode pc 2274
    this.worshipButton.setString(xs.Tools.String.createString("interService_worship"));
    // source line 164, bytecode pc 2301
    this.worshipButton.addCallBackForEvent(this, this.worshipCallback);
    // source line 170, bytecode pc 2423
    xs.Utils.Node.attachNodes(this, this.worshipButton, {
    desc: "lb",
    sc: true,
    offset: { x: _left_bg.getPosition().x, y: (_right_bg.getPosition().y - 200) }
});
    // source line 175, bytecode pc 2468
    (this.worshipNumLabel = xs.Factorys.Label.createByStyleIdWithString("LS_fightUI1", ""));
    // source line 181, bytecode pc 2621
    xs.Utils.Node.attachNodes(this, this.worshipNumLabel, {
    desc: "lb",
    sc: true,
    offset: {
        x: this.worshipButton.getPosition().x,
        y: ((this.worshipButton.getPosition().y - (this.worshipButton.getContentSize().height / 2)) - 20)
    }
});
    // source line 186, bytecode pc 2660
    (this.fightButton = xs.Views.Btn.createByStyleId("BS_Btn1"));
    // source line 187, bytecode pc 2687
    this.fightButton.addCallBackForEvent(this, this.enrollOrFightCallback);
    // source line 188, bytecode pc 2738
    this.fightButton.setString(xs.Tools.String.createString("interService_fight"));
    // source line 194, bytecode pc 2860
    xs.Utils.Node.attachNodes(this, this.fightButton, {
    desc: "lb",
    sc: true,
    offset: { x: _right_bg.getPosition().x, y: (_right_bg.getPosition().y - 200) }
});
    // source line 199, bytecode pc 2905
    (this.fightNumLabel = xs.Factorys.Label.createByStyleIdWithString("LS_fightUI1", ""));
    // source line 205, bytecode pc 3058
    xs.Utils.Node.attachNodes(this, this.fightNumLabel, {
    desc: "lb",
    sc: true,
    offset: {
        x: this.fightButton.getPosition().x,
        y: ((this.fightButton.getPosition().y - (this.fightButton.getContentSize().height / 2)) - 20)
    }
});
    // source line 210, bytecode pc 3097
    (this.rankButton = xs.Views.Btn.create("Btn_PointsAward"));
    // source line 212, bytecode pc 3124
    this.rankButton.addCallBackForEvent(this, this.rankCallback);
    // source line 218, bytecode pc 3214
    xs.Utils.Node.attachNodes(this, this.rankButton, { desc: "rt", sc: true, offset: { x: -200, y: -160 } });
    // source line 223, bytecode pc 3265
    (this.m_yuanbaoBg = xs.ccb_reader.load(xs.Cfg.CCBI.InterYuanbaoPrompt, this));
    // source line 224, bytecode pc 3306
    this.m_yuanbaoBg.setContentSize(cc.size(120, 26));
    // source line 225, bytecode pc 3353
    this.m_yuanbaoBg.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 231, bytecode pc 3506
    xs.Utils.Node.attachNodes(this, this.m_yuanbaoBg, {
    desc: "lb",
    offset: {
        x: this.fightButton.getPosition().x,
        y: ((this.fightButton.getPosition().y + (this.fightButton.getContentSize().height / 2)) + 6)
    },
    sc: false
});
    // source line 232, bytecode pc 3549
    xs.Utils.UI.replaceCcbByCfg(this.m_yuanbaoBg, this.ccb_yuanbao, this);
    // source line 236, bytecode pc 3595
    (_ret = xs.Views.Button.Factory.Audio.create("Btn_Instruction"));
    // source line 238, bytecode pc 3616
    _ret.setOnClickCallBack(function() {
    // source line 239, bytecode pc 49
    xs.Views.Mgr.showDialogByName("InstructionDialog", { key: "interService_Instruction" });
});
    // source line 242, bytecode pc 3704
    xs.Utils.Node.attachNodes(this, _ret, { desc: "lt", offset: cc.p(120, -160), sc: true }, null);
    // source line 244, bytecode pc 3709
    (sceneKey = null);
    if (this.m_local) {
        // source line 246, bytecode pc 3756
        (sceneKey = xs.Scene.Mgr.loadStatus("LocalInterServiceRegistrationSceneKey"));
    } else {
        // source line 249, bytecode pc 3797
        (sceneKey = xs.Scene.Mgr.loadStatus("InterServiceRegistrationSceneKey"));
    }
    if (sceneKey) {
        if ((param.data && param.data.return_info)) {
            // source line 253, bytecode pc 3857
            (this.m_data = param.data.return_info);
            // source line 254, bytecode pc 3884
            this.updateInfor(param.data.return_info);
        } else {
            // source line 257, bytecode pc 3902
            this.RequestNetforInfor();
        }
    }
    // source line 260, bytecode pc 3904
    return true;
},
    onEnter: function() {
    var sceneKey;
    // source line 263, bytecode pc 12
    this._super();
    // source line 265, bytecode pc 17
    (sceneKey = null);
    if (this.m_local) {
        // source line 267, bytecode pc 64
        (sceneKey = xs.Scene.Mgr.loadStatusAndClear("LocalInterServiceRegistrationSceneKey"));
    } else {
        // source line 270, bytecode pc 105
        (sceneKey = xs.Scene.Mgr.loadStatusAndClear("InterServiceRegistrationSceneKey"));
    }
    if (!sceneKey) {
        // source line 273, bytecode pc 127
        this.RequestNetforInfor();
    }
},
    onExit: function() {
    // source line 277, bytecode pc 12
    this._super();
},
    RequestNetforInfor: function() {
    if (this.m_local) {
        // source line 292, bytecode pc 128
        xs.Tools.Net.requestLocalInterServiceMainInfor({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    if (data.return_info) {
        // source line 287, bytecode pc 27
        (this.m_data = data.return_info);
        // source line 288, bytecode pc 49
        this.updateInfor(data.return_info);
    }
}.bind(this), this);
    } else {
        // source line 305, bytecode pc 251
        xs.Tools.Net.requestInterServiceMainInfor({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    if (data.return_info) {
        // source line 300, bytecode pc 27
        (this.m_data = data.return_info);
        // source line 301, bytecode pc 49
        this.updateInfor(data.return_info);
    }
}.bind(this), this);
    }
},
    fixZero: function(num, length) {
    var str, len, s, i;
    // source line 309, bytecode pc 12
    (str = ("" + num));
    // source line 310, bytecode pc 24
    (len = str.length);
    // source line 311, bytecode pc 33
    (s = "");
    // source line 312, bytecode pc 40
    (i = length);
    while ((+i > len)) {
        // source line 313, bytecode pc 59
        (s = (s + "0"));
    }
    // source line 315, bytecode pc 91
    return (s + str);
},
    getTime: function(dataNum) {
    var date, month, day, hour, minutes, monthStr, dayStr, time;
    // source line 318, bytecode pc 21
    (date = new Date((dataNum * 1000)));
    // source line 319, bytecode pc 41
    (month = (date.getMonth() + 1));
    // source line 320, bytecode pc 59
    (day = date.getDate());
    // source line 321, bytecode pc 93
    (hour = this.fixZero(date.getHours(), 2));
    // source line 322, bytecode pc 127
    (minutes = this.fixZero(date.getMinutes(), 2));
    // source line 324, bytecode pc 163
    (monthStr = xs.Tools.String.createString("interService_month"));
    // source line 325, bytecode pc 199
    (dayStr = xs.Tools.String.createString("interService_day"));
    // source line 326, bytecode pc 232
    (time = ((((((month + monthStr) + day) + dayStr) + hour) + ":") + minutes));
    // source line 327, bytecode pc 236
    return time;
},
    updateInfor: function(data) {
    var open_timeNum, close_timeNum, open_timeStr, close_timeStr, fightStr, worshipStr;
    // source line 331, bytecode pc 26
    (open_timeNum = Number(data.open_time));
    // source line 332, bytecode pc 53
    (close_timeNum = Number(data.close_time));
    // source line 333, bytecode pc 73
    (open_timeStr = this.getTime(open_timeNum));
    // source line 334, bytecode pc 93
    (close_timeStr = this.getTime(close_timeNum));
    // source line 335, bytecode pc 137
    this.activityTimeLabel.setString((((("(" + open_timeStr) + "-") + close_timeStr) + ")"));
    // source line 337, bytecode pc 157
    this.worshipButton.setEnabled(true);
    // source line 338, bytecode pc 177
    this.worshipNumLabel.setVisible(true);
    // source line 339, bytecode pc 197
    this.fightButton.setEnabled(true);
    // source line 340, bytecode pc 217
    this.fightNumLabel.setVisible(true);
    // source line 341, bytecode pc 237
    this.playerInfor.setVisible(true);
    // source line 343, bytecode pc 252
    (this.m_enable_fight = data.enable_fight);
    // source line 344, bytecode pc 267
    (this.m_history_residue = data.history_fight);
    if (this.m_enable_fight) {
        if ((data.left_fight > 0)) {
            // source line 348, bytecode pc 313
            this.m_yuanbaoBg.setVisible(false);
            // source line 350, bytecode pc 349
            (fightStr = xs.Tools.String.createString("interService_residueNum"));
            // source line 351, bytecode pc 395
            this.fightNumLabel.setString((((fightStr + data.left_fight) + "/") + data.total_fight));
        } else {
            // source line 353, bytecode pc 420
            this.m_yuanbaoBg.setVisible(true);
            // source line 354, bytecode pc 458
            this.m_price.setString((data.price || "100"));
            // source line 356, bytecode pc 494
            (fightStr = xs.Tools.String.createString("interService_HisResidueNum"));
            // source line 357, bytecode pc 525
            this.fightNumLabel.setString((fightStr + data.history_fight));
        }
    } else {
        // source line 361, bytecode pc 566
        (fightStr = xs.Tools.String.createString("interService_HisResidueNum"));
        // source line 362, bytecode pc 597
        this.fightNumLabel.setString((fightStr + data.history_fight));
        if ((data.history_fight === 0)) {
            // source line 364, bytecode pc 632
            this.fightButton.setEnabled(false);
            // source line 365, bytecode pc 652
            this.fightButton.setEventOnDisable(true);
            // source line 366, bytecode pc 672
            this.m_yuanbaoBg.setVisible(false);
        } else {
            // source line 368, bytecode pc 697
            this.m_yuanbaoBg.setVisible(true);
            // source line 369, bytecode pc 735
            this.m_price.setString((data.price || "100"));
        }
    }
    // source line 373, bytecode pc 773
    this.m_hightestPoints.setString((data.total_point || "0"));
    // source line 374, bytecode pc 811
    this.m_residuePoints.setString((data.daily_point || "0"));
    // source line 375, bytecode pc 849
    this.m_playerNum.setString((data.rank || "0"));
    // source line 378, bytecode pc 885
    (worshipStr = xs.Tools.String.createString("interService_WorshipresidueNum"));
    // source line 379, bytecode pc 931
    this.worshipNumLabel.setString((((worshipStr + data.left_worship) + "/") + data.total_worship));
    if (!data.pop_status) {
        // source line 383, bytecode pc 965
        this.worshipButton.setEnabled(false);
        // source line 384, bytecode pc 985
        this.worshipNumLabel.setVisible(false);
    } else {
        // source line 386, bytecode pc 1010
        this.worshipButton.setEnabled(true);
        if ((Number(data.rank) <= 10)) {
            // source line 390, bytecode pc 1061
            this.worshipNumLabel.setVisible(false);
        } else {
            // source line 392, bytecode pc 1086
            this.worshipNumLabel.setVisible(true);
        }
    }
},
    rankCallback: function() {
    if (this.m_data.rank_list) {
        // source line 401, bytecode pc 82
        xs.Views.Mgr.showDialogByName("PointsRankDialog", { data: this.m_data.rank_list, local: this.m_local });
    }
},
    worshipCallback: function() {
    var successFunction;
    // source line 409, bytecode pc 22
    xs.log_xjf("点击膜拜");
    // source line 421, bytecode pc 50
    (successFunction = function(jsonData) {
    if ((jsonData.return_info.rank_list && (jsonData.return_info.rank_list.length > 6))) {
        // source line 415, bytecode pc 135
        xs.Scene.Mgr.changeSceneByName("InterServiceWorshipScene", { worshipEntry: xs.Models.WorshipEntry.createWithJson(jsonData.return_info), local: this.m_local });
    } else {
        // source line 419, bytecode pc 200
        xs.Views.Mgr.showToast(xs.Tools.String.createString("interService_worshipDataErr"));
    }
}.bind(this));
    if (this.m_local) {
        // source line 434, bytecode pc 172
        xs.Tools.Net.requestLocalWorshipEntry({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(jsonData) {
    // source line 429, bytecode pc 18
    successFunction(jsonData);
}, function(jsonData) {
}, this);
    } else {
        // source line 446, bytecode pc 288
        xs.Tools.Net.requestWorshipEntry({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(jsonData) {
    // source line 441, bytecode pc 18
    successFunction(jsonData);
}, function(jsonData) {
}, this);
    }
},
    enrollOrFightCallback: function() {
    var promptInfor;
    if (this.m_enable_fight) {
        // source line 455, bytecode pc 50
        xs.Scene.Mgr.changeSceneByName("InterServiceFightScene", this.m_local);
    } else {
        if ((this.m_history_residue > 0)) {
            // source line 461, bytecode pc 116
            (promptInfor = { price: this.m_data.price, history_fight: this.m_data.history_fight, fightOrRegistration: false });
            // source line 465, bytecode pc 175
            xs.Views.Mgr.showDialogByName("PromptFrameDialog", { param: promptInfor, local: this.m_local });
        } else {
            // source line 467, bytecode pc 240
            xs.Views.Mgr.showToast(xs.Tools.String.createString("inter_notFight"));
        }
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 473, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 474, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 475, bytecode pc 56
    this.fightButton.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 476, bytecode pc 83
    this.worshipButton.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 477, bytecode pc 110
    this.rankButton.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 480, bytecode pc 576
(xs.Views.InterServiceRegistrationView.create = function(param) {
    var view;
    // source line 481, bytecode pc 23
    (view = new xs.Views.InterServiceRegistrationView());
    if ((view && view.init(param))) {
        // source line 483, bytecode pc 59
        return view;
    }
    // source line 485, bytecode pc 84
    xs.assert(false, "xs.Views.InterServiceRegistrationView.create error!");
    // source line 486, bytecode pc 86
    return null;
});
