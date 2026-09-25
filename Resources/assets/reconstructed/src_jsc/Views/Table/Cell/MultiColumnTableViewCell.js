// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/MultiColumnTableViewCell.js:1
// source line 41, bytecode pc 98
(xs.Views.Table.MultiColumnTableViewCell = cc.TableViewCell.extend({
    name: "MultiColumnTableViewCell",
    ctor: function() {
    // source line 5, bytecode pc 12
    this._super();
},
    initWithData: function(data) {
    // source line 8, bytecode pc 11
    (this.iconArray = []);
    // source line 10, bytecode pc 24
    this.init();
    // source line 12, bytecode pc 34
    (this.data = data);
    // source line 13, bytecode pc 54
    this.updateCell(this.data);
    // source line 15, bytecode pc 56
    return true;
},
    updateCell: function(data) {
    var i, icon;
    // source line 20, bytecode pc 4
    (i = 0);
    while ((i < this.iconArray.length)) {
        // source line 21, bytecode pc 34
        this.iconArray[i].removeFromParent(true);
        // source line 20, bytecode pc 48
        (i = (+i + 1));
    }
    // source line 24, bytecode pc 82
    (this.iconArray = []);
    // source line 26, bytecode pc 87
    (i = 0);
    while ((i < data.length)) {
        // source line 27, bytecode pc 113
        (icon = this._createIcon(i));
        // source line 28, bytecode pc 135
        this.iconArray.push(icon);
        // source line 34, bytecode pc 223
        xs.Utils.Node.attachNodes(this, icon, { desc: "lb", sc: true, offset: { x: (53 + (104 * i)), y: 52 } });
        // source line 26, bytecode pc 237
        (i = (+i + 1));
    }
},
    _createIcon: function(index) {
    var m_endButton;
    // source line 42, bytecode pc 65
    (m_endButton = xs.Libs.Views.Button.createWithSpriteFrame(xs.Cfg.Sprite.Cmn01.mainMenuView_0.frameName));
    // source line 44, bytecode pc 69
    return m_endButton;
}
}));
// source line 52, bytecode pc 129
(xs.Views.Table.MultiColumnTableViewCell.create = function(data) {
    var object;
    // source line 53, bytecode pc 22
    xs.log("xs.Views.Table.MultiColumnTableViewCell");
    // source line 54, bytecode pc 51
    (object = new xs.Views.Table.MultiColumnTableViewCell());
    if ((object && object.initWithData(data))) {
        // source line 56, bytecode pc 87
        return object;
    }
    // source line 58, bytecode pc 112
    xs.assert(false, "xs.Views.Table.MultiColumnTableViewCell.create error");
    // source line 59, bytecode pc 114
    return null;
});
