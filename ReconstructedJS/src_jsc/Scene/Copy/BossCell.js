// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Copy/BossCell.js:1
// source line 62, bytecode pc 103
(xs.Views.BossCell = cc.TableViewCell.extend({
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 27
    (this.b_isSelected = false);
    // source line 16, bytecode pc 35
    (this.b_isLocked = false);
    // source line 18, bytecode pc 71
    this.setContentSize(cc.size(106, 120));
    // source line 20, bytecode pc 73
    return true;
},
    setIsSelected: function(selected) {
    if ((this.b_isSelected !== selected)) {
        // source line 25, bytecode pc 24
        (this.b_isSelected = selected);
        // source line 26, bytecode pc 37
        this.updateView();
    }
},
    setIsLocked: function(locked) {
    if ((this.b_isLocked !== locked)) {
        // source line 32, bytecode pc 24
        (this.b_isLocked = locked);
        // source line 33, bytecode pc 37
        this.updateView();
    }
},
    updateView: function() {
    // source line 39, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_selectedIcon);
    // source line 40, bytecode pc 41
    (this.m_selectedIcon = null);
    if (this.b_isSelected) {
        // source line 43, bytecode pc 97
        (this.m_selectedIcon = xs.Factorys.Sprite.create("head_select", "Cmn02"));
        // source line 44, bytecode pc 146
        this.m_selectedIcon.setZOrder(xs.Scene.TeamBuildListCell.cfg.m_selectedIcon.zOrder);
        // source line 46, bytecode pc 199
        xs.Utils.Node.attachNodes(this, this.m_selectedIcon, { desc: "c" });
    }
    // source line 50, bytecode pc 233
    xs.Utils.Node.safeRemoveChild(this.m_lockIcon);
    // source line 51, bytecode pc 241
    (this.m_lockIcon = null);
    if (this.b_isLocked) {
        // source line 55, bytecode pc 297
        (this.m_lockIcon = xs.Factorys.Sprite.create("icon_touxiangSuo", "Cmn01"));
        // source line 57, bytecode pc 350
        xs.Utils.Node.attachNodes(this, this.m_lockIcon, { desc: "c" });
    }
},
    refresh: function(data) {
    // source line 63, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_icon);
    // source line 64, bytecode pc 41
    (this.m_icon = null);
    // source line 65, bytecode pc 62
    (this.m_icon = data.createIcon_Grade());
    // source line 66, bytecode pc 84
    this.m_icon.reloadData(data);
    // source line 67, bytecode pc 160
    xs.Utils.Node.attachNodes(this, this.m_icon, { desc: "c", offset: { x: 0, y: 0 } });
}
}));
// source line 76, bytecode pc 129
(xs.Views.BossCell.create = function() {
    var cell;
    // source line 77, bytecode pc 23
    (cell = new xs.Views.BossCell());
    if ((cell && cell.init())) {
        // source line 79, bytecode pc 55
        return cell;
    }
    // source line 81, bytecode pc 57
    return null;
});
