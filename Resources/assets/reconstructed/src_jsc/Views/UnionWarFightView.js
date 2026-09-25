// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/UnionWarFightView.js:1
// source line 279, bytecode pc 165
(xs.Views.UnionWarFightView = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 47
    cc.associateWithNative(this, xs.Views.HungerLayer);
},
    offHeight: 20,
    init: function(params) {
    var visibleSize, visibleOrigin, _sort, count, i, fightHeadView;
    if (!this._super()) {
        // source line 16, bytecode pc 19
        return false;
    }
    // source line 18, bytecode pc 34
    (this.btattleId = params.battleId);
    // source line 19, bytecode pc 49
    (this.battleFightInfo = params.battleFightInfo);
    // source line 20, bytecode pc 64
    (this.processState = params.processState);
    // source line 22, bytecode pc 72
    (this.fightStep = 0);
    // source line 23, bytecode pc 80
    (this.team1_fightingIdx = 0);
    // source line 24, bytecode pc 88
    (this.team2_fightingIdx = 0);
    // source line 29, bytecode pc 112
    (this.team1 = this.battleFightInfo.getTeam1());
    // source line 30, bytecode pc 136
    (this.team2 = this.battleFightInfo.getTeam2());
    // source line 31, bytecode pc 166
    xs.dump("this.playersTeam1", this.team1);
    // source line 32, bytecode pc 196
    xs.dump("this.playersTeam2", this.team2);
    // source line 34, bytecode pc 208
    (this.team1_headViews = []);
    // source line 35, bytecode pc 220
    (this.team2_headViews = []);
    // source line 36, bytecode pc 245
    (visibleSize = xs.director.getVisibleSize());
    // source line 37, bytecode pc 270
    (visibleOrigin = xs.director.getVisibleOrigin());
    if ((this.processState == xs.Constant_UnionWar_FightViewProcessState_ShowResult)) {
        // source line 41, bytecode pc 316
        (this.team1 = this.team1.concat());
        // source line 42, bytecode pc 340
        (this.team2 = this.team2.concat());
        // source line 44, bytecode pc 349
        (_sort = function(a, b) {
    // source line 49, bytecode pc 29
    return (a.getKillNum() < b.getKillNum());
});
        // source line 51, bytecode pc 371
        this.team1.sort(_sort);
        // source line 52, bytecode pc 393
        this.team2.sort(_sort);
    }
    // source line 55, bytecode pc 426
    (this.scrollContainerView = xs.Views.HungerLayer.create());
    // source line 56, bytecode pc 454
    (this.team1_view = cc.Layer.create());
    // source line 57, bytecode pc 482
    (this.team2_view = cc.Layer.create());
    // source line 58, bytecode pc 541
    (count = ((this.team1.length > this.team2.length) ? this.team1.length : this.team2.length));
    // source line 59, bytecode pc 546
    (i = 0);
    while ((i < count)) {
        if ((i < this.team1.length)) {
            // source line 65, bytecode pc 641
            (fightHeadView = xs.Views.UnionWarPlayerHeadFightView.create({ teamNo: 1, playerData: this.team1[i], processState: this.processState }));
            // source line 67, bytecode pc 658
            fightHeadView.setListener(this);
            // source line 68, bytecode pc 677
            fightHeadView.setIdx(i);
            // source line 69, bytecode pc 692
            fightHeadView.refreshView();
            // source line 76, bytecode pc 816
            xs.Utils.Node.attachNodes(this.team1_view, fightHeadView, {
    desc: "cb",
    offset: {
        x: (-90 - fightHeadView.getContentSize().width),
        y: (-this.offHeight + (125 * ((count - 1) - i)))
    },
    sc: true
});
            // source line 78, bytecode pc 833
            fightHeadView.setListener(this);
            // source line 79, bytecode pc 855
            this.team1_headViews.push(fightHeadView);
        }
        if ((i < this.team2.length)) {
            // source line 87, bytecode pc 945
            (fightHeadView = xs.Views.UnionWarPlayerHeadFightView.create({ teamNo: 2, playerData: this.team2[i], processState: this.processState }));
            // source line 89, bytecode pc 962
            fightHeadView.setListener(this);
            // source line 90, bytecode pc 981
            fightHeadView.setIdx(i);
            // source line 91, bytecode pc 996
            fightHeadView.refreshView();
            // source line 98, bytecode pc 1100
            xs.Utils.Node.attachNodes(this.team2_view, fightHeadView, { desc: "cb", offset: { x: 85, y: (-this.offHeight + (125 * ((count - 1) - i))) }, sc: true });
            // source line 100, bytecode pc 1117
            fightHeadView.setListener(this);
            // source line 101, bytecode pc 1139
            this.team2_headViews.push(fightHeadView);
        }
        // source line 59, bytecode pc 1154
        i++;
    }
    // source line 104, bytecode pc 1192
    this.scrollContainerView.addChild(this.team1_view);
    // source line 105, bytecode pc 1217
    this.scrollContainerView.addChild(this.team2_view);
    // source line 108, bytecode pc 1237
    (this.viewHeight = (this.offHeight + (125 * count)));
    // source line 109, bytecode pc 1302
    this.scrollContainerView.setContentSize(cc.size(this.scrollContainerView.getContentSize().width, this.viewHeight));
    // source line 112, bytecode pc 1349
    (this.m_scrollViewSize = cc.size(visibleSize.width, (visibleSize.height * 0.75)));
    // source line 113, bytecode pc 1389
    (this.m_scrollView = xs.Views.ScrollView.create(this.m_scrollViewSize));
    // source line 116, bytecode pc 1448
    xs.Utils.Node.attachNodes(this, this.m_scrollView, { desc: "lb", sc: true });
    // source line 118, bytecode pc 1473
    this.m_scrollView.addChildrenView(this.scrollContainerView);
    // source line 119, bytecode pc 1491
    this.m_scrollView.resizeView();
    // source line 122, bytecode pc 1493
    return true;
},
    onEnter: function() {
    // source line 126, bytecode pc 12
    this._super();
    if ((this.processState == xs.Constant_UnionWar_FightViewProcessState_ShowFight)) {
    } else {
        if ((this.processState == xs.Constant_UnionWar_FightViewProcessState_ShowResult)) {
            // source line 134, bytecode pc 74
            this.showResult();
        }
    }
},
    setListener: function(listener) {
    // source line 139, bytecode pc 9
    (this.m_listener = listener);
},
    showResult: function() {
    var i, winSp, loseSp, posL, posR;
    // source line 144, bytecode pc 4
    (i = 0);
    while ((i < this.team1_headViews.length)) {
        // source line 145, bytecode pc 31
        (headView = this.team1_headViews[i]);
        // source line 146, bytecode pc 48
        headView.showHeadViewResult();
        // source line 144, bytecode pc 63
        i++;
    }
    // source line 148, bytecode pc 89
    (i = 0);
    while ((i < this.team2_headViews.length)) {
        // source line 149, bytecode pc 116
        (headView = this.team2_headViews[i]);
        // source line 150, bytecode pc 133
        headView.showHeadViewResult();
        // source line 148, bytecode pc 148
        i++;
    }
    // source line 154, bytecode pc 211
    (winSp = xs.Factorys.Sprite.create("GuildDialog_shengchu", "GuildDialog"));
    // source line 155, bytecode pc 253
    (loseSp = xs.Factorys.Sprite.create("GuildDialog_zhanbai", "GuildDialog"));
    // source line 159, bytecode pc 330
    (posL = cc.p(((this.scrollContainerView.getContentSize().width / 2) - 300), (this.scrollContainerView.getContentSize().height - 200)));
    // source line 162, bytecode pc 407
    (posR = cc.p(((this.scrollContainerView.getContentSize().width / 2) + 300), (this.scrollContainerView.getContentSize().height - 200)));
    if ((this.battleFightInfo.getWinnerUnionIdx() == 0)) {
        // source line 165, bytecode pc 450
        winSp.setPosition(posL);
        // source line 166, bytecode pc 469
        loseSp.setPosition(posR);
    } else {
        // source line 169, bytecode pc 493
        winSp.setPosition(posR);
        // source line 170, bytecode pc 512
        loseSp.setPosition(posL);
    }
    // source line 173, bytecode pc 534
    this.scrollContainerView.addChild(winSp);
    // source line 174, bytecode pc 556
    this.scrollContainerView.addChild(loseSp);
},
    atkStart: function() {
    var winner, _team1_headView, _team2_headView;
    if (this.battleFightInfo.isFightOver(this.fightStep)) {
        // source line 182, bytecode pc 51
        xs.log("战斗结束");
        if ((this.m_listener && this.m_listener.onBtnSkipClicked)) {
            // source line 184, bytecode pc 97
            this.m_listener.onBtnSkipClicked();
        }
        // source line 186, bytecode pc 99
        return void 0;
    }
    // source line 189, bytecode pc 127
    (winner = this.battleFightInfo.getWinner(this.fightStep));
    // source line 190, bytecode pc 144
    (_team1_headView = this.team1_headViews[this.team1_fightingIdx]);
    // source line 191, bytecode pc 161
    (_team2_headView = this.team2_headViews[this.team2_fightingIdx]);
    if ((_team1_headView == null)) {
        // source line 194, bytecode pc 194
        xs.warn("_team1_headView 为空!!!!");
        // source line 195, bytecode pc 212
        this.m_listener.onBtnSkipClicked();
        // source line 196, bytecode pc 214
        return void 0;
    }
    if ((_team2_headView == null)) {
        // source line 199, bytecode pc 247
        xs.warn("_team2_headView 为空!!!!");
        // source line 200, bytecode pc 265
        this.m_listener.onBtnSkipClicked();
        // source line 201, bytecode pc 267
        return void 0;
    }
    // source line 204, bytecode pc 299
    _team1_headView.startAtk({ isWin: (winner == 0) });
    // source line 205, bytecode pc 331
    _team2_headView.startAtk({ isWin: (winner == 1) });
    // source line 207, bytecode pc 339
    (this.isTeamView1Ready = false);
    // source line 208, bytecode pc 347
    (this.isTeamView2Ready = false);
    // source line 211, bytecode pc 374
    this.fightStep++;
},
    atkFinish: function(playerHeadFightView) {
    var _teamNo, upAction;
    // source line 217, bytecode pc 23
    (_teamNo = playerHeadFightView.getTeamNo());
    if (!playerHeadFightView.getResult().isWin) {
        // source line 226, bytecode pc 181
        (upAction = xs.Utils.Action.combineSequence([
    cc.MoveBy.create(0.5, cc.p(0, 125)),
    cc.CallFunc.create(function() {
    // source line 225, bytecode pc 22
    this.atkViewReady(_teamNo);
}.bind(this))
]));
        if ((_teamNo == 1)) {
            // source line 231, bytecode pc 224
            this.team1_fightingIdx++;
            // source line 232, bytecode pc 246
            this.team1_view.runAction(upAction);
        } else {
            // source line 235, bytecode pc 278
            this.team2_fightingIdx++;
            // source line 236, bytecode pc 300
            this.team2_view.runAction(upAction);
        }
        // source line 238, bytecode pc 317
        playerHeadFightView.setVisible(false);
    } else {
        // source line 242, bytecode pc 345
        this.atkViewReady(_teamNo);
    }
},
    atkViewReady: function(teamNo) {
    if ((teamNo == 1)) {
        // source line 249, bytecode pc 17
        (this.isTeamView1Ready = true);
    }
    if ((teamNo == 2)) {
        // source line 252, bytecode pc 36
        (this.isTeamView2Ready = true);
    }
    if ((this.isTeamView1Ready && this.isTeamView2Ready)) {
        // source line 255, bytecode pc 72
        this.atkStart();
    }
},
    getViewHeight: function() {
    // source line 260, bytecode pc 6
    return this.viewHeight;
},
    onBtnSpectatorClicked: function(playerData) {
    var arrVsList, i;
    // source line 265, bytecode pc 35
    (arrVsList = this.battleFightInfo.getPlayerVsList(playerData.getPlayerId()));
    // source line 267, bytecode pc 40
    (i = 0);
    while ((i < arrVsList.length)) {
        // source line 268, bytecode pc 76
        (arrVsList[i].unions = this.battleFightInfo.getUnions());
        // source line 269, bytecode pc 106
        (arrVsList[i].union_war_id = this.battleFightInfo.getUnionWarId());
        // source line 270, bytecode pc 136
        (arrVsList[i].battle_rounds = this.battleFightInfo.getBattleRounds());
        // source line 271, bytecode pc 166
        (arrVsList[i].tag = this.battleFightInfo.getTag());
        // source line 272, bytecode pc 196
        (arrVsList[i].battle_id = this.battleFightInfo.getBattleId());
        // source line 267, bytecode pc 211
        i++;
    }
    // source line 275, bytecode pc 266
    xs.Views.Mgr.showDialogByName("UnionWarBattleResultDialog", arrVsList);
},
    setBaseTouchPriority: function(priority) {
    var i;
    // source line 280, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 281, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 282, bytecode pc 54
    this.m_scrollView.setBaseTouchPriority(this.m_baseTouchPriority);
    // source line 284, bytecode pc 59
    (i = 0);
    while ((i < this.team1_headViews.length)) {
        // source line 285, bytecode pc 94
        this.team1_headViews[i].setBaseTouchPriority(this.m_baseTouchPriority);
        // source line 284, bytecode pc 109
        i++;
    }
    // source line 287, bytecode pc 135
    (i = 0);
    while ((i < this.team2_headViews.length)) {
        // source line 288, bytecode pc 170
        this.team2_headViews[i].setBaseTouchPriority(this.m_baseTouchPriority);
        // source line 287, bytecode pc 185
        i++;
    }
}
}));
// source line 293, bytecode pc 191
(xs.Views.UnionWarFightView.create = function(params) {
    var layer;
    // source line 294, bytecode pc 23
    (layer = new xs.Views.UnionWarFightView());
    if ((layer && layer.init(params))) {
        // source line 296, bytecode pc 59
        return layer;
    }
    // source line 298, bytecode pc 82
    xs.warn("xs.Views.UnionWarFightView.create error!");
    // source line 299, bytecode pc 84
    return null;
});
