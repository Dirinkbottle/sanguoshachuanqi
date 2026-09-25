// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/FightResult.js:1
// source line 680, bytecode pc 2588
(xs.Views.Dialog.FightResult = (xs.Views.Dialog.FightResult || xs.Views.HungerLayer.extend({
    name: "FightResult",
    init: function(param) {
    var visibleSize, posOffset, WinShowNode, caculateNode, awardNode, bootyNode, label, label_defeated, _player, yunshiPic, winStarBg, lostStarBg, chartLabel, _string, dropItems, i, icon;
    // source line 17, bytecode pc 12
    this._super();
    // source line 21, bytecode pc 37
    (visibleSize = xs.director.getVisibleSize());
    // source line 22, bytecode pc 56
    (posOffset = ((visibleSize.height - 640) / 3));
    // source line 24, bytecode pc 71
    (this.infoModel = param.model);
    // source line 26, bytecode pc 95
    (this.sucess = this.infoModel.isSuccess());
    // source line 29, bytecode pc 103
    (this.m_baseTouchPriority = 0);
    // source line 33, bytecode pc 111
    (this.m_winStar_1 = null);
    // source line 34, bytecode pc 119
    (this.m_winStar_2 = null);
    // source line 35, bytecode pc 127
    (this.m_winStar_3 = null);
    // source line 36, bytecode pc 139
    (this.m_winStar = []);
    // source line 38, bytecode pc 147
    (this.m_btn_check = null);
    // source line 39, bytecode pc 155
    (this.m_btn_replay = null);
    // source line 40, bytecode pc 163
    (this.m_btn_confirm = null);
    // source line 42, bytecode pc 171
    (this.m_salary_str = null);
    // source line 43, bytecode pc 179
    (this.m_salary_value = null);
    // source line 44, bytecode pc 187
    (this.m_salary_bg = null);
    // source line 46, bytecode pc 195
    (this.m_honor_str = null);
    // source line 47, bytecode pc 203
    (this.m_honor_value = null);
    // source line 48, bytecode pc 211
    (this.m_honor_bg = null);
    // source line 50, bytecode pc 219
    (this.m_remainderGeneral = null);
    // source line 51, bytecode pc 227
    (this.m_rounds = null);
    // source line 52, bytecode pc 235
    (this.m_userExp = null);
    // source line 53, bytecode pc 243
    (this.m_dropCoin = null);
    // source line 54, bytecode pc 251
    (this.m_exp_bg = null);
    // source line 55, bytecode pc 259
    (this.m_winBg = null);
    // source line 56, bytecode pc 267
    (this.m_winWord = null);
    // source line 57, bytecode pc 275
    (this.m_lostBg = null);
    // source line 58, bytecode pc 283
    (this.m_lostWord = null);
    // source line 60, bytecode pc 291
    (this.m_generalsNum_bg = null);
    // source line 61, bytecode pc 299
    (this.m_remainderGeneralIntr = null);
    // source line 64, bytecode pc 307
    (this.m_zhanlipin = null);
    // source line 65, bytecode pc 315
    (this.m_drop_1 = null);
    // source line 66, bytecode pc 323
    (this.m_drop_2 = null);
    // source line 67, bytecode pc 331
    (this.m_drop_3 = null);
    // source line 68, bytecode pc 343
    (this.m_drop = []);
    // source line 71, bytecode pc 351
    (this.m_upEquipment = null);
    if (this.sucess) {
        // source line 78, bytecode pc 398
        (this.ccbNode = xs.ccb_reader.load("ccb3/0_7_10_FightSucess.ccbi", this));
        // source line 79, bytecode pc 436
        (WinShowNode = this.ccbNode.getChildByTag(this.cfg.ccbCfg_win.WinShow_tag));
        // source line 80, bytecode pc 470
        WinShowNode.setPositionY((WinShowNode.getPositionY() + posOffset));
        // source line 81, bytecode pc 520
        xs.Utils.UI.replaceCcbByCfg(WinShowNode, this.cfg.ccbCfg_win.WinShow, this);
        // source line 83, bytecode pc 558
        (caculateNode = this.ccbNode.getChildByTag(this.cfg.ccbCfg_win.CaculateInfo_tag));
        // source line 84, bytecode pc 592
        caculateNode.setPositionY((caculateNode.getPositionY() + posOffset));
        // source line 85, bytecode pc 642
        xs.Utils.UI.replaceCcbByCfg(caculateNode, this.cfg.ccbCfg_win.CaculateInfo, this);
        // source line 87, bytecode pc 680
        (awardNode = this.ccbNode.getChildByTag(this.cfg.ccbCfg_win.Award_tag));
        // source line 88, bytecode pc 730
        xs.Utils.UI.replaceCcbByCfg(awardNode, this.cfg.ccbCfg_win.Award, this);
        // source line 90, bytecode pc 768
        (bootyNode = this.ccbNode.getChildByTag(this.cfg.ccbCfg_win.Booty_tag));
        // source line 91, bytecode pc 802
        bootyNode.setPositionY((bootyNode.getPositionY() - posOffset));
        // source line 92, bytecode pc 852
        xs.Utils.UI.replaceCcbByCfg(bootyNode, this.cfg.ccbCfg_win.Booty, this);
        // source line 94, bytecode pc 894
        (this.m_winStar = [ this.m_winStar_1, this.m_winStar_2, this.m_winStar_3 ]);
        // source line 95, bytecode pc 936
        (this.m_drop = [ this.m_drop_1, this.m_drop_2, this.m_drop_3 ]);
        // source line 96, bytecode pc 949
        this.hideWinStar();
        // source line 97, bytecode pc 980
        this.showWinStar(this.infoModel.getStarLevel());
        // source line 98, bytecode pc 1011
        this.showWinTxt(this.infoModel.getStarLevel());
    } else {
        // source line 100, bytecode pc 1052
        (this.ccbNode = xs.ccb_reader.load("ccb3/0_7_10_FightFail.ccbi", this));
        // source line 101, bytecode pc 1090
        (WinShowNode = this.ccbNode.getChildByTag(this.cfg.ccbCfg_win.WinShow_tag));
        // source line 102, bytecode pc 1124
        WinShowNode.setPositionY((WinShowNode.getPositionY() + posOffset));
        // source line 103, bytecode pc 1174
        xs.Utils.UI.replaceCcbByCfg(WinShowNode, this.cfg.ccbCfg_lose.LostShow, this);
        // source line 105, bytecode pc 1212
        (caculateNode = this.ccbNode.getChildByTag(this.cfg.ccbCfg_lose.CaculateInfo_tag));
        // source line 106, bytecode pc 1246
        caculateNode.setPositionY((caculateNode.getPositionY() + posOffset));
        // source line 107, bytecode pc 1296
        xs.Utils.UI.replaceCcbByCfg(caculateNode, this.cfg.ccbCfg_lose.CaculateInfo, this);
        // source line 109, bytecode pc 1334
        (awardNode = this.ccbNode.getChildByTag(this.cfg.ccbCfg_lose.Award_tag));
        // source line 110, bytecode pc 1384
        xs.Utils.UI.replaceCcbByCfg(awardNode, this.cfg.ccbCfg_lose.Award, this);
        // source line 112, bytecode pc 1422
        (bootyNode = this.ccbNode.getChildByTag(this.cfg.ccbCfg_lose.Booty_tag));
        // source line 113, bytecode pc 1456
        bootyNode.setPositionY((bootyNode.getPositionY() - posOffset));
        // source line 114, bytecode pc 1506
        xs.Utils.UI.replaceCcbByCfg(bootyNode, this.cfg.ccbCfg_lose.Booty, this);
    }
    // source line 116, bytecode pc 1549
    this.ccbNode.setContentSize(cc.size(520, 768));
    // source line 117, bytecode pc 1592
    this.ccbNode.setAnchorPoint(cc.p(1, 0.5));
    // source line 118, bytecode pc 1651
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "cr", sc: true });
    // source line 122, bytecode pc 1693
    this.m_userExp.setString(("+" + this.infoModel.getUserExp()));
    // source line 124, bytecode pc 1711
    switch (this.infoModel.getFightType()) {
        case xs.Constant_FightType_Dungeon:
        if (!this.sucess) {
            // source line 129, bytecode pc 1868
            this.m_btn_check.setVisible(false);
        }
        // source line 133, bytecode pc 1886
        this.hideAboutSalary();
        // source line 134, bytecode pc 1899
        this.hideAboutHonor();
        break;
        case xs.Constant_FightType_Chaos:
        if (this.sucess) {
            // source line 140, bytecode pc 1951
            (label = xs.Factorys.Label.createByStyleId("LS_yuanfenInf2"));
            // source line 141, bytecode pc 1987
            label.setAnchorPoint(cc.p(0, 0));
            // source line 146, bytecode pc 2106
            xs.Utils.Node.attachNodes(this.ccbNode.getChildByTag(this.cfg.ccbCfg_lose.Booty_tag), label, { desc: "lb", offset: cc.p(-172, -124), sc: false });
            // source line 148, bytecode pc 2142
            (label_defeated = xs.Factorys.Label.createByStyleId("LS_fightUI1"));
            // source line 149, bytecode pc 2178
            label_defeated.setAnchorPoint(cc.p(0, 1));
            // source line 154, bytecode pc 2300
            xs.Utils.Node.attachNodes(this.ccbNode.getChildByTag(this.cfg.ccbCfg_lose.Booty_tag), label_defeated, { desc: "lb", offset: cc.p(-190, -134), sc: false });
            if ((this.infoModel.getDropItems().length <= 0)) {
                // source line 157, bytecode pc 2377
                label.setString(xs.Tools.String.createString("chaos_fail"));
                // source line 158, bytecode pc 2425
                label_defeated.setString(xs.Tools.String.createString("chaos_explain"));
            } else {
                // source line 160, bytecode pc 2451
                label.setStringById("1071110065");
            }
        }
        // source line 163, bytecode pc 2472
        (_player = this.infoModel.getFightPlayer());
        if (this.m_btn_check) {
            // source line 175, bytecode pc 2522
            this.m_btn_check.setOnClickCallBack(function() {
    if ((this.player_type == "1")) {
        // source line 169, bytecode pc 72
        xs.Tools.Net.getInstance().displayOtherTeamInfo({ other_user_id: this.player_id });
    } else {
        // source line 172, bytecode pc 110
        xs.Views.Mgr.showToastByStringId("secret");
    }
}.bind(_player));
        }
        // source line 178, bytecode pc 2535
        this.hideAboutSalary();
        // source line 179, bytecode pc 2548
        this.hideAboutHonor();
        break;
        case xs.Constant_FightType_Boss:
        // source line 183, bytecode pc 2566
        this.hideAboutHonor();
        // source line 184, bytecode pc 2579
        this.hideAboutSalary();
        // source line 185, bytecode pc 2592
        this.hideAboutgeneralsNum();
        // source line 186, bytecode pc 2605
        this.hideAboutYuanBao();
        // source line 187, bytecode pc 2647
        this.m_userExp.setString(("+" + this.infoModel.getFortune()));
        // source line 189, bytecode pc 2685
        (awardNode = this.ccbNode.getChildByTag(this.cfg.ccbCfg_lose.Award_tag));
        if (this.m_exp_bg) {
            // source line 191, bytecode pc 2738
            (yunshiPic = xs.Factorys.Sprite.create("Cmn02_icon_yunshixiao", "Cmn02"));
            // source line 192, bytecode pc 2780
            xs.Utils.Node.replaceChildSafe(awardNode, this.m_exp_bg, yunshiPic);
            // source line 193, bytecode pc 2790
            (this.m_exp_bg = yunshiPic);
        }
        // source line 196, bytecode pc 2828
        (WinShowNode = this.ccbNode.getChildByTag(this.cfg.ccbCfg_win.WinShow_tag));
        if (this.sucess) {
            // source line 198, bytecode pc 2852
            this.hideWinStar();
            if (this.m_winWord) {
                // source line 201, bytecode pc 2883
                this.m_winWord.setVisible(false);
            }
            if (this.m_winBg) {
                // source line 204, bytecode pc 2936
                (winStarBg = xs.Factorys.Sprite.create("HuLaoWin", "FightResult"));
                // source line 205, bytecode pc 2978
                xs.Utils.Node.replaceChildSafe(WinShowNode, this.m_winBg, winStarBg);
                // source line 206, bytecode pc 2988
                (this.m_winBg = winStarBg);
            }
        } else {
            if (this.m_lostWord) {
                // source line 211, bytecode pc 3024
                this.m_lostWord.setVisible(false);
            }
            if (this.m_lostBg) {
                // source line 214, bytecode pc 3077
                (lostStarBg = xs.Factorys.Sprite.create("HuLaoLost", "FightResult"));
                // source line 215, bytecode pc 3119
                xs.Utils.Node.replaceChildSafe(WinShowNode, this.m_lostBg, lostStarBg);
                // source line 216, bytecode pc 3129
                (this.m_lostBg = lostStarBg);
            }
        }
        if (this.m_btn_check) {
            // source line 221, bytecode pc 3160
            this.m_btn_check.setVisible(false);
        }
        break;
        case xs.Constant_FightType_Climb:
        // source line 226, bytecode pc 3216
        this.m_salary_str.setString(xs.Tools.String.createString("integration"));
        // source line 227, bytecode pc 3252
        this.m_salary_value.setString(this.infoModel.getIntegration());
        // source line 228, bytecode pc 3265
        this.showIntegration();
        if (this.m_btn_check) {
            // source line 230, bytecode pc 3296
            this.m_btn_check.setVisible(false);
        }
        // source line 232, bytecode pc 3309
        this.hideAboutHonor();
        break;
        case xs.Constant_FightType_LadderWar:
        // source line 236, bytecode pc 3365
        this.m_salary_str.setString(xs.Tools.String.createString("str_ActivityConsumeDesc"));
        // source line 237, bytecode pc 3407
        this.m_salary_value.setString(("+" + this.infoModel.getPoint()));
        // source line 238, bytecode pc 3420
        this.hideAboutHonor();
        if (!this.sucess) {
            // source line 240, bytecode pc 3453
            (_player = this.infoModel.getFightPlayer());
            // source line 247, bytecode pc 3492
            this.m_btn_check.setOnClickCallBack(function() {
    // source line 245, bytecode pc 118
    xs.Tools.Net.getInstance().displayInterOtherTeamInfo({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    player_id: this.player_id
});
}.bind(_player));
        }
        break;
        case xs.Constant_FightType_UnionWar:
        case xs.Constant_FightType_FriendFight:
        if (this.m_zhanlipin) {
            // source line 261, bytecode pc 3528
            this.m_zhanlipin.setVisible(false);
        }
        break;
        case xs.Constant_FightType_Ladder:
        // source line 266, bytecode pc 3570
        this.m_salary_value.setString(("+" + this.infoModel.getSalary()));
        // source line 268, bytecode pc 3612
        this.m_honor_value.setString(("+" + this.infoModel.getHonor()));
        if (!this.sucess) {
            // source line 271, bytecode pc 3645
            (_player = this.infoModel.getFightPlayer());
            // source line 282, bytecode pc 3684
            this.m_btn_check.setOnClickCallBack(function() {
    if ((this.player_type == "1")) {
        // source line 276, bytecode pc 72
        xs.Tools.Net.getInstance().displayOtherTeamInfo({ other_user_id: this.player_id });
    } else {
        // source line 279, bytecode pc 110
        xs.Views.Mgr.showToastByStringId("secret");
    }
}.bind(_player));
        } else {
            // source line 285, bytecode pc 3725
            (chartLabel = xs.Factorys.Label.createByStyleId("LS_fightUI1"));
            // source line 290, bytecode pc 3844
            xs.Utils.Node.attachNodes(this.ccbNode.getChildByTag(this.cfg.ccbCfg_win.Booty_tag), chartLabel, { desc: "lb", offset: cc.p(-100, -150), sc: false });
            if ((this.infoModel.getLadderUpTo() !== 0)) {
                // source line 293, bytecode pc 3942
                (_string = xs.Factorys.String.create("1071110062").convWithArgs([ this.infoModel.getLadderUpTo() ]));
                // source line 294, bytecode pc 3961
                chartLabel.setString(_string);
            } else {
                // source line 298, bytecode pc 3987
                chartLabel.setString("");
            }
        }
        break;
        default:
        // source line 306, bytecode pc 4034
        this.m_remainderGeneral.setString((this.infoModel.getRemainderGeneralPer() + "%"));
        // source line 308, bytecode pc 4076
        this.m_rounds.setString((this.infoModel.getRounds() + ""));
        // source line 312, bytecode pc 4118
        this.m_dropCoin.setString((this.infoModel.getDropCoin() + ""));
        /* TODO_BYTECODE pc=4125 opcode=ifeq reason=conditional_target_outside_region */
        // source line 315, bytecode pc 4142
        this.hideDropIcon();
        // source line 316, bytecode pc 4163
        (dropItems = this.infoModel.getDropItems());
        // source line 317, bytecode pc 4168
        (i = 0);
        break;
    }
    do {
        // source line 319, bytecode pc 4264
        (icon = xs.Utils.replaceIcon_direct(this.ccbNode.getChildByTag(this.cfg.ccbCfg_win.Booty_tag), this.m_drop[i], dropItems[i].createIcon_GradeAndNumAndName()));
        // source line 320, bytecode pc 4281
        icon.setVisible(true);
        // source line 317, bytecode pc 4295
        (i = (+i + 1));
    } while ((i < dropItems.length));
    if (!this.sucess) {
        if (((this.infoModel.getFightType() === xs.Constant_FightType_Climb) || (this.infoModel.getFightType() === xs.Constant_FightType_UnionWar))) {
            // source line 329, bytecode pc 4411
            this.m_upEquipment.removeFromParent();
        } else {
            // source line 343, bytecode pc 4456
            (this.gotoEquipMentBtn = xs.Views.Btn.createInvisibleWithParent(this.m_upEquipment));
            // source line 344, bytecode pc 4480
            this.gotoEquipMentBtn.setOnClickCallBack(function() {
    // source line 346, bytecode pc 36
    xs.Scene.Mgr.history.names_sub.pop();
    // source line 347, bytecode pc 69
    xs.Views.Mgr.showDialogByName("BecomeStrongerDialog");
});
        }
    }
    if (param.replayFunc) {
        // source line 373, bytecode pc 4520
        this.m_btn_replay.setOnClickCallBack(param.replayFunc);
    }
    if (param.confirmFunc) {
        // source line 380, bytecode pc 4560
        this.m_btn_confirm.setOnClickCallBack(param.confirmFunc);
    } else {
        // source line 403, bytecode pc 4602
        this.m_btn_confirm.setOnClickCallBack(function() {
    if ((this.m_btn_confirm_lock === true)) {
        // source line 391, bytecode pc 35
        xs.log("m_btn_confirm_lock");
        // source line 392, bytecode pc 37
        return void 0;
    }
    // source line 395, bytecode pc 45
    (this.m_btn_confirm_lock = true);
    // source line 397, bytecode pc 65
    this.m_btn_confirm.setEnabled(false);
    // source line 398, bytecode pc 85
    this.m_btn_confirm.setEventOnDisable(false);
    // source line 400, bytecode pc 112
    xs.Tools.Sys.free_when_fight_result_exit();
    // source line 401, bytecode pc 139
    xs.Scene.Mgr.gotoLastScene();
}.bind(this));
    }
    if (!xs.Guide.GuideMgr.getIsOver()) {
        // source line 409, bytecode pc 4656
        this.m_btn_confirm.setGuideTag(3001);
    }
    // source line 412, bytecode pc 4658
    return true;
    /* TODO_BYTECODE pc=end reason=unconsumed_operand_stack */
},
    onEnterTransitionDidFinish: function() {
    // source line 416, bytecode pc 12
    this._super();
    if (this.sucess) {
        // source line 419, bytecode pc 53
        xs.audio.playEffect("Audio_EFF_FightResult_Win", false);
    } else {
        // source line 421, bytecode pc 88
        xs.audio.playEffect("Audio_EFF_FightResult_Lose", false);
    }
    // source line 424, bytecode pc 139
    xs.Guide.GuideMgr.endStepBySequence([ "30001", "60001" ]);
},
    showWinTxt: function(starNum) {
    // source line 438, bytecode pc 3
    switch (starNum) {
        case 1:
        // source line 441, bytecode pc 140
        xs.Utils.replaceNode(this.ccbNode.getChildByTag(this.cfg.ccbCfg_win.WinShow_tag), this.cfg.winTxt.tag, xs.Factorys.Sprite.create("smallWin", "FightResult"));
        break;
        case 2:
        // source line 445, bytecode pc 258
        xs.Utils.replaceNode(this.ccbNode.getChildByTag(this.cfg.ccbCfg_win.WinShow_tag), this.cfg.winTxt.tag, xs.Factorys.Sprite.create("bigWin", "FightResult"));
        break;
        case 3:
        // source line 449, bytecode pc 376
        xs.Utils.replaceNode(this.ccbNode.getChildByTag(this.cfg.ccbCfg_win.WinShow_tag), this.cfg.winTxt.tag, xs.Factorys.Sprite.create("largeWin", "FightResult"));
        break;
        default:
        break;
    }
},
    showWinStar: function(starNum) {
    var i;
    // source line 456, bytecode pc 4
    (i = 0);
    while ((i < starNum)) {
        // source line 457, bytecode pc 34
        this.m_winStar[i].setVisible(true);
        // source line 456, bytecode pc 48
        (i = (+i + 1));
    }
},
    hideWinStar: function() {
    // source line 463, bytecode pc 19
    this.m_winStar_1.setVisible(false);
    // source line 464, bytecode pc 39
    this.m_winStar_2.setVisible(false);
    // source line 465, bytecode pc 59
    this.m_winStar_3.setVisible(false);
},
    hideAboutSalary: function() {
    // source line 470, bytecode pc 19
    this.m_salary_str.setVisible(false);
    // source line 471, bytecode pc 39
    this.m_salary_value.setVisible(false);
    // source line 472, bytecode pc 59
    this.m_salary_bg.setVisible(false);
},
    hideAboutHonor: function() {
    // source line 477, bytecode pc 19
    this.m_honor_str.setVisible(false);
    // source line 478, bytecode pc 39
    this.m_honor_value.setVisible(false);
    // source line 479, bytecode pc 59
    this.m_honor_bg.setVisible(false);
},
    hideDropIcon: function() {
    // source line 484, bytecode pc 19
    this.m_drop_1.setVisible(false);
    // source line 485, bytecode pc 39
    this.m_drop_2.setVisible(false);
    // source line 486, bytecode pc 59
    this.m_drop_3.setVisible(false);
},
    hideAboutgeneralsNum: function() {
    // source line 491, bytecode pc 19
    this.m_generalsNum_bg.setVisible(false);
    // source line 492, bytecode pc 39
    this.m_remainderGeneral.setVisible(false);
    // source line 493, bytecode pc 59
    this.m_remainderGeneralIntr.setVisible(false);
},
    hideAboutYuanBao: function() {
    // source line 498, bytecode pc 19
    this.m_yuanbao.setVisible(false);
    // source line 499, bytecode pc 39
    this.m_yuanbao_bg.setVisible(false);
    // source line 500, bytecode pc 59
    this.m_dropCoin.setVisible(false);
},
    showIntegration: function() {
    var label_1, label_2, label_3;
    if (!this.sucess) {
        // source line 506, bytecode pc 70
        (label_1 = xs.Views.Label.LabelExt.createWithStyles([ "LS_fightUI1", "LS_Lv" ]));
        // source line 507, bytecode pc 129
        label_1.setStringParams(0, [ xs.Tools.String.createString("maxCheckPoint") ]);
        // source line 508, bytecode pc 173
        label_1.setStringParams(1, [ this.infoModel.getMaxIntegration() ]);
        // source line 513, bytecode pc 295
        xs.Utils.Node.attachNodes(this.ccbNode.getChildByTag(this.cfg.ccbCfg_win.Booty_tag), label_1, { desc: "lb", offset: cc.p(-200, -150), sc: false });
        // source line 516, bytecode pc 354
        (label_2 = xs.Views.Label.LabelExt.createWithStyles([ "LS_fightUI1", "LS_Lv" ]));
        // source line 517, bytecode pc 413
        label_2.setStringParams(0, [ xs.Tools.String.createString("totalCheckPoint") ]);
        // source line 518, bytecode pc 457
        label_2.setStringParams(1, [ this.infoModel.getTotalProgress() ]);
        // source line 523, bytecode pc 579
        xs.Utils.Node.attachNodes(this.ccbNode.getChildByTag(this.cfg.ccbCfg_win.Booty_tag), label_2, { desc: "lb", offset: cc.p(-200, -190), sc: false });
        // source line 526, bytecode pc 638
        (label_3 = xs.Views.Label.LabelExt.createWithStyles([ "LS_fightUI1", "LS_Lv" ]));
        // source line 527, bytecode pc 697
        label_3.setStringParams(0, [ xs.Tools.String.createString("totalIntegration") ]);
        // source line 528, bytecode pc 741
        label_3.setStringParams(1, [ this.infoModel.getTotalIntegration() ]);
        // source line 533, bytecode pc 863
        xs.Utils.Node.attachNodes(this.ccbNode.getChildByTag(this.cfg.ccbCfg_win.Booty_tag), label_3, { desc: "lb", offset: cc.p(-200, -230), sc: false });
    } else {
        // source line 537, bytecode pc 927
        (label_2 = xs.Views.Label.LabelExt.createWithStyles([ "LS_fightUI1", "LS_Lv" ]));
        // source line 538, bytecode pc 986
        label_2.setStringParams(0, [ xs.Tools.String.createString("checkPoint") ]);
        // source line 539, bytecode pc 1030
        label_2.setStringParams(1, [ this.infoModel.getTotalProgress() ]);
        // source line 544, bytecode pc 1152
        xs.Utils.Node.attachNodes(this.ccbNode.getChildByTag(this.cfg.ccbCfg_win.Booty_tag), label_2, { desc: "lb", offset: cc.p(-200, -150), sc: false });
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 550, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 551, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 552, bytecode pc 71
    this.m_btn_replay.setTouchPriority((this.m_baseTouchPriority + this.cfg.btn_replay.priority));
    // source line 553, bytecode pc 113
    this.m_btn_confirm.setTouchPriority((this.m_baseTouchPriority + this.cfg.btn_confirm.priority));
    if (this.gotoEquipMentBtn) {
        // source line 559, bytecode pc 168
        this.gotoEquipMentBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.shortcut[1].priority));
    }
    if (this.m_btn_check) {
        // source line 565, bytecode pc 221
        this.m_btn_check.setTouchPriority((this.m_baseTouchPriority + this.cfg.btn_check.priority));
    }
},
    cfg: {
        ccbCfg_win: {
            WinShow_tag: 10,
            WinShow: [
                { name: "m_winBg", tag: 45 },
                { name: "m_winWord", tag: 43 },
                { name: "m_winStar_1", tag: 40 },
                { name: "m_winStar_2", tag: 41 },
                { name: "m_winStar_3", tag: 42 }
            ],
            CaculateInfo_tag: 11,
            CaculateInfo: [
                { name: "m_remainderGeneral", type: "ls", tag: 10, id: "LS_Lv" },
                { name: "m_rounds", type: "ls", tag: 11, id: "LS_Lv" },
                {
                    name: "m_remainderGeneralIntr",
                    type: "ls",
                    tag: 12,
                    id: "LS_qiangduo_Inf",
                    stringKey: "derremainderGeneral"
                },
                { type: "ls", tag: 13, id: "LS_qiangduo_Inf", stringKey: "fightRounds" },
                { name: "m_generalsNum_bg", tag: 14 }
            ],
            Award_tag: 12,
            Award: [
                { name: "m_userExp", tag: 12, type: "ls", id: "LS_Lv" },
                { name: "m_yuanbao", tag: 41 },
                { name: "m_yuanbao_bg", tag: 42 },
                { name: "m_dropCoin", tag: 43, type: "ls", id: "LS_mainUI4" },
                { name: "m_salary_value", tag: 20, type: "ls", id: "LS_mainUI4" },
                { name: "m_salary_str", tag: 21, type: "ls", id: "LS_SXJC", stringKey: "salary_0" },
                { name: "m_salary_bg", tag: 22 },
                { name: "m_honor_value", tag: 30, type: "ls", id: "LS_mainUI4" },
                { name: "m_honor_str", tag: 31, type: "ls", id: "LS_SXJC", stringKey: "honor_0" },
                { name: "m_honor_bg", tag: 32 },
                { name: "m_exp_bg", tag: 46 },
                { name: "zhandoujiangli", tag: 100, type: "ls", id: "LS_shiji", stringId: "1071110055" }
            ],
            Booty_tag: 13,
            Booty: [
                { name: "m_drop_1", tag: 14 },
                { name: "m_drop_2", tag: 15 },
                { name: "m_drop_3", tag: 16 },
                { name: "m_btn_replay", tag: 17, type: "btn", id: "Btn_Replay" },
                { name: "m_btn_confirm", tag: 18, type: "btn", id: "Btn_Confirm_2" },
                { name: "m_zhanlipin", tag: 101, type: "ls", id: "LS_shiji", stringId: "auto_name_412" }
            ]
        },
        ccbCfg_lose: {
            CaculateInfo_tag: 11,
            LostShow: [ { name: "m_lostBg", tag: 45 }, { name: "m_lostWord", tag: 43 } ],
            CaculateInfo: [
                { name: "m_remainderGeneral", tag: 10, type: "ls", id: "LS_Lv" },
                { name: "m_rounds", tag: 11, type: "ls", id: "LS_Lv" },
                {
                    name: "m_remainderGeneralIntr",
                    type: "ls",
                    tag: 12,
                    id: "LS_qiangduo_Inf",
                    stringKey: "derremainderGeneral"
                },
                { type: "ls", tag: 13, id: "LS_qiangduo_Inf", stringKey: "fightRounds" },
                { name: "m_generalsNum_bg", tag: 14 }
            ],
            Award_tag: 12,
            Award: [
                { name: "m_userExp", tag: 12, type: "ls", id: "LS_Lv" },
                { name: "m_yuanbao", tag: 41 },
                { name: "m_yuanbao_bg", tag: 42 },
                { name: "m_dropCoin", tag: 43, type: "ls", id: "LS_mainUI4" },
                { name: "m_salary_str", tag: 21, type: "ls", id: "LS_SXJC", stringKey: "salary_1" },
                { name: "m_salary_value", tag: 20, type: "ls", id: "LS_mainUI4" },
                { name: "m_salary_bg", tag: 22 },
                { name: "m_honor_value", tag: 30, type: "ls", id: "LS_mainUI4" },
                { name: "m_honor_str", tag: 31, type: "ls", id: "LS_SXJC", stringKey: "honor_0" },
                { name: "m_honor_bg", tag: 32 },
                { name: "m_exp_bg", tag: 46 },
                { name: "zhandoujiangli", type: "ls", tag: 100, id: "LS_shiji", stringId: "1071110055" }
            ],
            Booty_tag: 13,
            Booty: [
                { name: "m_btn_replay", type: "btn", tag: 17, id: "Btn_Replay" },
                { name: "m_btn_confirm", type: "btn", tag: 18, id: "Btn_Confirm_2" },
                { name: "m_btn_check", type: "btn", tag: 19, id: "Btn_LineUp" },
                { name: "m_upEquipment", tag: 31 },
                { name: "m_zhanlipin", type: "ls", tag: 101, id: "LS_shiji", stringId: "auto_name_412" }
            ]
        },
        winTxt: { tag: 43 },
        shortcut: [ { priority: -1 }, { priority: -1 }, { priority: -1 } ],
        btn_replay: { priority: -1 },
        btn_confirm: { priority: -1 },
        btn_check: { priority: -1 }
    }
})));
// source line 684, bytecode pc 2619
(xs.Views.Dialog.FightResult.create = function(param) {
    var ret;
    // source line 685, bytecode pc 28
    (ret = new xs.Views.Dialog.FightResult());
    if ((ret && ret.init(param))) {
        // source line 687, bytecode pc 64
        return ret;
    }
    // source line 689, bytecode pc 66
    return null;
});
// source line 693, bytecode pc 2684
xs.Views.Mgr.registerDialog("FightResult", { "class": xs.Views.Dialog.FightResult });
