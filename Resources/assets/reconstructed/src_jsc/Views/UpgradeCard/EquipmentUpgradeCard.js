// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/UpgradeCard/EquipmentUpgradeCard.js:1
// source line 84, bytecode pc 164
(xs.Views.EquipmentUpgradeCard = xs.Views.CardUpdateView.extend({
    init: function(equipModel) {
    if (!this._super(equipModel)) {
        // source line 9, bytecode pc 23
        return false;
    }
    // source line 12, bytecode pc 56
    this.setLevelChangeCallBack(this.onLevelChange.bind(this));
    // source line 14, bytecode pc 58
    return true;
},
    setLevelChangeCallBack: function(fun) {
    // source line 19, bytecode pc 9
    (this.levelChangeCallBack = fun);
},
    onLevelChange: function(refineLevel) {
    // source line 23, bytecode pc 21
    this.model.setRefineLevelForPreview(refineLevel);
    // source line 24, bytecode pc 46
    this.m_card.reloadData(this.model);
},
    updateExp: function(addExp, model) {
    var levelUpValue, percentage, maxLevel, _addvalue, i, _expbylevel, _totalexpbylevel, lostExp, _nextExp;
    // source line 30, bytecode pc 9
    (this.model = model);
    // source line 31, bytecode pc 27
    this.model.recoveryRefineLevel();
    if ((this.preLevelUp === undefined)) {
        // source line 34, bytecode pc 65
        (this.preLevelUp = model.getRefineLevel());
    }
    // source line 37, bytecode pc 70
    (levelUpValue = 1);
    // source line 38, bytecode pc 88
    (percentage = model.getCurRefineLevelExpPer());
    // source line 40, bytecode pc 106
    (maxLevel = model.getMaxRefineLevel());
    // source line 41, bytecode pc 128
    (_addvalue = (addExp + model.getTotalRefineExp()));
    // source line 43, bytecode pc 146
    (i = model.getRefineLevel());
    while ((i <= maxLevel)) {
        // source line 44, bytecode pc 193
        (_expbylevel = (model.getTotalRefineExpByLevel(i) + model.getUpgradeRefineExpNeed(i)));
        if ((_addvalue >= _expbylevel)) {
            // source line 48, bytecode pc 212
            (levelUpValue = i);
            // source line 49, bytecode pc 218
            (percentage = 100);
        } else {
            // source line 51, bytecode pc 230
            (levelUpValue = i);
            // source line 52, bytecode pc 252
            (_totalexpbylevel = model.getTotalRefineExpByLevel(i));
            // source line 53, bytecode pc 263
            (lostExp = (_addvalue - _totalexpbylevel));
            // source line 54, bytecode pc 285
            (_nextExp = model.getUpgradeRefineExpNeed(i));
            // source line 55, bytecode pc 299
            (percentage = ((lostExp / _nextExp) * 100));
            // source line 56, bytecode pc 323
            (percentage = Math.floor(percentage));
            break;
        }
        // source line 43, bytecode pc 342
        (i = (+i + 1));
    }
    if ((levelUpValue >= this.preLevelUp)) {
        // source line 64, bytecode pc 379
        (this.bAdd = true);
        // source line 65, bytecode pc 409
        this.runPercentageAction(percentage, (levelUpValue - this.preLevelUp), true);
    } else {
        // source line 67, bytecode pc 431
        this.setCurPercentage(percentage);
        // source line 68, bytecode pc 448
        this.levelChangeCallBack(levelUpValue);
    }
    // source line 70, bytecode pc 458
    (this.preLevelUp = levelUpValue);
    // source line 72, bytecode pc 465
    return this.preLevelUp;
},
    cfg: { infoBar: { level: { tag: 11 }, icon: { tag: 12 }, plusValue: { tag: 13 } } }
}));
// source line 90, bytecode pc 190
(xs.Views.EquipmentUpgradeCard.create = function(equipModel) {
    var ret;
    // source line 91, bytecode pc 23
    (ret = new xs.Views.EquipmentUpgradeCard());
    if ((ret && ret.init(equipModel))) {
        // source line 93, bytecode pc 59
        return ret;
    }
    // source line 96, bytecode pc 61
    return null;
});
