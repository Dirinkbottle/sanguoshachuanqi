// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/UnionWar/UnionWarChangeFormationScene.js:1
// source line 260, bytecode pc 288
(xs.Scene.UnionWarChangeFormationLayer = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
},
    SaveType: { Save: 1, SaveAndExit: 2 },
    init: function(param) {
    var visibleSize, visibleOrigin, colorLayer, realWidth, realHeight, offset_x, offset_y, inc_x, inc_y, i, headView;
    if (!this._super()) {
        // source line 18, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 27
    (this.m_titleLabel = null);
    // source line 21, bytecode pc 39
    (this.m_arrPlayerHeadViews = []);
    // source line 22, bytecode pc 47
    (this.m_curPlayerData = null);
    // source line 23, bytecode pc 56
    (this.m_curPlayerIdx = -1);
    // source line 24, bytecode pc 64
    (this.m_cancelBtn = null);
    // source line 25, bytecode pc 72
    (this.m_saveBtn = null);
    // source line 26, bytecode pc 80
    (this.b_isChanged = false);
    // source line 27, bytecode pc 98
    (this.m_saveType = this.SaveType.Save);
    // source line 29, bytecode pc 113
    (this.m_battleId = param.battleId);
    // source line 30, bytecode pc 153
    (this.m_battleInfo = xs.Models.UnionWarBattleInfo.createWithBattleId(this.m_battleId));
    // source line 32, bytecode pc 178
    (visibleSize = xs.director.getVisibleSize());
    // source line 33, bytecode pc 203
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 36, bytecode pc 243
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Fight_Chaos);
    // source line 38, bytecode pc 295
    (colorLayer = cc.LayerColor.create(cc.c4b(0, 0, 0, 150)));
    // source line 39, bytecode pc 312
    this.addChild(colorLayer);
    // source line 42, bytecode pc 346
    (this.ccbTitle = xs.ccb_reader.load("ccb3/unionWar_title.ccbi"));
    // source line 43, bytecode pc 388
    this.ccbTitle.setContentSize(cc.size(434, 52));
    // source line 49, bytecode pc 509
    xs.Utils.Node.attachNodes(this, this.ccbTitle, {
    desc: "tc",
    offset: { x: (-this.ccbTitle.getContentSize().width / 2), y: (-visibleSize.height * 0.1) },
    sc: true
});
    // source line 52, bytecode pc 552
    xs.Utils.UI.replaceCcbByCfg(this.ccbTitle, this.ccbTitleCfg, this);
    // source line 55, bytecode pc 564
    (realWidth = visibleSize.width);
    // source line 56, bytecode pc 576
    (realHeight = visibleSize.height);
    // source line 58, bytecode pc 597
    (inc_x = (realWidth / 4.7));
    // source line 59, bytecode pc 607
    (inc_y = (realHeight / 4));
    // source line 60, bytecode pc 612
    (i = 0);
    while ((i < this.m_battleInfo.getBattleMaxMemberNum())) {
        // source line 61, bytecode pc 648
        (headView = xs.Views.UnionWarPlayerHeadView.create());
        // source line 62, bytecode pc 665
        headView.setListener(this);
        // source line 63, bytecode pc 714
        (offset_x = (((inc_x * ((i % 4) + 1)) - (headView.getContentSize().width / 2)) - (realWidth * 0.07)));
        // source line 64, bytecode pc 778
        (offset_y = ((inc_y * (4 - (xs.Utils.parseIntSafe((i / 4)) + 1))) - (headView.getContentSize().height / 2)));
        // source line 71, bytecode pc 861
        xs.Utils.Node.attachNodes(this, headView, { desc: "lb", offset: { x: offset_x, y: offset_y }, sc: true });
        // source line 73, bytecode pc 883
        this.m_arrPlayerHeadViews.push(headView);
        // source line 60, bytecode pc 898
        i++;
    }
    // source line 76, bytecode pc 964
    (this.m_saveBtn = xs.Views.Btn.createByStyleId("BS_Btn1"));
    // source line 77, bytecode pc 1015
    this.m_saveBtn.setString(xs.Tools.String.createString("union_formation_save"));
    // source line 78, bytecode pc 1053
    this.m_saveBtn.setOnClickCallBack(this.saveBtnClicked.bind(this));
    // source line 79, bytecode pc 1137
    xs.Utils.Node.attachNodes(this, this.m_saveBtn, { desc: "rb", sc: true, offset: { x: -120, y: 64 } });
    // source line 82, bytecode pc 1176
    (this.m_cancelBtn = xs.Views.Btn.createByStyleId("BS_Btn1"));
    // source line 83, bytecode pc 1227
    this.m_cancelBtn.setString(xs.Tools.String.createString("union_formation_cancel"));
    // source line 84, bytecode pc 1265
    this.m_cancelBtn.setOnClickCallBack(this.cancelBtnClicked.bind(this));
    // source line 85, bytecode pc 1352
    xs.Utils.Node.attachNodes(this, this.m_cancelBtn, { desc: "rb", sc: true, offset: { x: -300, y: 64 } });
    // source line 88, bytecode pc 1391
    (this.m_closeBtn = xs.Views.Btn.create("Btn_CircleRedClose"));
    // source line 89, bytecode pc 1429
    this.m_closeBtn.setOnClickCallBack(this.closeBtnCallback.bind(this));
    // source line 90, bytecode pc 1513
    xs.Utils.Node.attachNodes(this, this.m_closeBtn, { desc: "rt", sc: true, offset: { x: -55, y: -64 } });
    // source line 92, bytecode pc 1526
    this.refreshView();
    // source line 93, bytecode pc 1541
    this.changeState(false);
    // source line 95, bytecode pc 1543
    return true;
},
    refreshView: function() {
    var allPlayer, i, isHave, j;
    // source line 102, bytecode pc 79
    (allPlayer = xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getPlayerListWithConditions(this.m_battleId, xs.Constant_SortType_BattlePlayer_Default));
    // source line 104, bytecode pc 84
    (i = 0);
    while ((i < this.m_arrPlayerHeadViews.length)) {
        // source line 105, bytecode pc 95
        (isHave = false);
        // source line 106, bytecode pc 100
        (j = 0);
        while ((j < allPlayer.length)) {
            if (((allPlayer[j].getBattlePos() - 1) == i)) {
                // source line 108, bytecode pc 165
                this.m_arrPlayerHeadViews[i].setPlayerData(allPlayer[j]);
                // source line 109, bytecode pc 170
                (isHave = true);
                break;
            }
            // source line 106, bytecode pc 190
            j++;
        }
        if (!isHave) {
            // source line 115, bytecode pc 241
            this.m_arrPlayerHeadViews[i].setPlayerData(null);
        }
        // source line 117, bytecode pc 267
        this.m_arrPlayerHeadViews[i].setIdx(i);
        // source line 118, bytecode pc 289
        this.m_arrPlayerHeadViews[i].refreshView();
        // source line 104, bytecode pc 304
        i++;
    }
},
    onInnerBtnClicked: function(curPlayerData, curIdx) {
    // source line 124, bytecode pc 9
    (this.m_curPlayerData = curPlayerData);
    // source line 125, bytecode pc 19
    (this.m_curPlayerIdx = curIdx);
    // source line 126, bytecode pc 32
    this.showReplaceDialog();
},
    showReplaceDialog: function() {
    // source line 133, bytecode pc 59
    (this.m_replaceDialog = xs.Views.Mgr.showDialogByName("ReplaceCardDialog", xs.Views.Dialog.ReplaceCardDialog_Type_BattlePlayer));
    // source line 134, bytecode pc 86
    this.m_replaceDialog.setReplaceData(this.m_curPlayerData, true);
    // source line 139, bytecode pc 106
    this.m_replaceDialog.setListener(this);
},
    ReplaceCardDialog_replaceCard: function(data, cardType) {
    // source line 150, bytecode pc 85
    xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().changePlayerPos(this.m_curPlayerData, data, this.m_battleId, (this.m_curPlayerIdx + 1));
    // source line 152, bytecode pc 100
    this.changeState(true);
    // source line 154, bytecode pc 127
    xs.Views.Mgr.hideDialog();
    // source line 156, bytecode pc 140
    this.refreshView();
},
    ReplaceCardDialog_close: function() {
    // source line 160, bytecode pc 7
    (this.m_replaceDialog = null);
},
    saveLocalFightPlayers: function() {
    // source line 165, bytecode pc 58
    xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().saveFightPlayersTmp();
},
    cancelLocalFightPlayersTemp: function() {
    // source line 170, bytecode pc 58
    xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().clearFightPlayersTemp();
},
    saveBtnClicked: function() {
    // source line 174, bytecode pc 17
    (this.m_saveType = this.SaveType.Save);
    // source line 175, bytecode pc 30
    this.requestSetBattleFormation();
},
    cancelBtnClicked: function() {
    // source line 181, bytecode pc 12
    this.cancelLocalFightPlayersTemp();
    // source line 182, bytecode pc 27
    this.changeState(false);
    // source line 183, bytecode pc 40
    this.refreshView();
},
    closeBtnCallback: function() {
    var dialog;
    // source line 187, bytecode pc 17
    (this.m_saveType = this.SaveType.SaveAndExit);
    if (!this.b_isChanged) {
        // source line 190, bytecode pc 56
        xs.Scene.Mgr.gotoLastScene();
    } else {
        // source line 210, bytecode pc 244
        (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 200, bytecode pc 12
    this.cancelLocalFightPlayersTemp();
    // source line 201, bytecode pc 39
    xs.Views.Mgr.hideDialog();
    // source line 202, bytecode pc 66
    xs.Scene.Mgr.gotoLastScene();
}.bind(this),
    rightCB: function() {
    // source line 206, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 208, bytecode pc 39
    this.requestSetBattleFormation();
}.bind(this)
}));
        // source line 211, bytecode pc 262
        (dialog = dialog.getRealDialog());
        // source line 212, bytecode pc 283
        dialog.setContentText("主公,需要保存修改吗?");
        // source line 213, bytecode pc 304
        dialog.setTitleByString("提示");
    }
},
    changeState: function(isChanged) {
    // source line 218, bytecode pc 9
    (this.b_isChanged = isChanged);
    // source line 219, bytecode pc 31
    this.m_saveBtn.setEnabled(isChanged);
    // source line 220, bytecode pc 53
    this.m_cancelBtn.setEnabled(isChanged);
},
    requestSetBattleFormation: function() {
    // source line 240, bytecode pc 184
    xs.Tools.Net.requestSetBattleFormation({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    chg_formation: xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getChangedInfo()
}, function(resData) {
    // source line 230, bytecode pc 62
    xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().loadJson(resData);
    if ((this.m_saveType == this.SaveType.Save)) {
        // source line 232, bytecode pc 98
        this.refreshView();
        // source line 233, bytecode pc 113
        this.changeState(false);
    } else {
        if ((this.m_saveType == this.SaveType.SaveAndExit)) {
            // source line 236, bytecode pc 168
            xs.Scene.Mgr.gotoLastScene();
        }
    }
}.bind(this), function(resData) {
});
},
    setBaseTouchPriority: function(priority) {
    var i;
    // source line 247, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 248, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 249, bytecode pc 56
    this.m_saveBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 250, bytecode pc 83
    this.m_cancelBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 251, bytecode pc 139
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.UnionWar.m_closeBtn.priority));
    // source line 253, bytecode pc 144
    (i = 0);
    while ((i < this.m_arrPlayerHeadViews.length)) {
        // source line 255, bytecode pc 210
        this.m_arrPlayerHeadViews[i].setBaseTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.UnionWar.m_playerHeadView.priority));
        // source line 253, bytecode pc 225
        i++;
    }
},
    ccbTitleCfg: [
        {
            tag: 1,
            type: "ls",
            name: "m_titleLabel",
            id: "LS_guanqiaName",
            stringId: "union_title_changeShape"
        }
    ]
}));
// source line 264, bytecode pc 314
(xs.Scene.UnionWarChangeFormationLayer.create = function(param) {
    var layer;
    // source line 265, bytecode pc 23
    (layer = new xs.Scene.UnionWarChangeFormationLayer());
    if ((layer && layer.init(param))) {
        // source line 267, bytecode pc 59
        return layer;
    }
    // source line 269, bytecode pc 61
    return null;
});
// source line 280, bytecode pc 378
(xs.Scene.UnionWarChangeFormationScene = cc.Scene.extend({
    ctor: function() {
    // source line 277, bytecode pc 12
    this._super();
    // source line 278, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(param) {
    var layer;
    if (!this._super()) {
        // source line 282, bytecode pc 19
        return false;
    }
    // source line 285, bytecode pc 53
    (layer = xs.Scene.UnionWarChangeFormationLayer.create(param));
    if (layer) {
        // source line 287, bytecode pc 78
        layer.setBaseTouchPriority(0);
        // source line 288, bytecode pc 95
        this.addChild(layer);
    }
    // source line 290, bytecode pc 97
    return true;
}
}));
// source line 294, bytecode pc 404
(xs.Scene.UnionWarChangeFormationScene.create = function(param) {
    var scene;
    // source line 295, bytecode pc 23
    (scene = new xs.Scene.UnionWarChangeFormationScene());
    if ((scene && scene.init(param))) {
        // source line 297, bytecode pc 59
        return scene;
    }
    // source line 299, bytecode pc 61
    return null;
});
// source line 306, bytecode pc 498
xs.Scene.Mgr.registerScene("UnionWarChangeFormationScene", {
    "class": xs.Scene.UnionWarChangeFormationScene,
    type: xs.Constant_SceneType_General,
    area: [ "GuildDialog" ]
});
