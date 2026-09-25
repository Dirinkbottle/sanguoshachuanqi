// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Tools/AccountSys.js:1
// source line 42, bytecode pc 81
(xsc.Tools.AccountSys = {
    isUsingEasySdk: function() {
    // source line 11, bytecode pc 48
    return ((xs.app_account_sys == xsc.Const_App_Account_Sys_EasySdk) || (xs.app_account_sys == xsc.Const_App_Account_Sys_EasyGuestSdk));
},
    isUsingAnySdk: function() {
    // source line 16, bytecode pc 21
    return (xs.app_account_sys == xsc.Const_App_Account_Sys_AnySdk);
},
    isUsingBfSdk: function() {
    // source line 24, bytecode pc 102
    return ((xs.app_account_sys == xsc.Const_App_Account_Sys_Default) || ((xs.app_account_sys == xsc.Const_App_Account_Sys_BfSdk) || ((xs.app_account_sys == xsc.Const_App_Account_Sys_AppStore) || (xs.app_account_sys == xsc.Const_App_Account_Sys_BfSdk_3rdPay))));
},
    isUsing3rdSdk: function() {
    // source line 33, bytecode pc 129
    return ((xs.app_account_sys == xsc.Const_App_Account_Sys_ThirdSdkSet) || ((xs.app_account_sys == xsc.Const_App_Account_Sys_Super3rdSdk_Ios) || ((xs.app_account_sys == xsc.Const_App_Account_Sys_Super3rdSdk_And) || ((xs.app_account_sys == xsc.Const_App_Account_Sys_LoginBySuper3rdSdkAndGuest_PayByGooglePlay) || (xs.app_account_sys == xsc.Const_App_Account_Sys_LoginBySuper3rdSdkAndGuest_PayByAppStore)))));
},
    isUsingGuest: function() {
    // source line 40, bytecode pc 102
    return ((xs.app_account_sys == xsc.Const_App_Account_Sys_BfSdk) || ((xs.app_account_sys == xsc.Const_App_Account_Sys_LoginBySuper3rdSdkAndGuest_PayByGooglePlay) || ((xs.app_account_sys == xsc.Const_App_Account_Sys_LoginBySuper3rdSdkAndGuest_PayByAppStore) || (xs.app_account_sys == xsc.Const_App_Account_Sys_EasyGuestSdk))));
},
    isUsingWanPu: function() {
    if (((xsc.Tools.ProductSys.getArea() == xsc.Const_Area_CN) && xsc.Tools.PaySys.isUsingAppStore())) {
        // source line 46, bytecode pc 75
        return true;
    } else {
        if (((xsc.Tools.ProductSys.getArea() == xsc.Const_Area_TW) && xsc.Tools.PaySys.isUsingEasySdk())) {
            if ((xs.Tools.Jsb.EasySdk.Payment.getPlatformId() == "appstore")) {
                // source line 51, bytecode pc 203
                return true;
            }
        }
    }
    // source line 53, bytecode pc 205
    return false;
}
});
