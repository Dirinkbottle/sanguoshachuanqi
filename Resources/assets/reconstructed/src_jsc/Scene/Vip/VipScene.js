// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Vip/VipScene.js:1
// source line 106, bytecode pc 168
(xs.Scene.VipLayer = xs.Views.HungerLayer.extend({
    name: "VipLayer",
    ctor: function() {
    // source line 15, bytecode pc 12
    this._super();
},
    init: function() {
    var visibleSize, visibleOrigin, i, cfgData;
    if (!this._super()) {
        // source line 19, bytecode pc 19
        return false;
    }
    // source line 22, bytecode pc 27
    (this.m_tableView = null);
    // source line 23, bytecode pc 35
    (this.m_mainMenu = null);
    // source line 24, bytecode pc 43
    (this.m_title = null);
    // source line 25, bytecode pc 51
    (this.m_baseTouchPriority = 0);
    // source line 26, bytecode pc 63
    (this.m_dataSource = []);
    // source line 32, bytecode pc 88
    (visibleSize = xs.director.getVisibleSize());
    // source line 33, bytecode pc 113
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 35, bytecode pc 142
    xs.Tools.UI.addCommonBg(this);
    // source line 37, bytecode pc 175
    (this.m_title = xs.Views.SceneTitleView.create());
    // source line 38, bytecode pc 226
    this.m_title.setTitle(xs.Tools.String.createString("auto_name_220"));
    // source line 39, bytecode pc 340
    xs.Utils.Node.attachNodes(this, this.m_title, { desc: "ct", sc: true, offset: { x: (-172 - ((xs.Views.MainMenuView.Width - 32) / 2)), y: -71 } });
    // source line 42, bytecode pc 345
    (i = 0);
    while ((i < 14)) {
        // source line 43, bytecode pc 393
        (cfgData = xs.Models.VipCfg.createWithBase(((i - 1) + "")));
        // source line 44, bytecode pc 415
        this.m_dataSource.push(cfgData);
        // source line 42, bytecode pc 428
        (i = (+i + 1));
    }
    // source line 47, bytecode pc 504
    (this.m_tableView = cc.TableView.create(this, cc.size((visibleSize.width - 148), 548)));
    // source line 48, bytecode pc 533
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL);
    // source line 49, bytecode pc 562
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 50, bytecode pc 582
    this.m_tableView.setDelegate(this);
    // source line 51, bytecode pc 654
    this.m_tableView.setPosition(cc.p((visibleOrigin.x + 26), (visibleOrigin.y + ((visibleSize.height - 600) / 2))));
    // source line 52, bytecode pc 674
    this.addChild(this.m_tableView);
    // source line 55, bytecode pc 737
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Scene.VipLayer.cfg.m_mainMenu));
    // source line 58, bytecode pc 752
    this.setBaseTouchPriority(0);
    // source line 59, bytecode pc 754
    return true;
},
    backCallback: function() {
    // source line 62, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("MainMenuScene");
},
    setBaseTouchPriority: function(priority) {
    // source line 65, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 66, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 67, bytecode pc 85
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority + xs.Scene.VipLayer.cfg.m_tableView.priority));
    // source line 68, bytecode pc 141
    this.m_mainMenu.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.VipLayer.cfg.m_mainMenu.priority));
},
    showGift: function(giftId) {
    // source line 73, bytecode pc 22
    xs.log("................showGift");
    // source line 74, bytecode pc 59
    xs.Views.Mgr.showDialogByName("priviewGiftPackDialog", giftId);
},
    scrollViewDidScroll: function() {
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
    var idx;
    // source line 83, bytecode pc 17
    (idx = cell.getIdx());
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 87, bytecode pc 24
    return cc.size(430, 540);
},
    tableCellAtIndex: function(table, idx) {
    var cell, data;
    // source line 91, bytecode pc 22
    this.markFuncBegin("tableCellAtIndex", idx);
    // source line 93, bytecode pc 40
    (cell = table.dequeueCell());
    // source line 94, bytecode pc 54
    (data = this.m_dataSource[idx]);
    if (!cell) {
        // source line 96, bytecode pc 93
        (cell = xs.Views.VipCell.create());
    }
    // source line 98, bytecode pc 110
    cell.setListener(this);
    // source line 99, bytecode pc 129
    cell.setVipData(data);
    // source line 100, bytecode pc 148
    cell.setVipLv(idx);
    // source line 102, bytecode pc 171
    this.markFuncEnd("tableCellAtIndex", idx);
    // source line 104, bytecode pc 175
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 107, bytecode pc 11
    return this.m_dataSource.length;
}
}));
// source line 111, bytecode pc 194
(xs.Scene.VipLayer.create = function() {
    var layer;
    // source line 112, bytecode pc 23
    (layer = new xs.Scene.VipLayer());
    if ((layer && layer.init())) {
        // source line 114, bytecode pc 55
        return layer;
    }
    // source line 116, bytecode pc 57
    return null;
});
// source line 129, bytecode pc 288
(xs.Scene.VipLayer.cfg = {
    m_mainMenu: { zOrder: 0, tag: -1, priority: -5 },
    m_tableView: { priority: -1 },
    giftPopLayer: { priority: -20 }
});
// source line 138, bytecode pc 352
(xs.Scene.VipScene = cc.Scene.extend({
    ctor: function() {
    // source line 135, bytecode pc 12
    this._super();
    // source line 136, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function() {
    var layer;
    if (!this._super()) {
        // source line 140, bytecode pc 19
        return false;
    }
    // source line 143, bytecode pc 49
    (layer = xs.Scene.VipLayer.create());
    // source line 144, bytecode pc 82
    xs.Utils.Node.attachNodes(this, layer);
    // source line 146, bytecode pc 84
    return true;
}
}));
// source line 150, bytecode pc 378
(xs.Scene.VipScene.create = function() {
    var sc;
    // source line 151, bytecode pc 23
    (sc = new xs.Scene.VipScene());
    if ((sc && sc.init())) {
        // source line 153, bytecode pc 55
        return sc;
    }
    // source line 155, bytecode pc 57
    return null;
});
// source line 163, bytecode pc 481
xs.Scene.Mgr.registerScene("VipScene", {
    "class": xs.Scene.VipScene,
    area: [ "VipScene01", "DuiJiuScene01" ],
    type: xs.Constant_SceneType_Cmn
});
