// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/DailyAdventure.js:1
// source line 55, bytecode pc 246
(xs.Models.DailyAdventure = cc.Class.extend({
    cfg: {
        "1": [ xs.Constant_DailyAdventure_ModelType_Dungeon ],
        "2": [ xs.Constant_DailyAdventure_ModelType_Landder ],
        "3": [ xs.Constant_DailyAdventure_ModelType_Dungeon ],
        "4": [ xs.Constant_DailyAdventure_ModelType_Landder ],
        "5": [ xs.Constant_DailyAdventure_ModelType_Chaos ],
        "6": [ xs.Constant_DailyAdventure_ModelType_All ],
        "0": [ xs.Constant_DailyAdventure_ModelType_All ]
    },
    init: function(modelType, dayOfWeek) {
    // source line 22, bytecode pc 9
    (this.modelType = modelType);
    // source line 23, bytecode pc 58
    (this.dayOfWeek = ((dayOfWeek == null) ? ("" + this._getDay()) : ("" + dayOfWeek)));
    // source line 25, bytecode pc 60
    return true;
},
    getIsAdventureUp: function() {
    var i;
    // source line 30, bytecode pc 4
    (i = 0);
    while ((i < this.cfg[this.dayOfWeek].length)) {
        if (((this.cfg[this.dayOfWeek][i] == xs.Constant_DailyAdventure_ModelType_All) || (this.cfg[this.dayOfWeek][i] == this.modelType))) {
            // source line 34, bytecode pc 75
            return true;
        }
        // source line 30, bytecode pc 90
        i++;
    }
    // source line 37, bytecode pc 120
    return false;
},
    createUpBtn: function() {
    var sp;
    // source line 42, bytecode pc 41
    (sp = xs.Factorys.Sprite.create("Cmn03_0_8_1_qiyuup", "Cmn03"));
    // source line 43, bytecode pc 78
    (this.touchBtn = xs.Views.Btn.createInvisibleWithChild(sp));
    // source line 44, bytecode pc 99
    this.touchBtn.setTouchPriority(-1);
    // source line 45, bytecode pc 119
    this.touchBtn.setZoomOnTouchDown(true);
    // source line 46, bytecode pc 139
    this.touchBtn.setSwallowTouch(false);
    // source line 49, bytecode pc 176
    this.touchBtn.setOnClickCallBack(function() {
    // source line 48, bytecode pc 49
    xs.Views.Mgr.showDialogByName("InstructionDialog", { key: "DailyAdventure_Instruction" });
}.bind(this));
    // source line 51, bytecode pc 183
    return this.touchBtn;
},
    _getDay: function() {
    var time, dayOfWeek;
    // source line 56, bytecode pc 13
    (time = new Date());
    // source line 57, bytecode pc 31
    (dayOfWeek = time.getDay());
    // source line 58, bytecode pc 35
    return dayOfWeek;
}
}));
// source line 62, bytecode pc 272
(xs.Models.DailyAdventure.create = function(modelType) {
    var dailyAdventure;
    // source line 63, bytecode pc 23
    (dailyAdventure = new xs.Models.DailyAdventure());
    if ((dailyAdventure && dailyAdventure.init(modelType))) {
        // source line 65, bytecode pc 59
        return dailyAdventure;
    }
    // source line 68, bytecode pc 61
    return null;
});
