// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Beauty/BeautyCell.js:1
// source line 103, bytecode pc 123
(xs.Views.BeautyCell = cc.TableViewCell.extend({
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
    // source line 17, bytecode pc 43
    (this.m_data = null);
    // source line 18, bytecode pc 79
    this.setContentSize(cc.size(106, 120));
    if (!this.m_selectedIcon) {
        // source line 22, bytecode pc 136
        (this.m_selectedIcon = xs.Factorys.Sprite.create("head_select", "Cmn02"));
        // source line 23, bytecode pc 185
        this.m_selectedIcon.setZOrder(xs.Scene.TeamBuildListCell.cfg.m_selectedIcon.zOrder);
        // source line 25, bytecode pc 238
        xs.Utils.Node.attachNodes(this, this.m_selectedIcon, { desc: "c" });
    }
    // source line 29, bytecode pc 266
    (this.m_iconNoe = cc.Node.create());
    // source line 30, bytecode pc 313
    this.m_iconNoe.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 31, bytecode pc 389
    xs.Utils.Node.attachNodes(this, this.m_iconNoe, { desc: "c", offset: { x: 0, y: 0 } });
    if (!this.m_scale9Lock) {
        // source line 35, bytecode pc 460
        (this.m_scale9Lock = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.hongyan.zhezhao.frameName));
        // source line 36, bytecode pc 507
        this.m_scale9Lock.setAnchorPoint(cc.p(0.5, 0.5));
        // source line 37, bytecode pc 548
        this.m_scale9Lock.setPreferredSize(cc.size(86, 86));
        // source line 39, bytecode pc 601
        xs.Utils.Node.attachNodes(this, this.m_scale9Lock, { desc: "c" });
    }
    if (!this.m_lockIcon) {
        // source line 44, bytecode pc 658
        (this.m_lockIcon = xs.Factorys.Sprite.create("icon_touxiangSuo", "Cmn01"));
        // source line 46, bytecode pc 711
        xs.Utils.Node.attachNodes(this, this.m_lockIcon, { desc: "c" });
    }
    // source line 50, bytecode pc 756
    (this.m_nameLab = xs.Factorys.LabelTTF.create("", "TTF_Font_TeamIconName"));
    // source line 51, bytecode pc 797
    this.m_nameLab.setPosition(cc.p(50, 26));
    // source line 52, bytecode pc 833
    xs.Utils.Node.attachNodes(this, this.m_nameLab);
    // source line 56, bytecode pc 835
    return true;
},
    setIsSelected: function(selected) {
    if ((this.b_isSelected !== selected)) {
        // source line 61, bytecode pc 24
        (this.b_isSelected = selected);
        // source line 62, bytecode pc 37
        this.updateView();
    }
},
    setIsLocked: function(locked) {
    // source line 68, bytecode pc 9
    (this.b_isLocked = locked);
    // source line 69, bytecode pc 22
    this.updateView();
},
    updateView: function() {
    // source line 76, bytecode pc 24
    this.m_selectedIcon.setVisible(this.b_isSelected);
    // source line 78, bytecode pc 49
    this.m_scale9Lock.setVisible(this.b_isLocked);
    // source line 81, bytecode pc 74
    this.m_lockIcon.setVisible(this.b_isLocked);
    if (this.m_data) {
        // source line 84, bytecode pc 110
        this.setLevel(this.m_data.m_level);
    }
},
    setLevel: function(lv) {
    // source line 91, bytecode pc 9
    (this.m_level = lv);
    if ((this.m_level == undefined)) {
        // source line 93, bytecode pc 50
        this.m_nameLab.setString("");
    } else {
        // source line 95, bytecode pc 86
        this.m_nameLab.setString(("Lv" + this.m_level));
    }
},
    getLevel: function() {
    // source line 100, bytecode pc 6
    return this.m_level;
},
    refresh: function(data) {
    // source line 104, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_icon);
    // source line 105, bytecode pc 41
    (this.m_icon = null);
    // source line 106, bytecode pc 62
    (this.m_icon = data.createIcon_Grade());
    // source line 107, bytecode pc 84
    this.m_icon.reloadData(data);
    // source line 109, bytecode pc 125
    xs.Utils.Node.attachNodes(this.m_iconNoe, this.m_icon);
    // source line 110, bytecode pc 140
    (this.b_isLocked = data.is_lock);
    // source line 111, bytecode pc 153
    this.updateView();
    // source line 113, bytecode pc 163
    (this.m_data = data);
    // source line 114, bytecode pc 185
    this.setLevel(data.m_level);
}
}));
// source line 121, bytecode pc 149
(xs.Views.BeautyCell.create = function() {
    var cell;
    // source line 122, bytecode pc 23
    (cell = new xs.Views.BeautyCell());
    if ((cell && cell.init())) {
        // source line 124, bytecode pc 55
        return cell;
    }
    // source line 126, bytecode pc 57
    return null;
});
