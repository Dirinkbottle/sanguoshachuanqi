// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/ChargeItemCell.js:1
// source line 127, bytecode pc 484
(xs.Views.ChargeItemCell = xs.Views.Table.Cell.BaseCell.extend({
    draw: function(ctx) {
    // source line 8, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(data) {
    // source line 18, bytecode pc 35
    (this.ccbNode = cc.BuilderReader.load("ccb3/ChargeItemCell.ccbi", this));
    // source line 19, bytecode pc 77
    this.ccbNode.setContentSize(cc.size(495, 105));
    // source line 20, bytecode pc 116
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 21, bytecode pc 200
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "lb", offset: cc.p(0, 0), sc: true });
    // source line 23, bytecode pc 248
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 25, bytecode pc 272
    this.m_yuanbaoNum.setString("");
    // source line 26, bytecode pc 323
    this.m_desc_1.setString(xs.Tools.String.createString("auto_name_489"));
    // source line 27, bytecode pc 374
    this.m_desc_2.setString(xs.Tools.String.createString("auto_name_490"));
    // source line 28, bytecode pc 398
    this.m_price.setString("");
    // source line 30, bytecode pc 415
    this.updateCell(data);
    // source line 32, bytecode pc 417
    return true;
},
    updateCell: function(data) {
    // source line 36, bytecode pc 41
    (this.item = xs.Models.Item.createWithBase(data.item_id));
    if (!this.itemIcon) {
        // source line 39, bytecode pc 77
        (this.itemIcon = this.item.createIcon_Grade());
        // source line 40, bytecode pc 130
        xs.Utils.replaceNode(this.ccbNode, this.cfg.icon.tag, this.itemIcon);
    } else {
        // source line 42, bytecode pc 160
        this.itemIcon.reloadData(this.item);
    }
    // source line 46, bytecode pc 202
    this.itemIcon.setSellTag(parseInt(data.tag_id));
    // source line 48, bytecode pc 229
    this.m_yuanbaoNum.setString(data.gift_gold);
    // source line 49, bytecode pc 269
    this.m_price.setString(this.convertPrice(data.product_price));
    if ((this.convertExtra(data.extra_gold) > 0)) {
        // source line 52, bytecode pc 317
        this.m_extra.setVisible(true);
        // source line 53, bytecode pc 365
        this.ccbNode.getChildByTag(this.cfg.extraYuanBao.tag).setVisible(true);
        // source line 54, bytecode pc 425
        this.m_extra.setString((xs.Tools.String.createString("auto_name_491") + data.extra_gold));
    } else {
        // source line 56, bytecode pc 478
        this.ccbNode.getChildByTag(this.cfg.extraYuanBao.tag).setVisible(false);
        // source line 57, bytecode pc 498
        this.m_extra.setVisible(false);
    }
    if (((this.item.getItemType() === xs.Models.ItemType_Charge_YueKa) || (this.item.getItemType() === xs.Models.ItemType_Charge_YueKa_New))) {
        // source line 63, bytecode pc 595
        this.m_desc_1.setVisible(true);
        // source line 64, bytecode pc 615
        this.m_desc_2.setVisible(true);
        // source line 65, bytecode pc 676
        this.m_desc_1.setString((data.product_desc || (this.item.getDescString() || "")));
        // source line 66, bytecode pc 769
        this.m_desc_2.setString(((xs.Tools.String.createString("auto_name_492") + data.remain_day) + xs.Tools.String.createString("auto_name_40")));
    } else {
        // source line 68, bytecode pc 794
        this.m_desc_1.setVisible(false);
        // source line 69, bytecode pc 814
        this.m_desc_2.setVisible(true);
        // source line 70, bytecode pc 875
        this.m_desc_2.setString((data.product_desc || (this.item.getDescString() || "")));
    }
    // source line 75, bytecode pc 888
    this.setBgByItemType();
},
    setItemTag: function() {
},
    setBgByItemType: function() {
    var _bg_1, _bg_2, _bg_3;
    // source line 86, bytecode pc 37
    (_bg_1 = this.ccbNode.getChildByTag(this.cfg.bg1.tag));
    // source line 87, bytecode pc 75
    (_bg_2 = this.ccbNode.getChildByTag(this.cfg.bg2.tag));
    // source line 88, bytecode pc 113
    (_bg_3 = this.ccbNode.getChildByTag(this.cfg.bg3.tag));
    if (((this.item.getItemType() === xs.Models.ItemType_Charge_YueKa) || (this.item.getItemType() === xs.Models.ItemType_Charge_YueKa_New))) {
        // source line 90, bytecode pc 207
        _bg_1.setVisible(false);
        // source line 91, bytecode pc 224
        _bg_2.setVisible(false);
        // source line 92, bytecode pc 241
        _bg_3.setVisible(true);
    } else {
        // source line 94, bytecode pc 263
        _bg_1.setVisible(true);
        // source line 95, bytecode pc 280
        _bg_2.setVisible(false);
        // source line 96, bytecode pc 297
        _bg_3.setVisible(false);
    }
},
    convertPrice: function(price) {
    var _price, mStr;
    // source line 102, bytecode pc 21
    (_price = parseInt(price));
    // source line 104, bytecode pc 109
    (mStr = ((xs.Tools.String.createString("Recharge_list_unitStr_prefix") + parseInt(_price)) + xs.Tools.String.createString("Recharge_list_unitStr")));
    // source line 106, bytecode pc 113
    return mStr;
},
    convertExtra: function(extra) {
    var _extra;
    // source line 111, bytecode pc 21
    (_extra = parseInt(extra));
    // source line 112, bytecode pc 25
    return _extra;
},
    cfg: {
        icon: { tag: 10 },
        extraYuanBao: { tag: 16 },
        bg1: { tag: 20 },
        bg2: { tag: 21 },
        bg3: { tag: 22 },
        ccbCfg: [
            { tag: 11, type: "ls", name: "m_yuanbaoNum", id: "LS_yuanfenInf2" },
            { tag: 12, type: "ls", name: "m_desc_1", id: "LS_liebiaoInf" },
            { tag: 14, type: "ls", name: "m_desc_2", id: "LS_liebiaoInf" },
            { tag: 13, type: "ls", name: "m_price", id: "LS_danyao_chongzhi" },
            { tag: 15, type: "ls", name: "m_extra", id: "LS_liebiaoInf2" }
        ]
    }
}));
// source line 133, bytecode pc 510
(xs.Views.ChargeItemCell.create = function(data) {
    var ret;
    // source line 134, bytecode pc 23
    (ret = new xs.Views.ChargeItemCell());
    if ((ret && ret.init(data))) {
        // source line 136, bytecode pc 59
        return ret;
    }
    // source line 139, bytecode pc 82
    xs.log("xs.Views.ChargeItemCell.create fail!");
    // source line 141, bytecode pc 84
    return null;
});
