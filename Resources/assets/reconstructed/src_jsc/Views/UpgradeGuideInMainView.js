// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/UpgradeGuideInMainView.js:1
// source line 146, bytecode pc 270
(xs.Views.UpgradeGuideInMainView = cc.Node.extend({
    ccbCfg: [
        { tag: 1, name: "m_icon" },
        { tag: 2, name: "m_title", type: "ls", id: "LS_loginSign" },
        { tag: 3, name: "m_content", type: "ls", id: "LS_ZbJn" },
        { tag: 50, name: "m_bg" }
    ],
    ctor: function() {
    // source line 15, bytecode pc 12
    this._super();
    // source line 16, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(param) {
    var visibleSize, node, i, isGuidePage, icon;
    if (!this._super()) {
        // source line 20, bytecode pc 19
        return false;
    }
    // source line 23, bytecode pc 27
    (this.m_icon = null);
    // source line 24, bytecode pc 35
    (this.m_title = null);
    // source line 25, bytecode pc 43
    (this.m_content = null);
    // source line 26, bytecode pc 51
    (this.m_bg = null);
    // source line 27, bytecode pc 61
    (this.level = param);
    // source line 28, bytecode pc 86
    (visibleSize = xs.director.getVisibleSize());
    // source line 30, bytecode pc 134
    (node = xs.ccb_reader.load(xs.Cfg.CCBI.UpgradeGuideInMainView, this));
    // source line 31, bytecode pc 170
    node.setAnchorPoint(cc.p(0, 0));
    // source line 37, bytecode pc 262
    xs.Utils.Node.attachNodes(this, node, { desc: "lb", sc: true, offset: { x: 0, y: ((visibleSize.height / 8) - 20) } });
    // source line 40, bytecode pc 302
    xs.Utils.UI.replaceCcbByCfg(node, this.ccbCfg, this);
    for (var i in xs.Utils.clone(this.getGuideData(this.level))) {
        // source line 44, bytecode pc 403
        (isGuidePage = parseInt(this.getGuideData(this.level)[i].is_guide_page));
        if (!(isGuidePage)) continue;
        // source line 46, bytecode pc 446
        (this.title = this.getGuideData(this.level)[i].function_name);
        // source line 47, bytecode pc 481
        (this.user_level = this.getGuideData(this.level)[i].user_level);
        break;
    }
    // source line 51, bytecode pc 530
    xs.log_zhz("this.getIconSp()", this.getIconSp());
    // source line 53, bytecode pc 553
    (icon = this.getIconSp(this.user_level));
    if (icon) {
        // source line 55, bytecode pc 595
        xs.Utils.replaceNode(node, 1, icon, true);
        // source line 56, bytecode pc 619
        (this.m_bg = node.getChildByTag(50));
        // source line 57, bytecode pc 659
        (this.m_guideBtn = xs.Views.Btn.createInvisibleWithParent(this.m_bg));
        // source line 66, bytecode pc 696
        this.m_guideBtn.addOnClickCallBack(function() {
    // source line 63, bytecode pc 96
    xs.Views.Mgr.showDialogByName("UsrUpgradeWillOpen", { level: this.user_level, cfgData: xs.Utils.clone(this.getGuideData(this.level)) });
}.bind(this));
        // source line 67, bytecode pc 717
        this.m_guideBtn.setTouchPriority(-101);
        // source line 69, bytecode pc 769
        this.m_title.setString(xs.Tools.String.createString(this.title));
        // source line 70, bytecode pc 790
        this.m_title.setZOrder(10);
        // source line 72, bytecode pc 857
        this.m_content.setString(xs.Tools.String.createStringWithArgsArray("str_upgrade_guide_main", [ this.user_level ]));
    } else {
        // source line 77, bytecode pc 877
        this.setVisible(false);
    }
    // source line 80, bytecode pc 879
    return true;
},
    getIconSp: function(level) {
    var idx;
    // source line 83, bytecode pc 4
    (idx = null);
    // source line 84, bytecode pc 23
    switch (parseInt(level)) {
        case 5:
        // source line 86, bytecode pc 149
        (idx = "01");
        break;
        case 6:
        // source line 89, bytecode pc 163
        (idx = "02");
        break;
        case 8:
        // source line 92, bytecode pc 177
        (idx = "03");
        break;
        case 9:
        case 16:
        // source line 96, bytecode pc 191
        (idx = "04");
        break;
        case 10:
        case 11:
        case 20:
        case 25:
        case 35:
        // source line 103, bytecode pc 205
        (idx = "05");
        break;
        case 13:
        // source line 106, bytecode pc 219
        (idx = "06");
        break;
        case 15:
        // source line 109, bytecode pc 233
        (idx = "07");
        break;
        case 18:
        // source line 112, bytecode pc 247
        (idx = "08");
        break;
        case 30:
        // source line 115, bytecode pc 261
        (idx = "09");
        break;
        case 40:
        // source line 118, bytecode pc 275
        (idx = "11");
        break;
        case 60:
        // source line 121, bytecode pc 289
        (idx = "11");
        break;
        default:
        break;
    }
    if (idx) {
        // source line 125, bytecode pc 354
        return xs.Factorys.Sprite.create("MainMenuScene01_t", "MainMenuScene01", [ idx ]);
    } else {
        // source line 127, bytecode pc 363
        return idx;
    }
},
    getGuideData: function(param) {
    var data, i;
    // source line 130, bytecode pc 23
    (data = xs.Cfg.System.sgs_function_level_conf);
    // source line 131, bytecode pc 32
    (i = (param + 1));
    while ((i < 200)) {
        if (data[i]) {
            // source line 133, bytecode pc 58
            return data[i];
        }
        // source line 131, bytecode pc 72
        (i = (+i + 1));
    }
},
    updateInfo: function() {
    var player;
    // source line 138, bytecode pc 50
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 139, bytecode pc 71
    (this.level = player.getPlayerLevel());
},
    onEnter: function() {
    // source line 142, bytecode pc 12
    this._super();
    // source line 143, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.updateInfo, xs.Constant_Notify_ModelChange_UserInfo);
},
    onExit: function() {
    // source line 147, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_UserInfo);
    // source line 148, bytecode pc 52
    this._super();
}
}));
// source line 162, bytecode pc 296
(xs.Views.UpgradeGuideInMainView.create = function(param) {
    var node;
    // source line 163, bytecode pc 27
    (node = new xs.Views.UpgradeGuideInMainView(param));
    if ((node && node.init(param))) {
        // source line 165, bytecode pc 63
        return node;
    }
    // source line 167, bytecode pc 65
    return null;
});
