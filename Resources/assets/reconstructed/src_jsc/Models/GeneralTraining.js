// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/GeneralTraining.js:1
// source line 12, bytecode pc 16
(xs.Models.GeneralTrainingStatus_ING = 1);
// source line 13, bytecode pc 33
(xs.Models.GeneralTrainingStatus_Ready = 0);
// source line 14, bytecode pc 51
(xs.Models.GeneralTrainingStatus_End = 2);
// source line 100, bytecode pc 235
(xs.Models.GeneralTraining = cc.Class.extend({
    init: function() {
    // source line 17, bytecode pc 7
    (this.user_training_id = null);
    // source line 18, bytecode pc 15
    (this.general_leader_id = null);
    // source line 19, bytecode pc 23
    (this.to_end_time = 0);
    // source line 20, bytecode pc 31
    (this.training_status = null);
    // source line 21, bytecode pc 39
    (this.exp = null);
    // source line 22, bytecode pc 47
    (this.magatama_need = 0);
    // source line 23, bytecode pc 55
    (this.speak_words_desc = null);
    // source line 24, bytecode pc 63
    (this.training_end_speak_words = null);
    // source line 25, bytecode pc 71
    (this.description = null);
    // source line 26, bytecode pc 79
    (this.card_name = null);
    // source line 28, bytecode pc 81
    return true;
},
    loadJson: function(json) {
    // source line 31, bytecode pc 14
    (this.user_training_id = json.user_training_id);
    // source line 32, bytecode pc 29
    (this.general_leader_id = json.general_leader_id);
    // source line 33, bytecode pc 44
    (this.to_end_time = json.to_end_time);
    // source line 34, bytecode pc 74
    (this.training_status = parseInt(json.training_status));
    // source line 35, bytecode pc 89
    (this.exp = json.exp);
    // source line 36, bytecode pc 104
    (this.magatama_need = json.magatama_need);
    // source line 37, bytecode pc 119
    (this.speak_words_desc = json.speak_words_desc);
    // source line 38, bytecode pc 134
    (this.training_end_speak_words = json.training_end_speak_words);
    // source line 39, bytecode pc 149
    (this.description = json.description);
    // source line 40, bytecode pc 164
    (this.card_name = json.card_name);
},
    getTrainingId: function() {
    // source line 53, bytecode pc 6
    return this.user_training_id;
},
    getGeneralId: function() {
    // source line 56, bytecode pc 6
    return this.general_leader_id;
},
    getEndTime: function() {
    // source line 59, bytecode pc 6
    return this.to_end_time;
},
    getTrainingStatus: function() {
    // source line 62, bytecode pc 6
    return this.training_status;
},
    getExp: function() {
    // source line 65, bytecode pc 6
    return this.exp;
},
    getMagatamaNumNeed: function() {
    // source line 68, bytecode pc 6
    return this.magatama_need;
},
    getSpeak: function() {
    // source line 71, bytecode pc 6
    return this.speak_words_desc;
},
    getEndSpeak: function() {
    // source line 74, bytecode pc 6
    return this.training_end_speak_words;
},
    getDesc: function() {
    // source line 77, bytecode pc 6
    return this.description;
},
    getHeadSp: function() {
    // source line 81, bytecode pc 28
    return cc.Sprite.createWithSpriteFrameName(this.card_name);
},
    schedule_updateEndTime: function() {
    if ((this.to_end_time > 0)) {
        // source line 87, bytecode pc 27
        (this.to_end_time = (this.to_end_time - 1));
    } else {
        // source line 89, bytecode pc 40
        (this.to_end_time = 0);
        // source line 90, bytecode pc 62
        (this.training_status = xs.Models.GeneralTrainingStatus_Ready);
        // source line 92, bytecode pc 104
        xs.director.getScheduler().unscheduleCallbackForTarget(this, this.schedule_updateEndTime);
    }
    // source line 96, bytecode pc 142
    xs.Utils.Notify.postNotification(xs.Constant_Notify_ModelChange_GeneralTraining);
},
    unschedule: function() {
    // source line 101, bytecode pc 41
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.schedule_updateEndTime);
}
}));
// source line 105, bytecode pc 261
(xs.Models.GeneralTraining.create = function() {
    var gTraining;
    // source line 106, bytecode pc 23
    (gTraining = new xs.Models.GeneralTraining());
    if ((gTraining && gTraining.init())) {
        // source line 108, bytecode pc 55
        return gTraining;
    }
    // source line 110, bytecode pc 57
    return null;
});
// source line 148, bytecode pc 375
(xs.Models.GeneralTrainingResultTileData = cc.Class.extend({
    init: function() {
    // source line 119, bytecode pc 7
    (this.pk_id = null);
    // source line 120, bytecode pc 15
    (this.exp = 0);
    // source line 121, bytecode pc 23
    (this.extra_exp = 0);
    // source line 122, bytecode pc 31
    (this.level_before = 0);
    // source line 123, bytecode pc 39
    (this.level_now = 0);
    // source line 125, bytecode pc 41
    return true;
},
    loadJson: function(json) {
    // source line 129, bytecode pc 14
    (this.pk_id = json.pk_id);
    // source line 130, bytecode pc 51
    (this.exp = xs.Utils.parseIntSafe(json.exp));
    // source line 131, bytecode pc 88
    (this.extra_exp = xs.Utils.parseIntSafe(json.extra_exp));
    // source line 132, bytecode pc 125
    (this.level_before = xs.Utils.parseIntSafe(json.level_before));
    // source line 133, bytecode pc 162
    (this.level_now = xs.Utils.parseIntSafe(json.level_now));
},
    getPkId: function() {
    // source line 137, bytecode pc 6
    return this.pk_id;
},
    getExp: function() {
    // source line 140, bytecode pc 6
    return this.exp;
},
    getExtraExp: function() {
    // source line 143, bytecode pc 6
    return this.extra_exp;
},
    getBeforeLevel: function() {
    // source line 146, bytecode pc 6
    return this.level_before;
},
    getNowLevel: function() {
    // source line 149, bytecode pc 6
    return this.level_now;
}
}));
// source line 153, bytecode pc 401
(xs.Models.GeneralTrainingResultTileData.create = function() {
    var data;
    // source line 154, bytecode pc 23
    (data = new xs.Models.GeneralTrainingResultTileData());
    if ((data && data.init())) {
        // source line 156, bytecode pc 55
        return data;
    }
    // source line 158, bytecode pc 57
    return null;
});
// source line 161, bytecode pc 427
(xs.Models.GeneralTrainingResultTileData.createWithJson = function(json) {
    var data;
    // source line 162, bytecode pc 23
    (data = new xs.Models.GeneralTrainingResultTileData());
    if ((data && data.init())) {
        // source line 164, bytecode pc 70
        data.loadJson(json);
        // source line 165, bytecode pc 74
        return data;
    }
    // source line 167, bytecode pc 76
    return null;
});
