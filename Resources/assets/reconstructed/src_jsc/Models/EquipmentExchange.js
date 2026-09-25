// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/EquipmentExchange.js:1
// source line 50, bytecode pc 93
(xs.Models.EquipmentExchange = cc.Class.extend({
    init: function() {
    // source line 15, bytecode pc 7
    (this.pk_id = null);
    // source line 16, bytecode pc 15
    (this.item_id = null);
    // source line 17, bytecode pc 23
    (this.discount_gold_soul = 0);
    // source line 18, bytecode pc 31
    (this.discount_silver_soul = 0);
    // source line 19, bytecode pc 33
    return true;
},
    loadJson: function(data) {
    if (this._super) {
        // source line 23, bytecode pc 23
        this._super();
    }
    // source line 25, bytecode pc 38
    (this.pk_id = data.pk_id);
    // source line 27, bytecode pc 65
    xs.dump("EquipmentExchange", data);
    // source line 29, bytecode pc 80
    (this.item_id = data.item_id);
    // source line 31, bytecode pc 117
    (this.discount_gold_soul = xs.Utils.parseIntSafe(data.discount_gold_soul));
    // source line 32, bytecode pc 154
    (this.discount_silver_soul = xs.Utils.parseIntSafe(data.discount_silver_soul));
},
    getItem: function() {
    if (!this._item) {
        // source line 40, bytecode pc 51
        (this._item = xs.Models.Item.createWithBase(this.item_id));
    }
    // source line 43, bytecode pc 58
    return this._item;
},
    getDiscountGoldSoul: function() {
    // source line 47, bytecode pc 6
    return this.discount_gold_soul;
},
    getDiscountSilverSoul: function() {
    // source line 51, bytecode pc 6
    return this.discount_silver_soul;
}
}));
// source line 56, bytecode pc 119
(xs.Models.EquipmentExchange.createWithJson = function(data) {
    var model;
    // source line 57, bytecode pc 23
    (model = new xs.Models.EquipmentExchange());
    if ((model && model.init())) {
        // source line 59, bytecode pc 70
        model.loadJson(data);
        // source line 60, bytecode pc 74
        return model;
    }
    // source line 62, bytecode pc 99
    xs.assert(false, "xs.Models.EquipmentExchange.create error!");
    // source line 63, bytecode pc 101
    return null;
});
