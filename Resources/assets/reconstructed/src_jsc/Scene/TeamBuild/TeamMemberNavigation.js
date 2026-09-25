// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/TeamBuild/TeamMemberNavigation.js:1
// source line 163, bytecode pc 153
(xs.Scene.TeamBuildListCell = cc.TableViewCell.extend({
    name: "TeamBuildListCell",
    ctor: function() {
    // source line 15, bytecode pc 12
    this._super();
    // source line 16, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(size, playerId, playerData) {
    if (!this._super()) {
        // source line 20, bytecode pc 19
        return false;
    }
    // source line 23, bytecode pc 27
    (this.b_isForward = false);
    // source line 24, bytecode pc 35
    (this.b_isLocked = false);
    // source line 25, bytecode pc 43
    (this.b_isEmpty = false);
    // source line 26, bytecode pc 51
    (this.b_isSelected = false);
    // source line 28, bytecode pc 59
    (this.m_bg = null);
    // source line 29, bytecode pc 67
    (this.m_head = null);
    // source line 30, bytecode pc 75
    (this.m_icon = null);
    // source line 31, bytecode pc 83
    (this.m_teamData = null);
    // source line 32, bytecode pc 91
    (this.m_selectedIcon = null);
    // source line 33, bytecode pc 99
    (this.m_lockIcon = null);
    // source line 34, bytecode pc 108
    (this.m_spGuideTag = -1);
    // source line 35, bytecode pc 116
    (this.b_joinEnable = false);
    // source line 37, bytecode pc 133
    this.setContentSize(size);
    // source line 39, bytecode pc 143
    (this.m_playerId = playerId);
    // source line 40, bytecode pc 153
    (this.m_playerData = playerData);
    // source line 42, bytecode pc 217
    (this.m_title = cc.LabelTTF.create("", xsc.Tools.ProductSys.getOurttf(), 40));
    // source line 45, bytecode pc 296
    xs.Utils.Node.attachNodes(this, this.m_title, { desc: "c" }, xs.Scene.TeamBuildListCell.cfg.m_title);
    // source line 47, bytecode pc 298
    return true;
},
    updateView: function() {
    var general, _idx;
    // source line 52, bytecode pc 18
    this.log("updateView");
    // source line 56, bytecode pc 52
    xs.Utils.Node.safeRemoveChild(this.m_bg);
    // source line 57, bytecode pc 60
    (this.m_bg = null);
    // source line 58, bytecode pc 94
    xs.Utils.Node.safeRemoveChild(this.m_icon);
    // source line 59, bytecode pc 102
    (this.m_icon = null);
    // source line 60, bytecode pc 136
    xs.Utils.Node.safeRemoveChild(this.m_lockIcon);
    // source line 61, bytecode pc 144
    (this.m_lockIcon = null);
    // source line 63, bytecode pc 164
    this.m_title.setVisible(false);
    if (this.m_teamData) {
        // source line 67, bytecode pc 247
        (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_teamData));
        if (general) {
            if (!this.m_head) {
                // source line 70, bytecode pc 288
                (this.m_head = general.createIcon_TeamBuild());
                // source line 71, bytecode pc 341
                xs.Utils.Node.attachNodes(this, this.m_head, { desc: "c" });
            }
            // source line 74, bytecode pc 363
            this.m_head.reloadData(general);
            // source line 75, bytecode pc 443
            (_idx = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getInTeamPos(general.getPkId()));
            // source line 76, bytecode pc 465
            this.m_head.reloadData_TeamIdx(_idx);
            if (this.b_isSelected) {
                // source line 79, bytecode pc 496
                this.m_head.setSelected(true);
            }
            if (!xs.Guide.GuideMgr.getIsOver()) {
                // source line 83, bytecode pc 553
                this.m_head.setGuideTag(this.m_spGuideTag);
            }
        }
    }
    if ((this.b_isEmpty || this.b_isLocked)) {
        // source line 90, bytecode pc 621
        (this.m_bg = xs.Factorys.Sprite.create("button_kongzhikuang", "Cmn01"));
        // source line 92, bytecode pc 674
        xs.Utils.Node.attachNodes(this, this.m_bg, { desc: "c" });
        if (!xs.Guide.GuideMgr.getIsOver()) {
            // source line 95, bytecode pc 731
            this.m_bg.setGuideTag(this.m_spGuideTag);
        }
        // source line 97, bytecode pc 776
        (this.m_icon = xs.Factorys.Sprite.create("icon_kongTouxiang", "Cmn01"));
        // source line 99, bytecode pc 829
        xs.Utils.Node.attachNodes(this, this.m_icon, { desc: "c" });
        if (this.b_isLocked) {
            // source line 104, bytecode pc 860
            this.m_title.setVisible(true);
            // source line 105, bytecode pc 905
            (this.m_lockIcon = xs.Factorys.Sprite.create("icon_touxiangSuo", "Cmn01"));
            // source line 107, bytecode pc 958
            xs.Utils.Node.attachNodes(this, this.m_lockIcon, { desc: "c" });
        }
    }
    if (this.b_joinEnable) {
        if (!this.m_joinEnabledIcon) {
            // source line 116, bytecode pc 1026
            (this.m_joinEnabledIcon = xs.Factorys.Sprite.create("icon_lt_joinEnabled", "Cmn02"));
            // source line 117, bytecode pc 1047
            this.m_joinEnabledIcon.setZOrder(10);
            // source line 119, bytecode pc 1127
            xs.Utils.Node.attachNodes(this, this.m_joinEnabledIcon, { desc: "c", offset: cc.p(-20, 20) });
        } else {
            // source line 123, bytecode pc 1152
            this.m_joinEnabledIcon.setVisible(true);
        }
    } else {
        if (this.m_joinEnabledIcon) {
            // source line 127, bytecode pc 1188
            this.m_joinEnabledIcon.setVisible(false);
        }
    }
},
    setLockLv: function(lv) {
    // source line 132, bytecode pc 54
    this.m_title.setString((lv + xs.Tools.String.createString("auto_name_206")));
},
    setTeamData: function(data) {
    // source line 135, bytecode pc 9
    (this.m_teamData = data);
    // source line 136, bytecode pc 22
    this.updateView();
},
    setIsEmpty: function(empty) {
    if ((this.b_isEmpty !== empty)) {
        // source line 140, bytecode pc 24
        (this.b_isEmpty = empty);
        // source line 141, bytecode pc 37
        this.updateView();
    }
},
    setIsLocked: function(locked) {
    if ((this.b_isLocked !== locked)) {
        // source line 146, bytecode pc 24
        (this.b_isLocked = locked);
        // source line 147, bytecode pc 37
        this.updateView();
    }
},
    setIsSelected: function(selected) {
    if ((this.b_isSelected !== selected)) {
        // source line 152, bytecode pc 24
        (this.b_isSelected = selected);
        // source line 153, bytecode pc 37
        this.updateView();
    }
},
    setSpGuideTag: function(tag) {
    if ((this.m_spGuideTag !== tag)) {
        // source line 158, bytecode pc 24
        (this.m_spGuideTag = tag);
        // source line 159, bytecode pc 37
        this.updateView();
    }
},
    setJoinEnabled: function(bEnable) {
    if ((this.b_joinEnable !== bEnable)) {
        // source line 165, bytecode pc 24
        (this.b_joinEnable = bEnable);
        // source line 166, bytecode pc 37
        this.updateView();
    }
}
}));
// source line 174, bytecode pc 205
(xs.Scene.TeamBuildListCell.cfg = { m_title: { zOrder: 5, tag: -1 } });
// source line 178, bytecode pc 231
(xs.Scene.TeamBuildListCell.create = function(size, playerId, playerData) {
    var cell;
    // source line 179, bytecode pc 23
    (cell = new xs.Scene.TeamBuildListCell());
    if ((cell && cell.init(size, playerId, playerData))) {
        // source line 181, bytecode pc 67
        return cell;
    }
    // source line 184, bytecode pc 69
    return null;
});
// source line 386, bytecode pc 446
(xs.Scene.TeamBuild.NavItem = cc.TableViewCell.extend({
    name: "xs.Scene.TeamBuild.NavItem",
    Cfg: { m_title: { zOrder: 5, tag: -1 } },
    ctor: function() {
    // source line 200, bytecode pc 12
    this._super();
    // source line 201, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(size) {
    if (!this._super()) {
        // source line 205, bytecode pc 19
        return false;
    }
    // source line 208, bytecode pc 36
    this.setContentSize(size);
    // source line 210, bytecode pc 38
    return true;
},
    reloadData: function(obj) {
    var _type, _icon_general, _bg, _icon_default, _join_enable, _lock;
    // source line 233, bytecode pc 22
    this.assert(obj, "reloadData obj is null");
    // source line 235, bytecode pc 34
    (_type = obj.type);
    if ((_type === xs.Scene.TeamBuild.NavItem.Const_Type_General)) {
        // source line 239, bytecode pc 81
        this._hideView_about_locked();
        // source line 240, bytecode pc 94
        this._hideView_about_empty();
        // source line 244, bytecode pc 119
        (_icon_general = this._getLazyInit_icon_general(obj.model));
        // source line 245, bytecode pc 143
        _icon_general.reloadData(obj.model);
        // source line 246, bytecode pc 160
        _icon_general.setVisible(true);
        // source line 247, bytecode pc 184
        _icon_general.reloadData_TeamIdx(obj.idx);
        // source line 248, bytecode pc 208
        _icon_general.setSelected(obj.selected);
    } else {
        if ((_type === xs.Scene.TeamBuild.NavItem.Const_Type_Empty)) {
            // source line 253, bytecode pc 260
            this._hideView_about_general();
            // source line 254, bytecode pc 273
            this._hideView_about_locked();
            // source line 258, bytecode pc 289
            (_bg = this._getLazyInit_bg());
            // source line 259, bytecode pc 306
            _bg.setVisible(true);
            if (!xs.Guide.GuideMgr.getIsOver()) {
                // source line 262, bytecode pc 362
                _bg.setGuideTag(obj.guide_tag);
            }
            // source line 265, bytecode pc 378
            (_icon_default = this._getLazyInit_icon_default());
            // source line 266, bytecode pc 395
            _icon_default.setVisible(true);
            // source line 268, bytecode pc 411
            (_join_enable = this._getLazyInit_joinEnable());
            // source line 269, bytecode pc 428
            _join_enable.setVisible(true);
        } else {
            if ((_type === xs.Scene.TeamBuild.NavItem.Const_Type_Locked)) {
                // source line 274, bytecode pc 480
                this._hideView_about_general();
                // source line 275, bytecode pc 493
                this._hideView_about_empty();
                // source line 277, bytecode pc 509
                (_bg = this._getLazyInit_bg());
                // source line 278, bytecode pc 526
                _bg.setVisible(true);
                // source line 279, bytecode pc 542
                (_icon_default = this._getLazyInit_icon_default());
                // source line 280, bytecode pc 559
                _icon_default.setVisible(true);
                // source line 283, bytecode pc 575
                (_lock = this._getLazyInit_lock());
                // source line 284, bytecode pc 592
                _lock.setVisible(true);
            } else {
                // source line 294, bytecode pc 616
                this.error("type err");
            }
        }
    }
},
    _getLazyInit_icon_general: function(general) {
    if (!this.m_icon_general) {
        if (!this.m_icon_general) {
            // source line 302, bytecode pc 44
            (this.m_icon_general = general.createIcon_TeamBuild());
            // source line 303, bytecode pc 97
            xs.Utils.Node.attachNodes(this, this.m_icon_general, { desc: "c" });
        }
    }
    // source line 306, bytecode pc 104
    return this.m_icon_general;
},
    _getLazyInit_lock: function() {
    if (!this.m_lockIcon) {
        // source line 311, bytecode pc 56
        (this.m_lockIcon = xs.Factorys.Sprite.create("icon_touxiangSuo", "Cmn01"));
        // source line 313, bytecode pc 109
        xs.Utils.Node.attachNodes(this, this.m_lockIcon, { desc: "c" });
    }
    // source line 316, bytecode pc 116
    return this.m_lockIcon;
},
    _getLazyInit_bg: function() {
    if (!this.m_bg) {
        // source line 321, bytecode pc 56
        (this.m_bg = xs.Factorys.Sprite.create("button_kongzhikuang", "Cmn01"));
        // source line 323, bytecode pc 109
        xs.Utils.Node.attachNodes(this, this.m_bg, { desc: "c" });
    }
    // source line 326, bytecode pc 116
    return this.m_bg;
},
    _getLazyInit_joinEnable: function() {
    if (!this.m_joinEnabledIcon) {
        // source line 331, bytecode pc 56
        (this.m_joinEnabledIcon = xs.Factorys.Sprite.create("icon_lt_joinEnabled", "Cmn02"));
        // source line 332, bytecode pc 77
        this.m_joinEnabledIcon.setZOrder(10);
        // source line 334, bytecode pc 157
        xs.Utils.Node.attachNodes(this, this.m_joinEnabledIcon, { desc: "c", offset: cc.p(-20, 20) });
    }
    // source line 337, bytecode pc 164
    return this.m_joinEnabledIcon;
},
    _getLazyInit_icon_default: function() {
    if (!this.m_icon_default) {
        // source line 342, bytecode pc 56
        (this.m_icon_default = xs.Factorys.Sprite.create("icon_kongTouxiang", "Cmn01"));
        // source line 344, bytecode pc 109
        xs.Utils.Node.attachNodes(this, this.m_icon_default, { desc: "c" });
    }
    // source line 347, bytecode pc 116
    return this.m_icon_default;
},
    _getLazyInit_label: function() {
    if (!this.m_title) {
        // source line 352, bytecode pc 75
        (this.m_title = cc.LabelTTF.create("", xsc.Tools.ProductSys.getOurttf(), 40));
        // source line 355, bytecode pc 140
        xs.Utils.Node.attachNodes(this, this.m_title, { desc: "c" }, this.Cfg.m_title);
    }
    // source line 357, bytecode pc 147
    return this.m_title;
},
    _hideView_about_empty: function() {
    if (this.m_bg) {
        // source line 363, bytecode pc 30
        this.m_bg.setVisible(false);
    }
    if (this.m_icon_default) {
        // source line 366, bytecode pc 61
        this.m_icon_default.setVisible(false);
    }
    if (this.m_joinEnabledIcon) {
        // source line 370, bytecode pc 92
        this.m_joinEnabledIcon.setVisible(false);
    }
},
    _hideView_about_locked: function() {
    if (this.m_bg) {
        // source line 376, bytecode pc 30
        this.m_bg.setVisible(false);
    }
    if (this.m_icon_default) {
        // source line 379, bytecode pc 61
        this.m_icon_default.setVisible(false);
    }
    if (this.m_lockIcon) {
        // source line 382, bytecode pc 92
        this.m_lockIcon.setVisible(false);
    }
},
    _hideView_about_general: function() {
    if (this.m_icon_general) {
        // source line 388, bytecode pc 30
        this.m_icon_general.setVisible(false);
    }
}
}));
// source line 393, bytecode pc 473
(xs.Scene.TeamBuild.NavItem.Const_Type_General = 0);
// source line 394, bytecode pc 500
(xs.Scene.TeamBuild.NavItem.Const_Type_Empty = 1);
// source line 395, bytecode pc 528
(xs.Scene.TeamBuild.NavItem.Const_Type_Locked = 2);
// source line 397, bytecode pc 559
(xs.Scene.TeamBuild.NavItem.create = function(size) {
    var cell;
    // source line 398, bytecode pc 28
    (cell = new xs.Scene.TeamBuild.NavItem());
    if ((cell && cell.init(size))) {
        // source line 400, bytecode pc 64
        return cell;
    }
    // source line 403, bytecode pc 66
    return null;
});
// source line 560, bytecode pc 718
(xs.Scene.TeamBuild.GeneralSwapView = cc.Layer.extend({
    ctor: function() {
    // source line 409, bytecode pc 12
    this._super();
    // source line 410, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(size) {
    if (!this._super()) {
        // source line 414, bytecode pc 19
        return false;
    }
    // source line 417, bytecode pc 43
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 418, bytecode pc 58
    this.setTouchEnabled(true);
    // source line 420, bytecode pc 66
    (this.m_tileIndex = 1);
    // source line 421, bytecode pc 78
    (this.m_tiles = []);
    // source line 422, bytecode pc 86
    (this.m_index = 0);
    // source line 423, bytecode pc 94
    (this.m_dataSource = null);
    // source line 424, bytecode pc 102
    (this.m_listener = null);
    // source line 426, bytecode pc 110
    (this.b_isEnabled = true);
    // source line 427, bytecode pc 137
    (this.m_beginTouchLoc = cc.p(0, 0));
    // source line 429, bytecode pc 147
    (this.m_size = size);
    // source line 430, bytecode pc 164
    this.setContentSize(size);
    // source line 432, bytecode pc 172
    (this.m_offsetY = 0);
    // source line 433, bytecode pc 180
    (this.m_maxScale = 1);
    // source line 435, bytecode pc 193
    this.initTiles();
    // source line 437, bytecode pc 195
    return true;
},
    reloadData: function(index, arrGeneral) {
    var _is_init, _generalOld, _generalCur;
    // source line 446, bytecode pc 4
    (_is_init = false);
    if (!this.m_dataSource) {
        // source line 448, bytecode pc 26
        (this.m_dataSource = arrGeneral);
        // source line 449, bytecode pc 31
        (_is_init = true);
    }
    if (((this.m_idx === null) || (this.m_idx === undefined))) {
        // source line 453, bytecode pc 72
        (this.m_idx = index);
    }
    // source line 457, bytecode pc 89
    (_generalOld = this.m_dataSource[this.m_idx]);
    // source line 460, bytecode pc 99
    (this.m_dataSource = arrGeneral);
    // source line 461, bytecode pc 109
    (this.m_idx = index);
    // source line 463, bytecode pc 126
    (_generalCur = this.m_dataSource[this.m_idx]);
    if (((_generalOld !== _generalCur) || (_is_init === true))) {
        // source line 470, bytecode pc 183
        xs.Utils.Node.removeFromParentSafe(this.m_view_general);
        // source line 471, bytecode pc 191
        (this.m_view_general = null);
        if (_generalCur) {
            // source line 474, bytecode pc 231
            (this.m_view_general = _generalCur.getRes().createOriginalSprite_Foot());
        } else {
            // source line 476, bytecode pc 281
            (this.m_view_general = xs.Factorys.Sprite.create("wujiangpai_back", "ZuiduiMenuScene01"));
            // source line 477, bytecode pc 328
            this.m_view_general.setAnchorPoint(cc.p(0.5, 0.16));
        }
        // source line 481, bytecode pc 371
        xs.Utils.Node.attachNodes(this.m_tiles[1], this.m_view_general);
    }
},
    setListener: function(listener) {
    // source line 487, bytecode pc 9
    (this.m_listener = listener);
},
    setOffsetY: function(y) {
    // source line 490, bytecode pc 9
    (this.m_offsetY = y);
},
    setMaxScale: function(scale) {
    // source line 493, bytecode pc 9
    (this.m_maxScale = scale);
},
    initTiles: function() {
    var i, tile;
    // source line 499, bytecode pc 11
    (this.m_tiles = []);
    // source line 501, bytecode pc 16
    (i = 0);
    while ((i < 3)) {
        // source line 503, bytecode pc 47
        (tile = cc.NodeRGBA.create());
        // source line 504, bytecode pc 91
        tile.setAnchorPoint(cc.p(0.5, 0.16));
        // source line 505, bytecode pc 113
        this.m_tiles.push(tile);
        // source line 506, bytecode pc 146
        xs.Utils.Node.attachNodes(this, tile);
        // source line 501, bytecode pc 159
        (i = (+i + 1));
    }
    // source line 508, bytecode pc 217
    this.m_tiles[0].setPosition(cc.p(0, this.m_offsetY));
    // source line 509, bytecode pc 276
    this.m_tiles[1].setPosition(cc.p((this.m_size.width / 2), this.m_offsetY));
    // source line 510, bytecode pc 333
    this.m_tiles[2].setPosition(cc.p(this.m_size.width, this.m_offsetY));
    // source line 512, bytecode pc 359
    this.m_tiles[0].setScale(0.3);
    // source line 513, bytecode pc 386
    this.m_tiles[1].setScale(this.m_maxScale);
    // source line 514, bytecode pc 413
    this.m_tiles[2].setScale(0.3);
    // source line 516, bytecode pc 435
    this.m_tiles[0].setOpacity(0);
    // source line 517, bytecode pc 459
    this.m_tiles[1].setOpacity(255);
    // source line 518, bytecode pc 482
    this.m_tiles[2].setOpacity(0);
    // source line 520, bytecode pc 504
    this.m_tiles[0].setZOrder(1);
    // source line 521, bytecode pc 527
    this.m_tiles[1].setZOrder(2);
    // source line 522, bytecode pc 550
    this.m_tiles[2].setZOrder(1);
},
    isTouchInContent: function(touch) {
    var touchLoc, contentSize, x, y;
    // source line 529, bytecode pc 17
    (touchLoc = touch.getLocation());
    // source line 531, bytecode pc 37
    (touchLoc = this.convertToNodeSpace(touchLoc));
    // source line 532, bytecode pc 53
    (contentSize = this.getContentSize());
    // source line 533, bytecode pc 65
    (x = touchLoc.x);
    // source line 534, bytecode pc 77
    (y = touchLoc.y);
    if (((x > 0) && ((x < contentSize.width) && ((y > 0) && (y < contentSize.height))))) {
        // source line 536, bytecode pc 136
        return true;
    }
    // source line 538, bytecode pc 138
    return false;
},
    onTouchBegan: function(touch, e) {
    var touchLoc;
    // source line 541, bytecode pc 22
    xs.log("..........onTouchBegan");
    if ((!this.isTouchInContent(touch) || !this.b_isEnabled)) {
        // source line 544, bytecode pc 59
        return false;
    }
    // source line 550, bytecode pc 77
    (touchLoc = touch.getLocation());
    // source line 551, bytecode pc 97
    (touchLoc = this.convertToNodeSpace(touchLoc));
    // source line 552, bytecode pc 107
    (this.m_beginTouchLoc = touchLoc);
    // source line 553, bytecode pc 109
    return true;
},
    onTouchMoved: function(touch, e) {
},
    onTouchEnded: function(touch, e) {
    var touchLoc;
    // source line 561, bytecode pc 22
    xs.log("..........onTouchEnded");
    // source line 563, bytecode pc 40
    (touchLoc = touch.getLocation());
    // source line 564, bytecode pc 60
    (touchLoc = this.convertToNodeSpace(touchLoc));
    if (((Math.abs((touchLoc.x - this.m_beginTouchLoc.x)) < 30) && (Math.abs((touchLoc.y - this.m_beginTouchLoc.y)) < 30))) {
        if (this.m_listener) {
            // source line 568, bytecode pc 187
            this.m_listener.onTouchedAtIndex_by_GeneralSwapView(this.m_index);
        }
        // source line 570, bytecode pc 189
        return void 0;
    }
    if (!xs.Guide.GuideMgr.getIsOver()) {
        // source line 574, bytecode pc 223
        return void 0;
    }
    if (((touchLoc.x - this.m_beginTouchLoc.x) >= 30)) {
        if (this.m_listener) {
            // source line 581, bytecode pc 287
            this.m_listener.onSelect_LastOne_by_GeneralSwapView(this.m_index);
        }
    }
    if (((touchLoc.x - this.m_beginTouchLoc.x) <= -30)) {
        if (this.m_listener) {
            // source line 588, bytecode pc 351
            this.m_listener.onSelect_NextOne_by_GeneralSwapView(this.m_index);
        }
    }
}
}));
// source line 594, bytecode pc 749
(xs.Scene.TeamBuild.GeneralSwapView.create = function(size) {
    var node;
    // source line 595, bytecode pc 28
    (node = new xs.Scene.TeamBuild.GeneralSwapView());
    if ((node && node.init(size))) {
        // source line 597, bytecode pc 64
        return node;
    }
    // source line 599, bytecode pc 87
    xs.warn("xs.Views.GeneralSwapView.create error!");
    // source line 600, bytecode pc 89
    return null;
});
// source line 678, bytecode pc 838
(xs.Scene.TeamBuild.TeamCntPopView = cc.Node.extend({
    ctor: function() {
    // source line 608, bytecode pc 12
    this._super();
    // source line 609, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    var i, pos, expProgressBg;
    if (!this._super()) {
        // source line 613, bytecode pc 19
        return false;
    }
    // source line 617, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 618, bytecode pc 35
    (this.m_ccbNode = null);
    // source line 620, bytecode pc 43
    (this.m_lvLab = null);
    // source line 621, bytecode pc 51
    (this.m_hpLab = null);
    // source line 622, bytecode pc 59
    (this.m_atkLab = null);
    // source line 623, bytecode pc 67
    (this.m_defLab = null);
    // source line 624, bytecode pc 75
    (this.m_intLab = null);
    // source line 626, bytecode pc 83
    (this.m_cntLab0 = null);
    // source line 627, bytecode pc 91
    (this.m_cntLab1 = null);
    // source line 628, bytecode pc 99
    (this.m_cntLab2 = null);
    // source line 629, bytecode pc 107
    (this.m_cntLab3 = null);
    // source line 630, bytecode pc 115
    (this.m_cntLab4 = null);
    // source line 631, bytecode pc 123
    (this.m_cntLab5 = null);
    // source line 633, bytecode pc 131
    (this.progressBarSprite = null);
    // source line 634, bytecode pc 139
    (this.m_expProgressTimer = null);
    // source line 635, bytecode pc 147
    (this.m_bg = null);
    // source line 637, bytecode pc 185
    this.setContentSize(cc.size(540, 140));
    // source line 639, bytecode pc 246
    (this.m_ccbNode = xs.ccb_reader.load(xs.Scene.TeamBuild.TeamCntPopView.cfg.ccbi, this));
    // source line 640, bytecode pc 282
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 642, bytecode pc 349
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Scene.TeamBuild.TeamCntPopView.cfg.ccbCfg, this);
    // source line 644, bytecode pc 361
    (this.m_labels = []);
    // source line 645, bytecode pc 373
    (this.m_labels_light = []);
    // source line 646, bytecode pc 378
    (i = 0);
    while ((i < 6)) {
        // source line 647, bytecode pc 406
        (this.m_labels[i] = this[("m_cntLab" + i)]);
        // source line 648, bytecode pc 422
        (this.m_labels_light[i] = undefined);
        // source line 646, bytecode pc 436
        (i = (+i + 1));
    }
    // source line 652, bytecode pc 509
    (this.m_bg = this.m_ccbNode.getChildByTag(xs.Scene.TeamBuild.TeamCntPopView.cfg.m_bg.tag));
    // source line 654, bytecode pc 569
    (this.progressBarSprite = this.m_ccbNode.getChildByTag(xs.Scene.TeamBuild.TeamCntPopView.cfg.m_expProgressTimer.tag));
    // source line 655, bytecode pc 587
    this.progressBarSprite.removeFromParent();
    // source line 656, bytecode pc 608
    (pos = this.progressBarSprite.getPosition());
    // source line 659, bytecode pc 643
    (this.m_expProgressTimer = cc.ProgressTimer.create(this.progressBarSprite));
    // source line 660, bytecode pc 665
    this.m_expProgressTimer.setPosition(pos);
    // source line 661, bytecode pc 694
    this.m_expProgressTimer.setType(cc.PROGRESS_TIMER_TYPE_BAR);
    // source line 662, bytecode pc 733
    this.m_expProgressTimer.setMidpoint(cc.p(0, 0));
    // source line 663, bytecode pc 772
    this.m_expProgressTimer.setBarChangeRate(cc.p(1, 0));
    // source line 664, bytecode pc 826
    this.m_expProgressTimer.setZOrder(xs.Scene.TeamBuild.TeamCntPopView.cfg.m_expProgressTimer.zOrder);
    // source line 665, bytecode pc 867
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_expProgressTimer);
    // source line 667, bytecode pc 924
    (expProgressBg = this.m_ccbNode.getChildByTag(xs.Scene.TeamBuild.TeamCntPopView.cfg.expProgressBg.tag));
    // source line 668, bytecode pc 975
    expProgressBg.setZOrder(xs.Scene.TeamBuild.TeamCntPopView.cfg.expProgressBg.zOrder);
    // source line 670, bytecode pc 1029
    this.m_bg.setZOrder(xs.Scene.TeamBuild.TeamCntPopView.cfg.m_bg.zOrder);
    // source line 672, bytecode pc 1031
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 675, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    reloadData: function(modelGeneral, playerId, modelPlayer) {
    var _GameDataGenerals, fates, i;
    // source line 681, bytecode pc 27
    xs.Debug.testBeginByTag("1111111111111111");
    // source line 683, bytecode pc 37
    (this.m_modelGeneral = modelGeneral);
    // source line 684, bytecode pc 47
    (this.m_playerId = playerId);
    // source line 685, bytecode pc 57
    (this.m_modelPlayer = modelPlayer);
    if (this.m_modelGeneral) {
        // source line 689, bytecode pc 104
        this.m_expProgressTimer.setPercentage(this.m_modelGeneral.getCurLevelExpPer());
        // source line 691, bytecode pc 146
        this.m_lvLab.setString(("" + this.m_modelGeneral.getLevel()));
        // source line 696, bytecode pc 200
        (_GameDataGenerals = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_modelPlayer).Generals);
        // source line 698, bytecode pc 257
        this.m_hpLab.setString(("" + _GameDataGenerals.getAttr(this.m_modelGeneral, xs.Constant_AttrType_Hp)));
        // source line 699, bytecode pc 314
        this.m_atkLab.setString(("" + _GameDataGenerals.getAttr(this.m_modelGeneral, xs.Constant_AttrType_Atk)));
        // source line 700, bytecode pc 371
        this.m_defLab.setString(("" + _GameDataGenerals.getAttr(this.m_modelGeneral, xs.Constant_AttrType_Def)));
        // source line 701, bytecode pc 428
        this.m_intLab.setString(("" + _GameDataGenerals.getAttr(this.m_modelGeneral, xs.Constant_AttrType_Int)));
        // source line 704, bytecode pc 456
        xs.Debug.testEnd("33333333");
        // source line 707, bytecode pc 477
        (fates = this.m_modelGeneral.getFates());
        // source line 708, bytecode pc 512
        xs.assert((fates.length < 7), "general fates out of range!");
        // source line 709, bytecode pc 517
        (i = 0);
        while ((i < fates.length)) {
            // source line 711, bytecode pc 545
            xs.Debug.testBegin();
            if (xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Fate.isLightedInGeneral(fates[i], this.m_modelGeneral)) {
                if ((this.m_labels_light[i] !== true)) {
                    // source line 724, bytecode pc 747
                    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccbNode, { name: ("m_cntLab" + i), tag: this[("m_cntLab" + i)].getTag(), type: "ls", id: "LS_yuanfenInf1" }, this);
                    // source line 726, bytecode pc 769
                    (this.m_labels[i] = this[("m_cntLab" + i)]);
                    // source line 727, bytecode pc 793
                    this.m_labels[i].setVisible(true);
                    // source line 728, bytecode pc 834
                    this.m_labels[i].setString(fates[i].getNameString());
                    // source line 729, bytecode pc 846
                    (this.m_labels_light[i] = true);
                }
            } else {
                if ((this.m_labels_light[i] !== false)) {
                    // source line 742, bytecode pc 972
                    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccbNode, { name: ("m_cntLab" + i), tag: this[("m_cntLab" + i)].getTag(), type: "ls", id: "LS_yuanfenInf2" }, this);
                    // source line 744, bytecode pc 994
                    (this.m_labels[i] = this[("m_cntLab" + i)]);
                    // source line 745, bytecode pc 1018
                    this.m_labels[i].setVisible(true);
                    // source line 746, bytecode pc 1059
                    this.m_labels[i].setString(fates[i].getNameString());
                    // source line 747, bytecode pc 1071
                    (this.m_labels_light[i] = false);
                }
            }
            // source line 750, bytecode pc 1103
            xs.Debug.testEnd(("isLightedInGeneral-" + i));
            // source line 709, bytecode pc 1116
            (i = (+i + 1));
        }
        // source line 753, bytecode pc 1146
        (i = fates.length);
        while ((i < 6)) {
            if ((this.m_labels_light[i] !== null)) {
                // source line 755, bytecode pc 1193
                this.m_labels[i].setVisible(false);
                // source line 756, bytecode pc 1205
                (this.m_labels_light[i] = null);
            }
            // source line 753, bytecode pc 1218
            (i = (+i + 1));
        }
        // source line 760, bytecode pc 1258
        xs.Debug.testEnd("2222222");
    } else {
        // source line 763, bytecode pc 1283
        this.m_expProgressTimer.setPercentage(0);
        // source line 772, bytecode pc 1303
        this.m_lvLab.setVisible(false);
        // source line 773, bytecode pc 1323
        this.m_hpLab.setVisible(false);
        // source line 774, bytecode pc 1343
        this.m_atkLab.setVisible(false);
        // source line 775, bytecode pc 1363
        this.m_defLab.setVisible(false);
        // source line 776, bytecode pc 1383
        this.m_intLab.setVisible(false);
        // source line 778, bytecode pc 1388
        (i = 0);
        while ((i < 6)) {
            // source line 779, bytecode pc 1418
            this.m_labels[i].setVisible(false);
            // source line 780, bytecode pc 1430
            (this.m_labels_light[i] = null);
            // source line 778, bytecode pc 1443
            (i = (+i + 1));
        }
    }
    // source line 784, bytecode pc 1483
    xs.Debug.testEndByTag("1111111111111111");
}
}));
// source line 789, bytecode pc 869
(xs.Scene.TeamBuild.TeamCntPopView.create = function() {
    var node;
    // source line 790, bytecode pc 28
    (node = new xs.Scene.TeamBuild.TeamCntPopView());
    if ((node && node.init())) {
        // source line 792, bytecode pc 60
        return node;
    }
    // source line 795, bytecode pc 62
    return null;
});
// source line 827, bytecode pc 1537
(xs.Scene.TeamBuild.TeamCntPopView.cfg = {
    ccbi: "ccb3/0_7_2_MVGeneralInfo.ccbi",
    ccbCfg: [
        { name: "m_lvLab", tag: 11, type: "ls", id: "LS_mainLv" },
        { name: "m_hpLab", tag: 12, type: "ls", id: "LS_mainUI4" },
        { name: "m_atkLab", tag: 13, type: "ls", id: "LS_mainUI4" },
        { name: "m_defLab", tag: 14, type: "ls", id: "LS_mainUI4" },
        { name: "m_intLab", tag: 15, type: "ls", id: "LS_mainUI4" },
        { name: "m_cntLab0", tag: 16, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_cntLab1", tag: 17, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_cntLab2", tag: 18, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_cntLab3", tag: 19, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_cntLab4", tag: 20, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_cntLab5", tag: 21, type: "ls", id: "LS_yuanfenInf2" }
    ],
    m_bg: { zOrder: -5, tag: 22 },
    expProgressCover: { zOrder: 0, tag: 23 },
    m_expProgressTimer: { zOrder: -1, tag: 25 },
    expProgressBg: { zOrder: -2, tag: 24 }
});
// source line 954, bytecode pc 1776
(xs.Scene.TeamBuild.TeamIconButton = cc.Node.extend({
    ctor: function() {
    // source line 834, bytecode pc 12
    this._super();
    // source line 835, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(playerId, playerData) {
    if (!this._super()) {
        // source line 839, bytecode pc 19
        return false;
    }
    // source line 842, bytecode pc 29
    (this.m_playerId = playerId);
    // source line 843, bytecode pc 39
    (this.m_playerData = playerData);
    // source line 845, bytecode pc 47
    (this.m_innerBtn = null);
    // source line 846, bytecode pc 55
    (this.m_nameLab = null);
    // source line 847, bytecode pc 63
    (this.m_placeIcon = null);
    // source line 848, bytecode pc 71
    (this.m_icon = null);
    // source line 849, bytecode pc 79
    (this.m_selector = null);
    // source line 850, bytecode pc 87
    (this.m_index = 0);
    // source line 851, bytecode pc 95
    (this.m_data = null);
    // source line 852, bytecode pc 103
    (this.b_isLocked = false);
    // source line 853, bytecode pc 111
    (this.m_lockIcon = null);
    // source line 854, bytecode pc 119
    (this.m_lockLv = 0);
    // source line 855, bytecode pc 127
    (this.b_equipEnabled = false);
    // source line 857, bytecode pc 164
    this.setContentSize(cc.size(100, 130));
    // source line 859, bytecode pc 209
    (this.m_innerBtn = xs.Views.Btn.create("Btn_TeamIconButton", ""));
    // source line 860, bytecode pc 229
    this.m_innerBtn.setZoomOnTouchDown(false);
    // source line 861, bytecode pc 267
    this.m_innerBtn.setOnClickCallBack(this.innerBtnCallback.bind(this));
    // source line 862, bytecode pc 308
    this.m_innerBtn.setPosition(cc.p(50, 80));
    // source line 863, bytecode pc 344
    xs.Utils.Node.attachNodes(this, this.m_innerBtn);
    // source line 866, bytecode pc 389
    (this.m_lockIcon = xs.Factorys.Sprite.create("icon_touxiangSuo", "Cmn01"));
    // source line 867, bytecode pc 430
    this.m_lockIcon.setPosition(cc.p(50, 80));
    // source line 868, bytecode pc 451
    this.m_lockIcon.setZOrder(2);
    // source line 869, bytecode pc 487
    xs.Utils.Node.attachNodes(this, this.m_lockIcon);
    // source line 871, bytecode pc 529
    this.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 872, bytecode pc 531
    return true;
},
    setBtnText: function(txt) {
    // source line 875, bytecode pc 21
    this.m_innerBtn.setString(txt);
},
    setTouchPriority: function(priority) {
    // source line 878, bytecode pc 21
    this.m_innerBtn.setTouchPriority(priority);
},
    getTouchPriority: function() {
    // source line 881, bytecode pc 17
    return this.m_innerBtn.getTouchPriority();
},
    setEnabled: function(enabled) {
    // source line 884, bytecode pc 21
    this.m_innerBtn.setEnabled(enabled);
},
    setIndex: function(index) {
    if ((this.m_index != index)) {
        // source line 888, bytecode pc 24
        (this.m_index = index);
        // source line 889, bytecode pc 37
        this.updateView();
    }
},
    setLockLv: function(level) {
    // source line 893, bytecode pc 9
    (this.m_lockLv = level);
},
    getLockLv: function() {
    // source line 896, bytecode pc 6
    return this.m_lockLv;
},
    setIsLocked: function(locked) {
    if ((this.b_isLocked != locked)) {
        // source line 900, bytecode pc 24
        (this.b_isLocked = locked);
        // source line 901, bytecode pc 37
        this.updateView();
    }
},
    getIsLocked: function() {
    // source line 905, bytecode pc 6
    return this.b_isLocked;
},
    setEquipEnabled: function(equipEnabled) {
    if ((this.b_equipEnabled !== equipEnabled)) {
        // source line 910, bytecode pc 24
        (this.b_equipEnabled = equipEnabled);
        // source line 911, bytecode pc 37
        this.updateView();
    }
},
    reloadData: function(data) {
},
    setData: function(data) {
    // source line 920, bytecode pc 9
    (this.m_data = data);
    // source line 921, bytecode pc 22
    this.updateView();
},
    getData: function() {
    // source line 924, bytecode pc 6
    return this.m_data;
},
    setCallback: function(callfunc) {
    // source line 927, bytecode pc 9
    (this.m_selector = callfunc);
},
    innerBtnCallback: function() {
    if (this.m_selector) {
        // source line 931, bytecode pc 37
        this.m_selector(this.m_index, this.m_data);
    }
},
    openLieutenantSkillNameShow: function() {
    var skill;
    if (this.m_data) {
        if (!this.lieutenantSkillLabel) {
            // source line 939, bytecode pc 61
            (this.lieutenantSkillLabel = xs.Factorys.Label.createByStyleId("LS_Nomb1"));
            // source line 940, bytecode pc 82
            this.lieutenantSkillLabel.setZOrder(10);
            // source line 941, bytecode pc 161
            xs.Utils.Node.attachNodes(this, this.lieutenantSkillLabel, { desc: "ct", offset: cc.p(0, -15) });
        }
        // source line 944, bytecode pc 233
        (skill = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.getNaturalSkill(this.m_data));
        // source line 945, bytecode pc 314
        this.lieutenantSkillLabel.setString(((skill.getNameString() + xs.Tools.String.createString("auto_name_Lv")) + skill.getLevel()));
    } else {
        if (this.lieutenantSkillLabel) {
            // source line 948, bytecode pc 348
            this.lieutenantSkillLabel.removeFromParent();
            // source line 949, bytecode pc 356
            (this.lieutenantSkillLabel = null);
        }
    }
},
    updateView: function() {
    var pIconFrameName;
    // source line 955, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_placeIcon);
    // source line 956, bytecode pc 41
    (this.m_placeIcon = null);
    // source line 958, bytecode pc 50
    (pIconFrameName = "icon_kongTouxiang");
    // source line 959, bytecode pc 57
    switch (this.m_index) {
        case 1:
        // source line 961, bytecode pc 110
        (pIconFrameName = "icon_kongTouxiang");
        // source line 962, bytecode pc 123
        this.openLieutenantSkillNameShow();
        break;
        case 2:
        // source line 965, bytecode pc 137
        (pIconFrameName = "icon_kongTouxiang");
        // source line 966, bytecode pc 150
        this.openLieutenantSkillNameShow();
        break;
        case 3:
        // source line 969, bytecode pc 164
        (pIconFrameName = "icon_kongJineng");
        break;
        case 4:
        // source line 972, bytecode pc 178
        (pIconFrameName = "icon_kongJineng");
        break;
        case 5:
        // source line 975, bytecode pc 192
        (pIconFrameName = "icon_kongJinnang");
        break;
        case 6:
        // source line 978, bytecode pc 206
        (pIconFrameName = "icon_kongZuoqi");
        break;
        case 7:
        // source line 981, bytecode pc 220
        (pIconFrameName = "icon_kongFangju");
        break;
        case 8:
        // source line 984, bytecode pc 234
        (pIconFrameName = "icon_kongWuqi");
        break;
        default:
        break;
    }
    // source line 989, bytecode pc 282
    (this.m_placeIcon = xs.Factorys.Sprite.create(pIconFrameName, "Cmn01"));
    // source line 990, bytecode pc 323
    this.m_placeIcon.setPosition(cc.p(50, 80));
    // source line 991, bytecode pc 359
    xs.Utils.Node.attachNodes(this, this.m_placeIcon);
    // source line 993, bytecode pc 393
    xs.Utils.Node.safeRemoveChild(this.m_icon);
    // source line 994, bytecode pc 401
    (this.m_icon = null);
    if (this.b_isLocked) {
        // source line 997, bytecode pc 448
        xs.Utils.Node.fastSetVisible(this.m_lockIcon, true);
    } else {
        // source line 1000, bytecode pc 489
        xs.Utils.Node.fastSetVisible(this.m_lockIcon, false);
    }
    if (this.m_data) {
        // source line 1005, bytecode pc 524
        (this.m_icon = this.m_data.createIcon_GradeAndLvAndName());
        // source line 1006, bytecode pc 560
        this.m_icon.setPosition(this.m_innerBtn.getPosition());
        // source line 1007, bytecode pc 596
        xs.Utils.Node.attachNodes(this, this.m_icon);
    }
    if (this.b_equipEnabled) {
        if (!this.m_equipEnabledIcon) {
            // source line 1017, bytecode pc 669
            (this.m_equipEnabledIcon = xs.Factorys.Sprite.create("icon_lt_equipEnabled", "Cmn02"));
            // source line 1018, bytecode pc 708
            this.m_equipEnabledIcon.setAnchorPoint(cc.p(0, 1));
            // source line 1019, bytecode pc 729
            this.m_equipEnabledIcon.setZOrder(10);
            // source line 1021, bytecode pc 808
            xs.Utils.Node.attachNodes(this, this.m_equipEnabledIcon, { desc: "lt", offset: cc.p(0, 2) });
        }
    } else {
        if (this.m_equipEnabledIcon) {
            // source line 1025, bytecode pc 842
            this.m_equipEnabledIcon.removeFromParent();
            // source line 1026, bytecode pc 850
            (this.m_equipEnabledIcon = null);
        }
    }
}
}));
// source line 1031, bytecode pc 1807
(xs.Scene.TeamBuild.TeamIconButton.create = function(playerId, playerData) {
    var btn;
    // source line 1032, bytecode pc 28
    (btn = new xs.Scene.TeamBuild.TeamIconButton());
    if ((btn && btn.init(playerId, playerData))) {
        // source line 1034, bytecode pc 68
        return btn;
    }
    // source line 1036, bytecode pc 91
    xs.warn("xs.Views.TeamIconButton.create error!");
    // source line 1037, bytecode pc 93
    return null;
});
