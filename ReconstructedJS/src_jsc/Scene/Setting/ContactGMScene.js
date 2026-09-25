// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Setting/ContactGMScene.js:1
// source line 7, bytecode pc 16
(xs.Scene.SingleViewScene_Type_Contact = 0);
// source line 8, bytecode pc 33
(xs.Scene.SingleViewScene_Type_Help = 1);
// source line 16, bytecode pc 97
(xs.Scene.SingleViewScene = cc.Scene.extend({
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(type) {
    var layer;
    if (!this._super()) {
        // source line 18, bytecode pc 19
        return false;
    }
    // source line 21, bytecode pc 53
    (layer = xs.Scene.SingleViewScene_Layer.create(type));
    // source line 22, bytecode pc 70
    this.addChild(layer);
    // source line 24, bytecode pc 72
    return true;
}
}));
// source line 28, bytecode pc 123
(xs.Scene.SingleViewScene.create = function(type) {
    var ret;
    // source line 29, bytecode pc 23
    (ret = new xs.Scene.SingleViewScene());
    if ((ret && ret.init(type))) {
        // source line 31, bytecode pc 59
        return ret;
    }
    // source line 33, bytecode pc 61
    return null;
});
// source line 41, bytecode pc 208
xs.Scene.Mgr.registerScene("SingleViewScene", { "class": xs.Scene.SingleViewScene, area: [], type: xs.Constant_SceneType_Cmn });
// source line 96, bytecode pc 501
(xs.Scene.SingleViewScene_Layer = cc.Layer.extend({
    ctor: function() {
    // source line 47, bytecode pc 12
    this._super();
    // source line 48, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
    // source line 51, bytecode pc 60
    (this.contactData = this.cfg.contactData);
    // source line 54, bytecode pc 78
    (this.helpData = this.cfg.helpData);
},
    init: function(type) {
    var visibleSize, playerInfo, mainMenu;
    // source line 59, bytecode pc 12
    this._super();
    // source line 61, bytecode pc 37
    (visibleSize = xs.director.getVisibleSize());
    // source line 63, bytecode pc 70
    xs.Tools.UI.addCommonBg(this, true, true);
    // source line 66, bytecode pc 100
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 67, bytecode pc 136
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 68, bytecode pc 192
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 71, bytecode pc 284
    (this.pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 72, bytecode pc 304
    this.pageView.setListener(this);
    if ((type === xs.Scene.SingleViewScene_Type_Contact)) {
        // source line 74, bytecode pc 432
        this.pageView.addPageWhitConstruct(xs.Tools.String.createString("titleStr_CustomService"), xs.Views.SingleViewModel, { param: { viewType: type, data: this.contactData } });
    } else {
        if ((type === xs.Scene.SingleViewScene_Type_Help)) {
            // source line 76, bytecode pc 565
            this.pageView.addPageWhitConstruct(xs.Tools.String.createString("titleStr_Help"), xs.Views.SingleViewModel, { param: { viewType: type, data: this.helpData } });
        }
    }
    // source line 79, bytecode pc 624
    xs.Utils.Node.attachNodes(this, this.pageView, { desc: "lb", sc: true });
    // source line 83, bytecode pc 658
    (mainMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 85, bytecode pc 660
    return true;
},
    cfg: {
        contactData: [
            { title: xs.Tools.String.createString("auto_name_192"), content: "4007202233-3 ; 021-51369888" },
            { title: xs.Tools.String.createString("auto_name_193"), content: "375175089" }
        ],
        helpData: [
            {
                title: xs.Tools.String.createString("auto_name_194"),
                content: xs.Tools.String.createString("auto_name_195")
            }
        ]
    }
}));
// source line 101, bytecode pc 527
(xs.Scene.SingleViewScene_Layer.create = function(type) {
    var ret;
    // source line 102, bytecode pc 23
    (ret = new xs.Scene.SingleViewScene_Layer());
    if ((ret && ret.init(type))) {
        // source line 104, bytecode pc 59
        return ret;
    }
    // source line 106, bytecode pc 61
    return null;
});
// source line 151, bytecode pc 621
(xs.Views.SingleViewModel = cc.Layer.extend({
    ctor: function() {
    // source line 114, bytecode pc 12
    this._super();
    // source line 115, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(data) {
    // source line 119, bytecode pc 12
    this._super();
    // source line 120, bytecode pc 27
    (this.listDatas = data.data);
    // source line 122, bytecode pc 84
    (this.tableView = cc.TableView.create(this, xs.Views.TablePage.getTableViewSize()));
    // source line 123, bytecode pc 104
    this.tableView.setDelegate(this);
    // source line 124, bytecode pc 133
    this.tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 125, bytecode pc 162
    this.tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 128, bytecode pc 252
    xs.Utils.Node.attachNodes(this, this.tableView, { desc: "lb", offset: xs.Views.TablePage.getTableViewOffset(), sc: true });
    // source line 131, bytecode pc 270
    this.tableView.reloadData();
    // source line 133, bytecode pc 272
    return true;
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 137, bytecode pc 23
    return cc.size(860, 120);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 141, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 143, bytecode pc 67
        (cell = xs.Views.ContactGMViewCell.create(this.listDatas[idx]));
    } else {
        // source line 145, bytecode pc 98
        cell.updateCell(this.listDatas[idx]);
    }
    // source line 148, bytecode pc 102
    return cell;
},
    numberOfCellsInTableView: function(table) {
    if (this.listDatas) {
        // source line 153, bytecode pc 22
        return this.listDatas.length;
    }
    // source line 155, bytecode pc 24
    return 0;
}
}));
// source line 160, bytecode pc 647
(xs.Views.SingleViewModel.create = function(data) {
    var ret;
    // source line 161, bytecode pc 23
    (ret = new xs.Views.SingleViewModel());
    if ((ret && ret.init(data))) {
        // source line 163, bytecode pc 59
        return ret;
    }
    // source line 165, bytecode pc 61
    return null;
});
// source line 194, bytecode pc 731
(xs.Views.ContactGMViewCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 171, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 175, bytecode pc 12
    this._super();
    // source line 176, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(data) {
    var ccbNode;
    if (!this._super()) {
        // source line 181, bytecode pc 19
        return false;
    }
    // source line 184, bytecode pc 50
    (ccbNode = xs.ccb_reader.load("ccb3/0_6_2_ContactUsCell.ccbi"));
    // source line 185, bytecode pc 74
    (this.title = ccbNode.getChildByTag(10));
    // source line 186, bytecode pc 98
    (this.contact = ccbNode.getChildByTag(11));
    // source line 187, bytecode pc 115
    this.addChild(ccbNode);
    // source line 189, bytecode pc 132
    this.updateCell(data);
    // source line 191, bytecode pc 134
    return true;
},
    updateCell: function(data) {
    // source line 195, bytecode pc 26
    this.title.setString(data.title);
    // source line 196, bytecode pc 53
    this.contact.setString(data.content);
}
}));
// source line 200, bytecode pc 757
(xs.Views.ContactGMViewCell.create = function(data) {
    var ret;
    // source line 201, bytecode pc 23
    (ret = new xs.Views.ContactGMViewCell());
    if ((ret && ret.init(data))) {
        // source line 203, bytecode pc 59
        return ret;
    }
    // source line 205, bytecode pc 61
    return null;
});
