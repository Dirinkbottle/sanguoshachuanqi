// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/MailTableViewCell.js:1
// source line 188, bytecode pc 554
(xs.Views.MailTableViewCell = xs.Views.Table.Cell.BaseCell.extend({
    draw: function(ctx) {
    // source line 7, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(mailData) {
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 27
    (this.m_content = null);
    // source line 21, bytecode pc 35
    (this.m_time = null);
    // source line 22, bytecode pc 43
    (this.m_btn_1 = null);
    // source line 23, bytecode pc 51
    (this.m_btn_2 = null);
    // source line 25, bytecode pc 68
    this.updateCell(mailData);
    // source line 27, bytecode pc 70
    return true;
},
    setListener: function(listener) {
    // source line 31, bytecode pc 9
    (this.m_listener = listener);
},
    updateCell: function(mailData) {
    // source line 35, bytecode pc 12
    this.removeAllChildren();
    // source line 36, bytecode pc 27
    (this.mailType = mailData.email_type);
    // source line 38, bytecode pc 34
    switch (this.mailType) {
        case "system":
        case "event":
        case "pay":
        // source line 42, bytecode pc 123
        (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_2_SystemMailCell.ccbi"));
        // source line 43, bytecode pc 143
        this.addChild(this.ccbNode);
        // source line 44, bytecode pc 191
        xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg_1, this);
        // source line 45, bytecode pc 208
        this.updateCcbForSystem(mailData);
        break;
        case "gift":
        // source line 48, bytecode pc 247
        (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_2_SystemMailCell.ccbi"));
        // source line 49, bytecode pc 267
        this.addChild(this.ccbNode);
        // source line 50, bytecode pc 315
        xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg_1, this);
        // source line 51, bytecode pc 332
        this.updateCcbForGift(mailData);
        break;
        case "friend":
        // source line 54, bytecode pc 371
        (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_2_MessageCell.ccbi"));
        // source line 55, bytecode pc 391
        this.addChild(this.ccbNode);
        // source line 56, bytecode pc 439
        xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg_2, this);
        // source line 57, bytecode pc 456
        this.updateCcbForFriend(mailData);
        break;
        default:
        break;
    }
    if (this.m_btn_1) {
        // source line 62, bytecode pc 492
        this.m_btn_1.setSwallowTouch(false);
        // source line 63, bytecode pc 534
        this.m_btn_1.setTouchPriority((this.m_baseTouchPriority + this.cfg.btn_1.priority));
    }
    if (this.m_btn_2) {
        // source line 66, bytecode pc 565
        this.m_btn_2.setSwallowTouch(false);
        // source line 67, bytecode pc 607
        this.m_btn_2.setTouchPriority((this.m_baseTouchPriority + this.cfg.btn_2.priority));
    }
},
    updateCcbForSystem: function(mailData) {
    // source line 72, bytecode pc 26
    this.m_content.setString(mailData.email_content);
    // source line 74, bytecode pc 108
    this.m_time.setString(((this.timeFormat(mailData.email_time_offset) + xs.Tools.String.createString("auto_name_500")) + mailData.email_sender_nickname));
    if ((mailData.email_event_scene === "1")) {
        // source line 76, bytecode pc 178
        this.m_btn_1.setString(xs.Tools.String.createString("auto_name_501"));
        // source line 77, bytecode pc 217
        this.m_btn_1.setOnClickCallBack(xs.Tools.Scene.gotoLadder);
    } else {
        if ((mailData.email_event_scene === "2")) {
            // source line 79, bytecode pc 292
            this.m_btn_1.setString(xs.Tools.String.createString("chaos_snatch"));
            // source line 80, bytecode pc 331
            this.m_btn_1.setOnClickCallBack(xs.Tools.Scene.gotoChaos);
        }
    }
    if (((this.mailType === "system") || (this.mailType === "pay"))) {
        // source line 84, bytecode pc 386
        this.m_btn_1.setVisible(false);
    } else {
        if ((this.mailType === "event")) {
            // source line 86, bytecode pc 428
            this.m_btn_1.setVisible(true);
        }
    }
},
    updateCcbForGift: function(mailData) {
    // source line 91, bytecode pc 32
    this.m_content.setString(mailData.email_content);
    // source line 93, bytecode pc 126
    this.m_time.setString(((this.timeFormat(mailData.email_time_offset) + xs.Tools.String.createString("auto_name_500")) + mailData.email_sender_nickname));
    // source line 95, bytecode pc 164
    this.m_btn_1.setOnClickCallBack(this.onBtnClick.bind(this));
    if ((mailData.is_attach_get === "1")) {
        // source line 97, bytecode pc 240
        this.m_btn_1.setString(xs.Tools.String.createString("auto_name_100"));
        // source line 98, bytecode pc 264
        this.m_btn_1.setOnClickCallBack(function() {
    // source line 99, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_100"));
});
    } else {
        // source line 102, bytecode pc 320
        this.m_btn_1.setString(xs.Tools.String.createString("auto_name_114"));
        // source line 103, bytecode pc 344
        this.m_btn_1.setOnClickCallBack(function() {
    // source line 109, bytecode pc 60
    xs.Tools.Net.requestMailAttach({ email_id: mailData.pk_id }, function(jsonObj) {
    // source line 107, bytecode pc 41
    xs.Tools.Net.getInstance().UseItemSuccess(jsonObj);
    // source line 108, bytecode pc 79
    xs.Utils.Notify.postNotification(xs.Constant_Notify_ModelChange_Mail);
}, this);
});
    }
},
    updateCcbForFriend: function(mailData) {
    // source line 115, bytecode pc 32
    this.m_content.setString(mailData.email_content);
    // source line 117, bytecode pc 126
    this.m_time.setString(((this.timeFormat(mailData.email_time_offset) + xs.Tools.String.createString("auto_name_500")) + mailData.email_sender_nickname));
    if (mailData.is_friend_request) {
        // source line 120, bytecode pc 165
        this.m_btn_1.setVisible(true);
        // source line 121, bytecode pc 185
        this.m_btn_2.setVisible(true);
        // source line 123, bytecode pc 236
        this.m_btn_1.setString(xs.Tools.String.createString("agree"));
        // source line 133, bytecode pc 273
        this.m_btn_1.setOnClickCallBack(function() {
    // source line 132, bytecode pc 66
    xs.Tools.Net.requestFriendApply({ other_id: mailData.email_sender, type: 1 }, function(jsonObj) {
    // source line 130, bytecode pc 37
    xs.Utils.Notify.postNotification(xs.Constant_Notify_ModelChange_Mail);
    // source line 131, bytecode pc 97
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_502"));
}, this);
}.bind(this));
        // source line 136, bytecode pc 324
        this.m_btn_2.setString(xs.Tools.String.createString("reject"));
        // source line 146, bytecode pc 361
        this.m_btn_2.setOnClickCallBack(function() {
    // source line 145, bytecode pc 67
    xs.Tools.Net.requestFriendApply({ other_id: mailData.email_sender, type: 2 }, function(jsonObj) {
    // source line 143, bytecode pc 37
    xs.Utils.Notify.postNotification(xs.Constant_Notify_ModelChange_Mail);
    // source line 144, bytecode pc 97
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_502"));
}, this);
}.bind(this));
    } else {
        // source line 148, bytecode pc 386
        this.m_btn_1.setVisible(false);
        // source line 150, bytecode pc 437
        this.m_btn_2.setString(xs.Tools.String.createString("reply"));
        // source line 155, bytecode pc 474
        this.m_btn_2.setOnClickCallBack(function() {
    // source line 154, bytecode pc 113
    xs.Views.Mgr.showDialogByName("SendMessageDialog", {
    type: xs.Views.Dialog.SendMessageDialog_Type_SendMsgToFriend,
    targetUser: { id: mailData.email_sender, name: mailData.email_sender_nickname }
});
}.bind(this));
    }
},
    onBtnClick: function(sender) {
    if ((sender === this.leftBtn)) {
        // source line 161, bytecode pc 47
        this.m_listener.onBtnClick(this.getIdx(), 0);
    } else {
        if ((sender === this.rightBtn)) {
            // source line 163, bytecode pc 100
            this.m_listener.onBtnClick(this.getIdx(), 1);
        }
    }
},
    timeFormat: function(seconds) {
    var hours, minutes;
    // source line 168, bytecode pc 27
    (hours = Math.floor((seconds / 3600)));
    // source line 169, bytecode pc 58
    (minutes = Math.floor(((seconds % 3600) / 60)));
    // source line 171, bytecode pc 132
    return (((hours + xs.Tools.String.createString("auto_name_448")) + minutes) + xs.Tools.String.createString("auto_name_503"));
},
    cfg: {
        btn_1: { priority: -1 },
        btn_2: { priority: -1 },
        ccbCfg_1: [
            { tag: 10, type: "ls", name: "m_content", id: "LS_liebiaoInf" },
            { tag: 11, type: "ls", name: "m_time", id: "LS_liebiaoInf2" },
            { tag: 12, type: "btn", name: "m_btn_1", id: "Btn_btn3" }
        ],
        ccbCfg_2: [
            { tag: 10, type: "ls", name: "m_content", id: "LS_liebiaoInf" },
            { tag: 11, type: "ls", name: "m_time", id: "LS_liebiaoInf2" },
            { tag: 12, type: "btn", name: "m_btn_1", id: "Btn_btn3" },
            { tag: 13, type: "btn", name: "m_btn_2", id: "Btn_btn3" }
        ]
    }
}));
// source line 193, bytecode pc 580
(xs.Views.MailTableViewCell.create = function(mailData) {
    var ret;
    // source line 194, bytecode pc 23
    (ret = new xs.Views.MailTableViewCell());
    if ((ret && ret.init(mailData))) {
        // source line 196, bytecode pc 59
        return ret;
    }
    // source line 198, bytecode pc 61
    return null;
});
