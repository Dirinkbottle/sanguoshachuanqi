// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/Jsb.js:1
// source line 401, bytecode pc 764
(xs.Tools.Jsb = (xs.Tools.Jsb || {
    getDeviceId: xsc.Tools.Jsb.getDeviceId,
    getDeviceType: xsc.Tools.Jsb.getDeviceType,
    getDeviceVersionCode: xsc.Tools.Jsb.getDeviceVersionCode,
    getDeviceOS: xsc.Tools.Jsb.getDeviceOS,
    getDeviceMobile: xsc.Tools.Jsb.getDeviceMobile,
    getDeviceOSVer: xsc.Tools.Jsb.getDeviceOSVer,
    getDevicePixel: xsc.Tools.Jsb.getDevicePixel,
    getDeviceNetwork: xsc.Tools.Jsb.getDeviceNetwork,
    getDeviceCarrier: xsc.Tools.Jsb.getDeviceCarrier,
    getBuildVersion: function() {
    // source line 26, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("Build", "getBuildVersion", "");
},
    getOriResCode: function() {
    var _res_code;
    // source line 31, bytecode pc 53
    (_res_code = xs.JsbConnecter.getInstance().invoke("Build", "getOriResCode", ""));
    if ((_res_code === "err")) {
        // source line 34, bytecode pc 97
        (_res_code = xs.Tools.Jsb.getBuildVersion());
    }
    if (xs.cfg_update_scene_test_res_code) {
        // source line 38, bytecode pc 140
        return xs.parseInt(xs.cfg_update_scene_test_res_code);
    }
    // source line 41, bytecode pc 168
    return (xs.parseInt(_res_code) || 0);
},
    getPlatform: function() {
    if (!this._cache_platform) {
        // source line 47, bytecode pc 68
        (this._cache_platform = xs.JsbConnecter.getInstance().invoke("Platform", "getBuildTarget", ""));
    }
    // source line 49, bytecode pc 75
    return this._cache_platform;
},
    getChannelId: function() {
    if (!this._cache_channel_id) {
        // source line 55, bytecode pc 68
        (this._cache_channel_id = xs.JsbConnecter.getInstance().invoke("Cfg", "getChannelId", ""));
    }
    // source line 57, bytecode pc 75
    return this._cache_channel_id;
},
    getChannelName: function() {
    if (!this._cache_channel_name) {
        // source line 62, bytecode pc 68
        (this._cache_channel_name = xs.JsbConnecter.getInstance().invoke("Cfg", "getChannelName", ""));
    }
    // source line 64, bytecode pc 75
    return this._cache_channel_name;
},
    getVersionName: function() {
    if (!this._cache_ver_name) {
        // source line 69, bytecode pc 68
        (this._cache_ver_name = xs.JsbConnecter.getInstance().invoke("Cfg", "getVersionName", ""));
    }
    // source line 71, bytecode pc 75
    return this._cache_ver_name;
},
    getVersionCode: function() {
    if (!this._cache_ver_code) {
        // source line 76, bytecode pc 68
        (this._cache_ver_code = xs.JsbConnecter.getInstance().invoke("Cfg", "getVersionCode", ""));
    }
    // source line 78, bytecode pc 75
    return this._cache_ver_code;
},
    getCfgVersion: function() {
    // source line 82, bytecode pc 38
    return xs.Tools.CfgData.getGlobalConf("CfgVersion", "DefaultCfgVersion");
},
    exit: function() {
    // source line 86, bytecode pc 50
    xs.JsbConnecter.getInstance().invoke("App", "exit", "0");
},
    getOpenUDID: function() {
    // source line 90, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("Cfg", "getOpenUDID", "");
},
    getIDFA: function() {
    // source line 94, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("Cfg", "getIDFA", "");
},
    getMacAddress: function() {
    // source line 98, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("Cfg", "getMacAddress", "");
},
    getTKAppKey: function() {
    // source line 101, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("TalkingDataAppCpaHelp", "getAppKey", "");
},
    getBuildType: function() {
    // source line 111, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("Build", "getBuildType", "");
},
    getCocos2dDebugLevel: function() {
    if (!this._cache_Cocos2dDebugLevel) {
        // source line 117, bytecode pc 68
        (this._cache_Cocos2dDebugLevel = xs.JsbConnecter.getInstance().invoke("Build", "getCocos2dDebugLevel", ""));
    }
    // source line 119, bytecode pc 75
    return this._cache_Cocos2dDebugLevel;
},
    getAccountSysCode: function() {
    // source line 124, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("Build", "getAccountSysCode", "");
},
    openMaskTrieFunc: function() {
    if ((xs.use_sensitive_mask && xs.release)) {
        // source line 131, bytecode pc 81
        xs.JsbConnecter.getInstance().invoke("Trie", "setTrie", "20|cfg/sgs_keyword_json.js");
    }
},
    mkdir: function(pathDir) {
    // source line 136, bytecode pc 48
    xs.JsbConnecter.getInstance().invoke("Cfg", "mkdir", pathDir);
},
    BfSdk: {
        login: function(username, pwd) {
    // source line 141, bytecode pc 58
    return xs.JsbConnecter.getInstance().invoke("BfSdk", "login", ((username + "|") + pwd));
}
    },
    Utils: {
        md5file: function(fileFullName) {
    // source line 147, bytecode pc 48
    return xs.JsbConnecter.getInstance().invoke("Utils", "md5file", fileFullName);
}
    },
    ThirdSdk: {
        login: function() {
    // source line 154, bytecode pc 50
    return xs.JsbConnecter.getInstance().invoke("ThirdSdk", "login", "");
},
        isLogined: function() {
    var _ret;
    // source line 158, bytecode pc 53
    (_ret = xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isLogined", ""));
    // source line 159, bytecode pc 80
    xs.log_zj("ThirdSdk.isLogined", _ret);
    // source line 160, bytecode pc 90
    return (_ret == "true");
},
        isSupportFunction: function(nameFunc) {
    // source line 164, bytecode pc 54
    return (xs.JsbConnecter.getInstance().invoke("ThirdSdk", "isSupportFunction", nameFunc) == "true");
},
        thirdSubMitInfo: function(params) {
    // source line 168, bytecode pc 48
    return xs.JsbConnecter.getInstance().invoke("ThirdSdk", "thirdSubMitInfo", params);
},
        invokeLoginFuncByType: function(loginFunType) {
    // source line 172, bytecode pc 48
    return xs.JsbConnecter.getInstance().invoke("ThirdSdk", loginFunType, "");
},
        doThirdAction: function(nameAction) {
    // source line 176, bytecode pc 48
    return xs.JsbConnecter.getInstance().invoke("ThirdSdk", nameAction, "");
}
    },
    EasySdk: {
        _getEasySdkVersion: function(strModuleName) {
    var _ret;
    // source line 183, bytecode pc 51
    (_ret = xs.JsbConnecter.getInstance().invoke("EasySdkMgr", "getModuleVersion", strModuleName));
    // source line 185, bytecode pc 55
    return _ret;
},
        _getEasySdkClassName: function(strModuleName) {
    var _ret;
    // source line 191, bytecode pc 12
    (_ret = ("EasySdk-" + strModuleName));
    // source line 193, bytecode pc 16
    return _ret;
},
        isSupportFunction: function(nameModule, nameFunc) {
    var _ret;
    // source line 199, bytecode pc 62
    (_ret = xs.JsbConnecter.getInstance().invoke(this._getEasySdkClassName(nameModule), "isSupportFunction", nameFunc));
    // source line 201, bytecode pc 72
    return (_ret == "true");
},
        callFunction: function(nameModule, nameFunc, jsonParam) {
    var _jsonParam, _ret;
    // source line 213, bytecode pc 17
    (_jsonParam = (jsonParam || "{}"));
    // source line 217, bytecode pc 90
    (_ret = xs.JsbConnecter.getInstance().invoke(this._getEasySdkClassName(nameModule), "callFunction", ((nameFunc + "|") + _jsonParam)));
    // source line 220, bytecode pc 94
    return _ret;
},
        callFunctionIfSupported: function(nameModule, nameFunc, jsonParam) {
    if (this.isSupportFunction(nameModule, nameFunc)) {
        // source line 230, bytecode pc 67
        return this.callFunction(nameModule, nameFunc, (jsonParam ? jsonParam : "{}"));
    } else {
        // source line 233, bytecode pc 109
        xs.warn("EasySdk - callFunctionIfSupported check failed", ((nameModule + "|") + nameFunc));
    }
},
        Account: {
            getPlatformId: function() {
    var _ret;
    // source line 248, bytecode pc 46
    (_ret = xs.Tools.Jsb.EasySdk.callFunctionIfSupported("Account", "getPlatformId"));
    // source line 249, bytecode pc 73
    xs.log("EasySdk-getPlatformId", _ret);
    // source line 250, bytecode pc 77
    return _ret;
},
            getPlatformIds: function() {
    var _ret;
    // source line 256, bytecode pc 46
    (_ret = xs.Tools.Jsb.EasySdk.callFunctionIfSupported("Account", "getPlatformIds"));
    // source line 257, bytecode pc 73
    xs.log("EasySdk-getPlatformId", _ret);
    // source line 258, bytecode pc 77
    return _ret;
},
            isLogined: function() {
    // source line 262, bytecode pc 49
    return (xs.Tools.Jsb.EasySdk.callFunctionIfSupported("Account", "isLogined") == "true");
},
            login: function(params) {
    // source line 277, bytecode pc 47
    return xs.Tools.Jsb.EasySdk.callFunctionIfSupported("Account", "login", params);
}
        },
        Payment: {
            getPlatformId: function() {
    var _ret;
    // source line 294, bytecode pc 46
    (_ret = xs.Tools.Jsb.EasySdk.callFunctionIfSupported("Payment", "getPlatformId"));
    // source line 295, bytecode pc 73
    xs.log("EasySdk-getPlatformId", _ret);
    // source line 296, bytecode pc 77
    return _ret;
},
            getPlatformIds: function() {
    var _ret;
    // source line 299, bytecode pc 46
    (_ret = xs.Tools.Jsb.EasySdk.callFunctionIfSupported("Payment", "getPlatformIds"));
    // source line 300, bytecode pc 73
    xs.log("EasySdk-getPlatformId", _ret);
    // source line 301, bytecode pc 77
    return _ret;
},
            pay: function(objPayInfo) {
    var _param, _ret;
    // source line 309, bytecode pc 23
    (_param = JSON.stringify(objPayInfo));
    // source line 327, bytecode pc 50
    xs.log(("_param = " + _param));
    // source line 328, bytecode pc 101
    (_ret = xs.Tools.Jsb.EasySdk.callFunctionIfSupported("Payment", "pay", _param));
    // source line 330, bytecode pc 105
    return _ret;
}
        },
        Statistic: {
            getPlatformId: function() {
    var _ret;
    // source line 346, bytecode pc 46
    (_ret = xs.Tools.Jsb.EasySdk.callFunctionIfSupported("Statistic", "getPlatformId"));
    // source line 347, bytecode pc 73
    xs.log("EasySdk-getPlatformId", _ret);
    // source line 348, bytecode pc 77
    return _ret;
},
            event: function(objEventInfo) {
    var _param, _ret;
    // source line 353, bytecode pc 23
    (_param = JSON.stringify(objEventInfo));
    // source line 371, bytecode pc 50
    xs.log(("_param = " + _param));
    // source line 372, bytecode pc 101
    (_ret = xs.Tools.Jsb.EasySdk.callFunctionIfSupported("Statistic", "event", _param));
    // source line 374, bytecode pc 105
    return _ret;
},
            event_pay: function(objEventInfo) {
    var _param, _ret;
    // source line 378, bytecode pc 23
    (_param = JSON.stringify(objEventInfo));
    // source line 396, bytecode pc 50
    xs.log(("_param = " + _param));
    // source line 397, bytecode pc 101
    (_ret = xs.Tools.Jsb.EasySdk.callFunctionIfSupported("Statistic", "event_pay", _param));
    // source line 399, bytecode pc 105
    return _ret;
},
            event_createRole: function(objEventInfo) {
    var _param, _ret;
    // source line 403, bytecode pc 23
    (_param = JSON.stringify(objEventInfo));
    // source line 421, bytecode pc 50
    xs.log(("_param = " + _param));
    // source line 422, bytecode pc 101
    (_ret = xs.Tools.Jsb.EasySdk.callFunctionIfSupported("Statistic", "event_createRole", _param));
    // source line 424, bytecode pc 105
    return _ret;
}
        }
    }
}));
