// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/BaseCell.js:1
// source line 48, bytecode pc 123
(xs.Views.Table.Cell.BaseCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 12, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 15, bytecode pc 12
    this._super();
    // source line 16, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 20, bytecode pc 19
        return false;
    }
    // source line 23, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 24, bytecode pc 35
    (this.m_ccbNode = null);
    // source line 26, bytecode pc 37
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 29, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    getBaseTouchPriority: function() {
    // source line 32, bytecode pc 6
    return this.m_baseTouchPriority;
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 35, bytecode pc 12
    this._super();
    // source line 37, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 40, bytecode pc 71
            (touchPriority = parent.getTouchPriority());
            // source line 41, bytecode pc 88
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 45, bytecode pc 111
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 49, bytecode pc 12
    this._super();
}
}));
