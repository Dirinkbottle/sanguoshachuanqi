// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/VipCfg.js:1
// source line 46, bytecode pc 113
(xs.Models.VipCfg = xs.Models.BaseCfg.extend({
    name: "VipCfg",
    CfgDataType: xs.Constant_CfgDataType_Vip,
    init: function() {
    // source line 21, bytecode pc 12
    this._super();
    // source line 23, bytecode pc 31
    this.registerCaches("_good");
    // source line 25, bytecode pc 33
    return true;
},
    getTitle: function() {
    // source line 30, bytecode pc 44
    return xs.Tools.Ml.createString(this.getBaseDataRef().vip_title);
},
    getGiftId: function() {
    // source line 34, bytecode pc 17
    return this.getBaseDataRef().gifts_content;
},
    getDescStringId: function() {
    var descStr;
    // source line 47, bytecode pc 20
    (descStr = this.getBaseDataRef().vip_privileges);
    // source line 48, bytecode pc 24
    return descStr;
}
}));
// source line 57, bytecode pc 139
(xs.Models.VipCfg.createWithBase = function(lv) {
    var cfg;
    // source line 58, bytecode pc 23
    (cfg = new xs.Models.VipCfg());
    if ((cfg && cfg.init())) {
        // source line 60, bytecode pc 70
        cfg.readBaseData(lv);
        // source line 61, bytecode pc 74
        return cfg;
    }
    // source line 63, bytecode pc 99
    xs.assert(false, "xs.Models.VipCfg.create error!");
    // source line 64, bytecode pc 101
    return null;
});
