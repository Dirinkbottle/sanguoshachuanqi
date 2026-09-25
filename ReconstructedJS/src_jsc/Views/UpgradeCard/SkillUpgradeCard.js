// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/UpgradeCard/SkillUpgradeCard.js:1
// source line 7, bytecode pc 58
(xs.Views.SkillUpgradeCard = xs.Views.CardUpdateView.extend({
    init: function(skillModel) {
    if (!this._super(skillModel)) {
        // source line 9, bytecode pc 23
        return false;
    }
    // source line 12, bytecode pc 25
    return true;
}
}));
// source line 16, bytecode pc 84
(xs.Views.SkillUpgradeCard.create = function(skillModel) {
    var ret;
    // source line 17, bytecode pc 23
    (ret = new xs.Views.SkillUpgradeCard());
    if ((ret && ret.init(skillModel))) {
        // source line 19, bytecode pc 59
        return ret;
    }
    // source line 22, bytecode pc 61
    return null;
});
