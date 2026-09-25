// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/CardListView.js:1
// source line 513, bytecode pc 935
(xs.Views.CardListView = cc.Layer.extend({
    ctor: function() {
    // source line 10, bytecode pc 12
    this._super();
    // source line 11, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    model: {
        cardData: [
            110005,
            110006,
            110007,
            110008,
            110009,
            111007,
            120004,
            120006,
            120007,
            120008,
            120011,
            130005,
            130007,
            131005,
            140003,
            140004,
            140006,
            110005,
            110006,
            110007,
            110008,
            110009,
            111007,
            120004,
            120006,
            120007,
            120008,
            120011,
            130005,
            130007,
            131005,
            140003,
            140004,
            140006
        ],
        logicPos: [
            110005,
            110006,
            110007,
            110008,
            110009,
            111007,
            120004,
            120006,
            120007,
            120008,
            120011,
            130005,
            130007,
            131005,
            140003,
            140004,
            140006,
            110005,
            110006,
            110007,
            110008,
            110009,
            111007,
            120004,
            120006,
            120007,
            120008,
            120011,
            130005,
            130007,
            131005,
            140003,
            140004,
            140006
        ],
        getDataNum: function() {
    // source line 92, bytecode pc 11
    return this.cardData.length;
}
    },
    view: { cardViews: [] },
    control: { touchDirection: 0, count: 0, beginTouchPoint: cc.p(0, 0), endTouchPoint: cc.p(0, 0), fstIdx: 0 },
    Cfg: {
        fst_item_width: 310,
        fst_item_height: 430,
        sec_item_scale: 0.5,
        sec_item_height: 215,
        move_x_right: 155,
        sec_item_y: 100,
        visible_num: 6,
        dpCushion: 0.25,
        dpX: 150
    },
    init: function() {
    var _visibleSize, i, _begin, _cardSprite, _offsetX, _offsetY;
    if ((this._super() === false)) {
        // source line 130, bytecode pc 20
        return false;
    }
    // source line 132, bytecode pc 45
    (_visibleSize = xs.director.getVisibleSize());
    // source line 134, bytecode pc 50
    (i = 0);
    while ((i < this.model.cardData.length)) {
        // source line 136, bytecode pc 81
        (_begin = new Date().getTime());
        // source line 140, bytecode pc 150
        (_cardSprite = xs.Views.Card.Fight.create({ id: this.model.cardData[i] }, {}));
        // source line 144, bytecode pc 199
        xs.log("end", (new Date().getTime() - _begin));
        // source line 147, bytecode pc 204
        (_offsetX = null);
        // source line 148, bytecode pc 209
        (_offsetY = null);
        // source line 151, bytecode pc 243
        (_offsetX = ((this.Cfg.move_x_right / 2) + (i * this.Cfg.move_x_right)));
        // source line 153, bytecode pc 262
        (this.model.logicPos[i] = _offsetX);
        if ((i === 0)) {
            // source line 156, bytecode pc 292
            (_offsetX = (0 + (this.Cfg.fst_item_width / 2)));
            // source line 157, bytecode pc 312
            (_offsetY = (0 + (this.Cfg.fst_item_height / 2)));
        } else {
            // source line 160, bytecode pc 364
            (_offsetX = ((0 + this.Cfg.fst_item_width) + (((i - 1) + this.Cfg.sec_item_scale) * this.Cfg.move_x_right)));
            // source line 161, bytecode pc 384
            (_offsetY = (0 + (this.Cfg.sec_item_height / 2)));
        }
        // source line 166, bytecode pc 461
        xs.Utils.Node.attachNodes(this, _cardSprite, { desc: "lb", offset: { x: _offsetX, y: _offsetY } });
        // source line 168, bytecode pc 499
        xs.dump("pos", _cardSprite.getPosition());
        // source line 170, bytecode pc 526
        this.view.cardViews.push(_cardSprite);
        if ((i !== 0)) {
            // source line 173, bytecode pc 563
            _cardSprite.setScale(this.Cfg.sec_item_scale);
        }
        // source line 134, bytecode pc 577
        (i = (+i + 1));
    }
    // source line 178, bytecode pc 628
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 179, bytecode pc 643
    this.setTouchEnabled(true);
    // source line 181, bytecode pc 645
    return true;
},
    onTouchBegan: function(touch, event) {
    // source line 189, bytecode pc 27
    (this.control.beginTouchPoint = this.convertTouchToNodeSpace(touch));
    // source line 190, bytecode pc 55
    (this.control.lastTouchPoint = this.convertTouchToNodeSpace(touch));
    // source line 192, bytecode pc 78
    (this.control.endTouchPoint = this.control.beginTouchPoint);
    // source line 193, bytecode pc 91
    (this.control.count = 0);
    // source line 195, bytecode pc 132
    (this.control.xFstItemBegin = this.view.cardViews[0].getPosition().x);
    // source line 197, bytecode pc 134
    return true;
},
    updateViews: function() {
    var i, posFstItemX, _fixOffsetX, _dstPosX, _distanceLogic, _distanceDrawX, _distanceDrawY, _per;
    // source line 203, bytecode pc 4
    (i = 0);
    while ((i < this.view.cardViews.length)) {
        // source line 205, bytecode pc 52
        (posFstItemX = ((this.Cfg.move_x_right / 2) - (this.control.fstIdx * this.Cfg.move_x_right)));
        // source line 208, bytecode pc 67
        (_fixOffsetX = this.control.offsetUniX);
        // source line 213, bytecode pc 94
        (_dstPosX = ((posFstItemX + (this.Cfg.move_x_right * i)) + _fixOffsetX));
        // source line 215, bytecode pc 113
        (this.model.logicPos[i] = _dstPosX);
        // source line 220, bytecode pc 155
        (_distanceLogic = xs.Utils.Math.abs(this.Cfg.move_x_right));
        // source line 221, bytecode pc 215
        (_distanceDrawX = xs.Utils.Math.abs(((this.Cfg.move_x_right / 2) + (this.Cfg.fst_item_width / 2))));
        // source line 222, bytecode pc 275
        (_distanceDrawY = xs.Utils.Math.abs(((this.Cfg.fst_item_height / 2) - (this.Cfg.sec_item_height / 2))));
        if (((_dstPosX > (-this.Cfg.move_x_right / 2)) && (_dstPosX < (this.Cfg.move_x_right / 2)))) {
            // source line 226, bytecode pc 376
            (_per = (xs.Utils.Math.abs(((this.Cfg.move_x_right / 2) - _dstPosX)) / _distanceLogic));
            // source line 231, bytecode pc 435
            this.view.cardViews[i].setScale((this.Cfg.sec_item_scale + ((1 - this.Cfg.sec_item_scale) * (1 - _per))));
            // source line 233, bytecode pc 485
            this.view.cardViews[i].setPositionX(((this.Cfg.fst_item_width / 2) - (_distanceDrawX * _per)));
            // source line 234, bytecode pc 537
            this.view.cardViews[i].setPositionY(((this.Cfg.sec_item_height / 2) + (_distanceDrawY * (1 - _per))));
            // source line 236, bytecode pc 566
            this.view.cardViews[i].setVisible(true);
        } else {
            if (((_dstPosX > (this.Cfg.move_x_right / 2)) && (_dstPosX < (this.Cfg.move_x_right + (this.Cfg.move_x_right / 2))))) {
                // source line 240, bytecode pc 695
                (_per = (xs.Utils.Math.abs(((this.Cfg.move_x_right + (this.Cfg.move_x_right / 2)) - _dstPosX)) / _distanceLogic));
                // source line 246, bytecode pc 752
                this.view.cardViews[i].setScale((this.Cfg.sec_item_scale + ((1 - this.Cfg.sec_item_scale) * _per)));
                // source line 248, bytecode pc 804
                this.view.cardViews[i].setPositionX(((this.Cfg.fst_item_width / 2) + (_distanceDrawX * (1 - _per))));
                // source line 249, bytecode pc 854
                this.view.cardViews[i].setPositionY(((this.Cfg.sec_item_height / 2) + (_distanceDrawY * _per)));
                // source line 251, bytecode pc 883
                this.view.cardViews[i].setVisible(true);
            } else {
                if ((_dstPosX === (this.Cfg.move_x_right / 2))) {
                    // source line 255, bytecode pc 940
                    this.view.cardViews[i].setScale(1);
                    // source line 257, bytecode pc 982
                    this.view.cardViews[i].setPositionX((this.Cfg.fst_item_width / 2));
                    // source line 258, bytecode pc 1024
                    this.view.cardViews[i].setPositionY((this.Cfg.fst_item_height / 2));
                    // source line 260, bytecode pc 1053
                    this.view.cardViews[i].setVisible(true);
                } else {
                    if ((_dstPosX <= (-this.Cfg.move_x_right / 2))) {
                        // source line 264, bytecode pc 1121
                        this.view.cardViews[i].setScale(this.Cfg.sec_item_scale);
                        // source line 266, bytecode pc 1152
                        this.view.cardViews[i].setPositionX(_dstPosX);
                        // source line 267, bytecode pc 1194
                        this.view.cardViews[i].setPositionY((this.Cfg.sec_item_height / 2));
                        // source line 269, bytecode pc 1223
                        this.view.cardViews[i].setVisible(true);
                    } else {
                        // source line 273, bytecode pc 1267
                        this.view.cardViews[i].setScale(this.Cfg.sec_item_scale);
                        // source line 275, bytecode pc 1322
                        this.view.cardViews[i].setPositionX(((this.Cfg.fst_item_width - this.Cfg.move_x_right) + _dstPosX));
                        // source line 276, bytecode pc 1364
                        this.view.cardViews[i].setPositionY((this.Cfg.sec_item_height / 2));
                        // source line 278, bytecode pc 1393
                        this.view.cardViews[i].setVisible(true);
                    }
                }
            }
        }
        if ((i === 0)) {
            // source line 282, bytecode pc 1453
            xs.dump("000", this.view.cardViews[i].getPositionX());
        }
        // source line 203, bytecode pc 1467
        (i = (+i + 1));
    }
},
    updateViewsAlign: function() {
    var _moveDirection, _vX, _tmp, _time;
    // source line 292, bytecode pc 45
    (this.control.count = (+this.control.count + 1));
    // source line 292, bytecode pc 50
    this.dump("this.control.count", +this.control.count);
    // source line 306, bytecode pc 60
    (_moveDirection = this.Constant_MoveType_None);
    if ((_vX > 0)) {
        // source line 309, bytecode pc 80
        (_moveDirection = this.Constant_MoveType_Right);
    } else {
        if ((_vX < 0)) {
            // source line 312, bytecode pc 105
            (_moveDirection = this.Constant_MoveType_Left);
        }
    }
    // source line 315, bytecode pc 142
    (_vX = (this.control.endTouchPoint.x - this.control.beginTouchPoint.x));
    // source line 317, bytecode pc 161
    (_tmp = (_vX / this.Cfg.move_x_right));
    if ((_tmp < 0)) {
        // source line 320, bytecode pc 181
        (_tmp = (_tmp + -1));
    } else {
        // source line 323, bytecode pc 195
        (_tmp = (_tmp + 1));
    }
    // source line 326, bytecode pc 261
    (_time = (xs.Utils.floorSafe((this.control.count / 3)) + xs.Utils.floorSafe(_tmp)));
    // source line 328, bytecode pc 307
    xs.dump("this.control2", [ this.control, _time ]);
    // source line 329, bytecode pc 329
    this.doScrollByIdx(true, (-1 * _time));
    // source line 330, bytecode pc 344
    this.setTouchEnabled(false);
},
    onTouchMoved: function(touch, event) {
    var _pointTouch;
    // source line 336, bytecode pc 19
    (_pointTouch = this.convertTouchToNodeSpace(touch));
    // source line 339, bytecode pc 56
    (this.control.offsetUniX = (_pointTouch.x - this.control.beginTouchPoint.x));
    // source line 341, bytecode pc 69
    this.updateViews();
    // source line 343, bytecode pc 71
    return void 0;
},
    onTouchEnded: function(touch, event) {
    // source line 350, bytecode pc 27
    (this.control.endTouchPoint = this.convertTouchToNodeSpace(touch));
    // source line 351, bytecode pc 40
    this.updateViewsAlign();
},
    Constant_Cushion_Left: 1,
    Constant_Cushion_Right: 2,
    Constant_MoveType_None: 0,
    Constant_MoveType_Left: 1,
    Constant_MoveType_Right: 2,
    doScrollByIdx: function(useCushion, moveIdx) {
    var _dp, _cushion, _actionMoves, _actionScales, _actions, i, posFstItemX, _fixOffsetX, _dstPosX, _distanceLogic, _distanceDraw, _actionMove, _actionScale, _moveX, _scaleX, _actionCushion, _dpCushion, _actionOpenTouch;
    // source line 367, bytecode pc 35
    xs.dump("moveIdx", [ moveIdx ]);
    // source line 371, bytecode pc 44
    (_dp = 0.2);
    // source line 377, bytecode pc 49
    (_cushion = null);
    // source line 379, bytecode pc 71
    (this.control.fstIdx = (this.control.fstIdx + moveIdx));
    if ((this.control.fstIdx >= (this.model.getDataNum() - this.Cfg.visible_num))) {
        // source line 382, bytecode pc 158
        (this.control.fstIdx = (this.model.getDataNum() - this.Cfg.visible_num));
        // source line 383, bytecode pc 168
        (_cushion = this.Constant_Cushion_Right);
    }
    if ((this.control.fstIdx <= 0)) {
        // source line 386, bytecode pc 199
        (this.control.fstIdx = 0);
        // source line 387, bytecode pc 209
        (_cushion = this.Constant_Cushion_Left);
    }
    // source line 392, bytecode pc 255
    xs.dump("beforeAction", { "this.control.fstIdx": this.control.fstIdx });
    // source line 396, bytecode pc 264
    (_actionMoves = []);
    // source line 397, bytecode pc 273
    (_actionScales = []);
    // source line 398, bytecode pc 282
    (_actions = []);
    // source line 400, bytecode pc 287
    (i = 0);
    while ((i < this.view.cardViews.length)) {
        // source line 403, bytecode pc 311
        (posFstItemX = (this.Cfg.fst_item_width / 2));
        // source line 406, bytecode pc 326
        (_fixOffsetX = this.control.offsetUniX);
        // source line 411, bytecode pc 353
        (_dstPosX = ((posFstItemX + (this.Cfg.move_x_right * i)) + _fixOffsetX));
        // source line 413, bytecode pc 372
        (this.model.logicPos[i] = _dstPosX);
        // source line 418, bytecode pc 414
        (_distanceLogic = xs.Utils.Math.abs(this.Cfg.move_x_right));
        // source line 419, bytecode pc 474
        (_distanceDraw = xs.Utils.Math.abs(((this.Cfg.move_x_right / 2) + (this.Cfg.fst_item_width / 2))));
        // source line 421, bytecode pc 479
        (_actionMove = null);
        // source line 422, bytecode pc 484
        (_actionScale = null);
        // source line 426, bytecode pc 502
        (posFstItemX = (this.Cfg.fst_item_width / 2));
        // source line 427, bytecode pc 507
        (_moveX = null);
        // source line 428, bytecode pc 512
        (_scaleX = null);
        if ((i < this.control.fstIdx)) {
            // source line 431, bytecode pc 567
            (_moveX = (posFstItemX - ((this.control.fstIdx - i) * this.Cfg.move_x_right)));
            // source line 432, bytecode pc 582
            (_scaleX = this.Cfg.sec_item_scale);
        } else {
            if ((i > this.control.fstIdx)) {
                // source line 435, bytecode pc 642
                (_moveX = (posFstItemX + ((i - this.control.fstIdx) * this.Cfg.move_x_right)));
                // source line 436, bytecode pc 657
                (_scaleX = this.Cfg.sec_item_scale);
            } else {
                // source line 439, bytecode pc 669
                (_moveX = posFstItemX);
                // source line 440, bytecode pc 674
                (_scaleX = 1);
            }
        }
        if ((i === 0)) {
            // source line 447, bytecode pc 761
            xs.dump("111", { _moveX: _moveX, _scaleX: _scaleX, _posX: this.view.cardViews[i].getPositionX() });
        }
        // source line 452, bytecode pc 843
        (_actionMove = cc.MoveTo.create(_dp, cc.p(_moveX, this.view.cardViews[i].getPosition().y)));
        // source line 453, bytecode pc 876
        (_actionScale = cc.ScaleTo.create(_dp, _scaleX));
        // source line 455, bytecode pc 921
        (_actionMove = cc.TargetedAction.create(this.view.cardViews[i], _actionMove));
        // source line 456, bytecode pc 966
        (_actionScale = cc.TargetedAction.create(this.view.cardViews[i], _actionScale));
        // source line 466, bytecode pc 1028
        _actions.push(xs.Utils.Action.combineSpawn([ _actionMove, _actionScale ]));
        // source line 400, bytecode pc 1042
        (i = (+i + 1));
    }
    // source line 473, bytecode pc 1074
    (_actionCushion = null);
    // source line 474, bytecode pc 1089
    (_dpCushion = this.Cfg.dpCushion);
    if ((_cushion !== null)) {
    }
    // source line 495, bytecode pc 1143
    (_actionOpenTouch = cc.CallFunc.create(function() {
    var i;
    // source line 483, bytecode pc 14
    this.setTouchEnabled(true);
    // source line 485, bytecode pc 22
    (this.ignore = false);
    // source line 487, bytecode pc 27
    (i = 0);
    while ((i < this.view.cardViews.length)) {
        if ((i === 0)) {
            // source line 489, bytecode pc 102
            xs.dump("222", [ this.view.cardViews[i].getPositionX() ]);
        }
        // source line 487, bytecode pc 116
        (i = (+i + 1));
    }
}.bind(this)));
    // source line 505, bytecode pc 1232
    this.runAction(xs.Utils.Action.combineSequenceWithTarget([ xs.Utils.Action.combineSpawn(_actions), _actionOpenTouch ], this));
    // source line 510, bytecode pc 1240
    (this.ignore = true);
},
    onTouchCancelled: function(touch, event) {
    // source line 514, bytecode pc 35
    this.dump("onTouchCancelled", this.convertTouchToNodeSpace(touch));
}
}));
// source line 519, bytecode pc 961
(xs.Views.CardListView.create = function() {
    var ret;
    // source line 520, bytecode pc 23
    (ret = new xs.Views.CardListView());
    if ((ret && ret.init())) {
        // source line 522, bytecode pc 55
        return ret;
    }
    // source line 525, bytecode pc 80
    xs.assert(false, "xs.Views.CardListView.create err");
    // source line 526, bytecode pc 82
    return null;
});
