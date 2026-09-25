// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/CultureMedicine.js:1
// source line 62, bytecode pc 113
(xs.Models.CultureMedicine = cc.Class.extend({
    name: "xs.Models.CultureMedicine",
    init: function(jsonObj) {
    var culture_attr1, culture_attr2;
    if ((jsonObj === "")) {
        // source line 11, bytecode pc 15
        return false;
    }
    // source line 13, bytecode pc 27
    (this.item_name = "");
    // source line 14, bytecode pc 39
    (this.culture_attr = []);
    // source line 15, bytecode pc 47
    (this.isEmpty = false);
    if (((jsonObj.item_name === undefined) && (jsonObj.culture_attr === undefined))) {
        // source line 17, bytecode pc 98
        (this.name = "");
        // source line 18, bytecode pc 106
        (this.culture_attr = null);
        // source line 19, bytecode pc 114
        (this.isEmpty = true);
        // source line 20, bytecode pc 116
        return void 0;
    }
    // source line 22, bytecode pc 131
    (this.item_name = jsonObj.item_name);
    // source line 23, bytecode pc 143
    (this.culture_attr = []);
    // source line 25, bytecode pc 153
    (culture_attr1 = {});
    // source line 26, bytecode pc 177
    (culture_attr1.field = jsonObj.culture_attr[0].field);
    // source line 27, bytecode pc 201
    (culture_attr1.val = jsonObj.culture_attr[0].val);
    // source line 30, bytecode pc 211
    (culture_attr2 = {});
    // source line 31, bytecode pc 235
    (culture_attr2.field = jsonObj.culture_attr[1].field);
    // source line 32, bytecode pc 259
    (culture_attr2.val = jsonObj.culture_attr[1].val);
    if ((culture_attr1.val >= 0)) {
        // source line 35, bytecode pc 296
        this.culture_attr.push(culture_attr1);
        // source line 36, bytecode pc 318
        this.culture_attr.push(culture_attr2);
    } else {
        // source line 38, bytecode pc 345
        this.culture_attr.push(culture_attr2);
        // source line 39, bytecode pc 367
        this.culture_attr.push(culture_attr1);
    }
    // source line 43, bytecode pc 369
    return true;
},
    getName: function() {
    // source line 47, bytecode pc 6
    return this.item_name;
},
    getUpAttrField: function() {
    // source line 51, bytecode pc 13
    return this.culture_attr[0].field;
},
    getUpAttrVal: function() {
    // source line 55, bytecode pc 30
    return Math.abs(this.culture_attr[0].val);
},
    getDownAttrField: function() {
    // source line 59, bytecode pc 13
    return this.culture_attr[1].field;
},
    getDownAttrVal: function() {
    // source line 63, bytecode pc 30
    return Math.abs(this.culture_attr[1].val);
}
}));
// source line 68, bytecode pc 139
(xs.Models.CultureMedicine.create = function(jsonObj) {
    var ret;
    // source line 69, bytecode pc 23
    (ret = new xs.Models.CultureMedicine());
    if ((ret && ret.init(jsonObj))) {
        // source line 71, bytecode pc 59
        return ret;
    }
    // source line 74, bytecode pc 61
    return null;
});
