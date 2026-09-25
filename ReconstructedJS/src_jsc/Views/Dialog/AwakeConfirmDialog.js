// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/AwakeConfirmDialog.js:1
// source line 135, bytecode pc 418
(xs.Views.Dialog.AwakeConfirmDialog = xs.Views.HungerLayer.extend({
    name: "xs.Views.Dialog.AwakeConfirmDialog",
    ccbCfg: [
        { tag: 2, type: "ls", name: "m_topLabel", id: "LS_popUI2", stringId: "AwakeConfirmTopLabel" },
        { tag: 3, type: "ls", name: "m_bottomLabel", id: "LS_popUI2", stringId: "AwakeConfirmBotLabel" },
        { tag: 10, type: "bs", name: "m_closeBtn", id: "BS_Close" },
        { tag: 12, type: "btn", name: "m_cancelBtn", id: "Btn_CancelLong" },
        { tag: 13, type: "btn", name: "m_confirmBtn", id: "Btn_Confirm" }
    ],
    init: function(param) {
    var i;
    if (!this._super()) {
        // source line 20, bytecode pc 19
        return false;
    }
    // source line 23, bytecode pc 27
    (this.m_topLabel = null);
    // source line 24, bytecode pc 35
    (this.m_bottomLabel = null);
    // source line 26, bytecode pc 50
    (this.m_generalId = param.generalId);
    // source line 27, bytecode pc 65
    (this.m_info = param.info);
    // source line 28, bytecode pc 80
    (this.m_self = param.self);
    // source line 29, bytecode pc 95
    (this.m_callback = param.callback);
    // source line 30, bytecode pc 110
    (this.m_callback2 = param.callbackCancel);
    // source line 31, bytecode pc 125
    (this.m_evolution_id = param.evolution_id);
    // source line 34, bytecode pc 165
    (this.generalModel = xs.Models.General.createWithBase(this.m_generalId));
    // source line 35, bytecode pc 196
    (this.m_generalName = this.generalModel.getNameString(this.m_generalId));
    // source line 37, bytecode pc 247
    (this.ccbNode = cc.BuilderReader.load(xs.Cfg.CCBI.EvolutionConfirm, this));
    // source line 38, bytecode pc 290
    this.ccbNode.setContentSize(cc.size(556, 396));
    // source line 39, bytecode pc 337
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 40, bytecode pc 396
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 42, bytecode pc 439
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 44, bytecode pc 497
    this.m_topLabel.setString((this.m_generalName + xs.Tools.String.createString("AwakeConfirmTopLabel")));
    // source line 46, bytecode pc 502
    (i = 0);
    while ((i < 2)) {
        // source line 47, bytecode pc 536
        this.switchCreateIcon(this.m_info[i], i);
        // source line 46, bytecode pc 550
        (i = (+i + 1));
    }
    // source line 54, bytecode pc 612
    this.m_closeBtn.setOnClickCallBack(this.closeClicked.bind({ self: this }));
    // source line 59, bytecode pc 672
    this.m_confirmBtn.setOnClickCallBack(this.confirmBtnClicked.bind({ self: this, generalId: this.m_evolution_id }));
    // source line 64, bytecode pc 721
    this.m_cancelBtn.setOnClickCallBack(this.closeClicked.bind({ self: this }));
    // source line 69, bytecode pc 723
    return true;
},
    confirmBtnClicked: function() {
    var self, id;
    // source line 73, bytecode pc 9
    (self = this.self);
    // source line 74, bytecode pc 19
    (id = this.generalId);
    // source line 75, bytecode pc 46
    xs.Views.Mgr.hideDialog();
    // source line 76, bytecode pc 94
    self.m_callback.apply({ id: id, self: self.m_self });
},
    closeClicked: function() {
    var self;
    // source line 79, bytecode pc 22
    xs.log_ck("关闭按钮");
    // source line 80, bytecode pc 49
    xs.Views.Mgr.hideDialog();
    // source line 81, bytecode pc 59
    (self = this.self);
    // source line 82, bytecode pc 99
    self.m_callback2.apply({ self: self.m_self });
},
    onEnter: function() {
    // source line 86, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 90, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 91, bytecode pc 36
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 92, bytecode pc 63
    this.m_cancelBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 93, bytecode pc 90
    this.m_confirmBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    onExit: function() {
    // source line 97, bytecode pc 12
    this._super();
},
    switchCreateIcon: function(data, i) {
    var type;
    // source line 102, bytecode pc 26
    (type = Number(data.type));
    // source line 103, bytecode pc 30
    switch (type) {
        case 5:
        // source line 105, bytecode pc 71
        this.createItemIcon(data, i);
        break;
        case 6:
        // source line 109, bytecode pc 97
        this.createGeneralsSoulIcon(data, i);
        break;
        default:
        // source line 113, bytecode pc 125
        xs.warn("this.switchCreateIcon tag error! ");
        break;
    }
},
    createItemIcon: function(data, index) {
    var model, head, str_num, icon_name, lab_num;
    // source line 121, bytecode pc 38
    (model = xs.Models.Item.createWithBase(data.id));
    // source line 122, bytecode pc 56
    (head = model.createIcon_Grade());
    // source line 124, bytecode pc 89
    (str_num = ("x" + String(data.num)));
    // source line 125, bytecode pc 107
    (icon_name = model.getNameString());
    // source line 126, bytecode pc 143
    (lab_num = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
    // source line 128, bytecode pc 166
    lab_num.setString((icon_name + str_num));
    // source line 130, bytecode pc 251
    xs.Utils.Node.attachNodes(head, lab_num, { desc: "c", offset: cc.p(5, -58), sc: false });
    // source line 132, bytecode pc 288
    xs.Utils.replaceNode(this.ccbNode, index, head);
},
    createGeneralsSoulIcon: function(data, index) {
    var generalId, equipData, model, head, str_num, icon_name, lab_num;
    // source line 137, bytecode pc 11
    (generalId = data.id);
    // source line 138, bytecode pc 62
    (equipData = xs.Models.General.createWithBase(generalId.toString()));
    // source line 139, bytecode pc 107
    (model = xs.Models.GeneralSoul.createWithBase(generalId.toString()));
    // source line 140, bytecode pc 125
    (head = model.createIcon_Grade());
    // source line 147, bytecode pc 159
    head.setOnClickCallBack(function() {
    // source line 145, bytecode pc 63
    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: equipData, type: "achieve_nothave" });
}.bind(this));
    // source line 149, bytecode pc 192
    (str_num = ("x" + String(data.num)));
    // source line 150, bytecode pc 210
    (icon_name = model.getNameString());
    // source line 151, bytecode pc 246
    (lab_num = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
    // source line 153, bytecode pc 269
    lab_num.setString((icon_name + str_num));
    // source line 155, bytecode pc 354
    xs.Utils.Node.attachNodes(head, lab_num, { desc: "c", offset: cc.p(5, -58), sc: false });
    // source line 157, bytecode pc 391
    xs.Utils.replaceNode(this.ccbNode, index, head);
}
}));
// source line 163, bytecode pc 449
(xs.Views.Dialog.AwakeConfirmDialog.create = function(param) {
    var ret;
    // source line 164, bytecode pc 28
    (ret = new xs.Views.Dialog.AwakeConfirmDialog());
    if ((ret && ret.init(param))) {
        // source line 166, bytecode pc 64
        return ret;
    }
    // source line 168, bytecode pc 66
    return null;
});
// source line 173, bytecode pc 529
xs.Views.Mgr.registerDialog("AwakeConfirmDialog", { "class": xs.Views.Dialog.AwakeConfirmDialog, styleType: xs.Constant_DlgStyleType_Large });
