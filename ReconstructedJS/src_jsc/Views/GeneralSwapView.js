// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/GeneralSwapView.js:1
// source line 297, bytecode pc 253
(xs.Views.GeneralSwapView = cc.Layer.extend({
    ctor: function() {
    // source line 13, bytecode pc 12
    this._super();
    // source line 14, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(size) {
    if (!this._super()) {
        // source line 18, bytecode pc 19
        return false;
    }
    // source line 21, bytecode pc 43
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 22, bytecode pc 58
    this.setTouchEnabled(true);
    // source line 24, bytecode pc 66
    (this.m_tileIndex = 1);
    // source line 25, bytecode pc 78
    (this.m_tiles = []);
    // source line 26, bytecode pc 86
    (this.m_index = 0);
    // source line 27, bytecode pc 98
    (this.m_dataSource = []);
    // source line 28, bytecode pc 106
    (this.m_listener = null);
    // source line 30, bytecode pc 114
    (this.b_isEnabled = true);
    // source line 31, bytecode pc 141
    (this.m_beginTouchLoc = cc.p(0, 0));
    // source line 33, bytecode pc 151
    (this.m_size = size);
    // source line 34, bytecode pc 168
    this.setContentSize(size);
    // source line 36, bytecode pc 176
    (this.m_offsetY = 0);
    // source line 37, bytecode pc 184
    (this.m_maxScale = 1);
    // source line 39, bytecode pc 186
    return true;
},
    setDataSource: function(generals) {
    // source line 43, bytecode pc 9
    (this.m_dataSource = generals);
    // source line 44, bytecode pc 22
    this.initTiles();
    // source line 45, bytecode pc 35
    this.updateTiles();
},
    setListener: function(listener) {
    // source line 48, bytecode pc 9
    (this.m_listener = listener);
},
    setOffsetY: function(y) {
    // source line 51, bytecode pc 9
    (this.m_offsetY = y);
},
    setMaxScale: function(scale) {
    // source line 54, bytecode pc 9
    (this.m_maxScale = scale);
},
    initTiles: function() {
    var i, tile;
    // source line 57, bytecode pc 4
    (i = 0);
    while ((i < this.m_tiles.length)) {
        // source line 58, bytecode pc 48
        xs.Utils.Node.safeRemoveChild(this.m_tiles[i]);
        // source line 57, bytecode pc 61
        (i = (+i + 1));
    }
    // source line 60, bytecode pc 94
    (this.m_tiles = []);
    // source line 62, bytecode pc 99
    (i = 0);
    while ((i < 3)) {
        // source line 63, bytecode pc 147
        (tile = xs.Factorys.Sprite.create("wujiangpai_back", "ZuiduiMenuScene01"));
        // source line 64, bytecode pc 191
        tile.setAnchorPoint(cc.p(0.5, 0.16));
        // source line 65, bytecode pc 224
        xs.Utils.Node.attachNodes(this, tile);
        // source line 66, bytecode pc 246
        this.m_tiles.push(tile);
        // source line 62, bytecode pc 259
        (i = (+i + 1));
    }
    // source line 68, bytecode pc 317
    this.m_tiles[0].setPosition(cc.p(0, this.m_offsetY));
    // source line 69, bytecode pc 376
    this.m_tiles[1].setPosition(cc.p((this.m_size.width / 2), this.m_offsetY));
    // source line 70, bytecode pc 433
    this.m_tiles[2].setPosition(cc.p(this.m_size.width, this.m_offsetY));
    // source line 72, bytecode pc 459
    this.m_tiles[0].setScale(0.3);
    // source line 73, bytecode pc 486
    this.m_tiles[1].setScale(this.m_maxScale);
    // source line 74, bytecode pc 513
    this.m_tiles[2].setScale(0.3);
    // source line 76, bytecode pc 535
    this.m_tiles[0].setOpacity(0);
    // source line 77, bytecode pc 559
    this.m_tiles[1].setOpacity(255);
    // source line 78, bytecode pc 582
    this.m_tiles[2].setOpacity(0);
    // source line 80, bytecode pc 604
    this.m_tiles[0].setZOrder(1);
    // source line 81, bytecode pc 627
    this.m_tiles[1].setZOrder(2);
    // source line 82, bytecode pc 650
    this.m_tiles[2].setZOrder(1);
},
    updateTiles: function() {
    // source line 86, bytecode pc 74
    xs.assert(((this.m_index >= 0) && (this.m_index < this.m_dataSource.length)), "updateTiles,index is out of range!", this.m_index, this.m_dataSource.length);
    // source line 87, bytecode pc 101
    this._updateTile(this.m_tileIndex, this.m_index);
    if (((this.m_index - 1) >= 0)) {
        // source line 89, bytecode pc 151
        this._updateTile(this._getLastTileIndex(), (this.m_index - 1));
    }
    if (((this.m_index + 1) < this.m_dataSource.length)) {
        // source line 92, bytecode pc 211
        this._updateTile(this._getNextTileIndex(), (this.m_index + 1));
    }
},
    setIndex: function(index) {
    // source line 96, bytecode pc 26
    xs.log(("###############setIndex........................" + index));
    if (((index < 0) || (index >= this.m_dataSource.length))) {
        // source line 99, bytecode pc 96
        xs.error("setIndex,index is out of range!", index, this.m_dataSource.length);
        // source line 100, bytecode pc 98
        return void 0;
    }
    // source line 103, bytecode pc 111
    this._tileActionStop();
    // source line 104, bytecode pc 121
    (this.m_index = index);
    // source line 105, bytecode pc 129
    (this.m_tileIndex = 1);
    // source line 107, bytecode pc 142
    this.initTiles();
    // source line 108, bytecode pc 155
    this.updateTiles();
},
    nextTile: function() {
    var fadeIn, moveTo, scaleTo, fadeOut, moveBack;
    if ((((this.m_index + 1) < this.m_dataSource.length) && ((this.m_index + 1) < xs.maxTeamNum))) {
        // source line 116, bytecode pc 80
        (fadeIn = cc.FadeIn.create(0.16));
        // source line 117, bytecode pc 150
        (moveTo = cc.MoveTo.create(0.16, cc.p((this.m_size.width / 2), this.m_offsetY)));
        // source line 118, bytecode pc 188
        (scaleTo = cc.ScaleTo.create(0.16, this.m_maxScale));
        // source line 119, bytecode pc 222
        this.m_tiles[this._getNextTileIndex()].setZOrder(2);
        // source line 120, bytecode pc 287
        this.m_tiles[this._getNextTileIndex()].runAction(cc.Spawn.create(fadeIn, moveTo, scaleTo));
        // source line 122, bytecode pc 318
        (fadeOut = cc.FadeOut.create(0.16));
        // source line 123, bytecode pc 375
        (moveTo = cc.MoveTo.create(0.16, cc.p(0, this.m_offsetY)));
        // source line 124, bytecode pc 412
        (scaleTo = cc.ScaleTo.create(0.16, 0.3));
        // source line 125, bytecode pc 439
        this.m_tiles[this.m_tileIndex].setZOrder(1);
        // source line 126, bytecode pc 498
        this.m_tiles[this.m_tileIndex].runAction(cc.Spawn.create(fadeOut, moveTo, scaleTo));
        // source line 128, bytecode pc 531
        this.m_tiles[this._getLastTileIndex()].setOpacity(0);
        // source line 129, bytecode pc 568
        this.m_tiles[this._getLastTileIndex()].setScale(0.3);
        // source line 130, bytecode pc 635
        this.m_tiles[this._getLastTileIndex()].setPosition(cc.p(this.m_size.width, this.m_offsetY));
        // source line 133, bytecode pc 661
        (this.m_index = (+this.m_index + 1));
        if (((this.m_index + 1) < this.m_dataSource.length)) {
            // source line 135, bytecode pc 722
            this._updateTile(this._getLastTileIndex(), (this.m_index + 1));
        }
        // source line 137, bytecode pc 741
        (this.m_tileIndex = this._getNextTileIndex());
        if (this.m_listener) {
            // source line 140, bytecode pc 777
            this.m_listener.GeneralSwapView_swapAtIndex(this.m_index);
        }
    } else {
        // source line 143, bytecode pc 877
        (moveTo = cc.EaseBackOut.create(cc.MoveTo.create(0.2, cc.p(((this.m_size.width / 2) - 80), this.m_offsetY))));
        // source line 144, bytecode pc 969
        (moveBack = cc.EaseBackOut.create(cc.MoveTo.create(0.2, cc.p((this.m_size.width / 2), this.m_offsetY))));
        // source line 145, bytecode pc 1024
        this.m_tiles[this.m_tileIndex].runAction(cc.Sequence.create(moveTo, moveBack));
    }
},
    lastTile: function() {
    var fadeIn, moveTo, scaleTo, fadeOut, moveBack;
    if (((this.m_index - 1) >= 0)) {
        // source line 153, bytecode pc 45
        (fadeIn = cc.FadeIn.create(0.16));
        // source line 154, bytecode pc 115
        (moveTo = cc.MoveTo.create(0.16, cc.p((this.m_size.width / 2), this.m_offsetY)));
        // source line 155, bytecode pc 153
        (scaleTo = cc.ScaleTo.create(0.16, this.m_maxScale));
        // source line 156, bytecode pc 187
        this.m_tiles[this._getLastTileIndex()].setZOrder(2);
        // source line 157, bytecode pc 252
        this.m_tiles[this._getLastTileIndex()].runAction(cc.Spawn.create(fadeIn, moveTo, scaleTo));
        // source line 159, bytecode pc 283
        (fadeOut = cc.FadeOut.create(0.16));
        // source line 160, bytecode pc 350
        (moveTo = cc.MoveTo.create(0.16, cc.p(this.m_size.width, this.m_offsetY)));
        // source line 161, bytecode pc 387
        (scaleTo = cc.ScaleTo.create(0.16, 0.3));
        // source line 162, bytecode pc 414
        this.m_tiles[this.m_tileIndex].setZOrder(1);
        // source line 163, bytecode pc 473
        this.m_tiles[this.m_tileIndex].runAction(cc.Spawn.create(fadeOut, moveTo, scaleTo));
        // source line 165, bytecode pc 506
        this.m_tiles[this._getNextTileIndex()].setOpacity(0);
        // source line 166, bytecode pc 543
        this.m_tiles[this._getNextTileIndex()].setScale(0.3);
        // source line 167, bytecode pc 600
        this.m_tiles[this._getNextTileIndex()].setPosition(cc.p(0, this.m_offsetY));
        // source line 170, bytecode pc 626
        (this.m_index = (+this.m_index - 1));
        if (((this.m_index - 1) >= 0)) {
            // source line 172, bytecode pc 677
            this._updateTile(this._getNextTileIndex(), (this.m_index - 1));
        }
        // source line 174, bytecode pc 696
        (this.m_tileIndex = this._getLastTileIndex());
        if (this.m_listener) {
            // source line 177, bytecode pc 732
            this.m_listener.GeneralSwapView_swapAtIndex(this.m_index);
        }
    } else {
        // source line 180, bytecode pc 832
        (moveTo = cc.EaseBackOut.create(cc.MoveTo.create(0.2, cc.p(((this.m_size.width / 2) + 80), this.m_offsetY))));
        // source line 181, bytecode pc 924
        (moveBack = cc.EaseBackOut.create(cc.MoveTo.create(0.2, cc.p((this.m_size.width / 2), this.m_offsetY))));
        // source line 182, bytecode pc 979
        this.m_tiles[this.m_tileIndex].runAction(cc.Sequence.create(moveTo, moveBack));
    }
},
    _getNextTileIndex: function() {
    var last;
    // source line 187, bytecode pc 11
    (last = (this.m_tileIndex + 1));
    if ((last >= this.m_tiles.length)) {
        // source line 189, bytecode pc 36
        (last = 0);
    }
    // source line 191, bytecode pc 40
    return last;
},
    _getLastTileIndex: function() {
    var next;
    // source line 194, bytecode pc 11
    (next = (this.m_tileIndex - 1));
    if ((next < 0)) {
        // source line 196, bytecode pc 38
        (next = (this.m_tiles.length - 1));
    }
    // source line 198, bytecode pc 42
    return next;
},
    _updateTile: function(tileIndex, dataIndex) {
    var tile;
    // source line 202, bytecode pc 60
    xs.assert(((dataIndex >= 0) && (dataIndex < this.m_dataSource.length)), "dataIndex is out of range!", dataIndex, this.m_dataSource);
    // source line 203, bytecode pc 105
    xs.assert(((tileIndex >= 0) && (tileIndex < 3)), "tileIndex is out of range!", tileIndex);
    // source line 204, bytecode pc 142
    xs.log(((("_updateTile ...... tile : " + tileIndex) + " data : ") + dataIndex));
    // source line 205, bytecode pc 147
    (tile = null);
    if (this.m_dataSource[dataIndex]) {
        // source line 207, bytecode pc 198
        (tile = this.m_dataSource[dataIndex].getRes().createOriginalSprite_Foot());
    } else {
        // source line 209, bytecode pc 245
        (tile = xs.Factorys.Sprite.create("wujiangpai_back", "ZuiduiMenuScene01"));
        // source line 210, bytecode pc 289
        tile.setAnchorPoint(cc.p(0.5, 0.16));
    }
    // source line 212, bytecode pc 326
    tile.setPosition(this.m_tiles[tileIndex].getPosition());
    // source line 213, bytecode pc 363
    tile.setOpacity(this.m_tiles[tileIndex].getOpacity());
    // source line 214, bytecode pc 400
    tile.setScale(this.m_tiles[tileIndex].getScale());
    // source line 216, bytecode pc 437
    tile.setZOrder(this.m_tiles[tileIndex].getZOrder());
    // source line 217, bytecode pc 470
    xs.Utils.Node.attachNodes(this, tile);
    // source line 218, bytecode pc 508
    xs.Utils.Node.safeRemoveChild(this.m_tiles[tileIndex]);
    // source line 219, bytecode pc 522
    (this.m_tiles[tileIndex] = tile);
},
    _tileActionStop: function() {
    var tile, i;
    // source line 226, bytecode pc 4
    (tile = null);
    // source line 227, bytecode pc 9
    (i = 0);
    while ((i < this.m_tiles.length)) {
        // source line 228, bytecode pc 29
        (tile = this.m_tiles[i]);
        // source line 229, bytecode pc 44
        tile.stopAllActions();
        // source line 227, bytecode pc 57
        (i = (+i + 1));
    }
},
    _isTileRunningAction: function() {
    var isAction, i;
    // source line 233, bytecode pc 4
    (isAction = false);
    // source line 234, bytecode pc 9
    (i = 0);
    while ((i < this.m_tiles.length)) {
        if ((this.m_tiles[i].numberOfRunningActions() > 0)) {
            // source line 236, bytecode pc 48
            (isAction = true);
        }
        // source line 234, bytecode pc 61
        (i = (+i + 1));
    }
    // source line 239, bytecode pc 86
    return isAction;
},
    isTouchInContent: function(touch) {
    var touchLoc, contentSize, x, y;
    // source line 244, bytecode pc 17
    (touchLoc = touch.getLocation());
    // source line 246, bytecode pc 37
    (touchLoc = this.convertToNodeSpace(touchLoc));
    // source line 247, bytecode pc 53
    (contentSize = this.getContentSize());
    // source line 248, bytecode pc 65
    (x = touchLoc.x);
    // source line 249, bytecode pc 77
    (y = touchLoc.y);
    if (((x > 0) && ((x < contentSize.width) && ((y > 0) && (y < contentSize.height))))) {
        // source line 251, bytecode pc 136
        return true;
    }
    // source line 253, bytecode pc 138
    return false;
},
    onTouchBegan: function(touch, e) {
    var touchLoc;
    // source line 256, bytecode pc 22
    xs.log("..........onTouchBegan");
    if ((!this.isTouchInContent(touch) || !this.b_isEnabled)) {
        // source line 259, bytecode pc 59
        return false;
    }
    // source line 265, bytecode pc 77
    (touchLoc = touch.getLocation());
    // source line 266, bytecode pc 97
    (touchLoc = this.convertToNodeSpace(touchLoc));
    // source line 267, bytecode pc 107
    (this.m_beginTouchLoc = touchLoc);
    // source line 268, bytecode pc 109
    return true;
},
    onTouchMoved: function(touch, e) {
},
    onTouchEnded: function(touch, e) {
    var touchLoc;
    // source line 276, bytecode pc 22
    xs.log("..........onTouchEnded");
    // source line 278, bytecode pc 40
    (touchLoc = touch.getLocation());
    // source line 279, bytecode pc 60
    (touchLoc = this.convertToNodeSpace(touchLoc));
    if (((Math.abs((touchLoc.x - this.m_beginTouchLoc.x)) < 30) && (Math.abs((touchLoc.y - this.m_beginTouchLoc.y)) < 30))) {
        // source line 282, bytecode pc 164
        this.touchedCallback();
        // source line 283, bytecode pc 166
        return void 0;
    }
    if (!xs.Guide.GuideMgr.getIsOver()) {
        // source line 287, bytecode pc 200
        return void 0;
    }
    if (((touchLoc.x - this.m_beginTouchLoc.x) >= 30)) {
        // source line 290, bytecode pc 241
        this.lastTile();
    }
    if (((touchLoc.x - this.m_beginTouchLoc.x) <= -30)) {
        // source line 293, bytecode pc 282
        this.nextTile();
    }
},
    touchedCallback: function() {
    if ((this.m_listener && this.m_listener.GeneralSwapView_touchedAtIndex)) {
        // source line 299, bytecode pc 52
        this.m_listener.GeneralSwapView_touchedAtIndex(this.m_index);
    }
}
}));
// source line 305, bytecode pc 279
(xs.Views.GeneralSwapView.create = function(size) {
    var node;
    // source line 306, bytecode pc 23
    (node = new xs.Views.GeneralSwapView());
    if ((node && node.init(size))) {
        // source line 308, bytecode pc 59
        return node;
    }
    // source line 310, bytecode pc 82
    xs.warn("xs.Views.GeneralSwapView.create error!");
    // source line 311, bytecode pc 84
    return null;
});
