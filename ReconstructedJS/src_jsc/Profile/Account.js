// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/Account.js:1
// source line 8, bytecode pc 20
(xs.Profile.Account = function() {
    // source line 10, bytecode pc 11
    (this.name = "xs.Profile.Account");
    // source line 15, bytecode pc 23
    (this.init = function(json) {
    // source line 20, bytecode pc 40
    (this.m_app_store_version = (xs.parseInt(json.app_store_version) || 9999));
    // source line 22, bytecode pc 60
    (this.m_accountUid = json.account_info.account_uid);
    // source line 24, bytecode pc 90
    xs.log("m_app_store_version:", this.m_app_store_version);
    // source line 25, bytecode pc 120
    xs.log("m_accountUid:", this.m_accountUid);
});
    // source line 29, bytecode pc 35
    (this.isAppStoreVersion = function() {
    if (xsc.Tools.PaySys.isUsingAppStore()) {
        // source line 34, bytecode pc 64
        return (xs.Tools.Jsb.getOriResCode() >= this.m_app_store_version);
    } else {
        if (xsc.Tools.PaySys.isUsingEasySdk()) {
            if ((xs.Tools.Jsb.EasySdk.Payment.getPlatformId() == "appstore")) {
                // source line 39, bytecode pc 181
                return (xs.Tools.Jsb.getOriResCode() >= this.m_app_store_version);
            }
        } else {
            // source line 43, bytecode pc 188
            return false;
        }
    }
});
    // source line 52, bytecode pc 47
    (this.isUseAdmob = function() {
    // source line 53, bytecode pc 12
    return this.isAppStoreVersion();
});
    // source line 56, bytecode pc 59
    (this.getAccountUid = function() {
    // source line 57, bytecode pc 6
    return this.m_accountUid;
});
    // source line 60, bytecode pc 71
    (this.onLoginSuccess = function() {
    if (this.isUseAdmob()) {
        // source line 64, bytecode pc 67
        xs.JsbConnecter.getInstance().invoke("AdmobHelp", "showBanner", "");
    }
});
    // source line 68, bytecode pc 83
    (this.onGetPlayerInfoSuccess = function() {
    if (this.isUseAdmob()) {
        // source line 71, bytecode pc 67
        xs.JsbConnecter.getInstance().invoke("AdmobHelp", "hideBanner", "");
    }
});
});
// source line 80, bytecode pc 67
(xs.g_account = (xs.g_account || new xs.Profile.Account()));
