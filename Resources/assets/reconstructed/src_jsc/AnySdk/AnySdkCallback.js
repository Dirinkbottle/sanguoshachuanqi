// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/AnySdk/AnySdkCallback.js:1
// source line 278, bytecode pc 142
(xs.AnySdk.AnySdkCallback = (xs.AnySdk.AnySdkCallback || {
    onUserPluginCallBack: function(plugin, code, msg) {
    // source line 10, bytecode pc 46
    cc.log(((((("onUserPluginCallBack->>> plugin = " + plugin) + ",code = ") + code) + ",msg = ") + msg));
    if (((code != UserActionResultCode.kInitSuccess) && (code != UserActionResultCode.kInitFail))) {
        // source line 13, bytecode pc 112
        xs.Views.Mgr.dismissLoadingLayer();
    }
    // source line 16, bytecode pc 116
    switch (code) {
        case UserActionResultCode.kInitSuccess:
        // source line 18, bytecode pc 414
        xs.log("sdk初始化成功");
        // source line 19, bytecode pc 427
        this.onInitSuccess();
        break;
        case UserActionResultCode.kInitFail:
        // source line 23, bytecode pc 455
        xs.log("初始化失败");
        // source line 24, bytecode pc 488
        xs.Tools.Statistic.anySdk_ErrCodeEvent("anySdk_userInitFail");
        // source line 25, bytecode pc 539
        xs.JsbConnecter.getInstance().invoke("GlobalMethod", "exitGame", "");
        break;
        case UserActionResultCode.kLoginSuccess:
        // source line 29, bytecode pc 567
        xs.log("登录成功");
        // source line 30, bytecode pc 584
        this.onLoginSuccess(msg);
        break;
        case UserActionResultCode.kLoginNetworkError:
        // source line 34, bytecode pc 612
        xs.log("登录失败,网络错误");
        // source line 35, bytecode pc 649
        xs.Tools.Statistic.anySdk_ErrCodeEvent("anySdk_loginFail", code);
        // source line 36, bytecode pc 727
        xs.JsbConnecter.getInstance().invoke("GlobalMethod", "showMessageBox_Android", xs.Tools.String.createString("toast_CheckNetwork"));
        break;
        case UserActionResultCode.kLoginNoNeed:
        break;
        case UserActionResultCode.kLoginFail:
        // source line 41, bytecode pc 760
        xs.log("登录失败");
        // source line 42, bytecode pc 801
        xs.Tools.Statistic.anySdk_ErrCodeEvent("anySdk_loginFail", code, msg);
        // source line 43, bytecode pc 818
        this.onLoginFail(msg);
        break;
        case UserActionResultCode.kLoginCancel:
        // source line 46, bytecode pc 846
        xs.log("登录取消");
        // source line 47, bytecode pc 863
        this.onLoginCancel(msg);
        break;
        case UserActionResultCode.kLogoutSuccess:
        // source line 50, bytecode pc 891
        xs.log("登出成功");
        // source line 51, bytecode pc 904
        this.onLogoutSuccess();
        break;
        case UserActionResultCode.kLogoutFail:
        // source line 54, bytecode pc 946
        xs.Tools.Statistic.anySdk_ErrCodeEvent("anySdk_logoutFail", code);
        // source line 55, bytecode pc 969
        xs.log("登出失败");
        break;
        case UserActionResultCode.kPlatformEnter:
        // source line 58, bytecode pc 997
        xs.log("打开用户中心");
        break;
        case UserActionResultCode.kPlatformBack:
        // source line 61, bytecode pc 1025
        xs.log("关闭用户中心");
        break;
        case UserActionResultCode.kPausePage:
        break;
        case UserActionResultCode.kExitPage:
        // source line 66, bytecode pc 1058
        xs.log("退出游戏");
        // source line 67, bytecode pc 1109
        xs.JsbConnecter.getInstance().invoke("GlobalMethod", "exitGame", "");
        break;
        case UserActionResultCode.kAntiAddictionQuery:
        break;
        case UserActionResultCode.kRealNameRegister:
        break;
        case UserActionResultCode.kAccountSwitchSuccess:
        // source line 74, bytecode pc 1147
        xs.log("切换帐号成功");
        // source line 75, bytecode pc 1164
        this.onAccountSwitchSuccess(msg);
        break;
        case UserActionResultCode.kAccountSwitchFail:
        if ((xs.AnySdk.AnySdkHelp_js.getChannelId() == "000054")) {
            // source line 79, bytecode pc 1219
            this.onLogoutSuccess();
        }
        // source line 81, bytecode pc 1252
        xs.Tools.Statistic.anySdk_ErrCodeEvent("anySdk_switchFail");
        // source line 82, bytecode pc 1275
        xs.log("切换帐号失败");
        break;
        case UserActionResultCode.kOpenShop:
        break;
        default:
        // source line 87, bytecode pc 1312
        xs.log(("未知回调,code = " + code));
        // source line 88, bytecode pc 1353
        xs.Tools.Statistic.anySdk_ErrCodeEvent("anySdk_unKnowUserSys", code, msg);
        break;
    }
},
    onPayResult: function(code, msg, info) {
    // source line 97, bytecode pc 46
    cc.log(((((("onIapPluginCallback->>>code = " + code) + ", msg = ") + msg) + ", info = ") + info));
    if (((code != PayResultCode.kPayInitSuccess) && (code != PayResultCode.kPayInitFail))) {
        // source line 101, bytecode pc 112
        xs.Views.Mgr.dismissLoadingLayer_ext();
    }
    // source line 104, bytecode pc 116
    switch (code) {
        case PayResultCode.kPaySuccess:
        // source line 106, bytecode pc 279
        xs.log("支付成功");
        // source line 107, bytecode pc 292
        this.onPaySuccess();
        break;
        case PayResultCode.kPayFail:
        // source line 110, bytecode pc 320
        xs.log("支付失败");
        // source line 111, bytecode pc 361
        xs.Tools.Statistic.anySdk_ErrCodeEvent("anySdk_PayFail", code, msg);
        break;
        case PayResultCode.kPayCancel:
        // source line 114, bytecode pc 389
        xs.log("支付取消");
        break;
        case PayResultCode.kPayNetworkError:
        // source line 117, bytecode pc 417
        xs.log("支付失败,网络错误");
        // source line 118, bytecode pc 495
        xs.JsbConnecter.getInstance().invoke("GlobalMethod", "showMessageBox_Android", xs.Tools.String.createString("toast_CheckNetwork_pay"));
        // source line 119, bytecode pc 532
        xs.Tools.Statistic.anySdk_ErrCodeEvent("anySdk_PayFail", code);
        break;
        case PayResultCode.kPayProductionInforIncomplete:
        // source line 122, bytecode pc 615
        xs.JsbConnecter.getInstance().invoke("GlobalMethod", "showMessageBox_Android", xs.Tools.String.createString("toast_OrderInformation"));
        // source line 123, bytecode pc 652
        xs.Tools.Statistic.anySdk_ErrCodeEvent("anySdk_PayFail", code);
        break;
        case PayResultCode.kPayInitSuccess:
        // source line 126, bytecode pc 680
        xs.log("支付系统初始化成功");
        break;
        case PayResultCode.kPayInitFail:
        // source line 129, bytecode pc 708
        xs.log("支付系统初始化失败");
        // source line 130, bytecode pc 741
        xs.Tools.Statistic.anySdk_ErrCodeEvent("anySdk_PayInitFail");
        break;
        case PayResultCode.kPayNowPaying:
        // source line 133, bytecode pc 769
        xs.log("正在支付中");
        // source line 134, bytecode pc 782
        this.onPayNowPaying();
        break;
        case PayResultCode.kPayRechareSuccess:
        break;
        default:
        // source line 139, bytecode pc 819
        xs.log(("未知回调,code = " + code));
        // source line 140, bytecode pc 860
        xs.Tools.Statistic.anySdk_ErrCodeEvent("anySdk_unKnowPaySys", code, msg);
        break;
    }
},
    onInitSuccess: function() {
    // source line 146, bytecode pc 28
    xs.AnySdk.AnySdkHelp_js.setInitState(true);
    if (((xs.director.getRunningScene() != null) && (xs.director.getRunningScene().getTag() == xs.Cfg.Scene.LoginScene.tag))) {
        // source line 148, bytecode pc 147
        xs.AnySdk.AnySdkHelp_js.login();
    }
},
    onLoginSuccess: function(msg) {
    var str, jsonStr;
    // source line 155, bytecode pc 26
    xs.Tools.Statistic.anySdkLoginEnterSuccessEvent();
    // source line 157, bytecode pc 39
    (str = ("" + msg));
    // source line 158, bytecode pc 63
    (jsonStr = JSON.parse(str));
    // source line 159, bytecode pc 95
    xs.log(("uid = " + jsonStr.uid));
    // source line 178, bytecode pc 254
    xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.5),
    cc.CallFunc.create(function() {
    // source line 167, bytecode pc 26
    xs.AnySdk.AnySdkHelp_js.showToolBar();
    if (((xs.director.getRunningScene() != null) && (xs.director.getRunningScene().getTag() == xs.Cfg.Scene.LoginScene.tag))) {
        // source line 171, bytecode pc 174
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_AnySdkLoginSucess, { uidKey: this.uid });
    } else {
        // source line 175, bytecode pc 240
        xs.Scene.Mgr.changeSceneByName("LoginScene", { funTypeStr: "accountSwitchSuccess", uidKey: this.uid });
    }
}.bind({ uid: jsonStr.uid }))
]));
},
    onLoginFail: function(msg) {
    if ((msg == "login invalid, please try again")) {
        // source line 189, bytecode pc 40
        xs.AnySdk.AnySdkHelp_js.logout();
        // source line 190, bytecode pc 42
        return 1;
    } else {
        // source line 193, bytecode pc 107
        xs.Views.Mgr.showToast(xs.Tools.String.createString("toast_LandingFailure"));
    }
    // source line 196, bytecode pc 124
    this.onLoginCancel(msg);
},
    onLoginCancel: function(msg) {
    if (((xs.director.getRunningScene() != null) && (xs.director.getRunningScene().getTag() == xs.Cfg.Scene.LoginScene.tag))) {
    } else {
        // source line 205, bytecode pc 146
        xs.Scene.Mgr.changeSceneByName("LoginScene", { funTypeStr: "login" });
    }
},
    onLogoutSuccess: function() {
    // source line 216, bytecode pc 127
    xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.5),
    cc.CallFunc.create(function() {
    // source line 217, bytecode pc 49
    xs.Scene.Mgr.changeSceneByName("LoginScene", { funTypeStr: "login" });
})
]));
},
    onAccountSwitchSuccess: function(msg) {
    var str, jsonStr;
    if (((xs.AnySdk.AnySdkHelp_js.getChannelId() == "110000") || ((xs.AnySdk.AnySdkHelp_js.getChannelId() == "000007") || (xs.AnySdk.AnySdkHelp_js.getChannelId() == "000215")))) {
        // source line 231, bytecode pc 139
        xs.AnySdk.AnySdkHelp_js.logout();
        // source line 232, bytecode pc 141
        return 1;
    }
    // source line 236, bytecode pc 154
    (str = ("" + msg));
    try {
        // source line 239, bytecode pc 183
        (jsonStr = JSON.parse(str));
    } catch (e) {
        // source line 242, bytecode pc 208
        (jsonStr = {});
        /* TODO_BYTECODE pc=209 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 253, bytecode pc 376
    xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.5),
    cc.CallFunc.create(function() {
    // source line 251, bytecode pc 60
    xs.Scene.Mgr.changeSceneByName("LoginScene", { funTypeStr: "accountSwitchSuccess", uidKey: this.uid });
}.bind({ uid: jsonStr.uid }))
]));
},
    onPaySuccess: function() {
    // source line 268, bytecode pc 127
    xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.5),
    cc.CallFunc.create(function() {
    // source line 270, bytecode pc 54
    xs.Views.Mgr.showDialogByName("CheckOrderDialog", { channelId: xs.Constant_Pay_Source_Zhifubao });
})
]));
},
    onPayNowPaying: function() {
    // source line 279, bytecode pc 26
    xs.AnySdk.AnySdkHelp_js.resetPayState();
    // source line 280, bytecode pc 86
    xs.Views.Mgr.showToast(xs.Tools.String.createString("toast_PaymentStatusRefresh"));
}
}));
