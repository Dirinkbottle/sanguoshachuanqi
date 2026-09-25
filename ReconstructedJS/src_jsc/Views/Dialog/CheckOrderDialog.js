// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/CheckOrderDialog.js:1
// source line 200, bytecode pc 173
(xs.Views.Dialog.CheckOrderDialog = xs.SpecificDialog.base.extend({
    init: function(params) {
    if (!this._super()) {
        // source line 11, bytecode pc 19
        return false;
    }
    // source line 14, bytecode pc 34
    (this.m_channelId = params.channelId);
    // source line 15, bytecode pc 42
    (this.transactionId = null);
    // source line 16, bytecode pc 50
    (this.transactionReceipt = null);
    // source line 19, bytecode pc 188
    (this._dialog = xs.Views.Dialog.createOneButtonDialog(xs.Tools.String.createString("auto_name_337"), xs.Tools.String.createString("auto_name_338"), xs.Tools.String.createString("auto_name_76"), function() {
    // source line 20, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}));
    // source line 23, bytecode pc 219
    this._dialog.getRightButton().setEnabled(false);
    // source line 24, bytecode pc 255
    xs.Utils.Node.attachNodes(this, this._dialog);
    // source line 34, bytecode pc 404
    (this._dialog2 = xs.Views.Dialog.createTwoButtonDialog("isRetryTitle", "isRetryContent", xs.Tools.String.createString("auto_name_146"), xs.Tools.String.createString("auto_name_339"), function() {
    // source line 29, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this), function() {
    // source line 32, bytecode pc 19
    this._dialog2.setVisible(false);
    // source line 33, bytecode pc 32
    this.requestCheckTransactionReceipt();
}.bind(this)));
    // source line 36, bytecode pc 424
    this._dialog2.setVisible(false);
    // source line 37, bytecode pc 460
    xs.Utils.Node.attachNodes(this, this._dialog2);
    if (xsc.Tools.PaySys.isUsingAppStore()) {
        // source line 43, bytecode pc 506
        (this.transactionId = params.transactionId);
        // source line 44, bytecode pc 521
        (this.transactionReceipt = params.transactionReceipt);
        // source line 47, bytecode pc 534
        this.requestCheckTransactionReceipt();
    } else {
        // source line 50, bytecode pc 578
        (this.order = xs.Scene.Mgr.loadStatusAndClear("CurrentOrder"));
        // source line 53, bytecode pc 620
        xs.director.getScheduler().unscheduleCallbackForTarget(this, this.countDown);
        // source line 54, bytecode pc 675
        xs.director.getScheduler().scheduleCallbackForTarget(this, this.countDown, 1, cc.REPEAT_FOREVER);
        // source line 55, bytecode pc 684
        (this.coolDownTime = 60);
        // source line 56, bytecode pc 697
        this.countDown();
        // source line 66, bytecode pc 710
        this.onResponse_Notify();
    }
    // source line 71, bytecode pc 712
    return true;
},
    onExit: function() {
    // source line 75, bytecode pc 12
    this._super();
    // source line 76, bytecode pc 54
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.countDown);
},
    countDown: function() {
    if ((this.coolDownTime > 0)) {
        // source line 81, bytecode pc 38
        (this.coolDownTime = (+this.coolDownTime - 1));
    }
},
    requestCheckTransactionReceipt_Google: function() {
    // source line 92, bytecode pc 91
    xs.Tools.Net.requestCheckTransactionReceipt({ user_id: this._order.user_id, pay_type: "1003", receipt_data: this._order.pk_id }, this.onResponse_CheckTransactionReceipt, this.onResponse_CheckTransactionReceipt_Err, this);
},
    requestCheckTransactionReceipt: function() {
    // source line 103, bytecode pc 164
    xs.Tools.Net.requestCheckTransactionReceipt({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    pay_type: "1003",
    receipt_data: this.transactionReceipt,
    special_channel: xs.Tools.Jsb.getChannelId()
}, this.onResponse_CheckTransactionReceipt, this.onResponse_CheckTransactionReceipt_Err, this);
},
    onResponse_CheckTransactionReceipt: function(jsonData) {
    // source line 108, bytecode pc 36
    xs.log("flag = ", jsonData.chargeInfo.flag);
    // source line 109, bytecode pc 50
    switch (jsonData.chargeInfo.flag) {
        case 1:
        // source line 112, bytecode pc 101
        xs.log("验证成功,发货成功");
        // source line 113, bytecode pc 123
        this.pay_Success(jsonData.chargeInfo);
        // source line 114, bytecode pc 181
        xs.JsbConnecter.getInstance().invoke("AppStore", "finishTransaction", ("" + this.transactionId));
        break;
        case -1:
        // source line 117, bytecode pc 209
        xs.log("验证成功,已经发货");
        // source line 118, bytecode pc 236
        xs.Views.Mgr.hideDialog();
        // source line 119, bytecode pc 294
        xs.JsbConnecter.getInstance().invoke("AppStore", "finishTransaction", ("" + this.transactionId));
        break;
        case -2:
        // source line 122, bytecode pc 322
        xs.log("验证失败");
        // source line 123, bytecode pc 349
        xs.Views.Mgr.hideDialog();
        // source line 124, bytecode pc 407
        xs.JsbConnecter.getInstance().invoke("AppStore", "finishTransaction", ("" + this.transactionId));
        break;
        case 0:
        default:
        // source line 130, bytecode pc 425
        this.onResponse_CheckTransactionReceipt_Err();
        break;
    }
},
    onResponse_CheckTransactionReceipt_Err: function(jsonData) {
    // source line 139, bytecode pc 19
    this._dialog2.setVisible(true);
},
    onResponse_Notify: function(jsonData) {
    // source line 147, bytecode pc 86
    xs.Tools.Net.requestOrderStatus({ order_ids: [ (this.order.tradeno + "") ], forcepush: true }, this.onResponse_Status, this.onResponse_Status_Err, this);
},
    onResponse_Status: function(jsonData) {
    if (jsonData.order_list[0].is_completed) {
        // source line 153, bytecode pc 43
        this.pay_Success(jsonData.order_list[0]);
    } else {
        if ((this.coolDownTime > 0)) {
            // source line 155, bytecode pc 74
            this.onResponse_Status_Err();
        } else {
            // source line 157, bytecode pc 112
            xs.Tools.Statistic.event("1700013");
            // source line 158, bytecode pc 163
            this._dialog.setContentText(xs.Tools.String.createString("auto_name_340"));
            // source line 159, bytecode pc 194
            this._dialog.getRightButton().setEnabled(true);
        }
    }
},
    pay_Success: function(payData) {
    // source line 164, bytecode pc 32
    xs.Tools.Statistic.event("1700012");
    // source line 165, bytecode pc 84
    xs.Tools.Statistic.pay(payData.price, this.m_channelId, payData.gold);
    if (xsc.Tools.PaySys.isUsingEasySdk()) {
        // source line 173, bytecode pc 278
        xs.Tools.Jsb.EasySdk.Statistic.event_pay({
    account_id: xs.Tools.Jsb.getDeviceId(),
    order_id: payData.order_id,
    amount: payData.price,
    currency_type: xsc.Tools.ProductSys.getCurrencyTypeString(),
    pay_type: xsc.Tools.ProductSys.getPayTypeString()
});
    }
    // source line 182, bytecode pc 407
    xs.Tools.TalkingDataAppCpa.onPay(xs.Tools.Jsb.getDeviceId(), payData.order_id, (payData.price * 100), xsc.Tools.ProductSys.getCurrencyTypeString(), xsc.Tools.ProductSys.getPayTypeString());
    // source line 185, bytecode pc 509
    xs.Views.Mgr.showToast(((xs.Tools.String.createString("auto_name_341") + payData.gold) + xs.Tools.String.createString("auto_name_27")));
    // source line 186, bytecode pc 547
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_ChargeSucess);
    // source line 187, bytecode pc 574
    xs.Views.Mgr.hideDialog();
},
    onResponse_Status_Err: function() {
    var callback;
    // source line 196, bytecode pc 43
    (callback = cc.CallFunc.create(function() {
    // source line 195, bytecode pc 80
    xs.Tools.Net.requestOrderStatus({ order_ids: [ (this.order.tradeno + "") ] }, this.onResponse_Status, this.onResponse_Status_Err, this);
}.bind(this)));
    // source line 197, bytecode pc 107
    this.runAction(cc.Sequence.create(cc.DelayTime.create(3), callback));
},
    setBaseTouchPriority: function(priority) {
    // source line 201, bytecode pc 16
    this._super(priority);
    // source line 202, bytecode pc 51
    this._dialog.getRightButton().setTouchPriority((priority - 1));
}
}));
// source line 208, bytecode pc 253
xs.Views.Mgr.registerDialog("CheckOrderDialog", { "class": xs.Views.Dialog.CheckOrderDialog, styleType: xs.Constant_DlgStyleType_Small });
