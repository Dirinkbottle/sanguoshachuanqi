// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Mail/MailView.js:1
// source line 103, bytecode pc 133
(xs.Views.MailView = cc.Layer.extend({
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(viewType) {
    if (!this._super()) {
        // source line 14, bytecode pc 19
        return false;
    }
    // source line 17, bytecode pc 29
    (this.viewType = viewType);
    // source line 19, bytecode pc 67
    (this.mailTableView = xs.Views.Table.MailTableView.create());
    // source line 24, bytecode pc 157
    xs.Utils.Node.attachNodes(this, this.mailTableView, { desc: "lb", offset: xs.Views.TablePage.getTableViewOffset(), sc: true });
    // source line 28, bytecode pc 170
    this.showNoMailMessage();
    // source line 29, bytecode pc 172
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 33, bytecode pc 12
    this._super();
    // source line 34, bytecode pc 30
    this.mailTableView.reloadData();
},
    onBtnClick: function(idx, btnType) {
    var emailId;
    // source line 38, bytecode pc 11
    switch (this.mailData.type) {
        case xs.Constant_MailType_Report:
        if ((this.mailData[idx].email_event_scene === "1")) {
            // source line 41, bytecode pc 120
            xs.Scene.Mgr.changeSceneByName("LadderScene");
        } else {
            if ((this.mailData[idx].email_event_scene === "2")) {
                // source line 43, bytecode pc 178
                xs.Tools.Scene.gotoChaos();
            }
        }
        break;
        case xs.Constant_MailType_Award:
        if ((this.mailData[idx].is_attach_get === "0")) {
            // source line 48, bytecode pc 228
            (emailId = this.mailData[idx].pk_id);
            // source line 51, bytecode pc 279
            xs.Tools.Net.requestMailAttach({ email_id: emailId }, this.onGetMailAttchCb, this);
        } else {
            if ((this.mailData[idx].is_attach_get === "1")) {
                // source line 53, bytecode pc 370
                xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_100"));
            }
        }
        break;
        case xs.Constant_MailType_Friend:
        if ((btnType === 0)) {
            // source line 62, bytecode pc 454
            xs.Tools.Net.requestFriendApply({ other_id: this.mailData[idx].email_sender, type: 1 }, this.onFriendApplyResponse, this);
        } else {
            if ((btnType === 1)) {
                // source line 68, bytecode pc 539
                xs.Tools.Net.requestFriendApply({ other_id: this.mailData[idx].email_sender, type: 2 }, this.onFriendApplyResponse, this);
            }
        }
        break;
        default:
        break;
    }
},
    onGetMailAttchCb: function(jsonObj) {
    // source line 75, bytecode pc 8
    (this.m_baseTouchPriority = -1);
    // source line 76, bytecode pc 50
    xs.Tools.Net.getInstance().UseItemSuccess(jsonObj);
    // source line 78, bytecode pc 88
    xs.Utils.Notify.postNotification(xs.Constant_Notify_ModelChange_Mail);
},
    onFriendApplyResponse: function(jsonObj) {
    // source line 85, bytecode pc 37
    xs.Utils.Notify.postNotification(xs.Constant_Notify_ModelChange_Mail);
},
    showNoMailMessage: function() {
    // source line 88, bytecode pc 38
    (this.noMailTip = xs.Factorys.Label.createByStyleId("LS_danyao"));
    // source line 89, bytecode pc 89
    this.noMailTip.setString(xs.Tools.String.createString("noMailTip"));
    // source line 90, bytecode pc 148
    xs.Utils.Node.attachNodes(this, this.noMailTip, { desc: "c", sc: true });
    // source line 91, bytecode pc 168
    this.noMailTip.setVisible(true);
},
    showOrNotShow: function(data) {
    // source line 94, bytecode pc 26
    xs.log_zhz("data", data);
    if (!xs.Utils.isEmpty(data)) {
        // source line 96, bytecode pc 80
        xs.log_zhz("setVisible(false)");
        // source line 97, bytecode pc 100
        this.noMailTip.setVisible(false);
    } else {
        // source line 99, bytecode pc 128
        xs.log_zhz("setVisible(true)");
        // source line 100, bytecode pc 148
        this.noMailTip.setVisible(true);
    }
},
    reloadData: function(data) {
    // source line 104, bytecode pc 9
    (this.mailData = data);
    // source line 105, bytecode pc 16
    switch (this.viewType) {
        case xs.Constant_MailType_System:
        // source line 107, bytecode pc 126
        this.mailTableView.setData(this.mailData.systemMail);
        // source line 108, bytecode pc 151
        this.showOrNotShow(this.mailData.systemMail);
        break;
        case xs.Constant_MailType_Friend:
        // source line 111, bytecode pc 186
        this.mailTableView.setData(this.mailData.friendMail);
        // source line 112, bytecode pc 211
        this.showOrNotShow(this.mailData.friendMail);
        break;
        case xs.Constant_MailType_Award:
        // source line 115, bytecode pc 246
        this.mailTableView.setData(this.mailData.awardMail);
        // source line 116, bytecode pc 271
        this.showOrNotShow(this.mailData.awardMail);
        break;
        case xs.Constant_MailType_Report:
        // source line 119, bytecode pc 306
        this.mailTableView.setData(this.mailData.reportMail);
        // source line 120, bytecode pc 331
        this.showOrNotShow(this.mailData.reportMail);
        break;
        case xs.Constant_MailType_Charge:
        // source line 123, bytecode pc 366
        this.mailTableView.setData(this.mailData.chargeMail);
        // source line 124, bytecode pc 391
        this.showOrNotShow(this.mailData.chargeMail);
        break;
        default:
        break;
    }
    // source line 128, bytecode pc 414
    this.mailTableView.reloadData();
}
}));
// source line 132, bytecode pc 159
(xs.Views.MailView.create = function(viewType) {
    var ret;
    // source line 133, bytecode pc 23
    (ret = new xs.Views.MailView());
    if ((ret && ret.init(viewType))) {
        // source line 135, bytecode pc 59
        return ret;
    }
    // source line 137, bytecode pc 61
    return null;
});
