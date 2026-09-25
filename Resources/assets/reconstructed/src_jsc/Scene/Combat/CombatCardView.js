// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Combat/CombatCardView.js:1
// source line 320, bytecode pc 353
(xs.Views.CombatCardView = cc.Layer.extend({
    cfg_info: [ { tag: 11, type: "ls", id: "LS_Lv" }, { tag: 13, type: "ls", id: "LS_mainUI4" } ],
    cfg_control: [ { tag: 1, type: "ls", id: "LS_qiangduo_Inf", stringId: "auto_name_62" } ],
    ctor: function() {
    // source line 17, bytecode pc 12
    this._super();
    // source line 18, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var visibleSize, card1, cardSize, card2, card3, card4, i, infoBar, controlBar;
    // source line 22, bytecode pc 35
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 23, bytecode pc 47
    (this.combatCards = []);
    // source line 24, bytecode pc 101
    (this.combatsInfo = xs.Profile.GameData.Mgr.getInstance().Combat.getCombats());
    // source line 25, bytecode pc 113
    (this.cardsBasePos = []);
    // source line 26, bytecode pc 157
    (this.cardsBaseScale = [ 0.9, 1, 0.9, 0.8 ]);
    // source line 27, bytecode pc 192
    (this.cardsBaseZorder_S = [ 2, 4, 3, 1 ]);
    // source line 28, bytecode pc 227
    (this.cardsBaseZorder_N = [ 3, 4, 2, 1 ]);
    // source line 29, bytecode pc 235
    (this.cardDis = 0);
    // source line 30, bytecode pc 243
    (this.offSet = 0);
    // source line 31, bytecode pc 251
    (this.touchOnce = 0);
    // source line 33, bytecode pc 259
    (this.startIdx = 0);
    // source line 35, bytecode pc 267
    (this.actionEnd = true);
    // source line 38, bytecode pc 291
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 39, bytecode pc 306
    this.setTouchEnabled(true);
    // source line 42, bytecode pc 329
    (card1 = this.combatsInfo[0].createCard_CardExp());
    // source line 43, bytecode pc 347
    (cardSize = card1.getContentSize());
    // source line 47, bytecode pc 469
    xs.Utils.Node.attachNodes(this, card1, {
    desc: "cl",
    offset: cc.p((((visibleSize.width - xs.Views.MainMenuView.Width) - cardSize.width) / 4), 30),
    sc: true
});
    // source line 52, bytecode pc 534
    this.combatCards.push({ card: card1, pos: card1.getPosition(), scale: this.cardsBaseScale[0] });
    // source line 55, bytecode pc 557
    (card2 = this.combatsInfo[1].createCard_CardExp());
    // source line 59, bytecode pc 669
    xs.Utils.Node.attachNodes(this, card2, { desc: "cl", offset: cc.p(((visibleSize.width - xs.Views.MainMenuView.Width) / 2), 0), sc: true });
    // source line 64, bytecode pc 734
    this.combatCards.push({ card: card2, pos: card2.getPosition(), scale: this.cardsBaseScale[1] });
    // source line 67, bytecode pc 758
    (card3 = this.combatsInfo[2].createCard_CardExp());
    // source line 71, bytecode pc 883
    xs.Utils.Node.attachNodes(this, card3, {
    desc: "cl",
    offset: cc.p(((((visibleSize.width - xs.Views.MainMenuView.Width) * 3) + cardSize.width) / 4), 30),
    sc: true
});
    // source line 77, bytecode pc 949
    this.combatCards.push({ card: card3, pos: card3.getPosition(), scale: this.cardsBaseScale[2] });
    // source line 80, bytecode pc 973
    (card4 = this.combatsInfo[3].createCard_CardExp());
    // source line 84, bytecode pc 1086
    xs.Utils.Node.attachNodes(this, card4, { desc: "cl", offset: cc.p(((visibleSize.width - xs.Views.MainMenuView.Width) / 2), 80), sc: true });
    // source line 90, bytecode pc 1152
    this.combatCards.push({ card: card4, pos: card4.getPosition(), scale: this.cardsBaseScale[3] });
    // source line 93, bytecode pc 1157
    (i = 0);
    while ((i < this.combatCards.length)) {
        // source line 94, bytecode pc 1240
        this.cardsBasePos.push(cc.p(this.combatCards[i].pos.x, this.combatCards[i].pos.y));
        // source line 95, bytecode pc 1296
        this.combatCards[i].card.setAnchorPoint(cc.p(0.5, 0.5));
        // source line 96, bytecode pc 1334
        this.combatCards[i].card.setScale(this.cardsBaseScale[i]);
        // source line 97, bytecode pc 1372
        this.combatCards[i].card.setZOrder(this.cardsBaseZorder_S[i]);
        // source line 93, bytecode pc 1386
        (i = (+i + 1));
    }
    // source line 100, bytecode pc 1441
    (infoBar = xs.ccb_reader.load("ccb3/0_7_13_Combat_InfoBar.ccbi", this));
    // source line 101, bytecode pc 1480
    infoBar.setContentSize(cc.size(331, 39));
    // source line 102, bytecode pc 1520
    infoBar.setAnchorPoint(cc.p(0.5, 0));
    // source line 106, bytecode pc 1633
    xs.Utils.Node.attachNodes(this, infoBar, {
    desc: "lb",
    offset: cc.p(((visibleSize.width - xs.Views.MainMenuView.Width) / 2), 110),
    sc: true
});
    // source line 109, bytecode pc 1666
    (controlBar = xs.ccb_reader.load("ccb3/0_7_13_UpgradeBar.ccbi", this));
    // source line 110, bytecode pc 1705
    controlBar.setContentSize(cc.size(498, 94));
    // source line 111, bytecode pc 1745
    controlBar.setAnchorPoint(cc.p(0.5, 0));
    // source line 115, bytecode pc 1858
    xs.Utils.Node.attachNodes(this, controlBar, { desc: "lb", offset: cc.p(((visibleSize.width - xs.Views.MainMenuView.Width) / 2), 15), sc: true });
    // source line 119, bytecode pc 1949
    (this.cultivateBtn = xs.Utils.replaceButton(controlBar, xs.Views.CombatCardView.bottomCfg.btn_tag, xs.Views.Btn.create("Btn_Upgrade")));
    // source line 120, bytecode pc 1969
    this.cultivateBtn.setEventOnDisable(true);
    // source line 121, bytecode pc 2007
    this.cultivateBtn.setOnClickCallBack(this.onCultivate.bind(this));
    // source line 122, bytecode pc 2028
    this.cultivateBtn.setTouchPriority(-2);
    // source line 123, bytecode pc 2064
    this.cultivateBtn.setPosition(this.cultivateBtn.getPosition());
    // source line 124, bytecode pc 2104
    xs.Utils.UI.replaceCcbByCfg(infoBar, this.cfg_info, this);
    // source line 125, bytecode pc 2144
    xs.Utils.UI.replaceCcbByCfg(controlBar, this.cfg_control, this);
    // source line 127, bytecode pc 2191
    (this.combatLevel = infoBar.getChildByTag(xs.Views.CombatCardView.bottomCfg.level_tag));
    // source line 128, bytecode pc 2238
    (this.combatIcon = infoBar.getChildByTag(xs.Views.CombatCardView.bottomCfg.icon_tag));
    // source line 129, bytecode pc 2285
    (this.combatPlusValue = infoBar.getChildByTag(xs.Views.CombatCardView.bottomCfg.plusValue_tag));
    // source line 133, bytecode pc 2329
    (this.cardDis = (this.combatCards[1].pos.x - this.combatCards[0].pos.x));
    // source line 135, bytecode pc 2331
    return true;
},
    onEnter: function() {
    // source line 139, bytecode pc 12
    this._super();
    // source line 140, bytecode pc 38
    this.schedule(this.timer, 0.2);
    // source line 141, bytecode pc 64
    this.updateBottomInfo(this.getSelectedCardInfo());
},
    updateBottomInfo: function(combatModel) {
    var combatIcon;
    // source line 146, bytecode pc 32
    this.combatLevel.setString(combatModel.getLevel());
    // source line 148, bytecode pc 50
    (combatIcon = combatModel.createTypeIcon());
    // source line 149, bytecode pc 83
    combatIcon.setPosition(this.combatIcon.getPosition());
    // source line 150, bytecode pc 116
    this.combatIcon.getParent().addChild(combatIcon);
    // source line 151, bytecode pc 136
    this.combatIcon.removeFromParent(true);
    // source line 152, bytecode pc 146
    (this.combatIcon = combatIcon);
    // source line 154, bytecode pc 185
    this.combatPlusValue.setString(("+" + combatModel.getExtraBuff()));
    // source line 158, bytecode pc 218
    this.cultivateBtn.setEnabled(combatModel.isOpen());
},
    onCultivate: function(sender) {
    if (this.getSelectedCardInfo().isOpen()) {
        // source line 165, bytecode pc 84
        xs.Scene.Mgr.changeSceneByName("CombatUpgradeScene", { combatInfo: this.getSelectedCardInfo() });
    } else {
        // source line 168, bytecode pc 182
        xs.Views.Mgr.showToast(xs.Tools.String.createStringWithArgsArray("openTip", [ this.getSelectedCardInfo().getOpenLevel() ]));
    }
},
    onTouchBegan: function(touch, e) {
    // source line 174, bytecode pc 18
    this.log("onTouchBegan ");
    // source line 176, bytecode pc 26
    (this.moveStart = false);
    // source line 177, bytecode pc 34
    (this.touchBegan = true);
    // source line 178, bytecode pc 42
    (this.touchStartTime = 0);
    // source line 179, bytecode pc 44
    return true;
},
    onTouchMoved: function(touch, e) {
    if ((this.moveStart === false)) {
        // source line 184, bytecode pc 35
        (this.moveStartPoint = this.convertTouchToNodeSpace(touch));
        // source line 185, bytecode pc 43
        (this.moveStart = true);
    }
},
    onTouchEnded: function(touch, e) {
    var endPoint;
    if ((this.touchStartTime >= 5)) {
        // source line 191, bytecode pc 15
        return void 0;
    }
    if ((this.moveStart === false)) {
        // source line 195, bytecode pc 45
        this.onMyTouchOnce(touch);
        // source line 196, bytecode pc 47
        return void 0;
    }
    // source line 199, bytecode pc 67
    (endPoint = this.convertTouchToNodeSpace(touch));
    if (((endPoint.x - this.moveStartPoint.x) < -20)) {
        // source line 201, bytecode pc 110
        this.moveOneByOne(true);
    } else {
        if (((endPoint.x - this.moveStartPoint.x) > 20)) {
            // source line 203, bytecode pc 158
            this.moveOneByOne(false);
        }
    }
    // source line 205, bytecode pc 166
    (this.touchBegan = false);
    // source line 207, bytecode pc 192
    this.updateBottomInfo(this.getSelectedCardInfo());
},
    onMyTouchOnce: function(touch) {
    var touchPos, rect_card1, rect_card2;
    // source line 213, bytecode pc 19
    (touchPos = this.convertTouchToNodeSpace(touch));
    // source line 214, bytecode pc 60
    (rect_card1 = this.combatCards[this.getCardDataIdxByPosIdx(0)].card.getBoundingBox());
    // source line 215, bytecode pc 102
    (rect_card2 = this.combatCards[this.getCardDataIdxByPosIdx(2)].card.getBoundingBox());
    if (cc.rectContainsPoint(rect_card1, touchPos)) {
        // source line 218, bytecode pc 146
        this.moveOneByOne(false);
    } else {
        if (cc.rectContainsPoint(rect_card2, touchPos)) {
            // source line 220, bytecode pc 195
            this.moveOneByOne(true);
        }
    }
    // source line 223, bytecode pc 221
    this.updateBottomInfo(this.getSelectedCardInfo());
},
    moveOneByOne: function(bDirection) {
    var duration;
    if ((this.actionEnd === false)) {
        // source line 228, bytecode pc 14
        return void 0;
    }
    // source line 231, bytecode pc 23
    (duration = 0.5);
    if (bDirection) {
        // source line 233, bytecode pc 46
        (this.startIdx = (this.startIdx + 1));
        if ((this.startIdx > 3)) {
            // source line 235, bytecode pc 68
            (this.startIdx = 0);
        }
        // source line 237, bytecode pc 76
        (this.clockWise = false);
    } else {
        // source line 239, bytecode pc 96
        (this.startIdx = (this.startIdx - 1));
        if ((this.startIdx < 0)) {
            // source line 241, bytecode pc 118
            (this.startIdx = 3);
        }
        // source line 243, bytecode pc 126
        (this.clockWise = true);
    }
    // source line 246, bytecode pc 134
    (this.actionEnd = false);
    // source line 247, bytecode pc 151
    this.updateCardState(duration);
    // source line 248, bytecode pc 243
    this.runAction(cc.Sequence.create(cc.DelayTime.create(duration), cc.CallFunc.create(this.onMoveEnd, this)));
    // source line 249, bytecode pc 338
    this.runAction(cc.Sequence.create(cc.DelayTime.create((duration / 2)), cc.CallFunc.create(this.onBugMe, this)));
},
    timer: function(dt) {
    if ((this.touchBegan === true)) {
        // source line 254, bytecode pc 38
        (this.touchStartTime = (+this.touchStartTime + 1));
    } else {
        // source line 256, bytecode pc 52
        (this.touchStartTime = 0);
    }
},
    onMoveEnd: function() {
    // source line 261, bytecode pc 7
    (this.actionEnd = true);
},
    onBugMe: function() {
    // source line 266, bytecode pc 19
    this.adjustZOrder(this.clockWise);
},
    getCardDataIdxByPosIdx: function(posIdx) {
    // source line 270, bytecode pc 13
    return ((this.startIdx + posIdx) % 4);
},
    updateCardState: function(duration) {
    var i;
    if ((duration === undefined)) {
        // source line 277, bytecode pc 18
        (i = 0);
        while ((i < this.combatCards.length)) {
            // source line 278, bytecode pc 67
            this.combatCards[i].card.setPosition(this.combatCards[i].pos);
            // source line 279, bytecode pc 110
            this.combatCards[i].card.setScale(this.combatCards[i].scale);
            // source line 277, bytecode pc 124
            (i = (+i + 1));
        }
    } else {
        if (((this.offSet < 0) && (Math.abs(this.offSet) > (this.cardDis / 2)))) {
            // source line 284, bytecode pc 218
            (this.startIdx = (this.startIdx + 1));
            if ((this.startIdx > 3)) {
                // source line 286, bytecode pc 240
                (this.startIdx = 0);
            }
        } else {
            if (((this.offSet > 0) && (Math.abs(this.offSet) > (this.cardDis / 2)))) {
                // source line 290, bytecode pc 312
                (this.startIdx = (this.startIdx - 1));
                if ((this.startIdx < 0)) {
                    // source line 292, bytecode pc 334
                    (this.startIdx = 3);
                }
            }
        }
        // source line 296, bytecode pc 339
        (i = 0);
        while ((i < 4)) {
            // source line 297, bytecode pc 422
            this.combatCards[this.getCardDataIdxByPosIdx(i)].card.runAction(cc.MoveTo.create(duration, this.cardsBasePos[i]));
            // source line 299, bytecode pc 499
            this.combatCards[this.getCardDataIdxByPosIdx(i)].card.runAction(cc.ScaleTo.create(duration, this.cardsBaseScale[i]));
            // source line 296, bytecode pc 513
            (i = (+i + 1));
        }
    }
    if ((this.offSet !== 0)) {
        // source line 304, bytecode pc 552
        this.adjustZOrder();
    }
},
    adjustZOrder: function(bClockWise) {
    var i;
    // source line 310, bytecode pc 4
    (i = 0);
    while ((i < 4)) {
        if (((this.offSet <= 0) || (bClockWise === true))) {
            // source line 312, bytecode pc 85
            this.combatCards[this.getCardDataIdxByPosIdx(i)].card.setZOrder(this.cardsBaseZorder_S[i]);
        } else {
            if (((this.offSet > 0) || (bClockWise === false))) {
                // source line 314, bytecode pc 165
                this.combatCards[this.getCardDataIdxByPosIdx(i)].card.setZOrder(this.cardsBaseZorder_N[i]);
            }
        }
        // source line 310, bytecode pc 179
        (i = (+i + 1));
    }
},
    getSelectedCardInfo: function() {
    // source line 321, bytecode pc 17
    (this.curSelIdx = ((this.startIdx + 1) % 4));
    // source line 322, bytecode pc 31
    return this.combatsInfo[this.curSelIdx];
}
}));
// source line 331, bytecode pc 408
(xs.Views.CombatCardView.bottomCfg = { level_tag: 11, icon_tag: 12, btn_tag: 14, plusValue_tag: 13 });
// source line 334, bytecode pc 434
(xs.Views.CombatCardView.create = function() {
    var ret;
    // source line 335, bytecode pc 23
    (ret = new xs.Views.CombatCardView());
    if ((ret && ret.init())) {
        // source line 337, bytecode pc 55
        return ret;
    }
    // source line 340, bytecode pc 57
    return null;
});
