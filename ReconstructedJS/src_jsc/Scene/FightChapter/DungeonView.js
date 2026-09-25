// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/FightChapter/DungeonView.js:1
// source line 209, bytecode pc 218
(xs.Views.DungeonView = cc.LayerColor.extend({
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.LayerColor);
},
    init: function(params) {
    // source line 20, bytecode pc 12
    this._super();
    // source line 22, bytecode pc 22
    (this.params = params);
    // source line 24, bytecode pc 37
    this.setCascadeOpacityEnabled(true);
    // source line 25, bytecode pc 53
    this.setZOrder(-1);
    if (this.params) {
        // source line 28, bytecode pc 130
        (this.curMap = xs.Profile.GameData.Mgr.getInstance().Map.getCurMap(this.params.m_bInHardChapter));
    } else {
        // source line 30, bytecode pc 189
        (this.curMap = xs.Profile.GameData.Mgr.getInstance().Map.getCurMap());
    }
    // source line 33, bytecode pc 191
    return true;
},
    onEnter: function() {
    // source line 37, bytecode pc 12
    this._super();
    // source line 39, bytecode pc 25
    this._showDungeon();
    // source line 40, bytecode pc 38
    this.entryDungeon();
    if ((this.params && this.params.dungeonId)) {
        // source line 44, bytecode pc 106
        xs.Views.Mgr.showDialogByName("DungeonDetail", this.params);
        // source line 45, bytecode pc 123
        (this.params.dungeonId = "");
    }
    // source line 48, bytecode pc 165
    xs.Guide.GuideMgr.endStepBySequence([ "90104" ]);
},
    onExit: function() {
    // source line 52, bytecode pc 12
    this._super();
    // source line 54, bytecode pc 29
    (this.params.mapId = "");
    // source line 55, bytecode pc 46
    (this.params.dungeonId = "");
},
    _setTiTle: function(titleStr) {
    var visibleSize;
    if (!this.ccbNode_title) {
        // source line 61, bytecode pc 47
        (visibleSize = cc.Director.getInstance().getVisibleSize());
        // source line 62, bytecode pc 83
        (this.ccbNode_title = xs.ccb_reader.load("ccb3/0_7_10_DungeonTitle.ccbi", this));
        // source line 63, bytecode pc 125
        this.ccbNode_title.setContentSize(cc.size(340, 52));
        // source line 64, bytecode pc 168
        this.ccbNode_title.setAnchorPoint(cc.p(0, 0.5));
        // source line 65, bytecode pc 203
        this.ccbNode_title.setZOrder(this.cfg.title.zOrder);
        // source line 70, bytecode pc 289
        xs.Utils.Node.attachNodes(this, this.ccbNode_title, { desc: "lt", offset: cc.p(-10, -70), sc: true });
    }
    // source line 73, bytecode pc 363
    xs.Utils.replaceLabelWithString(this.ccbNode_title, this.cfg.title.tag, [ "LS_guanqiaName" ], [ titleStr ]);
},
    _showDungeon: function() {
    var visibleSize, dungeonSize, startPosOffset, i, dungeons, _dungeon, dungeonView, pos, row, column;
    // source line 79, bytecode pc 35
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 80, bytecode pc 61
    (dungeonSize = cc.size(100, 100));
    // source line 83, bytecode pc 166
    (startPosOffset = cc.p((((((visibleSize.width - 800) - xs.Views.MainMenuView.Width) - 70) / 2) + dungeonSize.width), ((visibleSize.height - (0.171875 * visibleSize.height)) - (dungeonSize.height / 2))));
    // source line 87, bytecode pc 197
    this._setTiTle(this.curMap.getName());
    if (this.dungeonViews) {
        // source line 91, bytecode pc 213
        (i = 0);
        while ((i < this.dungeonViews.length)) {
            // source line 92, bytecode pc 243
            this.dungeonViews[i].removeFromParent(true);
            // source line 91, bytecode pc 258
            i++;
        }
    }
    // source line 95, bytecode pc 291
    (this.dungeonViews = []);
    // source line 98, bytecode pc 312
    (dungeons = this.curMap.getDungeons());
    // source line 99, bytecode pc 317
    (i = 0);
    while ((i < dungeons.length)) {
        // source line 100, bytecode pc 334
        (_dungeon = dungeons[i]);
        // source line 101, bytecode pc 354
        (_dungeon.m_bInHardChapter = this.params.m_bInHardChapter);
        // source line 102, bytecode pc 372
        (dungeonView = _dungeon.createView());
        // source line 103, bytecode pc 404
        dungeonView.setZOrder(this.cfg.dungeonView.zOrder);
        // source line 104, bytecode pc 426
        this.dungeonViews.push(dungeonView);
        // source line 106, bytecode pc 446
        (pos = (_dungeon.getPos() - 1));
        // source line 107, bytecode pc 456
        (row = (pos % 4));
        // source line 108, bytecode pc 483
        (column = Math.floor((pos / 4)));
        if (dungeonView) {
            // source line 113, bytecode pc 602
            xs.Utils.Node.attachNodes(this, dungeonView, {
    desc: "lb",
    offset: cc.p((startPosOffset.x + (135 * column)), (startPosOffset.y - (140 * row))),
    sc: true
});
            if ((xs.Profile.GameData.Mgr.getInstance().Map.getCurMapId() === "500001")) {
                // source line 117, bytecode pc 683
                dungeonView.setGuideTag((2000 + i));
            }
            // source line 165, bytecode pc 747
            dungeonView.setOnClickCallBack(function() {
    var params, boxStatus;
    // source line 122, bytecode pc 35
    (this.dungeon = this.self.curMap.getDungeonById(this.dungeonId));
    if ((this.dungeon.getType() === xs.Models.Chapter_Type_Dungeon)) {
        if (this.dungeon.isCanShow()) {
            // source line 126, bytecode pc 105
            (params = {});
            // source line 127, bytecode pc 131
            (params.dungeonId = this.dungeon.getId());
            // source line 128, bytecode pc 156
            (params.m_bInHardChapter = this.self.params.m_bInHardChapter);
            // source line 129, bytecode pc 170
            (params.callfuncAfterAttach = function() {
    // source line 130, bytecode pc 59
    xs.Guide.GuideMgr.endStepBySequence([ "20202", "50103", "80103" ]);
});
            // source line 135, bytecode pc 207
            xs.Views.Mgr.showDialogByName("DungeonDetail", params);
        }
    } else {
        if ((this.dungeon.getType() === xs.Models.Chapter_Type_TreasureBox)) {
            if (this.dungeon.isCanIn()) {
                // source line 148, bytecode pc 361
                xs.Views.Mgr.showDialogByName("priviewTreasureBoxDialog", {
    dungeon: this.dungeon,
    callBack: function() {
    // source line 146, bytecode pc 12
    this._showDungeon();
}.bind(this.self),
    callfuncAfterAttach: function() {
    // source line 149, bytecode pc 41
    xs.Guide.GuideMgr.endStepBySequence([ "90102" ]);
}
});
            } else {
                // source line 153, bytecode pc 387
                (boxStatus = this.dungeon.getBoxStatus());
                if ((boxStatus === xs.TreasureBox_Status_Closed)) {
                    // source line 158, bytecode pc 467
                    xs.Views.Mgr.showDialogByName("priviewTreasureBoxDialog", {
    dungeon: this.dungeon,
    callBack: function() {
}
});
                } else {
                    if ((boxStatus === xs.TreasureBox_Status_Getted)) {
                        // source line 161, bytecode pc 551
                        xs.Views.Mgr.showToast(xs.Tools.String.createString("treasureBoxTip"));
                    }
                }
            }
        }
    }
}.bind({ self: this, dungeonId: _dungeon.getId() }));
            // source line 166, bytecode pc 786
            dungeonView.setTouchPriority((this.m_baseTouchPriority + this.cfg.dungeonView.priority));
            // source line 167, bytecode pc 803
            dungeonView.setCascadeOpacityEnabled(true);
        }
        // source line 99, bytecode pc 818
        i++;
    }
},
    entryDungeon: function() {
    if (!this.mapBg) {
        // source line 177, bytecode pc 35
        (this.mapBg = this.curMap.getChapterBg());
        // source line 179, bytecode pc 71
        xs.Tools.UI.addChapterBg(this, this.mapBg);
        // source line 181, bytecode pc 91
        this.mapBg.setOpacity(0);
    }
    // source line 184, bytecode pc 163
    this.mapBg.runAction(cc.Sequence.create(cc.FadeTo.create(0.5, 204)));
},
    quitDungeon: function() {
    // source line 190, bytecode pc 109
    this.mapBg.runAction(cc.Sequence.create(cc.FadeOut.create(0.5), cc.CallFunc.create(this.removeSelf.bind(this))));
},
    removeSelf: function() {
    // source line 194, bytecode pc 14
    this.removeFromParent(true);
},
    setBaseTouchPriority: function(priority) {
    // source line 198, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    cfg: { bg: { zOrder: 0 }, title: { tag: 10, zOrder: 1 }, dungeonView: { zOrder: 1, priority: 1 } }
}));
// source line 215, bytecode pc 244
(xs.Views.DungeonView.create = function(params) {
    var ret;
    // source line 216, bytecode pc 23
    (ret = new xs.Views.DungeonView());
    if ((ret && ret.init(params))) {
        // source line 218, bytecode pc 59
        return ret;
    }
    // source line 221, bytecode pc 61
    return null;
});
