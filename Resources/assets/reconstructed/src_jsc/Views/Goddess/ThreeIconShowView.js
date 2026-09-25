// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Goddess/ThreeIconShowView.js:1
// source line 255, bytecode pc 253
(xs.Views.ThreeIconShowView = cc.Layer.extend({
    ctor: function() {
    // source line 6, bytecode pc 12
    this._super();
    // source line 7, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(size) {
    if (!this._super()) {
        // source line 11, bytecode pc 19
        return false;
    }
    // source line 14, bytecode pc 43
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 15, bytecode pc 58
    this.setTouchEnabled(true);
    // source line 17, bytecode pc 66
    (this.m_tileIndex = 1);
    // source line 18, bytecode pc 78
    (this.m_tiles = []);
    // source line 19, bytecode pc 86
    (this.m_index = 0);
    // source line 20, bytecode pc 98
    (this.m_dataSource = []);
    // source line 21, bytecode pc 106
    (this.m_listener = null);
    // source line 23, bytecode pc 114
    (this.b_isEnabled = true);
    // source line 24, bytecode pc 141
    (this.m_beginTouchLoc = cc.p(0, 0));
    // source line 26, bytecode pc 151
    (this.m_size = size);
    // source line 27, bytecode pc 168
    this.setContentSize(size);
    // source line 29, bytecode pc 176
    (this.m_offsetY = 0);
    // source line 30, bytecode pc 184
    (this.m_maxScale = 1);
    // source line 32, bytecode pc 186
    return true;
},
    setDataSource: function(generals) {
    // source line 36, bytecode pc 9
    (this.m_dataSource = generals);
    // source line 37, bytecode pc 22
    this.initTiles();
    // source line 38, bytecode pc 35
    this.updateTiles();
},
    setListener: function(listener) {
    // source line 41, bytecode pc 9
    (this.m_listener = listener);
},
    setOffsetY: function(y) {
    // source line 44, bytecode pc 9
    (this.m_offsetY = y);
},
    setMaxScale: function(scale) {
    // source line 47, bytecode pc 9
    (this.m_maxScale = scale);
},
    initTiles: function() {
    var i, tile;
    // source line 50, bytecode pc 4
    (i = 0);
    while ((i < this.m_tiles.length)) {
        // source line 51, bytecode pc 48
        xs.Utils.Node.safeRemoveChild(this.m_tiles[i]);
        // source line 50, bytecode pc 61
        (i = (+i + 1));
    }
    // source line 53, bytecode pc 94
    (this.m_tiles = []);
    // source line 55, bytecode pc 99
    (i = 0);
    while ((i < 3)) {
        // source line 56, bytecode pc 147
        (tile = xs.Factorys.Sprite.create("nvshenjianying", "ZuiduiMenuScene01"));
        // source line 57, bytecode pc 191
        tile.setAnchorPoint(cc.p(0.5, 0.16));
        // source line 58, bytecode pc 224
        xs.Utils.Node.attachNodes(this, tile);
        // source line 59, bytecode pc 246
        this.m_tiles.push(tile);
        // source line 55, bytecode pc 259
        (i = (+i + 1));
    }
    // source line 61, bytecode pc 317
    this.m_tiles[0].setPosition(cc.p(0, this.m_offsetY));
    // source line 62, bytecode pc 376
    this.m_tiles[1].setPosition(cc.p((this.m_size.width / 2), this.m_offsetY));
    // source line 63, bytecode pc 433
    this.m_tiles[2].setPosition(cc.p(this.m_size.width, this.m_offsetY));
    // source line 65, bytecode pc 459
    this.m_tiles[0].setScale(0.3);
    // source line 66, bytecode pc 486
    this.m_tiles[1].setScale(this.m_maxScale);
    // source line 67, bytecode pc 513
    this.m_tiles[2].setScale(0.3);
    // source line 69, bytecode pc 535
    this.m_tiles[0].setOpacity(0);
    // source line 70, bytecode pc 559
    this.m_tiles[1].setOpacity(255);
    // source line 71, bytecode pc 582
    this.m_tiles[2].setOpacity(0);
    // source line 73, bytecode pc 604
    this.m_tiles[0].setZOrder(1);
    // source line 74, bytecode pc 627
    this.m_tiles[1].setZOrder(2);
    // source line 75, bytecode pc 650
    this.m_tiles[2].setZOrder(1);
},
    updateTiles: function() {
    // source line 78, bytecode pc 26
    this._updateTile(this.m_tileIndex, this.m_index);
    if (((this.m_index - 1) >= 0)) {
        // source line 80, bytecode pc 76
        this._updateTile(this._getLastTileIndex(), (this.m_index - 1));
    }
    if (((this.m_index + 1) < this.m_dataSource.length)) {
        // source line 83, bytecode pc 136
        this._updateTile(this._getNextTileIndex(), (this.m_index + 1));
    }
},
    setIndex: function(index) {
    if (((index < 0) || (index >= this.m_dataSource.length))) {
        // source line 88, bytecode pc 32
        return void 0;
    }
    // source line 91, bytecode pc 45
    this._tileActionStop();
    // source line 92, bytecode pc 55
    (this.m_index = index);
    // source line 93, bytecode pc 63
    (this.m_tileIndex = 1);
    // source line 95, bytecode pc 76
    this.initTiles();
    // source line 96, bytecode pc 89
    this.updateTiles();
},
    nextTile: function() {
    var fadeIn, moveTo, scaleTo, fadeOut, moveBack;
    if (((this.m_index + 1) < this.m_dataSource.length)) {
        // source line 100, bytecode pc 55
        (fadeIn = cc.FadeIn.create(0.16));
        // source line 101, bytecode pc 125
        (moveTo = cc.MoveTo.create(0.16, cc.p((this.m_size.width / 2), this.m_offsetY)));
        // source line 102, bytecode pc 163
        (scaleTo = cc.ScaleTo.create(0.16, this.m_maxScale));
        // source line 103, bytecode pc 197
        this.m_tiles[this._getNextTileIndex()].setZOrder(2);
        // source line 104, bytecode pc 262
        this.m_tiles[this._getNextTileIndex()].runAction(cc.Spawn.create(fadeIn, moveTo, scaleTo));
        // source line 106, bytecode pc 293
        (fadeOut = cc.FadeOut.create(0.16));
        // source line 107, bytecode pc 350
        (moveTo = cc.MoveTo.create(0.16, cc.p(0, this.m_offsetY)));
        // source line 108, bytecode pc 387
        (scaleTo = cc.ScaleTo.create(0.16, 0.3));
        // source line 109, bytecode pc 414
        this.m_tiles[this.m_tileIndex].setZOrder(1);
        // source line 110, bytecode pc 473
        this.m_tiles[this.m_tileIndex].runAction(cc.Spawn.create(fadeOut, moveTo, scaleTo));
        // source line 112, bytecode pc 506
        this.m_tiles[this._getLastTileIndex()].setOpacity(0);
        // source line 113, bytecode pc 543
        this.m_tiles[this._getLastTileIndex()].setScale(0.3);
        // source line 114, bytecode pc 610
        this.m_tiles[this._getLastTileIndex()].setPosition(cc.p(this.m_size.width, this.m_offsetY));
        // source line 117, bytecode pc 636
        (this.m_index = (+this.m_index + 1));
        if (((this.m_index + 1) < this.m_dataSource.length)) {
            // source line 119, bytecode pc 697
            this._updateTile(this._getLastTileIndex(), (this.m_index + 1));
        }
        // source line 121, bytecode pc 716
        (this.m_tileIndex = this._getNextTileIndex());
        if (this.m_listener) {
            // source line 124, bytecode pc 752
            this.m_listener.IconSwapView_swapAtIndex(this.m_index);
            // source line 125, bytecode pc 770
            this.m_listener.rightCallBack();
        }
    } else {
        // source line 128, bytecode pc 870
        (moveTo = cc.EaseBackOut.create(cc.MoveTo.create(0.2, cc.p(((this.m_size.width / 2) - 80), this.m_offsetY))));
        // source line 129, bytecode pc 962
        (moveBack = cc.EaseBackOut.create(cc.MoveTo.create(0.2, cc.p((this.m_size.width / 2), this.m_offsetY))));
        // source line 130, bytecode pc 1017
        this.m_tiles[this.m_tileIndex].runAction(cc.Sequence.create(moveTo, moveBack));
    }
},
    lastTile: function() {
    var fadeIn, moveTo, scaleTo, fadeOut, moveBack;
    if (((this.m_index - 1) >= 0)) {
        // source line 135, bytecode pc 45
        (fadeIn = cc.FadeIn.create(0.16));
        // source line 136, bytecode pc 115
        (moveTo = cc.MoveTo.create(0.16, cc.p((this.m_size.width / 2), this.m_offsetY)));
        // source line 137, bytecode pc 153
        (scaleTo = cc.ScaleTo.create(0.16, this.m_maxScale));
        // source line 138, bytecode pc 187
        this.m_tiles[this._getLastTileIndex()].setZOrder(2);
        // source line 139, bytecode pc 252
        this.m_tiles[this._getLastTileIndex()].runAction(cc.Spawn.create(fadeIn, moveTo, scaleTo));
        // source line 141, bytecode pc 283
        (fadeOut = cc.FadeOut.create(0.16));
        // source line 142, bytecode pc 350
        (moveTo = cc.MoveTo.create(0.16, cc.p(this.m_size.width, this.m_offsetY)));
        // source line 143, bytecode pc 387
        (scaleTo = cc.ScaleTo.create(0.16, 0.3));
        // source line 144, bytecode pc 414
        this.m_tiles[this.m_tileIndex].setZOrder(1);
        // source line 145, bytecode pc 473
        this.m_tiles[this.m_tileIndex].runAction(cc.Spawn.create(fadeOut, moveTo, scaleTo));
        // source line 147, bytecode pc 506
        this.m_tiles[this._getNextTileIndex()].setOpacity(0);
        // source line 148, bytecode pc 543
        this.m_tiles[this._getNextTileIndex()].setScale(0.3);
        // source line 149, bytecode pc 600
        this.m_tiles[this._getNextTileIndex()].setPosition(cc.p(0, this.m_offsetY));
        // source line 152, bytecode pc 626
        (this.m_index = (+this.m_index - 1));
        if (((this.m_index - 1) >= 0)) {
            // source line 154, bytecode pc 677
            this._updateTile(this._getNextTileIndex(), (this.m_index - 1));
        }
        // source line 156, bytecode pc 696
        (this.m_tileIndex = this._getLastTileIndex());
        if (this.m_listener) {
            // source line 159, bytecode pc 732
            this.m_listener.IconSwapView_swapAtIndex(this.m_index);
            // source line 160, bytecode pc 750
            this.m_listener.leftCallBack();
        }
    } else {
        // source line 163, bytecode pc 850
        (moveTo = cc.EaseBackOut.create(cc.MoveTo.create(0.2, cc.p(((this.m_size.width / 2) + 80), this.m_offsetY))));
        // source line 164, bytecode pc 942
        (moveBack = cc.EaseBackOut.create(cc.MoveTo.create(0.2, cc.p((this.m_size.width / 2), this.m_offsetY))));
        // source line 165, bytecode pc 997
        this.m_tiles[this.m_tileIndex].runAction(cc.Sequence.create(moveTo, moveBack));
    }
},
    _getNextTileIndex: function() {
    var last;
    // source line 170, bytecode pc 11
    (last = (this.m_tileIndex + 1));
    if ((last >= this.m_tiles.length)) {
        // source line 172, bytecode pc 36
        (last = 0);
    }
    // source line 174, bytecode pc 40
    return last;
},
    _getLastTileIndex: function() {
    var next;
    // source line 177, bytecode pc 11
    (next = (this.m_tileIndex - 1));
    if ((next < 0)) {
        // source line 179, bytecode pc 38
        (next = (this.m_tiles.length - 1));
    }
    // source line 181, bytecode pc 42
    return next;
},
    updataMiddleTile: function(data) {
    // source line 184, bytecode pc 9
    (this.m_dataSource = data);
    // source line 185, bytecode pc 36
    this._updateTile(this.m_tileIndex, this.m_index);
},
    _updateTile: function(tileIndex, dataIndex) {
    var tile;
    // source line 188, bytecode pc 4
    (tile = null);
    if (this.m_dataSource[dataIndex]) {
        // source line 190, bytecode pc 44
        (tile = this.m_dataSource[dataIndex].createGoddessBigPic());
    } else {
        // source line 192, bytecode pc 91
        (tile = xs.Factorys.Sprite.create("nvshenjianying", "ZuiduiMenuScene01"));
        // source line 193, bytecode pc 135
        tile.setAnchorPoint(cc.p(0.5, 0.16));
    }
    // source line 195, bytecode pc 172
    tile.setPosition(this.m_tiles[tileIndex].getPosition());
    // source line 196, bytecode pc 209
    tile.setOpacity(this.m_tiles[tileIndex].getOpacity());
    // source line 197, bytecode pc 246
    tile.setScale(this.m_tiles[tileIndex].getScale());
    // source line 198, bytecode pc 283
    tile.setZOrder(this.m_tiles[tileIndex].getZOrder());
    // source line 199, bytecode pc 316
    xs.Utils.Node.attachNodes(this, tile);
    // source line 200, bytecode pc 354
    xs.Utils.Node.safeRemoveChild(this.m_tiles[tileIndex]);
    // source line 201, bytecode pc 368
    (this.m_tiles[tileIndex] = tile);
},
    _tileActionStop: function() {
    var tile, i;
    // source line 205, bytecode pc 4
    (tile = null);
    // source line 206, bytecode pc 9
    (i = 0);
    while ((i < this.m_tiles.length)) {
        // source line 207, bytecode pc 29
        (tile = this.m_tiles[i]);
        // source line 208, bytecode pc 44
        tile.stopAllActions();
        // source line 206, bytecode pc 57
        (i = (+i + 1));
    }
},
    isTouchInContent: function(touch) {
    var touchLoc, contentSize, x, y;
    // source line 213, bytecode pc 17
    (touchLoc = touch.getLocation());
    // source line 215, bytecode pc 37
    (touchLoc = this.convertToNodeSpace(touchLoc));
    // source line 216, bytecode pc 53
    (contentSize = this.getContentSize());
    // source line 217, bytecode pc 65
    (x = touchLoc.x);
    // source line 218, bytecode pc 77
    (y = touchLoc.y);
    if (((x > 0) && ((x < contentSize.width) && ((y > 0) && (y < contentSize.height))))) {
        // source line 220, bytecode pc 136
        return true;
    }
    // source line 222, bytecode pc 138
    return false;
},
    onTouchBegan: function(touch, e) {
    var touchLoc;
    if ((!this.isTouchInContent(touch) || !this.b_isEnabled)) {
        // source line 227, bytecode pc 36
        return false;
    }
    // source line 230, bytecode pc 54
    (touchLoc = touch.getLocation());
    // source line 231, bytecode pc 74
    (touchLoc = this.convertToNodeSpace(touchLoc));
    // source line 232, bytecode pc 84
    (this.m_beginTouchLoc = touchLoc);
    // source line 233, bytecode pc 86
    return true;
},
    onTouchMoved: function(touch, e) {
},
    onTouchEnded: function(touch, e) {
    var touchLoc;
    // source line 240, bytecode pc 17
    (touchLoc = touch.getLocation());
    // source line 241, bytecode pc 37
    (touchLoc = this.convertToNodeSpace(touchLoc));
    if (((Math.abs((touchLoc.x - this.m_beginTouchLoc.x)) < 30) && (Math.abs((touchLoc.y - this.m_beginTouchLoc.y)) < 30))) {
        // source line 244, bytecode pc 141
        this.touchedCallback();
        // source line 245, bytecode pc 143
        return void 0;
    }
    if (((touchLoc.x - this.m_beginTouchLoc.x) >= 30)) {
        // source line 248, bytecode pc 184
        this.lastTile();
    }
    if (((touchLoc.x - this.m_beginTouchLoc.x) <= -30)) {
        // source line 251, bytecode pc 225
        this.nextTile();
    }
},
    touchedCallback: function() {
    var _data, middleModdel;
    // source line 256, bytecode pc 9
    (_data = {});
    // source line 257, bytecode pc 26
    (middleModdel = this.m_dataSource[this.m_index]);
    // source line 258, bytecode pc 38
    (_data.goddessList = middleModdel);
    // source line 259, bytecode pc 98
    (_data.goddessSkinList = xs.Profile.GameData.Mgr.getInstance().Goddess.getHaveGoddessSkinList(middleModdel));
    // source line 261, bytecode pc 135
    xs.Views.Mgr.showDialogByName("GoddessAchievementDialog", _data);
}
}));
// source line 264, bytecode pc 279
(xs.Views.ThreeIconShowView.create = function(size) {
    var node;
    // source line 265, bytecode pc 23
    (node = new xs.Views.ThreeIconShowView());
    if ((node && node.init(size))) {
        // source line 267, bytecode pc 59
        return node;
    }
    // source line 269, bytecode pc 82
    xs.warn("xs.Views.ThreeIconShowView.create error!");
    // source line 270, bytecode pc 84
    return null;
});
