// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ReplaceCardPanel.js:1
// source line 69, bytecode pc 143
(xs.Views.ReplaceCardPanel = cc.Node.extend({
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(cardType) {
    if (!this._super()) {
        // source line 16, bytecode pc 19
        return false;
    }
    // source line 19, bytecode pc 27
    (this.m_plugin = null);
    // source line 20, bytecode pc 35
    (this.m_ccbNode = null);
    // source line 21, bytecode pc 43
    (this.m_cardData = null);
    // source line 22, bytecode pc 51
    (this.m_card = null);
    // source line 24, bytecode pc 59
    (this.m_cardBg = null);
    // source line 25, bytecode pc 67
    (this.m_generalBg = null);
    // source line 26, bytecode pc 75
    (this.m_armorBg = null);
    // source line 27, bytecode pc 83
    (this.m_skillBg = null);
    // source line 28, bytecode pc 91
    (this.m_kitBg = null);
    // source line 29, bytecode pc 99
    (this.m_weaponBg = null);
    // source line 30, bytecode pc 107
    (this.m_mountBg = null);
    // source line 32, bytecode pc 117
    (this.m_showType = cardType);
    // source line 34, bytecode pc 164
    (this.m_plugin = xs.Views.Dialog.ReplaceCardDialog.Plugins.getPlugin(cardType));
    // source line 36, bytecode pc 202
    this.setContentSize(cc.size(360, 614));
    // source line 38, bytecode pc 253
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.ReplaceCardPanel, this));
    // source line 39, bytecode pc 289
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 41, bytecode pc 351
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.ReplaceCardPanel.cfg.ccbCfg, this);
    // source line 43, bytecode pc 364
    this.updateView();
    // source line 45, bytecode pc 366
    return true;
},
    setCardData: function(data) {
    // source line 48, bytecode pc 9
    (this.m_cardData = data);
    // source line 49, bytecode pc 22
    this.updateView();
},
    showGeneral: function() {
    // source line 52, bytecode pc 19
    this.m_generalBg.setVisible(true);
},
    showArmor: function() {
    // source line 55, bytecode pc 19
    this.m_armorBg.setVisible(true);
},
    showWeapon: function() {
    // source line 58, bytecode pc 19
    this.m_weaponBg.setVisible(true);
},
    showMount: function() {
    // source line 61, bytecode pc 19
    this.m_mountBg.setVisible(true);
},
    showKit: function() {
    // source line 64, bytecode pc 19
    this.m_kitBg.setVisible(true);
},
    showSkill: function() {
    // source line 67, bytecode pc 19
    this.m_skillBg.setVisible(true);
},
    updateView: function() {
    // source line 70, bytecode pc 19
    this.m_generalBg.setVisible(false);
    // source line 71, bytecode pc 39
    this.m_armorBg.setVisible(false);
    // source line 72, bytecode pc 59
    this.m_skillBg.setVisible(false);
    // source line 73, bytecode pc 79
    this.m_kitBg.setVisible(false);
    // source line 74, bytecode pc 99
    this.m_weaponBg.setVisible(false);
    // source line 75, bytecode pc 119
    this.m_mountBg.setVisible(false);
    // source line 77, bytecode pc 153
    xs.Utils.Node.safeRemoveChild(this.m_card);
    // source line 78, bytecode pc 161
    (this.m_card = null);
    if (this.m_cardData) {
        // source line 82, bytecode pc 196
        (this.m_card = this.m_cardData.createCard_Detail());
        // source line 83, bytecode pc 221
        this.m_card.reloadData(this.m_cardData);
        // source line 84, bytecode pc 257
        this.m_card.setPosition(this.m_cardBg.getPosition());
        // source line 85, bytecode pc 298
        xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_card);
    } else {
        // source line 87, bytecode pc 323
        this.m_plugin.ReplaceCardPanel_Plugin_updateView(this);
    }
}
}));
// source line 92, bytecode pc 169
(xs.Views.ReplaceCardPanel.create = function(cardType) {
    var node;
    // source line 93, bytecode pc 23
    (node = new xs.Views.ReplaceCardPanel());
    if ((node && node.init(cardType))) {
        // source line 95, bytecode pc 59
        return node;
    }
    // source line 97, bytecode pc 82
    xs.warn("xs.Views.ReplaceCardPanel.create error!");
    // source line 98, bytecode pc 84
    return null;
});
// source line 109, bytecode pc 395
(xs.Views.ReplaceCardPanel.cfg = {
    ccbCfg: [
        { name: "m_cardBg", tag: 10 },
        { name: "m_generalBg", tag: 11 },
        { name: "m_armorBg", tag: 12 },
        { name: "m_skillBg", tag: 13 },
        { name: "m_kitBg", tag: 14 },
        { name: "m_weaponBg", tag: 15 },
        { name: "m_mountBg", tag: 16 }
    ]
});
