// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/EasySdk/Account.js:1
// source line 54, bytecode pc 206
(xs.EasySdk.Account = (xs.EasySdk.Account || {
    Protocol: {
        Const_Account_Login_Exception: "10000",
        Const_Account_Login_Success: "10001",
        Const_Account_Login_Fail: "10002",
        Const_Account_Login_Timeout: "10004",
        Const_Account_Login_NoNeed: "10005",
        Const_Account_Login_Cancel: "10006",
        Const_Account_Logout_Exception: "10100",
        Const_Account_Logout_Success: "10101",
        Const_Account_Logout_Fail: "10102"
    },
    Const: { Notify_Event: { Easy: { CmnAccount: "CmnAccount" } } },
    registerCallBack: function() {
    if (xsc.Tools.AccountSys.isUsingEasySdk()) {
        // source line 38, bytecode pc 53
        xs.log_zj("registerCallBack");
        // source line 47, bytecode pc 115
        xs.Cpp2Jsb.registerCallBack([ "EasySdk" ], "Account", function(system, module, version, codeAction, msg0, msg1) {
    var arguments;
    // source line 43, bytecode pc 4
    (arguments = arguments);
    // source line 44, bytecode pc 31
    xs.dump("EasySdk-onCallBack", arguments);
    // source line 45, bytecode pc 103
    xs.Utils.Notify.postNotification(this.Const.Notify_Event.Easy.CmnAccount, { code: codeAction, msg: msg0 });
}.bind(this));
    }
    // source line 51, bytecode pc 173
    xs.Utils.Notify.addObserver(this, this.onEasySdkAccountCallBack, this.Const.Notify_Event.Easy.CmnAccount);
},
    onEasySdkAccountCallBack: function(params) {
    var _jsonSuccessMsg;
    // source line 56, bytecode pc 26
    xs.log_zj("onEasySdkCallBack", params);
    // source line 58, bytecode pc 35
    switch (params.code) {
        case xs.EasySdk.Protocol.Const_Init_Success:
        break;
        case xs.EasySdk.Protocol.Const_Init_Fail:
        break;
        case xs.EasySdk.Protocol.Const_Exception:
        // source line 64, bytecode pc 422
        xs.error("异常", params);
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Success:
        // source line 69, bytecode pc 456
        (_jsonSuccessMsg = JSON.parse(params.msg));
        // source line 71, bytecode pc 487
        xs.EasySdk.Account.setAccountInfo(_jsonSuccessMsg);
        if (((xs.director.getRunningScene() != null) && (xs.director.getRunningScene().getTag() == xs.Cfg.Scene.LoginScene.tag))) {
        } else {
            if ((xs.Scene.Mgr.getCurSceneName() !== "SettingScene")) {
                // source line 80, bytecode pc 658
                xs.Scene.Mgr.changeSceneByName("LoginScene", params);
            }
        }
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Cancel:
        // source line 86, bytecode pc 686
        xs.log("登录取消");
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_NoNeed:
        // source line 90, bytecode pc 714
        xs.log("无需登录");
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Timeout:
        // source line 94, bytecode pc 742
        xs.log("登录超时");
        // source line 95, bytecode pc 802
        xs.Views.Mgr.showToast(xs.Tools.String.createString("easy_loginFail_Timeout"));
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Fail:
        // source line 99, bytecode pc 830
        xs.log("登录失败");
        // source line 100, bytecode pc 890
        xs.Views.Mgr.showToast(xs.Tools.String.createString("easy_loginFail"));
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Login_Exception:
        // source line 104, bytecode pc 918
        xs.log("登录异常");
        // source line 105, bytecode pc 978
        xs.Views.Mgr.showToast(xs.Tools.String.createString("easy_loginFail_Exception"));
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Logout_Success:
        // source line 109, bytecode pc 1006
        xs.log("登出成功");
        if ((xs.Scene.Mgr.getCurSceneName() !== "SettingScene")) {
            // source line 112, bytecode pc 1076
            xs.Scene.Mgr.changeSceneByName("LoginScene");
        }
        break;
        case xs.EasySdk.Account.Protocol.Const_Account_Logout_Fail:
        case xs.EasySdk.Account.Protocol.Const_Account_Logout_Exception:
        // source line 118, bytecode pc 1104
        xs.log("登出失败");
        break;
        default:
        // source line 122, bytecode pc 1145
        xs.Views.Mgr.showToast(params.msg);
        break;
    }
}
}));
// source line 129, bytecode pc 232
(xs.EasySdk.Account.setAccountInfo = function(info) {
    // source line 130, bytecode pc 9
    (this.account_info = info);
});
// source line 134, bytecode pc 258
(xs.EasySdk.Account.getAccountInfo = function() {
    // source line 135, bytecode pc 6
    return this.account_info;
});
