// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/UpgradeCard/BaseUpgradeCard.js:1
// source line 379, bytecode pc 203
(xs.Views.CardUpdateView = cc.Node.extend({
    ctor: function() {
    // source line 13, bytecode pc 12
    this._super();
    // source line 14, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(dataModel) {
    var progressBgSprite_top, progressBgSprite_bom, progressMaskSprite;
    if (!this._super()) {
        // source line 19, bytecode pc 19
        return false;
    }
    // source line 22, bytecode pc 29
    (this.m_data = dataModel);
    // source line 23, bytecode pc 37
    (this.m_ccbNode = null);
    // source line 24, bytecode pc 45
    (this.m_card = null);
    // source line 26, bytecode pc 83
    this.setContentSize(cc.size(370, 400));
    // source line 27, bytecode pc 125
    this.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 29, bytecode pc 176
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.CardUpdateView, this));
    // source line 30, bytecode pc 212
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 32, bytecode pc 267
    (this.m_card = this.m_ccbNode.getChildByTag(xs.Views.CardUpdateView.cfg.m_card.tag));
    // source line 34, bytecode pc 322
    (this.progressBarSprite = this.m_ccbNode.getChildByTag(xs.Views.CardUpdateView.cfg.progressBar.tag));
    // source line 35, bytecode pc 340
    this.progressBarSprite.removeFromParent();
    // source line 36, bytecode pc 364
    (this.progressBarSpritePos = this.progressBarSprite.getPosition());
    // source line 38, bytecode pc 399
    (this.progressTimer = cc.ProgressTimer.create(this.progressBarSprite));
    // source line 39, bytecode pc 424
    this.progressTimer.setPosition(this.progressBarSpritePos);
    // source line 40, bytecode pc 453
    this.progressTimer.setType(cc.PROGRESS_TIMER_TYPE_BAR);
    // source line 41, bytecode pc 492
    this.progressTimer.setMidpoint(cc.p(0, 0));
    // source line 42, bytecode pc 531
    this.progressTimer.setBarChangeRate(cc.p(0, 1));
    // source line 43, bytecode pc 580
    this.progressTimer.setZOrder(xs.Views.CardUpdateView.cfg.progressBar.zorder);
    // source line 44, bytecode pc 605
    this.m_ccbNode.addChild(this.progressTimer);
    // source line 46, bytecode pc 657
    (progressBgSprite_top = this.m_ccbNode.getChildByTag(xs.Views.CardUpdateView.cfg.progressBgTop.tag));
    // source line 47, bytecode pc 703
    progressBgSprite_top.setZOrder(xs.Views.CardUpdateView.cfg.progressBgTop.zorder);
    // source line 49, bytecode pc 755
    (progressBgSprite_bom = this.m_ccbNode.getChildByTag(xs.Views.CardUpdateView.cfg.progressBgBom.tag));
    // source line 50, bytecode pc 801
    progressBgSprite_bom.setZOrder(xs.Views.CardUpdateView.cfg.progressBgBom.zorder);
    // source line 52, bytecode pc 853
    (progressMaskSprite = this.m_ccbNode.getChildByTag(xs.Views.CardUpdateView.cfg.progressMask.tag));
    // source line 53, bytecode pc 899
    progressMaskSprite.setZOrder(xs.Views.CardUpdateView.cfg.progressMask.zorder);
    if (this.m_data) {
        // source line 57, bytecode pc 930
        this.updateCardInfo(this.m_data);
    }
    // source line 60, bytecode pc 968
    this.setContentSize(cc.size(360, 400));
    // source line 62, bytecode pc 976
    (this.progressTimerAction = null);
    // source line 64, bytecode pc 978
    return true;
},
    updateCardInfo: function(dataModel, touchPriority, callbackFunc) {
    var newCard, contentSize;
    // source line 69, bytecode pc 17
    (newCard = dataModel.createCard_CardExp());
    // source line 70, bytecode pc 35
    (contentSize = newCard.getContentSize());
    if (!touchPriority) {
        if ((contentSize.width > 0)) {
            // source line 73, bytecode pc 87
            newCard.setScale((256 / contentSize.width));
        } else {
            // source line 75, bytecode pc 113
            newCard.setScale(0.8);
        }
        // source line 78, bytecode pc 146
        newCard.setPosition(this.m_card.getPosition());
        // source line 79, bytecode pc 168
        this.m_ccbNode.addChild(newCard);
        // source line 80, bytecode pc 202
        xs.Utils.Node.safeRemoveChild(this.m_card);
        // source line 81, bytecode pc 212
        (this.m_card = newCard);
    } else {
        // source line 83, bytecode pc 254
        (this.touchBtn = xs.Views.Btn.createInvisibleWithChild(newCard));
        // source line 84, bytecode pc 290
        this.touchBtn.setPosition(this.m_card.getPosition());
        // source line 85, bytecode pc 315
        this.m_ccbNode.addChild(this.touchBtn);
        // source line 86, bytecode pc 349
        xs.Utils.Node.safeRemoveChild(this.m_card);
        // source line 87, bytecode pc 362
        (this.m_card = this.touchBtn);
        // source line 88, bytecode pc 387
        this.touchBtn.setTouchPriority((touchPriority - 10));
        // source line 89, bytecode pc 409
        this.touchBtn.setOnClickCallBack(callbackFunc);
        // source line 90, bytecode pc 429
        this.touchBtn.setZoomOnTouchDown(false);
    }
},
    setCurPercentage: function(percentage) {
    if (this.progressTimerAction) {
        // source line 100, bytecode pc 35
        this.progressTimer.stopAction(this.progressTimerAction);
        // source line 101, bytecode pc 43
        (this.progressTimerAction = null);
    }
    // source line 104, bytecode pc 65
    this.progressTimer.setPercentage(percentage);
},
    getCurPercentage: function() {
    // source line 107, bytecode pc 17
    return this.progressTimer.getPercentage();
},
    runProgressAction: function(from, to, overTimes, time) {
    var fullTime, actionArray, progress, delayTime, callFun, action;
    // source line 117, bytecode pc 8
    (fullTime = 0.5);
    if (time) {
        // source line 119, bytecode pc 23
        (fullTime = time);
    }
    // source line 121, bytecode pc 32
    (actionArray = []);
    if ((overTimes > 0)) {
        while ((overTimes > 0)) {
            // source line 124, bytecode pc 111
            (progress = cc.ProgressFromTo.create(((Math.abs((100 - from)) / 100) * fullTime), from, 100));
            // source line 125, bytecode pc 130
            actionArray.push(progress);
            // source line 127, bytecode pc 161
            (delayTime = cc.DelayTime.create(0.2));
            // source line 128, bytecode pc 180
            actionArray.push(delayTime);
            // source line 129, bytecode pc 185
            (from = 0);
            // source line 130, bytecode pc 199
            (overTimes = (+overTimes - 1));
        }
    } else {
        while ((overTimes < 0)) {
            // source line 134, bytecode pc 283
            (progress = cc.ProgressFromTo.create(((Math.abs((0 - from)) / 100) * fullTime), from, 0));
            // source line 135, bytecode pc 302
            actionArray.push(progress);
            // source line 136, bytecode pc 336
            (callFun = cc.CallFunc.create(this.setPercentageFull, this));
            // source line 137, bytecode pc 355
            actionArray.push(callFun);
            // source line 138, bytecode pc 386
            (delayTime = cc.DelayTime.create(0.2));
            // source line 139, bytecode pc 405
            actionArray.push(delayTime);
            // source line 140, bytecode pc 411
            (from = 100);
            // source line 141, bytecode pc 425
            (overTimes = (+overTimes + 1));
        }
    }
    // source line 144, bytecode pc 502
    (action = cc.ProgressFromTo.create(((Math.abs((to - from)) / 100) * fullTime), from, to));
    // source line 145, bytecode pc 521
    actionArray.push(action);
    // source line 147, bytecode pc 565
    this.progressTimer.runAction(cc.Sequence.create(actionArray));
},
    setPercentageFull: function() {
    // source line 152, bytecode pc 20
    this.progressTimer.setPercentage(100);
},
    runPercentageAction: function(percentage, actionTimes, bAdd) {
    var actionArray, to;
    // source line 158, bytecode pc 9
    (this.overPercentage = percentage);
    // source line 159, bytecode pc 19
    (this.actionTimes = actionTimes);
    if ((actionTimes > 0)) {
        // source line 162, bytecode pc 46
        this.runFullAction(bAdd);
    } else {
        // source line 164, bytecode pc 60
        (actionArray = []);
        // source line 166, bytecode pc 70
        (this.curPercentage = percentage);
        // source line 167, bytecode pc 126
        (to = cc.ProgressFromTo.create(0.5, this.progressTimer.getPercentage(), this.curPercentage));
        // source line 169, bytecode pc 145
        actionArray.push(to);
        // source line 172, bytecode pc 201
        actionArray.push(cc.CallFunc.create(function() {
    // source line 171, bytecode pc 7
    (this.progressTimerAction = null);
}.bind(this)));
        // source line 174, bytecode pc 238
        (this.progressTimerAction = xs.Utils.Action.combineSequence(actionArray));
        // source line 175, bytecode pc 263
        this.progressTimer.runAction(this.progressTimerAction);
    }
},
    runFullAction: function(bAdd) {
    var actionArray, to1, to2;
    // source line 180, bytecode pc 9
    (this.bAdd = bAdd);
    // source line 181, bytecode pc 35
    (this.actionTimes = (+this.actionTimes - 1));
    // source line 182, bytecode pc 45
    (actionArray = []);
    if (bAdd) {
        // source line 184, bytecode pc 105
        (to1 = cc.ProgressFromTo.create(0.5, this.progressTimer.getPercentage(), 100));
        // source line 185, bytecode pc 124
        actionArray.push(to1);
    } else {
        // source line 187, bytecode pc 180
        (to2 = cc.ProgressFromTo.create(0.5, this.progressTimer.getPercentage(), 0));
        // source line 188, bytecode pc 199
        actionArray.push(to2);
        // source line 191, bytecode pc 256
        actionArray.push(cc.CallFunc.create(this.notifyLevelChange.bind(this)));
    }
    if (bAdd) {
        if (!this.armLeft) {
            // source line 197, bytecode pc 320
            (this.armLeft = xs.Views.Armature.AutoAudioArmature.create("Arm_UpgradeCard_LevelUp"));
            // source line 200, bytecode pc 403
            xs.Utils.Node.attachNodes(this.progressTimer, this.armLeft, { desc: "cl", offset: cc.p(0, 0) });
            // source line 204, bytecode pc 446
            this.armLeft.playAniById("idle", { loop: false, speed: 1 });
        }
        if (!this.armRight) {
            // source line 209, bytecode pc 502
            (this.armRight = xs.Views.Armature.AutoAudioArmature.create("Arm_UpgradeCard_LevelUp"));
            // source line 212, bytecode pc 585
            xs.Utils.Node.attachNodes(this.progressTimer, this.armRight, { desc: "cr", offset: cc.p(0, 0) });
            // source line 216, bytecode pc 628
            this.armRight.playAniById("idle", { loop: false, speed: 1 });
        }
        // source line 226, bytecode pc 751
        actionArray.push(cc.Spawn.create(this.armLeft.createPlayAction("levelUpLight", { speed: 1, loop: false }), this.armRight.createPlayAction("levelUpLight", { speed: 1, loop: false })));
        // source line 230, bytecode pc 808
        actionArray.push(cc.CallFunc.create(this.notifyLevelChange.bind(this)));
    }
    // source line 234, bytecode pc 854
    actionArray.push(cc.CallFunc.create(this.onPercentageActionEnd, this));
    // source line 236, bytecode pc 891
    (this.progressTimerAction = xs.Utils.Action.combineSequence(actionArray));
    // source line 237, bytecode pc 916
    this.progressTimer.runAction(this.progressTimerAction);
},
    onPercentageActionEnd: function() {
    if ((this.actionTimes > 0)) {
        if (this.bAdd) {
            // source line 244, bytecode pc 38
            this.setCurPercentage(0);
            // source line 245, bytecode pc 58
            this.runFullAction(this.bAdd);
        } else {
            // source line 247, bytecode pc 79
            this.setCurPercentage(100);
            // source line 248, bytecode pc 99
            this.runFullAction(this.bAdd);
        }
    } else {
        if (this.bAdd) {
            // source line 252, bytecode pc 130
            this.setCurPercentage(0);
            // source line 253, bytecode pc 159
            this.runPercentageAction(this.overPercentage, 0, this.bAdd);
        } else {
            // source line 255, bytecode pc 180
            this.setCurPercentage(100);
            // source line 256, bytecode pc 209
            this.runPercentageAction(this.overPercentage, 0, this.bAdd);
        }
    }
},
    playEatCardAction: function(posArray) {
    var i, particle, cardCenterPos;
    // source line 265, bytecode pc 4
    (i = 0);
    while ((i < posArray.length)) {
        // source line 266, bytecode pc 46
        (particle = xs.Factorys.Particle.create("ParticleLight"));
        // source line 270, bytecode pc 125
        xs.Utils.Node.attachNodes(this.getParent(), particle, { desc: "lb", offset: posArray[i], sc: false });
        // source line 272, bytecode pc 175
        (cardCenterPos = cc.p((this.getPositionX() + 185), this.getPositionY()));
        // source line 293, bytecode pc 304
        particle.runAction(cc.Sequence.create(cc.MoveTo.create(0.5, cardCenterPos), cc.CallFunc.create(function() {
    // source line 275, bytecode pc 19
    this._particle.removeFromParent(true);
    if (!this.self.armEat) {
        // source line 277, bytecode pc 85
        (this.self.armEat = xs.Views.Armature.AutoAudioArmature.create("Arm_UpgradeCard_LevelUp"));
        // source line 280, bytecode pc 178
        xs.Utils.Node.attachNodes(this.self.progressTimer, this.self.armEat, { desc: "c", offset: cc.p(0, 0) });
        // source line 284, bytecode pc 226
        this.self.armEat.playAniById("idle", { loop: false, speed: 1 });
    }
    // source line 289, bytecode pc 274
    this.self.armEat.playAniById("eatCardFinish", { loop: false, speed: 1 });
}.bind({ self: this, _particle: particle }))));
        // source line 265, bytecode pc 318
        (i = (+i + 1));
    }
},
    setCardScale: function(scale) {
    // source line 299, bytecode pc 26
    xs.log(("setCardScale is " + scale));
    if (((this.m_card != null) && (scale != null))) {
        // source line 301, bytecode pc 72
        this.m_card.setScale(scale);
    }
},
    updateExp: function(addExp, model) {
    var levelUpValue, percentage, _nowLevel, maxLevel, _addvalue, i, _expbylevel, _totalexpbylevel, lostExp, _nextExp;
    // source line 307, bytecode pc 9
    (this.model = model);
    if ((this.preLevelUp === undefined)) {
        // source line 310, bytecode pc 47
        (this.preLevelUp = model.getLevel());
    }
    // source line 313, bytecode pc 52
    (levelUpValue = 1);
    // source line 314, bytecode pc 70
    (percentage = model.getCurLevelExpPer());
    // source line 315, bytecode pc 88
    (_nowLevel = model.getLevel());
    // source line 318, bytecode pc 106
    (maxLevel = model.getMaxLevel());
    if ((_nowLevel >= maxLevel)) {
        // source line 322, bytecode pc 120
        return void 0;
    }
    // source line 324, bytecode pc 142
    (_addvalue = (addExp + model.getTotalExp()));
    // source line 325, bytecode pc 180
    xs.log(("model.getTotalExp is " + model.getTotalExp()));
    // source line 326, bytecode pc 217
    xs.log(((("_addvalue " + _addvalue) + ",") + addExp));
    // source line 328, bytecode pc 235
    (i = model.getLevel());
    while ((i < maxLevel)) {
        // source line 329, bytecode pc 282
        (_expbylevel = (model.getTotalExpByLevel(i) + model.getUpgradeExpNeed(i)));
        // source line 330, bytecode pc 319
        xs.log(((("_expbylevel is " + _expbylevel) + ",") + _addvalue));
        if ((_addvalue > _expbylevel)) {
            // source line 332, bytecode pc 338
            (levelUpValue = i);
            if (((_nowLevel + levelUpValue) >= maxLevel)) {
                // source line 335, bytecode pc 359
                (percentage = 1);
                // source line 336, bytecode pc 366
                (levelUpValue = maxLevel);
            }
        } else {
            // source line 339, bytecode pc 378
            (levelUpValue = i);
            // source line 340, bytecode pc 400
            (_totalexpbylevel = model.getTotalExpByLevel(i));
            // source line 341, bytecode pc 411
            (lostExp = (_addvalue - _totalexpbylevel));
            // source line 342, bytecode pc 433
            (_nextExp = model.getUpgradeExpNeed(i));
            // source line 343, bytecode pc 490
            xs.log(((((((("updateExp lostExp _nextExp addExp levelUpValue is " + lostExp) + ",") + _nextExp) + ",") + addExp) + ",") + levelUpValue));
            // source line 344, bytecode pc 527
            xs.log(((("updateExp _totalexpbylevel _addvalue is " + _totalexpbylevel) + ",") + _addvalue));
            // source line 345, bytecode pc 541
            (percentage = ((lostExp / _nextExp) * 100));
            // source line 346, bytecode pc 565
            (percentage = Math.floor(percentage));
            break;
        }
        // source line 328, bytecode pc 584
        (i = (+i + 1));
    }
    // source line 351, bytecode pc 625
    xs.log(("updateExp percentage:" + percentage));
    // source line 352, bytecode pc 652
    xs.log(("levelUpValue:" + levelUpValue));
    // source line 353, bytecode pc 682
    xs.log(("this.preLevelUp):" + this.preLevelUp));
    if ((levelUpValue >= this.preLevelUp)) {
        // source line 355, bytecode pc 705
        (this.bAdd = true);
        // source line 356, bytecode pc 735
        this.runPercentageAction(percentage, (levelUpValue - this.preLevelUp), true);
    } else {
        // source line 360, bytecode pc 757
        this.setCurPercentage(percentage);
        // source line 361, bytecode pc 774
        this.levelChangeCallBack(levelUpValue);
    }
    // source line 364, bytecode pc 784
    (this.preLevelUp = levelUpValue);
},
    getPreLevel: function() {
    if (this.preLevelUp) {
        // source line 369, bytecode pc 17
        return this.preLevelUp;
    }
    // source line 371, bytecode pc 35
    return this.m_data.getLevel();
},
    setLevelChangeCallBack: function(fun) {
    // source line 376, bytecode pc 9
    (this.levelChangeCallBack = fun);
},
    notifyLevelChange: function() {
    if (this.levelChangeCallBack) {
        if (this.bAdd) {
            // source line 382, bytecode pc 48
            this.levelChangeCallBack((this.preLevelUp - this.actionTimes));
        } else {
            // source line 384, bytecode pc 80
            this.levelChangeCallBack((this.preLevelUp + this.actionTimes));
        }
    }
}
}));
// source line 390, bytecode pc 229
(xs.Views.CardUpdateView.create = function(dataModel) {
    var node;
    // source line 391, bytecode pc 23
    (node = new xs.Views.CardUpdateView());
    if ((node && node.init(dataModel))) {
        // source line 393, bytecode pc 59
        return node;
    }
    // source line 395, bytecode pc 61
    return null;
});
// source line 417, bytecode pc 373
(xs.Views.CardUpdateView.cfg = {
    m_card: { tag: 11 },
    progressBar: { zorder: 2, tag: 13 },
    progressBgTop: { zorder: 3, tag: 14 },
    progressBgBom: { zorder: 1, tag: 12 },
    progressMask: { zorder: 4, tag: 15 }
});
