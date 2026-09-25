// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/CardListView_v2.js:1
// source line 5, bytecode pc 11
(xs.Constant_Direction_None = 0);
// source line 6, bytecode pc 23
(xs.Constant_Direction_Left = 1);
// source line 7, bytecode pc 36
(xs.Constant_Direction_Right = 2);
// source line 9, bytecode pc 48
(xs.Constant_Moving = 0);
// source line 10, bytecode pc 60
(xs.Constant_AfterMoveBack = 1);
// source line 518, bytecode pc 351
(xs.Views.CardListView_v2 = cc.Layer.extend({
    ctor: function() {
    // source line 14, bytecode pc 12
    this._super();
    // source line 15, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    impactStrengthMax: 1600,
    impactStrengthCorrection: 0.5,
    autoMoveSpeedCorrection: 5,
    autoMoveDistanceDef: 120,
    autoMoveBackSpeed: 800,
    offNum: 3,
    init: function(param) {
    var i, cardView;
    // source line 30, bytecode pc 8
    (this.showNum = 5);
    // source line 31, bytecode pc 18
    (this.cardSpacing = 300);
    // source line 32, bytecode pc 26
    (this.cardPosY = 0);
    // source line 33, bytecode pc 35
    (this.minPosX = -50);
    // source line 34, bytecode pc 64
    (this.maxPosX = ((this.cardSpacing * (this.showNum - 1)) + this.minPosX));
    // source line 35, bytecode pc 94
    (this.centerPosX = (this.minPosX + ((this.maxPosX - this.minPosX) / 2)));
    // source line 37, bytecode pc 106
    (this.cardViews = []);
    // source line 38, bytecode pc 118
    (this.cardViews_show = []);
    // source line 39, bytecode pc 130
    (this.cardViews_show_noMove = []);
    // source line 42, bytecode pc 138
    (this.isAutoMove = false);
    // source line 43, bytecode pc 146
    (this.isAutoMoveBack = false);
    // source line 46, bytecode pc 154
    (this.selectedCardData = null);
    // source line 69, bytecode pc 169
    (this.cardDatas = param.cardDatas);
    // source line 72, bytecode pc 174
    (i = 0);
    while ((i < this.cardDatas.length)) {
        // source line 86, bytecode pc 207
        (cardView = this.createMyselfGeneralCard(this.cardDatas[i]));
        // source line 89, bytecode pc 266
        cardView.setPosition(cc.p((this.minPosX + ((i - 1) * this.cardSpacing)), this.cardPosY));
        // source line 90, bytecode pc 285
        cardView.setTag(i);
        // source line 91, bytecode pc 302
        cardView.setVisible(false);
        // source line 92, bytecode pc 319
        this.addChild(cardView);
        // source line 93, bytecode pc 341
        this.cardViews.push(cardView);
        // source line 72, bytecode pc 355
        (i = (+i + 1));
    }
    // source line 96, bytecode pc 382
    (i = 0);
    while ((i < (this.showNum - 1))) {
        // source line 98, bytecode pc 411
        (this.cardViews_show[i] = this.cardViews[(i + 1)]);
        // source line 99, bytecode pc 428
        cardView.setVisible(true);
        // source line 96, bytecode pc 442
        (i = (+i + 1));
    }
    // source line 102, bytecode pc 478
    (this.cardViews_show_noMove[0] = this.cardViews[0]);
    // source line 103, bytecode pc 500
    (this.cardViews_show_noMove[1] = this.cardViews[this.showNum]);
    // source line 106, bytecode pc 513
    this.refreshCardZOrderAndCamera();
    // source line 109, bytecode pc 526
    this.scheduleUpdate();
    // source line 112, bytecode pc 541
    this.moveCards(0);
    // source line 115, bytecode pc 565
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 116, bytecode pc 580
    this.setTouchEnabled(true);
    // source line 118, bytecode pc 582
    return true;
},
    createMyselfGeneralCard: function(cardData) {
    var _severName, i, _card_filePath, _card_general, _card_Servername, _card_Playername, _card_PlayerLevel_bg, _offset, _card_PlayerLevel;
    // source line 122, bytecode pc 8
    (_severName = "");
    // source line 124, bytecode pc 13
    (i = 0);
    while ((i < (cardData.server.length - 4))) {
        // source line 125, bytecode pc 50
        (_severName = (_severName + cardData.server.charAt(i)));
        // source line 124, bytecode pc 64
        (i = (+i + 1));
    }
    // source line 128, bytecode pc 140
    (_card_filePath = ((xs.Cfg.Resource.Path.Card1_V3.file_pre + cardData.gid) + ".png"));
    // source line 129, bytecode pc 174
    (_card_general = xs.Factorys.Sprite.createWithFileName(_card_filePath));
    // source line 130, bytecode pc 210
    (_card_Servername = xs.Factorys.Label.createByStyleId("LS_guanqiaName"));
    // source line 131, bytecode pc 240
    _card_Servername.setString(_severName.toWordBreak());
    // source line 132, bytecode pc 280
    _card_Servername.setAnchorPoint(cc.p(0.5, 0));
    // source line 137, bytecode pc 360
    xs.Utils.Node.attachNodes(_card_general, _card_Servername, { base: "c", offset: { x: -113, y: -164 } });
    // source line 140, bytecode pc 396
    (_card_Playername = xs.Factorys.Label.createByStyleId("LS_guanqiaName"));
    // source line 141, bytecode pc 420
    _card_Playername.setString(cardData.nick);
    // source line 146, bytecode pc 526
    xs.Utils.Node.attachNodes(_card_general, _card_Playername, { base: "c", offset: { x: 0, y: ((-xs.Cfg.Resource.Card.h / 2) + 30) } });
    // source line 149, bytecode pc 568
    (_card_PlayerLevel_bg = xs.Factorys.Sprite.create("card_lb_lv", "Cmn02"));
    // source line 150, bytecode pc 589
    _card_PlayerLevel_bg.setScale(1.4);
    // source line 151, bytecode pc 615
    _card_PlayerLevel_bg.setAnchorPoint(xs.ap_c);
    // source line 152, bytecode pc 694
    (_offset = cc.p((-xs.Cfg.Resource.Card.w / 2), (xs.Cfg.Resource.Card.h / 2)));
    // source line 159, bytecode pc 792
    xs.Utils.Node.attachNodes(_card_general, _card_PlayerLevel_bg, { desc: "c", offset: { x: -120, y: 181 } }, { zOrder: 1, tag: 3 });
    if (cardData.level) {
        // source line 161, bytecode pc 841
        (_card_PlayerLevel = xs.Factorys.Label.createByStyleId("LS_mainLv"));
        // source line 162, bytecode pc 865
        _card_PlayerLevel.setString(cardData.level);
        // source line 169, bytecode pc 964
        xs.Utils.Node.attachNodes(_card_general, _card_PlayerLevel, { base: "c", offset: { x: -120, y: 181 } }, { zOrder: 2, tag: 4 });
    }
    // source line 171, bytecode pc 968
    return _card_general;
},
    onEnter: function() {
    // source line 175, bytecode pc 12
    this._super();
    // source line 177, bytecode pc 36
    this.checkSelectedCardData(xs.Constant_AfterMoveBack);
},
    onExit: function() {
    // source line 181, bytecode pc 12
    this.unscheduleUpdate();
    // source line 182, bytecode pc 25
    this._super();
},
    setListener: function(listener) {
    // source line 187, bytecode pc 9
    (this.m_listener = listener);
},
    getSelectedCardData: function() {
    var cardView, cardData;
    // source line 192, bytecode pc 15
    (cardView = this.getCenterCard());
    // source line 193, bytecode pc 40
    (cardData = this.cardDatas[cardView.getTag()]);
    // source line 194, bytecode pc 44
    return cardData;
},
    checkSelectedCardData: function(moveType) {
    var selectedCardDataNow;
    // source line 199, bytecode pc 15
    (selectedCardDataNow = this.getSelectedCardData());
    if ((moveType == xs.Constant_Moving)) {
        if ((selectedCardDataNow != this.selectedCardData)) {
            if ((this.m_listener && this.m_listener.changeSelectedCardData_moving)) {
                // source line 207, bytecode pc 99
                this.m_listener.changeSelectedCardData_moving(selectedCardDataNow);
            }
        }
    } else {
        if ((moveType == xs.Constant_AfterMoveBack)) {
            if ((this.m_listener && this.m_listener.changeSelectedCardData_afterMoveBack)) {
                // source line 215, bytecode pc 173
                this.m_listener.changeSelectedCardData_afterMoveBack(selectedCardDataNow);
            }
        }
    }
    // source line 220, bytecode pc 183
    (this.selectedCardData = selectedCardDataNow);
},
    refreshCardZOrderAndCamera: function() {
    var _firstCard, _lastCard, i;
    // source line 226, bytecode pc 11
    (_firstCard = this.cardViews_show_noMove[0]);
    if (_firstCard) {
        // source line 228, bytecode pc 36
        _firstCard.setZOrder(0);
        // source line 229, bytecode pc 82
        _firstCard.setPosition(cc.p(this.minPosX, this.cardPosY));
        // source line 230, bytecode pc 99
        this.refreshCameraEye(_firstCard);
        // source line 231, bytecode pc 116
        _firstCard.setVisible(true);
    }
    // source line 234, bytecode pc 128
    (_lastCard = this.cardViews_show_noMove[1]);
    if (_lastCard) {
        // source line 236, bytecode pc 153
        _lastCard.setZOrder(0);
        // source line 237, bytecode pc 199
        _lastCard.setPosition(cc.p(this.maxPosX, this.cardPosY));
        // source line 238, bytecode pc 216
        this.refreshCameraEye(_lastCard);
        // source line 239, bytecode pc 233
        _lastCard.setVisible(true);
    }
    // source line 242, bytecode pc 238
    (i = 0);
    while ((i < this.cardViews_show.length)) {
        // source line 243, bytecode pc 325
        this.cardViews_show[i].setZOrder((10000 - Math.abs(this.cardViews_show[i].getCamera().getEye().x)));
        // source line 245, bytecode pc 349
        this.cardViews_show[i].setVisible(true);
        // source line 242, bytecode pc 363
        (i = (+i + 1));
    }
},
    getCenterCard: function() {
    var _centerCard, i;
    // source line 251, bytecode pc 4
    (_centerCard = null);
    // source line 252, bytecode pc 9
    (i = 0);
    while ((i < this.cardViews_show.length)) {
        if ((i == 0)) {
            // source line 254, bytecode pc 37
            (_centerCard = this.cardViews_show[0]);
        } else {
            if ((this.cardViews_show[i].getZOrder() > _centerCard.getZOrder())) {
                // source line 258, bytecode pc 97
                (_centerCard = this.cardViews_show[i]);
            }
        }
        // source line 252, bytecode pc 111
        (i = (+i + 1));
    }
    // source line 262, bytecode pc 137
    return _centerCard;
},
    startAutoMoveBack: function() {
    // source line 267, bytecode pc 36
    (this.autoMoveBackDistance = (this.centerPosX - this.getCenterCard().getPositionX()));
    // source line 269, bytecode pc 44
    (this.isAutoMoveBack = true);
},
    getShowGeneralsModel: function(showGenerals) {
    var generalsModel, i, model;
    // source line 273, bytecode pc 8
    (generalsModel = []);
    // source line 274, bytecode pc 13
    (i = 0);
    while ((i < showGenerals.length)) {
        // source line 275, bytecode pc 62
        (model = xs.Models.General.createWithBase(showGenerals[i].generalId));
        // source line 276, bytecode pc 83
        (model.tagId = showGenerals[i].tagId);
        // source line 277, bytecode pc 104
        (model.showTime = showGenerals[i].showTime);
        // source line 278, bytecode pc 125
        (model.disappearTime = showGenerals[i].disappearTime);
        // source line 279, bytecode pc 144
        generalsModel.push(model);
        // source line 274, bytecode pc 158
        (i = (+i + 1));
    }
    // source line 281, bytecode pc 181
    return generalsModel;
},
    moveCards: function(moveX) {
    var _moveX, _removeLast, _removeFirst, i, _cardView, _newPosX, _firstCard, _lastCard, _pos, _newCard_move, _newIdx, _newCard;
    // source line 286, bytecode pc 6
    (_moveX = moveX);
    // source line 295, bytecode pc 11
    (_removeLast = false);
    // source line 296, bytecode pc 16
    (_removeFirst = false);
    // source line 297, bytecode pc 21
    (i = 0);
    while ((i < this.cardViews_show.length)) {
        // source line 299, bytecode pc 41
        (_cardView = this.cardViews_show[i]);
        // source line 301, bytecode pc 63
        (_newPosX = (_cardView.getPositionX() + _moveX));
        if (((_moveX < 0) && ((i == 0) && (_newPosX < this.minPosX)))) {
            // source line 304, bytecode pc 117
            _cardView.setVisible(false);
            // source line 305, bytecode pc 122
            (_removeFirst = true);
        } else {
            if (((_moveX > 0) && ((i == (this.showNum - 1)) && (_newPosX > this.maxPosX)))) {
                // source line 309, bytecode pc 188
                _cardView.setVisible(false);
                // source line 310, bytecode pc 193
                (_removeLast = true);
            }
        }
        // source line 313, bytecode pc 244
        _cardView.setPosition(cc.p(_newPosX, _cardView.getPositionY()));
        // source line 314, bytecode pc 261
        this.refreshCameraEye(_cardView);
        // source line 297, bytecode pc 275
        (i = (+i + 1));
    }
    if (_removeFirst) {
        // source line 318, bytecode pc 317
        (_firstCard = this.cardViews_show_noMove[0]);
        if (_firstCard) {
            // source line 320, bytecode pc 342
            _firstCard.setVisible(false);
        }
        // source line 322, bytecode pc 368
        (this.cardViews_show_noMove[0] = this.cardViews_show.shift());
    } else {
        if (_removeLast) {
            // source line 325, bytecode pc 393
            (_lastCard = this.cardViews_show_noMove[1]);
            if (_lastCard) {
                // source line 327, bytecode pc 418
                _lastCard.setVisible(false);
            }
            // source line 329, bytecode pc 444
            (this.cardViews_show_noMove[1] = this.cardViews_show.pop());
        }
    }
    if ((_moveX < 0)) {
        // source line 334, bytecode pc 496
        (_pos = (this.cardViews_show[(this.cardViews_show.length - 1)].getPositionX() + this.cardSpacing));
        if ((_pos < this.maxPosX)) {
            // source line 336, bytecode pc 523
            (_newCard_move = this.cardViews_show_noMove[1]);
            // source line 337, bytecode pc 566
            _newCard_move.setPosition(cc.p(_pos, this.cardPosY));
            // source line 338, bytecode pc 583
            this.refreshCameraEye(_newCard_move);
            // source line 339, bytecode pc 605
            this.cardViews_show.push(_newCard_move);
            // source line 342, bytecode pc 625
            (_newIdx = (_newCard_move.getTag() + 1));
            // source line 343, bytecode pc 658
            (_newIdx = ((_newIdx >= this.cardViews.length) ? 0 : _newIdx));
            // source line 344, bytecode pc 672
            (_newCard = this.cardViews[_newIdx]);
            // source line 345, bytecode pc 684
            (this.cardViews_show_noMove[1] = _newCard);
        }
    } else {
        if ((_moveX > 0)) {
            // source line 351, bytecode pc 729
            (_pos = (this.cardViews_show[0].getPositionX() - this.cardSpacing));
            if ((_pos > this.minPosX)) {
                // source line 353, bytecode pc 756
                (_newCard_move = this.cardViews_show_noMove[0]);
                // source line 354, bytecode pc 799
                _newCard_move.setPosition(cc.p(_pos, this.cardPosY));
                // source line 355, bytecode pc 816
                this.refreshCameraEye(_newCard_move);
                // source line 356, bytecode pc 838
                this.cardViews_show.unshift(_newCard_move);
                // source line 359, bytecode pc 858
                (_newIdx = (_newCard_move.getTag() - 1));
                // source line 360, bytecode pc 893
                (_newIdx = ((_newIdx < 0) ? (this.cardViews.length - 1) : _newIdx));
                // source line 361, bytecode pc 907
                (_newCard = this.cardViews[_newIdx]);
                // source line 362, bytecode pc 919
                (this.cardViews_show_noMove[0] = _newCard);
            }
        }
    }
    // source line 380, bytecode pc 932
    this.refreshCardZOrderAndCamera();
    // source line 383, bytecode pc 956
    this.checkSelectedCardData(xs.Constant_Moving);
},
    refreshCameraEye: function(cardView) {
    var _eyeX;
    // source line 387, bytecode pc 24
    (_eyeX = (cardView.getPositionX() - this.centerPosX));
    // source line 388, bytecode pc 37
    (_eyeX = (_eyeX * 0.5));
    // source line 389, bytecode pc 73
    cardView.getCamera().setEye(_eyeX, 0, 170);
},
    update: function(dt) {
    var _moveDistance;
    // source line 395, bytecode pc 4
    (_moveDistance = 0);
    if (this.isAutoMove) {
        // source line 398, bytecode pc 32
        (_moveDistance = ((this.autoMoveDistance * dt) * 3));
        if ((_moveDistance != 0)) {
            // source line 402, bytecode pc 59
            this.moveCards(_moveDistance);
            if ((this.autoMoveDistance > 0)) {
                // source line 406, bytecode pc 89
                (this.autoMoveDistance = (this.autoMoveDistance - _moveDistance));
                if ((this.autoMoveDistance < this.autoMoveDistanceDef)) {
                    // source line 409, bytecode pc 115
                    (this.isAutoMove = false);
                    // source line 410, bytecode pc 128
                    this.startAutoMoveBack();
                }
            } else {
                if ((this.autoMoveDistance < 0)) {
                    // source line 414, bytecode pc 163
                    (this.autoMoveDistance = (this.autoMoveDistance - _moveDistance));
                    if ((this.autoMoveDistance > (-1 * this.autoMoveDistanceDef))) {
                        // source line 417, bytecode pc 192
                        (this.isAutoMove = false);
                        // source line 418, bytecode pc 205
                        this.startAutoMoveBack();
                    }
                }
            }
        } else {
            // source line 423, bytecode pc 218
            (this.isAutoMove = false);
            // source line 424, bytecode pc 231
            this.startAutoMoveBack();
        }
    }
    if (this.isAutoMoveBack) {
        // source line 430, bytecode pc 278
        (_moveDistance = ((this.autoMoveBackSpeed * dt) * ((this.autoMoveBackDistance < 0) ? -1 : 1)));
        if ((this.autoMoveBackDistance > 0)) {
            if ((_moveDistance > this.autoMoveBackDistance)) {
                // source line 436, bytecode pc 316
                (_moveDistance = this.autoMoveBackDistance);
            }
        } else {
            if ((this.autoMoveBackDistance < 0)) {
                if ((_moveDistance < this.autoMoveBackDistance)) {
                    // source line 441, bytecode pc 359
                    (_moveDistance = this.autoMoveBackDistance);
                }
            } else {
                if ((this.autoMoveBackDistance == 0)) {
                    // source line 445, bytecode pc 382
                    (_moveDistance = 0);
                }
            }
        }
        // source line 448, bytecode pc 399
        this.moveCards(_moveDistance);
        // source line 450, bytecode pc 416
        (this.autoMoveBackDistance = (this.autoMoveBackDistance - _moveDistance));
        if ((this.autoMoveBackDistance == 0)) {
            // source line 452, bytecode pc 437
            (this.isAutoMoveBack = false);
            // source line 455, bytecode pc 461
            this.checkSelectedCardData(xs.Constant_AfterMoveBack);
        }
    }
},
    onTouchBegan: function(touch, e) {
    // source line 461, bytecode pc 7
    (this.touchTime = 0);
    // source line 462, bytecode pc 15
    (this.isAutoMove = false);
    // source line 463, bytecode pc 23
    (this.autoMoveDistance = 0);
    // source line 465, bytecode pc 46
    (this.touchStartPoint = this.convertTouchToNodeSpace(touch));
    // source line 466, bytecode pc 69
    (this.touchMovePoint_last = this.convertTouchToNodeSpace(touch));
    // source line 467, bytecode pc 97
    (this.touchTime_last = new Date().getTime());
    // source line 468, bytecode pc 114
    (this.moveDirection = xs.Constant_Direction_None);
    // source line 469, bytecode pc 116
    return true;
},
    onTouchMoved: function(touch, e) {
    var _touchMovePoint, _moveX, timeNow, _touchOffX;
    // source line 473, bytecode pc 19
    (_touchMovePoint = this.convertTouchToNodeSpace(touch));
    // source line 474, bytecode pc 43
    (_moveX = (_touchMovePoint.x - this.touchMovePoint_last.x));
    // source line 475, bytecode pc 60
    this.moveCards(_moveX);
    // source line 478, bytecode pc 85
    (timeNow = new Date().getTime());
    // source line 479, bytecode pc 102
    (this.touchTime = (timeNow - this.touchTime_last));
    // source line 480, bytecode pc 119
    (this.touchTime = (this.touchTime / 1000));
    if ((this.touchTime < 0.05)) {
        // source line 482, bytecode pc 148
        (this.touchTime = 0.05);
    }
    // source line 486, bytecode pc 171
    (this.touchEndPoint = this.convertTouchToNodeSpace(touch));
    // source line 487, bytecode pc 198
    (_touchOffX = (this.touchEndPoint.x - this.touchMovePoint_last.x));
    // source line 488, bytecode pc 222
    (this.autoMoveDistance = ((_touchOffX / this.touchTime) * this.impactStrengthCorrection));
    // source line 494, bytecode pc 232
    (this.touchMovePoint_last = _touchMovePoint);
    // source line 495, bytecode pc 260
    (this.touchTime_last = new Date().getTime());
},
    onTouchEnded: function(touch, e) {
    if ((this.autoMoveDistance > this.impactStrengthMax)) {
        // source line 503, bytecode pc 30
        (this.autoMoveDistance = this.impactStrengthMax);
    } else {
        if ((this.autoMoveDistance < (-1 * this.impactStrengthMax))) {
            // source line 506, bytecode pc 72
            (this.autoMoveDistance = (-1 * this.impactStrengthMax));
        }
    }
    // source line 510, bytecode pc 80
    (this.isAutoMove = true);
},
    onTouchCancelled: function(touch, e) {
    // source line 515, bytecode pc 20
    this.onTouchEnded(touch, e);
},
    setBaseTouchPriority: function(priority) {
    // source line 519, bytecode pc 11
    (this.m_baseTouchPriority = (priority - 1));
    // source line 520, bytecode pc 31
    this.setTouchPriority(this.m_baseTouchPriority);
}
}));
// source line 525, bytecode pc 377
(xs.Views.CardListView_v2.create = function(param) {
    var ret;
    // source line 526, bytecode pc 23
    (ret = new xs.Views.CardListView_v2());
    if ((ret && ret.init(param))) {
        // source line 528, bytecode pc 59
        return ret;
    }
    // source line 531, bytecode pc 84
    xs.assert(false, "xs.Views.CardListView.create err");
    // source line 532, bytecode pc 86
    return null;
});
