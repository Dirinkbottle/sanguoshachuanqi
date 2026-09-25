// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/Statistic.js:1
// source line 301, bytecode pc 303
(xs.Tools.Statistic = (xs.Tools.Statistic || {
    name: "xs.Tools.Statistic",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    pageload_data: {},
    event_once: function(event) {
    if (!this[("_once_" + event)]) {
        // source line 20, bytecode pc 33
        this.event(event);
        // source line 21, bytecode pc 46
        (this[("_once_" + event)] = true);
    }
},
    startLevel: function(params) {
    var _jsonStr;
    // source line 29, bytecode pc 22
    this.log("xs.Tools.Statistic.startLevel ", params);
    // source line 31, bytecode pc 46
    this.log("params typeof", typeof(params));
    if ((typeof(params) == "string")) {
        // source line 36, bytecode pc 109
        xs.Utils.Statistic.getInstance().addAndSend("Umeng_startLevel", params);
        // source line 38, bytecode pc 119
        (_jsonStr = {});
        // source line 39, bytecode pc 131
        (_jsonStr.levelId = params);
        // source line 40, bytecode pc 165
        (_jsonStr.serverId = xs.Profile.GameData.Player.g_serverId);
    } else {
        // source line 44, bytecode pc 189
        this.error("params must be string");
    }
},
    finishLevel: function(params) {
    var _jsonStr;
    // source line 50, bytecode pc 47
    xs.Utils.Statistic.getInstance().addAndSend("Umeng_finishLevel", params);
    // source line 52, bytecode pc 57
    (_jsonStr = {});
    // source line 53, bytecode pc 69
    (_jsonStr.levelId = params);
    // source line 54, bytecode pc 103
    (_jsonStr.serverId = xs.Profile.GameData.Player.g_serverId);
},
    failLevel: function(params) {
    var _jsonStr;
    // source line 60, bytecode pc 22
    this.log("failLevel", params);
    // source line 62, bytecode pc 70
    xs.Utils.Statistic.getInstance().addAndSend("Umeng_failLevel", params);
    // source line 64, bytecode pc 80
    (_jsonStr = {});
    // source line 65, bytecode pc 92
    (_jsonStr.levelId = params);
    // source line 66, bytecode pc 126
    (_jsonStr.serverId = xs.Profile.GameData.Player.g_serverId);
},
    beginLogPageView: function(tag) {
    if (xs.urlPageLoad) {
        // source line 75, bytecode pc 60
        (xs.Tools.Statistic.pageload_data[tag] = new Date().getTime());
        // source line 81, bytecode pc 115
        xs.JsbConnecter.getInstance().invoke("Statistic", "statistic", ("UMENG|beginLogPageView|" + tag));
    }
},
    endLogPageView: function(tag) {
    var _beginTS, _time_offset;
    if (xs.urlPageLoad) {
        // source line 91, bytecode pc 42
        (_beginTS = xs.Tools.Statistic.pageload_data[tag]);
        if (_beginTS) {
            // source line 96, bytecode pc 100
            (_time_offset = (new Date().getTime() - xs.Tools.Statistic.pageload_data[tag]));
        }
        // source line 110, bytecode pc 155
        xs.JsbConnecter.getInstance().invoke("Statistic", "statistic", ("UMENG|endLogPageView|" + tag));
    }
},
    setUserInfo: function(playId, sex, age) {
    var _platform, _params;
    // source line 121, bytecode pc 29
    (_platform = xs.Tools.Jsb.getPlatform());
    // source line 123, bytecode pc 38
    (_params = "");
    // source line 124, bytecode pc 55
    (_params = (_params + (playId + "|")));
    // source line 125, bytecode pc 72
    (_params = (_params + (sex + "|")));
    // source line 126, bytecode pc 89
    (_params = (_params + (age + "|")));
    // source line 127, bytecode pc 100
    (_params = (_params + _platform));
    // source line 130, bytecode pc 148
    xs.Utils.Statistic.getInstance().addAndSend("Umeng_setUserInfo", _params);
},
    setUserLevel: function(level) {
    var _params;
    // source line 139, bytecode pc 12
    (_params = ("" + level));
    // source line 142, bytecode pc 60
    xs.Utils.Statistic.getInstance().addAndSend("Umeng_setUserLevel", _params);
},
    buy: function(itemId, itemNum, itemPrice) {
    var _params;
    // source line 153, bytecode pc 8
    (_params = "");
    // source line 154, bytecode pc 25
    (_params = (_params + (itemId + "|")));
    // source line 155, bytecode pc 42
    (_params = (_params + (itemNum + "|")));
    // source line 156, bytecode pc 53
    (_params = (_params + itemPrice));
    // source line 159, bytecode pc 101
    xs.Utils.Statistic.getInstance().addAndSend("Umeng_buy", _params);
},
    pay: function(cashNum, sourceID, coinNum) {
    var _params;
    // source line 164, bytecode pc 8
    (_params = "");
    // source line 165, bytecode pc 25
    (_params = (_params + (cashNum + "|")));
    // source line 166, bytecode pc 42
    (_params = (_params + (sourceID + "|")));
    // source line 167, bytecode pc 53
    (_params = (_params + coinNum));
    // source line 168, bytecode pc 101
    xs.Utils.Statistic.getInstance().addAndSend("Umeng_pay", _params);
},
    event: function(eventID, label) {
    var _eventID;
    // source line 173, bytecode pc 17
    (_eventID = (eventID || "default_eventID"));
},
    event_party: function(type, id) {
    // source line 192, bytecode pc 26
    this.event(("party_" + type), id);
},
    event_enter: function(event_enter) {
    // source line 196, bytecode pc 22
    this.event(("enter_" + event_enter));
},
    event_forNewPlayerFight: function(idx) {
    var _event;
    // source line 201, bytecode pc 12
    (_event = ("npf_" + idx));
    // source line 202, bytecode pc 29
    this.event(_event);
},
    event_forNewPlayerScene: function(idx) {
    var _event;
    // source line 207, bytecode pc 12
    (_event = ("nps_" + idx));
    // source line 208, bytecode pc 29
    this.event(_event);
},
    reportLog: function(strErr) {
    // source line 214, bytecode pc 48
    xs.JsbConnecter.getInstance().invoke("Statistic", "reportLog", strErr);
},
    trackBugEvent: function(eventID, label) {
    var _label, _params;
    // source line 225, bytecode pc 17
    (_label = (label || ""));
    // source line 227, bytecode pc 26
    (_params = "");
    // source line 228, bytecode pc 43
    (_params = (_params + (eventID + "|")));
    // source line 229, bytecode pc 54
    (_params = (_params + _label));
},
    createStatisticParam11: function() {
    var _param;
    if (this._cache_statisticParam) {
        // source line 240, bytecode pc 17
        return this._cache_statisticParam;
    }
    // source line 277, bytecode pc 480
    (_param = {
    deviceId: xs.Tools.Jsb.getDeviceId(),
    deviceType: xs.Tools.Jsb.getDeviceType(),
    deviceOS: xs.Tools.Jsb.getDeviceOS(),
    deviceMobile: xs.Tools.Jsb.getDeviceMobile(),
    deviceOsVer: xs.Tools.Jsb.getDeviceOSVer(),
    devicePixel: xs.Tools.Jsb.getDevicePixel(),
    deviceNetwork: xs.Tools.Jsb.getDeviceNetwork(),
    deviceCarrier: xs.Tools.Jsb.getDeviceCarrier(),
    ver_game: xs.resVersion,
    ver_code: xs.Tools.Jsb.getVersionCode(),
    ver_name: xs.Tools.Jsb.getVersionName(),
    platform: xs.Tools.Jsb.getPlatform(),
    channelName: xs.Tools.Jsb.getChannelId(),
    userType: (xs.Profile.GameData.Player.g_serverId ? xs.Profile.GameData.Player.g_serverId : 0)
});
    // source line 279, bytecode pc 494
    (_param.test = "AT&T-TEST");
    // source line 280, bytecode pc 535
    (_param.test_cn = xs.Tools.String.createString("auto_name_231"));
    // source line 283, bytecode pc 545
    (this._cache_statisticParam = _param);
    // source line 285, bytecode pc 575
    xs.log_cmn("this._cache_statisticParam is ", this._cache_statisticParam);
    // source line 287, bytecode pc 582
    return this._cache_statisticParam;
},
    getPlayerOnlineTime: function() {
    var _data;
    // source line 291, bytecode pc 35
    (_data = xs.Utils.LocalStore.getItem("anti-addiction"));
    if ((_data == "")) {
        // source line 293, bytecode pc 51
        return 0;
    } else {
        // source line 295, bytecode pc 80
        (_data = JSON.parse(_data));
        // source line 296, bytecode pc 89
        return _data.onlineTime;
    }
},
    createStatisticParam: function() {
    var _param;
    // source line 319, bytecode pc 479
    (_param = {
    deviceId: xs.Tools.Jsb.getDeviceId(),
    deviceType: xs.Tools.Jsb.getDeviceType(),
    deviceOS: xs.Tools.Jsb.getDeviceOS(),
    deviceMobile: xs.Tools.Jsb.getDeviceMobile(),
    deviceOsVer: xs.Tools.Jsb.getDeviceOSVer(),
    devicePixel: xs.Tools.Jsb.getDevicePixel(),
    deviceNetwork: xs.Tools.Jsb.getDeviceNetwork(),
    deviceCarrier: xs.Tools.Jsb.getDeviceCarrier(),
    ver_game: xs.resVersion,
    ver_code: xs.Tools.Jsb.getVersionCode(),
    ver_name: xs.Tools.Jsb.getVersionName(),
    platform: xs.Tools.Jsb.getPlatform(),
    channelName: xs.Tools.Jsb.getChannelId(),
    userType: (xs.Profile.GameData.Player.g_serverId ? xs.Profile.GameData.Player.g_serverId : 0),
    onlinetime: this.getPlayerOnlineTime()
});
    // source line 324, bytecode pc 489
    (this._cache_statisticParam = _param);
    // source line 325, bytecode pc 496
    return this._cache_statisticParam;
}
}));
// source line 331, bytecode pc 329
(xs.Tools.Statistic.bfSdkLoginStartEvent = function() {
    // source line 332, bytecode pc 32
    xs.Tools.Statistic.event("1700008");
    // source line 333, bytecode pc 65
    xs.Tools.Statistic.event("1800008");
});
// source line 337, bytecode pc 355
(xs.Tools.Statistic.bfSdkLoginSuccessEvent = function() {
    // source line 338, bytecode pc 32
    xs.Tools.Statistic.event("1700009");
    // source line 339, bytecode pc 65
    xs.Tools.Statistic.event("1800009");
});
// source line 342, bytecode pc 381
(xs.Tools.Statistic.bfSdkLoginFailEvent = function() {
    // source line 343, bytecode pc 32
    xs.Tools.Statistic.event("1700010");
    // source line 344, bytecode pc 65
    xs.Tools.Statistic.event("1800010");
});
// source line 347, bytecode pc 407
(xs.Tools.Statistic.bfSdkInitFailEvent = function() {
    // source line 348, bytecode pc 32
    xs.Tools.Statistic.event("bfsdk_init_fail");
});
// source line 351, bytecode pc 433
(xs.Tools.Statistic.bfSdkLoginFail_ErrCodeEvent = function(errCode) {
    // source line 352, bytecode pc 30
    xs.Tools.Statistic.event(errCode);
});
// source line 356, bytecode pc 459
(xs.Tools.Statistic.anySdk_ErrCodeEvent = function(tag, code, msg) {
    var sendMsg;
    // source line 358, bytecode pc 16
    (sendMsg = ((tag + "_") + code));
    // source line 359, bytecode pc 47
    xs.Tools.Statistic.event(sendMsg);
    if (msg) {
        // source line 362, bytecode pc 72
        (sendMsg = ((sendMsg + "_") + msg));
        // source line 363, bytecode pc 103
        xs.Tools.Statistic.event(sendMsg);
    }
});
// source line 369, bytecode pc 485
(xs.Tools.Statistic.visitorLoginStartEvent = function() {
    // source line 370, bytecode pc 32
    xs.Tools.Statistic.event("1700008");
    // source line 371, bytecode pc 65
    xs.Tools.Statistic.event("1900008");
});
// source line 374, bytecode pc 511
(xs.Tools.Statistic.visitorLoginSuccessEvent = function() {
    // source line 375, bytecode pc 32
    xs.Tools.Statistic.event("1700009");
    // source line 376, bytecode pc 65
    xs.Tools.Statistic.event("1900009");
});
// source line 379, bytecode pc 537
(xs.Tools.Statistic.visitorLoginFailEvent = function() {
    // source line 380, bytecode pc 32
    xs.Tools.Statistic.event("1700010");
    // source line 381, bytecode pc 65
    xs.Tools.Statistic.event("1900010");
});
// source line 385, bytecode pc 563
(xs.Tools.Statistic.bfSdkLoginEnterEvent = function() {
    if (!this.bfSdkLoginEnterEvent_once) {
        // source line 387, bytecode pc 44
        xs.Tools.Statistic.event("bfsdk_login_begin");
        // source line 388, bytecode pc 52
        (this.bfSdkLoginEnterEvent_once = true);
    }
});
// source line 392, bytecode pc 589
(xs.Tools.Statistic.bfSdkLoginEnterSuccessEvent = function() {
    if (!this.bfSdkLoginEnterSuccessEvent_once) {
        // source line 394, bytecode pc 44
        xs.Tools.Statistic.event("bfsdk_login_success");
        // source line 395, bytecode pc 52
        (this.bfSdkLoginEnterSuccessEvent_once = true);
    }
});
// source line 400, bytecode pc 615
(xs.Tools.Statistic.anySdkLoginEnterEvent = function() {
    if (!this.anySdkLoginEnterEvent_once) {
        // source line 402, bytecode pc 44
        xs.Tools.Statistic.event("anysdk_login_begin");
        // source line 403, bytecode pc 52
        (this.anySdkLoginEnterEvent_once = true);
    }
});
// source line 407, bytecode pc 641
(xs.Tools.Statistic.anySdkLoginEnterSuccessEvent = function() {
    if (!this.anySdkLoginEnterSuccessEvent_once) {
        // source line 409, bytecode pc 44
        xs.Tools.Statistic.event("anysdk_login_success");
        // source line 410, bytecode pc 52
        (this.anySdkLoginEnterSuccessEvent_once = true);
    }
});
// source line 415, bytecode pc 667
(xs.Tools.Statistic.thirdSdkLoginEnterEvent = function() {
    if (!this.thirdSdkLoginEnterEvent_once) {
        // source line 417, bytecode pc 44
        xs.Tools.Statistic.event("thirdsdk_login_begin");
        // source line 418, bytecode pc 52
        (this.thirdSdkLoginEnterEvent_once = true);
    }
});
// source line 422, bytecode pc 693
(xs.Tools.Statistic.thirdSdkLoginEnterSuccessEvent = function() {
    if (!this.thirdSdkLoginEnterSuccessEvent_once) {
        // source line 424, bytecode pc 44
        xs.Tools.Statistic.event("thirdsdk_login_success");
        // source line 425, bytecode pc 52
        (this.thirdSdkLoginEnterSuccessEvent_once = true);
    }
});
// source line 430, bytecode pc 719
(xs.Tools.Statistic.bfSdkGetServerListBeginEvent = function() {
    if (!this.bfSdkGetServerListBeginEvent_once) {
        // source line 432, bytecode pc 44
        xs.Tools.Statistic.event("bfsdk_serverlist_begin");
        // source line 433, bytecode pc 52
        (this.bfSdkGetServerListBeginEvent_once = true);
    }
});
// source line 437, bytecode pc 745
(xs.Tools.Statistic.bfSdkGetServerListSucessEvent = function() {
    if (!this.bfSdkGetServerListSucessEvent_once) {
        // source line 439, bytecode pc 44
        xs.Tools.Statistic.event("bfsdk_serverlist_success");
        // source line 440, bytecode pc 52
        (this.bfSdkGetServerListSucessEvent_once = true);
    }
});
// source line 445, bytecode pc 771
(xs.Tools.Statistic.anySdkGetServerListBeginEvent = function() {
    if (!this.anySdkGetServerListBeginEvent_once) {
        // source line 447, bytecode pc 44
        xs.Tools.Statistic.event("anysdk_serverlist_begin");
        // source line 448, bytecode pc 52
        (this.anySdkGetServerListBeginEvent_once = true);
    }
});
// source line 452, bytecode pc 797
(xs.Tools.Statistic.anySdkGetServerListSucessEvent = function() {
    if (!this.anySdkGetServerListSucessEvent_once) {
        // source line 454, bytecode pc 44
        xs.Tools.Statistic.event("anysdk_serverlist_success");
        // source line 455, bytecode pc 52
        (this.anySdkGetServerListSucessEvent_once = true);
    }
});
// source line 460, bytecode pc 823
(xs.Tools.Statistic.thirdSdkGetServerListBeginEvent = function() {
    if (!this.thirdSdkGetServerListBeginEvent_once) {
        // source line 462, bytecode pc 44
        xs.Tools.Statistic.event("thirdsdk_serverlist_begin");
        // source line 463, bytecode pc 52
        (this.thirdSdkGetServerListBeginEvent_once = true);
    }
});
// source line 467, bytecode pc 849
(xs.Tools.Statistic.thirdSdkGetServerListSucessEvent = function() {
    if (!this.thirdSdkGetServerListSucessEvent_once) {
        // source line 469, bytecode pc 44
        xs.Tools.Statistic.event("thirdsdk_serverlist_success");
        // source line 470, bytecode pc 52
        (this.thirdSdkGetServerListSucessEvent_once = true);
    }
});
// source line 475, bytecode pc 875
(xs.Tools.Statistic.ClimbLadderStartCopper = function() {
    // source line 476, bytecode pc 32
    xs.Tools.Statistic.event("ClimbLadderStartCopper");
});
// source line 478, bytecode pc 901
(xs.Tools.Statistic.ClimbLadderStartSliver = function() {
    // source line 479, bytecode pc 32
    xs.Tools.Statistic.event("ClimbLadderStartSliver");
});
// source line 481, bytecode pc 927
(xs.Tools.Statistic.ClimbLadderStartGold = function() {
    // source line 482, bytecode pc 32
    xs.Tools.Statistic.event("ClimbLadderStartGold");
});
// source line 484, bytecode pc 953
(xs.Tools.Statistic.ClimbLadderStartGod = function() {
    // source line 485, bytecode pc 32
    xs.Tools.Statistic.event("ClimbLadderStartGod");
});
// source line 490, bytecode pc 979
(xs.Tools.Statistic.UnionDonationEvent = function(donateId) {
    var strParam;
    // source line 491, bytecode pc 12
    (strParam = ("UnionDonation_" + donateId));
    // source line 493, bytecode pc 43
    xs.Tools.Statistic.event(strParam);
});
// source line 497, bytecode pc 1005
(xs.Tools.Statistic.UnionApplyEvent = function() {
    // source line 499, bytecode pc 32
    xs.Tools.Statistic.event("UnionApply");
});
