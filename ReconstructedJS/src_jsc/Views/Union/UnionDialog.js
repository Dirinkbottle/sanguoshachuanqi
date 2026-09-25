// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Union/UnionDialog.js:1
// source line 345, bytecode pc 2340
(xs.Views.Union.UnionDialog = xs.Views.HungerLayer.extend({
    name: "UnionDialog",
    clickType: { previous: 1, next: 2 },
    cfg: {
        btnClose: { priority: -1 },
        ccbCfg: [
            { tag: 50, type: "btn", name: "btnClose", id: "Btn_Close" },
            { tag: 1, type: "ls", name: "lblTitle", id: "LS_huodong_title" }
        ]
    },
    menuTableViewCfg: {
        viewSize: { width: 840, height: 100 },
        cellSize: { width: 140, height: 100 },
        itemCfg: [
            {
                title: xs.Tools.String.createString("auto_name_526"),
                tag: "unionInfo",
                imgName: "GuildDialog_gonghuixinxi",
                area: "GuildDialog",
                className: xs.Views.Union.UnionInfoLayer,
                isOpen: true
            },
            {
                title: xs.Tools.String.createString("auto_name_527"),
                tag: "unionMember",
                imgName: "GuildDialog_gonghuichengyuan",
                area: "GuildDialog",
                className: xs.Views.Union.UnionMemberLayer,
                isOpen: true
            },
            {
                title: xs.Tools.String.createString("auto_name_528"),
                tag: "unionMemberShip",
                imgName: "GuildDialog_ruhuishenqing",
                area: "GuildDialog",
                className: xs.Views.Union.UnionMembershipLayer,
                isOpen: true
            },
            {
                title: xs.Tools.String.createString("auto_name_529"),
                tag: "unionDonate",
                imgName: "GuildDialog_gonghuijuanxian",
                area: "GuildDialog",
                className: xs.Views.Union.UnionDonationLayer,
                isOpen: true
            },
            {
                title: xs.Tools.String.createString("auto_name_530"),
                tag: "unionRank",
                imgName: "GuildDialog_paihangbang",
                area: "GuildDialog",
                className: xs.Views.Union.UnionRankingLayer,
                isOpen: true
            },
            {
                title: xs.Tools.String.createString("auto_name_534"),
                tag: "unionWar",
                imgName: "GuildDialog_gonghuizhanchang",
                area: "GuildDialog",
                className: xs.Views.Union.UnionCombatMainLayer,
                isOpen: true
            },
            {
                title: xs.Tools.String.createString("auto_name_531"),
                tag: "unionDepot",
                imgName: "GuildDialog_gonghuicangku",
                area: "GuildDialog",
                className: xs.Views.Union.UnionDepotLayer,
                isOpen: true
            },
            {
                title: xs.Tools.String.createString("auto_name_532"),
                tag: "unionShop",
                imgName: "GuildDialog_gonghuishangdian",
                area: "GuildDialog",
                className: xs.Views.Union.UnionShopLayer,
                isOpen: true
            },
            {
                title: xs.Tools.String.createString("auto_name_533"),
                tag: "unionMap",
                imgName: "GuildDialog_gonghuifuben",
                area: "GuildDialog",
                className: null,
                isOpen: false
            }
        ],
        selectedImgCfg: { imgName: "GuildDialog_xuanzhong", area: "GuildDialog", zOrder: -1, tag: 0 }
    },
    menuTableViewCfg_verForPublish: {
        viewSize: { width: 840, height: 100 },
        cellSize: { width: 140, height: 100 },
        itemCfg: [
            {
                title: xs.Tools.String.createString("auto_name_526"),
                tag: "unionInfo",
                imgName: "GuildDialog_gonghuixinxi",
                area: "GuildDialog",
                className: xs.Views.Union.UnionInfoLayer,
                isOpen: true
            },
            {
                title: xs.Tools.String.createString("auto_name_527"),
                tag: "unionMember",
                imgName: "GuildDialog_gonghuichengyuan",
                area: "GuildDialog",
                className: xs.Views.Union.UnionMemberLayer,
                isOpen: true
            },
            {
                title: xs.Tools.String.createString("auto_name_528"),
                tag: "unionMemberShip",
                imgName: "GuildDialog_ruhuishenqing",
                area: "GuildDialog",
                className: xs.Views.Union.UnionMembershipLayer,
                isOpen: true
            },
            {
                title: xs.Tools.String.createString("auto_name_529"),
                tag: "unionDonate",
                imgName: "GuildDialog_gonghuijuanxian",
                area: "GuildDialog",
                className: xs.Views.Union.UnionDonationLayer,
                isOpen: true
            },
            {
                title: xs.Tools.String.createString("auto_name_530"),
                tag: "unionRank",
                imgName: "GuildDialog_paihangbang",
                area: "GuildDialog",
                className: xs.Views.Union.UnionRankingLayer,
                isOpen: true
            },
            {
                title: xs.Tools.String.createString("auto_name_534"),
                tag: "unionWar",
                imgName: "GuildDialog_gonghuizhanchang",
                area: "GuildDialog",
                className: xs.Views.Union.UnionCombatMainLayer,
                isOpen: true
            },
            {
                title: xs.Tools.String.createString("auto_name_531"),
                tag: "unionDepot",
                imgName: "GuildDialog_gonghuicangku",
                area: "GuildDialog",
                className: xs.Views.Union.UnionDepotLayer,
                isOpen: true
            },
            {
                title: xs.Tools.String.createString("auto_name_532"),
                tag: "unionShop",
                imgName: "GuildDialog_gonghuishangdian",
                area: "GuildDialog",
                className: xs.Views.Union.UnionShopLayer,
                isOpen: true
            }
        ],
        selectedImgCfg: { imgName: "GuildDialog_xuanzhong", area: "GuildDialog", zOrder: -1, tag: 0 }
    },
    init: function(param) {
    var i, item;
    if (!this._super()) {
        // source line 207, bytecode pc 19
        return false;
    }
    // source line 209, bytecode pc 29
    (this.params = param);
    // source line 210, bytecode pc 37
    (this.btnClose = null);
    // source line 211, bytecode pc 45
    (this.lblTitle = null);
    // source line 214, bytecode pc 104
    xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().initUnionWarEmbattleTimeCfg();
    // source line 217, bytecode pc 140
    (this.ccbNode = cc.BuilderReader.load("ccb3/GuildDialog.ccbi", this));
    // source line 218, bytecode pc 183
    this.ccbNode.setContentSize(cc.size(935, 613));
    // source line 219, bytecode pc 230
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 220, bytecode pc 283
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 221, bytecode pc 331
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 223, bytecode pc 382
    this.lblTitle.setString(xs.Tools.String.createString("auto_name_526"));
    // source line 226, bytecode pc 440
    (this.pageView = xs.Views.TablePage.create(cc.size(889, 421)));
    if (xs.isVersionForPublish) {
        // source line 229, bytecode pc 460
        (i = 0);
        while ((i < this.menuTableViewCfg_verForPublish.itemCfg.length)) {
            // source line 230, bytecode pc 485
            (item = this.menuTableViewCfg_verForPublish.itemCfg[i]);
            // source line 231, bytecode pc 512
            xs.log_zhz("item-true", item);
            // source line 232, bytecode pc 547
            this.pageView.addPageWhitConstruct("", item.className, null);
            // source line 229, bytecode pc 561
            (i = (+i + 1));
        }
    } else {
        // source line 235, bytecode pc 598
        (i = 0);
        while ((i < this.menuTableViewCfg.itemCfg.length)) {
            // source line 236, bytecode pc 623
            (item = this.menuTableViewCfg.itemCfg[i]);
            // source line 237, bytecode pc 650
            xs.log_zhz("item-false", item);
            // source line 238, bytecode pc 685
            this.pageView.addPageWhitConstruct("", item.className, null);
            // source line 235, bytecode pc 699
            (i = (+i + 1));
        }
    }
    // source line 242, bytecode pc 817
    xs.Utils.Node.attachNodes(this.ccbNode, this.pageView, { offset: cc.p(30, 100), desc: "lb", sc: true });
    if (xs.isVersionForPublish) {
        // source line 246, bytecode pc 877
        (this.menuTableView = xs.Views.Table.MenuTableView.create(this.menuTableViewCfg_verForPublish));
    } else {
        // source line 248, bytecode pc 927
        (this.menuTableView = xs.Views.Table.MenuTableView.create(this.menuTableViewCfg));
    }
    // source line 252, bytecode pc 964
    this.menuTableView.setClickCallBack(function(param, idx) {
    // source line 251, bytecode pc 20
    return this.selectPage(param, idx);
}.bind(this));
    // source line 253, bytecode pc 1048
    xs.Utils.Node.attachNodes(this.ccbNode, this.menuTableView, { desc: "lb", offset: cc.p(46, 0) });
    // source line 257, bytecode pc 1087
    (this.leftBtn = xs.Views.Btn.create("Btn_PreviousePageSmall"));
    // source line 258, bytecode pc 1172
    xs.Utils.Node.attachNodes(this.ccbNode, this.leftBtn, { desc: "lb", offset: cc.p(24, 40) });
    // source line 261, bytecode pc 1209
    this.leftBtn.setOnClickCallBack(function() {
    // source line 260, bytecode pc 17
    this.menuTableView.moveToLeft();
}.bind(this));
    // source line 264, bytecode pc 1248
    (this.rightBtn = xs.Views.Btn.create("Btn_NextPageSmall"));
    // source line 265, bytecode pc 1334
    xs.Utils.Node.attachNodes(this.ccbNode, this.rightBtn, { desc: "lb", offset: cc.p(910, 40) });
    // source line 268, bytecode pc 1371
    this.rightBtn.setOnClickCallBack(function() {
    // source line 267, bytecode pc 17
    this.menuTableView.moveToRight();
}.bind(this));
    // source line 271, bytecode pc 1395
    this.btnClose.setOnClickCallBack(function() {
    // source line 272, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    if ((this.params && this.params.pageIdx)) {
        // source line 277, bytecode pc 1453
        this.menuTableView.setSelectedMenuIdx(this.params.pageIdx);
        // source line 278, bytecode pc 1502
        this.selectPage(this.menuTableViewCfg.itemCfg[this.params.pageIdx], this.params.pageIdx);
    }
    // source line 281, bytecode pc 1504
    return true;
},
    onEnter: function() {
    // source line 285, bytecode pc 12
    this._super();
    // source line 286, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.dialogShake, xs.Constant_Notify_Event_DonateSucess);
    // source line 287, bytecode pc 106
    xs.Utils.Notify.addObserver(this, this.updataMenuView, xs.Constant_Notify_Union_hit);
},
    onExit: function() {
    // source line 291, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_DonateSucess);
    // source line 292, bytecode pc 79
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Union_hit);
    // source line 293, bytecode pc 92
    this._super();
},
    updataMenuView: function() {
    // source line 297, bytecode pc 17
    this.menuTableView.refreshTableViewAutoOffset();
},
    dialogShake: function() {
    var scaleTo1, scaleTo2, ease, actions;
    // source line 302, bytecode pc 36
    (scaleTo1 = cc.ScaleTo.create(0.1, 0.95));
    // source line 303, bytecode pc 69
    (scaleTo2 = cc.ScaleTo.create(0.4, 1));
    // source line 304, bytecode pc 104
    (ease = cc.EaseElasticOut.create(scaleTo2, 0.8));
    // source line 305, bytecode pc 154
    (actions = xs.Utils.Action.combineSequence([ scaleTo1, ease ]));
    if (this) {
        // source line 307, bytecode pc 177
        this.runAction(actions);
    }
},
    selectPage: function(param, idx) {
    var curView;
    // source line 313, bytecode pc 26
    xs.log_xjf(("idx = " + idx));
    if (((param.className == null) || (param.isOpen == false))) {
        // source line 317, bytecode pc 117
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_51"));
        // source line 318, bytecode pc 119
        return false;
    }
    if ((param.tag == "unionMemberShip")) {
        if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getUserRole() == 3)) {
            // source line 324, bytecode pc 264
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_535"));
            // source line 325, bytecode pc 266
            return false;
        }
    }
    if (((param.tag == "unionWar") && (xs.isShowUnionWar == false))) {
        // source line 330, bytecode pc 363
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_51"));
        // source line 331, bytecode pc 365
        return false;
    }
    // source line 334, bytecode pc 387
    this.pageView.selectPage(idx);
    // source line 335, bytecode pc 414
    this.lblTitle.setString(param.title);
    // source line 337, bytecode pc 435
    (curView = this.pageView.getCurSelPageView());
    if ((curView && curView.refreshFromMenuClick)) {
        // source line 339, bytecode pc 472
        curView.refreshFromMenuClick();
    }
    // source line 342, bytecode pc 474
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 346, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 347, bytecode pc 36
    this.pageView.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 348, bytecode pc 78
    this.btnClose.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.priority));
    // source line 349, bytecode pc 120
    this.menuTableView.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.priority));
    // source line 350, bytecode pc 162
    this.leftBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.priority));
    // source line 351, bytecode pc 204
    this.rightBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.priority));
}
}));
// source line 355, bytecode pc 2371
(xs.Views.Union.UnionDialog.create = function(param) {
    var ret;
    // source line 356, bytecode pc 28
    (ret = new xs.Views.Union.UnionDialog());
    if ((ret && ret.init(param))) {
        // source line 358, bytecode pc 64
        return ret;
    }
    // source line 360, bytecode pc 66
    return null;
});
// source line 363, bytecode pc 2402
(xs.Views.Union.UnionDialog.load = function() {
    // source line 364, bytecode pc 32
    xs.Factorys.Sprite.load("GuildDialog");
});
// source line 366, bytecode pc 2433
(xs.Views.Union.UnionDialog.unload = function() {
    // source line 367, bytecode pc 32
    xs.Factorys.Sprite.unload("GuildDialog");
});
// source line 374, bytecode pc 2523
xs.Views.Mgr.registerDialog("UnionDialog", { "class": xs.Views.Union.UnionDialog, styleType: xs.Constant_DlgStyleType_Large, area: "DlgCmn" });
