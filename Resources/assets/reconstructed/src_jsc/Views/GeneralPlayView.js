// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/GeneralPlayView.js:1
// source line 10, bytecode pc 16
(xs.Views.GeneralPlayViewType_Foot = 1);
// source line 11, bytecode pc 34
(xs.Views.GeneralPlayViewType_Waist = 2);
// source line 517, bytecode pc 518
(xs.Views.GeneralPlayView = cc.Layer.extend({
    ctor: function() {
    // source line 16, bytecode pc 12
    this._super();
    // source line 17, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(type) {
    if (!this._super()) {
        // source line 21, bytecode pc 19
        return false;
    }
    // source line 24, bytecode pc 27
    (this.m_tileIndex = 1);
    // source line 25, bytecode pc 39
    (this.m_tiles = []);
    // source line 26, bytecode pc 47
    (this.m_index = 0);
    // source line 27, bytecode pc 59
    (this.m_dataSource = []);
    // source line 28, bytecode pc 71
    (this.m_words = []);
    // source line 29, bytecode pc 79
    (this.m_kingSpeaker = null);
    // source line 31, bytecode pc 87
    (this.b_isMoving = false);
    // source line 32, bytecode pc 95
    (this.b_isLast = false);
    // source line 33, bytecode pc 122
    (this.m_beginTouchLoc = cc.p(0, 0));
    // source line 34, bytecode pc 149
    (this.m_lastMoveTouchLoc = cc.p(0, 0));
    // source line 36, bytecode pc 157
    (this.b_needAutoPlay = true);
    // source line 37, bytecode pc 165
    (this.b_needAutoSpeak = true);
    // source line 38, bytecode pc 173
    (this.b_randomStartIndex = false);
    // source line 39, bytecode pc 181
    (this.b_needAutoDismissSpeak = true);
    // source line 40, bytecode pc 189
    (this.m_speakSpeed = 0);
    // source line 41, bytecode pc 197
    (this.b_isEnabled = true);
    // source line 43, bytecode pc 205
    (this.b_isEffect = false);
    // source line 44, bytecode pc 213
    (this.m_isSay = true);
    // source line 46, bytecode pc 223
    (this.m_type = type);
    // source line 48, bytecode pc 231
    (this.m_timeInterval = 0);
    // source line 49, bytecode pc 243
    (this.m_stringList = []);
    // source line 50, bytecode pc 251
    (this.m_stringNum = 0);
    // source line 52, bytecode pc 282
    (this.m_size = cc.size(600, 600));
    // source line 53, bytecode pc 302
    this.setContentSize(this.m_size);
    // source line 55, bytecode pc 326
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 56, bytecode pc 341
    this.setTouchEnabled(true);
    // source line 60, bytecode pc 374
    (this.m_kingSpeaker = xs.Views.SpeakerView.create());
    if ((this.m_type === xs.Views.GeneralPlayViewType_Waist)) {
        // source line 62, bytecode pc 443
        this.m_kingSpeaker.setPosition(cc.p(90, 200));
    } else {
        if ((this.m_type === xs.Views.GeneralPlayViewType_Foot)) {
            // source line 64, bytecode pc 517
            this.m_kingSpeaker.setPosition(cc.p(90, 320));
        }
    }
    // source line 66, bytecode pc 553
    xs.Utils.Node.attachNodes(this, this.m_kingSpeaker);
    // source line 67, bytecode pc 574
    this.m_kingSpeaker.setZOrder(2);
    // source line 68, bytecode pc 598
    this.m_kingSpeaker.setScale(0.2);
    // source line 69, bytecode pc 634
    xs.Utils.Node.fastSetVisible(this.m_kingSpeaker, false);
    // source line 71, bytecode pc 650
    this.setTouchPriority(-100);
    // source line 76, bytecode pc 652
    return true;
},
    onEnter: function() {
    // source line 80, bytecode pc 12
    this._super();
    // source line 81, bytecode pc 25
    this._scheduleChangeTile();
    // source line 82, bytecode pc 38
    this._scheduleSpeaker();
},
    onExit: function() {
    // source line 88, bytecode pc 12
    this._unscheduleChangeTile();
    // source line 89, bytecode pc 25
    this._unscheduleSpeaker();
    // source line 90, bytecode pc 38
    this._super();
},
    closeSay: function() {
    // source line 94, bytecode pc 7
    (this.m_isSay = false);
},
    start: function() {
    // source line 99, bytecode pc 12
    this.initTiles();
},
    initTiles: function() {
    var i, data, tile;
    // source line 105, bytecode pc 4
    (i = 0);
    while ((i < this.m_tiles.length)) {
        // source line 106, bytecode pc 48
        xs.Utils.Node.safeRemoveChild(this.m_tiles[i]);
        // source line 105, bytecode pc 61
        (i = (+i + 1));
    }
    // source line 108, bytecode pc 94
    (this.m_tiles = []);
    // source line 110, bytecode pc 99
    (i = 0);
    while ((i < 3)) {
        // source line 111, bytecode pc 134
        (data = this._getDataSourceByIndex(((this.m_index + 1) - i)));
        // source line 112, bytecode pc 139
        (tile = null);
        if ((this.m_type === xs.Views.GeneralPlayViewType_Waist)) {
            // source line 114, bytecode pc 195
            (tile = data.getRes().createOriginalSprite_Waist());
        } else {
            if ((this.m_type === xs.Views.GeneralPlayViewType_Foot)) {
                // source line 116, bytecode pc 256
                (tile = data.getRes().createOriginalSprite_Foot());
            }
        }
        // source line 119, bytecode pc 308
        tile.setPosition(cc.p((this.m_size.width * (i - 1)), 0));
        if ((i === 2)) {
            // source line 121, bytecode pc 355
            tile.setPosition(cc.p(0, 0));
            // source line 122, bytecode pc 376
            tile.setScale(0.5);
            // source line 123, bytecode pc 393
            tile.setOpacity(0);
        }
        // source line 125, bytecode pc 426
        xs.Utils.Node.attachNodes(this, tile);
        // source line 127, bytecode pc 448
        this.m_tiles.push(tile);
        // source line 110, bytecode pc 461
        (i = (+i + 1));
    }
},
    setDataSource: function(generals) {
    // source line 133, bytecode pc 9
    (this.m_dataSource = generals);
    if (this.b_randomStartIndex) {
        // source line 136, bytecode pc 72
        (this.m_index = Math.floor((Math.random() * this.m_dataSource.length)));
    }
    // source line 139, bytecode pc 85
    this.initTiles();
},
    setWords: function(words) {
    // source line 142, bytecode pc 9
    (this.m_words = words);
    if ((this.m_words.length > 0)) {
        // source line 144, bytecode pc 40
        this._speakInWords();
    }
},
    setSpeakSpeed: function(speed) {
    // source line 148, bytecode pc 9
    (this.m_speakSpeed = speed);
},
    setNeedAutoPlay: function(auto) {
    // source line 151, bytecode pc 9
    (this.b_needAutoPlay = auto);
    if (!this.b_needAutoPlay) {
        // source line 153, bytecode pc 34
        this._unscheduleChangeTile();
    } else {
        // source line 155, bytecode pc 52
        this._scheduleChangeTile();
    }
},
    setNeedAutoSpeak: function(auto) {
    // source line 159, bytecode pc 9
    (this.b_needAutoSpeak = auto);
},
    setNeedAutoDismissSpeak: function(auto) {
    // source line 162, bytecode pc 9
    (this.b_needAutoDismissSpeak = auto);
},
    setIsRandomStartIndex: function(random) {
    // source line 165, bytecode pc 9
    (this.b_randomStartIndex = random);
    if (random) {
        // source line 167, bytecode pc 69
        (this.m_index = Math.floor((Math.random() * this.m_dataSource.length)));
    }
},
    setEnabled: function(enabled) {
    // source line 171, bytecode pc 9
    (this.b_isEnabled = enabled);
},
    _unscheduleChangeTile: function() {
    // source line 177, bytecode pc 41
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.changeTileInSecond);
},
    changeTileInSecond: function() {
    if (this.b_isLast) {
        // source line 181, bytecode pc 23
        this.lastTile();
    } else {
        // source line 184, bytecode pc 41
        this.nextTile();
    }
},
    _scheduleSpeaker: function() {
    if ((this.b_needAutoSpeak && this.m_isSay)) {
        // source line 189, bytecode pc 73
        xs.director.getScheduler().scheduleCallbackForTarget(this, this._schedule_speakInSecond, this.m_speakSpeed, 0);
    }
},
    _unscheduleSpeaker: function() {
    if ((this.b_needAutoSpeak && this.m_isSay)) {
        // source line 194, bytecode pc 64
        xs.director.getScheduler().unscheduleCallbackForTarget(this, this._schedule_speakInSecond);
    }
},
    _scheduleChangeTile: function() {
    if (this.b_needAutoPlay) {
        // source line 200, bytecode pc 66
        xs.director.getScheduler().scheduleCallbackForTarget(this, this.changeTileInSecond, 10, cc.REPEAT_FOREVER);
    }
},
    _schedule_speakInSecond: function() {
    // source line 208, bytecode pc 35
    xs.Utils.Node.fastSetVisible(this.m_kingSpeaker, true);
    // source line 216, bytecode pc 256
    this.m_kingSpeaker.runAction(xs.Utils.Action.combineSequence([
    cc.CallFunc.create(this._speakInWords.bind(this), this),
    cc.ScaleTo.create(0.2, 1),
    cc.DelayTime.create(4),
    cc.ScaleTo.create(0.2, 0.2),
    cc.Hide.create()
]));
},
    hideSpeaker: function() {
    var scaleTo, callFunc;
    if (!this.b_needAutoDismissSpeak) {
        // source line 225, bytecode pc 13
        return void 0;
    }
    // source line 228, bytecode pc 50
    (scaleTo = cc.ScaleTo.create(0.2, 0.2));
    // source line 231, bytecode pc 96
    (callFunc = cc.CallFunc.create(function() {
    // source line 230, bytecode pc 35
    xs.Utils.Node.fastSetVisible(this.m_kingSpeaker, false);
}.bind(this), this));
    // source line 236, bytecode pc 161
    this.m_kingSpeaker.runAction(xs.Utils.Action.combineSequence([ scaleTo, callFunc ]));
},
    resetSpeaker: function() {
    // source line 243, bytecode pc 12
    this._unscheduleSpeaker();
    // source line 244, bytecode pc 30
    this.m_kingSpeaker.stopAllActions();
    // source line 245, bytecode pc 66
    xs.Utils.Node.fastSetVisible(this.m_kingSpeaker, false);
    // source line 246, bytecode pc 79
    this._scheduleSpeaker();
},
    _getNextDataSourceIndex: function() {
    var next;
    // source line 250, bytecode pc 11
    (next = (this.m_index + 1));
    if ((next >= this.m_dataSource.length)) {
        // source line 252, bytecode pc 36
        (next = 0);
    }
    // source line 254, bytecode pc 40
    return next;
},
    _getLastDataSourceIndex: function() {
    var last;
    // source line 258, bytecode pc 11
    (last = (this.m_index - 1));
    if ((last < 0)) {
        // source line 260, bytecode pc 38
        (last = (this.m_dataSource.length - 1));
    }
    // source line 262, bytecode pc 42
    return last;
},
    _getIdxSafe: function(index) {
    var _index;
    // source line 267, bytecode pc 6
    (_index = index);
    if ((index < 0)) {
        // source line 269, bytecode pc 33
        (_index = (this.m_dataSource.length - 1));
    }
    if ((index >= this.m_dataSource.length)) {
        // source line 272, bytecode pc 58
        (_index = 0);
    }
    // source line 274, bytecode pc 62
    return _index;
},
    _getDataSourceByIndex: function(index) {
    var _index, _ret;
    // source line 279, bytecode pc 19
    (_index = this._getIdxSafe(index));
    // source line 281, bytecode pc 33
    (_ret = this.m_dataSource[_index]);
    // source line 283, bytecode pc 72
    this.assert(_ret, "_getDataSourceByIndex null", this.m_dataSource.length, _index);
    // source line 285, bytecode pc 76
    return _ret;
},
    _getNextTileIndex: function() {
    var next;
    // source line 289, bytecode pc 11
    (next = (this.m_tileIndex - 1));
    if ((next < 0)) {
        // source line 291, bytecode pc 38
        (next = (this.m_tiles.length - 1));
    }
    // source line 293, bytecode pc 42
    return next;
},
    _getLastTileIndex: function() {
    var last;
    // source line 296, bytecode pc 11
    (last = (this.m_tileIndex + 1));
    if ((last >= this.m_tiles.length)) {
        // source line 298, bytecode pc 36
        (last = 0);
    }
    // source line 300, bytecode pc 40
    return last;
},
    _getRandomTips: function() {
    var begin, end, stringId;
    // source line 304, bytecode pc 57
    (begin = xs.Utils.parseIntSafe(xs.Tools.CfgData.getGlobalConf("MainSceneTipStringIDBegin")));
    // source line 305, bytecode pc 115
    (end = xs.Utils.parseIntSafe(xs.Tools.CfgData.getGlobalConf("MainSceneTipStringIDEnd")));
    // source line 307, bytecode pc 186
    (stringId = xs.Utils.parseStringSafe((begin + Math.floor((Math.random() * (end - begin))))));
    // source line 309, bytecode pc 217
    return xs.Factorys.String.create(stringId);
},
    updateTile: function(index, data) {
    var tile, anchorPoint, pos, scale, opacity, newTile;
    // source line 313, bytecode pc 13
    (tile = this.m_tiles[index]);
    // source line 314, bytecode pc 31
    (anchorPoint = tile.getAnchorPoint());
    // source line 315, bytecode pc 49
    (pos = tile.getPosition());
    // source line 316, bytecode pc 67
    (scale = tile.getScale());
    // source line 317, bytecode pc 85
    (opacity = tile.getOpacity());
    // source line 318, bytecode pc 90
    (newTile = null);
    if ((this.m_type === xs.Views.GeneralPlayViewType_Waist)) {
        // source line 320, bytecode pc 146
        (newTile = data.getRes().createOriginalSprite_Waist());
    } else {
        if ((this.m_type === xs.Views.GeneralPlayViewType_Foot)) {
            // source line 322, bytecode pc 207
            (newTile = data.getRes().createOriginalSprite_Foot());
        }
    }
    // source line 325, bytecode pc 226
    newTile.setPosition(pos);
    // source line 326, bytecode pc 245
    newTile.setScale(scale);
    // source line 327, bytecode pc 264
    newTile.setOpacity(opacity);
    // source line 328, bytecode pc 297
    xs.Utils.Node.attachNodes(this, newTile);
    // source line 329, bytecode pc 328
    xs.Utils.Node.safeRemoveChild(tile);
    // source line 330, bytecode pc 342
    (this.m_tiles[index] = newTile);
},
    setIndex: function(index) {
    // source line 335, bytecode pc 49
    xs.assert(((index >= 0) && (index < this.m_dataSource.length)), "index is out of range!");
    // source line 337, bytecode pc 62
    this._tileActionStop();
    // source line 338, bytecode pc 75
    this._unscheduleChangeTile();
    // source line 339, bytecode pc 88
    this._unscheduleSpeaker();
    // source line 342, bytecode pc 98
    (this.m_index = index);
    // source line 343, bytecode pc 106
    (this.m_tileIndex = 1);
    // source line 345, bytecode pc 119
    this.initTiles();
    // source line 347, bytecode pc 132
    this.resetSpeaker();
},
    nextTile: function() {
    var fadeOut, moveTo, scaleTo;
    // source line 356, bytecode pc 7
    (this.b_isLast = false);
    // source line 357, bytecode pc 15
    (this.b_isEffect = true);
    // source line 359, bytecode pc 46
    (fadeOut = cc.FadeOut.create(0.2));
    // source line 360, bytecode pc 98
    (moveTo = cc.MoveTo.create(0.2, cc.p(0, 0)));
    // source line 361, bytecode pc 135
    (scaleTo = cc.ScaleTo.create(0.2, 0.5));
    // source line 362, bytecode pc 194
    this.m_tiles[this.m_tileIndex].runAction(cc.Spawn.create(fadeOut, moveTo, scaleTo));
    // source line 363, bytecode pc 274
    this.m_tiles[this._getNextTileIndex()].runAction(cc.MoveTo.create(0.2, cc.p(0, 0)));
    // source line 365, bytecode pc 309
    this.m_tiles[this._getLastTileIndex()].setOpacity(255);
    // source line 366, bytecode pc 342
    this.m_tiles[this._getLastTileIndex()].setScale(1);
    // source line 367, bytecode pc 405
    this.m_tiles[this._getLastTileIndex()].setPosition(cc.p(-this.m_size.width, 0));
    // source line 369, bytecode pc 424
    (this.m_tileIndex = this._getNextTileIndex());
    // source line 370, bytecode pc 443
    (this.m_index = this._getNextDataSourceIndex());
    // source line 372, bytecode pc 495
    this.updateTile(this._getNextTileIndex(), this._getDataSourceByIndex(this._getNextDataSourceIndex()));
    // source line 374, bytecode pc 508
    this.resetSpeaker();
},
    lastTile: function() {
    var fadeIn, moveTo, scaleTo;
    // source line 382, bytecode pc 7
    (this.b_isLast = true);
    // source line 383, bytecode pc 15
    (this.b_isEffect = true);
    // source line 385, bytecode pc 46
    (fadeIn = cc.FadeIn.create(0.2));
    // source line 386, bytecode pc 98
    (moveTo = cc.MoveTo.create(0.2, cc.p(0, 0)));
    // source line 387, bytecode pc 131
    (scaleTo = cc.ScaleTo.create(0.2, 1));
    // source line 388, bytecode pc 196
    this.m_tiles[this._getLastTileIndex()].runAction(cc.Spawn.create(fadeIn, moveTo, scaleTo));
    // source line 389, bytecode pc 281
    this.m_tiles[this.m_tileIndex].runAction(cc.MoveTo.create(0.2, cc.p(-this.m_size.width, 0)));
    // source line 391, bytecode pc 314
    this.m_tiles[this._getNextTileIndex()].setOpacity(0);
    // source line 392, bytecode pc 351
    this.m_tiles[this._getNextTileIndex()].setScale(0.5);
    // source line 393, bytecode pc 403
    this.m_tiles[this._getNextTileIndex()].setPosition(cc.p(0, 0));
    // source line 395, bytecode pc 422
    (this.m_tileIndex = this._getLastTileIndex());
    // source line 396, bytecode pc 441
    (this.m_index = this._getLastDataSourceIndex());
    // source line 398, bytecode pc 493
    this.updateTile(this._getLastTileIndex(), this._getDataSourceByIndex(this._getLastDataSourceIndex()));
    // source line 400, bytecode pc 506
    this.resetSpeaker();
},
    _moveTiles: function(mov_x) {
    var pos, tile, i;
    // source line 407, bytecode pc 23
    (pos = cc.p(0, 0));
    // source line 408, bytecode pc 28
    (tile = null);
    // source line 409, bytecode pc 33
    (i = 0);
    while ((i < this.m_tiles.length)) {
        // source line 410, bytecode pc 53
        (tile = this.m_tiles[i]);
        // source line 411, bytecode pc 71
        (pos = tile.getPosition());
        if (((pos.x + mov_x) >= (this.m_size.width * 1))) {
            // source line 414, bytecode pc 115
            this.nextTile();
        } else {
            // source line 416, bytecode pc 174
            tile.setPosition(cc.p((pos.x + mov_x), pos.y));
        }
        // source line 409, bytecode pc 187
        (i = (+i + 1));
    }
},
    _moveDelay: function() {
    var pos, tile, moveDelayX, moveTo, i;
    // source line 422, bytecode pc 23
    (pos = cc.p(0, 0));
    // source line 423, bytecode pc 28
    (tile = null);
    // source line 424, bytecode pc 34
    (moveDelayX = 40);
    // source line 425, bytecode pc 39
    (moveTo = null);
    // source line 426, bytecode pc 44
    (i = 0);
    while ((i < this.m_tiles.length)) {
        // source line 427, bytecode pc 64
        (tile = this.m_tiles[i]);
        // source line 428, bytecode pc 82
        (pos = tile.getPosition());
        // source line 429, bytecode pc 152
        (moveTo = cc.MoveTo.create(0.3, cc.p((pos.x + moveDelayX), pos.y)));
        // source line 430, bytecode pc 171
        tile.runAction(moveTo);
        // source line 426, bytecode pc 184
        (i = (+i + 1));
    }
},
    _tileActionStop: function() {
    var tile, i;
    // source line 436, bytecode pc 4
    (tile = null);
    // source line 437, bytecode pc 9
    (i = 0);
    while ((i < this.m_tiles.length)) {
        // source line 438, bytecode pc 29
        (tile = this.m_tiles[i]);
        // source line 439, bytecode pc 44
        tile.stopAllActions();
        // source line 437, bytecode pc 57
        (i = (+i + 1));
    }
},
    _speakInWords: function() {
    if ((this.m_words.length > 0)) {
        // source line 445, bytecode pc 73
        xs.assert(((this.m_index >= 0) && (this.m_index < this.m_words.length)), "words is out of range!");
        // source line 446, bytecode pc 105
        this.m_kingSpeaker.say(this.m_words[this.m_index]);
    } else {
        // source line 448, bytecode pc 141
        this.m_kingSpeaker.say(this._getRandomTips());
        if (this.b_isEffect) {
            // source line 452, bytecode pc 165
            this.playGeneralEffect();
            // source line 453, bytecode pc 173
            (this.b_isEffect = false);
        }
    }
},
    playGeneralEffect: function() {
    var general;
    // source line 458, bytecode pc 22
    (general = this._getDataSourceByIndex(this.m_index));
    // source line 459, bytecode pc 37
    general.playAudioEffect();
},
    touchedCallback: function() {
    // source line 463, bytecode pc 22
    xs.log("GeneralPlayView touchedCallback");
    // source line 464, bytecode pc 55
    xs.Scene.Mgr.changeSceneByName("TeamBuildScene");
},
    isTouchInContent: function(touch) {
    var touchLoc, contentSize, x, y;
    // source line 469, bytecode pc 17
    (touchLoc = touch.getLocation());
    // source line 471, bytecode pc 37
    (touchLoc = this.convertToNodeSpace(touchLoc));
    // source line 472, bytecode pc 53
    (contentSize = this.getContentSize());
    // source line 473, bytecode pc 65
    (x = touchLoc.x);
    // source line 474, bytecode pc 77
    (y = touchLoc.y);
    if (((x > (-contentSize.width / 2)) && ((x < (contentSize.width / 2)) && ((y > (-contentSize.height / 2)) && (y < (contentSize.height / 2)))))) {
        // source line 476, bytecode pc 164
        return true;
    }
    // source line 478, bytecode pc 166
    return false;
},
    onTouchBegan: function(touch, e) {
    var touchLoc;
    if ((!this.isTouchInContent(touch) || !this.b_isEnabled)) {
        // source line 485, bytecode pc 36
        return false;
    }
    // source line 487, bytecode pc 49
    this._tileActionStop();
    // source line 488, bytecode pc 67
    (touchLoc = touch.getLocation());
    // source line 489, bytecode pc 87
    (touchLoc = this.convertToNodeSpace(touchLoc));
    // source line 490, bytecode pc 97
    (this.m_beginTouchLoc = touchLoc);
    // source line 491, bytecode pc 105
    (this.b_isMoving = false);
    // source line 492, bytecode pc 107
    return true;
},
    onTouchMoved: function(touch, e) {
    var touchLoc, mov_x;
    // source line 498, bytecode pc 1
    return void 0;
    if (!this.b_isMoving) {
        // source line 501, bytecode pc 26
        (this.m_lastMoveTouchLoc = this.m_beginTouchLoc);
        // source line 502, bytecode pc 34
        (this.b_isMoving = true);
    }
    if (!this.isTouchInContent(touch)) {
        // source line 505, bytecode pc 64
        (this.b_isMoving = false);
        // source line 506, bytecode pc 66
        return void 0;
    }
    // source line 509, bytecode pc 84
    (touchLoc = touch.getLocation());
    // source line 510, bytecode pc 104
    (touchLoc = this.convertToNodeSpace(touchLoc));
    // source line 511, bytecode pc 128
    (mov_x = (touchLoc.x - this.m_lastMoveTouchLoc.x));
    // source line 512, bytecode pc 145
    this._moveTiles(mov_x);
    // source line 514, bytecode pc 155
    (this.m_lastMoveTouchLoc = touchLoc);
},
    onTouchEnded: function(touch, e) {
    var touchLoc;
    // source line 520, bytecode pc 17
    (touchLoc = touch.getLocation());
    // source line 521, bytecode pc 37
    (touchLoc = this.convertToNodeSpace(touchLoc));
    if (((Math.abs((touchLoc.x - this.m_beginTouchLoc.x)) < 30) && (Math.abs((touchLoc.y - this.m_beginTouchLoc.y)) < 30))) {
        // source line 524, bytecode pc 141
        this.touchedCallback();
        // source line 525, bytecode pc 143
        return void 0;
    }
    if (((touchLoc.x - this.m_beginTouchLoc.x) >= 30)) {
        // source line 529, bytecode pc 184
        this._unscheduleChangeTile();
        // source line 530, bytecode pc 197
        this._scheduleChangeTile();
        // source line 531, bytecode pc 210
        this.nextTile();
    }
    if (((touchLoc.x - this.m_beginTouchLoc.x) <= -30)) {
        // source line 534, bytecode pc 251
        this._unscheduleChangeTile();
        // source line 535, bytecode pc 264
        this._scheduleChangeTile();
        // source line 536, bytecode pc 277
        this.lastTile();
    }
}
}));
// source line 543, bytecode pc 544
(xs.Views.GeneralPlayView.create = function(type, arrDS) {
    var node;
    // source line 544, bytecode pc 23
    (node = new xs.Views.GeneralPlayView());
    if ((node && node.init(type))) {
        // source line 546, bytecode pc 74
        node.setDataSource(arrDS);
        // source line 547, bytecode pc 89
        node.start();
        // source line 548, bytecode pc 93
        return node;
    }
    // source line 550, bytecode pc 116
    xs.warn("xs.Views.GeneralPlayView.create error!");
    // source line 551, bytecode pc 118
    return null;
});
// source line 623, bytecode pc 633
(xs.Views.GeneralPlayView_CmnWord = xs.Views.GeneralPlayView.extend({
    setCmnWord: function(string) {
    // source line 560, bytecode pc 9
    (this.m_str_cmn_word = string);
    // source line 561, bytecode pc 22
    this.setCmnWords();
},
    setCmnWords: function() {
    // source line 566, bytecode pc 95
    (this.m_stringList = (xs.Profile.GameData.AdInfo.getInstance().gettips_list() || [ xs.Tools.String.createString("auto_name_118") ]));
},
    _schedule_speakInSecond: function() {
    // source line 607, bytecode pc 289
    this.m_kingSpeaker.runAction(xs.Utils.Action.combineSequence([
    cc.CallFunc.create(function() {
    // source line 581, bytecode pc 35
    xs.Utils.Node.fastSetVisible(this.m_kingSpeaker, true);
    // source line 582, bytecode pc 67
    this.m_kingSpeaker.say(this.m_stringList[this.m_stringNum]);
    // source line 583, bytecode pc 87
    this.m_kingSpeaker.setScale(1);
    if (this.b_isEffect) {
        // source line 586, bytecode pc 111
        this.playGeneralEffect();
        // source line 587, bytecode pc 119
        (this.b_isEffect = false);
    }
}.bind(this)),
    cc.DelayTime.create(4),
    cc.CallFunc.create(function() {
    if ((this.m_words.length > 0)) {
        // source line 597, bytecode pc 73
        xs.assert(((this.m_index >= 0) && (this.m_index < this.m_words.length)), "words is out of range!");
        // source line 598, bytecode pc 105
        this.m_kingSpeaker.say(this.m_words[this.m_index]);
    } else {
        // source line 600, bytecode pc 141
        this.m_kingSpeaker.say(this._getRandomTips());
    }
}.bind(this)),
    cc.ScaleTo.create(0.2, 1),
    cc.DelayTime.create(4),
    cc.ScaleTo.create(0.2, 0.2),
    cc.Hide.create()
]));
    // source line 613, bytecode pc 304
    (this.m_stringNum = (this.m_stringNum + 1));
    if ((this.m_stringNum >= this.m_stringList.length)) {
        // source line 615, bytecode pc 335
        (this.m_stringNum = 0);
    }
},
    touchedCallback: function() {
    var _tmp;
    // source line 630, bytecode pc 41
    (_tmp = this.m_dataSource.sort(xs.Tools.Sort.byGradeAndId_generals_order_asc));
    // source line 638, bytecode pc 94
    xs.Views.Dialog.AgaSurrenderDialog.showWithSurrenderInfo({ datas: _tmp, idxInit: 0 });
}
}));
// source line 643, bytecode pc 659
(xs.Views.GeneralPlayView_CmnWord.create = function(type, arrDS, str) {
    var node;
    // source line 644, bytecode pc 23
    (node = new xs.Views.GeneralPlayView_CmnWord());
    if ((node && node.init(type))) {
        // source line 646, bytecode pc 74
        node.setDataSource(arrDS);
        // source line 647, bytecode pc 93
        node.setCmnWord(str);
        // source line 648, bytecode pc 108
        node.start();
        // source line 650, bytecode pc 112
        return node;
    }
    // source line 652, bytecode pc 135
    xs.warn("xs.Views.GeneralPlayView_CmnWord.create error!");
    // source line 653, bytecode pc 137
    return null;
});
