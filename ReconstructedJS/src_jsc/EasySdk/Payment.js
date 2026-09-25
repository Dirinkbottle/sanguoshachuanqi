// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/EasySdk/Payment.js:1
// source line 45, bytecode pc 186
(xs.EasySdk.Payment = (xs.EasySdk.Payment || {
    Protocol: {
        Const_PayResult_Exception: "20000",
        Const_PayResult_Finish: "20001",
        Const_PayResult_Fail: "20002",
        Const_PayResult_Fail_NetworkErr: "20003",
        Const_PayResult_Cancel: "20004",
        Const_PayResult_Now_Paying: "20005",
        Const_PayResult_Fail_ProductInfoErr: "20006"
    },
    Const: { Notify_Event: { Easy: { CmnPayment: "CmnPayment" } } },
    registerCallBack: function() {
    if (xsc.Tools.AccountSys.isUsingEasySdk()) {
        // source line 38, bytecode pc 92
        xs.Cpp2Jsb.registerCallBack([ "EasySdk" ], "Payment", function(system, module, version, codeAction, msg0, msg1) {
    var arguments;
    // source line 34, bytecode pc 4
    (arguments = arguments);
    // source line 35, bytecode pc 31
    xs.log_zj("EasySdk-onCallBack", arguments);
    // source line 36, bytecode pc 103
    xs.Utils.Notify.postNotification(this.Const.Notify_Event.Easy.CmnPayment, { code: codeAction, msg: msg0 });
}.bind(this));
    }
    // source line 42, bytecode pc 150
    xs.Utils.Notify.addObserver(this, this.onEasySdkPaymentCallBack, this.Const.Notify_Event.Easy.CmnPayment);
},
    onEasySdkPaymentCallBack: function(params) {
    // source line 47, bytecode pc 26
    xs.log_zj("onEasySdkCallBack", params);
    // source line 50, bytecode pc 35
    switch (params.code) {
        case xs.EasySdk.Protocol.Const_Init_Success:
        // source line 52, bytecode pc 348
        xs.log("Const_Init_Success");
        break;
        case xs.EasySdk.Protocol.Const_Init_Fail:
        // source line 55, bytecode pc 376
        xs.log("Const_Init_Fail");
        break;
        case xs.EasySdk.Protocol.Const_Exception:
        // source line 58, bytecode pc 408
        xs.error("异常", params);
        break;
        case xs.EasySdk.Payment.Protocol.Const_PayResult_Finish:
        // source line 62, bytecode pc 436
        xs.log("支付成功");
        // source line 65, bytecode pc 491
        xs.Views.Mgr.showDialogByName("CheckOrderDialog", { channelId: xs.Constant_Pay_Source_EasySdk });
        break;
        case xs.EasySdk.Payment.Protocol.Const_PayResult_Cancel:
        // source line 69, bytecode pc 519
        xs.log("支付取消");
        break;
        case xs.EasySdk.Payment.Protocol.Const_PayResult_Fail:
        // source line 73, bytecode pc 547
        xs.log("支付失败");
        // source line 74, bytecode pc 607
        xs.Views.Mgr.showToast(xs.Tools.String.createString("easy_payFail"));
        break;
        case xs.EasySdk.Payment.Protocol.Const_PayResult_Fail_NetworkErr:
        // source line 78, bytecode pc 635
        xs.log("支付失败,网络错误");
        // source line 79, bytecode pc 695
        xs.Views.Mgr.showToast(xs.Tools.String.createString("easy_payFail_NetworkErr"));
        break;
        case xs.EasySdk.Payment.Protocol.Const_PayResult_Fail_ProductInfoErr:
        // source line 83, bytecode pc 723
        xs.log("支付失败,订单信息错误");
        // source line 84, bytecode pc 783
        xs.Views.Mgr.showToast(xs.Tools.String.createString("easy_payFail_ProductInfoErr"));
        break;
        case xs.EasySdk.Payment.Protocol.Const_PayResult_Exception:
        // source line 88, bytecode pc 811
        xs.log("支付异常");
        // source line 89, bytecode pc 871
        xs.Views.Mgr.showToast(xs.Tools.String.createString("easy_payFail_Exception"));
        break;
        case xs.EasySdk.Payment.Protocol.Const_PayResult_Now_Paying:
        // source line 93, bytecode pc 899
        xs.log("正在支付中");
        // source line 94, bytecode pc 959
        xs.Views.Mgr.showToast(xs.Tools.String.createString("easy_payFail_NowPaying"));
        break;
        default:
        // source line 98, bytecode pc 1000
        xs.Views.Mgr.showToast(params.msg);
        break;
    }
}
}));
// source line 105, bytecode pc 212
(xs.EasySdk.Payment.setEasyAppKeyBase64 = function(info) {
    if (info) {
        // source line 107, bytecode pc 17
        (this.easy_appkey_base64 = info);
    } else {
        // source line 109, bytecode pc 34
        (this.easy_appkey_base64 = "");
    }
});
// source line 113, bytecode pc 238
(xs.EasySdk.Payment.getEasyAppKeyBase64 = function() {
    if (this.easy_appkey_base64) {
        // source line 115, bytecode pc 17
        return this.easy_appkey_base64;
    } else {
        // source line 117, bytecode pc 28
        return "";
    }
});
