// Clean-room JavaScript fallback for the removed channel-side JsbConnecter.
// This only supplies local build/device metadata and neutral responses. It does
// not emulate login, payment, analytics, ads, push, sharing, or vendor callbacks.
var xs = (typeof xs !== "undefined" && xs) ? xs : {};

(function() {
    // Preserve the original package/build identity while leaving every
    // removed channel service behind this neutral native boundary.
    var versionName = "9.17.0.94";
    var versionCode = "723";
    var resourceCode = "775";
    var projectCode = "50004";
    var channelId = "120009";
    var channelName = "Main";

    // Network endpoint for this local reconstruction. The original scenes and
    // request payloads still run; only their HTTP destination is changed.
    // On a USB-connected device: adb reverse tcp:18723 tcp:18723
    xs.reconstructionServerHost = "127.0.0.1:18723";

    function getFrameSize() {
        try {
            var size = cc.Director.getInstance().getWinSize();
            return Math.round(size.width) + "|" + Math.round(size.height);
        } catch (e) {
            return "960|640";
        }
    }

    function accountRequest(method, params) {
        // The removed BF SDK used a native callback. Keep the original
        // onCmnSuccess/onCmnFail callback chain, supplying it from local HTTP.
        var action = method === "regis" ? "register" : "login";
        var eventName = action === "register" ? "and_bfsdk_register" : "and_bfsdk_login";
        var separator = params.indexOf("|");
        var username = separator < 0 ? "" : params.substring(0, separator);
        var password = separator < 0 ? "" : params.substring(separator + 1);
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "http://" + xs.reconstructionServerHost + "/auth/" + action, true);
        xhr.setRequestHeader("Content-Type", "application/json");
        xhr.onreadystatechange = function() {
            if (xhr.readyState !== 4) return;
            var response;
            try { response = JSON.parse(xhr.responseText); } catch (ignored) { response = {}; }
            if (xhr.status === 200 && response.result === true) {
                xs.onCmnSuccess(eventName, response.sessionKey || "");
            } else {
                xs.onCmnFail(eventName, response.msg || "本地账号服务暂不可用", String(xhr.status));
            }
        };
        // Do not log, cache or persist the password. Only the localhost
        // account service receives it; a real deployment will require TLS.
        xhr.send(JSON.stringify({ username: username, password: password }));
        return "";
    }

    function invoke(className, methodName, params) {
        if (className === "BfSdk" && (methodName === "login" || methodName === "regis")) {
            return accountRequest(methodName, params);
        }
        if (className === "Build") {
            if (methodName === "getBuildVersion") return resourceCode;
            if (methodName === "getOriResCode") return resourceCode;
            if (methodName === "getBuildType") return "r";
            if (methodName === "getCocos2dDebugLevel") return "0";
            if (methodName === "getUseJsc") return "c";
            // The original Huawei package contains Bianfeng's account SDK;
            // v22 Core/Constant.js identifies account-system code "1" as
            // the BF branch, which includes the original server selector.
            if (methodName === "getAccountSysCode") return "1";
            // Restore the package's SgscqFst_50004 project identity so main.js
            // follows the original UpdateScene path instead of Develop mode.
            if (methodName === "getProjCode") return projectCode;
        }
        if (className === "Platform" && methodName === "getBuildTarget") return "android";
        if (className === "Director" && methodName === "getFrameSize") return getFrameSize();
        if (className === "Cfg") {
            if (methodName === "getChannelId") return channelId;
            if (methodName === "getChannelName") return channelName;
            if (methodName === "getVersionName") return versionName;
            if (methodName === "getVersionCode") return versionCode;
            if (methodName === "getDeviceType") return "android";
            if (methodName === "getDeviceOS") return "Android";
            if (methodName === "getResScaleTag") return "n";
            if (methodName === "getResPath") return "";
            if (methodName === "mkdir") return "false";
        }

        // The original channel SDKs are intentionally absent. Return a stable
        // neutral string because the recovered JS compares native results with
        // string literals such as "true" and "false".
        if (className === "Trie" && methodName === "queryString") return "";
        if (className === "AssetsMgr" && methodName.indexOf("start") === 0) return "false";
        if (className === "ThirdSdk" && methodName === "isSupportFunction") return "false";
        if (className === "EasySdkMgr" && methodName === "isSupportFunction") return "false";
        if (className === "App" && methodName === "exit") return "true";
        return "";
    }

    var singleton = {
        invoke: invoke,
        init: function() { return true; },
        getName: function() { return "JsbConnecter"; },
        getClassTypeInfo: function() { return "JsbConnecter"; },
        setIdleTimerDisabled: function() { return true; }
    };

    xs.JsbConnecter = {
        getInstance: function() { return singleton; },
        init: function() { return singleton.init(); },
        getName: function() { return singleton.getName(); },
        getClassTypeInfo: function() { return singleton.getClassTypeInfo(); },
        setIdleTimerDisabled: function(value) { return singleton.setIdleTimerDisabled(value); }
    };
})();
