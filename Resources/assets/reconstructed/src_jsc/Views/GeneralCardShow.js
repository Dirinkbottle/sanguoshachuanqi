// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/GeneralCardShow.js:1
// source line 259, bytecode pc 193
(xs.Views.GeneralCardShow = cc.Node.extend({
    ctor: function() {
    // source line 10, bytecode pc 12
    this._super();
    // source line 11, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(showGenerals) {
    var i, state;
    // source line 15, bytecode pc 19
    (this.cardAreaState = new Array(7));
    // source line 16, bytecode pc 24
    (i = 0);
    while ((i < this.cardAreaState.length)) {
        // source line 17, bytecode pc 40
        (state = {});
        // source line 18, bytecode pc 78
        (state.pos = cc.p((-110 + (190 * i)), 0));
        // source line 19, bytecode pc 92
        (state.scale = 0.5);
        // source line 20, bytecode pc 102
        (state.skewY = 0);
        // source line 21, bytecode pc 114
        (state.alpha = 255);
        if ((i === 3)) {
            // source line 23, bytecode pc 188
            (state.pos = cc.p((state.pos.x + 30), (state.pos.y + (i * 25))));
            // source line 24, bytecode pc 202
            (state.scale = 0.65);
        } else {
            if ((i < 4)) {
                // source line 26, bytecode pc 281
                (state.pos = cc.p((state.pos.x + 20), (state.pos.y + (i * 25))));
            } else {
                if ((i >= 4)) {
                    // source line 28, bytecode pc 366
                    (state.pos = cc.p((state.pos.x + 50), ((state.pos.y + 75) - ((i - 3) * 25))));
                }
            }
        }
        if (((i === 1) || (i === 2))) {
            // source line 32, bytecode pc 399
            (state.skewY = 10);
        }
        if (((i === 4) || (i === 5))) {
            // source line 35, bytecode pc 433
            (state.skewY = -10);
        }
        if (((i === 0) || (i === 6))) {
            // source line 39, bytecode pc 465
            (state.isVisible = 0);
        }
        // source line 42, bytecode pc 479
        (this.cardAreaState[i] = state);
        // source line 16, bytecode pc 494
        i++;
    }
    // source line 45, bytecode pc 535
    (this.cardViews = new Array(7));
    // source line 46, bytecode pc 543
    (this.startCardViewIndex = 0);
    // source line 48, bytecode pc 566
    (this.cardsData = this.getShowGeneralsModel(showGenerals));
    // source line 49, bytecode pc 585
    (this.startDataIndex = this.getDefaultStartDataIndex());
    // source line 51, bytecode pc 598
    this.updateCardShow();
    // source line 54, bytecode pc 606
    (this.bMoveEnd = true);
    // source line 58, bytecode pc 608
    return true;
},
    onEnter: function() {
    // source line 62, bytecode pc 22
    this.schedule(this.timer, 5);
    // source line 63, bytecode pc 35
    this.updateDisappearTime();
    // source line 64, bytecode pc 57
    this.schedule(this.updateDisappearTime, 1);
},
    onExit: function() {
    // source line 68, bytecode pc 19
    this.unschedule(this.timer);
    // source line 69, bytecode pc 39
    this.unschedule(this.updateDisappearTime);
},
    setListener: function(listener) {
    // source line 73, bytecode pc 9
    (this.listener = listener);
},
    getDefaultStartDataIndex: function() {
    var i;
    // source line 78, bytecode pc 4
    (i = 0);
    while ((i < this.cardsData.length)) {
        if ((this.cardsData[i].tagId == 4)) {
            // source line 80, bytecode pc 60
            xs.log_xjf(("找到限时武将! idx = " + i));
            // source line 81, bytecode pc 67
            return (i - 3);
        }
        // source line 78, bytecode pc 82
        i++;
    }
    // source line 84, bytecode pc 126
    xs.log_xjf("未找到限时武将,默认展示");
    // source line 85, bytecode pc 141
    return (this.cardsData.length - 3);
},
    stop: function() {
    // source line 89, bytecode pc 19
    this.unschedule(this.timer);
},
    updateCardShow: function() {
    var i, cardModel, index;
    // source line 95, bytecode pc 4
    (i = 0);
    while ((i < this.cardAreaState.length)) {
        // source line 96, bytecode pc 30
        (cardModel = this.getCardDataByIndexOffset(i));
        // source line 97, bytecode pc 47
        (index = ((i + this.startCardViewIndex) % 7));
        if (!this.cardViews[index]) {
            // source line 99, bytecode pc 88
            (this.cardViews[index] = cardModel.createCard_Toast());
            // source line 101, bytecode pc 126
            this.cardViews[index].setScale(this.cardAreaState[i].scale);
            // source line 102, bytecode pc 164
            this.cardViews[index].setSkewY(this.cardAreaState[i].skewY);
            // source line 103, bytecode pc 247
            xs.Utils.Node.attachNodes(this, this.cardViews[index], { desc: "cl", offset: this.cardAreaState[i].pos, sc: false });
        } else {
            // source line 105, bytecode pc 278
            this.cardViews[index].reloadData(cardModel);
        }
        if (cardModel.tagId) {
            // source line 110, bytecode pc 322
            this.cardViews[index].updateSellMark(cardModel.tagId);
        } else {
            // source line 113, bytecode pc 351
            this.cardViews[index].updateSellMark(null);
        }
        // source line 95, bytecode pc 366
        i++;
    }
},
    getCardDataByIndexOffset: function(indexOffset) {
    var index, ret;
    // source line 120, bytecode pc 25
    (index = ((this.startDataIndex + indexOffset) % this.cardsData.length));
    // source line 122, bytecode pc 39
    (ret = this.cardsData[index]);
    // source line 124, bytecode pc 43
    return ret;
},
    moveTo: function(bDirection) {
    var i, targetArea, index, moveTo, scaleTo, skewTo, fadeTo;
    if (!this.moveDuration) {
        // source line 130, bytecode pc 23
        (this.moveDuration = 0.3);
    }
    if (!this.bMoveEnd) {
        if ((this.moveDuration > 0.1)) {
            // source line 135, bytecode pc 71
            (this.moveDuration = (this.moveDuration - 0.05));
        }
        // source line 137, bytecode pc 73
        return void 0;
    } else {
        if ((this.moveDuration < 0.3)) {
            // source line 140, bytecode pc 114
            (this.moveDuration = (this.moveDuration + 0.05));
        }
    }
    // source line 144, bytecode pc 122
    (this.bMoveEnd = false);
    // source line 146, bytecode pc 127
    (i = 0);
    while ((i < this.cardViews.length)) {
        // source line 147, bytecode pc 157
        (targetArea = this.getTargetArea(bDirection, i));
        // source line 148, bytecode pc 174
        (index = ((i + this.startCardViewIndex) % 7));
        // source line 150, bytecode pc 215
        (moveTo = cc.MoveTo.create(this.moveDuration, targetArea.pos));
        // source line 151, bytecode pc 256
        (scaleTo = cc.ScaleTo.create(this.moveDuration, targetArea.scale));
        // source line 152, bytecode pc 299
        (skewTo = cc.SkewTo.create(this.moveDuration, 0, targetArea.skewY));
        // source line 153, bytecode pc 340
        (fadeTo = cc.FadeTo.create(this.moveDuration, targetArea.alpha));
        if ((((i === 0) && bDirection) || ((i === (this.cardViews.length - 1)) && (bDirection === false)))) {
            // source line 155, bytecode pc 424
            this.cardViews[index].setPosition(targetArea.pos);
            // source line 156, bytecode pc 455
            this.cardViews[index].setScale(targetArea.scale);
            // source line 157, bytecode pc 486
            this.cardViews[index].setSkewY(targetArea.skewY);
            // source line 158, bytecode pc 517
            this.cardViews[index].setOpacity(targetArea.alpha);
        } else {
            // source line 160, bytecode pc 582
            this.cardViews[index].runAction(cc.Spawn.create(moveTo, scaleTo, skewTo, fadeTo));
        }
        // source line 146, bytecode pc 597
        i++;
    }
    if (bDirection) {
        // source line 165, bytecode pc 657
        (this.startCardViewIndex = ((this.startCardViewIndex = (+this.startCardViewIndex + 1)) % 7));
        // source line 166, bytecode pc 697
        (this.startDataIndex = ((this.startDataIndex = (+this.startDataIndex + 1)) % this.cardsData.length));
    } else {
        if ((this.startCardViewIndex > 0)) {
            // source line 169, bytecode pc 746
            (this.startCardViewIndex = ((this.startCardViewIndex = (+this.startCardViewIndex - 1)) % 7));
        } else {
            // source line 171, bytecode pc 771
            (this.startCardViewIndex = (this.cardViews.length - 1));
        }
        if ((this.startDataIndex > 0)) {
            // source line 175, bytecode pc 824
            (this.startDataIndex = ((this.startDataIndex = (+this.startDataIndex - 1)) % this.cardsData.length));
        } else {
            // source line 177, bytecode pc 849
            (this.startDataIndex = (this.cardsData.length - 1));
        }
    }
    // source line 182, bytecode pc 955
    this.runAction(cc.Sequence.create(cc.DelayTime.create(this.moveDuration), cc.CallFunc.create(this.moveEnd.bind(this))));
    // source line 184, bytecode pc 968
    this.updateCardShow();
},
    moveEnd: function() {
    // source line 189, bytecode pc 12
    this.updateDisappearTime();
    // source line 190, bytecode pc 20
    (this.bMoveEnd = true);
},
    updateDisappearTime: function() {
    var cardModel, userLoginTime, timeNow, realTime, strRealTime;
    // source line 195, bytecode pc 18
    (cardModel = this.getCardDataByIndexOffset(3));
    if ((cardModel.tagId == 4)) {
        // source line 197, bytecode pc 96
        (userLoginTime = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLastLoginTime_Local());
        // source line 198, bytecode pc 127
        (timeNow = Date.parse(new Date()));
        // source line 199, bytecode pc 151
        (realTime = (cardModel.disappearTime - ((timeNow / 1000) - userLoginTime)));
        if ((realTime > 0)) {
            // source line 211, bytecode pc 190
            (strRealTime = xs.Utils.convertSecondToTime(realTime));
            if (this.listener.showDisappearTimeLabel) {
                // source line 213, bytecode pc 273
                this.listener.showDisappearTimeLabel([ xs.Tools.String.createString("auto_name_286"), strRealTime ]);
            }
        } else {
            if (this.listener.showDisappearTimeLabel) {
                // source line 220, bytecode pc 312
                this.listener.hideDisappearTimeLabel();
            }
        }
    } else {
        if (this.listener.hideDisappearTimeLabel) {
            // source line 226, bytecode pc 351
            this.listener.hideDisappearTimeLabel();
        }
    }
},
    getTargetArea: function(bDirection, curIndex) {
    if (bDirection) {
        if ((curIndex === 0)) {
            // source line 235, bytecode pc 38
            return this.cardAreaState[(this.cardAreaState.length - 1)];
        }
        // source line 237, bytecode pc 51
        return this.cardAreaState[(curIndex - 1)];
    } else {
        if ((curIndex >= (this.cardAreaState.length - 1))) {
            // source line 241, bytecode pc 87
            return this.cardAreaState[0];
        }
        // source line 243, bytecode pc 100
        return this.cardAreaState[(curIndex + 1)];
    }
},
    getShowGeneralsModel: function(showGenerals) {
    var generalsModel, i, model;
    // source line 248, bytecode pc 8
    (generalsModel = []);
    // source line 249, bytecode pc 13
    (i = 0);
    while ((i < showGenerals.length)) {
        // source line 250, bytecode pc 62
        (model = xs.Models.General.createWithBase(showGenerals[i].generalId));
        // source line 251, bytecode pc 83
        (model.tagId = showGenerals[i].tagId);
        // source line 252, bytecode pc 104
        (model.showTime = showGenerals[i].showTime);
        // source line 253, bytecode pc 125
        (model.disappearTime = showGenerals[i].disappearTime);
        // source line 254, bytecode pc 144
        generalsModel.push(model);
        // source line 249, bytecode pc 159
        i++;
    }
    // source line 256, bytecode pc 181
    return generalsModel;
},
    timer: function(fDelta) {
    // source line 260, bytecode pc 14
    this.moveTo(true);
}
}));
// source line 264, bytecode pc 219
(xs.Views.GeneralCardShow.create = function(showGenerals) {
    var ret;
    // source line 265, bytecode pc 23
    (ret = new xs.Views.GeneralCardShow());
    if ((ret && ret.init(showGenerals))) {
        // source line 267, bytecode pc 59
        return ret;
    }
    // source line 269, bytecode pc 61
    return null;
});
