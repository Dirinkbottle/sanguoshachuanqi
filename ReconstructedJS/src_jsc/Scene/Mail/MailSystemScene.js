// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Mail/MailSystemScene.js:1
// source line 116, bytecode pc 123
(xs.Scene.MailSystemScene = cc.Scene.extend({
    ctor: function() {
    // source line 18, bytecode pc 12
    this._super();
    // source line 19, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(params) {
    var visibleSize, playerInfo, mainMenu;
    if (!this._super()) {
        // source line 24, bytecode pc 19
        return false;
    }
    // source line 26, bytecode pc 44
    (visibleSize = xs.director.getVisibleSize());
    // source line 29, bytecode pc 77
    xs.Tools.UI.addCommonBg(this, true, true);
    // source line 32, bytecode pc 107
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 33, bytecode pc 143
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 36, bytecode pc 199
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 41, bytecode pc 291
    (this.pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 42, bytecode pc 311
    this.pageView.setListener(this);
    // source line 46, bytecode pc 370
    xs.Utils.Node.attachNodes(this, this.pageView, { desc: "lb", sc: true });
    // source line 50, bytecode pc 459
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("auto_name_13"), xs.Views.MailView, { param: xs.Constant_MailType_System });
    // source line 53, bytecode pc 548
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("auto_name_114"), xs.Views.MailView, { param: xs.Constant_MailType_Award });
    // source line 56, bytecode pc 637
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("auto_name_115"), xs.Views.MailView, { param: xs.Constant_MailType_Charge });
    // source line 59, bytecode pc 726
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("auto_name_116"), xs.Views.MailView, { param: xs.Constant_MailType_Report });
    // source line 62, bytecode pc 815
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("auto_name_117"), xs.Views.MailView, { param: xs.Constant_MailType_Friend });
    // source line 66, bytecode pc 849
    (mainMenu = xs.Tools.UI.addShortcutBoard(this, true));
    if ((params != null)) {
        // source line 70, bytecode pc 886
        this.pageView.selectPage(params.index);
    }
    // source line 77, bytecode pc 1016
    this.pageView.setHintIcon([ 0, 1, 2, 3, 4 ], [
    xs.Constant_HintType_Mail_System,
    xs.Constant_HintType_Mail_Award,
    xs.Constant_HintType_Mail_Charge,
    xs.Constant_HintType_Mail_Report,
    xs.Constant_HintType_Mail_Friend
], false);
    // source line 79, bytecode pc 1018
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 83, bytecode pc 12
    this._super();
    // source line 85, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.updateData, xs.Constant_Notify_ModelChange_Mail);
    // source line 86, bytecode pc 72
    this.updateData();
},
    onExit: function() {
    // source line 90, bytecode pc 12
    this._super();
    // source line 91, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_Mail);
},
    updateData: function() {
    // source line 95, bytecode pc 48
    xs.Tools.Net.requestMail({ forcepush: true }, this.onResponse, this);
    // source line 100, bytecode pc 178
    this.pageView.setHintIcon([ 0, 1, 2, 3, 4 ], [
    xs.Constant_HintType_Mail_System,
    xs.Constant_HintType_Mail_Award,
    xs.Constant_HintType_Mail_Charge,
    xs.Constant_HintType_Mail_Report,
    xs.Constant_HintType_Mail_Friend
], false);
},
    onResponse: function(jsonObj) {
    // source line 104, bytecode pc 21
    this.filterMailData(jsonObj.email_list);
    // source line 105, bytecode pc 57
    this.pageView.getCurSelPageView().reloadData(this.mailData);
},
    onPageChange: function(pageIdx) {
    if (this.mailData) {
        // source line 110, bytecode pc 46
        this.pageView.getCurSelPageView().reloadData(this.mailData);
    }
    // source line 112, bytecode pc 70
    this.pageView.setIconNum(pageIdx, 0);
},
    filterMailData: function(mailData) {
    var i, mailType;
    // source line 117, bytecode pc 12
    (this.mailData = {});
    // source line 118, bytecode pc 29
    (this.mailData.systemMail = []);
    // source line 119, bytecode pc 46
    (this.mailData.friendMail = []);
    // source line 120, bytecode pc 63
    (this.mailData.awardMail = []);
    // source line 121, bytecode pc 80
    (this.mailData.reportMail = []);
    // source line 122, bytecode pc 97
    (this.mailData.chargeMail = []);
    // source line 125, bytecode pc 102
    (i = 0);
    while ((i < mailData.length)) {
        // source line 126, bytecode pc 124
        (mailType = mailData[i].email_type);
        if ((mailType === "system")) {
            // source line 128, bytecode pc 169
            this.mailData.systemMail.push(mailData[i]);
        } else {
            if ((mailType === "friend")) {
                // source line 130, bytecode pc 219
                this.mailData.friendMail.push(mailData[i]);
            } else {
                if ((mailType === "gift")) {
                    // source line 132, bytecode pc 269
                    this.mailData.awardMail.push(mailData[i]);
                } else {
                    if ((mailType === "event")) {
                        // source line 134, bytecode pc 319
                        this.mailData.reportMail.push(mailData[i]);
                    } else {
                        if ((mailType === "pay")) {
                            // source line 136, bytecode pc 369
                            this.mailData.chargeMail.push(mailData[i]);
                        } else {
                            // source line 138, bytecode pc 407
                            xs.warn("mail", ("error type: " + mailType));
                        }
                    }
                }
            }
        }
        // source line 125, bytecode pc 422
        i++;
    }
}
}));
// source line 146, bytecode pc 149
(xs.Scene.MailSystemScene.create = function(params) {
    var ret;
    // source line 147, bytecode pc 23
    (ret = new xs.Scene.MailSystemScene());
    if ((ret && ret.init(params))) {
        // source line 149, bytecode pc 59
        return ret;
    }
    // source line 151, bytecode pc 61
    return null;
});
// source line 159, bytecode pc 224
xs.Scene.Mgr.registerScene("MailSystemScene", { "class": xs.Scene.MailSystemScene, type: xs.Constant_SceneType_Cmn });
