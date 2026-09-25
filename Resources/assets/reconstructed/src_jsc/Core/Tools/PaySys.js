// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Tools/PaySys.js:1
// source line 42, bytecode pc 81
(xsc.Tools.PaySys = {
    isUsingEasySdk: function() {
    // source line 11, bytecode pc 48
    return ((xs.app_account_sys == xsc.Const_App_Account_Sys_EasySdk) || (xs.app_account_sys == xsc.Const_App_Account_Sys_EasyGuestSdk));
},
    isUsingAppStore: function() {
    // source line 18, bytecode pc 75
    return ((xs.app_account_sys == xsc.Const_App_Account_Sys_AppStore) || ((xs.app_account_sys == xsc.Const_App_Account_Sys_LoginBySuper3rdSdkAndGuest_PayByAppStore) || (xs.app_account_sys == xsc.Const_App_Account_Sys_LoginBySuper3rdSdk_PayByAppStore)));
},
    isUsingAnySdk: function() {
    // source line 23, bytecode pc 21
    return (xs.app_account_sys == xsc.Const_App_Account_Sys_AnySdk);
},
    isUsingAliPay: function() {
    // source line 29, bytecode pc 48
    return ((xs.app_account_sys == xsc.Const_App_Account_Sys_BfSdk) || (xs.app_account_sys == xsc.Const_App_Account_Sys_Default));
},
    isUsing3rdSdk: function() {
    // source line 39, bytecode pc 156
    return ((xs.app_account_sys == xsc.Const_App_Account_Sys_BfSdk_3rdPay) || ((xs.app_account_sys == xsc.Const_App_Account_Sys_ThirdSdkSet) || ((xs.app_account_sys == xsc.Const_App_Account_Sys_BfSdkWithThirdPay) || ((xs.app_account_sys == xsc.Const_App_Account_Sys_Super3rdSdk_Ios) || ((xs.app_account_sys == xsc.Const_App_Account_Sys_Super3rdSdk_And) || (xs.app_account_sys == xsc.Const_App_Account_Sys_LoginBySuper3rdSdkAndGuest_PayByGooglePlay))))));
},
    getAppStoreId: function() {
    var isUsingAppStore;
    // source line 43, bytecode pc 8
    (isUsingAppStore = function() {
    if (xsc.Tools.PaySys.isUsingEasySdk()) {
        if ((xs.Tools.Jsb.EasySdk.Payment.getPlatformId() == "appstore")) {
            // source line 46, bytecode pc 79
            return true;
        }
    }
    // source line 48, bytecode pc 81
    return false;
});
    // source line 50, bytecode pc 53
    xs.assert((this.isUsingAppStore() || isUsingAppStore), "getAppStoreId why");
    if ((xsc.Tools.ProductSys.getArea() == xsc.Const_Area_CN)) {
        // source line 53, bytecode pc 101
        return 975955904;
    } else {
        if ((xsc.Tools.ProductSys.getArea() == xsc.Const_Area_TW)) {
            // source line 56, bytecode pc 154
            return 991360132;
        }
    }
    // source line 59, bytecode pc 177
    xs.error("should use easy");
    // source line 60, bytecode pc 183
    return 975955904;
}
});
