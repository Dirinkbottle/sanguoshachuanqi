// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/UpgradeCard/CombatUpgradeCard.js:1
// source line 55, bytecode pc 154
(xs.Views.CombatUpgradeCard = xs.Views.CardUpdateView.extend({
    init: function(combatModel) {
    if (!this._super(combatModel)) {
        // source line 9, bytecode pc 23
        return false;
    }
    // source line 13, bytecode pc 59
    (this.ccbNode_InfoBar = xs.ccb_reader.load("ccb3/0_7_13_Combat_InfoBar.ccbi", this));
    // source line 16, bytecode pc 145
    xs.Utils.Node.attachNodes(this, this.ccbNode_InfoBar, { desc: "lb", offset: cc.p(20, 40), sc: false });
    // source line 18, bytecode pc 162
    this.updateInfoBar(combatModel);
    // source line 20, bytecode pc 195
    this.setLevelChangeCallBack(this.onLevelChange.bind(this));
    // source line 22, bytecode pc 197
    return true;
},
    updateInfoBar: function(combatModel, combatLevel) {
    var combatIcon;
    // source line 27, bytecode pc 9
    (this.model = combatModel);
    // source line 28, bytecode pc 37
    this.onLevelChange(combatModel.getLevel());
    // source line 30, bytecode pc 55
    (combatIcon = combatModel.createTypeIcon());
    if (!combatIcon) {
        // source line 32, bytecode pc 66
        return void 0;
    }
    // source line 35, bytecode pc 127
    (this.combatIcon = xs.Utils.replaceIcon(this.ccbNode_InfoBar, this.cfg.infoBar.icon.tag, combatIcon));
},
    onLevelChange: function(level) {
    // source line 40, bytecode pc 60
    (this.combatLevel = xs.Utils.setCcbLabel(this.ccbNode_InfoBar, this.cfg.infoBar.level.tag, level));
    // source line 43, bytecode pc 145
    (this.combatPlusValue = xs.Utils.setCcbLabel(this.ccbNode_InfoBar, this.cfg.infoBar.plusValue.tag, ("+" + this.model.getExtraBuff(level))));
},
    cfg: { infoBar: { level: { tag: 11 }, icon: { tag: 12 }, plusValue: { tag: 13 } } }
}));
// source line 61, bytecode pc 180
(xs.Views.CombatUpgradeCard.create = function(combatModel) {
    var ret;
    // source line 62, bytecode pc 23
    (ret = new xs.Views.CombatUpgradeCard());
    if ((ret && ret.init(combatModel))) {
        // source line 64, bytecode pc 59
        return ret;
    }
    // source line 67, bytecode pc 61
    return null;
});
