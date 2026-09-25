// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/AnySdk/AnySdkHelp_js.js:1
// source line 217, bytecode pc 222
(xs.AnySdk.AnySdkHelp_js = (xs.AnySdk.AnySdkHelp_js || {
    loadAllPlugin: function() {
    var _cppVersion, appKey, appSecret, privateKey, oauthLoginServer, key, iap_plugin;
    // source line 10, bytecode pc 7
    (this._initState = false);
    // source line 11, bytecode pc 35
    (this.agent = anysdk.AgentManager.getInstance());
    // source line 15, bytecode pc 89
    (_cppVersion = xs.JsbConnecter.getInstance().invoke("Build", "getBuildVersion", "null"));
    if ((_cppVersion <= 290)) {
        if (((xsc.app_indentify == xsc.Const_Proj_Code_Develop) || ((xsc.app_indentify == xsc.Const_Proj_Code_TestOnline) || ((xsc.app_indentify == xsc.Const_Proj_Code_226_TestOnline) || (xsc.app_indentify == xsc.Const_Proj_Code_226_TW_TestOnline))))) {
            // source line 23, bytecode pc 233
            (appKey = "BFB23E85-8175-B8A8-AFF4-F216C3CAEE04");
            // source line 24, bytecode pc 242
            (appSecret = "c414b8fda892f337232ed6147aaefd38");
            // source line 25, bytecode pc 251
            (privateKey = "218A31EBFBA5DF711A84DE325FFC9958");
            // source line 26, bytecode pc 260
            (oauthLoginServer = "http://10.225.254.113/test/sanguosha_account/?do=anysdkAccount.index");
        } else {
            // source line 30, bytecode pc 274
            (appKey = "C45E40BD-EB2B-3346-4A79-1F6CA8CE252D");
            // source line 31, bytecode pc 283
            (appSecret = "aae3fd80073bda5c6d6ce9a409030a81");
            // source line 32, bytecode pc 292
            (privateKey = "87676FD3CB93465AF8AA993E70B60DF6");
            // source line 33, bytecode pc 301
            (oauthLoginServer = "http://cqzx.sanguosha.com/sanguosha_account/?do=anysdkAccount.index");
        }
        // source line 36, bytecode pc 335
        this.agent.init(appKey, appSecret, privateKey, oauthLoginServer);
        // source line 37, bytecode pc 353
        this.agent.loadALLPlugin();
    }
    // source line 40, bytecode pc 377
    (this.user_plugin = this.agent.getUserPlugin());
    // source line 41, bytecode pc 401
    (this.iap_plugin = this.agent.getIAPPlugin());
    // source line 49, bytecode pc 456
    this.user_plugin.setActionListener(xs.AnySdk.AnySdkCallback.onUserPluginCallBack, xs.AnySdk.AnySdkCallback);
    for (var key in this.iap_plugin) {
        if (!(this.iap_plugin.hasOwnProperty(key))) continue;
        // source line 54, bytecode pc 515
        (iap_plugin = this.iap_plugin[key]);
        // source line 55, bytecode pc 567
        iap_plugin.setResultListener(xs.AnySdk.AnySdkCallback.onPayResult, xs.AnySdk.AnySdkCallback);
        // source line 58, bytecode pc 594
        iap_plugin.setDebugMode(!xs.release);
    }
    // source line 62, bytecode pc 632
    this.user_plugin.setDebugMode(!xs.release);
},
    unloadPlugins: function() {
    // source line 69, bytecode pc 17
    this.user_plugin.unloadPlugins();
},
    getChannelId: function() {
    // source line 74, bytecode pc 17
    return this.agent.getChannelId();
},
    getInitState: function() {
    if ((this.getChannelId() == "000286")) {
        // source line 79, bytecode pc 45
        xs.log("set jinli loginstate is true");
        // source line 80, bytecode pc 47
        return true;
    }
    // source line 82, bytecode pc 54
    return this._initState;
},
    setInitState: function(state) {
    // source line 86, bytecode pc 22
    xs.log("设置init = true");
    // source line 87, bytecode pc 32
    (this._initState = state);
},
    login: function() {
    // source line 92, bytecode pc 29
    xs.log(("初始化状态 = " + this._initState));
    if (this.getInitState()) {
        // source line 95, bytecode pc 73
        xs.Views.Mgr.displayLoadingLayer();
        if ((this.specialLogin() == false)) {
            // source line 100, bytecode pc 110
            this.user_plugin.login();
        }
    } else {
        // source line 104, bytecode pc 138
        xs.warn("anysdk,login before init success");
    }
},
    logout: function() {
    if (this.user_plugin.isFunctionSupported("logout")) {
        // source line 111, bytecode pc 51
        this.user_plugin.callFuncWithParam("logout");
    }
},
    isLogined: function() {
    // source line 117, bytecode pc 17
    return this.user_plugin.isLogined();
},
    isFunctionSupported: function(funName) {
    // source line 122, bytecode pc 21
    return this.user_plugin.isFunctionSupported(funName);
},
    destroy: function() {
    if (this.user_plugin.isFunctionSupported("destroy")) {
        // source line 128, bytecode pc 51
        this.user_plugin.callFuncWithParam("destroy");
    }
},
    showToolBar: function() {
    var param1;
    if (this.user_plugin.isFunctionSupported("showToolBar")) {
        // source line 135, bytecode pc 54
        (param1 = anysdk.PluginParam.create(1));
        // source line 136, bytecode pc 82
        this.user_plugin.callFuncWithParam("showToolBar", param1);
    }
},
    hideToolBar: function() {
    if (this.user_plugin.isFunctionSupported("hideToolBar")) {
        // source line 143, bytecode pc 51
        this.user_plugin.callFuncWithParam("hideToolBar");
    }
},
    accountSwitch: function() {
    if (this.user_plugin.isFunctionSupported("accountSwitch")) {
        // source line 150, bytecode pc 51
        this.user_plugin.callFuncWithParam("accountSwitch");
    }
},
    exit: function() {
    if (this.user_plugin.isFunctionSupported("exit")) {
        // source line 157, bytecode pc 51
        this.user_plugin.callFuncWithParam("exit");
    }
},
    submitLoginGameRole: function(roleId, roleName, roleLevel, zoneId, zoneName, dataType, ext) {
    var userInfo, data;
    if (this.user_plugin.isFunctionSupported("submitLoginGameRole")) {
        // source line 166, bytecode pc 37
        (userInfo = {});
        // source line 167, bytecode pc 55
        (userInfo.roleId = ("" + roleId));
        // source line 168, bytecode pc 73
        (userInfo.roleName = ("" + roleName));
        // source line 169, bytecode pc 91
        (userInfo.roleLevel = ("" + roleLevel));
        // source line 170, bytecode pc 109
        (userInfo.zoneId = ("" + zoneId));
        // source line 171, bytecode pc 127
        (userInfo.zoneName = ("" + zoneName));
        // source line 172, bytecode pc 145
        (userInfo.dataType = ("" + dataType));
        // source line 173, bytecode pc 163
        (userInfo.ext = ("" + ext));
        // source line 174, bytecode pc 192
        (data = anysdk.PluginParam.create(userInfo));
        // source line 175, bytecode pc 220
        this.user_plugin.callFuncWithParam("submitLoginGameRole", data);
    }
},
    pay: function(Product_Id, Product_Name, Product_Price, Product_Count, Role_Id, Role_Name, Role_Grade, Role_Balance, Server_Id, EXT) {
    var info, p, iap_plusgin;
    // source line 196, bytecode pc 149
    (info = {
    Product_Id: ("" + Product_Id),
    Product_Name: ("" + Product_Name),
    Product_Price: ("" + Product_Price),
    Product_Count: ("" + Product_Count),
    Role_Id: ("" + Role_Id),
    Role_Name: ("" + Role_Name),
    Role_Grade: ("" + Role_Grade),
    Role_Balance: ("" + Role_Balance),
    Server_Id: ("" + Server_Id),
    EXT: ("" + EXT)
});
    for (var p in this.iap_plugin) {
        if (!(this.iap_plugin.hasOwnProperty(p))) continue;
        // source line 201, bytecode pc 208
        (iap_plusgin = this.iap_plugin[p]);
        // source line 203, bytecode pc 231
        xs.log("显示loadingLayer");
        // source line 204, bytecode pc 258
        xs.Views.Mgr.displayLoadingLayer_ext();
        // source line 206, bytecode pc 277
        iap_plusgin.payForProduct(info);
        // source line 207, bytecode pc 300
        xs.log("发起支付");
    }
},
    resetPayState: function() {
    // source line 213, bytecode pc 21
    anysdk.ProtocolIAP.resetPayState();
},
    specialLogin: function() {
    if ((this.getChannelId() == "120000")) {
        // source line 223, bytecode pc 24
        return true;
    }
    // source line 225, bytecode pc 26
    return false;
}
}));
