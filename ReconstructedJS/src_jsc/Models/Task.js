// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Task.js:1
// source line 78, bytecode pc 133
(xs.Models.Task = cc.Class.extend({
    name: "xs.Models.Task",
    init: function(jsonData) {
    if (jsonData) {
        // source line 11, bytecode pc 44
        (this.pk_id = xs.Utils.parseIntSafe(jsonData.pk_id));
        // source line 12, bytecode pc 81
        (this.status = xs.Utils.parseIntSafe(jsonData.status));
        // source line 13, bytecode pc 118
        (this.task_value = xs.Utils.parseIntSafe(jsonData.task_value));
        // source line 14, bytecode pc 133
        (this.task_objective_num = jsonData.task_objective_num);
        // source line 15, bytecode pc 170
        (this.title = xs.Utils.parseStringSafe(jsonData.title));
        // source line 16, bytecode pc 207
        (this.desc = xs.Utils.parseStringSafe(jsonData.desc));
        // source line 17, bytecode pc 222
        (this.icon = jsonData.icon);
        // source line 18, bytecode pc 237
        (this.icon_type = jsonData.icon_type);
        // source line 19, bytecode pc 274
        (this.scene = xs.Utils.parseStringSafe(jsonData.scene));
        // source line 20, bytecode pc 289
        (this.reword_list = jsonData.reword_list);
    }
    // source line 51, bytecode pc 291
    return true;
},
    getStatus: function() {
    // source line 55, bytecode pc 6
    return this.status;
},
    getTitle: function() {
    // source line 59, bytecode pc 6
    return this.title;
},
    getDesc: function() {
    // source line 63, bytecode pc 6
    return this.desc;
},
    getTaskValue: function() {
    // source line 67, bytecode pc 6
    return this.task_value;
},
    getTaskObjectiveNum: function() {
    // source line 71, bytecode pc 6
    return this.task_objective_num;
},
    getScene: function() {
    // source line 75, bytecode pc 6
    return this.scene;
},
    getSortPriority: function() {
    if ((this.getStatus() == xs.Constant_TaskStatus_UnFinished)) {
        // source line 80, bytecode pc 30
        return 2;
    } else {
        if ((this.getStatus() == xs.Constant_TaskStatus_Finished_CanReceived)) {
            // source line 83, bytecode pc 65
            return 1;
        } else {
            if ((this.getStatus() == xs.Constant_TaskStatus_Finished_Received)) {
                // source line 86, bytecode pc 101
                return 3;
            }
        }
    }
    // source line 89, bytecode pc 103
    return 0;
}
}));
// source line 93, bytecode pc 159
(xs.Models.Task.createWithData = function(jsonData) {
    var _ret;
    // source line 94, bytecode pc 23
    (_ret = new xs.Models.Task());
    if ((_ret && _ret.init(jsonData))) {
        // source line 96, bytecode pc 59
        return _ret;
    }
    // source line 98, bytecode pc 61
    return null;
});
