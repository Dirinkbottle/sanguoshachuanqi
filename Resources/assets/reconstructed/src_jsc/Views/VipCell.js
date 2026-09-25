// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/VipCell.js:1
// source line 120, bytecode pc 163
(xs.Views.VipCell = cc.TableViewCell.extend({
    name: "VipCell",
    draw: function(ctx) {
    // source line 15, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 18, bytecode pc 12
    this._super();
    // source line 19, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    var btn;
    if (!this._super()) {
        // source line 23, bytecode pc 19
        return false;
    }
    // source line 26, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 27, bytecode pc 35
    (this.m_descSplitLab = null);
    // source line 28, bytecode pc 43
    (this.m_giftBtn = null);
    // source line 29, bytecode pc 51
    (this.m_baseTouchPriority = 0);
    // source line 30, bytecode pc 59
    (this.m_listener = null);
    // source line 31, bytecode pc 67
    (this.m_data = null);
    // source line 33, bytecode pc 75
    (this.m_titleLab = null);
    // source line 34, bytecode pc 83
    (this.m_buyTxtLab = null);
    // source line 35, bytecode pc 91
    (this.m_vipSp = null);
    // source line 36, bytecode pc 99
    (this.m_vipLvLab = null);
    // source line 37, bytecode pc 107
    (this.m_giftTxtLab = null);
    // source line 39, bytecode pc 145
    this.setContentSize(cc.size(408, 532));
    // source line 41, bytecode pc 196
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.VipCell, this));
    // source line 42, bytecode pc 279
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "lb", sc: false, offset: { x: 8, y: 0 } });
    // source line 44, bytecode pc 341
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.VipCell.cfg.ccbCfg, this);
    // source line 46, bytecode pc 393
    (btn = this.m_ccbNode.getChildByTag(xs.Views.VipCell.cfg.m_giftBtn.tag));
    // source line 47, bytecode pc 462
    (this.m_giftBtn = xs.Libs.Views.Button.createWithSpriteFrame(xs.Cfg.Sprite.VipScene01.btn_gift.frameName));
    // source line 48, bytecode pc 495
    this.m_giftBtn.setPosition(btn.getPosition());
    // source line 49, bytecode pc 522
    this.m_giftBtn.addCallBackForEvent(this, this.showGift);
    // source line 50, bytecode pc 563
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_giftBtn);
    // source line 51, bytecode pc 594
    xs.Utils.Node.safeRemoveChild(btn);
    // source line 53, bytecode pc 596
    return true;
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 56, bytecode pc 12
    this._super();
    // source line 58, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 61, bytecode pc 71
            (touchPriority = parent.getTouchPriority());
            // source line 63, bytecode pc 88
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 66, bytecode pc 111
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 70, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 73, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 74, bytecode pc 65
    this.m_giftBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.VipCell.cfg.m_giftBtn.priority));
},
    setListener: function(listener) {
    // source line 77, bytecode pc 9
    (this.m_listener = listener);
},
    setVipData: function(data) {
    // source line 80, bytecode pc 9
    (this.m_data = data);
    // source line 81, bytecode pc 22
    this.updateView();
},
    setVipLv: function(lv) {
    // source line 84, bytecode pc 43
    this.m_vipLvLab.setString(xs.Utils.parseStringSafe(lv));
    // source line 85, bytecode pc 56
    this.updateView();
},
    updateView: function() {
    var pos, contentSize, sSize;
    if (this.m_data) {
        // source line 93, bytecode pc 44
        xs.Utils.Node.safeRemoveChild(this.m_descSplitLab);
        // source line 97, bytecode pc 95
        (this.m_descSplitLab = xs.Views.SplitLableTTF.create(this.m_data.getDescObj()));
        // source line 98, bytecode pc 134
        this.m_descSplitLab.setAnchorPoint(cc.p(0, 1));
        // source line 99, bytecode pc 176
        this.m_descSplitLab.setPosition(cc.p(26, 456));
        // source line 100, bytecode pc 217
        xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_descSplitLab);
        // source line 102, bytecode pc 253
        this.m_titleLab.setString(this.m_data.getTitle());
        // source line 104, bytecode pc 274
        (pos = this.m_buyTxtLab.getPosition());
        // source line 105, bytecode pc 295
        (contentSize = this.m_buyTxtLab.getContentSize());
        // source line 106, bytecode pc 316
        (sSize = this.m_vipSp.getContentSize());
        // source line 107, bytecode pc 390
        this.m_vipSp.setPosition(cc.p(((pos.x + contentSize.width) + (sSize.width / 2)), pos.y));
        // source line 108, bytecode pc 411
        (pos = this.m_vipSp.getPosition());
        // source line 109, bytecode pc 432
        (contentSize = this.m_vipSp.getContentSize());
        // source line 110, bytecode pc 453
        (sSize = this.m_vipLvLab.getContentSize());
        // source line 111, bytecode pc 513
        this.m_vipLvLab.setPosition(((pos.x + (contentSize.width / 2)) + (sSize.width / 2)), pos.y);
        // source line 112, bytecode pc 534
        (pos = this.m_vipLvLab.getPosition());
        // source line 113, bytecode pc 555
        (contentSize = this.m_vipLvLab.getContentSize());
        // source line 114, bytecode pc 620
        this.m_giftTxtLab.setPosition(cc.p((pos.x + (contentSize.width / 2)), pos.y));
    }
    // source line 117, bytecode pc 646
    this.markFuncEnd("updateView", this.m_data);
},
    showGift: function() {
    if (this.m_listener) {
        // source line 122, bytecode pc 46
        this.m_listener.showGift(this.m_data.getGiftId());
    }
}
}));
// source line 127, bytecode pc 189
(xs.Views.VipCell.create = function() {
    var cell;
    // source line 128, bytecode pc 23
    (cell = new xs.Views.VipCell());
    if ((cell && cell.init())) {
        // source line 130, bytecode pc 55
        return cell;
    }
    // source line 133, bytecode pc 57
    return null;
});
// source line 149, bytecode pc 504
(xs.Views.VipCell.cfg = {
    ccbCfg: [
        { name: "m_titleLab", tag: 10, type: "ls", id: "LS_BntHui" },
        { name: "m_buyTxtLab", tag: 12, type: "ls", id: "LS_wujiangName1", stringId: "str_Vip_CanBuy" },
        { name: "m_vipSp", tag: 13 },
        { name: "m_vipLvLab", tag: 14, type: "ls", id: "LS_Lv" },
        { name: "m_giftTxtLab", tag: 15, type: "ls", id: "LS_wujiangName1", stringId: "str_Vip_Gift" }
    ],
    m_titleLab: { tag: 10 },
    m_giftBtn: { tag: 11, priority: -1 }
});
