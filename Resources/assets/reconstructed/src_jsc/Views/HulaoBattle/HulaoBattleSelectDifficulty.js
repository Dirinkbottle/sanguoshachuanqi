// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/HulaoBattle/HulaoBattleSelectDifficulty.js:1
// source line 133, bytecode pc 553
(xs.Views.HulaoBattleSelectDifficulty = xs.Views.HungerLayer.extend({
    name: "xs.Views.HulaoBattleSelectDifficulty",
    ccbCfg: [
        { tag: 1, type: "ls", name: "m_title", id: "LS_popUI1", stringId: "HulaoBattle_selectDiff" },
        { tag: 2, type: "ls", name: "m_easy_label", id: "LS_mainUI3", stringId: "HulaoBattle_label_easy" },
        {
            tag: 3,
            type: "ls",
            name: "m_normal_label",
            id: "LS_mainUI3",
            stringId: "HulaoBattle_label_normal"
        },
        { tag: 4, type: "ls", name: "m_hard_label", id: "LS_mainUI3", stringId: "HulaoBattle_label_hard" },
        { tag: 99, type: "btn", name: "m_CloseBtn", id: "Btn_Close" },
        { tag: 11, type: "btn", name: "m_Btn_1", id: "Btn_HulaoBattle_Easy" },
        { tag: 12, type: "btn", name: "m_Btn_2", id: "Btn_HulaoBattle_Easy" },
        { tag: 13, type: "btn", name: "m_Btn_3", id: "Btn_HulaoBattle_Easy" }
    ],
    ctor: function() {
    // source line 22, bytecode pc 12
    this._super();
    // source line 23, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(data) {
    var visibleSize;
    if (!this._super()) {
        // source line 28, bytecode pc 19
        return false;
    }
    // source line 30, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 31, bytecode pc 35
    (this.m_CloseBtn = null);
    // source line 32, bytecode pc 43
    (this.m_Btn_1 = null);
    // source line 33, bytecode pc 51
    (this.m_Btn_2 = null);
    // source line 34, bytecode pc 59
    (this.m_Btn_3 = null);
    // source line 36, bytecode pc 84
    (visibleSize = xs.director.getVisibleSize());
    // source line 38, bytecode pc 133
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.HulaoBattleSelectDifficulty));
    // source line 40, bytecode pc 176
    this.m_ccbNode.setContentSize(cc.size(500, 460));
    // source line 41, bytecode pc 223
    this.m_ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 43, bytecode pc 266
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 46, bytecode pc 325
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "c", sc: true });
    // source line 49, bytecode pc 349
    this.m_CloseBtn.setOnClickCallBack(function() {
    // source line 50, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 52, bytecode pc 400
    this.m_Btn_1.setString(xs.Tools.String.createString("HulaoBattle_btn_easy"));
    // source line 56, bytecode pc 437
    this.m_Btn_1.setOnClickCallBack(function() {
    // source line 54, bytecode pc 39
    this.setDifficultyRequest({ stage: data, mode: 1 });
    // source line 55, bytecode pc 62
    xs.log_zhz("守1路");
}.bind(this));
    // source line 58, bytecode pc 488
    this.m_Btn_2.setString(xs.Tools.String.createString("HulaoBattle_btn_normal"));
    // source line 62, bytecode pc 525
    this.m_Btn_2.setOnClickCallBack(function() {
    // source line 60, bytecode pc 40
    this.setDifficultyRequest({ stage: data, mode: 2 });
    // source line 61, bytecode pc 63
    xs.log_zhz("守2路");
}.bind(this));
    // source line 64, bytecode pc 576
    this.m_Btn_3.setString(xs.Tools.String.createString("HulaoBattle_btn_hard"));
    // source line 68, bytecode pc 613
    this.m_Btn_3.setOnClickCallBack(function() {
    // source line 66, bytecode pc 40
    this.setDifficultyRequest({ stage: data, mode: 3 });
    // source line 67, bytecode pc 63
    xs.log_zhz("守3路");
}.bind(this));
    // source line 72, bytecode pc 615
    return true;
},
    setDifficultyRequest: function(_data) {
    // source line 75, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 101, bytecode pc 175
    xs.Tools.Net.requestHuLaoBattleLineUp({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    stage: _data.stage,
    mode: _data.mode
}, function(data) {
    var param;
    if (data.return_info) {
        if (xs.Utils.isEmpty(data.return_info.left_info)) {
            // source line 86, bytecode pc 83
            (data.return_info.left_info.general_list = this.getTeamGeneralsData());
            // source line 87, bytecode pc 103
            (data.return_info.left_info.total_fortune = 0);
            // source line 88, bytecode pc 124
            (data.return_info.left_info.consume_fortune = 3);
        }
        // source line 93, bytecode pc 185
        (param = { data: data.return_info, stage: _data.stage, mode: _data.mode });
        // source line 95, bytecode pc 222
        xs.Views.Mgr.showDialogByName("GarrisonLayoutDialog", param);
    }
}, function(data) {
}, this);
},
    getTeamGeneralsData: function() {
    var general_list, teamGeneralsData, i, data;
    // source line 105, bytecode pc 8
    (general_list = []);
    // source line 106, bytecode pc 59
    (teamGeneralsData = xs.Profile.GameData.Mgr.getInstance().Team.getGeneralsInTeam());
    // source line 108, bytecode pc 64
    (i = 0);
    while ((i < teamGeneralsData.length)) {
        // source line 117, bytecode pc 240
        (data = {
    pk_id: teamGeneralsData[i].getPkId(),
    general_id: teamGeneralsData[i].getId(),
    general_level: teamGeneralsData[i].getLevel(),
    fighting: xs.Profile.GameData.Mgr.getInstance().Generals.getAttr(teamGeneralsData[i], xs.Constant_AttrType_FightPoint),
    fortune: 0,
    hp: 100,
    current_hp: 100
});
        // source line 120, bytecode pc 259
        general_list.push(data);
        // source line 108, bytecode pc 273
        (i = (+i + 1));
    }
    // source line 124, bytecode pc 296
    return general_list;
},
    onEnter: function() {
    // source line 128, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 131, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 134, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 135, bytecode pc 31
    this.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 136, bytecode pc 58
    this.m_CloseBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 137, bytecode pc 85
    this.m_Btn_1.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 138, bytecode pc 112
    this.m_Btn_2.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 139, bytecode pc 139
    this.m_Btn_3.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 144, bytecode pc 579
(xs.Views.HulaoBattleSelectDifficulty.create = function(data) {
    var view;
    // source line 145, bytecode pc 23
    (view = new xs.Views.HulaoBattleSelectDifficulty());
    if ((view && view.init(data))) {
        // source line 147, bytecode pc 59
        return view;
    }
    // source line 149, bytecode pc 84
    xs.assert(false, "xs.Views.HulaoBattleSelectDifficulty.create error!");
    // source line 150, bytecode pc 86
    return null;
});
// source line 154, bytecode pc 654
xs.Views.Mgr.registerDialog("HulaoBattleSelectDifficulty", { "class": xs.Views.HulaoBattleSelectDifficulty, styleType: xs.Constant_DlgStyleType_Large });
