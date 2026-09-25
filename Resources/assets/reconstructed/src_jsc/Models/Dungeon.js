// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Dungeon.js:1
// source line 5, bytecode pc 17
(xs.Models.Dungeon_MultiFightMax = 10);
// source line 6, bytecode pc 35
(xs.Models.Dungeon_MultiFightVipLimit = 3);
// source line 7, bytecode pc 53
(xs.Models.Dungeon_MultiFightLevelLimit = 16);
// source line 10, bytecode pc 71
(xs.Models.Dungeon_FightError_Tili = -1);
// source line 11, bytecode pc 89
(xs.Models.Dungeon_FightError_Times = -2);
// source line 12, bytecode pc 107
(xs.Models.Dungeon_FightError_Level = -3);
// source line 13, bytecode pc 125
(xs.Models.Dungeon_FightError_locked = -4);
// source line 14, bytecode pc 143
(xs.Models.Dungeon_FightError_coolDown = -5);
// source line 16, bytecode pc 160
(xs.Models.Dungeon_Plot_Pre_Fight = 1);
// source line 17, bytecode pc 178
(xs.Models.Dungeon_Plot_Post_Fight = 2);
// source line 493, bytecode pc 612
(xs.Models.Dungeon = cc.Class.extend({
    name: "xs.Models.Dungeon",
    init: function(dungeonInfo) {
    // source line 23, bytecode pc 14
    (this.dungeon_id = dungeonInfo.dungeon_id);
    // source line 24, bytecode pc 44
    (this.dungeon_pos = parseInt(dungeonInfo.dungeon_position));
    // source line 25, bytecode pc 59
    (this.dungeon_name = dungeonInfo.dungeon_name);
    // source line 26, bytecode pc 74
    (this.dungeon_card = dungeonInfo.dungeon_card);
    // source line 27, bytecode pc 104
    (this.dungeon_grade = parseInt(dungeonInfo.dungeon_grade));
    // source line 28, bytecode pc 119
    (this.dungeon_suggest_level = dungeonInfo.dungeon_suggest_level);
    // source line 29, bytecode pc 149
    (this.dungeon_cost_power = parseInt(dungeonInfo.dungeon_power));
    // source line 30, bytecode pc 164
    (this.dungeon_user_exp = dungeonInfo.dungeon_user_exp);
    // source line 31, bytecode pc 179
    (this.dungeon_general_exp = dungeonInfo.dungeon_general_exp);
    // source line 32, bytecode pc 194
    (this.dungeon_coin = dungeonInfo.dungeon_coin);
    // source line 33, bytecode pc 224
    (this.dungeon_times = parseInt(dungeonInfo.dungeon_times));
    // source line 34, bytecode pc 254
    (this.user_played_times = parseInt(dungeonInfo.user_dungeon_times));
    // source line 35, bytecode pc 284
    (this.dungeon_resetTimes_price = parseInt(dungeonInfo.num_item_price));
    // source line 36, bytecode pc 299
    (this.dungeon_canshow = dungeonInfo.can_show);
    // source line 37, bytecode pc 314
    (this.dungeon_canin = dungeonInfo.can_in);
    // source line 38, bytecode pc 344
    (this.dungeon_starLevel = parseInt(dungeonInfo.star_level));
    // source line 39, bytecode pc 359
    (this.direction = dungeonInfo.direction);
    // source line 40, bytecode pc 371
    (this.dungeon_drop = []);
    // source line 41, bytecode pc 386
    (this.isNew = dungeonInfo.is_newest);
    // source line 42, bytecode pc 447
    (this.type = ((dungeonInfo.type === "dungeon") ? xs.Models.Chapter_Type_Dungeon : xs.Models.Chapter_Type_TreasureBox));
    // source line 43, bytecode pc 455
    (this.nextIsNewest = false);
    // source line 44, bytecode pc 470
    (this.dungeon_unlockedIds = dungeonInfo.unlocked_id);
    // source line 46, bytecode pc 519
    (this.elite_buy_times = (dungeonInfo.elite_buy_times ? parseInt(dungeonInfo.elite_buy_times) : 0));
    // source line 48, bytecode pc 541
    this.initDropInfo(dungeonInfo.dungeon_drop);
    // source line 50, bytecode pc 543
    return true;
},
    initDropInfo: function(dungeonDrop) {
    var i, dropItem;
    if (!dungeonDrop) {
        // source line 56, bytecode pc 10
        return void 0;
    }
    // source line 59, bytecode pc 15
    (i = 0);
    while ((i < dungeonDrop.length)) {
        // source line 60, bytecode pc 32
        (dropItem = dungeonDrop[i]);
        // source line 62, bytecode pc 134
        this.dungeon_drop.push(xs.Tools.Model.createModelWithBase(parseInt(dropItem.type), dropItem.id, parseInt(dropItem.num)));
        // source line 63, bytecode pc 173
        (this.dungeon_drop[i].type = parseInt(dropItem.type));
        // source line 59, bytecode pc 187
        (i = (+i + 1));
    }
},
    createView: function() {
    var _arm, general, bottom, bottomBg, headView, mask, borderImageStrs, grade, borderImage, i, dir, animation, nextDungeon;
    // source line 70, bytecode pc 40
    (_arm = xs.Views.Armature.AutoAudioArmature.create("Arm_DungeonOpen"));
    // source line 71, bytecode pc 77
    (general = xs.Models.General.createWithBase(this.dungeon_card));
    if (this.isCanShow()) {
        // source line 73, bytecode pc 119
        (bottom = cc.Node.create());
        // source line 75, bytecode pc 161
        (bottomBg = xs.Factorys.Sprite.create("Cmn01_Dungeon_border_bottom", "Cmn01"));
        // source line 76, bytecode pc 245
        xs.Utils.Node.attachNodes(bottom, bottomBg, { desc: "c", offset: cc.p(0, 10), sc: false });
        // source line 78, bytecode pc 269
        (headView = general.createPartView("circleHead"));
        // source line 80, bytecode pc 311
        (mask = xs.Factorys.Sprite.create("Cmn01_Dungeon_border_mask", "Cmn01"));
        // source line 82, bytecode pc 395
        xs.Utils.Node.attachNodes(bottom, headView, { desc: "c", offset: cc.p(0, 10), sc: false });
        // source line 83, bytecode pc 479
        xs.Utils.Node.attachNodes(bottom, mask, { desc: "c", offset: cc.p(0, 25), sc: false });
        // source line 86, bytecode pc 524
        (borderImageStrs = [
    "Cmn01_Dungeon_border_shen",
    "Cmn01_Dungeon_border_jin",
    "Cmn01_Dungeon_border_yin",
    "Cmn01_Dungeon_border_tong"
]);
        // source line 87, bytecode pc 540
        (grade = this.getGrade());
        // source line 88, bytecode pc 585
        xs.assert(((grade >= 1) && (grade <= 5)), "dungeon grade error", grade);
        // source line 89, bytecode pc 631
        (borderImage = xs.Factorys.Sprite.create(borderImageStrs[(grade - 1)], "Cmn01"));
        // source line 90, bytecode pc 648
        borderImage.setCascadeOpacityEnabled(true);
        // source line 91, bytecode pc 731
        xs.Utils.Node.attachNodes(bottom, borderImage, { desc: "c", offset: cc.p(0, 0), sc: false });
        // source line 93, bytecode pc 824
        xs.Utils.Node.attachNodes(bottom, this.getStarView(), { desc: "c", offset: cc.p(0, -30), sc: false });
        if (this.isNew) {
            // source line 95, bytecode pc 860
            _arm.replaceSkin("dungeonView", bottom);
            // source line 98, bytecode pc 994
            _arm.runAction(xs.Utils.Action.combineSequence([
    _arm.createPlayAction("bigFire", { speed: 1, loop: false }),
    _arm.createPlayAction("smallFire", { speed: 1, loop: true })
]));
        } else {
            // source line 102, bytecode pc 1024
            _arm.replaceSkin("dungeon_hui", bottom);
            // source line 103, bytecode pc 1064
            _arm.playAniById("idle", { loop: false, speed: 1 });
        }
        // source line 106, bytecode pc 1071
        (bottom = _arm);
    } else {
        // source line 108, bytecode pc 1101
        (bottom = cc.Node.create());
        // source line 109, bytecode pc 1143
        (borderImage = xs.Factorys.Sprite.create("Cmn01_Dungeon_border_locked", "Cmn01"));
        // source line 110, bytecode pc 1226
        xs.Utils.Node.attachNodes(bottom, borderImage, { desc: "c", offset: cc.p(0, 0), sc: false });
        // source line 112, bytecode pc 1318
        xs.Utils.Node.attachNodes(bottom, this.getStarView(), { desc: "cb", offset: cc.p(0, 0), sc: false });
        // source line 114, bytecode pc 1360
        _arm.replaceSkin("dungeonView", general.createPartView("circleHead"));
        // source line 115, bytecode pc 1400
        _arm.playAniById("idle", { loop: false, speed: 1 });
        // source line 116, bytecode pc 1407
        (bottom = _arm);
    }
    // source line 120, bytecode pc 1412
    (i = 0);
    while ((i < this.direction.length)) {
        // source line 121, bytecode pc 1449
        (dir = (parseInt(this.direction[i]) - 1));
        // source line 122, bytecode pc 1476
        (animation = this.createRoadAni(this.direction[i]));
        // source line 124, bytecode pc 1552
        xs.Utils.Node.attachNodes(bottom, animation.sprite, { desc: "lb", offset: animation.offset, sc: false });
        // source line 127, bytecode pc 1638
        (nextDungeon = xs.Profile.GameData.Mgr.getInstance().Map.getCurMap(this.m_bInHardChapter).getNextDungeon(this.getPos(), dir));
        if (nextDungeon) {
            if ((nextDungeon.getType() === xs.Models.Chapter_Type_Dungeon)) {
                if ((nextDungeon.isNewest() && ((dir === xs.Dungeon_Direction_ToDown) || (dir === xs.Dungeon_Direction_ToRight)))) {
                    // source line 133, bytecode pc 1748
                    (this.nextIsNewest = true);
                    // source line 134, bytecode pc 1794
                    animation.sprite.playAniById("moveToAnimation", { loop: true, speed: 4 });
                    // source line 135, bytecode pc 1824
                    xs.audio.playEffect("Audio_EFF_RoadOpen", false);
                }
            } else {
                if (((nextDungeon.getType() === xs.Models.Chapter_Type_TreasureBox) && (this.nextIsNewest && nextDungeon.isCanIn()))) {
                    // source line 139, bytecode pc 1942
                    animation.sprite.playAniById("moveToAnimation", { loop: true, speed: 4 });
                    // source line 140, bytecode pc 1972
                    xs.audio.playEffect("Audio_EFF_RoadOpen", false);
                }
            }
        }
        if ((this.isNewest() && ((dir === xs.Dungeon_Direction_ToUp) || (dir === xs.Dungeon_Direction_ToLeft)))) {
            // source line 145, bytecode pc 2075
            animation.sprite.playAniById("moveToAnimation", { loop: true, speed: 4 });
            // source line 146, bytecode pc 2105
            xs.audio.playEffect("Audio_EFF_RoadOpen", false);
        } else {
            if (this.isNewest()) {
                // source line 148, bytecode pc 2172
                animation.sprite.playAniById("disableAnimation", { loop: false, speed: 1 });
            } else {
                if (!this.isCanIn()) {
                    // source line 150, bytecode pc 2240
                    animation.sprite.playAniById("disableAnimation", { loop: false, speed: 1 });
                }
            }
        }
        // source line 120, bytecode pc 2254
        (i = (+i + 1));
    }
    // source line 155, bytecode pc 2314
    bottom.setContentSize(cc.size(99, 113));
    // source line 156, bytecode pc 2358
    bottom.setAnchorPoint(cc.p(0.7, 0.6));
    // source line 157, bytecode pc 2395
    (this.touchBtn = xs.Views.Btn.createInvisibleWithChild(bottom));
    // source line 158, bytecode pc 2415
    this.touchBtn.setSwallowTouch(false);
    // source line 159, bytecode pc 2435
    this.touchBtn.setZoomOnTouchDown(false);
    // source line 161, bytecode pc 2442
    return this.touchBtn;
},
    createRoadAni: function(dir) {
    var ani, toUp, toDown, toLeft, toRight;
    // source line 168, bytecode pc 21
    (ani = { sprite: null, offset: null });
    // source line 169, bytecode pc 25
    switch (dir) {
        case "1":
        // source line 171, bytecode pc 111
        (toUp = xs.Views.Armature.AutoAudioArmature.create("Arm_DungeonRoad"));
        // source line 172, bytecode pc 129
        toUp.setRotation(-90);
        // source line 173, bytecode pc 147
        toUp.setZOrder(-1);
        // source line 174, bytecode pc 187
        toUp.playAniById("normalAnimation", { loop: false, speed: 1 });
        // source line 175, bytecode pc 199
        (ani.sprite = toUp);
        // source line 176, bytecode pc 229
        (ani.offset = cc.p(0, -70));
        break;
        case "2":
        // source line 179, bytecode pc 275
        (toDown = xs.Views.Armature.AutoAudioArmature.create("Arm_DungeonRoad"));
        // source line 180, bytecode pc 293
        toDown.setRotation(90);
        // source line 181, bytecode pc 311
        toDown.setZOrder(-1);
        // source line 182, bytecode pc 351
        toDown.playAniById("normalAnimation", { loop: false, speed: 1 });
        // source line 183, bytecode pc 363
        (ani.sprite = toDown);
        // source line 184, bytecode pc 393
        (ani.offset = cc.p(0, -70));
        break;
        case "3":
        // source line 187, bytecode pc 439
        (toLeft = xs.Views.Armature.AutoAudioArmature.create("Arm_DungeonRoad"));
        // source line 188, bytecode pc 458
        toLeft.setRotation(180);
        // source line 189, bytecode pc 476
        toLeft.setZOrder(-1);
        // source line 190, bytecode pc 516
        toLeft.playAniById("normalAnimation", { loop: false, speed: 1 });
        // source line 191, bytecode pc 528
        (ani.sprite = toLeft);
        // source line 192, bytecode pc 559
        (ani.offset = cc.p(75, -25));
        break;
        case "4":
        // source line 195, bytecode pc 605
        (toRight = xs.Views.Armature.AutoAudioArmature.create("Arm_DungeonRoad"));
        // source line 196, bytecode pc 623
        toRight.setZOrder(-1);
        // source line 197, bytecode pc 663
        toRight.playAniById("normalAnimation", { loop: false, speed: 1 });
        // source line 198, bytecode pc 675
        (ani.sprite = toRight);
        // source line 199, bytecode pc 706
        (ani.offset = cc.p(75, -25));
        break;
        default:
        break;
    }
    // source line 202, bytecode pc 715
    return ani;
},
    getStarView: function() {
    var node, star1, star2, star3;
    // source line 206, bytecode pc 24
    (node = cc.Node.create());
    // source line 207, bytecode pc 66
    (star1 = xs.Factorys.Sprite.create("Cmn01_Dungeon_GradeStar", "Cmn01"));
    // source line 208, bytecode pc 108
    (star2 = xs.Factorys.Sprite.create("Cmn01_Dungeon_GradeStar", "Cmn01"));
    // source line 209, bytecode pc 150
    (star3 = xs.Factorys.Sprite.create("Cmn01_Dungeon_GradeStar", "Cmn01"));
    // source line 210, bytecode pc 171
    star1.setScale(0.6);
    // source line 211, bytecode pc 192
    star2.setScale(0.6);
    // source line 212, bytecode pc 213
    star3.setScale(0.6);
    // source line 214, bytecode pc 226
    switch (this.getFightStar()) {
        case 3:
        // source line 216, bytecode pc 335
        xs.Utils.Node.attachNodes(node, star1, { desc: "c", offset: cc.p(-25, 10), sc: false });
        // source line 217, bytecode pc 418
        xs.Utils.Node.attachNodes(node, star2, { desc: "c", offset: cc.p(0, 0), sc: false });
        // source line 218, bytecode pc 503
        xs.Utils.Node.attachNodes(node, star3, { desc: "c", offset: cc.p(26, 9), sc: false });
        break;
        case 2:
        // source line 221, bytecode pc 593
        xs.Utils.Node.attachNodes(node, star1, { desc: "c", offset: cc.p(-14, 5), sc: false });
        // source line 222, bytecode pc 678
        xs.Utils.Node.attachNodes(node, star2, { desc: "c", offset: cc.p(14, 5), sc: false });
        break;
        case 1:
        // source line 225, bytecode pc 767
        xs.Utils.Node.attachNodes(node, star1, { desc: "c", offset: cc.p(0, 5), sc: false });
        break;
        default:
        break;
    }
    // source line 228, bytecode pc 776
    return node;
},
    isCanIn: function() {
    // source line 232, bytecode pc 6
    return this.dungeon_canin;
},
    isCanShow: function() {
    // source line 236, bytecode pc 6
    return this.dungeon_canshow;
},
    getId: function() {
    // source line 240, bytecode pc 6
    return this.dungeon_id;
},
    getBossCardId: function() {
    // source line 244, bytecode pc 6
    return this.dungeon_card;
},
    getCostPower: function() {
    // source line 248, bytecode pc 6
    return this.dungeon_cost_power;
},
    getPos: function() {
    // source line 252, bytecode pc 6
    return this.dungeon_pos;
},
    getGrade: function() {
    // source line 256, bytecode pc 6
    return this.dungeon_grade;
},
    getDungeonTimes: function() {
    // source line 260, bytecode pc 6
    return this.dungeon_times;
},
    getPlayedTimes: function() {
    // source line 264, bytecode pc 6
    return this.user_played_times;
},
    setPlayedTimes: function(times) {
    // source line 268, bytecode pc 9
    (this.user_played_times = times);
},
    getName: function() {
    // source line 272, bytecode pc 33
    return xs.Tools.Ml.createString(this.dungeon_name);
},
    getSuggestLevel: function() {
    // source line 276, bytecode pc 6
    return this.dungeon_suggest_level;
},
    getDropCoin: function() {
    // source line 280, bytecode pc 6
    return this.dungeon_coin;
},
    getFightStar: function() {
    // source line 284, bytecode pc 6
    return this.dungeon_starLevel;
},
    getUserExp: function() {
    // source line 288, bytecode pc 6
    return this.dungeon_user_exp;
},
    getGeneralExp: function() {
    // source line 292, bytecode pc 6
    return this.dungeon_general_exp;
},
    isPlayed: function() {
    if ((this.getPlayedTimes() > 0)) {
        // source line 304, bytecode pc 20
        return true;
    }
    // source line 306, bytecode pc 22
    return false;
},
    getDropInfo: function() {
    // source line 311, bytecode pc 6
    return this.dungeon_drop;
},
    getDirections: function() {
    // source line 316, bytecode pc 6
    return this.direction;
},
    getType: function() {
    // source line 320, bytecode pc 6
    return this.type;
},
    getResetChgTimesPrice: function() {
    // source line 325, bytecode pc 6
    return this.dungeon_resetTimes_price;
},
    getTotalCDPrice: function() {
    var player, val_1, val_2, val_3;
    // source line 330, bytecode pc 50
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 331, bytecode pc 68
    (val_1 = player.getCoolDownTime());
    // source line 332, bytecode pc 86
    (val_2 = player.getClearCDTimePrice());
    // source line 333, bytecode pc 104
    (val_3 = player.getBaseCDTime());
    // source line 335, bytecode pc 158
    (val_1 = (((val_1 % 300) > 0) ? (Math.ceil((val_1 / 300)) * 300) : val_1));
    // source line 337, bytecode pc 187
    return Math.ceil(((val_1 * val_2) / val_3));
},
    isCanPlay: function() {
    if (this.isCanMulitiKill()) {
        // source line 343, bytecode pc 18
        return true;
    } else {
        if (this.isCanKill()) {
            // source line 345, bytecode pc 42
            return true;
        } else {
            // source line 348, bytecode pc 49
            return true;
        }
    }
},
    isNewest: function() {
    // source line 352, bytecode pc 6
    return this.isNew;
},
    isCanMulitiKill: function() {
    var player;
    // source line 357, bytecode pc 50
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    if (((player.getPlayerVipLevel() >= xs.Models.Dungeon_MultiFightVipLimit) || (player.getPlayerLevel() >= xs.Models.Dungeon_MultiFightLevelLimit))) {
        if (!this.isCanKill()) {
            // source line 363, bytecode pc 152
            return this.isCanKill();
        } else {
            if (this.isNew) {
                // source line 365, bytecode pc 184
                return xs.Models.Dungeon_FightError_locked;
            }
        }
        // source line 369, bytecode pc 235
        (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
        if ((player.getPlayerCurTiLi() < this.getCostPower())) {
            // source line 371, bytecode pc 283
            return xs.Models.Dungeon_FightError_Tili;
        }
        if ((this.getPlayedTimes() >= this.getDungeonTimes())) {
            // source line 376, bytecode pc 329
            return xs.Models.Dungeon_FightError_Times;
        }
        if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getCoolDownTime() > 0)) {
            // source line 381, bytecode pc 410
            return xs.Models.Dungeon_FightError_coolDown;
        }
        // source line 384, bytecode pc 412
        return true;
    }
    // source line 387, bytecode pc 428
    return xs.Models.Dungeon_FightError_Level;
},
    isCanKill: function() {
    var player;
    // source line 394, bytecode pc 50
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    if ((player.getPlayerCurTiLi() < this.getCostPower())) {
        // source line 396, bytecode pc 98
        return xs.Models.Dungeon_FightError_Tili;
    }
    if ((this.getPlayedTimes() >= this.getDungeonTimes())) {
        // source line 401, bytecode pc 144
        return xs.Models.Dungeon_FightError_Times;
    }
    // source line 404, bytecode pc 146
    return true;
},
    getMultiKillTimes: function() {
    var _multi_kill_times_all;
    // source line 409, bytecode pc 15
    (_multi_kill_times_all = this.getMultiKillTimesAll());
    if ((_multi_kill_times_all <= 0)) {
        // source line 411, bytecode pc 41
        (_multi_kill_times_all = this.getDungeonTimes());
    }
    // source line 413, bytecode pc 89
    return ((_multi_kill_times_all > xs.Models.Dungeon_MultiFightMax) ? xs.Models.Dungeon_MultiFightMax : _multi_kill_times_all);
},
    getMultiKillTimesAll: function() {
    var _obj_player, _tili_play_times, _dungeon_residue_times, _multi_kill_times;
    // source line 418, bytecode pc 50
    (_obj_player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 419, bytecode pc 98
    (_tili_play_times = Math.floor((_obj_player.getPlayerCurTiLi() / this.getCostPower())));
    // source line 421, bytecode pc 127
    (_dungeon_residue_times = (this.getDungeonTimes() - this.getPlayedTimes()));
    // source line 422, bytecode pc 154
    (_multi_kill_times = ((_tili_play_times >= _dungeon_residue_times) ? _dungeon_residue_times : _tili_play_times));
    // source line 423, bytecode pc 158
    return _multi_kill_times;
},
    getModelName: function() {
    // source line 427, bytecode pc 6
    return this.name;
},
    getPlotDialogArr: function() {
    var _plot_cfg, _plot_dialog, _plot_pre_fight, _dialog_id, _plot_post_fight;
    if ((xs.Tools.CfgData.isRecordExistByTypeAndKey(xs.Constant_CfgDataType_Plot_Conf, this.dungeon_id) === false)) {
        // source line 434, bytecode pc 52
        return null;
    }
    // source line 439, bytecode pc 100
    (_plot_cfg = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Plot_Conf, this.dungeon_id));
    // source line 441, bytecode pc 109
    (_plot_dialog = []);
    // source line 442, bytecode pc 114
    (_plot_pre_fight = null);
    // source line 443, bytecode pc 119
    (_dialog_id = null);
    if ((_plot_cfg[xs.Models.Dungeon_Plot_Pre_Fight] !== undefined)) {
        // source line 445, bytecode pc 177
        (_dialog_id = _plot_cfg[xs.Models.Dungeon_Plot_Pre_Fight].dialog_id);
        // source line 448, bytecode pc 222
        (_plot_pre_fight = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Plot_Dialog, _dialog_id));
    }
    // source line 451, bytecode pc 241
    _plot_dialog.push(_plot_pre_fight);
    // source line 453, bytecode pc 246
    (_plot_post_fight = null);
    if ((_plot_cfg[xs.Models.Dungeon_Plot_Post_Fight] !== undefined)) {
        // source line 455, bytecode pc 304
        (_dialog_id = _plot_cfg[xs.Models.Dungeon_Plot_Post_Fight].dialog_id);
        // source line 458, bytecode pc 349
        (_plot_post_fight = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Plot_Dialog, _dialog_id));
    }
    // source line 461, bytecode pc 368
    _plot_dialog.push(_plot_post_fight);
    // source line 463, bytecode pc 372
    return _plot_dialog;
},
    getPlot: function() {
    if ((xs.dungeonPlotAlways === true)) {
        // source line 470, bytecode pc 29
        return this.getPlotDialogArr();
    }
    if ((xs.dungeonPlot_skip === true)) {
        // source line 474, bytecode pc 48
        return null;
    }
    if ((this.getFightStar() <= 0)) {
        // source line 480, bytecode pc 80
        return this.getPlotDialogArr();
    } else {
        // source line 482, bytecode pc 87
        return null;
    }
},
    getUnlockedIds: function() {
    if (this.dungeon_unlockedIds) {
        // source line 488, bytecode pc 17
        return this.dungeon_unlockedIds;
    }
    // source line 490, bytecode pc 19
    return null;
},
    getRecoveryBuyTimes: function() {
    // source line 494, bytecode pc 6
    return this.elite_buy_times;
}
}));
// source line 498, bytecode pc 638
(xs.Models.Dungeon.create = function(dungeonInfo) {
    var ret;
    // source line 499, bytecode pc 23
    (ret = new xs.Models.Dungeon());
    if ((ret && ret.init(dungeonInfo))) {
        // source line 501, bytecode pc 59
        return ret;
    }
    // source line 503, bytecode pc 61
    return null;
});
