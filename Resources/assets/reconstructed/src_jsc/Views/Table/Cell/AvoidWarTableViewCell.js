// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/AvoidWarTableViewCell.js:1
// source line 125, bytecode pc 501
(xs.Views.AvoidWarTableViewCell = xs.Views.Table.Cell.BaseCell.extend({
    draw: function(ctx) {
    // source line 7, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(model) {
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 28
    (this.m_baseTouchPriority = -1);
    // source line 22, bytecode pc 79
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.WorshipWineInfoCell, this));
    // source line 23, bytecode pc 115
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 25, bytecode pc 123
    (this.m_title = null);
    // source line 26, bytecode pc 131
    (this.m_desc = null);
    // source line 27, bytecode pc 139
    (this.m_numStr = null);
    // source line 28, bytecode pc 147
    (this.m_num = null);
    // source line 29, bytecode pc 155
    (this.m_btn = null);
    // source line 30, bytecode pc 163
    (this.m_money = null);
    // source line 32, bytecode pc 211
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.cfg.ccbCfg, this);
    // source line 34, bytecode pc 252
    (this.m_moneyIcon = this.m_ccbNode.getChildByTag(this.cfg.m_moneyIcon.tag));
    // source line 36, bytecode pc 269
    this.updateCell(model);
    // source line 38, bytecode pc 271
    return true;
},
    updateCell: function(model) {
    var itemNum;
    // source line 42, bytecode pc 9
    (this.model = model);
    // source line 44, bytecode pc 42
    this.m_title.setString(model.getNameString());
    // source line 45, bytecode pc 75
    this.m_desc.setString(model.getDescString());
    // source line 47, bytecode pc 141
    (itemNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(model.getItemId()));
    // source line 48, bytecode pc 183
    xs.dump((model.getItemId() + " itemNum"), itemNum);
    if ((itemNum <= 0)) {
        // source line 50, bytecode pc 213
        this.m_num.setVisible(false);
        // source line 51, bytecode pc 233
        this.m_moneyIcon.setVisible(true);
        // source line 52, bytecode pc 253
        this.m_money.setVisible(true);
        // source line 54, bytecode pc 314
        xs.Utils.replaceIcon(this.m_ccbNode, this.cfg.m_icon.tag, model.createHeadView());
        // source line 56, bytecode pc 365
        this.m_numStr.setString(xs.Tools.String.createString("price"));
        // source line 57, bytecode pc 404
        this.m_money.setString(("X" + model.getPrice()));
        // source line 59, bytecode pc 428
        this.m_btn.setStringById("1070610032");
        // source line 60, bytecode pc 466
        this.m_btn.setOnClickCallBack(this.buyItemCallback.bind(this));
    } else {
        if ((itemNum > 0)) {
            // source line 62, bytecode pc 501
            this.m_num.setVisible(true);
            // source line 63, bytecode pc 521
            this.m_moneyIcon.setVisible(false);
            // source line 64, bytecode pc 541
            this.m_money.setVisible(false);
            // source line 66, bytecode pc 602
            xs.Utils.replaceIcon(this.m_ccbNode, this.cfg.m_icon.tag, model.createIcon_GradeAndNum());
            // source line 68, bytecode pc 653
            this.m_numStr.setString(xs.Tools.String.createString("number"));
            // source line 69, bytecode pc 686
            this.m_num.setString(model.getItemNum());
            // source line 71, bytecode pc 710
            this.m_btn.setStringById("1070610033");
            // source line 72, bytecode pc 748
            this.m_btn.setOnClickCallBack(this.useItemCallback.bind(this));
        }
    }
},
    buyItemCallback: function() {
    var param;
    // source line 78, bytecode pc 9
    (param = {});
    // source line 79, bytecode pc 29
    (param.item_advanced_id = this.model.pk_id);
    // source line 80, bytecode pc 55
    (param.discount_price = this.model.getPrice());
    // source line 81, bytecode pc 65
    (param.item_num = 1);
    // source line 82, bytecode pc 75
    (param.currency_type = 1);
    // source line 86, bytecode pc 114
    xs.Tools.Net.requestBuyGood(param, function(jsonObj) {
    // source line 85, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_485"));
}, this);
},
    useItemCallback: function() {
    var param;
    // source line 91, bytecode pc 9
    (param = {});
    // source line 92, bytecode pc 35
    (param.user_item_id = this.model.getPkId());
    // source line 93, bytecode pc 45
    (param.item_num = 1);
    // source line 100, bytecode pc 90
    xs.Tools.Net.requestUseItem(param, function(jsonObj) {
    // source line 95, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("str_useAvoidCardSucess"));
}, function() {
}, this);
},
    setListener: function(listener) {
    // source line 104, bytecode pc 9
    (this.m_listener = listener);
},
    setBaseTouchPriority: function(priority) {
    // source line 109, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 110, bytecode pc 51
    this.m_btn.setTouchPriority((this.m_baseTouchPriority + this.cfg.m_btn.priority));
},
    cfg: {
        m_icon: { tag: 10 },
        m_btn: { tag: 15, priority: 1 },
        m_moneyIcon: { tag: 16 },
        ccbCfg: [
            { tag: 11, type: "ls", name: "m_title", id: "LS_wujiangInf1" },
            { tag: 12, type: "ls", name: "m_desc", id: "LS_liebiaoInf" },
            { tag: 13, type: "ls", name: "m_numStr", id: "LS_liebiaoInf" },
            { tag: 14, type: "ls", name: "m_num", id: "LS_liebiaoInf2" },
            { tag: 15, type: "btn", name: "m_btn", id: "Btn_Buy" },
            { tag: 17, type: "ls", name: "m_money", id: "LS_liebiaoInf2" }
        ]
    }
}));
// source line 130, bytecode pc 527
(xs.Views.AvoidWarTableViewCell.create = function(model) {
    var ret;
    // source line 131, bytecode pc 23
    (ret = new xs.Views.AvoidWarTableViewCell());
    if ((ret && ret.init(model))) {
        // source line 133, bytecode pc 59
        return ret;
    }
    // source line 136, bytecode pc 88
    xs.assert(false, "xs.Views.AvoidWarTableViewCell.create fail!", ret);
    // source line 138, bytecode pc 90
    return null;
});
