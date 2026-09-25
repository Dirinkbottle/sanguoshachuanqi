// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Good.js:1
// source line 199, bytecode pc 273
(xs.Models.Good = cc.Class.extend({
    init: function() {
    // source line 15, bytecode pc 7
    (this.pk_id = null);
    // source line 16, bytecode pc 15
    (this.item_id = null);
    // source line 20, bytecode pc 23
    (this.item_price = null);
    // source line 21, bytecode pc 31
    (this.discount_price = null);
    // source line 22, bytecode pc 39
    (this.purchase_num = null);
    // source line 23, bytecode pc 47
    (this.purchased_num = null);
    // source line 24, bytecode pc 55
    (this.vip_level = null);
    // source line 25, bytecode pc 63
    (this.is_purchased = null);
    // source line 26, bytecode pc 71
    (this.open_time = null);
    // source line 27, bytecode pc 79
    (this.close_time = null);
    // source line 29, bytecode pc 87
    (this.tagId = null);
    // source line 30, bytecode pc 95
    (this.item_title = null);
    // source line 31, bytecode pc 103
    (this.item_desc = null);
    // source line 32, bytecode pc 111
    (this.is_notice = null);
    // source line 33, bytecode pc 119
    (this.can_exchange = null);
    // source line 36, bytecode pc 121
    return true;
},
    loadJson: function(data) {
    var giftPacks, i, item;
    // source line 41, bytecode pc 14
    (this.pk_id = data.pk_id);
    // source line 42, bytecode pc 29
    (this.item_id = data.item_id);
    // source line 44, bytecode pc 66
    (this.item_price = xs.Utils.parseIntSafe(data.item_price));
    // source line 45, bytecode pc 103
    (this.discount_price = xs.Utils.parseIntSafe(data.discount_price));
    // source line 46, bytecode pc 140
    (this.purchase_num = xs.Utils.parseIntSafe(data.purchase_num));
    // source line 47, bytecode pc 177
    (this.purchased_num = xs.Utils.parseIntSafe(data.purchased_num));
    // source line 48, bytecode pc 192
    (this.vip_level = data.vip_level);
    // source line 49, bytecode pc 229
    (this.is_purchased = xs.Utils.parseIntSafe(data.is_purchased));
    // source line 50, bytecode pc 244
    (this.open_time = data.open_time);
    // source line 51, bytecode pc 259
    (this.close_time = data.close_time);
    // source line 52, bytecode pc 274
    (this.currencyType = data.currency_type);
    // source line 53, bytecode pc 311
    (this.tagId = xs.Utils.parseIntSafe(data.tag_id));
    // source line 54, bytecode pc 347
    (this.can_exchange = ((data.can_exchange != null) ? data.can_exchange : false));
    // source line 56, bytecode pc 373
    (this.item_title = (data.item_title || ""));
    // source line 57, bytecode pc 399
    (this.item_desc = (data.item_desc || ""));
    // source line 58, bytecode pc 427
    (this.is_notice = ((data.is_notice === "1") || false));
    // source line 61, bytecode pc 450
    (giftPacks = (data.gift_pack || []));
    // source line 62, bytecode pc 455
    (i = 0);
    while ((i < giftPacks.length)) {
        // source line 63, bytecode pc 499
        (item = xs.Models.Item.createWithJson(giftPacks[i]));
        // source line 65, bytecode pc 521
        this.gift_pack.push(item);
        // source line 62, bytecode pc 534
        (i = (+i + 1));
    }
},
    createHeadView: function(viewCfg) {
    // source line 82, bytecode pc 27
    return this.getItem().createHeadView(viewCfg);
},
    getItem: function() {
    if (!this._itemModel) {
        // source line 86, bytecode pc 51
        (this._itemModel = xs.Models.Item.createWithBase(this.item_id));
    }
    // source line 88, bytecode pc 58
    return this._itemModel;
},
    getItemId: function() {
    // source line 92, bytecode pc 6
    return this.item_id;
},
    getIsNotice: function() {
    // source line 97, bytecode pc 6
    return this.is_notice;
},
    getItemTitle: function() {
    // source line 102, bytecode pc 6
    return this.item_title;
},
    getItemDesc: function() {
    // source line 107, bytecode pc 6
    return this.item_desc;
},
    getVipLevel: function() {
    // source line 111, bytecode pc 13
    return (this.vip_level || 0);
},
    getOriginalPrice: function() {
    // source line 115, bytecode pc 6
    return this.item_price;
},
    getPrice: function() {
    // source line 119, bytecode pc 6
    return this.discount_price;
},
    getPurchaseNum: function() {
    // source line 123, bytecode pc 6
    return this.purchase_num;
},
    getPurchasedNum: function() {
    // source line 127, bytecode pc 6
    return this.purchased_num;
},
    isPurchased: function() {
    // source line 131, bytecode pc 6
    return this.is_purchased;
},
    getOpenTime: function() {
    // source line 135, bytecode pc 6
    return this.open_time;
},
    getCloseTime: function() {
    // source line 139, bytecode pc 6
    return this.close_time;
},
    updateCloseTime: function() {
    if ((this.close_time > 0)) {
        // source line 143, bytecode pc 38
        (this.close_time = (+this.close_time - 1));
    }
},
    getNameString: function() {
    if (!this._nameString) {
        // source line 153, bytecode pc 41
        (this._nameString = this.getItem().getNameString());
    }
    // source line 155, bytecode pc 48
    return this._nameString;
},
    isAbleToBuy: function() {
    if (((this.open_time == 0) || (this.close_time == -1))) {
        // source line 162, bytecode pc 29
        return true;
    }
    // source line 164, bytecode pc 31
    return false;
},
    getDescString: function() {
    if (!this._descString) {
        // source line 170, bytecode pc 41
        (this._descString = this.getItem().getDescString());
    }
    // source line 172, bytecode pc 48
    return this._descString;
},
    getCanBuyNum: function() {
    var _can_buy;
    if (!this.is_purchased) {
        // source line 178, bytecode pc 13
        return 0;
    }
    // source line 181, bytecode pc 18
    (_can_buy = 1);
    if ((this.purchase_num === -1)) {
        // source line 184, bytecode pc 36
        return 999;
    } else {
        // source line 186, bytecode pc 58
        (_can_buy = (this.purchase_num - this.purchased_num));
    }
    // source line 190, bytecode pc 85
    (_can_buy = ((_can_buy > 999) ? 999 : _can_buy));
    // source line 192, bytecode pc 89
    return _can_buy;
},
    getCurrencyType: function() {
    // source line 196, bytecode pc 6
    return this.currencyType;
},
    getTagId: function() {
    // source line 200, bytecode pc 6
    return this.tagId;
}
}));
// source line 206, bytecode pc 299
(xs.Models.Good.createWithJson = function(data) {
    var good;
    // source line 207, bytecode pc 23
    (good = new xs.Models.Good());
    if ((good && good.init())) {
        // source line 209, bytecode pc 70
        good.loadJson(data);
        // source line 210, bytecode pc 74
        return good;
    }
    // source line 212, bytecode pc 76
    return null;
});
