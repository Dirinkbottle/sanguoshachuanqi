// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Mgr.js:1
// source line 33, bytecode pc 259
(xs.Profile.GameData.ArrInstance = [
    "Skills",
    "Generals",
    "Atlas",
    "Player",
    "Combat",
    "Equipments",
    "EquipmentPieces",
    "GeneralSouls",
    "Team",
    "Items",
    "Map",
    "ToastInfo",
    "CardShowData",
    "Fate",
    "GoddessFate",
    "LadderInfo",
    "SkillPieces",
    "Hint",
    "Union",
    "Buddy",
    "UnionWar",
    "Gems",
    "MagicalEqus",
    "Goddess",
    "MeridianTops",
    "EvolutionInfos"
]);
// source line 287, bytecode pc 518
(xs.Profile.GameData.Mgr = cc.Class.extend({
    name: "xs.Profile.GameData.Mgr",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    _md5_player_data: "",
    init: function(play_id) {
    var _isNotify, _paly_id_anySDK, _init_data, i, _temp, _class_name;
    // source line 47, bytecode pc 11
    (this.play_id = "");
    // source line 49, bytecode pc 34
    this.assert(play_id, "play_id is error");
    // source line 50, bytecode pc 51
    this.setPlayId(play_id);
    // source line 53, bytecode pc 56
    (_isNotify = false);
    // source line 54, bytecode pc 85
    ((play_id == "default") ? (_isNotify = true) : "");
    // source line 55, bytecode pc 122
    (this.dataRef = xs.Profile.GameData.create(_isNotify));
    // source line 61, bytecode pc 148
    this.dump("data reference", this.dataRef);
    // source line 65, bytecode pc 186
    (_paly_id_anySDK = (this.getPlayId() + new Date().getTime()));
    // source line 68, bytecode pc 215
    (_init_data = { dataRef: this.dataRef, play_id: _paly_id_anySDK });
    // source line 71, bytecode pc 238
    this.dump("_init_data", _init_data);
    // source line 73, bytecode pc 243
    (i = 0);
    while ((i < xs.Profile.GameData.ArrInstance.length)) {
        // source line 74, bytecode pc 273
        (_temp = xs.Profile.GameData.ArrInstance);
        // source line 75, bytecode pc 284
        (_class_name = _temp[i]);
        // source line 76, bytecode pc 324
        (this[_class_name] = xs.Profile.GameData[_class_name].create(_init_data));
        // source line 73, bytecode pc 338
        (i = (+i + 1));
    }
    // source line 79, bytecode pc 376
    return true;
},
    getDataRef: function() {
    // source line 83, bytecode pc 6
    return this.dataRef;
},
    loadJson: function(other_player_data) {
    var _md5_str;
    if ((!xs.Utils.isEmpty(other_player_data) && (this.getPlayId() != "default"))) {
        // source line 89, bytecode pc 78
        (_md5_str = JSON.stringify(other_player_data));
        if ((_md5_str != this._md5_player_data)) {
            // source line 91, bytecode pc 103
            (this._md5_player_data = _md5_str);
            // source line 92, bytecode pc 120
            this.updateRespDataAndClear(other_player_data);
        }
    }
},
    onClearCacheAll_InFunc: function() {
    var _temp, i, _class_name;
    // source line 98, bytecode pc 23
    (_temp = xs.Profile.GameData.ArrInstance);
    // source line 99, bytecode pc 28
    (i = 0);
    while ((i < xs.Profile.GameData.ArrInstance.length)) {
        // source line 100, bytecode pc 45
        (_class_name = _temp[i]);
        if (this[_class_name].onClearCache_InFunc()) {
            // source line 102, bytecode pc 83
            this[_class_name].onClearCache_InFunc();
        }
        // source line 99, bytecode pc 97
        (i = (+i + 1));
    }
},
    setPlayId: function(play_id) {
    // source line 108, bytecode pc 9
    (this.play_id = play_id);
},
    getPlayId: function() {
    // source line 112, bytecode pc 6
    return this.play_id;
},
    _getPlayIdString: function() {
    // source line 116, bytecode pc 27
    return (this.play_id ? this.play_id : "default");
},
    init_Login: function(jsonObj) {
    var timeNow, mJson, mChanelId, i;
    // source line 125, bytecode pc 25
    (xs.isAdult = (jsonObj.isAdult || false));
    // source line 127, bytecode pc 51
    (xs.isMobile = (jsonObj.isMobile || false));
    // source line 130, bytecode pc 77
    (xs.isVersionForPublish = (jsonObj.isShowBanShu || true));
    if (jsonObj.is_use_keywords) {
        // source line 134, bytecode pc 117
        xs.Tools.Jsb.openMaskTrieFunc();
    }
    // source line 145, bytecode pc 144
    xs.Profile.UserCfg.getHulaoBattleHintDayInfor();
    // source line 148, bytecode pc 171
    xs.Tools.Net.requestGeTuiSave();
    // source line 151, bytecode pc 198
    xs.Tools.Net.requestCheckWanPuActive();
    // source line 155, bytecode pc 236
    xs.Models.ChatMessageManager.getInstance().removeAllQueue();
    // source line 159, bytecode pc 263
    this.Map.update(jsonObj.map_info);
    // source line 161, bytecode pc 290
    this.ToastInfo.update(jsonObj.wine_info);
    // source line 164, bytecode pc 337
    xs.Profile.GameData.AdInfo.getInstance().update(jsonObj);
    // source line 168, bytecode pc 368
    (timeNow = Date.parse(new Date()));
    // source line 169, bytecode pc 435
    xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().setPlayerLastLoginTime_Local((timeNow / 1000));
    // source line 172, bytecode pc 471
    xs.Profile.UserCfg.setAuth(jsonObj.user_auth);
    // source line 174, bytecode pc 514
    xs.dump(" UserLoginInfo  user_auth", { user_auth: jsonObj.user_auth });
    if (xs.g_account.isAppStoreVersion()) {
        // source line 182, bytecode pc 552
        (xs.isShowAmt = false);
        // source line 183, bytecode pc 564
        (xs.isShowCDKey = false);
    } else {
        if ((jsonObj.isShowAmt != null)) {
            // source line 193, bytecode pc 603
            (xs.isShowAmt = jsonObj.isShowAmt);
        }
        if ((jsonObj.isShowCDKey != null)) {
            // source line 197, bytecode pc 637
            (xs.isShowCDKey = jsonObj.isShowCDKey);
        }
    }
    if ((jsonObj.server_open != null)) {
        // source line 201, bytecode pc 671
        (xs.server_open = jsonObj.server_open);
    }
    if ((jsonObj.isShowGem != null)) {
        // source line 205, bytecode pc 705
        (xs.isShowGem = jsonObj.isShowGem);
    }
    if ((jsonObj.isShowMagic != null)) {
        // source line 209, bytecode pc 739
        (xs.isShowMagic = jsonObj.isShowMagic);
    }
    if ((jsonObj.maxTeamNum != null)) {
        // source line 213, bytecode pc 773
        (xs.maxTeamNum = jsonObj.maxTeamNum);
    }
    if ((jsonObj.isShowUnionWar != null)) {
        // source line 217, bytecode pc 807
        (xs.isShowUnionWar = jsonObj.isShowUnionWar);
    }
    if ((jsonObj.festivalType != null)) {
        // source line 221, bytecode pc 841
        (xs.festivalType = jsonObj.festivalType);
    }
    if ((jsonObj.rechargeRate != null)) {
        // source line 225, bytecode pc 875
        (xs.rechargeRate = jsonObj.rechargeRate);
    }
    // source line 228, bytecode pc 887
    (xs.customerServiceConf = true);
    if ((jsonObj.customerServiceShowConf != null)) {
        // source line 232, bytecode pc 914
        (mJson = jsonObj.customerServiceShowConf);
        // source line 234, bytecode pc 948
        xs.log_gpf("kefu", xsc.app_channel);
        // source line 235, bytecode pc 962
        (mChanelId = xsc.app_channel);
        // source line 237, bytecode pc 967
        (i = 0);
        while ((i < mJson.length)) {
            if ((mJson[i] == mChanelId)) {
                // source line 239, bytecode pc 1001
                (xs.customerServiceConf = false);
                break;
            }
            // source line 237, bytecode pc 1020
            (i = (+i + 1));
        }
    }
},
    updateRespDataAndClear: function(jsonResp) {
    // source line 256, bytecode pc 12
    this.onClearCacheAll_InFunc();
    // source line 257, bytecode pc 34
    return this.dataRef.updateRespData(jsonResp);
},
    updateRespData: function(jsonResp) {
    // source line 262, bytecode pc 21
    return this.dataRef.updateRespData(jsonResp);
},
    getBroadCastUrl: function() {
    // source line 269, bytecode pc 5
    return "http://112.124.4.71:8091/puzzle_android_test/puzzle_online/index.php?do=broadcast&id=13";
},
    getHelpUrl: function() {
    // source line 274, bytecode pc 5
    return "http://112.124.4.71:8091/sanguosha_testonline/view/help/1.htm";
},
    getDealUrl: function() {
    // source line 278, bytecode pc 5
    return "http://app.bianfeng.com/privacy.html";
},
    getFeedbackBugUrl: function() {
    // source line 283, bytecode pc 5
    return "http://112.124.4.71:8091/sanguosha_testonline/view/help/2.htm";
},
    getCustomerServiceUrl: function() {
    // source line 288, bytecode pc 5
    return "http://112.124.4.71:8091/sanguosha_testonline/view/help/3.htm";
}
}));
// source line 295, bytecode pc 549
(xs.Profile.GameData.Mgr.getInstance = function(play_id, other_player_data) {
    var _instance_key, data_mgr;
    // source line 296, bytecode pc 83
    (xs.Utils.isSet(xs.Profile.GameData.Mgr._instance) || (xs.Profile.GameData.Mgr._instance = []));
    if (!((!play_id && !other_player_data) || (play_id && other_player_data))) {
        // source line 299, bytecode pc 140
        this.error("the play_id ^ the play data is false!!!!");
    }
    // source line 301, bytecode pc 158
    (play_id = (play_id || "default"));
    // source line 302, bytecode pc 165
    (_instance_key = play_id);
    if (xs.Profile.GameData.Mgr._instance[_instance_key]) {
        // source line 304, bytecode pc 244
        xs.Profile.GameData.Mgr._instance[_instance_key].loadJson(other_player_data);
        // source line 305, bytecode pc 274
        return xs.Profile.GameData.Mgr._instance[_instance_key];
    }
    // source line 308, bytecode pc 303
    (data_mgr = new xs.Profile.GameData.Mgr());
    if ((data_mgr && data_mgr.init(play_id))) {
        // source line 310, bytecode pc 354
        data_mgr.loadJson(other_player_data);
        // source line 311, bytecode pc 387
        (xs.Profile.GameData.Mgr._instance[_instance_key] = data_mgr);
        // source line 312, bytecode pc 417
        return xs.Profile.GameData.Mgr._instance[_instance_key];
    }
    // source line 314, bytecode pc 419
    return null;
});
// source line 317, bytecode pc 580
(xs.Profile.GameData.Mgr.releaseInstance = function() {
    var play_id, data_mgr;
    // source line 319, bytecode pc 8
    (play_id = "default");
    // source line 320, bytecode pc 37
    (data_mgr = new xs.Profile.GameData.Mgr());
    if ((data_mgr && data_mgr.init(play_id))) {
        // source line 323, bytecode pc 86
        data_mgr.loadJson(null);
        try {
            // source line 325, bytecode pc 171
            (xs.Utils.isSet(xs.Profile.GameData.Mgr._instance) || (xs.Profile.GameData.Mgr._instance = []));
            // source line 329, bytecode pc 204
            (xs.Profile.GameData.Mgr._instance[play_id] = data_mgr);
        } catch (e) {
            // source line 332, bytecode pc 251
            xs.Debug.warnException("xs.GameData.....", e);
            /* TODO_BYTECODE pc=252 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
        }
    }
});
