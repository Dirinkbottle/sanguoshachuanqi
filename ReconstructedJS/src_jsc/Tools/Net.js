// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/Net.js:1
// source line 275, bytecode pc 153
(xs.Tools.Net = cc.Class.extend({
    name: "xs.Tools.Net",
    init: function() {
    // source line 23, bytecode pc 7
    (this.m_fatherNode = null);
    // source line 24, bytecode pc 15
    (this.m_touchPriority = null);
    // source line 25, bytecode pc 23
    (this.m_listener = null);
    // source line 26, bytecode pc 31
    (this.m_data = null);
    // source line 28, bytecode pc 33
    return true;
},
    setListener: function(listener) {
    // source line 32, bytecode pc 9
    (this.m_listener = listener);
},
    setListenerCallbackData: function(data) {
    // source line 36, bytecode pc 9
    (this.m_data = data);
},
    BuyGood: function(good, buyNum, fatherNode, touchPriority) {
    var param;
    // source line 40, bytecode pc 9
    (param = {});
    // source line 41, bytecode pc 26
    (param.item_advanced_id = good.pk_id);
    // source line 42, bytecode pc 49
    (param.discount_price = good.getPrice());
    // source line 43, bytecode pc 61
    (param.item_num = buyNum);
    // source line 44, bytecode pc 84
    (param.currency_type = good.getCurrencyType());
    // source line 45, bytecode pc 94
    (param.forcepush = true);
    // source line 46, bytecode pc 134
    xs.Tools.Net.requestBuyGood(param, this.BuyGoodSuccessCallback, this);
    // source line 48, bytecode pc 144
    (this.m_data = good);
    // source line 49, bytecode pc 159
    (this.m_data.purchased_num = buyNum);
    // source line 51, bytecode pc 169
    (this.m_fatherNode = fatherNode);
    // source line 52, bytecode pc 179
    (this.m_touchPriority = touchPriority);
},
    BuyGoodSuccessCallback: function(data) {
    var addsInfo;
    // source line 95, bytecode pc 11
    (addsInfo = data.add_list);
    if (this.m_listener) {
        // source line 115, bytecode pc 47
        this.m_listener.buyGoodSuccessCallback(this.m_data);
    }
    // source line 118, bytecode pc 84
    xs.Views.Mgr.showDialogByName("BuyGoodsSuccessDialog", addsInfo);
},
    UseItemSuccess: function(data, title, itemData) {
    var addsInfo, param;
    // source line 123, bytecode pc 11
    (addsInfo = data.add_list);
    if (!title) {
        // source line 126, bytecode pc 56
        (title = xs.Tools.String.createString("comm_propAdd"));
        if (itemData) {
            // source line 129, bytecode pc 79
            switch (itemData.getItemType()) {
                case xs.Models.ItemType_TongQian:
                // source line 132, bytecode pc 680
                (title = xs.Tools.String.createString("comm_moneyAdd"));
                break;
                case xs.Models.ItemType_YuanBao:
                // source line 137, bytecode pc 721
                (title = xs.Tools.String.createString("comm_yuanBaoAdd"));
                break;
                case xs.Models.ItemType_TiLi:
                // source line 142, bytecode pc 762
                (title = xs.Tools.String.createString("comm_VITAdd"));
                break;
                case xs.Models.ItemType_Exp:
                // source line 147, bytecode pc 803
                (title = xs.Tools.String.createString("comm_expAdd"));
                break;
                case xs.Models.ItemType_Gift:
                case xs.Models.ItemType_Box:
                case xs.Models.ItemType_Key:
                case xs.Models.ItemType_JingLi:
                case xs.Models.ItemType_JiShi:
                case xs.Models.ItemType_ChuanChenFu_JiPin:
                case xs.Models.ItemType_LianDan:
                case xs.Models.ItemType_Training:
                case xs.Models.ItemType_ChangeName:
                case xs.Models.ItemType_AddFightChance:
                case xs.Models.ItemType_AddEquipProperty:
                case xs.Models.ItemType_FlashCard:
                case xs.Models.ItemType_WineGlass:
                case xs.Models.ItemType_EquipmentPiece:
                case xs.Models.ItemType_Skill:
                case xs.Models.ItemType_GeneralSoul:
                case xs.Models.ItemType_SkillPiece:
                case xs.Models.ItemType_TiLiLimit:
                case xs.Models.ItemType_JingLiLimit:
                case xs.Models.ItemType_ExperienceMaster:
                case xs.Models.ItemType_DungeonCD:
                case xs.Models.ItemType_DungeonNum:
                case xs.Models.ItemType_Goddess:
                case xs.Models.ItemType_GoddessSurface:
                break;
                default:
                break;
            }
        }
    }
    // source line 186, bytecode pc 828
    (param = {});
    // source line 187, bytecode pc 840
    (param.adds = addsInfo);
    // source line 188, bytecode pc 852
    (param.title = title);
    // source line 189, bytecode pc 866
    (param.callfuncAfterAttach = function() {
    // source line 190, bytecode pc 41
    xs.Guide.GuideMgr.endStepBySequence([ "70000" ]);
});
    // source line 192, bytecode pc 903
    xs.Views.Mgr.showDialogByName("UseItemSuccessDialog", param);
},
    displayOtherTeamInfo: function(params) {
    var param, _id, _cb, _target;
    // source line 196, bytecode pc 18
    (param = (params || {}));
    // source line 197, bytecode pc 47
    (_id = (param.other_user_id || "0"));
    // source line 199, bytecode pc 70
    (_cb = (param.cb || function(data) {
    var _info;
    // source line 202, bytecode pc 21
    (_info = data.info[_id]);
    // source line 204, bytecode pc 68
    xs.Views.Mgr.showDialogByName("TeamInfoDialog", _id, _info);
}));
    // source line 206, bytecode pc 94
    (_target = (param.target || {}));
    // source line 210, bytecode pc 150
    xs.Tools.Net.requestOtherPlayerData({ other_user_id: _id }, _cb, _target);
},
    displayInterOtherTeamInfo: function(params) {
    var param, _id, _userid, locklv8, locklv9, _cb, _target;
    // source line 214, bytecode pc 18
    (param = (params || {}));
    // source line 215, bytecode pc 47
    (_id = (param.player_id || "0"));
    // source line 216, bytecode pc 70
    (_userid = (param.user_id || "0"));
    // source line 217, bytecode pc 144
    (locklv8 = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getOpenLevelByTeamPos(8));
    // source line 218, bytecode pc 218
    (locklv9 = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getOpenLevelByTeamPos(9));
    // source line 219, bytecode pc 241
    (_cb = (param.cb || function(data) {
    var _info;
    // source line 220, bytecode pc 21
    (_info = data.info[_id]);
    if (((_info.cmn.user_info.user_level >= locklv8) && (_info.cmn.team_info.length <= 7))) {
        // source line 224, bytecode pc 133
        _info.cmn.team_info.push({ pk_id: "", position: "8" });
        if (((_info.cmn.user_info.user_level >= locklv9) && (_info.cmn.team_info.length <= 8))) {
            // source line 229, bytecode pc 245
            _info.cmn.team_info.push({ pk_id: "", position: "9" });
        }
    }
    // source line 233, bytecode pc 292
    xs.Views.Mgr.showDialogByName("TeamInfoDialog", _id, _info);
}));
    // source line 235, bytecode pc 265
    (_target = (param.target || {}));
    // source line 241, bytecode pc 329
    xs.Tools.Net.requestInterOtherPlayerData({ player_id: _id, user_id: _userid }, _cb, _target);
},
    displayLocalInterOtherTeamInfo: function(params) {
    var param, _id, _userid, locklv8, locklv9, _cb, _target;
    // source line 245, bytecode pc 18
    (param = (params || {}));
    // source line 246, bytecode pc 47
    (_id = (param.player_id || "0"));
    // source line 247, bytecode pc 70
    (_userid = (param.user_id || "0"));
    // source line 248, bytecode pc 144
    (locklv8 = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getOpenLevelByTeamPos(8));
    // source line 249, bytecode pc 218
    (locklv9 = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getOpenLevelByTeamPos(9));
    // source line 250, bytecode pc 241
    (_cb = (param.cb || function(data) {
    var _info;
    // source line 251, bytecode pc 21
    (_info = data.info[_id]);
    if (((_info.cmn.user_info.user_level >= locklv8) && (_info.cmn.team_info.length <= 7))) {
        // source line 255, bytecode pc 133
        _info.cmn.team_info.push({ pk_id: "", position: "8" });
        if (((_info.cmn.user_info.user_level >= locklv9) && (_info.cmn.team_info.length <= 8))) {
            // source line 260, bytecode pc 245
            _info.cmn.team_info.push({ pk_id: "", position: "9" });
        }
    }
    // source line 264, bytecode pc 292
    xs.Views.Mgr.showDialogByName("TeamInfoDialog", _id, _info);
}));
    // source line 266, bytecode pc 265
    (_target = (param.target || {}));
    // source line 272, bytecode pc 329
    xs.Tools.Net.requestLocalInterOtherPlayerData({ player_id: _id, user_id: _userid }, _cb, _target);
},
    displayDecisiveOtherTeamInfo: function(params, local) {
    var param, _id, _cb, _target;
    // source line 276, bytecode pc 18
    (param = (params || {}));
    // source line 277, bytecode pc 47
    (_id = (param.player_id || "0"));
    // source line 279, bytecode pc 70
    (_cb = (param.cb || function(data) {
    var _info;
    // source line 282, bytecode pc 21
    (_info = data.info[_id]);
    // source line 284, bytecode pc 68
    xs.Views.Mgr.showDialogByName("TeamInfoDialog", _id, _info);
}));
    // source line 286, bytecode pc 94
    (_target = (param.target || {}));
    // source line 290, bytecode pc 154
    xs.Tools.Net.requestDecisiveOtherPlayerData({ player_id: _id }, local, _cb, _target);
}
}));
// source line 294, bytecode pc 175
(xs.Tools.Net.s_instance = null);
// source line 295, bytecode pc 201
(xs.Tools.Net.getInstance = function() {
    if (!xs.Tools.Net.s_instance) {
        // source line 297, bytecode pc 66
        (xs.Tools.Net.s_instance = new xs.Tools.Net());
        // source line 298, bytecode pc 98
        xs.Tools.Net.s_instance.init();
    }
    // source line 300, bytecode pc 119
    return xs.Tools.Net.s_instance;
});
// source line 302, bytecode pc 227
(xs.Tools.Net.purgeInstance = function() {
    if (xs.Tools.Net.s_instance) {
        // source line 304, bytecode pc 46
        (xs.Tools.Net.s_instance = null);
    }
});
// source line 309, bytecode pc 253
(xs.Tools.Net.createExtraValue = function() {
    var _obj;
    // source line 310, bytecode pc 9
    (_obj = {});
    // source line 311, bytecode pc 44
    (_obj.channel = xs.Tools.Jsb.getChannelId());
    // source line 312, bytecode pc 79
    (_obj.platform = xs.Tools.Jsb.getPlatform());
    // source line 313, bytecode pc 114
    (_obj.udid = xs.Tools.Jsb.getDeviceId());
    // source line 314, bytecode pc 118
    return _obj;
});
// source line 317, bytecode pc 279
(xs.Tools.Net.createPageEndWrappedFunc = function(_tag, _func) {
    // source line 325, bytecode pc 45
    return function() {
    var arguments;
    // source line 319, bytecode pc 4
    (arguments = arguments);
    // source line 320, bytecode pc 41
    xs.Tools.Statistic.endLogPageView(_tag);
    // source line 321, bytecode pc 65
    return this.func.apply(this, arguments);
}.bind({ tag: _tag, func: _func });
});
// source line 331, bytecode pc 305
(xs.Tools.Net.createRequestEndWrappedFunc = function(_tag, _func, _funcBefore, _funcAfter) {
    // source line 352, bytecode pc 55
    return function() {
    var _ret, arguments;
    // source line 333, bytecode pc 4
    (arguments = arguments);
    // source line 334, bytecode pc 28
    this.funcBefore.apply(this, arguments);
    if (!this.func) {
        // source line 338, bytecode pc 45
        (_ret = null);
    } else {
        // source line 341, bytecode pc 77
        (_ret = this.func.apply(this, arguments));
    }
    // source line 345, bytecode pc 101
    this.funcAfter.apply(this, arguments);
    // source line 346, bytecode pc 105
    return _ret;
}.bind({ tag: _tag, func: _func, funcBefore: _funcBefore, funcAfter: _funcAfter });
});
// source line 358, bytecode pc 331
(xs.Tools.Net.addBaseParam = function(param) {
    var stepArray, i;
    // source line 359, bytecode pc 18
    (param = (param || {}));
    // source line 360, bytecode pc 85
    (param.user_id = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId());
    // source line 361, bytecode pc 115
    (param.time = new Date().getTime());
    // source line 362, bytecode pc 175
    (param.token = (xs.useToken ? xs.Profile.UserCfg.getToken() : ""));
    // source line 363, bytecode pc 210
    (param.user_auth = xs.Profile.UserCfg.getAuth());
    if (!xs.Guide.GuideMgr.getIsOver()) {
        // source line 368, bytecode pc 323
        (stepArray = [ "10000", "20000", "30000", "40000", "50000", "60000", "70000", "80000" ]);
        // source line 369, bytecode pc 328
        (i = 0);
        while ((i < stepArray.length)) {
            if ((stepArray[i] === xs.Guide.GuideMgr.getGuideStep())) {
                // source line 371, bytecode pc 408
                (param.step = xs.Guide.GuideMgr.getGuideStep());
            }
            // source line 369, bytecode pc 421
            (i = (+i + 1));
        }
    }
    // source line 375, bytecode pc 443
    return param;
});
// source line 381, bytecode pc 357
(xs.Tools.Net.requestLogin = function(param, callback, errCallBack, target) {
    // source line 382, bytecode pc 33
    (param.server_id = xs.Profile.GameData.Player.g_serverId);
    // source line 383, bytecode pc 65
    xs.log_zhz("server_id", param.server_id);
    // source line 384, bytecode pc 165
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.Login, param, callback.bind(target), errCallBack.bind(target), null, null, "requestLogin");
});
// source line 388, bytecode pc 383
(xs.Tools.Net.requestTestLogin = function(param, callback, target) {
    // source line 389, bytecode pc 82
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.TestUserLogin, param, callback.bind(target), null, null, null, "requestTestLogin");
});
// source line 393, bytecode pc 409
(xs.Tools.Net.requestQueueTeam = function(param, callback, target) {
    var _param;
    // source line 394, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 395, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.QueueTeam, _param, callback.bind(target), null, null, null, "requestQueueTeam");
});
// source line 399, bytecode pc 435
(xs.Tools.Net.requestChangeTeam = function(param, callback, target) {
    var _param;
    // source line 400, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 401, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ChangeTeam, _param, callback.bind(target), null, null, null, "requestChangeTeam");
});
// source line 405, bytecode pc 461
(xs.Tools.Net.requestPartyReceive = function(param, funcNormal, funcErr) {
    var _param;
    // source line 406, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 407, bytecode pc 103
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.PartyReceive, _param, funcNormal, funcErr, null, null, "requestPartyReceive");
});
// source line 411, bytecode pc 487
(xs.Tools.Net.requestPartyReceivePower = function(param, funcNormal, funcErr) {
    var _param;
    // source line 412, bytecode pc 9
    (param.activity_push = true);
    // source line 413, bytecode pc 19
    (param.forcepush = true);
    // source line 414, bytecode pc 53
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 415, bytecode pc 123
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.PartyReceivePower, _param, funcNormal, funcErr, null, null, "requestPartyReceivePower");
});
// source line 419, bytecode pc 513
(xs.Tools.Net.requestPartySlotMachines = function(param, funcNormal, funcErr) {
    var _param;
    // source line 420, bytecode pc 9
    (param.activity_push = true);
    // source line 421, bytecode pc 19
    (param.forcepush = true);
    // source line 422, bytecode pc 53
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 423, bytecode pc 123
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.PartySlotMachines, _param, funcNormal, funcErr, null, null, "requestPartySlotMachines");
});
// source line 426, bytecode pc 539
(xs.Tools.Net.requestPartyDouble = function(param, funcNormal, funcErr) {
    var _param;
    // source line 427, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 428, bytecode pc 103
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.PartyDouble11, _param, funcNormal, funcErr, null, null, "requestPartyDouble");
});
// source line 432, bytecode pc 565
(xs.Tools.Net.requestEquipSkill = function(param, callback, target) {
    var _param;
    // source line 433, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 434, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.EquipSkill, _param, callback.bind(target), null, null, null, "requestEquipSkill");
});
// source line 438, bytecode pc 591
(xs.Tools.Net.requestEquipEquipment = function(param, callback, target) {
    var _param;
    // source line 439, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 440, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.EquipEquipment, _param, callback.bind(target), null, null, null, "requestEquipEquipment");
});
// source line 444, bytecode pc 617
(xs.Tools.Net.requestEquipAssistantGeneral = function(param, callback, target) {
    var _param;
    // source line 445, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 446, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.EquipAssistant, _param, callback.bind(target), null, null, null, "requestEquipAssistantGeneral");
});
// source line 450, bytecode pc 643
(xs.Tools.Net.requireChapterInfo = function(param, callback, target) {
    var _param;
    // source line 451, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 452, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.getChapterInfo, _param, callback.bind(target), null, null, null, "requireChapterInfo");
});
// source line 456, bytecode pc 669
(xs.Tools.Net.requireFightBefore = function(param, callback, target) {
    var _param;
    // source line 457, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 458, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.FightBefore, _param, callback.bind(target), null, null, null, "requireFightBefore");
});
// source line 462, bytecode pc 695
(xs.Tools.Net.requireFight = function(param, callback, target) {
    var _param;
    // source line 467, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 468, bytecode pc 43
    (_param.forcepush = true);
    // source line 469, bytecode pc 126
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.Fight, _param, callback.bind(target), null, null, null, "requireFight");
});
// source line 473, bytecode pc 721
(xs.Tools.Net.requireCopyFight = function(param, callback, target) {
    var _param;
    // source line 474, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 475, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.CopyFight, _param, callback.bind(target), null, null, null, "requireCopyFight");
});
// source line 479, bytecode pc 747
(xs.Tools.Net.requireCopyData = function(param, callback, target) {
    var _param;
    // source line 480, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 481, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.CopyData, _param, callback.bind(target), null, null, null, "requireCopyData");
});
// source line 485, bytecode pc 773
(xs.Tools.Net.requirePlantTreeData = function(param, callback, target) {
    var _param;
    // source line 486, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 487, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.PlantTreeData, _param, callback.bind(target), null, null, null, "requirePlantTreeData");
});
// source line 491, bytecode pc 799
(xs.Tools.Net.requireMultiKill = function(param, callback, target) {
    var _param;
    // source line 492, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 493, bytecode pc 43
    (_param.forcepush = true);
    // source line 494, bytecode pc 126
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.MultiKill, _param, callback.bind(target), null, null, null, "requireMultiKill");
});
// source line 497, bytecode pc 825
(xs.Tools.Net.requireMultiKillSpecialInfo = function(param, callback, target) {
    var _param;
    // source line 498, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 499, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.multiKillSpecialInfo, _param, callback.bind(target), null, null, null, "requirePeachPriceList");
});
// source line 502, bytecode pc 851
(xs.Tools.Net.requireMultiKillSpecial = function(param, callback, target) {
    var _param;
    // source line 503, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 504, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.MultiKillSpecial, _param, callback.bind(target), null, null, null, "requireMultiKillSpecial");
});
// source line 507, bytecode pc 877
(xs.Tools.Net.requireOpenTreasureBox = function(param, callback, target) {
    var _param;
    // source line 508, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 509, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.OpenTreasureBox, _param, callback.bind(target), null, null, null, "requireOpenTreasureBox");
});
// source line 513, bytecode pc 903
(xs.Tools.Net.requireSell = function(param, callback, target) {
    var _param;
    // source line 514, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 515, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.Sell, _param, callback.bind(target), null, null, null, "requireSell");
});
// source line 518, bytecode pc 929
(xs.Tools.Net.requireMelt = function(param, callback, target) {
    var _param;
    // source line 519, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 520, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.Melt, _param, callback.bind(target), null, null, null, "requireMelt");
});
// source line 523, bytecode pc 955
(xs.Tools.Net.requireMultMelt = function(param, callback, target) {
    var _param;
    // source line 524, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 525, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.MultMelt, _param, callback.bind(target), null, null, null, "requireMultMelt");
});
// source line 528, bytecode pc 981
(xs.Tools.Net.requireEquipPieceSell = function(param, callback, target) {
    var _param;
    // source line 529, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 530, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.EquipPieceSell, _param, callback.bind(target), null, null, null, "requireEquipPieceSell");
});
// source line 533, bytecode pc 1007
(xs.Tools.Net.requireEquipPieceComposite = function(param, callback, target) {
    var _param;
    // source line 534, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 535, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.EquipPieceComposite, _param, callback.bind(target), null, null, null, "requireEquipPieceComposite");
});
// source line 539, bytecode pc 1033
(xs.Tools.Net.requireToastTimes = function(param, callback, target) {
    var _param;
    // source line 540, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 541, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ToastInfo, _param, callback.bind(target), null, null, null, "requireToastTimes");
});
// source line 545, bytecode pc 1059
(xs.Tools.Net.requireToast = function(param, callback, errFun, target) {
    var _param;
    // source line 546, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 547, bytecode pc 43
    (_param.forcepush = true);
    // source line 548, bytecode pc 128
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.Toast, _param, callback.bind(target), errFun, null, null, "requireToast");
});
// source line 552, bytecode pc 1085
(xs.Tools.Net.requireAlchemy = function(param, callback, target) {
    var _param;
    // source line 553, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 554, bytecode pc 43
    (_param.forcepush = true);
    // source line 555, bytecode pc 126
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.Alchemy, _param, callback.bind(target), null, null, null, "requireAlchemy");
});
// source line 559, bytecode pc 1111
(xs.Tools.Net.requireTakeMedicine = function(param, callback, target) {
    var _param;
    // source line 560, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 561, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.TakeMedicine, _param, callback.bind(target), null, null, null, "requireTakeMedicine");
});
// source line 565, bytecode pc 1137
(xs.Tools.Net.requestEquipmentReinforce = function(param, callback, target) {
    var _param;
    // source line 566, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 567, bytecode pc 43
    (_param.forcepush = true);
    // source line 568, bytecode pc 126
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.EquipmentReinfoce, _param, callback.bind(target), null, null, null, "requestEquipmentReinforce");
});
// source line 572, bytecode pc 1163
(xs.Tools.Net.requestEquipmentMultiUpgrade = function(param, callback, target) {
    var _param;
    // source line 573, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 574, bytecode pc 43
    (_param.forcepush = true);
    // source line 575, bytecode pc 126
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.EquipmentMultiUpgrade, _param, callback.bind(target), null, null, null, "requestEquipmentMultiUpgrade");
});
// source line 579, bytecode pc 1189
(xs.Tools.Net.requestSkillUpdate = function(param, callback, target) {
    var _param;
    // source line 580, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 581, bytecode pc 43
    (_param.forcepush = true);
    // source line 582, bytecode pc 126
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.SkillUpdate, _param, callback.bind(target), null, null, null, "requestSkillUpdate");
});
// source line 585, bytecode pc 1215
(xs.Tools.Net.requireSkillMelt = function(param, callback, target) {
    var _param;
    // source line 586, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 587, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.SkillMelt, _param, callback.bind(target), null, null, null, "requireSkillMelt");
});
// source line 590, bytecode pc 1241
(xs.Tools.Net.requireSkillMultMelt = function(param, callback, errCallBack, target) {
    var _param;
    // source line 591, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 592, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.SkillMultMelt, _param, callback.bind(target), errCallBack.bind(target), null, null, "requireSkillMultMelt");
});
// source line 596, bytecode pc 1267
(xs.Tools.Net.requestGeneralTrainingInfo = function(param, callback, target) {
    var _param;
    // source line 597, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 598, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GeneralTrainingInfo, _param, callback.bind(target), null, null, null, "requestGeneralTrainingInfo");
});
// source line 602, bytecode pc 1293
(xs.Tools.Net.requestGeneralTrainingThankYou = function(param, callback, target) {
    var _param;
    // source line 603, bytecode pc 9
    (param.activity_push = true);
    // source line 604, bytecode pc 43
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 605, bytecode pc 53
    (_param.forcepush = true);
    // source line 606, bytecode pc 136
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GeneralTrainingThankYou, _param, callback.bind(target), null, null, null, "requestGeneralTrainingThankYou");
});
// source line 609, bytecode pc 1319
(xs.Tools.Net.requestGeneralOneStepTrainingThankYou = function(param, callback, errCallBack, target) {
    var _param;
    // source line 610, bytecode pc 9
    (param.activity_push = true);
    // source line 611, bytecode pc 43
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 612, bytecode pc 53
    (_param.forcepush = true);
    // source line 613, bytecode pc 153
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GeneralOneStepTrainingThankYou, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGeneralOneStepTrainingThankYou");
});
// source line 617, bytecode pc 1345
(xs.Tools.Net.requestFormulaInfo = function(param, callback, target) {
    var _param;
    // source line 618, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 619, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.FormulaInfo, _param, callback.bind(target), null, null, null, "requestFormulaInfo");
});
// source line 623, bytecode pc 1371
(xs.Tools.Net.requestPushDataInfo = function(callback, target) {
    var _param;
    // source line 627, bytecode pc 105
    (_param = xs.Tools.Net.addBaseParam({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    activity_push: true
}));
    // source line 629, bytecode pc 188
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.PushDataInfo, _param, callback.bind(target), null, null, null, "requestPushDataInfo");
});
// source line 633, bytecode pc 1397
(xs.Tools.Net.requestAnnouncementRead = function(param, callback, errCallBack) {
    var _param;
    // source line 635, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 643, bytecode pc 134
    xs.Views.Mgr.reqUrl((xs.Cfg.Url.ServerAddrsMap.PublicTip.domain + xs.Cfg.Url.AnnouncementRead), _param, callback, errCallBack, null, true, "requestAnnouncementRead");
});
// source line 648, bytecode pc 1423
(xs.Tools.Net.requestUnionRankList = function(param, callback, target) {
    var _param;
    // source line 649, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 650, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.UnionRankList, _param, callback.bind(target), null, null, null, "requestUnionRankList");
});
// source line 653, bytecode pc 1449
(xs.Tools.Net.requestUnionShopList = function(param, callback, target) {
    var _param;
    // source line 654, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 655, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.UnionShopList, _param, callback.bind(target), null, null, null, "requestUnionShopList");
});
// source line 659, bytecode pc 1475
(xs.Tools.Net.requestUnionShopExchangeGoods = function(param, callback, errCallBack, target) {
    var _param;
    // source line 660, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 661, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.UnionShopExchangeGoods, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestUnionShopExchangeGoods");
});
// source line 665, bytecode pc 1501
(xs.Tools.Net.requestUnionUserList = function(param, callback, target) {
    var _param;
    // source line 666, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 667, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.UnionUserList, _param, callback.bind(target), null, null, null, "requestUnionUserList");
});
// source line 671, bytecode pc 1527
(xs.Tools.Net.requestUnionDepotList = function(param, callback, target) {
    var _param;
    // source line 672, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 673, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.UnionDepotList, _param, callback.bind(target), null, null, null, "requestUnionUserList");
});
// source line 677, bytecode pc 1553
(xs.Tools.Net.requestApplyList = function(param, callback, target) {
    var _param;
    // source line 678, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 679, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ApplyList, _param, callback.bind(target), null, null, null, "requestApplyList");
});
// source line 683, bytecode pc 1579
(xs.Tools.Net.requestApplyOperation = function(param, callback, errCallBack, target) {
    var _param;
    // source line 684, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 685, bytecode pc 118
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ApplyOperation, _param, callback.bind(target), errCallBack, null, null, "requestApplyOperation");
});
// source line 689, bytecode pc 1605
(xs.Tools.Net.requestApply = function(param, callback, errCallBack, target) {
    var _param;
    // source line 690, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 691, bytecode pc 118
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.Apply, _param, callback.bind(target), errCallBack, null, null, "requestApply");
});
// source line 695, bytecode pc 1631
(xs.Tools.Net.requestWishingContent = function(param, callback, target) {
    var _param;
    // source line 696, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 697, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.WishingContent, _param, callback.bind(target), null, null, null, "requestWishingContent");
});
// source line 701, bytecode pc 1657
(xs.Tools.Net.requestWishingStart = function(param, callback, target) {
    var _param;
    // source line 702, bytecode pc 9
    (param.activity_push = true);
    // source line 703, bytecode pc 19
    (param.forcepush = true);
    // source line 704, bytecode pc 53
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 705, bytecode pc 136
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.WishingStart, _param, callback.bind(target), null, null, null, "requestWishingStart");
});
// source line 709, bytecode pc 1683
(xs.Tools.Net.requestCombatUpgrade = function(param, callback, target) {
    var _param;
    // source line 710, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 711, bytecode pc 43
    (_param.forcepush = true);
    // source line 712, bytecode pc 126
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.CombatUpgrade, _param, callback.bind(target), null, null, null, "requestCombatUpgrade");
});
// source line 716, bytecode pc 1709
(xs.Tools.Net.requestAdventureInfo = function(param, callback, target) {
    var _param;
    // source line 717, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 718, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.AdventureMake, _param, callback.bind(target), null, null, null, "requestAdventureInfo");
});
// source line 722, bytecode pc 1735
(xs.Tools.Net.requestGoodsList = function(param, callback, target) {
    var _param;
    // source line 723, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 724, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GetGoodsList, _param, callback.bind(target), null, null, null, "requestGoodsList");
});
// source line 729, bytecode pc 1761
(xs.Tools.Net.requestLimitGoodsList = function(param, callback, target) {
    var _param;
    // source line 730, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 731, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GetLimitGoodsList, _param, callback.bind(target), null, null, null, "requestLimitGoodsList");
});
// source line 735, bytecode pc 1787
(xs.Tools.Net.requestBuyGood = function(param, callback, target) {
    var _param, price, num, currencyType;
    // source line 736, bytecode pc 9
    (param.ladder_push = true);
    // source line 737, bytecode pc 19
    (param.vipstore_push = true);
    // source line 738, bytecode pc 53
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 739, bytecode pc 70
    (_param.forcepush = param.forcepush);
    // source line 740, bytecode pc 82
    (price = _param.discount_price);
    // source line 741, bytecode pc 94
    (num = _param.item_num);
    // source line 742, bytecode pc 106
    (currencyType = _param.currency_type);
    // source line 744, bytecode pc 117
    (price = (price * num));
    if ((currencyType === 1)) {
        if ((price > xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao())) {
            // source line 749, bytecode pc 221
            xs.Tools.UI.showGoldNotEnough();
            // source line 750, bytecode pc 223
            return void 0;
        }
    } else {
        if ((currencyType === 4)) {
            if ((price > xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getLadderRankSalary())) {
                // source line 754, bytecode pc 366
                xs.Views.Mgr.showToast(xs.Tools.String.createString("ganodormaNotEnough"));
                // source line 755, bytecode pc 368
                return void 0;
            }
        }
    }
    // source line 759, bytecode pc 451
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.BuyGoods, _param, callback.bind(target), null, null, null, "requestBuyGood");
});
// source line 763, bytecode pc 1813
(xs.Tools.Net.requestUseItem = function(param, callback, errCallBack, target) {
    var _param;
    // source line 764, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 765, bytecode pc 43
    (_param.forcepush = true);
    // source line 766, bytecode pc 143
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.UseItem, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestUseItem");
});
// source line 770, bytecode pc 1839
(xs.Tools.Net.requestResolveItem = function(param, callback, errCallBack, target) {
    var _param;
    // source line 771, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 772, bytecode pc 43
    (_param.forcepush = true);
    // source line 773, bytecode pc 143
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ResolveItem, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestResolveItem");
});
// source line 777, bytecode pc 1865
(xs.Tools.Net.requestDeleteItem = function(param, callback, errCallBack, target) {
    var _param;
    // source line 778, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 779, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.DeleteItem, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestDeleteItem");
});
// source line 783, bytecode pc 1891
(xs.Tools.Net.requestSynthetise = function(param, callback, errCallBack, target) {
    var _param;
    // source line 784, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 785, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.Synthetise, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestSynthetise");
});
// source line 791, bytecode pc 1917
(xs.Tools.Net.requestGiftAndOpen = function(param, callback, target) {
    var _param;
    // source line 792, bytecode pc 9
    (param.ladder_push = true);
    // source line 793, bytecode pc 43
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 794, bytecode pc 60
    (_param.forcepush = param.forcepush);
    // source line 795, bytecode pc 143
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GetGiftAndOpen, _param, callback.bind(target), null, null, null, "requestGiftAndOpen");
});
// source line 799, bytecode pc 1943
(xs.Tools.Net.requestInsight = function(param, callback, target) {
    var _param;
    // source line 800, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 801, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GeneralInsight, _param, callback.bind(target), null, null, null, "requestInsight");
});
// source line 805, bytecode pc 1969
(xs.Tools.Net.requestReincarnate = function(param, callback, target) {
    var _param;
    // source line 806, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 807, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.SoulReincarnate, _param, callback.bind(target), null, null, null, "requestReincarnate");
});
// source line 811, bytecode pc 1995
(xs.Tools.Net.requestEvolutionOpen = function(param, callback, target) {
    var _param;
    // source line 812, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 813, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.EvolutionOpen, _param, callback.bind(target), null, null, null, "requestEvolutionOpen");
});
// source line 816, bytecode pc 2021
(xs.Tools.Net.requestEvolutionChangeYuanFen = function(param, callback, target) {
    var _param;
    // source line 817, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 818, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.EvolutionChangeYuanFen, _param, callback.bind(target), null, null, null, "requestEvolutionChangeYuanFen");
});
// source line 824, bytecode pc 2047
(xs.Tools.Net.requestWorshipGeneral = function(param, callback, target) {
    var _param;
    // source line 825, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 826, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.WorshipGeneral, _param, callback.bind(target), null, null, null, "requestWorshipGeneral");
});
// source line 830, bytecode pc 2073
(xs.Tools.Net.requestClimbLadderStartInfo = function(param, callback, target) {
    var _param, _errFunc;
    // source line 831, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 832, bytecode pc 43
    (_param.forcePush = true);
    // source line 833, bytecode pc 52
    (_errFunc = function(data) {
    var obj;
    if ((data.error_code == "e_8046")) {
        // source line 840, bytecode pc 182
        (obj = xs.Views.Mgr.showDialogByName("OneBtnDialog", {
    titleText: xs.Tools.String.createString("client_e_8046_title"),
    contentText: xs.Tools.String.createString("client_e_8046_content"),
    btnText: xs.Tools.String.createString("1071310061"),
    btnCallback: function() {
    // source line 841, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("MainMenuScene");
}
}));
        // source line 844, bytecode pc 252
        obj.getRealDialog().getTitleText().setString(xs.Tools.String.createString("client_e_8046_title"));
        // source line 845, bytecode pc 322
        obj.getRealDialog().getContentText().setString(xs.Tools.String.createString("client_e_8046_content"));
        // source line 846, bytecode pc 324
        return true;
    }
    // source line 848, bytecode pc 326
    return false;
});
    // source line 850, bytecode pc 137
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ClimbLadderStartInfo, _param, callback.bind(target), _errFunc, null, null, "requestClimbLadderStartInfo");
});
// source line 853, bytecode pc 2099
(xs.Tools.Net.requestClimbLadderStartFightOrSelectInfo = function(param, callback, target) {
    var _param;
    // source line 854, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 855, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ClimbLadderStartFightOrSelectInfo, _param, callback.bind(target), null, null, null, "requestClimbLadderStartFightOrSelectInfo");
});
// source line 858, bytecode pc 2125
(xs.Tools.Net.requestClimbLadderStartFight = function(param, callback, target) {
    var _param, _errFunc;
    // source line 859, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 860, bytecode pc 43
    (_param.forcepush = true);
    // source line 861, bytecode pc 52
    (_errFunc = function(data) {
    var obj;
    if ((data.error_code == "e_8008")) {
        // source line 868, bytecode pc 182
        (obj = xs.Views.Mgr.showDialogByName("OneBtnDialog", {
    titleText: xs.Tools.String.createString("climb_pasDue"),
    contentText: xs.Tools.String.createString("climb_challengePasDue"),
    btnText: xs.Tools.String.createString("climb_backhaul"),
    btnCallback: function() {
    // source line 869, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("MainMenuScene");
}
}));
        // source line 872, bytecode pc 252
        obj.getRealDialog().getTitleText().setString(xs.Tools.String.createString("climb_pasDue"));
        // source line 873, bytecode pc 322
        obj.getRealDialog().getContentText().setString(xs.Tools.String.createString("climb_challengePasDue"));
        // source line 874, bytecode pc 324
        return true;
    }
    // source line 876, bytecode pc 326
    return false;
});
    // source line 878, bytecode pc 137
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ClimbLadderStartFight, _param, callback.bind(target), _errFunc, null, null, "requestClimbLadderStartFight");
});
// source line 882, bytecode pc 2151
(xs.Tools.Net.requestClimbLadderStartFightPass = function(param, callback, target) {
    var _param;
    // source line 883, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 884, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ClimbLadderStartFightPass, _param, callback.bind(target), null, null, null, "requestClimbLadderStartFightPass");
});
// source line 888, bytecode pc 2177
(xs.Tools.Net.requestClimbLadderProperty = function(param, callback, target) {
    var _param, _errFunc;
    // source line 889, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 890, bytecode pc 42
    (_errFunc = function(data) {
    var obj;
    if ((data.error_code == "e_8008")) {
        // source line 897, bytecode pc 182
        (obj = xs.Views.Mgr.showDialogByName("OneBtnDialog", {
    titleText: xs.Tools.String.createString("climb_pasDue"),
    contentText: xs.Tools.String.createString("climb_challengePasDue"),
    btnText: xs.Tools.String.createString("climb_backhaul"),
    btnCallback: function() {
    // source line 898, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("MainMenuScene");
}
}));
        // source line 901, bytecode pc 252
        obj.getRealDialog().getTitleText().setString(xs.Tools.String.createString("climb_pasDue"));
        // source line 902, bytecode pc 322
        obj.getRealDialog().getContentText().setString(xs.Tools.String.createString("climb_challengePasDue"));
    }
    // source line 904, bytecode pc 324
    return true;
});
    // source line 906, bytecode pc 127
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ClimbLadderProperty, _param, callback.bind(target), _errFunc, null, null, "requestClimbLadderProperty");
});
// source line 911, bytecode pc 2203
(xs.Tools.Net.requestArtifactStoreyExchangeList = function(param, callback, target) {
    var _param;
    // source line 912, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 913, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ArtifactStoreyExchangeList, _param, callback.bind(target), null, null, null, "requestArtifactStoreyExchangeList");
});
// source line 916, bytecode pc 2229
(xs.Tools.Net.requestArtifactStoreyExchangeEquipment = function(param, callback, target) {
    var _param;
    // source line 917, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 918, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ArtifactStoreyExchangeEquipment, _param, callback.bind(target), null, null, null, "requestArtifactStoreyExchangeEquipment");
});
// source line 922, bytecode pc 2255
(xs.Tools.Net.requestLadderData = function(param, callback, target) {
    var _param;
    // source line 923, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 924, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.LadderOriginalData, _param, callback.bind(target), null, null, null, "requestLadderData");
});
// source line 928, bytecode pc 2281
(xs.Tools.Net.requestLadderFight = function(param, callback, errBack, target) {
    var _param;
    // source line 929, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 930, bytecode pc 43
    (_param.forcepush = true);
    // source line 931, bytecode pc 143
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.LadderFight, _param, callback.bind(target), errBack.bind(target), null, null, "requestLadderFight");
});
// source line 934, bytecode pc 2307
(xs.Tools.Net.requestLadderTenFight = function(param, callback, errBack, target) {
    var _param;
    // source line 935, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 936, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.LadderTenFight, _param, callback.bind(target), errBack.bind(target), null, null, "requestLadderTenFight");
});
// source line 940, bytecode pc 2333
(xs.Tools.Net.requestChaosSkillPiece = function(param, callback, target) {
    var _param;
    // source line 941, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 942, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ChaosSkillPiece, _param, callback.bind(target), null, null, null, "requestChaosSkillPiece");
});
// source line 946, bytecode pc 2359
(xs.Tools.Net.requestChaosInfo = function(param, callback, target) {
    var _param;
    // source line 947, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 948, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ChaosInfo, _param, callback.bind(target), null, null, null, "requestChaosInfo");
});
// source line 952, bytecode pc 2385
(xs.Tools.Net.requestChaosFight = function(param, callback, errBack, target) {
    var _param;
    // source line 953, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 954, bytecode pc 43
    (_param.forcepush = true);
    // source line 955, bytecode pc 143
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ChaosFight, _param, callback.bind(target), errBack.bind(target), null, null, "requestChaosFight");
});
// source line 959, bytecode pc 2411
(xs.Tools.Net.requestWarLordSkillList = function(param, callback, target) {
    var _param;
    // source line 960, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 961, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.WarLordSkillList, _param, callback.bind(target), null, null, null, "requestWarLordSkillList");
});
// source line 965, bytecode pc 2437
(xs.Tools.Net.requestWarLordExchange = function(param, callback, errFunc, target) {
    var _param;
    // source line 966, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 967, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.WarLordExchangeSkill, _param, callback.bind(target), errFunc.bind(target), null, null, "requestWarLordExchange");
});
// source line 970, bytecode pc 2463
(xs.Tools.Net.requestOneStepSkillCompose = function(param, callback, errFunc, target) {
    var _param;
    // source line 971, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 972, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.OneStepSkillCompose, _param, callback.bind(target), errFunc.bind(target), null, null, "requestOneStepSkillCompose");
});
// source line 976, bytecode pc 2489
(xs.Tools.Net.requestSaveUserSign = function(param, callback, target) {
    var _param;
    // source line 977, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 978, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.SaveUserSign, _param, callback.bind(target), null, null, null, "requestSaveUserSign");
});
// source line 982, bytecode pc 2515
(xs.Tools.Net.requestSaveUserNewName = function(param, callback, errFunc, target) {
    var _param;
    // source line 983, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 984, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ChangeUserName, _param, callback.bind(target), errFunc.bind(target), null, null, "requestSaveUserNewName");
});
// source line 988, bytecode pc 2541
(xs.Tools.Net.requestMail = function(param, callback, target) {
    var _param;
    // source line 989, bytecode pc 9
    (param.forcepush = true);
    // source line 990, bytecode pc 19
    (param.email_push = true);
    // source line 991, bytecode pc 53
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 992, bytecode pc 136
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GetMail, _param, callback.bind(target), null, null, null, "requestMail");
});
// source line 996, bytecode pc 2567
(xs.Tools.Net.requestMailAttach = function(param, callback, target) {
    var _param;
    // source line 997, bytecode pc 9
    (param.forcepush = true);
    // source line 998, bytecode pc 19
    (param.email_push = true);
    // source line 999, bytecode pc 53
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1000, bytecode pc 136
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GetMailAttach, _param, callback.bind(target), null, null, null, "requestMailAttach");
});
// source line 1004, bytecode pc 2593
(xs.Tools.Net.requestExchangeCDKey = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1005, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1006, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ExchangeCDKey, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestExchangeCDKey");
});
// source line 1010, bytecode pc 2619
(xs.Tools.Net.requestAtlasList = function(param, callback, target) {
    var _param;
    // source line 1011, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1012, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.AtlasList, _param, callback.bind(target), null, null, null, "requestAtlasList");
});
// source line 1016, bytecode pc 2645
(xs.Tools.Net.requestGetSurrenderList = function(param, callback, target) {
    var _param;
    // source line 1017, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1018, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GetSurrenderList, _param, callback.bind(target), null, null, null, "requestGetSurrenderList");
});
// source line 1023, bytecode pc 2671
(xs.Tools.Net.requestFriendApply = function(param, callback, target) {
    var _param;
    // source line 1024, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1025, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.FriendApply, _param, callback.bind(target), null, null, null, "requestFriendApply");
});
// source line 1029, bytecode pc 2697
(xs.Tools.Net.requestSendFeedBack = function(param, callback, target) {
    var _param;
    // source line 1030, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1031, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.FeedBack, _param, callback.bind(target), null, null, null, "requestSendFeedBack");
});
// source line 1035, bytecode pc 2723
(xs.Tools.Net.requestQuasiFriends = function(param, callback, target) {
    var _param;
    // source line 1036, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1037, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GetQuasiFriends, _param, callback.bind(target), null, null, null, "requestQuasiFriends");
});
// source line 1041, bytecode pc 2749
(xs.Tools.Net.requestFriends = function(param, callback, target) {
    var _param;
    // source line 1042, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1043, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GetFriends, _param, callback.bind(target), null, null, null, "requestFriends");
});
// source line 1047, bytecode pc 2775
(xs.Tools.Net.requestFoes = function(param, callback, target) {
    var _param;
    // source line 1048, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1049, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GetFoes, _param, callback.bind(target), null, null, null, "requestFoes");
});
// source line 1053, bytecode pc 2801
(xs.Tools.Net.requestMakeFriend = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1054, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1055, bytecode pc 131
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.FriendRequest, _param, callback.bind(target), errCallBack.bind(this), null, null, "requestMakeFriend");
});
// source line 1059, bytecode pc 2827
(xs.Tools.Net.requestDeleteFriend = function(param, callback, target) {
    var _param;
    // source line 1060, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1061, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.DeleteFriend, _param, callback.bind(target), null, null, null, "requestDeleteFriend");
});
// source line 1065, bytecode pc 2853
(xs.Tools.Net.requestSearchUser = function(param, callback, target) {
    var _param;
    // source line 1066, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1067, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.SearchUser, _param, callback.bind(target), null, null, null, "requestSearchUser");
});
// source line 1071, bytecode pc 2879
(xs.Tools.Net.requestSendMessage = function(param, callback, target) {
    var _param;
    // source line 1072, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1073, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.SendMessage, _param, callback.bind(target), null, null, null, "requestSendMessage");
});
// source line 1077, bytecode pc 2905
(xs.Tools.Net.requestGetServerList = function(param, callback, errCallBack, target) {
    var _param, _callback, _errCallback;
    // source line 1078, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1079, bytecode pc 68
    (_param.data_acquire = xs.Tools.Net.createExtraValue());
    // source line 1080, bytecode pc 103
    (_param.channel = xs.Tools.Jsb.getChannelId());
    // source line 1081, bytecode pc 138
    (_param.channel_id = xs.Tools.Jsb.getChannelId());
    // source line 1083, bytecode pc 185
    (_callback = ((callback && target) ? callback.bind(target) : callback));
    // source line 1084, bytecode pc 232
    (_errCallback = ((errCallBack && target) ? errCallBack.bind(target) : errCallBack));
    // source line 1086, bytecode pc 265
    xs.Tools.Statistic.event_enter("serverList_begin");
    // source line 1094, bytecode pc 317
    (_callback = xs.Tools.Net.createRequestEndWrappedFunc("serverList_success", _callback, function() {
    // source line 1092, bytecode pc 32
    xs.Tools.Statistic.event_enter("serverList_success0");
}, function() {
    // source line 1095, bytecode pc 32
    xs.Tools.Statistic.event_enter("serverList_success1");
}));
    // source line 1105, bytecode pc 369
    (_errCallback = xs.Tools.Net.createRequestEndWrappedFunc("serverList_fail", _errCallback, function() {
    // source line 1103, bytecode pc 32
    xs.Tools.Statistic.event_enter("serverList_fail0");
}, function() {
    // source line 1106, bytecode pc 32
    xs.Tools.Statistic.event_enter("serverList_fail1");
}));
    // source line 1117, bytecode pc 476
    xs.Views.Mgr.reqUrl((("" + xs.Cfg.Url.ServerAddrsMap.NormalServer.domain) + xs.Cfg.Url.GetServerList), _param, _callback, _errCallback, null, true, "requestGetServerList");
});
// source line 1124, bytecode pc 2931
(xs.Tools.Net.requestQuickBuy = function(param, callback, target) {
    var _param, currencyType, price;
    // source line 1125, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1126, bytecode pc 43
    (_param.forcepush = true);
    // source line 1127, bytecode pc 55
    (currencyType = param.currency_type);
    // source line 1128, bytecode pc 67
    (price = param.disCountPrice);
    if ((price > xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao())) {
        // source line 1130, bytecode pc 161
        xs.Tools.UI.showGoldNotEnough();
        // source line 1131, bytecode pc 163
        return void 0;
    }
    // source line 1134, bytecode pc 246
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.QuickBuy, _param, callback.bind(target), null, null, null, "requestQuickBuy");
});
// source line 1138, bytecode pc 2957
(xs.Tools.Net.requestRemoveObject = function(param, callback, target) {
    var _param;
    // source line 1139, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1140, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.RemoveObject, _param, callback.bind(target), null, null, null, "requestRemoveObject");
});
// source line 1144, bytecode pc 2983
(xs.Tools.Net.requestGeneralSelect = function(param, callback, target) {
    var _param;
    // source line 1145, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1146, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GeneralSelect, _param, callback.bind(target), null, null, null, "requestGeneralSelect");
});
// source line 1150, bytecode pc 3009
(xs.Tools.Net.requestOtherPlayerData = function(param, callback, target) {
    var _param;
    // source line 1151, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1154, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.OtherPlayerData, _param, callback.bind(target), null, null, null, "requestOtherPlayerData");
});
// source line 1157, bytecode pc 3035
(xs.Tools.Net.requestInterOtherPlayerData = function(param, callback, target) {
    var _param;
    // source line 1158, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1159, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.InterOtherPlayerData, _param, callback.bind(target), null, null, null, "requestInterOtherPlayerData");
});
// source line 1162, bytecode pc 3061
(xs.Tools.Net.requestLocalInterOtherPlayerData = function(param, callback, target) {
    var _param;
    // source line 1163, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1164, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalInterOtherPlayerData, _param, callback.bind(target), null, null, null, "requestLocalInterOtherPlayerData");
});
// source line 1168, bytecode pc 3087
(xs.Tools.Net.requestChargeItemList = function(param, callback, target) {
    var _param;
    // source line 1169, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1170, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.ChargeItemList, _param, callback.bind(target), null, null, null, "requestChargeItemList");
});
// source line 1174, bytecode pc 3113
(xs.Tools.Net.requestCreateOrder = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1175, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1176, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.CreateOrder, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestCreateOrder");
});
// source line 1180, bytecode pc 3139
(xs.Tools.Net.postPaySucessNotify = function(param, callback, target) {
    var _param;
    // source line 1181, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1182, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.PostPaySucessNotify, _param, callback.bind(target), null, null, null, "postPaySucessNotify");
});
// source line 1186, bytecode pc 3165
(xs.Tools.Net.requestCheckTransactionReceipt = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1187, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1188, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.CheckTransactionReceipt, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestCheckTransactionReceipt");
});
// source line 1192, bytecode pc 3191
(xs.Tools.Net.requestOrderStatus = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1193, bytecode pc 9
    (param.email_push = true);
    // source line 1194, bytecode pc 43
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1195, bytecode pc 143
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.CheckPayStatus, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestOrderStatus");
});
// source line 1199, bytecode pc 3217
(xs.Tools.Net.requestRefineEquip = function(param, callback, target) {
    var _param;
    // source line 1200, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1201, bytecode pc 43
    (_param.forcepush = true);
    // source line 1202, bytecode pc 126
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.RefineEquip, _param, callback.bind(target), null, null, null, "requestRefineEquip");
});
// source line 1207, bytecode pc 3243
(xs.Tools.Net.requestBindingBFAccount = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1208, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1217, bytecode pc 170
    xs.Views.Mgr.reqUrl((("" + xs.Cfg.Url.ServerAddrsMap.NormalServer.domain) + xs.Cfg.Url.BindingBFAccount), _param, callback.bind(target), errCallBack.bind(target), null, true, "requestBindingBFAccount");
});
// source line 1222, bytecode pc 3269
(xs.Tools.Net.requestBindingFBAccount = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1223, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1232, bytecode pc 170
    xs.Views.Mgr.reqUrl((("" + xs.Cfg.Url.ServerAddrsMap.NormalServer.domain) + xs.Cfg.Url.BindingFBAccount), _param, callback.bind(target), errCallBack.bind(target), null, true, "requestBindingFBAccount");
});
// source line 1237, bytecode pc 3295
(xs.Tools.Net.requestBindingEasyAccount = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1238, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1247, bytecode pc 170
    xs.Views.Mgr.reqUrl((("" + xs.Cfg.Url.ServerAddrsMap.NormalServer.domain) + xs.Cfg.Url.BindingEasyAccount), _param, callback.bind(target), errCallBack.bind(target), null, true, "requestBindingFBAccount");
});
// source line 1252, bytecode pc 3321
(xs.Tools.Net.requestCreateUnion = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1253, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1254, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.createUnion, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestCreateUnion");
});
// source line 1258, bytecode pc 3347
(xs.Tools.Net.requestRecordPhoneNum = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1259, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1268, bytecode pc 170
    xs.Views.Mgr.reqUrl((("" + xs.Cfg.Url.ServerAddrsMap.NormalServer.domain) + xs.Cfg.Url.RecordPhoneNum), _param, callback.bind(target), callback.bind(target), null, true, "requestRecordPhoneNum");
});
// source line 1277, bytecode pc 3373
(xs.Tools.Net.requestSGSConfigForTest = function(params, callback, target) {
    var param, directoryPath, _resCode, jsOrJsc, planDatePrefix, mPorName, filepath, url;
    // source line 1284, bytecode pc 18
    (param = (params || {}));
    // source line 1285, bytecode pc 29
    (directoryPath = null);
    // source line 1293, bytecode pc 76
    (_resCode = xs.parseInt(xs.Tools.Jsb.getOriResCode()));
    if ((_resCode <= 286)) {
        // source line 1295, bytecode pc 97
        (_resCode = "");
    }
    // source line 1298, bytecode pc 106
    (jsOrJsc = "data");
    if (xs.release) {
        // source line 1300, bytecode pc 130
        (jsOrJsc = "data_jsc");
    }
    // source line 1302, bytecode pc 139
    (planDatePrefix = "");
    // source line 1303, bytecode pc 169
    (mPorName = xsc.Tools.ProductSys.getArea());
    if ((mPorName == xsc.Const_Area_TW)) {
        // source line 1305, bytecode pc 197
        (planDatePrefix = "tw");
    } else {
        if ((mPorName == xsc.Const_Area_CN)) {
            // source line 1307, bytecode pc 230
            (planDatePrefix = "cn");
        } else {
            // source line 1310, bytecode pc 258
            xs.error("no find project name!");
        }
    }
    // source line 1313, bytecode pc 342
    xs.JsbConnecter.getInstance().invoke("Cfg", "mkdir", (cc.FileUtils.getInstance().getWritablePath() + "Sanguosha"));
    // source line 1314, bytecode pc 430
    xs.JsbConnecter.getInstance().invoke("Cfg", "mkdir", ((cc.FileUtils.getInstance().getWritablePath() + "Sanguosha/ExcuteDir") + _resCode));
    // source line 1315, bytecode pc 528
    xs.JsbConnecter.getInstance().invoke("Cfg", "mkdir", ((((cc.FileUtils.getInstance().getWritablePath() + "Sanguosha/ExcuteDir") + _resCode) + "/") + jsOrJsc));
    // source line 1316, bytecode pc 636
    xs.JsbConnecter.getInstance().invoke("Cfg", "mkdir", ((((((cc.FileUtils.getInstance().getWritablePath() + "Sanguosha/ExcuteDir") + _resCode) + "/") + jsOrJsc) + "/") + planDatePrefix));
    // source line 1317, bytecode pc 750
    xs.JsbConnecter.getInstance().invoke("Cfg", "mkdir", (((((((cc.FileUtils.getInstance().getWritablePath() + "Sanguosha/ExcuteDir") + _resCode) + "/") + jsOrJsc) + "/") + planDatePrefix) + "/plan"));
    // source line 1319, bytecode pc 828
    (directoryPath = (((((((cc.FileUtils.getInstance().getWritablePath() + "Sanguosha/ExcuteDir") + _resCode) + "/") + jsOrJsc) + "/") + planDatePrefix) + "/plan"));
    // source line 1321, bytecode pc 853
    (filepath = (directoryPath + "/download.zip"));
    // source line 1323, bytecode pc 876
    (url = (param.url || "http://10.225.254.48:8090/sanguosha_new"));
    // source line 1324, bytecode pc 917
    (url = (((url + "/?do=map.getConfig&data={\"is_download\":\"1\",\"time\":") + new Date().getTime()) + "}"));
    // source line 1325, bytecode pc 944
    xs.log_zhz(("Download Url is:" + url));
    // source line 1329, bytecode pc 971
    xs.Views.Mgr.displayLoadingLayer();
    // source line 1357, bytecode pc 1026
    xs.Utils.Net.reqAsync(url, function(data) {
    var params, result;
    // source line 1334, bytecode pc 26
    xs.Views.Mgr.dismissLoadingLayer();
    // source line 1336, bytecode pc 59
    xs.log(("Download is all right," + filepath));
    // source line 1337, bytecode pc 84
    data.writeDataToFile(filepath);
    // source line 1339, bytecode pc 117
    xs.log("filepath ", filepath);
    // source line 1340, bytecode pc 150
    xs.log("directoryPath ", directoryPath);
    // source line 1341, bytecode pc 179
    (params = ((filepath + "|") + directoryPath));
    // source line 1344, bytecode pc 231
    (result = xs.JsbConnecter.getInstance().invoke("Cfg", "unZipFile", params));
    if ((result == "true")) {
        // source line 1346, bytecode pc 268
        xs.log("unZipFile success");
        // source line 1347, bytecode pc 328
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_224"));
    } else {
        // source line 1349, bytecode pc 356
        xs.log("unZipFile fail");
        // source line 1350, bytecode pc 416
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_225"));
    }
}, function() {
    // source line 1354, bytecode pc 26
    xs.Views.Mgr.dismissLoadingLayer();
    // source line 1355, bytecode pc 86
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_226"));
}, "GET", "arraybuffer");
});
// source line 1364, bytecode pc 3399
(xs.Tools.Net.requestSGSConfig = function(params, callback, errCallBack, target) {
    var param, directoryPath, _resCode, jsOrJsc, planDatePrefix, mPorName, filepath, url;
    // source line 1367, bytecode pc 18
    (param = (params || {}));
    // source line 1368, bytecode pc 29
    (directoryPath = null);
    // source line 1370, bytecode pc 76
    (_resCode = xs.parseInt(xs.Tools.Jsb.getOriResCode()));
    if ((_resCode <= 286)) {
        // source line 1373, bytecode pc 97
        (_resCode = "");
    }
    // source line 1376, bytecode pc 106
    (jsOrJsc = "");
    if (xs.release) {
        // source line 1378, bytecode pc 130
        (jsOrJsc = "_jsc");
    }
    // source line 1380, bytecode pc 139
    (planDatePrefix = "");
    // source line 1381, bytecode pc 169
    (mPorName = xsc.Tools.ProductSys.getArea());
    if ((mPorName == xsc.Const_Area_TW)) {
        // source line 1383, bytecode pc 197
        (planDatePrefix = "data_tw");
    } else {
        if ((mPorName == xsc.Const_Area_CN)) {
            // source line 1385, bytecode pc 230
            (planDatePrefix = "data_cn");
        } else {
            // source line 1388, bytecode pc 258
            xs.error("no find project name!");
        }
    }
    // source line 1390, bytecode pc 269
    (planDatePrefix = (planDatePrefix + jsOrJsc));
    // source line 1392, bytecode pc 353
    xs.JsbConnecter.getInstance().invoke("Cfg", "mkdir", (cc.FileUtils.getInstance().getWritablePath() + "Sanguosha"));
    // source line 1393, bytecode pc 441
    xs.JsbConnecter.getInstance().invoke("Cfg", "mkdir", ((cc.FileUtils.getInstance().getWritablePath() + "Sanguosha/ExcuteDir") + _resCode));
    // source line 1394, bytecode pc 539
    xs.JsbConnecter.getInstance().invoke("Cfg", "mkdir", ((((cc.FileUtils.getInstance().getWritablePath() + "Sanguosha/ExcuteDir") + _resCode) + "/") + planDatePrefix));
    // source line 1395, bytecode pc 643
    xs.JsbConnecter.getInstance().invoke("Cfg", "mkdir", (((((cc.FileUtils.getInstance().getWritablePath() + "Sanguosha/ExcuteDir") + _resCode) + "/") + planDatePrefix) + "/plan"));
    // source line 1397, bytecode pc 711
    (directoryPath = (((((cc.FileUtils.getInstance().getWritablePath() + "Sanguosha/ExcuteDir") + _resCode) + "/") + planDatePrefix) + "/plan"));
    // source line 1401, bytecode pc 736
    (filepath = (directoryPath + "/download.zip"));
    // source line 1403, bytecode pc 792
    (url = ((("http://" + xs.Profile.UserCfg.getGameAddr().domain) + "/") + param.download_url));
    // source line 1404, bytecode pc 819
    xs.log(("Download Url is:" + url));
    // source line 1406, bytecode pc 846
    xs.Views.Mgr.displayLoadingLayer();
    // source line 1436, bytecode pc 901
    xs.Utils.Net.reqAsync(url, function(data) {
    var params, result;
    // source line 1411, bytecode pc 26
    xs.Views.Mgr.dismissLoadingLayer();
    // source line 1413, bytecode pc 59
    xs.log(("Download is all right," + filepath));
    // source line 1414, bytecode pc 84
    data.writeDataToFile(filepath);
    // source line 1416, bytecode pc 117
    xs.log("filepath ", filepath);
    // source line 1417, bytecode pc 150
    xs.log("directoryPath ", directoryPath);
    // source line 1418, bytecode pc 179
    (params = ((filepath + "|") + directoryPath));
    // source line 1421, bytecode pc 231
    (result = xs.JsbConnecter.getInstance().invoke("Cfg", "unZipFile", params));
    if ((result == "true")) {
        // source line 1423, bytecode pc 268
        xs.log("unZipFile success");
        // source line 1424, bytecode pc 328
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_227"));
    } else {
        // source line 1426, bytecode pc 356
        xs.log("unZipFile fail");
        // source line 1427, bytecode pc 416
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_228"));
    }
    // source line 1429, bytecode pc 431
    callback();
}, function() {
    // source line 1432, bytecode pc 26
    xs.Views.Mgr.dismissLoadingLayer();
    // source line 1433, bytecode pc 86
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_229"));
    // source line 1434, bytecode pc 101
    errCallBack();
}, "GET", "arraybuffer");
});
// source line 1444, bytecode pc 3425
(xs.Tools.Net.requestCheckWanPuActive = function() {
    if (xsc.Tools.AccountSys.isUsingWanPu()) {
        if ((xs.isWanPuActive == false)) {
            // source line 1476, bytecode pc 364
            xs.Views.Mgr.reqUrl((("" + xs.Cfg.Url.ServerAddrsMap.WanPu.domain) + xs.Cfg.Url.GetIsWanPuActiveFromServer), {
    udid: xs.Tools.Jsb.getMacAddress(),
    app: xsc.Tools.PaySys.getAppStoreId(),
    idfa: xs.Tools.Jsb.getIDFA(),
    openudid: xs.Tools.Jsb.getOpenUDID(),
    level: xs.gd_mgr.getInstance().Player.getPlayer().getPlayerLevel()
}, function() {
    // source line 1465, bytecode pc 22
    xs.log("万普->已激活");
    // source line 1466, bytecode pc 34
    (xs.isWanPuActive = true);
    // source line 1467, bytecode pc 36
    return true;
}.bind(this), function() {
    // source line 1470, bytecode pc 22
    xs.log("万普->未激活");
    // source line 1471, bytecode pc 34
    (xs.isWanPuActive = false);
    // source line 1472, bytecode pc 36
    return true;
}.bind(this), false, true, "requestCheckWanPuActive");
        }
    }
});
// source line 1483, bytecode pc 3451
(xs.Tools.Net.requestGeTuiSave = function() {
    // source line 1507, bytecode pc 506
    xs.Views.Mgr.reqUrl((("" + xs.Cfg.Url.ServerAddrsMap.GeTui.domain) + xs.Cfg.Url.GeTuiSave), {
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    server_id: xs.Profile.GameData.Player.g_serverId,
    user_level: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel(),
    user_vip_level: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerVipLevel(),
    user_last_login_time: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLastLoginTime(),
    client_id: xs.JsbConnecter.getInstance().invoke("GlobalMethod", "getGeTuiCID", ""),
    product_line: xsc.app_indentify,
    account_channel: xsc.app_channel
}, function() {
    // source line 1498, bytecode pc 22
    xs.log_xjf("个推信息已提交");
    // source line 1499, bytecode pc 24
    return true;
}.bind(this), function() {
    // source line 1502, bytecode pc 22
    xs.log_xjf("个推信息未提交!");
    // source line 1503, bytecode pc 24
    return true;
}.bind(this), false, true, "requestGeTuiSave");
});
// source line 1512, bytecode pc 3477
(xs.Tools.Net.requestGetUnionInfo = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1513, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1514, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.getUnionInfo, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGetUnionInfo");
});
// source line 1518, bytecode pc 3503
(xs.Tools.Net.requestUnionCombatSignUp = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1519, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1520, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.applyUnionWar, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestUnionCombatSignUp");
});
// source line 1524, bytecode pc 3529
(xs.Tools.Net.requestChgUnionSign = function(param, callback, target) {
    var _param;
    // source line 1525, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1526, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.chgUnionSign, _param, callback.bind(target), null, null, null, "requestChgUnionSign");
});
// source line 1530, bytecode pc 3555
(xs.Tools.Net.requestChgUnionNotice = function(param, callback, target) {
    var _param;
    // source line 1531, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1532, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.chgUnionNotice, _param, callback.bind(target), null, null, null, "requestChgUnionNotice");
});
// source line 1536, bytecode pc 3581
(xs.Tools.Net.requestExitUnion = function(param, callback, target) {
    var _param;
    // source line 1537, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1538, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.exitUnion, _param, callback.bind(target), null, null, null, "requestExitUnion");
});
// source line 1542, bytecode pc 3607
(xs.Tools.Net.requestGetDonateInfo = function(param, callback, target) {
    var _param;
    // source line 1543, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1544, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.getDonateInfo, _param, callback.bind(target), null, null, null, "requestGetDonateInfo");
});
// source line 1548, bytecode pc 3633
(xs.Tools.Net.requestDonate = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1549, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1550, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.donate, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestDonate");
});
// source line 1554, bytecode pc 3659
(xs.Tools.Net.requestTaskGetList = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1555, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1556, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.taskGetList, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestTaskGetList");
});
// source line 1560, bytecode pc 3685
(xs.Tools.Net.requestTaskMultiRecieve = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1561, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1562, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.taskMultiRecieve, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestTaskMultiRecieve");
});
// source line 1566, bytecode pc 3711
(xs.Tools.Net.requestTaskRecieve = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1567, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1568, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.taskRecieve, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestTaskRecieve");
});
// source line 1572, bytecode pc 3737
(xs.Tools.Net.requestActivateBuddyPosition = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1573, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1574, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.activateBuddyPosition, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestActivateBuddyPosition");
});
// source line 1578, bytecode pc 3763
(xs.Tools.Net.requestSetBuddy = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1579, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1580, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.setBuddy, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestSetBuddy");
});
// source line 1584, bytecode pc 3789
(xs.Tools.Net.requestGetBattleFormation = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1585, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1586, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.getBattleFormation, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGetBattleFormation");
});
// source line 1590, bytecode pc 3815
(xs.Tools.Net.requestGetEncounterInfo = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1591, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1592, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.getEncounterInfo, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGetEncounterInfo");
});
// source line 1596, bytecode pc 3841
(xs.Tools.Net.requestSetBattleFormation = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1597, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1598, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.setBattleFormation, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestSetBattleFormation");
});
// source line 1602, bytecode pc 3867
(xs.Tools.Net.requestGetUnionWarFightingProcess = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1603, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1604, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.getFightingProcess, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGetUnionWarFightingProcess");
});
// source line 1608, bytecode pc 3893
(xs.Tools.Net.requestGetUnionActvieList = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1609, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1610, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.getUnionActvieList, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGetUnionActvieList");
});
// source line 1615, bytecode pc 3919
(xs.Tools.Net.requestFriendFight = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1616, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1617, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.friendFight, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestFriendFight");
});
// source line 1621, bytecode pc 3945
(xs.Tools.Net.requestFightingDetails = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1622, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1623, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.getFightingDetails, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestFightingDetails");
});
// source line 1627, bytecode pc 3971
(xs.Tools.Net.requestAllotDepot = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1628, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1629, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.allotDepot, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestAllotDepot");
});
// source line 1633, bytecode pc 3997
(xs.Tools.Net.requestGemsHoleLock = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1634, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1635, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.gemsHoleLock, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGemsHoleLock");
});
// source line 1639, bytecode pc 4023
(xs.Tools.Net.requestGemsHoleUnLock = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1640, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1641, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.gemsHoleUnLock, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGemsHoleUnLock");
});
// source line 1645, bytecode pc 4049
(xs.Tools.Net.requestGemsSophistication = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1646, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1647, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.gemsSophistication, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGemsSophistication");
});
// source line 1651, bytecode pc 4075
(xs.Tools.Net.requestGemsInset = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1652, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1653, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.gemsInset, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGemsInset");
});
// source line 1657, bytecode pc 4101
(xs.Tools.Net.requestGemsRemove = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1658, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1659, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.gemsRemove, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGemsRemove");
});
// source line 1662, bytecode pc 4127
(xs.Tools.Net.requestGemsPunch = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1663, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1664, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.gemsPunch, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGemsPunch");
});
// source line 1667, bytecode pc 4153
(xs.Tools.Net.requestGemsCompose = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1668, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1669, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.gemsCompose, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGemsCompose");
});
// source line 1674, bytecode pc 4179
(xs.Tools.Net.requestGemsInherit = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1675, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1676, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.gemInherit, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGemsInherit");
});
// source line 1681, bytecode pc 4205
(xs.Tools.Net.requestInterBuyFightTimes = function(param, callback, target) {
    var _param;
    // source line 1682, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1683, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.InterBuyFightTimes, _param, callback.bind(target), null, null, null, "requestInterBuyFightTimes");
});
// source line 1686, bytecode pc 4231
(xs.Tools.Net.requestInterGetMatchs = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1687, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1688, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.InterGetMatchs, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestInterGetMatchs");
});
// source line 1691, bytecode pc 4257
(xs.Tools.Net.requestWorshipEntry = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1692, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1693, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.worshipEntry, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestWorshipEntry");
});
// source line 1696, bytecode pc 4283
(xs.Tools.Net.requestWorship = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1697, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1698, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.worship, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestWorship");
});
// source line 1702, bytecode pc 4309
(xs.Tools.Net.requestGetRewardList = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1703, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1704, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.rewardList, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGetRewardList");
});
// source line 1708, bytecode pc 4335
(xs.Tools.Net.requestBuyReward = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1709, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1710, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.buyReward, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestBuyReward");
});
// source line 1714, bytecode pc 4361
(xs.Tools.Net.requestHangReward = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1715, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1716, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.hangReward, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestHangReward");
});
// source line 1719, bytecode pc 4387
(xs.Tools.Net.requestInterServiceMainInfor = function(param, callback, target) {
    var _param;
    // source line 1720, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1721, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.InterServiceMainInfor, _param, callback.bind(target), null, null, null, "requestInterServiceMainInfor");
});
// source line 1724, bytecode pc 4413
(xs.Tools.Net.requestInterPointsExchange = function(param, callback, target) {
    var _param;
    // source line 1725, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1726, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.InterPointsExchange, _param, callback.bind(target), null, null, null, "requestInterPointsExchange");
});
// source line 1729, bytecode pc 4439
(xs.Tools.Net.requestInterServiceFight = function(param, callback, errBack, target) {
    var _param;
    // source line 1730, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1731, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.InterServiceFight, _param, callback.bind(target), errBack.bind(target), null, null, "requestInterServiceFight");
});
// source line 1734, bytecode pc 4465
(xs.Tools.Net.requestInterPointsExchangeList = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1735, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1736, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.InterPointsExchangeList, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestInterPointsExchangeList");
});
// source line 1742, bytecode pc 4491
(xs.Tools.Net.requestLocalInterBuyFightTimes = function(param, callback, target) {
    var _param;
    // source line 1743, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1744, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalInterBuyFightTimes, _param, callback.bind(target), null, null, null, "requestLocalInterBuyFightTimes");
});
// source line 1747, bytecode pc 4517
(xs.Tools.Net.requestLocalInterGetMatchs = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1748, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1749, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalInterGetMatchs, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestLocalInterGetMatchs");
});
// source line 1752, bytecode pc 4543
(xs.Tools.Net.requestLocalWorshipEntry = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1753, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1754, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalworshipEntry, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestLocalWorshipEntry");
});
// source line 1757, bytecode pc 4569
(xs.Tools.Net.requestLocalWorship = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1758, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1759, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.Localworship, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestLocalWorship");
});
// source line 1762, bytecode pc 4595
(xs.Tools.Net.requestLocalGetRewardList = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1763, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1764, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalrewardList, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestLocalGetRewardList");
});
// source line 1767, bytecode pc 4621
(xs.Tools.Net.requestLocalBuyReward = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1768, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1769, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalbuyReward, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestLocalBuyReward");
});
// source line 1772, bytecode pc 4647
(xs.Tools.Net.requestLocalHangReward = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1773, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1774, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalhangReward, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestLocalHangReward");
});
// source line 1777, bytecode pc 4673
(xs.Tools.Net.requestLocalInterServiceMainInfor = function(param, callback, target) {
    var _param;
    // source line 1778, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1779, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalInterServiceMainInfor, _param, callback.bind(target), null, null, null, "requestLocalInterServiceMainInfor");
});
// source line 1782, bytecode pc 4699
(xs.Tools.Net.requestLocalInterPointsExchange = function(param, callback, target) {
    var _param;
    // source line 1783, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1784, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalInterPointsExchange, _param, callback.bind(target), null, null, null, "requestLocalInterPointsExchange");
});
// source line 1787, bytecode pc 4725
(xs.Tools.Net.requestLocalInterServiceFight = function(param, callback, errBack, target) {
    var _param;
    // source line 1788, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1789, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalInterServiceFight, _param, callback.bind(target), errBack.bind(target), null, null, "requestLocalInterServiceFight");
});
// source line 1792, bytecode pc 4751
(xs.Tools.Net.requestLocalInterPointsExchangeList = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1793, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1794, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalInterPointsExchangeList, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestLocalInterPointsExchangeList");
});
// source line 1800, bytecode pc 4777
(xs.Tools.Net.requestOpenMiracleWeapon = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1801, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1802, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.OpenMiracleWeapon, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestOpenMiracleWeapon");
});
// source line 1805, bytecode pc 4803
(xs.Tools.Net.requestMiracleWeaponForge = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1806, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1807, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.MiracleWeaponForge, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestMiracleWeaponForge");
});
// source line 1810, bytecode pc 4829
(xs.Tools.Net.requestOthersMiracleWeapon = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1811, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1812, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.OthersMiracleWeapon, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestOthersMiracleWeapon");
});
// source line 1818, bytecode pc 4855
(xs.Tools.Net.requestDecisiveBattleMainInfor = function(param, local, callback, errCallBack, target) {
    var _param;
    // source line 1819, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    if (local) {
        // source line 1821, bytecode pc 141
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalDecisiveBattleMainInfor, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestDecisiveBattleMainInfor");
    } else {
        // source line 1823, bytecode pc 246
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.DecisiveBattleMainInfor, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestDecisiveBattleMainInfor");
    }
});
// source line 1827, bytecode pc 4881
(xs.Tools.Net.requestDecisiveBattleSupportRank = function(param, local, callback, target) {
    var _param;
    // source line 1828, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    if (local) {
        // source line 1830, bytecode pc 124
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalDecisiveBattleSupportRank, _param, callback.bind(target), null, null, null, "requestDecisiveBattleSupportRank");
    } else {
        // source line 1832, bytecode pc 212
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.DecisiveBattleSupportRank, _param, callback.bind(target), null, null, null, "requestDecisiveBattleSupportRank");
    }
});
// source line 1836, bytecode pc 4907
(xs.Tools.Net.requestDecisiveBattleRefreshTeam = function(param, local, callback, target) {
    var _param;
    // source line 1837, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    if (local) {
        // source line 1839, bytecode pc 124
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalDecisiveRefreshTeam, _param, callback.bind(target), null, null, null, "requestDecisiveBattleRefreshTeam");
    } else {
        // source line 1841, bytecode pc 212
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.DecisiveRefreshTeam, _param, callback.bind(target), null, null, null, "requestDecisiveBattleRefreshTeam");
    }
});
// source line 1845, bytecode pc 4933
(xs.Tools.Net.requestDecisiveBattleSupportRecord = function(param, local, callback, target) {
    var _param;
    // source line 1846, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    if (local) {
        // source line 1848, bytecode pc 124
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalDecisiveBattleSupportRecord, _param, callback.bind(target), null, null, null, "requestDecisiveBattleSupportRecord");
    } else {
        // source line 1850, bytecode pc 212
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.DecisiveBattleSupportRecord, _param, callback.bind(target), null, null, null, "requestDecisiveBattleSupportRecord");
    }
});
// source line 1854, bytecode pc 4959
(xs.Tools.Net.requestDecisivePointsExchangeList = function(param, local, callback, target) {
    var _param;
    // source line 1855, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    if (local) {
        // source line 1857, bytecode pc 124
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalDecisiveBattlePointsExchangeList, _param, callback.bind(target), null, null, null, "requestDecisivePointsExchangeList");
    } else {
        // source line 1859, bytecode pc 212
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.DecisiveBattlePointsExchangeList, _param, callback.bind(target), null, null, null, "requestDecisivePointsExchangeList");
    }
});
// source line 1863, bytecode pc 4985
(xs.Tools.Net.requestDecisivePointsExchange = function(param, local, callback, target) {
    var _param;
    // source line 1864, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    if (local) {
        // source line 1866, bytecode pc 124
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalDecisivePointsExchange, _param, callback.bind(target), null, null, null, "requestDecisivePointsExchange");
    } else {
        // source line 1868, bytecode pc 212
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.DecisivePointsExchange, _param, callback.bind(target), null, null, null, "requestDecisivePointsExchange");
    }
});
// source line 1872, bytecode pc 5011
(xs.Tools.Net.requestDecisiveOtherPlayerData = function(param, local, callback, target) {
    var _param;
    // source line 1873, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    if (local) {
        // source line 1875, bytecode pc 124
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalDecisiveOtherPlayerData, _param, callback.bind(target), null, null, null, "requestDecisiveOtherPlayerData");
    } else {
        // source line 1877, bytecode pc 212
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.DecisiveOtherPlayerData, _param, callback.bind(target), null, null, null, "requestDecisiveOtherPlayerData");
    }
});
// source line 1882, bytecode pc 5037
(xs.Tools.Net.DecisiveGetPlayerList = function(param, local, callback, target) {
    var _param;
    // source line 1883, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    if (local) {
        // source line 1885, bytecode pc 124
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalDecisiveGetPlayerList, _param, callback.bind(target), null, null, null, "requestDecisiveOtherPlayerData");
    } else {
        // source line 1887, bytecode pc 212
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.DecisiveGetPlayerList, _param, callback.bind(target), null, null, null, "requestDecisiveOtherPlayerData");
    }
});
// source line 1892, bytecode pc 5063
(xs.Tools.Net.DecisiveGetOverview = function(param, local, callback, target) {
    var _param;
    // source line 1893, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    if (local) {
        // source line 1895, bytecode pc 124
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalDecisiveGetOverview, _param, callback.bind(target), null, null, null, "requestDecisiveOtherPlayerData");
    } else {
        // source line 1897, bytecode pc 212
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.DecisiveGetOverview, _param, callback.bind(target), null, null, null, "requestDecisiveOtherPlayerData");
    }
});
// source line 1901, bytecode pc 5089
(xs.Tools.Net.DecisiveSupportPlayer = function(param, local, callback, target) {
    var _param;
    // source line 1902, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    if (local) {
        // source line 1904, bytecode pc 124
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalDecisiveSupportPlayer, _param, callback.bind(target), null, null, null, "requestDecisiveOtherPlayerData");
    } else {
        // source line 1906, bytecode pc 212
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.DecisiveSupportPlayer, _param, callback.bind(target), null, null, null, "requestDecisiveOtherPlayerData");
    }
});
// source line 1910, bytecode pc 5115
(xs.Tools.Net.requestDecisiveTop128 = function(param, local, callback, errCallBack, target) {
    var _param;
    // source line 1911, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    if (local) {
        // source line 1913, bytecode pc 141
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalDecisiveTop128, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestDecisiveTop128");
    } else {
        // source line 1915, bytecode pc 246
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.DecisiveTop128, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestDecisiveTop128");
    }
});
// source line 1919, bytecode pc 5141
(xs.Tools.Net.requestDecisiveViewingFight = function(param, local, callback, errCallBack, target) {
    var _param;
    // source line 1920, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    if (local) {
        // source line 1922, bytecode pc 141
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.LocalDecisiveViewingFight, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestDecisiveViewingFight");
    } else {
        // source line 1924, bytecode pc 246
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.DecisiveViewingFight, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestDecisiveViewingFight");
    }
});
// source line 1930, bytecode pc 5167
(xs.Tools.Net.requestGoddessGoToFight = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1931, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1932, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GoddessGoToFight, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGoddessGoToFight");
});
// source line 1935, bytecode pc 5193
(xs.Tools.Net.requestGoddessCancelFight = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1936, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1937, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GoddessCancelToFight, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGoddessCancelFight");
});
// source line 1940, bytecode pc 5219
(xs.Tools.Net.requestGoddessChangeSkin = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1941, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1942, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GoddessChangeSkin, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestGoddessChangeSkin");
});
// source line 1946, bytecode pc 5245
(xs.Tools.Net.requestHulaoMain = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1947, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1948, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.HulaoMain, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestHulaoMain");
});
// source line 1951, bytecode pc 5271
(xs.Tools.Net.requestHulaoRecieve = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1952, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1953, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.HulaoRecieve, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestHulaoRecieve");
});
// source line 1956, bytecode pc 5297
(xs.Tools.Net.requestHuLaoBattleLineUp = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1957, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1958, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.HuLaoBattleLineUp, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestHuLaoBattleLineUp");
});
// source line 1961, bytecode pc 5323
(xs.Tools.Net.requestHuLaoBattleGoToFight = function(param, callback, errCallBack, target) {
    var _param;
    // source line 1962, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1963, bytecode pc 43
    (_param.forcePush = true);
    // source line 1964, bytecode pc 143
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.HuLaoBattleGoToFight, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestHuLaoBattleGoToFight");
});
// source line 1968, bytecode pc 5349
(xs.Tools.Net.requestMysteryStoreInfo = function(param, callback, target) {
    var _param;
    // source line 1969, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1970, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.MysteryStoreInfo, _param, callback.bind(target), null, null, null, "requestMysteryStoreUpdate");
});
// source line 1974, bytecode pc 5375
(xs.Tools.Net.requestMysteryStoreUpdate = function(param, callback, target) {
    var _param;
    // source line 1975, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1976, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.MysteryStoreUpdate, _param, callback.bind(target), null, null, null, "requestMysteryStoreUpdate");
});
// source line 1980, bytecode pc 5401
(xs.Tools.Net.requestMysteryStoreConvert = function(param, callback, target) {
    var _param;
    // source line 1981, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1982, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.MysteryStoreConvert, _param, callback.bind(target), null, null, null, "requestMysteryStoreConvert");
});
// source line 1986, bytecode pc 5427
(xs.Tools.Net.requestJiFenDuiHuanInfo = function(param, callback, target) {
    var _param;
    // source line 1987, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1988, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.JiFenDuiHuanList, _param, callback.bind(target), null, null, null, "requestJiFenDuiHuanInfo");
});
// source line 1992, bytecode pc 5453
(xs.Tools.Net.requestYuLuInfo = function(param, callback, target) {
    var _param;
    // source line 1993, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 1994, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.YuLuList, _param, callback.bind(target), null, null, null, "requestYuLuInfo");
});
// source line 1998, bytecode pc 5479
(xs.Tools.Net.requestJiFenDuiHuanConvert = function(param, callback, target) {
    var _param;
    // source line 1999, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2000, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.JiFenDuiHuanConvert, _param, callback.bind(target), null, null, null, "requestJiFenDuiHuanConvert");
});
// source line 2004, bytecode pc 5505
(xs.Tools.Net.requestYuLuConvert = function(param, callback, target) {
    var _param;
    // source line 2005, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2006, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.YuLuConvert, _param, callback.bind(target), null, null, null, "requestYuLuConvert");
});
// source line 2010, bytecode pc 5531
(xs.Tools.Net.requestSpiritStoneInfo = function(param, callback, target) {
    var _param;
    // source line 2011, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2012, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.SpiritStoneList, _param, callback.bind(target), null, null, null, "requestSpiritStoneInfo");
});
// source line 2016, bytecode pc 5557
(xs.Tools.Net.requestSpiritStoneConvert = function(param, callback, target) {
    var _param;
    // source line 2017, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2018, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.SpiritStoneConvert, _param, callback.bind(target), null, null, null, "requestSpiritStoneConvert");
});
// source line 2022, bytecode pc 5583
(xs.Tools.Net.requestAutoPractice = function(param, callback, errCallBack, target) {
    var _param;
    // source line 2023, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2024, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.AutoPractice, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestAutoPractice");
});
// source line 2027, bytecode pc 5609
(xs.Tools.Net.requestChangeGeneralSkin = function(param, callback, errCallBack, target) {
    var _param;
    // source line 2028, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2029, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.changeGeneralSkin, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestChangeGeneralSkin");
});
// source line 2034, bytecode pc 5635
(xs.Tools.Net.requestMultiLineUpInfor = function(param, callback, errCallBack, target) {
    var _param;
    // source line 2035, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2036, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.getMultiLineUpInfor, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestMultiLineUpInfor");
});
// source line 2041, bytecode pc 5661
(xs.Tools.Net.requestUnlockOneTeam = function(param, callback, target) {
    var _param;
    // source line 2042, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2043, bytecode pc 114
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.UnlockOneTeam, _param, callback.bind(target), null, null, "requestUnlockOneTeam");
});
// source line 2047, bytecode pc 5687
(xs.Tools.Net.requestSaveOneTeamInfor = function(param, callback, target) {
    var _param;
    // source line 2048, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2049, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.SaveOneTeamInfor, _param, callback.bind(target), null, null, null, "requestSaveOneTeamInfor");
});
// source line 2053, bytecode pc 5713
(xs.Tools.Net.requestLoadOneTeamInfor = function(param, callback, target) {
    var _param;
    // source line 2054, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2055, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.LoadOneTeamInfor, _param, callback.bind(target), null, null, null, "requestLoadOneTeamInfor");
});
// source line 2060, bytecode pc 5739
(xs.Tools.Net.requestMeridiansMainInfo = function(param, callback, target) {
    var _param;
    // source line 2061, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2062, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.getMeridiansMainInfo, _param, callback.bind(target), null, null, null, "requestMeridiansMainInfo");
});
// source line 2065, bytecode pc 5765
(xs.Tools.Net.requestPracticeMeridians = function(param, callback, target) {
    var _param;
    // source line 2066, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2067, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.practiceMeridians, _param, callback.bind(target), null, null, null, "requestPracticeMeridians");
});
// source line 2070, bytecode pc 5791
(xs.Tools.Net.requestCollectMeridians = function(param, callback, target) {
    var _param;
    // source line 2071, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2072, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.collectMeridians, _param, callback.bind(target), null, null, null, "requestCollectMeridians");
});
// source line 2075, bytecode pc 5817
(xs.Tools.Net.requestLightMeridian = function(param, callback, target) {
    var _param;
    // source line 2076, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2077, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.lightMeridian, _param, callback.bind(target), null, null, null, "requestLightMeridian");
});
// source line 2080, bytecode pc 5843
(xs.Tools.Net.requestMultiLightMeridian = function(param, callback, target) {
    var _param;
    // source line 2081, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2082, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.multiLightMeridian, _param, callback.bind(target), null, null, null, "requestMultiLightMeridian");
});
// source line 2086, bytecode pc 5869
(xs.Tools.Net.requestAutonymApprove = function(param, callback, errCallBack, target) {
    var _param;
    // source line 2087, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2088, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.AutonymApprove, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestRemoveObject");
});
// source line 2092, bytecode pc 5895
(xs.Tools.Net.requestAuthenticationCode = function(param, callback, errCallBack, target) {
    var _param;
    // source line 2093, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2094, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.SMSAuthenticationCode, _param, callback.bind(target), callback.bind(target), null, null, "requestAuthenticationCode");
});
// source line 2098, bytecode pc 5921
(xs.Tools.Net.requestSaveMoblieTel = function(param, callback, errCallBack, target) {
    var _param;
    // source line 2099, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2100, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.SaveMoblieTel, _param, callback.bind(target), callback.bind(target), null, null, "requestSaveMoblieTel");
});
// source line 2106, bytecode pc 5947
(xs.Tools.Net.requestEvolutionChestList = function(param, callback, errCallBack, target) {
    var _param;
    // source line 2107, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2108, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.evolutionChestGetList, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestEvolutionChestList");
});
// source line 2112, bytecode pc 5973
(xs.Tools.Net.requestEvolutionChestRefresh = function(param, callback, errCallBack, target) {
    var _param;
    // source line 2113, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2114, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.evolutionChestRefresh, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestEvolutionChestRefresh");
});
// source line 2118, bytecode pc 5999
(xs.Tools.Net.requestEvolutionChestOpen = function(param, callback, errCallBack, target) {
    var _param;
    // source line 2119, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2120, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.evolutionChestOpen, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestEvolutionChestOpen");
});
// source line 2124, bytecode pc 6025
(xs.Tools.Net.requestEvolutionChestOpenTen = function(param, callback, errCallBack, target) {
    var _param;
    // source line 2125, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2126, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.evolutionChestOpenTen, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestEvolutionChestOpenTen");
});
// source line 2130, bytecode pc 6051
(xs.Tools.Net.requestEvolutionActive = function(param, callback, errCallBack, target) {
    var _param;
    // source line 2131, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2132, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.evolutionActive, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestEvolutionActive");
});
// source line 2136, bytecode pc 6077
(xs.Tools.Net.requestRank = function(param, callback, target) {
    var _param;
    // source line 2139, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2140, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GetRankList, _param, callback.bind(target), null, null, null, "requestRank");
});
// source line 2144, bytecode pc 6103
(xs.Tools.Net.requestLikeRank = function(param, callback, target) {
    var _param;
    // source line 2147, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2148, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.LikeRank, _param, callback.bind(target), null, null, null, "requestLikeRank");
});
// source line 2152, bytecode pc 6129
(xs.Tools.Net.requestGeneralPreviewList = function(param, callback, target) {
    var _param;
    // source line 2153, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2154, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GeneralPreviewList, _param, callback.bind(target), null, null, null, "requestGeneralPreviewList");
});
// source line 2161, bytecode pc 6155
(xs.Tools.Net.requestBeautyInit = function(param, callback, target) {
    var _param;
    // source line 2162, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2163, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.beautyInit, _param, callback.bind(target), null, null, null, "requestBeautyInit");
});
// source line 2167, bytecode pc 6181
(xs.Tools.Net.requestBeautySatrt = function(param, callback, target) {
    var _param;
    // source line 2168, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2169, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.beautySatrt, _param, callback.bind(target), null, null, null, "requestBeautySatrt");
});
// source line 2173, bytecode pc 6207
(xs.Tools.Net.requestBeautyEnd = function(param, callback, target) {
    var _param;
    // source line 2174, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2175, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.beautyEnd, _param, callback.bind(target), null, null, null, "requestBeautyEnd");
});
// source line 2179, bytecode pc 6233
(xs.Tools.Net.requestBeautyAddExp = function(param, callback, target) {
    var _param;
    // source line 2180, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2181, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.beautyAddExp, _param, callback.bind(target), null, null, null, "requestBeautyAndExp");
});
// source line 2185, bytecode pc 6259
(xs.Tools.Net.requestBeautyExchangeList = function(param, callback, target) {
    var _param;
    // source line 2186, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2187, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.beautyExchangeList, _param, callback.bind(target), null, null, null, "requestBeautyExchangeList");
});
// source line 2191, bytecode pc 6285
(xs.Tools.Net.requestBeautyExchange = function(param, callback, target) {
    var _param;
    // source line 2192, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2193, bytecode pc 116
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.beautyExchange, _param, callback.bind(target), null, null, null, "requestBeautyExchange");
});
// source line 2197, bytecode pc 6311
(xs.Tools.Net.requestSkillRefine = function(param, callback, errCallBack, target) {
    var _param;
    // source line 2198, bytecode pc 33
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 2199, bytecode pc 133
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.skillRefine, _param, callback.bind(target), errCallBack.bind(target), null, null, "requestSkillRefine");
});
