// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Player.js:1
// source line 12, bytecode pc 48
(xs.Cfg.Player = { PlayerInfo: { tiLiCD: 360, jingLiCD: 1800 } });
// source line 1035, bytecode pc 1198
(xs.Models.Player = xs.Models.Base.extend({
    name: "xs.Models.Player",
    onlineTime_cfg: { oneWarn: 3600, twoWarn: 7200, threeWarn: 10800, fiveWarn: 18000 },
    time_cfg: { fifteenMinute: 900, thirtyMinute: 1800 },
    Cfg: { GeneralId: "000001" },
    init: function() {
    var caches;
    // source line 40, bytecode pc 12
    this._super();
    // source line 42, bytecode pc 24
    (this.user_id = "");
    // source line 43, bytecode pc 36
    (this.account_uid = "");
    // source line 44, bytecode pc 48
    (this.user_nickname = "");
    // source line 45, bytecode pc 56
    (this.user_level = 1);
    // source line 46, bytecode pc 64
    (this.user_charge_count = 1);
    // source line 47, bytecode pc 72
    (this.user_vip_level = 0);
    // source line 48, bytecode pc 80
    (this.user_experience = 0);
    // source line 49, bytecode pc 88
    (this.user_coin = 0);
    // source line 50, bytecode pc 96
    (this.user_gold = 0);
    // source line 51, bytecode pc 104
    (this.user_power = 0);
    // source line 52, bytecode pc 112
    (this.user_power_date = 0);
    // source line 53, bytecode pc 120
    (this.user_energy = 0);
    // source line 54, bytecode pc 128
    (this.user_energy_date = 0);
    // source line 55, bytecode pc 136
    (this.user_sign = 0);
    // source line 56, bytecode pc 144
    (this.user_register_time = 0);
    // source line 57, bytecode pc 152
    (this.user_last_login_time = 0);
    // source line 58, bytecode pc 160
    (this.user_ability = 0);
    // source line 59, bytecode pc 168
    (this.user_map_step = 0);
    // source line 60, bytecode pc 176
    (this.user_position_step = 0);
    // source line 61, bytecode pc 184
    (this.user_elite_map_step = 0);
    // source line 62, bytecode pc 192
    (this.user_elite_position_step = 0);
    // source line 63, bytecode pc 200
    (this.user_login_days = 0);
    // source line 64, bytecode pc 208
    (this.user_count_login_days = 0);
    // source line 65, bytecode pc 216
    (this.user_shutdown = 0);
    // source line 66, bytecode pc 224
    (this.user_invite_code = 0);
    // source line 67, bytecode pc 232
    (this.user_last_login_time = 0);
    // source line 68, bytecode pc 240
    (this.user_upgrade_cfg = null);
    // source line 69, bytecode pc 252
    (this.freshman_step = "");
    // source line 71, bytecode pc 260
    (this.ladderRankSalary = 0);
    // source line 72, bytecode pc 268
    (this.user_honor = 0);
    // source line 73, bytecode pc 276
    (this.ladderChallengeTimes = 0);
    // source line 75, bytecode pc 289
    (this.item_count = {});
    // source line 77, bytecode pc 297
    (this.first_choose_general = 0);
    // source line 78, bytecode pc 305
    (this.first_wine_general = 0);
    // source line 80, bytecode pc 313
    (this.isBroadShowed = false);
    // source line 83, bytecode pc 321
    (this.coolDownTime = 0);
    // source line 84, bytecode pc 329
    (this.clearCDTimePrice = 0);
    // source line 85, bytecode pc 337
    (this.baseCDTime = 0);
    // source line 88, bytecode pc 345
    (this.unionId = 0);
    // source line 89, bytecode pc 357
    (this.unionName = "");
    // source line 90, bytecode pc 365
    (this.user_role = 0);
    // source line 91, bytecode pc 373
    (this.user_donate = 0);
    // source line 92, bytecode pc 381
    (this.donate_state = false);
    // source line 93, bytecode pc 389
    (this.donate_num = 0);
    // source line 94, bytecode pc 397
    (this.union_war_sign_up = false);
    // source line 97, bytecode pc 441
    (this._notifyCenter[xs.Constant_Notify_ModelChange_TiliQili] = xs.Utils.Notify.create());
    // source line 100, bytecode pc 459
    (caches = [ "cachePlayerUpgradeCfg" ]);
    // source line 103, bytecode pc 476
    this.registerCaches(caches);
},
    update: function(userInfo) {
    // source line 108, bytecode pc 39
    xs.Tools.Statistic.setUserLevel(this.getPlayerLevel());
    // source line 110, bytecode pc 73
    (this.timeStamp = Date.parse(new Date()));
    // source line 112, bytecode pc 88
    (this.user_id = userInfo.user_id);
    // source line 113, bytecode pc 103
    (this.account_uid = userInfo.account_uid);
    // source line 114, bytecode pc 118
    (this.user_nickname = userInfo.user_nickname);
    // source line 116, bytecode pc 162
    this.setPlayerLevel(xs.Utils.parseIntSafe(userInfo.user_level));
    // source line 117, bytecode pc 199
    (this.user_experience = xs.Utils.parseIntSafe(userInfo.user_experience));
    // source line 118, bytecode pc 236
    (this.user_charge_count = xs.Utils.parseFloatSafe(userInfo.user_charge_count));
    // source line 119, bytecode pc 273
    (this.user_vip_level = xs.Utils.parseIntSafe(userInfo.user_vip_level));
    // source line 120, bytecode pc 310
    (this.user_coin = xs.Utils.parseIntSafe(userInfo.user_coin));
    // source line 121, bytecode pc 347
    (this.user_gold = xs.Utils.parseIntSafe(userInfo.user_gold));
    // source line 122, bytecode pc 362
    (this.user_sign = userInfo.user_sign);
    // source line 124, bytecode pc 377
    (this.item_count = userInfo.item_count);
    // source line 127, bytecode pc 419
    this.assert(this.user_gold, "this.user_gold", this.user_gold, userInfo.user_gold);
    // source line 129, bytecode pc 456
    (this.user_power = xs.Utils.parseIntSafe(userInfo.user_power));
    // source line 130, bytecode pc 493
    (this._user_power_date = xs.Utils.parseIntSafe(userInfo.user_power_date));
    // source line 131, bytecode pc 506
    (this.user_power_date = this._user_power_date);
    // source line 132, bytecode pc 543
    (this.user_energy = xs.Utils.parseIntSafe(userInfo.user_energy));
    // source line 133, bytecode pc 580
    (this._user_energy_date = xs.Utils.parseIntSafe(userInfo.user_energy_date));
    // source line 134, bytecode pc 593
    (this.user_energy_date = this._user_energy_date);
    // source line 135, bytecode pc 630
    (this.gold_soul = xs.Utils.parseIntSafe(userInfo.gold_soul));
    // source line 136, bytecode pc 667
    (this.sliver_soul = xs.Utils.parseIntSafe(userInfo.sliver_soul));
    // source line 139, bytecode pc 701
    (this.timeStamp_tili = Date.parse(new Date()));
    // source line 140, bytecode pc 735
    (this.timeStamp_jinli = Date.parse(new Date()));
    // source line 141, bytecode pc 772
    (this.user_last_login_time = xs.Utils.parseIntSafe(userInfo.user_last_login_time));
    // source line 143, bytecode pc 816
    (this.user_ability_change = (xs.Utils.parseIntSafe(userInfo.user_ability) - this.user_ability));
    // source line 144, bytecode pc 853
    (this.user_ability = xs.Utils.parseIntSafe(userInfo.user_ability));
    // source line 146, bytecode pc 890
    (this.ladderRankSalary = xs.Utils.parseIntSafe(userInfo.ladder_rank_salary));
    // source line 147, bytecode pc 927
    (this.user_honor = xs.Utils.parseIntSafe(userInfo.user_honor));
    // source line 148, bytecode pc 971
    this.setLadderChallengeTimes(xs.Utils.parseIntSafe(userInfo.ladder_challenging_num));
    // source line 150, bytecode pc 986
    (this.user_map_step = userInfo.user_map_step);
    // source line 151, bytecode pc 1001
    (this.user_position_step = userInfo.user_position_step);
    // source line 152, bytecode pc 1016
    (this.user_elite_map_step = userInfo.user_elite_map_step);
    // source line 153, bytecode pc 1031
    (this.user_elite_position_step = userInfo.user_elite_position_step);
    // source line 155, bytecode pc 1061
    (this.coolDownTime = parseInt(userInfo.dungeon_cold_time));
    // source line 156, bytecode pc 1091
    (this.clearCDTimePrice = parseInt(userInfo.cd_item_price));
    // source line 157, bytecode pc 1121
    (this.baseCDTime = parseInt(userInfo.base_cold_time));
    // source line 160, bytecode pc 1158
    (this.chaosCountDown = xs.Utils.parseIntSafe(userInfo.to_danger_time));
    // source line 161, bytecode pc 1171
    (this._chaosCountDown = this.chaosCountDown);
    // source line 164, bytecode pc 1208
    (this.m_chargeYuanBao = xs.Utils.parseIntSafe(userInfo.current_charge_gold));
    // source line 166, bytecode pc 1245
    (this.m_needYuanBaoNextVip = xs.Utils.parseIntSafe(userInfo.count_charge_gold));
    // source line 169, bytecode pc 1282
    (this.freshman_step = xs.Utils.parseStringSafe(userInfo.freshman_step));
    // source line 171, bytecode pc 1319
    (this.first_choose_general = xs.Utils.parseStringSafe(userInfo.first_choose_general));
    // source line 172, bytecode pc 1356
    (this.first_wine_general = xs.Utils.parseStringSafe(userInfo.first_wine_general));
    // source line 174, bytecode pc 1371
    (this.m_isFightspeed3Unlock = userInfo.triple_speed);
    // source line 175, bytecode pc 1386
    (this.m_fightSpeed3UnlockVipLevel = userInfo.triple_speed_vip_level);
    // source line 178, bytecode pc 1430
    (this.unionId = (xs.Utils.parseIntSafe(userInfo.union_id) || 0));
    // source line 179, bytecode pc 1478
    (this.unionName = (xs.Utils.parseStringSafe(userInfo.union_name) || ""));
    // source line 180, bytecode pc 1522
    (this.user_role = (xs.Utils.parseIntSafe(userInfo.user_role) || 0));
    // source line 181, bytecode pc 1566
    (this.user_donate = (xs.Utils.parseIntSafe(userInfo.user_donate) || 0));
    // source line 182, bytecode pc 1588
    (this.donate_state = (userInfo.donate_state || false));
    // source line 183, bytecode pc 1632
    (this.donate_num = (xs.Utils.parseIntSafe(userInfo.donate_num) || 0));
    // source line 184, bytecode pc 1654
    (this.union_war_sign_up = (userInfo.union_war_sign_up || false));
    // source line 187, bytecode pc 1696
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.schedule_updateChaosCountDown);
    // source line 188, bytecode pc 1751
    xs.director.getScheduler().scheduleCallbackForTarget(this, this.schedule_updateChaosCountDown, 1, cc.REPEAT_FOREVER);
    // source line 191, bytecode pc 1793
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.schedule_updatePlayerTiLiAndJingLi);
    // source line 192, bytecode pc 1848
    xs.director.getScheduler().scheduleCallbackForTarget(this, this.schedule_updatePlayerTiLiAndJingLi, 1, cc.REPEAT_FOREVER);
    // source line 195, bytecode pc 1890
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.updetaOnlineTime);
    // source line 196, bytecode pc 1938
    xs.director.getScheduler().scheduleCallbackForTarget(this, this.updetaOnlineTime, 60, -1);
    // source line 198, bytecode pc 1951
    this.clearCache();
    // source line 199, bytecode pc 1953
    return true;
},
    isFightSpeed3_unlock: function() {
    // source line 204, bytecode pc 25
    this.log(("m_isFightspeed3Unlock " + this.m_isFightspeed3Unlock));
    // source line 206, bytecode pc 32
    return this.m_isFightspeed3Unlock;
},
    getFightSpeed3UnlockVipLevel: function() {
    // source line 210, bytecode pc 6
    return this.m_fightSpeed3UnlockVipLevel;
},
    createHeadIcon: function(viewCfg) {
    // source line 215, bytecode pc 53
    return xs.Models.General.createWithBase(this.Cfg.GeneralId).createHeadView(viewCfg);
},
    getPlayerUpgradeCfg: function() {
    if (!this.cachePlayerUpgradeCfg) {
        // source line 222, bytecode pc 57
        (this.cachePlayerUpgradeCfg = xs.Models.PlayerUpgradeCfg.createWithBase(this.getPlayerLevel()));
    }
    // source line 225, bytecode pc 64
    return this.cachePlayerUpgradeCfg;
},
    schedule_updatePlayerTiLiAndJingLi: function() {
    var maxPower, maxEnergy, curTimeStamp, timeOffset_tili, timeOffset_jinli;
    // source line 233, bytecode pc 26
    (maxPower = this.getPlayerUpgradeCfg().getMaxPower());
    // source line 234, bytecode pc 53
    (maxEnergy = this.getPlayerUpgradeCfg().getMaxEnergy());
    // source line 237, bytecode pc 84
    (curTimeStamp = Date.parse(new Date()));
    // source line 238, bytecode pc 102
    (timeOffset_tili = ((curTimeStamp - this.timeStamp_tili) / 1000));
    // source line 239, bytecode pc 120
    (timeOffset_jinli = ((curTimeStamp - this.timeStamp_jinli) / 1000));
    // source line 240, bytecode pc 160
    (this.user_power_date = (((this._user_power_date - timeOffset_tili) >= 0) ? (this._user_power_date - timeOffset_tili) : 0));
    // source line 241, bytecode pc 200
    (this.user_energy_date = (((this._user_energy_date - timeOffset_jinli) >= 0) ? (this._user_energy_date - timeOffset_jinli) : 0));
    if ((this.user_power < maxPower)) {
        // source line 244, bytecode pc 235
        this.setPlayerNextTiLiSec(this.user_power_date);
        if ((this.user_power_date <= 0)) {
            // source line 246, bytecode pc 263
            this.addPlayerCurTiLi(1);
            // source line 247, bytecode pc 302
            this.setPlayerNextTiLiSec(xs.Cfg.Player.PlayerInfo.tiLiCD);
            // source line 249, bytecode pc 336
            (this.timeStamp_tili = Date.parse(new Date()));
            // source line 250, bytecode pc 368
            (this._user_power_date = xs.Cfg.Player.PlayerInfo.tiLiCD);
        }
    } else {
        // source line 253, bytecode pc 388
        this.setPlayerNextTiLiSec(0);
    }
    if ((this.user_energy < maxEnergy)) {
        // source line 258, bytecode pc 423
        this.setPlayerNextQiLiSec(this.user_energy_date);
        if ((this.user_energy_date <= 0)) {
            // source line 260, bytecode pc 451
            this.addPlayerCurQiLi(1);
            // source line 261, bytecode pc 490
            this.setPlayerNextQiLiSec(xs.Cfg.Player.PlayerInfo.jingLiCD);
            // source line 263, bytecode pc 524
            (this.timeStamp_jinli = Date.parse(new Date()));
            // source line 264, bytecode pc 556
            (this._user_energy_date = xs.Cfg.Player.PlayerInfo.jingLiCD);
        }
    } else {
        // source line 267, bytecode pc 576
        this.setPlayerNextQiLiSec(0);
    }
    // source line 271, bytecode pc 622
    this.getNotifyCenter(xs.Constant_Notify_ModelChange_TiliQili).postNotification(xs.Constant_Notify_ModelChange_TiliQili);
},
    schedule_updateChaosCountDown: function() {
    var curTimeStamp, timeOffset;
    // source line 277, bytecode pc 30
    (curTimeStamp = Date.parse(new Date()));
    // source line 278, bytecode pc 48
    (timeOffset = ((curTimeStamp - this.timeStamp) / 1000));
    // source line 279, bytecode pc 88
    (this.chaosCountDown = (((this._chaosCountDown - timeOffset) >= 0) ? (this._chaosCountDown - timeOffset) : 0));
    if ((this.chaosCountDown > 0)) {
        // source line 282, bytecode pc 128
        this.chaosCountDown--;
    }
    // source line 286, bytecode pc 166
    xs.Utils.Notify.postNotification(xs.Constant_Notify_ModelChange_ChaosCountDown);
},
    getPlayerMapStep: function() {
    // source line 291, bytecode pc 6
    return this.user_map_step;
},
    getPlayerDungeonStep: function() {
    // source line 295, bytecode pc 6
    return this.user_position_step;
},
    getPlayerEliteMapStep: function() {
    // source line 300, bytecode pc 6
    return this.user_elite_map_step;
},
    getPlayerEliteDungeonStep: function() {
    // source line 304, bytecode pc 6
    return this.user_elite_position_step;
},
    getPlayerName: function() {
    // source line 309, bytecode pc 58
    return ((this.user_nickname.length > 8) ? (this.user_nickname.substring(0, 7) + "...") : this.user_nickname);
},
    getPlayerId: function() {
    // source line 314, bytecode pc 6
    return this.user_id;
},
    getPlayerSignature: function() {
    // source line 319, bytecode pc 6
    return this.user_sign;
},
    setPlayerLevel: function(level) {
    if ((this.user_level !== level)) {
        // source line 325, bytecode pc 24
        (this.user_level = level);
        // source line 326, bytecode pc 37
        this.clearCache();
    }
},
    getPlayerLevel: function() {
    // source line 332, bytecode pc 6
    return this.user_level;
},
    getPlayerVipLevel: function() {
    // source line 337, bytecode pc 6
    return this.user_vip_level;
},
    getPlayerNextVipLevel: function() {
    // source line 342, bytecode pc 8
    return (this.user_vip_level + 1);
},
    getPlayerAbility: function() {
    // source line 347, bytecode pc 6
    return this.user_ability;
},
    getPlayerAbilityChange: function() {
    // source line 351, bytecode pc 6
    return this.user_ability_change;
},
    getPlayerYuanBao: function() {
    // source line 355, bytecode pc 6
    return this.user_gold;
},
    getPlayerTongQian: function() {
    // source line 360, bytecode pc 6
    return this.user_coin;
},
    getPlayerTongQianToString: function() {
    if ((parseInt(this.user_coin) > 10000000000)) {
        // source line 365, bytecode pc 107
        return (parseInt((parseInt(this.user_coin) / 100000000)) + xs.Tools.String.createString("playerInfo_money_yi"));
    } else {
        if ((parseInt(this.user_coin) > 1000000)) {
            // source line 367, bytecode pc 217
            return (parseInt((parseInt(this.user_coin) / 10000)) + xs.Tools.String.createString("playerInfo_money_wan"));
        } else {
            // source line 369, bytecode pc 229
            return this.user_coin;
        }
    }
},
    getPlayerGoldSoul: function() {
    // source line 374, bytecode pc 6
    return this.gold_soul;
},
    getPlayerSilverSoul: function() {
    // source line 379, bytecode pc 6
    return this.sliver_soul;
},
    getPlayerMagatamaNum: function() {
    var item;
    // source line 385, bytecode pc 31
    (item = this.getItemByItemId(xs.Models.ItemID_Magatama));
    // source line 386, bytecode pc 54
    this.assert(item, "getPlayerMagatamaNum");
    if (item) {
        // source line 388, bytecode pc 77
        return item.getItemNum();
    }
    // source line 390, bytecode pc 79
    return 0;
},
    getPlayerGanodermaNum: function() {
    var item;
    // source line 396, bytecode pc 31
    (item = this.getItemByItemId(xs.Models.ItemID_Ganoderma));
    // source line 397, bytecode pc 54
    this.assert(item, "getPlayerGanodermaNum");
    if (item) {
        // source line 399, bytecode pc 77
        return item.getItemNum();
    }
    // source line 401, bytecode pc 79
    return 0;
},
    addPlayerCurTiLi: function(add) {
    // source line 405, bytecode pc 16
    (this.user_power = (this.user_power + add));
    // source line 407, bytecode pc 54
    xs.Utils.Notify.postNotification(xs.Constant_Notify_ModelChange_UserInfo);
},
    getPlayerCurTiLi: function() {
    // source line 410, bytecode pc 6
    return this.user_power;
},
    getPlayerNextTiLiSec: function() {
    // source line 413, bytecode pc 6
    return this.user_power_date;
},
    setPlayerNextTiLiSec: function(second) {
    // source line 416, bytecode pc 9
    (this.user_power_date = second);
},
    getPlayerMaxTiLi: function() {
    // source line 419, bytecode pc 23
    return this.getPlayerUpgradeCfg().getMaxPower();
},
    getPlayerCurQiLi: function() {
    // source line 422, bytecode pc 6
    return this.user_energy;
},
    addPlayerCurQiLi: function(qili) {
    // source line 425, bytecode pc 16
    (this.user_energy = (this.user_energy + qili));
    // source line 426, bytecode pc 54
    xs.Utils.Notify.postNotification(xs.Constant_Notify_ModelChange_UserInfo);
},
    getPlayerNextQiLiSec: function() {
    // source line 429, bytecode pc 6
    return this.user_energy_date;
},
    setPlayerNextQiLiSec: function(second) {
    // source line 432, bytecode pc 9
    (this.user_energy_date = second);
},
    getPlayerMaxQiLi: function() {
    // source line 437, bytecode pc 23
    return this.getPlayerUpgradeCfg().getMaxEnergy();
},
    getPlayerExp: function() {
    // source line 442, bytecode pc 6
    return this.user_experience;
},
    getPlayerMaxExp: function() {
    // source line 447, bytecode pc 23
    return this.getPlayerUpgradeCfg().getNum();
},
    getPlayerCombatMaxLevel: function() {
    // source line 452, bytecode pc 23
    return this.getPlayerUpgradeCfg().getCombatMaxLevel();
},
    setPlayerLastLoginTime_Local: function(userLoginTimeLocal) {
    // source line 457, bytecode pc 9
    (this.user_last_login_time_local = userLoginTimeLocal);
},
    getPlayerLastLoginTime_Local: function() {
    // source line 462, bytecode pc 6
    return this.user_last_login_time_local;
},
    getPlayerLastLoginTime: function() {
    // source line 466, bytecode pc 6
    return this.user_last_login_time;
},
    getTeamNumInfo: function(lv) {
    var limit, numInfo, i, cfgInfo;
    if (!lv) {
        // source line 478, bytecode pc 24
        (lv = this.getPlayerLevel());
    }
    // source line 480, bytecode pc 53
    (limit = xs.Cfg.Player.Team.NumLimit);
    // source line 481, bytecode pc 63
    (numInfo = {});
    // source line 482, bytecode pc 68
    (i = 0);
    while ((i < limit.length)) {
        // source line 483, bytecode pc 85
        (cfgInfo = limit[i]);
        if ((lv >= cfgInfo.minLv)) {
            if (cfgInfo.maxLv) {
                if ((lv <= cfgInfo.maxLv)) {
                    // source line 487, bytecode pc 149
                    (numInfo.num = cfgInfo.num);
                    // source line 488, bytecode pc 166
                    (numInfo.lockLv = cfgInfo.nextLock);
                }
            } else {
                // source line 491, bytecode pc 188
                (numInfo.num = cfgInfo.num);
                // source line 492, bytecode pc 205
                (numInfo.lockLv = cfgInfo.nextLock);
            }
        }
        // source line 482, bytecode pc 218
        (i = (+i + 1));
    }
    // source line 496, bytecode pc 240
    return numInfo;
},
    getPlayerFreshStep: function() {
    // source line 501, bytecode pc 6
    return this.freshman_step;
},
    setPlayerFreshStep: function(step) {
    // source line 504, bytecode pc 9
    (this.freshman_step = step);
},
    getIsBroadShowed: function() {
    // source line 509, bytecode pc 6
    return this.isBroadShowed;
},
    setIsBroadShowed: function(show) {
    // source line 512, bytecode pc 9
    (this.isBroadShowed = show);
},
    getPlayerVipFormat: function() {
    // source line 520, bytecode pc 18
    return ("Vip" + this.getPlayerVipLevel());
},
    getPlayerExpPercentage: function() {
    // source line 524, bytecode pc 28
    return ((this.getPlayerExp() / this.getPlayerMaxExp()) * 100);
},
    getPlayerExpPercentageFormat: function() {
    // source line 528, bytecode pc 31
    return ((this.getPlayerExp() + "/") + this.getPlayerMaxExp());
},
    getPlayerTiLiPercentage: function() {
    // source line 532, bytecode pc 31
    return ((this.getPlayerCurTiLi() + "/") + this.getPlayerMaxTiLi());
},
    getPlayerJingLiPercentage: function() {
    // source line 536, bytecode pc 31
    return ((this.getPlayerCurQiLi() + "/") + this.getPlayerMaxQiLi());
},
    getPlayerNextTiLiRecoverTimeFormat: function() {
    // source line 540, bytecode pc 34
    return xs.Utils.convertSecondToTime(this.getPlayerNextTiLiSec());
},
    getPlayerNextJingLiRecoverTimeFormat: function() {
    // source line 544, bytecode pc 34
    return xs.Utils.convertSecondToTime(this.getPlayerNextQiLiSec());
},
    getPlayerAllTiLiRecoverTimeFormat: function() {
    var allTimeSceond;
    // source line 549, bytecode pc 69
    (allTimeSceond = ((((this.getPlayerMaxTiLi() - this.getPlayerCurTiLi()) - 1) * xs.Cfg.Player.PlayerInfo.tiLiCD) + this.getPlayerNextTiLiSec()));
    // source line 550, bytecode pc 111
    return xs.Utils.convertSecondToTime(((allTimeSceond > 0) ? allTimeSceond : 0));
},
    getPlayerAllJingLiRecoverTimeFormat: function() {
    var allTimeSceond;
    // source line 555, bytecode pc 69
    (allTimeSceond = ((((this.getPlayerMaxQiLi() - this.getPlayerCurQiLi()) - 1) * xs.Cfg.Player.PlayerInfo.jingLiCD) + this.getPlayerNextQiLiSec()));
    // source line 556, bytecode pc 111
    return xs.Utils.convertSecondToTime(((allTimeSceond > 0) ? allTimeSceond : 0));
},
    getTeamMaxLength: function() {
    var _arr_player_upgrade, _max_length, i, cfg_team_num;
    // source line 561, bytecode pc 40
    (_arr_player_upgrade = xs.Tools.CfgData.readRecordByType(xs.Constant_CfgDataType_Player_Upgrade));
    // source line 562, bytecode pc 45
    (_max_length = 0);
    // source line 563, bytecode pc 50
    (i = 0);
    while ((i < _arr_player_upgrade.length)) {
        // source line 564, bytecode pc 87
        (cfg_team_num = parseInt(_arr_player_upgrade[i].team_num));
        if ((_max_length < cfg_team_num)) {
            // source line 567, bytecode pc 106
            (_max_length = cfg_team_num);
        }
        // source line 563, bytecode pc 121
        i++;
    }
    if ((_max_length > xs.maxTeamNum)) {
        // source line 575, bytecode pc 172
        (_max_length = xs.maxTeamNum);
    }
    // source line 577, bytecode pc 191
    return parseInt(_max_length);
},
    getCurTeamMaxLength: function() {
    var _arr_player_upgrade, _max_length, i, cfg_team_num;
    // source line 582, bytecode pc 40
    (_arr_player_upgrade = xs.Tools.CfgData.readRecordByType(xs.Constant_CfgDataType_Player_Upgrade));
    // source line 583, bytecode pc 45
    (_max_length = 0);
    // source line 584, bytecode pc 50
    (i = 0);
    while ((i < _arr_player_upgrade.length)) {
        if ((this.getPlayerLevel() > i)) {
            // source line 586, bytecode pc 108
            (cfg_team_num = parseInt(_arr_player_upgrade[i].team_num));
            if ((_max_length < cfg_team_num)) {
                // source line 589, bytecode pc 127
                (_max_length = cfg_team_num);
            }
        }
        // source line 584, bytecode pc 142
        i++;
    }
    if ((_max_length > xs.maxTeamNum)) {
        // source line 596, bytecode pc 193
        (_max_length = xs.maxTeamNum);
    }
    // source line 599, bytecode pc 212
    return parseInt(_max_length);
},
    getPlayerLevelByTeamPos: function(pos) {
    var _arr_player_upgrade, i, cfg_team_num;
    // source line 604, bytecode pc 32
    this.assert(pos, (("getPlayerLevelByTeamPos___" + pos) + " is error!!"));
    // source line 605, bytecode pc 73
    (_arr_player_upgrade = xs.Tools.CfgData.readRecordByType(xs.Constant_CfgDataType_Player_Upgrade));
    // source line 608, bytecode pc 78
    (i = 0);
    while ((i < _arr_player_upgrade.length)) {
        // source line 609, bytecode pc 115
        (cfg_team_num = parseInt(_arr_player_upgrade[i].team_num));
        if ((((i == 0) && (pos < cfg_team_num)) || (cfg_team_num == pos))) {
            // source line 611, bytecode pc 157
            return (i + 1);
        }
        // source line 608, bytecode pc 172
        i++;
    }
    // source line 615, bytecode pc 209
    this.warn("the team num in the the user level conf is error!!");
    // source line 616, bytecode pc 211
    return null;
},
    getCurLieutenantMaxLength: function() {
    var _arr_player_upgrade, _max_length, i;
    // source line 621, bytecode pc 40
    (_arr_player_upgrade = xs.Tools.CfgData.readRecordByType(xs.Constant_CfgDataType_Player_Upgrade));
    // source line 622, bytecode pc 45
    (_max_length = 0);
    // source line 623, bytecode pc 50
    (i = 0);
    while ((i < _arr_player_upgrade.length)) {
        if ((this.getPlayerLevel() > i)) {
            // source line 625, bytecode pc 122
            (_max_length = ((_max_length < _arr_player_upgrade[i].lieutenant_num) ? _arr_player_upgrade[i].lieutenant_num : _max_length));
        }
        // source line 623, bytecode pc 137
        i++;
    }
    // source line 628, bytecode pc 174
    return parseInt(_max_length);
},
    getPlayerLevelByLieutenantPos: function(pos) {
    var _arr_player_upgrade, i;
    // source line 633, bytecode pc 32
    this.assert(pos, (("getPlayerLevelByLieutenantPos___" + pos) + " is error!!"));
    // source line 634, bytecode pc 73
    (_arr_player_upgrade = xs.Tools.CfgData.readRecordByType(xs.Constant_CfgDataType_Player_Upgrade));
    // source line 637, bytecode pc 78
    (i = 0);
    while ((i < _arr_player_upgrade.length)) {
        if ((((i == 0) && (pos < _arr_player_upgrade[i].lieutenant_num)) || (_arr_player_upgrade[i].lieutenant_num == pos))) {
            // source line 639, bytecode pc 144
            return (i + 1);
        }
        // source line 637, bytecode pc 159
        i++;
    }
    // source line 642, bytecode pc 196
    this.warn("the lieutenant num in the the user level conf is error!!");
    // source line 643, bytecode pc 198
    return null;
},
    getChaosCountDown: function() {
    // source line 648, bytecode pc 6
    return this.chaosCountDown;
},
    getLadderRankSalary: function() {
    // source line 653, bytecode pc 6
    return this.ladderRankSalary;
},
    getUserHonor: function() {
    // source line 658, bytecode pc 6
    return this.user_honor;
},
    getLadderChallengeTimes: function() {
    // source line 663, bytecode pc 6
    return this.ladderChallengeTimes;
},
    setLadderChallengeTimes: function(challengeTimes) {
    // source line 667, bytecode pc 9
    (this.ladderChallengeTimes = challengeTimes);
    // source line 668, bytecode pc 47
    xs.Utils.Notify.postNotification(xs.Constant_Notify_ModelChange_UserInfo);
},
    getItemConditionByItemId: function(item_id) {
    var _item_conditions, obj_item, key, vipLevel, _next_vip, _effect_value;
    if (!xs.Utils.isEmpty(this.item_count[item_id])) {
        // source line 675, bytecode pc 51
        (_item_conditions = this.item_count[item_id]);
        // source line 678, bytecode pc 106
        (obj_item = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(item_id));
        // source line 679, bytecode pc 129
        (_item_conditions.name = obj_item.getNameString());
        // source line 681, bytecode pc 138
        (key = "");
        // source line 682, bytecode pc 142
        switch (item_id) {
            case xs.Models.ItemID_PowerWithVipCondition:
            // source line 685, bytecode pc 256
            (key = "item_power_limit");
            break;
            case xs.Models.ItemID_EnergyWithVipCondition:
            // source line 689, bytecode pc 270
            (key = "item_energy_limit");
            break;
            case xs.Models.ItemID_BattleWithVipCondition:
            // source line 693, bytecode pc 284
            (key = "item_battle_limit");
            break;
            case xs.Models.ItemID_RecoveryDungeonTimes:
            // source line 697, bytecode pc 298
            (key = "dungeon_buy_privilege");
            break;
            case xs.Models.ItemID_RecoveryEliteDungeonTimes:
            // source line 701, bytecode pc 312
            (key = "elite_dungeon_buy_limit");
            break;
            default:
            break;
        }
        // source line 707, bytecode pc 338
        (vipLevel = this.getPlayerVipLevel());
        // source line 708, bytecode pc 343
        (_next_vip = null);
        while (true) {
            if ((vipLevel >= 13)) {
                // source line 712, bytecode pc 407
                (_next_vip = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Vip, (vipLevel - 1)));
                // source line 713, bytecode pc 445
                (_item_conditions.next_all_num = xs.Utils.parseIntSafe(_next_vip[key]));
                // source line 714, bytecode pc 457
                (_item_conditions.next_vip_level = vipLevel);
                break;
            }
            // source line 718, bytecode pc 507
            (_next_vip = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Vip, vipLevel));
            if ((key === "dungeon_buy_privilege")) {
                // source line 720, bytecode pc 559
                (_item_conditions.next_all_num = xs.Utils.parseIntSafe(_next_vip[key]));
                // source line 721, bytecode pc 573
                (_item_conditions.next_vip_level = (vipLevel + 1));
                break;
            }
            if ((xs.Utils.parseIntSafe(_next_vip[key]) > xs.Utils.parseIntSafe(_item_conditions.all_num))) {
                // source line 725, bytecode pc 681
                (_item_conditions.next_all_num = xs.Utils.parseIntSafe(_next_vip[key]));
                // source line 726, bytecode pc 695
                (_item_conditions.next_vip_level = (vipLevel + 1));
                break;
            }
            // source line 730, bytecode pc 715
            vipLevel++;
        }
        if ((item_id === xs.Models.ItemID_RecoveryEliteDungeonTimes)) {
            // source line 735, bytecode pc 762
            (vipLevel = this.getPlayerVipLevel());
            // source line 736, bytecode pc 825
            (_vipCnfInfo = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Vip, (this.getPlayerVipLevel() - 1)));
            // source line 737, bytecode pc 865
            (_item_conditions.all_num = xs.Utils.parseIntSafe(_vipCnfInfo[key]));
            while (true) {
                if ((vipLevel >= 13)) {
                    // source line 741, bytecode pc 929
                    (_next_vip = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Vip, (vipLevel - 1)));
                    // source line 742, bytecode pc 967
                    (_item_conditions.elite_dungeon_buy_limit = xs.Utils.parseIntSafe(_next_vip[key]));
                    // source line 743, bytecode pc 979
                    (_item_conditions.next_vip_level = vipLevel);
                    break;
                }
                // source line 747, bytecode pc 1029
                (_next_vip = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Vip, vipLevel));
                if ((xs.Utils.parseIntSafe(_next_vip[key]) > _item_conditions.all_num)) {
                    // source line 749, bytecode pc 1110
                    (_item_conditions.next_all_num = xs.Utils.parseIntSafe(_next_vip[key]));
                    // source line 750, bytecode pc 1124
                    (_item_conditions.next_vip_level = (vipLevel + 1));
                    break;
                }
                // source line 754, bytecode pc 1144
                vipLevel++;
            }
        }
        // source line 759, bytecode pc 1169
        (_effect_value = obj_item.getEffectValue());
        // source line 760, bytecode pc 1183
        (_item_conditions.effect_value = _effect_value[0]);
        // source line 762, bytecode pc 1187
        return _item_conditions;
    }
    // source line 765, bytecode pc 1189
    return null;
},
    getFirstChooseGeneral: function() {
    var _pk_id;
    // source line 770, bytecode pc 9
    (_pk_id = this.first_choose_general);
    if (xs.Profile.GameData.Mgr.getInstance().Generals.isThisPkIdExists(_pk_id)) {
        // source line 772, bytecode pc 117
        return xs.Profile.GameData.Mgr.getInstance().Generals.getByPkId(_pk_id);
    }
    // source line 774, bytecode pc 119
    return null;
},
    getFirstWineGeneral: function() {
    var _pk_id;
    // source line 779, bytecode pc 9
    (_pk_id = this.first_wine_general);
    if (xs.Profile.GameData.Mgr.getInstance().Generals.isThisPkIdExists(_pk_id)) {
        // source line 781, bytecode pc 117
        return xs.Profile.GameData.Mgr.getInstance().Generals.getByPkId(_pk_id);
    }
    // source line 783, bytecode pc 119
    return null;
},
    getCoolDownTime: function() {
    var curTimeStamp, timeOffset;
    // source line 788, bytecode pc 30
    (curTimeStamp = Date.parse(new Date()));
    // source line 789, bytecode pc 48
    (timeOffset = ((curTimeStamp - this.timeStamp) / 1000));
    // source line 791, bytecode pc 59
    return (this.coolDownTime - timeOffset);
},
    getClearCDTimePrice: function() {
    // source line 795, bytecode pc 6
    return this.clearCDTimePrice;
},
    getBaseCDTime: function() {
    // source line 799, bytecode pc 6
    return this.baseCDTime;
},
    getChargedYuanBao: function() {
    // source line 803, bytecode pc 6
    return this.m_chargeYuanBao;
},
    getNextVipYuanBao: function() {
    // source line 807, bytecode pc 6
    return this.m_needYuanBaoNextVip;
},
    getChargeCount: function() {
    // source line 812, bytecode pc 6
    return this.user_charge_count;
},
    getAccount_uid: function() {
    // source line 816, bytecode pc 6
    return this.account_uid;
},
    _getAddictionStr: function() {
    if (this.account_uid) {
        // source line 821, bytecode pc 23
        return ("anti_addiction_" + this.account_uid);
    }
    // source line 823, bytecode pc 29
    return "anti-addiction";
},
    readAddictionSql: function() {
    var _result, _data, _empty;
    // source line 827, bytecode pc 4
    (_result = null);
    // source line 828, bytecode pc 47
    (_data = xs.Utils.LocalStore.getItem(this._getAddictionStr()));
    if ((_data == "")) {
        // source line 831, bytecode pc 70
        (_empty = "{\"onlineTime\":0,\"lastLoginTime\":false,\"mDay\":false}");
        // source line 832, bytecode pc 114
        xs.Utils.LocalStore.setItem(this._getAddictionStr(), _empty);
        // source line 833, bytecode pc 121
        (_data = _empty);
    }
    try {
        // source line 836, bytecode pc 146
        (_result = JSON.parse(_data));
    } catch (e) {
        // source line 839, bytecode pc 189
        (_result = { onlineTime: 0, lastLoginTime: false, mDay: false });
        /* TODO_BYTECODE pc=190 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 841, bytecode pc 202
    return _result;
},
    setAddictionSql: function(_result) {
    var _str;
    // source line 845, bytecode pc 23
    (_str = JSON.stringify(_result));
    // source line 846, bytecode pc 67
    xs.Utils.LocalStore.setItem(this._getAddictionStr(), _str);
},
    setLoginTimeToSql: function() {
    var _result, myDate, myDay, offlineTime;
    if (xs.isAdult) {
        // source line 850, bytecode pc 16
        return void 0;
    }
    // source line 852, bytecode pc 32
    (_result = this.readAddictionSql());
    // source line 853, bytecode pc 61
    (myDate = (new Date().getTime() / 1000));
    // source line 854, bytecode pc 86
    (myDay = new Date().getDay());
    if ((!_result.lastLoginTime || (myDay != _result.mDay))) {
        // source line 857, bytecode pc 130
        (_result.lastLoginTime = myDate);
        // source line 858, bytecode pc 142
        (_result.mDay = myDay);
        // source line 859, bytecode pc 159
        this.setAddictionSql(_result);
        // source line 860, bytecode pc 174
        this.setOnlineTimeToSql(0);
        // source line 861, bytecode pc 190
        (_result = this.readAddictionSql());
    }
    if (_result.lastLoginTime) {
        // source line 865, bytecode pc 232
        (offlineTime = (((myDate - _result.lastLoginTime) - _result.onlineTime) / 3600));
        if ((offlineTime > 5)) {
            // source line 868, bytecode pc 258
            this.setOnlineTimeToSql(0);
        } else {
            if (((offlineTime < 5) && (_result.onlineTime > this.onlineTime_cfg.fiveWarn))) {
                // source line 875, bytecode pc 461
                xs.Views.Mgr.showDialogByName("OneBtnDialog", {
    titleText: xs.Tools.String.createString("IdCardBinding_10"),
    contentText: xs.Tools.String.createString("IdCardBinding_17"),
    btnText: xs.Tools.String.createString("auto_name_76"),
    btnCallback: function() {
    // source line 876, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}
});
            }
        }
    }
    // source line 883, bytecode pc 476
    this.updetaOnlineTime(0);
},
    setOnlineTimeToSql: function(mTime) {
    var _result;
    // source line 888, bytecode pc 15
    (_result = this.readAddictionSql());
    // source line 889, bytecode pc 27
    (_result.onlineTime = mTime);
    // source line 890, bytecode pc 44
    this.setAddictionSql(_result);
},
    updetaOnlineTime: function(dt) {
    var mOnlineTime, subTime;
    if (xs.isAdult) {
        // source line 895, bytecode pc 16
        return void 0;
    }
    // source line 897, bytecode pc 37
    (mOnlineTime = this.readAddictionSql().onlineTime);
    // source line 898, bytecode pc 47
    (mOnlineTime = (mOnlineTime + 60));
    // source line 899, bytecode pc 64
    this.setOnlineTimeToSql(mOnlineTime);
    if ((mOnlineTime >= this.onlineTime_cfg.fiveWarn)) {
        // source line 903, bytecode pc 103
        (subTime = (mOnlineTime - this.onlineTime_cfg.fiveWarn));
        if (((subTime % this.time_cfg.fifteenMinute) == 0)) {
            // source line 909, bytecode pc 286
            xs.Views.Mgr.showDialogByName("OneBtnDialog", {
    titleText: xs.Tools.String.createString("IdCardBinding_10"),
    contentText: xs.Tools.String.createString("IdCardBinding_16"),
    btnText: xs.Tools.String.createString("auto_name_76"),
    btnCallback: function() {
    // source line 910, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}
});
        }
    } else {
        if (((mOnlineTime > this.onlineTime_cfg.threeWarn) && (mOnlineTime < this.onlineTime_cfg.fiveWarn))) {
            // source line 916, bytecode pc 351
            (subTime = (mOnlineTime - this.onlineTime_cfg.threeWarn));
            if (((subTime % this.time_cfg.thirtyMinute) == 0)) {
                // source line 922, bytecode pc 534
                xs.Views.Mgr.showDialogByName("OneBtnDialog", {
    titleText: xs.Tools.String.createString("IdCardBinding_10"),
    contentText: xs.Tools.String.createString("IdCardBinding_15"),
    btnText: xs.Tools.String.createString("auto_name_76"),
    btnCallback: function() {
    // source line 923, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}
});
            }
        } else {
            if ((mOnlineTime == this.onlineTime_cfg.threeWarn)) {
                // source line 934, bytecode pc 769
                xs.Views.Mgr.showDialogByName("OneBtnDialog", {
    titleText: xs.Tools.String.createString("IdCardBinding_10"),
    contentText: ((xs.Tools.String.createString("IdCardBinding_13") + (this.onlineTime_cfg.threeWarn / 3600)) + xs.Tools.String.createString("IdCardBinding_14")),
    btnText: xs.Tools.String.createString("auto_name_76"),
    btnCallback: function() {
    // source line 935, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}
});
            } else {
                if ((mOnlineTime == this.onlineTime_cfg.twoWarn)) {
                    // source line 945, bytecode pc 1004
                    xs.Views.Mgr.showDialogByName("OneBtnDialog", {
    titleText: xs.Tools.String.createString("IdCardBinding_10"),
    contentText: ((xs.Tools.String.createString("IdCardBinding_13") + (this.onlineTime_cfg.twoWarn / 3600)) + xs.Tools.String.createString("auto_name_448")),
    btnText: xs.Tools.String.createString("auto_name_76"),
    btnCallback: function() {
    // source line 946, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}
});
                } else {
                    if ((mOnlineTime == this.onlineTime_cfg.oneWarn)) {
                        // source line 956, bytecode pc 1239
                        xs.Views.Mgr.showDialogByName("OneBtnDialog", {
    titleText: xs.Tools.String.createString("IdCardBinding_10"),
    contentText: ((xs.Tools.String.createString("IdCardBinding_13") + (this.onlineTime_cfg.oneWarn / 3600)) + xs.Tools.String.createString("auto_name_448")),
    btnText: xs.Tools.String.createString("auto_name_76"),
    btnCallback: function() {
    // source line 957, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}
});
                    }
                }
            }
        }
    }
},
    getUnionWarSignUp: function() {
    // source line 964, bytecode pc 6
    return this.union_war_sign_up;
},
    getUnionId: function() {
    // source line 969, bytecode pc 6
    return this.unionId;
},
    getUnionName: function() {
    // source line 974, bytecode pc 6
    return this.union_name;
},
    setUserRole: function(userRole) {
    // source line 978, bytecode pc 9
    (this.user_role = userRole);
},
    getUserRole: function() {
    // source line 982, bytecode pc 6
    return this.user_role;
},
    getUserDonate: function() {
    // source line 987, bytecode pc 6
    return this.user_donate;
},
    setUserDonate: function(donate) {
    // source line 991, bytecode pc 9
    (this.user_donate = donate);
},
    setDonateState: function(donateState) {
    // source line 995, bytecode pc 9
    (this.donate_state = donateState);
},
    getDonateState: function() {
    // source line 998, bytecode pc 6
    return this.donate_state;
},
    setDonateNum: function(donateNum) {
    // source line 1003, bytecode pc 9
    (this.donate_num = donateNum);
},
    getDonateNum: function() {
    // source line 1006, bytecode pc 6
    return this.donate_num;
},
    setPlayerSkin: function(donateState) {
    // source line 1011, bytecode pc 9
    (this.playerSkin = donateState);
},
    getPlayerSkin: function() {
    // source line 1014, bytecode pc 6
    return this.playerSkin;
},
    updateBaseUnionUserInfo: function(jsonData) {
    // source line 1018, bytecode pc 48
    (this.unionId = (xs.Utils.parseIntSafe(jsonData.union_info.union_id) || 0));
    // source line 1019, bytecode pc 101
    (this.unionName = (xs.Utils.parseStringSafe(jsonData.union_info.union_name) || ""));
    // source line 1020, bytecode pc 145
    (this.user_role = (xs.Utils.parseIntSafe(jsonData.user_role) || 0));
    // source line 1021, bytecode pc 201
    xs.log_xjf(((((("player中公会信息完成 unionId = " + this.unionId) + ", unionName = ") + this.unionName) + ",user_role = ") + this.user_role));
},
    clearUnionUserInfo: function() {
    // source line 1026, bytecode pc 7
    (this.unionId = 0);
    // source line 1027, bytecode pc 19
    (this.unionName = "");
    // source line 1028, bytecode pc 27
    (this.user_role = 0);
    // source line 1029, bytecode pc 35
    (this.user_donate = 0);
    // source line 1030, bytecode pc 43
    (this.donate_state = false);
    // source line 1031, bytecode pc 51
    (this.donate_num = 0);
},
    hasUnion: function() {
    // source line 1036, bytecode pc 41
    return !((this.unionId === null) || ((this.unionId === 0) || (this.unionId === "")));
}
}));
// source line 1041, bytecode pc 1220
(xs.Models.Player.s_instance = null);
// source line 1043, bytecode pc 1246
(xs.Models.Player.getInstance = function() {
    // source line 1044, bytecode pc 18
    this.error("xs.Models.Player.getInstance will be delete");
    if (!xs.Models.Player.s_instance) {
        // source line 1046, bytecode pc 85
        (xs.Models.Player.s_instance = new xs.Models.Player());
        // source line 1047, bytecode pc 117
        xs.Models.Player.s_instance.init();
    }
    // source line 1049, bytecode pc 138
    return xs.Models.Player.s_instance;
});
// source line 1052, bytecode pc 1272
(xs.Models.Player.purgeInstance = function() {
    if (xs.Models.Player.s_instance) {
        // source line 1056, bytecode pc 104
        xs.director.getScheduler().unscheduleCallbackForTarget(xs.Models.Player.s_instance, xs.Models.Player.s_instance.schedule_updatePlayerTiLiAndJingLi);
        // source line 1058, bytecode pc 126
        (xs.Models.Player.s_instance = null);
    }
});
