// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/AddShowList.js:1
// source line 39, bytecode pc 73
(xs.Models.AddShowList = cc.Class.extend({
    init: function() {
    // source line 11, bytecode pc 11
    (this.m_data = []);
    // source line 12, bytecode pc 23
    (this.show_list_type = "");
    // source line 13, bytecode pc 25
    return true;
},
    loadJson: function(jsonData, show_list_type) {
    var i, add;
    // source line 17, bytecode pc 30
    (this.show_list_type = (show_list_type || xs.Views.ItemShowListType_Add));
    // source line 18, bytecode pc 35
    (i = 0);
    while ((i < jsonData.length)) {
        // source line 22, bytecode pc 79
        (add = xs.Factorys.Add.createWithJson(jsonData[i]));
        // source line 23, bytecode pc 101
        this.m_data.push(add);
        // source line 18, bytecode pc 115
        (i = (+i + 1));
    }
    // source line 36, bytecode pc 190
    this.m_data.sort(xs.Tools.Sort.by(xs.Constant_SortType_AddList_Default));
},
    createItemShowList: function() {
    var node;
    // source line 40, bytecode pc 43
    (node = xs.Views.ItemShowList.create(this.m_data, this.show_list_type));
    // source line 41, bytecode pc 47
    return node;
}
}));
// source line 45, bytecode pc 99
(xs.Models.AddShowList.create = function(jsonData, show_list_type) {
    var _type, showList;
    // source line 46, bytecode pc 27
    (_type = (show_list_type || xs.Views.ItemShowListType_Add));
    // source line 47, bytecode pc 51
    (showList = new xs.Models.AddShowList());
    if ((showList && showList.init())) {
        // source line 49, bytecode pc 102
        showList.loadJson(jsonData, _type);
        // source line 50, bytecode pc 106
        return showList;
    }
    // source line 52, bytecode pc 129
    xs.warn("xs.Views.AddShowList.create error!");
    // source line 53, bytecode pc 131
    return null;
});
