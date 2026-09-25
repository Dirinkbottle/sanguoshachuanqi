// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/UpgradeCard/CardAwakeInfoView.js:1
// source line 101, bytecode pc 553
(xs.Views.CardAwakeInfoView = cc.NodeRGBA.extend({
    cfg: {
        ccbCfg: [
            { tag: 105, type: "ls", name: "m_up_hp", id: "LS_SXJC" },
            { tag: 106, type: "ls", name: "m_up_atk", id: "LS_SXJC" },
            { tag: 107, type: "ls", name: "m_up_def", id: "LS_SXJC" },
            { tag: 108, type: "ls", name: "m_up_int", id: "LS_SXJC" },
            { tag: 101, type: "ls", name: "m_hp", id: "LS_mainUI4" },
            { tag: 102, type: "ls", name: "m_atk", id: "LS_mainUI4" },
            { tag: 103, type: "ls", name: "m_def", id: "LS_mainUI4" },
            { tag: 104, type: "ls", name: "m_int", id: "LS_mainUI4" },
            { tag: 18, type: "btn", name: "btn_awake_op1", id: "Btn_Preview" }
        ],
        infoView: { leftBtn: { tag: 18, priority: -33 } }
    },
    ctor: function() {
    // source line 24, bytecode pc 12
    this._super();
    // source line 25, bytecode pc 42
    cc.associateWithNative(this, cc.NodeRGBA);
},
    init: function(evolutionInfo, param) {
    var before_hp, before_atk, before_def, before_int, after_hp, after_atk, after_def, after_int;
    if (!this._super()) {
        // source line 30, bytecode pc 19
        return false;
    }
    // source line 33, bytecode pc 29
    (this.evolutionInfo = evolutionInfo);
    // source line 36, bytecode pc 39
    (this.m_param = param);
    // source line 37, bytecode pc 47
    (this.m_ccbNode = null);
    // source line 39, bytecode pc 85
    this.setContentSize(cc.size(450, 390));
    // source line 40, bytecode pc 127
    this.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 42, bytecode pc 178
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.AwakeResultView, this));
    // source line 43, bytecode pc 214
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 45, bytecode pc 262
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.cfg.ccbCfg, this);
    // source line 47, bytecode pc 313
    this.btn_awake_op1.setString(xs.Tools.String.createString("txt_awake_chakan"));
    // source line 50, bytecode pc 350
    this.btn_awake_op1.setOnClickCallBack(function() {
    // source line 49, bytecode pc 12
    this.onClickLeft();
}.bind(this));
    // source line 52, bytecode pc 371
    this.btn_awake_op1.setTouchPriority(-33);
    // source line 55, bytecode pc 405
    xs.Utils.setNodeVisible(this.m_ccbNode, 10, false);
    // source line 57, bytecode pc 439
    xs.Utils.setNodeVisible(this.m_ccbNode, 11, false);
    // source line 59, bytecode pc 473
    xs.Utils.setNodeVisible(this.m_ccbNode, 12, false);
    // source line 61, bytecode pc 507
    xs.Utils.setNodeVisible(this.m_ccbNode, 13, false);
    // source line 63, bytecode pc 541
    xs.Utils.setNodeVisible(this.m_ccbNode, 14, false);
    // source line 65, bytecode pc 561
    this.m_hp.setString(0);
    // source line 66, bytecode pc 581
    this.m_atk.setString(0);
    // source line 67, bytecode pc 601
    this.m_def.setString(0);
    // source line 68, bytecode pc 621
    this.m_int.setString(0);
    // source line 70, bytecode pc 641
    this.m_up_hp.setString(0);
    // source line 71, bytecode pc 661
    this.m_up_atk.setString(0);
    // source line 72, bytecode pc 681
    this.m_up_def.setString(0);
    // source line 73, bytecode pc 701
    this.m_up_int.setString(0);
    if (((this.m_param != null) && (this.m_param.general_attr != null))) {
        // source line 77, bytecode pc 758
        (before_hp = this.m_param.general_attr.before.attr_hp);
        // source line 78, bytecode pc 783
        (before_atk = this.m_param.general_attr.before.attr_attack);
        // source line 79, bytecode pc 808
        (before_def = this.m_param.general_attr.before.attr_defense);
        // source line 80, bytecode pc 833
        (before_int = this.m_param.general_attr.before.attr_wisdom);
        // source line 82, bytecode pc 858
        (after_hp = this.m_param.general_attr.after.attr_hp);
        // source line 83, bytecode pc 883
        (after_atk = this.m_param.general_attr.after.attr_attack);
        // source line 84, bytecode pc 908
        (after_def = this.m_param.general_attr.after.attr_defense);
        // source line 85, bytecode pc 933
        (after_int = this.m_param.general_attr.after.attr_wisdom);
        // source line 88, bytecode pc 955
        this.m_hp.setString(before_hp);
        // source line 89, bytecode pc 977
        this.m_atk.setString(before_atk);
        // source line 90, bytecode pc 999
        this.m_def.setString(before_def);
        // source line 91, bytecode pc 1021
        this.m_int.setString(before_int);
        // source line 93, bytecode pc 1047
        this.m_up_hp.setString((after_hp - before_hp));
        // source line 94, bytecode pc 1073
        this.m_up_atk.setString((after_atk - before_atk));
        // source line 95, bytecode pc 1099
        this.m_up_def.setString((after_def - before_def));
        // source line 96, bytecode pc 1125
        this.m_up_int.setString((after_int - before_int));
    }
    // source line 99, bytecode pc 1127
    return true;
},
    onClickLeft: function(type) {
    // source line 105, bytecode pc 56
    xs.Views.Mgr.showDialogByName("AwakeInfoDialog", { evolutionInfo: this.evolutionInfo, isPreview: false });
}
}));
// source line 109, bytecode pc 579
(xs.Views.CardAwakeInfoView.create = function(evolutionInfo, param) {
    var node;
    // source line 110, bytecode pc 23
    (node = new xs.Views.CardAwakeInfoView());
    if ((node && node.init(evolutionInfo, param))) {
        // source line 112, bytecode pc 63
        return node;
    }
    // source line 114, bytecode pc 65
    return null;
});
