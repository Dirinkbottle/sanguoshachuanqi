// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/MulitiFightDialog.js:1
// source line 108, bytecode pc 210
(xs.Views.Dialog.MulitiFightDialog = xs.Views.HungerLayer.extend({
    name: "MulitiFightDialog",
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(params) {
    // source line 15, bytecode pc 12
    this._super();
    // source line 17, bytecode pc 27
    (this.m_showListDialog = params.showListDialog);
    // source line 19, bytecode pc 51
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 20, bytecode pc 66
    this.setTouchEnabled(true);
    // source line 22, bytecode pc 102
    (this.node = xs.ccb_reader.load("ccb3/0_7_10_MulitiFightResult.ccbi", this));
    // source line 25, bytecode pc 181
    xs.Utils.replaceLabelWithString(this.node, this.cfg.title.tag, [ "LS_popUI1" ], [ params.dungeonName ]);
    // source line 28, bytecode pc 219
    (this.infoTableView = xs.Views.Table.MulitiFightResultTableView.create());
    // source line 29, bytecode pc 246
    this.infoTableView.setData(params.mulitiFightModel);
    // source line 31, bytecode pc 337
    xs.Utils.Node.attachNodes(this.node, this.infoTableView, { desc: "lb", offset: cc.p(60, 80), sc: true });
    // source line 32, bytecode pc 380
    this.node.setContentSize(cc.size(810, 609));
    // source line 33, bytecode pc 427
    this.node.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 34, bytecode pc 511
    xs.Utils.Node.attachNodes(this, this.node, { desc: "c", offset: cc.p(0, 0), sc: true });
    // source line 37, bytecode pc 602
    (this.confirmBtn = xs.Utils.replaceButton(this.node, this.cfg.confirmBtn.tag, xs.Views.Btn.createWithStringId("Btn_btn1", "1071310061")));
    // source line 39, bytecode pc 640
    this.confirmBtn.setOnClickCallBack(this.end.bind(this));
    // source line 42, bytecode pc 725
    (this.closeBtn = xs.Utils.replaceButton(this.node, this.cfg.closeBtn.tag, xs.Views.Btn.create("Btn_Close")));
    // source line 44, bytecode pc 763
    this.closeBtn.setOnClickCallBack(this.end.bind(this));
    // source line 46, bytecode pc 765
    return true;
},
    end: function() {
    var _modelMap, data, dropData, otherData, i;
    // source line 51, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 53, bytecode pc 62
    (_modelMap = xs.Scene.Mgr.loadStatusAndClear("PveFight_RandEvent"));
    if (_modelMap) {
        if (this.m_showListDialog) {
            // source line 56, bytecode pc 93
            (data = _modelMap.RandEvent);
            // source line 57, bytecode pc 102
            (dropData = []);
            // source line 58, bytecode pc 111
            (otherData = []);
            // source line 59, bytecode pc 116
            (i = 0);
            while ((i < data.length)) {
                if ((data[i].type == xs.Constant_RandEvent_adventure)) {
                    // source line 61, bytecode pc 173
                    dropData.push(data[i]);
                } else {
                    // source line 63, bytecode pc 201
                    otherData.push(data[i]);
                }
                // source line 59, bytecode pc 215
                (i = (+i + 1));
            }
            if ((dropData.length == 0)) {
                // source line 67, bytecode pc 286
                xs.Views.Mgr.showDialogByName("RandEvent", _modelMap);
            } else {
                // source line 71, bytecode pc 368
                xs.Views.Mgr.showDialogByName("AdventureDropDialog", { dropData: dropData, otherData: { RandEvent: otherData }, title: "adventureDrop" });
            }
        } else {
            // source line 75, bytecode pc 410
            xs.Views.Mgr.showDialogByName("RandEvent", _modelMap);
        }
    }
},
    onTouchBegan: function(touch, e) {
    // source line 81, bytecode pc 1
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 85, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 86, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 87, bytecode pc 71
    this.confirmBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.confirmBtn.priority));
    // source line 88, bytecode pc 113
    this.closeBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.closeBtn.priority));
    // source line 89, bytecode pc 155
    this.infoTableView.setTouchPriority((this.m_baseTouchPriority + this.cfg.tableView.priority));
},
    cfg: {
        title: { tag: 10 },
        tableView: { priority: -1 },
        confirmBtn: { tag: 11, priority: -1 },
        closeBtn: { tag: 12, priority: -1 }
    }
}));
// source line 113, bytecode pc 241
(xs.Views.Dialog.MulitiFightDialog.create = function(params) {
    var ret;
    // source line 114, bytecode pc 28
    (ret = new xs.Views.Dialog.MulitiFightDialog());
    if ((ret && ret.init(params))) {
        // source line 116, bytecode pc 64
        return ret;
    }
    // source line 119, bytecode pc 66
    return null;
});
// source line 126, bytecode pc 366
xs.Views.Mgr.registerDialog("MulitiFightDialog", {
    "class": xs.Views.Dialog.MulitiFightDialog,
    styleType: xs.Constant_DlgStyleType_Large,
    dlgType: xs.Cfg.Scene.CommonScene.Dialog,
    viewType: xs.Constant_ViewType_Dlg
});
