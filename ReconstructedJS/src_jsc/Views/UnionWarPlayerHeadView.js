// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/UnionWarPlayerHeadView.js:1
// source line 106, bytecode pc 280
(xs.Views.UnionWarPlayerHeadView = cc.Node.extend({
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    var viewSize;
    if (!this._super()) {
        // source line 14, bytecode pc 19
        return false;
    }
    // source line 16, bytecode pc 27
    (this.m_listener = null);
    // source line 17, bytecode pc 35
    (this.m_playerData = null);
    // source line 18, bytecode pc 43
    (this.m_idx = null);
    // source line 19, bytecode pc 51
    (this.m_cache_playerId = null);
    // source line 21, bytecode pc 59
    (this.m_headIcon = null);
    // source line 22, bytecode pc 67
    (this.m_tmpBtn = null);
    // source line 23, bytecode pc 75
    (this.m_innerBtn = null);
    // source line 24, bytecode pc 83
    (this.m_fightIcon = null);
    // source line 25, bytecode pc 91
    (this.m_powerLabel = null);
    // source line 26, bytecode pc 99
    (this.m_nameLabel = null);
    // source line 28, bytecode pc 133
    (this.ccbNode = xs.ccb_reader.load("ccb3/unionWar_doubtfulHead.ccbi"));
    // source line 29, bytecode pc 161
    (viewSize = cc.size(207, 207));
    // source line 30, bytecode pc 178
    this.setContentSize(viewSize);
    // source line 31, bytecode pc 200
    this.ccbNode.setContentSize(viewSize);
    // source line 32, bytecode pc 220
    this.addChild(this.ccbNode);
    // source line 34, bytecode pc 263
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 36, bytecode pc 302
    (this.m_innerBtn = xs.Views.Btn.createByStyleId("BS_PlayerHeadAddBtn"));
    // source line 37, bytecode pc 322
    this.m_innerBtn.setZoomOnTouchDown(false);
    // source line 38, bytecode pc 358
    this.m_innerBtn.setPosition(this.m_tmpBtn.getPosition());
    // source line 39, bytecode pc 381
    this.addChild(this.m_innerBtn, -2);
    // source line 40, bytecode pc 419
    this.m_innerBtn.setOnClickCallBack(this.onInnerBtnClicked.bind(this));
    // source line 42, bytecode pc 437
    this.m_tmpBtn.removeFromParent();
    // source line 44, bytecode pc 439
    return true;
},
    setListener: function(listener) {
    // source line 48, bytecode pc 9
    (this.m_listener = listener);
},
    setPlayerData: function(playerData) {
    // source line 52, bytecode pc 9
    (this.m_playerData = playerData);
    if ((playerData == null)) {
        // source line 54, bytecode pc 27
        (this.m_cache_playerId = null);
    }
},
    setIdx: function(idx) {
    // source line 59, bytecode pc 9
    (this.m_idx = idx);
},
    refreshView: function() {
    if ((this.m_playerData && (this.m_cache_playerId == this.m_playerData.getPlayerId()))) {
        // source line 65, bytecode pc 105
        xs.log_xjf(((("内容无改变,不需刷新. playerId = " + this.m_playerData.getPlayerId()) + ", playerName = ") + this.m_playerData.getPlayerName()));
        // source line 66, bytecode pc 107
        return void 0;
    }
    if (this.m_playerData) {
        // source line 70, bytecode pc 152
        xs.Utils.Node.safeRemoveChild(this.m_headIcon);
        // source line 71, bytecode pc 176
        (this.m_headIcon = this.m_playerData.createHeadIcon());
        // source line 72, bytecode pc 212
        this.m_headIcon.setPosition(this.m_innerBtn.getPosition());
        // source line 73, bytecode pc 240
        this.ccbNode.addChild(this.m_headIcon, -1);
        // source line 75, bytecode pc 282
        this.m_powerLabel.setString(("" + this.m_playerData.getFightPoint()));
        // source line 76, bytecode pc 324
        this.m_nameLabel.setString(("" + this.m_playerData.getPlayerName()));
        // source line 77, bytecode pc 344
        this.ccbNode.setVisible(true);
        // source line 80, bytecode pc 368
        (this.m_cache_playerId = this.m_playerData.getPlayerId());
    } else {
        // source line 83, bytecode pc 393
        this.ccbNode.setVisible(false);
    }
},
    onInnerBtnClicked: function() {
    if ((this.m_listener && this.m_listener.onInnerBtnClicked)) {
        // source line 90, bytecode pc 59
        this.m_listener.onInnerBtnClicked(this.m_playerData, this.m_idx);
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 96, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 97, bytecode pc 36
    this.m_innerBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    ccbCfg: [
        { tag: 1, name: "m_tmpBtn" },
        { tag: 2, name: "m_fightIcon" },
        { tag: 3, type: "ls", name: "m_powerLabel", id: "LS_money" },
        { tag: 4, type: "ls", name: "m_nameLabel", id: "LS_Lv" }
    ]
}));
// source line 110, bytecode pc 306
(xs.Views.UnionWarPlayerHeadView.create = function() {
    var btn;
    // source line 111, bytecode pc 23
    (btn = new xs.Views.UnionWarPlayerHeadView());
    if ((btn && btn.init())) {
        // source line 113, bytecode pc 55
        return btn;
    }
    // source line 115, bytecode pc 78
    xs.warn("xs.Views.UnionWarPlayerHeadView.create error!");
    // source line 116, bytecode pc 80
    return null;
});
