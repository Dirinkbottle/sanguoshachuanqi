// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Game/Package.js:1
// source line 45, bytecode pc 113
(xs.Models.Game.Package = xs.Models.Item.extend({
    name: "xs.Models.Game.Package",
    init: function(data) {
    // source line 9, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 14
    return true;
},
    loadJson: function(jsonResp) {
    // source line 32, bytecode pc 35
    (this.m_style = new xs.Models.Style(jsonResp.style));
    // source line 33, bytecode pc 50
    (this.m_data = jsonResp.data);
},
    createIcon_GradeAndName: function() {
    // source line 38, bytecode pc 17
    return this.m_style.createView_HeadAndName();
},
    getStyle: function() {
    // source line 42, bytecode pc 6
    return this.m_style;
},
    getData: function() {
    // source line 46, bytecode pc 17
    return (this.m_data || []);
}
}));
// source line 54, bytecode pc 144
(xs.Models.Game.Package.createWithJson = function(jsonPackage) {
    var item;
    // source line 55, bytecode pc 28
    (item = new xs.Models.Game.Package());
    if ((item && item.init())) {
        // source line 57, bytecode pc 75
        item.loadJson(jsonPackage);
        // source line 58, bytecode pc 79
        return item;
    }
    // source line 60, bytecode pc 104
    xs.assert(false, "xs.Models.Game.Package err");
    // source line 61, bytecode pc 106
    return null;
});
