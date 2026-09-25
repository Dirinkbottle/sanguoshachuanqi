// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/UnionWarPlayerHeadFightView.js:1
// source line 204, bytecode pc 360
(xs.Views.UnionWarPlayerHeadFightView = cc.Node.extend({
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(params) {
    var viewSize;
    if (!this._super()) {
        // source line 14, bytecode pc 19
        return false;
    }
    // source line 16, bytecode pc 27
    (this.m_listener = null);
    // source line 17, bytecode pc 42
    (this.teamNo = params.teamNo);
    // source line 18, bytecode pc 57
    (this.m_playerData = params.playerData);
    // source line 19, bytecode pc 72
    (this.processState = params.processState);
    // source line 21, bytecode pc 80
    (this.killNum = 0);
    // source line 25, bytecode pc 88
    (this.ccbNode = null);
    if ((this.teamNo == 1)) {
        // source line 27, bytecode pc 135
        (this.ccbNode = xs.ccb_reader.load("ccb3/unionWar_fightHead_L.ccbi"));
    } else {
        // source line 30, bytecode pc 174
        (this.ccbNode = xs.ccb_reader.load("ccb3/unionWar_fightHead_R.ccbi"));
    }
    // source line 32, bytecode pc 201
    (viewSize = cc.size(305, 107));
    // source line 33, bytecode pc 218
    this.setContentSize(viewSize);
    // source line 34, bytecode pc 240
    this.ccbNode.setContentSize(viewSize);
    // source line 35, bytecode pc 260
    this.addChild(this.ccbNode);
    // source line 38, bytecode pc 268
    (this.m_playerHead = null);
    // source line 39, bytecode pc 276
    (this.m_playerHeadArm = null);
    // source line 40, bytecode pc 284
    (this.m_powerIcon = null);
    // source line 41, bytecode pc 292
    (this.m_powerLabel = null);
    // source line 42, bytecode pc 300
    (this.m_nameLabel = null);
    // source line 43, bytecode pc 308
    (this.m_killLabel = null);
    // source line 45, bytecode pc 351
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    if ((this.processState == xs.Constant_UnionWar_FightViewProcessState_ShowResult)) {
        // source line 49, bytecode pc 412
        (this.btnSpectator = xs.Views.Btn.create("Btn_Spectators"));
        // source line 50, bytecode pc 450
        this.btnSpectator.setOnClickCallBack(this.onBtnSpectatorClicked.bind(this));
        // source line 51, bytecode pc 470
        this.btnSpectator.setVisible(false);
        // source line 52, bytecode pc 493
        this.addChild(this.btnSpectator, 99);
    }
    // source line 55, bytecode pc 495
    return true;
},
    setListener: function(listener) {
    // source line 59, bytecode pc 9
    (this.m_listener = listener);
},
    setIdx: function(idx) {
    // source line 63, bytecode pc 9
    (this.idx = idx);
},
    setKillNum: function(killNum) {
    // source line 68, bytecode pc 9
    (this.killNum = killNum);
    // source line 69, bytecode pc 34
    this.m_icon.reloadData_killNum(this.killNum);
},
    showDead: function(isShow) {
    // source line 74, bytecode pc 21
    this.m_icon.reloadData_deadMask(isShow);
},
    showBtnSpectator: function() {
    if ((this.processState == xs.Constant_UnionWar_FightViewProcessState_ShowResult)) {
        // source line 83, bytecode pc 147
        this.btnSpectator.setPosition(cc.p((this.m_playerHeadArm.getPositionX() + (this.m_icon.getBodySize().width * 0.3)), (this.m_playerHeadArm.getPositionY() + (this.m_icon.getBodySize().height / 2))));
        // source line 85, bytecode pc 167
        this.btnSpectator.setVisible(true);
    }
},
    refreshView: function() {
    // source line 90, bytecode pc 41
    this.m_powerLabel.setString(("" + this.m_playerData.getFightPoint()));
    // source line 91, bytecode pc 77
    this.m_nameLabel.setString(this.m_playerData.getPlayerName());
    // source line 93, bytecode pc 117
    (this.m_icon = this.m_playerData.createHeadIcon((this.getTeamNo() == 2)));
    // source line 95, bytecode pc 142
    this.m_icon.reloadData_killNum(this.killNum);
    // source line 97, bytecode pc 186
    (this.m_playerHeadArm = xs.Views.Armature.AutoAudioArmature.create("UnionWar_HeadFight"));
    // source line 98, bytecode pc 217
    this.m_playerHeadArm.replaceSkin("icon", this.m_icon);
    // source line 99, bytecode pc 264
    this.m_playerHeadArm.setScaleX(((this.getTeamNo() == 2) ? -1 : 1));
    // source line 101, bytecode pc 307
    xs.Utils.replaceNodeWithOldNode(this.ccbNode, this.m_playerHead, this.m_playerHeadArm);
    // source line 103, bytecode pc 331
    this.m_playerHeadArm.playAniById("idle");
},
    showHeadViewResult: function() {
    if ((this.m_playerData.getKillNum() > 0)) {
        // source line 110, bytecode pc 54
        this.setKillNum(this.m_playerData.getKillNum());
    }
    if (this.m_playerData.getIsFighted()) {
        // source line 115, bytecode pc 89
        this.showBtnSpectator();
    }
},
    startAtk: function(result) {
    var _endAction;
    // source line 128, bytecode pc 9
    (this.result = result);
    if (result.isWin) {
        // source line 131, bytecode pc 53
        (_endAction = this.m_playerHeadArm.createPlayAction("back"));
    } else {
        // source line 134, bytecode pc 85
        (_endAction = this.m_playerHeadArm.createPlayAction("fly"));
    }
    // source line 154, bytecode pc 245
    this.m_playerHeadArm.runAction(xs.Utils.Action.combineSequence([
    this.m_playerHeadArm.createPlayAction("atk"),
    cc.CallFunc.create(function() {
    // source line 143, bytecode pc 22
    xs.log_xjf("撞到");
}),
    _endAction,
    cc.CallFunc.create(function() {
    // source line 152, bytecode pc 22
    xs.log_xjf("归位");
    // source line 153, bytecode pc 35
    this.atkFinish();
}.bind(this))
]));
},
    atkFinish: function() {
    if (this.result.isWin) {
        // source line 164, bytecode pc 42
        this.killNum++;
        // source line 165, bytecode pc 67
        this.m_icon.reloadData_killNum(this.killNum);
    }
    if ((this.m_listener && this.m_listener.atkFinish)) {
        // source line 169, bytecode pc 115
        this.m_listener.atkFinish(this);
    }
},
    getTeamNo: function() {
    // source line 174, bytecode pc 6
    return this.teamNo;
},
    getResult: function() {
    // source line 178, bytecode pc 6
    return this.result;
},
    getPlayerId: function() {
    // source line 182, bytecode pc 17
    return this.m_playerData.getPlayerId();
},
    onBtnSpectatorClicked: function() {
    if ((this.m_listener && this.m_listener.onBtnSpectatorClicked)) {
        // source line 188, bytecode pc 52
        this.m_listener.onBtnSpectatorClicked(this.m_playerData);
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 193, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    if ((this.processState == xs.Constant_UnionWar_FightViewProcessState_ShowResult)) {
        // source line 195, bytecode pc 56
        this.btnSpectator.setTouchPriority(this.m_baseTouchPriority);
    }
},
    ccbCfg: [
        { tag: 1, name: "m_playerHead" },
        { tag: 3, type: "ls", name: "m_powerLabel", id: "LS_money" },
        { tag: 4, type: "ls", name: "m_nameLabel", id: "LS_Lv" },
        { tag: 5, name: "m_powerIcon" }
    ]
}));
// source line 208, bytecode pc 386
(xs.Views.UnionWarPlayerHeadFightView.create = function(params) {
    var btn;
    // source line 209, bytecode pc 23
    (btn = new xs.Views.UnionWarPlayerHeadFightView());
    if ((btn && btn.init(params))) {
        // source line 211, bytecode pc 59
        return btn;
    }
    // source line 213, bytecode pc 82
    xs.warn("xs.Views.UnionWarPlayerHeadFightView.create error!");
    // source line 214, bytecode pc 84
    return null;
});
