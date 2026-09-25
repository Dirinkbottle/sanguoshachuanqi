// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/SlotMachinesActivities.js:1
// source line 418, bytecode pc 1138
(xs.Views.Dialog.SlotMachinesActivities = xs.Views.HungerLayer.extend({
    name: "SlotMachinesActivities",
    cfg: {
        closeBtn: { priority: -1 },
        startBtn: { priority: -1 },
        cfg_node: [
            { tag: 10, type: "bs", name: "m_closeBtn", id: "BS_Close" },
            { tag: 11, type: "btn", name: "m_startBtn", id: "Btn_startLottery" },
            { tag: 1, type: "ls", id: "LS_huodong_title", stringId: "auto_name_442" },
            { tag: 2, type: "ls", name: "m_activityTime", id: "LS_qianghua_done", string: "2" },
            { tag: 3, type: "ls", name: "m_restOf", id: "LS_cardLv", stringId: "auto_name_443" },
            {
                tag: 4,
                type: "ls_ext",
                name: "m_fewTimes",
                ids: [ "LS_cardWujiangName", "LS_popUI5", "LS_cardWujiangName" ]
            },
            { tag: 5, type: "ls", id: "LS_popUI5", string: "" },
            { tag: 6, type: "ls", id: "LS_cardWujiangName", stringId: "auto_name_444" },
            { tag: 7, type: "ls", name: "m_haveNum", id: "LS_wujiangName1", string: "0" },
            { tag: 8, type: "ls", id: "LS_cardWujiangName", stringId: "auto_name_445" },
            { tag: 9, type: "ls", name: "m_consumptionNum", id: "LS_wujiangName1", string: "0" },
            { tag: 12, type: "ls", name: "m_num_1", id: "LS_laohuji_Nomb", string: "0" },
            { tag: 13, type: "ls", name: "m_num_2", id: "LS_laohuji_Nomb", string: "0" },
            { tag: 14, type: "ls", name: "m_num_3", id: "LS_laohuji_Nomb", string: "0" },
            { tag: 15, type: "ls", name: "m_num_4", id: "LS_laohuji_Nomb", string: "0" },
            { tag: 16, type: "ls", name: "m_num_5", id: "LS_laohuji_Nomb", string: "0" }
        ]
    },
    ctor: function() {
    // source line 44, bytecode pc 12
    this._super();
    // source line 45, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var winSize, m_locationPos;
    // source line 55, bytecode pc 12
    this._super();
    // source line 57, bytecode pc 20
    (this.m_closeBtn = null);
    // source line 58, bytecode pc 28
    (this.m_startBtn = null);
    // source line 59, bytecode pc 37
    (this.m_chanceNum = 4);
    // source line 60, bytecode pc 45
    (this.m_restOf = null);
    // source line 61, bytecode pc 53
    (this.m_fewTimes = null);
    // source line 62, bytecode pc 61
    (this.m_haveNum = null);
    // source line 63, bytecode pc 69
    (this.m_consumptionNum = null);
    // source line 64, bytecode pc 77
    (this.m_activityTime = null);
    // source line 65, bytecode pc 85
    (this.m_num_1 = null);
    // source line 66, bytecode pc 93
    (this.m_num_2 = null);
    // source line 67, bytecode pc 101
    (this.m_num_3 = null);
    // source line 68, bytecode pc 109
    (this.m_num_4 = null);
    // source line 69, bytecode pc 117
    (this.m_num_5 = null);
    // source line 70, bytecode pc 129
    (this.m_textNumList = []);
    // source line 71, bytecode pc 137
    (this.m_timeNum = 0);
    // source line 72, bytecode pc 149
    (this.m_remainTime = "");
    // source line 73, bytecode pc 209
    (this.presentTime = xs.Profile.GameData.PushInfo.getInstance().getTigerInfo().presentTime());
    // source line 75, bytecode pc 250
    (this.m_textNumList = [ 9, 7, 2, 1, 4 ]);
    // source line 76, bytecode pc 258
    (this.m_consumptionYuanbao = 0);
    // source line 78, bytecode pc 294
    (winSize = cc.Director.getInstance().getVisibleSize());
    // source line 80, bytecode pc 345
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DStyleRSlotMachinesBG, this));
    // source line 81, bytecode pc 429
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", offset: { x: -457, y: -312 } });
    // source line 82, bytecode pc 477
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.cfg_node, this);
    // source line 86, bytecode pc 490
    this.updateText();
    // source line 88, bytecode pc 503
    this.updateRemainTime();
    // source line 89, bytecode pc 585
    this.m_activityTime.setString(((xs.Profile.GameData.PushInfo.getInstance().getTigerInfo().activityDay() % 10) || 0));
    // source line 90, bytecode pc 609
    this.m_activityTime.setScale(0.75);
    // source line 94, bytecode pc 653
    (this.m_loadArm = xs.Views.Armature.AutoAudioArmature.create("Arm_SlotMachines"));
    // source line 95, bytecode pc 694
    xs.Utils.Node.attachNodes(this.ccbNode, this.m_loadArm);
    // source line 96, bytecode pc 714
    this.m_loadArm.setVisible(false);
    // source line 98, bytecode pc 758
    (this.m_yuanbaoArm = xs.Views.Armature.AutoAudioArmature.create("Arm_SlotMachines"));
    // source line 99, bytecode pc 846
    xs.Utils.Node.attachNodes(this.ccbNode, this.m_yuanbaoArm, { desc: "c", sc: true, offset: { x: 50, y: 0 } });
    // source line 100, bytecode pc 866
    this.m_yuanbaoArm.setVisible(false);
    // source line 101, bytecode pc 901
    (m_locationPos = this.ccbNode.getChildByTag(14).getPosition());
    // source line 102, bytecode pc 957
    this.m_loadArm.setPosition(cc.p((m_locationPos.x + 4), m_locationPos.y));
    // source line 105, bytecode pc 995
    this.m_startBtn.setOnClickCallBack(this.onStartBtn.bind(this));
    // source line 108, bytecode pc 1033
    this.m_closeBtn.setOnClickCallBack(this.onCloseBtn.bind(this));
    // source line 111, bytecode pc 1046
    this.freshView();
    // source line 112, bytecode pc 1069
    xs.log("end4!!!");
    // source line 115, bytecode pc 1071
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 119, bytecode pc 12
    this._super();
    // source line 120, bytecode pc 25
    this.unscheduleUpdate();
    // source line 121, bytecode pc 38
    this.scheduleUpdate();
},
    onExitTransitionDidStart: function() {
    // source line 125, bytecode pc 12
    this._super();
    // source line 126, bytecode pc 25
    this.unscheduleUpdate();
},
    update: function(dt) {
    // source line 135, bytecode pc 16
    (this.m_timeNum = (dt + this.m_timeNum));
    // source line 136, bytecode pc 33
    (this.presentTime = (this.presentTime - dt));
    if ((this.presentTime <= 0)) {
        // source line 138, bytecode pc 54
        (this.presentTime = 0);
        // source line 139, bytecode pc 67
        this.unscheduleUpdate();
    }
    if ((this.m_timeNum >= 0.2)) {
        // source line 146, bytecode pc 92
        (this.m_timeNum = 0);
        // source line 147, bytecode pc 105
        this.updateRemainTime();
    }
},
    updateText: function() {
    // source line 157, bytecode pc 66
    (this.m_consumptionYuanbao = (xs.Profile.GameData.PushInfo.getInstance().getTigerInfo().needGold() || 0));
    // source line 158, bytecode pc 133
    (this.m_chanceNum = (xs.Profile.GameData.PushInfo.getInstance().getTigerInfo().leftChance() || 0));
    // source line 159, bytecode pc 158
    this.m_consumptionNum.setString(this.m_consumptionYuanbao);
    // source line 161, bytecode pc 211
    this.m_fewTimes.setString(0, xs.Tools.String.createString("auto_name_446"));
    // source line 162, bytecode pc 271
    this.m_fewTimes.setString(1, (this.m_chanceNum + xs.Tools.String.createString("auto_name_289")));
    // source line 163, bytecode pc 325
    this.m_fewTimes.setString(2, xs.Tools.String.createString("firstChargeDlg_extraStr_3"));
    // source line 165, bytecode pc 402
    this.m_haveNum.setString(xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao());
    // source line 167, bytecode pc 415
    this.initNum();
},
    updateRemainTime: function() {
    var m_day, m_hour, m_temp, m_minute, m_second;
    // source line 172, bytecode pc 38
    (m_day = (parseInt(((this.presentTime / 3600) / 24)) || 0));
    // source line 173, bytecode pc 85
    (m_hour = (parseInt(((this.presentTime - ((m_day * 3600) * 24)) / 3600)) || 0));
    // source line 174, bytecode pc 114
    (m_temp = ((this.presentTime - ((m_day * 3600) * 24)) - (m_hour * 3600)));
    // source line 175, bytecode pc 146
    (m_minute = (parseInt((m_temp / 60)) || 0));
    // source line 176, bytecode pc 178
    (m_second = (parseInt((m_temp % 60)) || 0));
    if ((m_second <= 0)) {
        // source line 178, bytecode pc 193
        (m_second = 0);
    }
    // source line 182, bytecode pc 380
    (this.m_remainTime = ((((((((xs.Tools.String.createString("auto_name_447") + m_day) + xs.Tools.String.createString("auto_name_40")) + m_hour) + xs.Tools.String.createString("auto_name_448")) + m_minute) + xs.Tools.String.createString("auto_name_449")) + m_second) + xs.Tools.String.createString("auto_name_450")));
    // source line 184, bytecode pc 405
    this.m_restOf.setString(this.m_remainTime);
},
    yuanbaoDispose: function() {
    var m_str;
    if ((this.m_gainYuanbao < 100)) {
        // source line 195, bytecode pc 34
        (m_str = this.m_gainYuanbao.toString());
        // source line 196, bytecode pc 64
        (this.m_textNumList = [ m_str[0], m_str[1] ]);
    } else {
        if ((this.m_gainYuanbao < 1000)) {
            // source line 198, bytecode pc 105
            (m_str = this.m_gainYuanbao.toString());
            // source line 199, bytecode pc 145
            (this.m_textNumList = [ m_str[0], m_str[1], m_str[2] ]);
        } else {
            if ((this.m_gainYuanbao < 10000)) {
                // source line 202, bytecode pc 186
                (m_str = this.m_gainYuanbao.toString());
                // source line 203, bytecode pc 236
                (this.m_textNumList = [ m_str[0], m_str[1], m_str[2], m_str[3] ]);
            } else {
                if ((this.m_gainYuanbao < 100000)) {
                    // source line 206, bytecode pc 278
                    (m_str = this.m_gainYuanbao.toString());
                    // source line 207, bytecode pc 338
                    (this.m_textNumList = [ m_str[0], m_str[1], m_str[2], m_str[3], m_str[4] ]);
                }
            }
        }
    }
},
    initNum: function() {
    var num1, num2, num3, num4, num5, m_str;
    // source line 218, bytecode pc 22
    xs.log("end111!!!");
    // source line 219, bytecode pc 31
    (num1 = "0");
    // source line 220, bytecode pc 40
    (num2 = "0");
    // source line 221, bytecode pc 49
    (num3 = "0");
    // source line 222, bytecode pc 58
    (num4 = "0");
    // source line 223, bytecode pc 67
    (num5 = "0");
    // source line 224, bytecode pc 97
    xs.log("m_consumptionYuanbao:", this.m_consumptionYuanbao);
    if (((this.m_chanceNum <= 0) || ((this.presentTime <= 0) || (this.m_consumptionYuanbao <= 0)))) {
    } else {
        if ((this.m_consumptionYuanbao < 100)) {
            // source line 228, bytecode pc 178
            (m_str = this.m_consumptionYuanbao.toString());
            // source line 229, bytecode pc 198
            (num4 = m_str[0].toString());
            // source line 230, bytecode pc 207
            (num5 = m_str[1]);
        } else {
            if ((this.m_consumptionYuanbao < 1000)) {
                // source line 232, bytecode pc 248
                (m_str = this.m_consumptionYuanbao.toString());
                // source line 233, bytecode pc 268
                (num3 = m_str[0].toString());
                // source line 234, bytecode pc 288
                (num4 = m_str[1].toString());
                // source line 235, bytecode pc 309
                (num5 = m_str[2].toString());
            } else {
                if ((this.m_consumptionYuanbao < 10000)) {
                    // source line 238, bytecode pc 350
                    (m_str = this.m_consumptionYuanbao.toString());
                    // source line 239, bytecode pc 370
                    (num2 = m_str[0].toString());
                    // source line 240, bytecode pc 390
                    (num3 = m_str[1].toString());
                    // source line 241, bytecode pc 411
                    (num4 = m_str[2].toString());
                    // source line 242, bytecode pc 432
                    (num5 = m_str[3].toString());
                } else {
                    if ((this.m_consumptionYuanbao < 100000)) {
                        // source line 245, bytecode pc 474
                        (m_str = this.m_consumptionYuanbao.toString());
                        // source line 246, bytecode pc 494
                        (num1 = m_str[0].toString());
                        // source line 247, bytecode pc 514
                        (num2 = m_str[1].toString());
                        // source line 248, bytecode pc 535
                        (num3 = m_str[2].toString());
                        // source line 249, bytecode pc 556
                        (num4 = m_str[3].toString());
                        // source line 250, bytecode pc 577
                        (num5 = m_str[4].toString());
                    }
                }
            }
        }
    }
    // source line 253, bytecode pc 620
    xs.log("num:::", ((((num1 + num2) + num3) + num4) + num5));
    // source line 254, bytecode pc 642
    this.m_num_1.setString(num1);
    // source line 255, bytecode pc 662
    this.m_num_1.setVisible(true);
    // source line 256, bytecode pc 684
    this.m_num_2.setString(num2);
    // source line 257, bytecode pc 704
    this.m_num_2.setVisible(true);
    // source line 258, bytecode pc 726
    this.m_num_3.setString(num3);
    // source line 259, bytecode pc 746
    this.m_num_3.setVisible(true);
    // source line 260, bytecode pc 768
    this.m_num_4.setString(num4);
    // source line 261, bytecode pc 788
    this.m_num_4.setVisible(true);
    // source line 262, bytecode pc 810
    this.m_num_5.setString(num5);
    // source line 263, bytecode pc 830
    this.m_num_5.setVisible(true);
},
    onStartBtn: function() {
    var currentYuanbao;
    if ((this.getNumberOfRunningActions() > 0)) {
        // source line 274, bytecode pc 78
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_451"));
        // source line 275, bytecode pc 80
        return void 0;
    }
    if ((this.m_chanceNum <= 0)) {
        // source line 280, bytecode pc 101
        (this.m_chanceNum = 0);
    }
    if ((this.presentTime <= 0)) {
        // source line 284, bytecode pc 174
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_452"));
        // source line 285, bytecode pc 176
        return void 0;
    }
    if ((this.m_chanceNum <= 0)) {
        // source line 289, bytecode pc 249
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_453"));
    } else {
        // source line 292, bytecode pc 322
        (currentYuanbao = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao());
        if ((currentYuanbao < this.m_consumptionYuanbao)) {
            if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getChargeCount() <= 0)) {
                // source line 297, bytecode pc 454
                xs.Views.Mgr.showDialogByName("FirstChargeDialog", { fromGoldNotEnough: true });
            } else {
                // source line 299, bytecode pc 492
                xs.Views.Mgr.showDialogByName("ChargeDialog");
            }
            // source line 301, bytecode pc 494
            return void 0;
        }
        // source line 370, bytecode pc 693
        xs.Tools.Net.requestPartySlotMachines({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    instance_id: xs.Profile.GameData.PushInfo.getInstance().getTigerInfo().instanceId(),
    forcePush: true
}, function(data) {
    var loadAct, beginAct, actions;
    // source line 312, bytecode pc 75
    xs.Profile.GameData.PushInfo.getInstance().getTigerInfo().loadJson(data.gamble, { isTime: false });
    // source line 313, bytecode pc 132
    (this.m_gainYuanbao = (parseInt(data.add_list.num) + parseInt(this.m_consumptionYuanbao)));
    // source line 314, bytecode pc 158
    this.dump("m_gainYuanbao", this.m_gainYuanbao);
    // source line 315, bytecode pc 171
    this.yuanbaoDispose();
    // source line 317, bytecode pc 201
    this.replaceText((6 - this.m_chanceNum), this.m_loadArm);
    // source line 318, bytecode pc 228
    (loadAct = this.m_yuanbaoArm.createPlayAction("wing"));
    // source line 319, bytecode pc 265
    (beginAct = this.m_loadArm.createPlayAction(("laohuji_" + (6 - this.m_chanceNum))));
    // source line 320, bytecode pc 293
    this.m_haveNum.setString(currentYuanbao);
    // source line 344, bytecode pc 387
    (actions = xs.Utils.Action.combineSequence([
    beginAct,
    loadAct,
    cc.CallFunc.create(function() {
    var _add;
    // source line 331, bytecode pc 19
    this.m_loadArm.setVisible(false);
    // source line 332, bytecode pc 32
    this.updateText();
    // source line 337, bytecode pc 82
    (_add = [ { type: "5", id: "600027", num: this.m_gainYuanbao } ]);
    // source line 340, bytecode pc 119
    xs.Views.Mgr.showDialogByName("GetPropsDialog", _add);
}.bind(this))
]));
    // source line 349, bytecode pc 404
    this.runAction(actions);
    // source line 352, bytecode pc 417
    this.freshView();
    // source line 355, bytecode pc 455
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_SlotMachines);
    // source line 356, bytecode pc 474
    this.log("updata huodong!!!");
}.bind(this), function(data) {
    // source line 361, bytecode pc 22
    this.dump("data22", data);
    if ((data.error_code === "e_1005")) {
        // source line 366, bytecode pc 101
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_453"));
        // source line 367, bytecode pc 103
        return true;
    }
    // source line 369, bytecode pc 116
    this.freshView();
}.bind(this));
    }
},
    replaceText: function(textNum, beginAct) {
    var i;
    // source line 384, bytecode pc 4
    (i = 1);
    while ((i <= textNum)) {
        // source line 386, bytecode pc 87
        (this._armLabel1 = xs.Factorys.Label.createByStyleIdWithString("LS_laohuji_Nomb", parseInt(this.m_textNumList[(this.m_textNumList.length - i)])));
        // source line 387, bytecode pc 134
        this._armLabel1.setAnchorPoint(cc.p(0.5, 0.5));
        // source line 388, bytecode pc 162
        this[("m_num_" + (6 - i))].setVisible(false);
        // source line 389, bytecode pc 194
        beginAct.replaceSkin(("text0" + i), this._armLabel1);
        // source line 384, bytecode pc 209
        i++;
    }
},
    freshView: function() {
    if (xs.Profile.GameData.PushInfo.getInstance().getTigerInfo().isAble()) {
        // source line 399, bytecode pc 77
        this.m_startBtn.setEnabled(true);
    } else {
        // source line 402, bytecode pc 102
        this.m_startBtn.setEnabled(false);
    }
},
    onCloseBtn: function() {
    // source line 410, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    onExit: function() {
    // source line 415, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 419, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 420, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 421, bytecode pc 71
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.closeBtn.priority));
    // source line 422, bytecode pc 113
    this.m_startBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.startBtn.priority));
}
}));
// source line 427, bytecode pc 1169
(xs.Views.Dialog.SlotMachinesActivities.create = function() {
    var ret;
    // source line 428, bytecode pc 28
    (ret = new xs.Views.Dialog.SlotMachinesActivities());
    if ((ret && ret.init())) {
        // source line 430, bytecode pc 60
        return ret;
    }
});
// source line 440, bytecode pc 1249
xs.Views.Mgr.registerDialog("SlotMachinesActivities", { "class": xs.Views.Dialog.SlotMachinesActivities, styleType: xs.Constant_DlgStyleType_Large });
