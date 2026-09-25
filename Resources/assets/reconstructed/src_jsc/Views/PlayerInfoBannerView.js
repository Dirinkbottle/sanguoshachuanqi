// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/PlayerInfoBannerView.js:1
// source line 62, bytecode pc 113
(xs.Views.PlayerInfoBannerView = cc.Node.extend({
    name: "PlayerInfoBannerView",
    ctor: function() {
    // source line 14, bytecode pc 12
    this._super();
    // source line 15, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    if (!this._super()) {
        // source line 19, bytecode pc 19
        return false;
    }
    // source line 22, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 24, bytecode pc 35
    (this.m_levelLab = null);
    // source line 25, bytecode pc 43
    (this.m_vipLab = null);
    // source line 26, bytecode pc 51
    (this.m_tongQianLab = null);
    // source line 27, bytecode pc 59
    (this.m_yuanBaoLab = null);
    // source line 28, bytecode pc 67
    (this.m_tiLiLab = null);
    // source line 29, bytecode pc 75
    (this.m_qiLiLab = null);
    // source line 30, bytecode pc 83
    (this.m_fightLab = null);
    // source line 31, bytecode pc 91
    (this.m_nameLab = null);
    // source line 33, bytecode pc 99
    (this.m_expProgressTimer = null);
    // source line 35, bytecode pc 101
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 39, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    onEnter: function() {
    // source line 43, bytecode pc 12
    this._super();
    // source line 44, bytecode pc 25
    this.updateBanner();
    // source line 47, bytecode pc 72
    xs.Utils.Notify.addObserver(this, this.updateBanner, xs.Constant_Notify_ModelChange_UserInfo);
    // source line 48, bytecode pc 119
    xs.Utils.Notify.addObserver(this, this.updateBanner, xs.Constant_Notify_ModelChange_TeamGeneral);
},
    onExit: function() {
    // source line 54, bytecode pc 12
    this._super();
    // source line 57, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_UserInfo);
    // source line 58, bytecode pc 92
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_TeamGeneral);
},
    updateBanner: function() {
    var player;
    // source line 66, bytecode pc 50
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    if (this.m_levelLab) {
        // source line 71, bytecode pc 100
        this.m_levelLab.setString((player.getPlayerLevel() + ""));
    }
    if (this.m_vipLab) {
        // source line 74, bytecode pc 144
        this.m_vipLab.setString(player.getPlayerVipLevel());
    }
    if (this.m_nameLab) {
        // source line 77, bytecode pc 188
        this.m_nameLab.setString(player.getPlayerName());
    }
    if (this.m_fightLab) {
        // source line 80, bytecode pc 265
        this.m_fightLab.setString(xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting());
    }
    if (this.m_yuanBaoLab) {
        // source line 86, bytecode pc 315
        this.m_yuanBaoLab.setString(("" + player.getPlayerYuanBao()));
    }
    if (this.m_tongQianLab) {
        // source line 89, bytecode pc 365
        this.m_tongQianLab.setString((player.getPlayerTongQianToString() + ""));
    }
    if (this.m_tiLiLab) {
        // source line 92, bytecode pc 430
        this.m_tiLiLab.setString(((player.getPlayerCurTiLi() + "/") + player.getPlayerMaxTiLi()));
    }
    if (this.m_qiLiLab) {
        // source line 95, bytecode pc 495
        this.m_qiLiLab.setString(((player.getPlayerCurQiLi() + "/") + player.getPlayerMaxQiLi()));
    }
    if (this.m_expProgressTimer) {
        // source line 98, bytecode pc 539
        this.m_expProgressTimer.setPercentage(player.getPlayerExpPercentage());
    }
}
}));
// source line 186, bytecode pc 242
(xs.Views.PlayerInfoBannerFullView = xs.Views.PlayerInfoBannerView.extend({
    ctor: function() {
    // source line 113, bytecode pc 12
    this._super();
    // source line 114, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    var node, expProgressBg;
    if (!this._super()) {
        // source line 118, bytecode pc 19
        return false;
    }
    // source line 121, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 123, bytecode pc 35
    (this.m_levelLab = null);
    // source line 124, bytecode pc 43
    (this.m_tongQianLab = null);
    // source line 125, bytecode pc 51
    (this.m_yuanBaoLab = null);
    // source line 126, bytecode pc 59
    (this.m_tiLiLab = null);
    // source line 127, bytecode pc 67
    (this.m_qiLiLab = null);
    // source line 128, bytecode pc 75
    (this.m_nameLab = null);
    // source line 129, bytecode pc 83
    (this.m_vipLab = null);
    // source line 130, bytecode pc 91
    (this.m_fightLab = null);
    // source line 132, bytecode pc 99
    (this.m_btn = null);
    // source line 134, bytecode pc 138
    this.setContentSize(xs.Views.PlayerInfoBannerFullView.cfg.size);
    // source line 137, bytecode pc 191
    (node = xs.ccb_reader.load(xs.Views.PlayerInfoBannerFullView.cfg.ccbi, this));
    // source line 138, bytecode pc 224
    xs.Utils.Node.attachNodes(this, node);
    // source line 141, bytecode pc 283
    xs.Utils.UI.replaceCcbByCfg(node, xs.Views.PlayerInfoBannerFullView.cfg.ccbCfg, this);
    // source line 143, bytecode pc 335
    (this.progressBarSprite = node.getChildByTag(xs.Views.PlayerInfoBannerFullView.cfg.m_expProgressTimer.tag));
    // source line 144, bytecode pc 353
    this.progressBarSprite.removeFromParent();
    // source line 145, bytecode pc 377
    (this.progressBarSpritePos = this.progressBarSprite.getPosition());
    // source line 148, bytecode pc 412
    (this.m_expProgressTimer = cc.ProgressTimer.create(this.progressBarSprite));
    // source line 149, bytecode pc 437
    this.m_expProgressTimer.setPosition(this.progressBarSpritePos);
    // source line 150, bytecode pc 466
    this.m_expProgressTimer.setType(cc.PROGRESS_TIMER_TYPE_BAR);
    // source line 151, bytecode pc 505
    this.m_expProgressTimer.setMidpoint(cc.p(0, 0));
    // source line 152, bytecode pc 544
    this.m_expProgressTimer.setBarChangeRate(cc.p(1, 0));
    // source line 153, bytecode pc 593
    this.m_expProgressTimer.setZOrder(xs.Views.PlayerInfoBannerFullView.cfg.m_expProgressTimer.zOrder);
    // source line 154, bytecode pc 631
    xs.Utils.Node.attachNodes(node, this.m_expProgressTimer);
    // source line 156, bytecode pc 680
    (expProgressBg = node.getChildByTag(xs.Views.PlayerInfoBannerFullView.cfg.expProgressBg.tag));
    // source line 157, bytecode pc 726
    expProgressBg.setZOrder(xs.Views.PlayerInfoBannerFullView.cfg.expProgressBg.zOrder);
    // source line 159, bytecode pc 759
    (this.m_btn = xs.Views.EventLayer.create());
    // source line 161, bytecode pc 803
    this.m_btn.setContentSize(xs.Views.PlayerInfoBannerFullView.cfg.size);
    // source line 162, bytecode pc 839
    xs.Utils.Node.attachNodes(this, this.m_btn);
    // source line 164, bytecode pc 866
    this.m_btn.setTouchCallback(this.showPlayerInfo, this);
    // source line 166, bytecode pc 868
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 169, bytecode pc 16
    this._super(priority);
    // source line 171, bytecode pc 72
    this.m_btn.setTouchPriority((this.m_baseTouchPriority + xs.Views.PlayerInfoBannerFullView.cfg.m_btn.priority));
},
    showPlayerInfo: function() {
    // source line 174, bytecode pc 32
    xs.Views.Mgr.showDialogByName("PlayerInfoDialog");
},
    vipCallback: function() {
    // source line 177, bytecode pc 22
    xs.log("vipCallback");
    // source line 178, bytecode pc 104
    xs.Views.Mgr.showDialogByName("ChargePrivilegeDialog", xs.gd_mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
},
    chongZhiCallback: function() {
    // source line 181, bytecode pc 22
    xs.log("chongZhiCallback");
},
    buyTiLiCallback: function() {
    // source line 184, bytecode pc 22
    xs.log("buyTiLiCallback");
},
    buyQiLiCallback: function() {
    // source line 187, bytecode pc 22
    xs.log("buyQiLiCallback");
}
}));
// source line 191, bytecode pc 268
(xs.Views.PlayerInfoBannerFullView.create = function() {
    var node;
    // source line 192, bytecode pc 23
    (node = new xs.Views.PlayerInfoBannerFullView());
    if ((node && node.init())) {
        // source line 194, bytecode pc 55
        return node;
    }
    // source line 196, bytecode pc 57
    return null;
});
// source line 225, bytecode pc 811
(xs.Views.PlayerInfoBannerFullView.cfg = {
    ccbi: "ccb3/MainMenuHead.ccbi",
    size: cc.size(560, 78),
    ccbCfg: [
        { name: "m_levelLab", tag: 10, type: "ls", id: "LS_mainLv" },
        { name: "m_tongQianLab", tag: 11, type: "ls", id: "LS_mainUI4" },
        { name: "m_yuanBaoLab", tag: 12, type: "ls", id: "LS_money" },
        { name: "m_tiLiLab", tag: 13, type: "ls", id: "LS_mainUI4" },
        { name: "m_qiLiLab", tag: 14, type: "ls", id: "LS_mainUI4" },
        { name: "m_nameLab", tag: 15, type: "ls", id: "LS_mainUI4" },
        { name: "m_vipLab", tag: 16, type: "ls", id: "LS_Lv" },
        { name: "m_fightLab", tag: 17, type: "ls", id: "LS_mainUI4" }
    ],
    m_btn: { priority: -1 },
    expProgressCover: { zOrder: 0, tag: 23 },
    m_expProgressTimer: { zOrder: -1, tag: 25 },
    expProgressBg: { zOrder: -2, tag: 24 }
});
// source line 281, bytecode pc 890
(xs.Views.PlayerInfoBannerNormalView = xs.Views.PlayerInfoBannerView.extend({
    ctor: function() {
    // source line 234, bytecode pc 12
    this._super();
    // source line 235, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    var node, expProgressBg;
    if (!this._super()) {
        // source line 239, bytecode pc 19
        return false;
    }
    // source line 242, bytecode pc 27
    (this.m_levelLab = null);
    // source line 243, bytecode pc 35
    (this.m_vipLab = null);
    // source line 244, bytecode pc 43
    (this.m_tongQianLab = null);
    // source line 245, bytecode pc 51
    (this.m_yuanBaoLab = null);
    // source line 246, bytecode pc 59
    (this.m_tiLiLab = null);
    // source line 247, bytecode pc 67
    (this.m_qiLiLab = null);
    // source line 248, bytecode pc 75
    (this.m_baseTouchPriority = 0);
    // source line 251, bytecode pc 128
    (node = xs.ccb_reader.load(xs.Views.PlayerInfoBannerNormalView.cfg.ccbi, this));
    // source line 252, bytecode pc 164
    node.setAnchorPoint(cc.p(0, 1));
    // source line 253, bytecode pc 197
    xs.Utils.Node.attachNodes(this, node);
    // source line 256, bytecode pc 249
    (this.m_levelLab = node.getChildByTag(xs.Views.PlayerInfoBannerNormalView.cfg.m_levelLab.tag));
    // source line 257, bytecode pc 301
    (this.m_vipLab = node.getChildByTag(xs.Views.PlayerInfoBannerNormalView.cfg.m_vipLab.tag));
    // source line 258, bytecode pc 353
    (this.m_tongQianLab = node.getChildByTag(xs.Views.PlayerInfoBannerNormalView.cfg.m_tongQianLab.tag));
    // source line 259, bytecode pc 405
    (this.m_yuanBaoLab = node.getChildByTag(xs.Views.PlayerInfoBannerNormalView.cfg.m_yuanBaoLab.tag));
    // source line 260, bytecode pc 457
    (this.m_tiLiLab = node.getChildByTag(xs.Views.PlayerInfoBannerNormalView.cfg.m_tiLiLab.tag));
    // source line 261, bytecode pc 509
    (this.m_qiLiLab = node.getChildByTag(xs.Views.PlayerInfoBannerNormalView.cfg.m_qiLiLab.tag));
    // source line 263, bytecode pc 561
    (this.progressBarSprite = node.getChildByTag(xs.Views.PlayerInfoBannerNormalView.cfg.m_expProgressTimer.tag));
    // source line 264, bytecode pc 579
    this.progressBarSprite.removeFromParent();
    // source line 265, bytecode pc 603
    (this.progressBarSpritePos = this.progressBarSprite.getPosition());
    // source line 267, bytecode pc 638
    (this.m_expProgressTimer = cc.ProgressTimer.create(this.progressBarSprite));
    // source line 268, bytecode pc 663
    this.m_expProgressTimer.setPosition(this.progressBarSpritePos);
    // source line 269, bytecode pc 692
    this.m_expProgressTimer.setType(cc.PROGRESS_TIMER_TYPE_BAR);
    // source line 270, bytecode pc 731
    this.m_expProgressTimer.setMidpoint(cc.p(0, 0));
    // source line 271, bytecode pc 770
    this.m_expProgressTimer.setBarChangeRate(cc.p(1, 0));
    // source line 272, bytecode pc 819
    this.m_expProgressTimer.setZOrder(xs.Views.PlayerInfoBannerNormalView.cfg.m_expProgressTimer.zOrder);
    // source line 273, bytecode pc 857
    xs.Utils.Node.attachNodes(node, this.m_expProgressTimer);
    // source line 275, bytecode pc 906
    (expProgressBg = node.getChildByTag(xs.Views.PlayerInfoBannerNormalView.cfg.expProgressBg.tag));
    // source line 276, bytecode pc 952
    expProgressBg.setZOrder(xs.Views.PlayerInfoBannerNormalView.cfg.expProgressBg.zOrder);
    // source line 279, bytecode pc 954
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 282, bytecode pc 9
    (this.m_baseTouchPriority = priority);
}
}));
// source line 286, bytecode pc 916
(xs.Views.PlayerInfoBannerNormalView.create = function() {
    var node;
    // source line 287, bytecode pc 23
    (node = new xs.Views.PlayerInfoBannerNormalView());
    if ((node && node.init())) {
        // source line 289, bytecode pc 55
        return node;
    }
    // source line 291, bytecode pc 57
    return null;
});
// source line 324, bytecode pc 1135
(xs.Views.PlayerInfoBannerNormalView.cfg = {
    ccbi: "ccb3/YangchengErjiMenuHead.ccbi",
    m_levelLab: { tag: 10 },
    m_vipLab: { tag: 15 },
    m_tongQianLab: { tag: 11 },
    m_yuanBaoLab: { tag: 12 },
    m_tiLiLab: { tag: 13 },
    m_qiLiLab: { tag: 14 },
    expProgressCover: { zOrder: 0, tag: 23 },
    m_expProgressTimer: { zOrder: -1, tag: 25 },
    expProgressBg: { zOrder: -2, tag: 24 }
});
// source line 370, bytecode pc 1412
(xs.Views.PlayerInfoBannerSimpleView = xs.Views.PlayerInfoBannerView.extend({
    ccbCfg: [
        { tag: 10, type: "ls", name: "m_tongQianLab", id: "LS_mainUI4" },
        { tag: 11, type: "ls", name: "m_yuanBaoLab", id: "LS_money" },
        { tag: 12, type: "ls", name: "m_tiLiLab", id: "LS_mainUI4" },
        { tag: 13, type: "ls", name: "m_qiLiLab", id: "LS_mainUI4" }
    ],
    ctor: function() {
    // source line 340, bytecode pc 12
    this._super();
    // source line 341, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    var node;
    if (!this._super()) {
        // source line 345, bytecode pc 19
        return false;
    }
    // source line 348, bytecode pc 27
    (this.m_tongQianLab = null);
    // source line 349, bytecode pc 35
    (this.m_yuanBaoLab = null);
    // source line 350, bytecode pc 43
    (this.m_tiLiLab = null);
    // source line 351, bytecode pc 51
    (this.m_qiLiLab = null);
    // source line 352, bytecode pc 59
    (this.m_baseTouchPriority = 0);
    // source line 355, bytecode pc 112
    (node = xs.ccb_reader.load(xs.Views.PlayerInfoBannerSimpleView.cfg.ccbi, this));
    // source line 356, bytecode pc 148
    node.setAnchorPoint(cc.p(0, 1));
    // source line 357, bytecode pc 181
    xs.Utils.Node.attachNodes(this, node);
    // source line 360, bytecode pc 221
    xs.Utils.UI.replaceCcbByCfg(node, this.ccbCfg, this);
    // source line 368, bytecode pc 223
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 371, bytecode pc 9
    (this.m_baseTouchPriority = priority);
}
}));
// source line 375, bytecode pc 1438
(xs.Views.PlayerInfoBannerSimpleView.create = function() {
    var node;
    // source line 376, bytecode pc 23
    (node = new xs.Views.PlayerInfoBannerSimpleView());
    if ((node && node.init())) {
        // source line 378, bytecode pc 55
        return node;
    }
    // source line 380, bytecode pc 57
    return null;
});
// source line 394, bytecode pc 1547
(xs.Views.PlayerInfoBannerSimpleView.cfg = {
    ccbi: "ccb3/YangchengMenuHead.ccbi",
    m_tongQianLab: { tag: 10 },
    m_yuanBaoLab: { tag: 11 },
    m_tiLiLab: { tag: 12 },
    m_qiLiLab: { tag: 13 }
});
