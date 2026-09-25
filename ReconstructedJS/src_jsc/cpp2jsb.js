// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/cpp2jsb.js:1
// source line 37, bytecode pc 84
(xs.Cpp2Jsb = (xs.Cpp2Jsb || {
    registerMap: { "default": {} },
    registerCallBack: function(modelName, funcName, callback) {
    var arguments;
    // source line 16, bytecode pc 4
    (arguments = arguments);
    // source line 18, bytecode pc 31
    xs.dump("Cpp2Jsb registerCallBack", arguments);
    if (!this.registerMap[modelName]) {
        // source line 20, bytecode pc 64
        (this.registerMap[modelName] = {});
    }
    // source line 26, bytecode pc 82
    (this.registerMap[modelName][funcName] = callback);
},
    registerCallBackByFuncName: function(arrayNames, callback) {
    var i;
    // source line 30, bytecode pc 4
    (i = 0);
    while ((i < arrayNames.length)) {
        // source line 31, bytecode pc 41
        this.registerCallBack("default", arrayNames[i], callback);
        // source line 30, bytecode pc 56
        i++;
    }
},
    onCmnMsg: function(moduleName, funcName, other1, other2) {
    var _func, arguments;
    // source line 37, bytecode pc 4
    (arguments = arguments);
    // source line 39, bytecode pc 31
    xs.dump("onCmnMsg", arguments);
    // source line 40, bytecode pc 61
    xs.dump("onCmnMsg-registerMap", this.registerMap);
    if (this.registerMap[moduleName]) {
        // source line 44, bytecode pc 94
        (_func = this.registerMap[moduleName][funcName]);
        if (_func) {
            // source line 46, bytecode pc 123
            _func.apply(null, arguments);
        } else {
            // source line 49, bytecode pc 162
            xs.error("funcName err", arguments, this.registerMap);
        }
    }
}
}));
// source line 60, bytecode pc 100
(xs.onCpp2Jsb = function() {
    var arguments;
    // source line 60, bytecode pc 4
    (arguments = arguments);
    // source line 62, bytecode pc 31
    xs.dump("onCpp2Jsb", arguments);
    // source line 64, bytecode pc 73
    xs.Cpp2Jsb.onCmnMsg.apply(xs.Cpp2Jsb, arguments);
});
// source line 71, bytecode pc 116
(xs.onCmnSuccess = function() {
    var sessionId, str, jsonStr, transactionId, transactionReceipt, player, userInfoArgs, arguments;
    // source line 71, bytecode pc 4
    (arguments = arguments);
    // source line 72, bytecode pc 31
    xs.log_cmn("onCmnSuccess", arguments);
    // source line 74, bytecode pc 37
    switch (arguments[0]) {
        default:
        // source line 76, bytecode pc 346
        xs.Cpp2Jsb.onCmnMsg.apply(xs.Cpp2Jsb, [ true ].concat(arguments));
        break;
        case "ios_bfsdk_login":
        case "and_bfsdk_login":
        // source line 81, bytecode pc 366
        (sessionId = arguments[1]);
        // source line 83, bytecode pc 393
        xs.Tools.Statistic.bfSdkLoginSuccessEvent();
        // source line 84, bytecode pc 420
        xs.Tools.Statistic.bfSdkLoginEnterSuccessEvent();
        // source line 94, bytecode pc 580
        xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.5),
    cc.CallFunc.create(function() {
    var sessionId;
    // source line 92, bytecode pc 9
    (sessionId = this.sessionId);
    // source line 93, bytecode pc 62
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_BfLoginSucess, { sessionKey: sessionId });
}.bind({ sessionId: sessionId }))
]));
        break;
        case "and_Thirdsdk_login":
        // source line 103, bytecode pc 612
        xs.Tools.Statistic.thirdSdkLoginEnterSuccessEvent();
        // source line 104, bytecode pc 627
        (sessionId = arguments[1]);
        // source line 113, bytecode pc 787
        xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.5),
    cc.CallFunc.create(function() {
    var sessionId;
    // source line 111, bytecode pc 9
    (sessionId = this.sessionId);
    // source line 112, bytecode pc 62
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_ThirdSdkLoginSucess, { sessionKey: sessionId });
}.bind({ sessionId: sessionId }))
]));
        break;
        case "errorDialog":
        // source line 123, bytecode pc 807
        (str = ("" + arguments[1]));
        // source line 124, bytecode pc 843
        xs.Views.Dialog.ErrorDialog.show(str);
        break;
        case "ios_bfsdk_register":
        case "and_bfsdk_register":
        // source line 128, bytecode pc 863
        (sessionId = arguments[1]);
        // source line 134, bytecode pc 991
        xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.5),
    cc.CallFunc.create(function() {
    // source line 136, bytecode pc 32
    xs.Tools.Statistic.event("1700006");
    if (!xs._event_once_each_launch_register_success) {
        // source line 138, bytecode pc 60
        (xs._event_once_each_launch_register_success = true);
        // source line 139, bytecode pc 93
        xs.Tools.Statistic.event("1700016");
    }
    // source line 141, bytecode pc 120
    xs.Views.Mgr.dismissLoadingLayer();
    // source line 143, bytecode pc 180
    xs.Views.Mgr.showToast(xs.Tools.String.createString("registeredSuccessfully"));
    // source line 144, bytecode pc 239
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_BfRegisterSucess, { sessionKey: sessionId });
})
]));
        break;
        case "ali_pay":
        case "and_ali_pay":
        case "ios_ali_pay":
        case "anysdk_paySuccess":
        case "google_paySuccess":
        // source line 166, bytecode pc 1124
        xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.5),
    cc.CallFunc.create(function() {
    var arguments;
    // source line 166, bytecode pc 4
    (arguments = arguments);
    // source line 169, bytecode pc 69
    xs.Views.Mgr.showDialogByName("CheckOrderDialog", { channelId: xs.app_account_sys, jsonString: arguments[1] });
})
]));
        break;
        case "anysdk_logoutSuccess":
        // source line 181, bytecode pc 1179
        xs.Scene.Mgr.changeSceneByName("LoginScene", { funTypeStr: "login" });
        break;
        case "3rd_logoutSuccess":
        // source line 185, bytecode pc 1234
        xs.Scene.Mgr.changeSceneByName("LoginScene", { funTypeStr: "login" });
        break;
        case "anysdk_accountSwitchSuccess":
        // source line 188, bytecode pc 1254
        (str = ("" + arguments[1]));
        // source line 189, bytecode pc 1278
        (jsonStr = JSON.parse(str));
        // source line 190, bytecode pc 1341
        xs.Scene.Mgr.changeSceneByName("LoginScene", { funTypeStr: "accountSwitchSuccess", uidKey: jsonStr.uid });
        break;
        case "anysdk_loginCancel":
        if (((xs.director.getRunningScene() != null) && (xs.director.getRunningScene().getTag() == xs.Cfg.Scene.LoginScene.tag))) {
        } else {
            // source line 199, bytecode pc 1493
            xs.Scene.Mgr.changeSceneByName("LoginScene", { funTypeStr: "login" });
        }
        break;
        case "ios_getSmsCaptchaSuccess":
        case "getSmsCaptchaSuccess":
        // source line 210, bytecode pc 1626
        xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.5),
    cc.CallFunc.create(function() {
    // source line 211, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("toast_VerificationCodeSuc"));
})
]));
        break;
        case "ios_BFbindMobileSucess":
        case "BFbindMobileSucess":
        // source line 225, bytecode pc 1759
        xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.5),
    cc.CallFunc.create(function() {
    // source line 226, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("toast_MobilePhoneBinding"));
})
]));
        break;
        case "appStore_checkTransaction":
        // source line 234, bytecode pc 1773
        (transactionId = arguments[1]);
        // source line 235, bytecode pc 1783
        (transactionReceipt = arguments[2]);
        // source line 250, bytecode pc 1945
        xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.5),
    cc.CallFunc.create(function() {
    // source line 246, bytecode pc 76
    xs.Views.Mgr.showDialogByName("CheckOrderDialog", {
    channelId: xs.Constant_Pay_Source_AppStore,
    transactionId: this.transactionId,
    transactionReceipt: this.transactionReceipt
});
}.bind({ transactionId: transactionId, transactionReceipt: transactionReceipt }))
]));
        break;
        case "anySdk_onClickExit":
        if (xs.AnySdk.AnySdkHelp_js.isFunctionSupported("exit")) {
            // source line 265, bytecode pc 2010
            xs.log("调用sdk退出功能");
            // source line 266, bytecode pc 2037
            xs.AnySdk.AnySdkHelp_js.exit();
        } else {
            // source line 269, bytecode pc 2065
            xs.log("sdk未提供退出功能,调用bf退出");
            // source line 270, bytecode pc 2116
            xs.JsbConnecter.getInstance().invoke("GlobalMethod", "exitGameWithUserClick", "");
        }
        break;
        case "anySdk_onDestroy":
        // source line 274, bytecode pc 2148
        xs.AnySdk.AnySdkHelp_js.destroy();
        break;
        case "logoutSuccessAndShowTipsSuccess":
        // source line 277, bytecode pc 2162
        (str = arguments[1]);
        // source line 278, bytecode pc 2193
        xs.Views.Mgr.showToast(str);
        break;
        case "game_exit":
        // source line 282, bytecode pc 2249
        (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
        // source line 289, bytecode pc 2418
        (userInfoArgs = ((((((((((((player.getPlayerId() + "|") + player.getPlayerName()) + "|") + player.getPlayerLevel()) + "|") + xs.Profile.UserCfg.getGameAddr().id) + "|") + xs.Profile.UserCfg.getGameAddr().name) + "|") + "exitServer") + "|") + player.getPlayerVipLevel()));
        // source line 290, bytecode pc 2467
        xs.JsbConnecter.getInstance().invoke("UserInfo", "", userInfoArgs);
        break;
    }
});
// source line 294, bytecode pc 132
(xs.onCmnFail = function() {
    var _errorMsg, errorCode, _str, arguments;
    // source line 294, bytecode pc 4
    (arguments = arguments);
    // source line 295, bytecode pc 31
    xs.dump("onCmnFail", arguments);
    // source line 296, bytecode pc 37
    switch (arguments[0]) {
        case "ios_bfsdk_login":
        case "and_bfsdk_login":
        // source line 300, bytecode pc 201
        (_errorMsg = arguments[1]);
        // source line 301, bytecode pc 217
        (errorCode = arguments[2]);
        // source line 331, bytecode pc 371
        xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.5),
    cc.CallFunc.create(function() {
    var _errorMsg, arguments;
    // source line 309, bytecode pc 4
    (arguments = arguments);
    // source line 311, bytecode pc 31
    xs.Tools.Statistic.bfSdkLoginFailEvent();
    // source line 313, bytecode pc 58
    xs.Views.Mgr.dismissLoadingLayer();
    if ((arguments[0] === "ios_bfsdk_login")) {
        if ((errorCode === "-10801099")) {
            // source line 317, bytecode pc 121
            xs.Tools.Statistic.bfSdkInitFailEvent();
        }
        // source line 319, bytecode pc 164
        xs.Tools.Statistic.bfSdkLoginFail_ErrCodeEvent(("bfsdk_ios_ec_" + errorCode));
    } else {
        if ((arguments[0] === "and_bfsdk_login")) {
            if ((errorCode === "702")) {
                // source line 322, bytecode pc 232
                xs.Tools.Statistic.bfSdkInitFailEvent();
            }
            // source line 324, bytecode pc 275
            xs.Tools.Statistic.bfSdkLoginFail_ErrCodeEvent(("bfsdk_android_ec_" + errorCode));
        }
    }
    // source line 327, bytecode pc 285
    (_errorMsg = this.msg);
    // source line 328, bytecode pc 338
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_BfLoginFail, { errorMsg: _errorMsg });
}.bind({ msg: _errorMsg }))
]));
        break;
        case "anysdk_loginFail":
        if (((xs.director.getRunningScene() != null) && (xs.director.getRunningScene().getTag() == xs.Cfg.Scene.LoginScene.tag))) {
        } else {
            // source line 346, bytecode pc 523
            xs.Scene.Mgr.changeSceneByName("LoginScene", { funTypeStr: "login" });
        }
        // source line 350, bytecode pc 532
        (_errorMsg = arguments[1]);
        // source line 364, bytecode pc 686
        xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.1),
    cc.CallFunc.create(function() {
    var _errorMsg;
    // source line 357, bytecode pc 32
    xs.Tools.Statistic.event("1700010");
    // source line 359, bytecode pc 59
    xs.Views.Mgr.dismissLoadingLayer();
    // source line 361, bytecode pc 69
    (_errorMsg = this.msg);
    // source line 363, bytecode pc 151
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_AnySdkLoginFail, { errorMsg: xs.Tools.String.createString("toast_LandingFailure") });
}.bind({ msg: _errorMsg }))
]));
        break;
        case "and_Thirdsdk_login":
        // source line 377, bytecode pc 700
        (_errorMsg = arguments[1]);
        // source line 400, bytecode pc 854
        xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.1),
    cc.CallFunc.create(function() {
    var _errorMsg;
    // source line 385, bytecode pc 26
    xs.Views.Mgr.dismissLoadingLayer();
    if (((xs.director.getRunningScene() != null) && (xs.director.getRunningScene().getTag() == xs.Cfg.Scene.LoginScene.tag))) {
    } else {
        // source line 393, bytecode pc 173
        xs.Scene.Mgr.changeSceneByName("LoginScene", { funTypeStr: "login" });
    }
    // source line 397, bytecode pc 183
    (_errorMsg = this.msg);
    // source line 399, bytecode pc 265
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_ThirdSdkLoginFail, { errorMsg: xs.Tools.String.createString("toast_LandingFailure") });
}.bind({ msg: _errorMsg }))
]));
        break;
        case "ios_bfsdk_register":
        case "and_bfsdk_register":
        // source line 409, bytecode pc 868
        (_errorMsg = arguments[1]);
        // source line 423, bytecode pc 1022
        xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.5),
    cc.CallFunc.create(function() {
    var _errorMsg;
    // source line 417, bytecode pc 32
    xs.Tools.Statistic.event("1700007");
    // source line 419, bytecode pc 59
    xs.Views.Mgr.dismissLoadingLayer();
    // source line 421, bytecode pc 69
    (_errorMsg = this.msg);
    // source line 422, bytecode pc 122
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_BfRegisterFail, { errorMsg: _errorMsg });
}.bind({ msg: _errorMsg }))
]));
        break;
        case "ali_pay":
        case "and_ali_pay":
        case "ios_ali_pay":
        case "anysdk_payFaild":
        case "google_payFaild":
        // source line 436, bytecode pc 1036
        (_errorMsg = arguments[1]);
        // source line 449, bytecode pc 1190
        xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.5),
    cc.CallFunc.create(function() {
    var _errorMsg;
    // source line 445, bytecode pc 26
    xs.Views.Mgr.dismissLoadingLayer();
    // source line 447, bytecode pc 36
    (_errorMsg = this.msg);
    // source line 448, bytecode pc 67
    xs.Views.Mgr.showToast(_errorMsg);
}.bind({ msg: _errorMsg }))
]));
        // source line 456, bytecode pc 1223
        xs.Tools.Statistic.event("1700014");
        break;
        case "ios_getSmsCaptchaFail":
        case "getSmsCaptchaFail":
        // source line 460, bytecode pc 1243
        (_str = arguments[1]);
        // source line 466, bytecode pc 1371
        xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.5),
    cc.CallFunc.create(function() {
    // source line 468, bytecode pc 26
    xs.Views.Mgr.dismissLoadingLayer();
    // source line 469, bytecode pc 96
    xs.Views.Mgr.showToast((xs.Tools.String.createString("toast_VerificationCodeSucFailure") + _str));
})
]));
        break;
        case "ios_BFbindMobileFail":
        case "BFbindMobileFail":
        // source line 479, bytecode pc 1391
        (_str = arguments[1]);
        // source line 485, bytecode pc 1519
        xs.director.getRunningScene().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.5),
    cc.CallFunc.create(function() {
    // source line 486, bytecode pc 26
    xs.Views.Mgr.dismissLoadingLayer();
    // source line 487, bytecode pc 96
    xs.Views.Mgr.showToast((xs.Tools.String.createString("toast_MobilePhoneBindingFailure") + _str));
})
]));
        break;
        default:
        // source line 496, bytecode pc 1547
        xs.warn("xs.onCmnFail error!");
        break;
    }
});
// source line 501, bytecode pc 148
(xs.onNotify = function() {
    var arguments;
    // source line 501, bytecode pc 4
    (arguments = arguments);
    // source line 502, bytecode pc 31
    xs.dump("onNotify", arguments);
});
// source line 508, bytecode pc 164
(xs.onTestSuccess = function() {
    var arguments;
    // source line 508, bytecode pc 4
    (arguments = arguments);
    // source line 509, bytecode pc 31
    xs.dump("onTestSuccess", arguments);
});
// source line 511, bytecode pc 180
(xs.onTestFail = function() {
    var arguments;
    // source line 511, bytecode pc 4
    (arguments = arguments);
    // source line 512, bytecode pc 31
    xs.dump("onTestFail", arguments);
});
