// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/CardNavigateView.js:1
// source line 115, bytecode pc 103
(xs.Views.CardNavigateView = cc.Node.extend({
    name: "CardNavigateView",
    ctor: function() {
    // source line 10, bytecode pc 12
    this._super();
    // source line 11, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(cardData, param) {
    var sliderBg, processBg, thumbImg, bfControlSlider;
    if (!this._super()) {
        // source line 20, bytecode pc 19
        return false;
    }
    // source line 23, bytecode pc 27
    (this.markShowFengyin = false);
    if (param) {
        if ((param.markShowFengyin != null)) {
            // source line 27, bytecode pc 65
            (this.markShowFengyin = param.markShowFengyin);
        }
    }
    // source line 30, bytecode pc 75
    (this.cardData = cardData);
    // source line 32, bytecode pc 114
    (this.visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 34, bytecode pc 185
    (this.tableViewSize = cc.size((this.visibleSize.width - xs.Views.MainMenuView.Width), (this.visibleSize.height - 80)));
    // source line 36, bytecode pc 193
    (this.cardBigScale = 1);
    // source line 37, bytecode pc 205
    (this.cardSmlScale = 0.4);
    // source line 38, bytecode pc 250
    (this.normalCellWid = (xs.Cfg.Resource.Card.w * (this.cardSmlScale + 0.1)));
    // source line 39, bytecode pc 289
    (this.bigCellWid = (xs.Cfg.Resource.Card.w * this.cardBigScale));
    // source line 42, bytecode pc 331
    (sliderBg = xs.Factorys.Sprite.create("sliderBar", "WujiangScene01"));
    // source line 43, bytecode pc 373
    (processBg = xs.Factorys.Sprite.create("sliderBar", "WujiangScene01"));
    // source line 44, bytecode pc 415
    (thumbImg = xs.Factorys.Sprite.create("thumb", "WujiangScene01"));
    // source line 45, bytecode pc 452
    (bfControlSlider = xs.BFControlSlider.create(sliderBg, processBg, thumbImg));
    // source line 46, bytecode pc 488
    bfControlSlider.setAnchorPoint(cc.p(0, 0));
    // source line 48, bytecode pc 506
    bfControlSlider.setMaximumValue(100);
    // source line 50, bytecode pc 523
    bfControlSlider.setMinimumValue(0);
    // source line 53, bytecode pc 637
    xs.Utils.Node.attachNodes(this, bfControlSlider, { desc: "lb", offset: cc.p(50, 5), sc: false }, xs.Cfg.Scene.AgaScene.tablePage.slider);
    // source line 56, bytecode pc 674
    (this.bfCardView = xs.BFCardView.create(this, this.tableViewSize));
    // source line 57, bytecode pc 696
    this.bfCardView.setObserver(bfControlSlider);
    // source line 58, bytecode pc 716
    this.bfCardView.setDelegate(this);
    // source line 59, bytecode pc 736
    this.bfCardView.setCardViewDelegate(this);
    // source line 60, bytecode pc 765
    this.bfCardView.setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL);
    // source line 61, bytecode pc 797
    this.bfCardView.setCellScaleValue(this.cardBigScale, this.cardSmlScale);
    // source line 62, bytecode pc 836
    this.bfCardView.setAnchorPoint(cc.p(0, 0));
    // source line 63, bytecode pc 861
    this.bfCardView.setNormalCellWidth(this.normalCellWid);
    // source line 64, bytecode pc 879
    this.bfCardView.reloadData();
    // source line 65, bytecode pc 914
    this.bfCardView.setTouchPriority(this.cfg.tableView.priority);
    // source line 67, bytecode pc 936
    bfControlSlider.setObserver(this.bfCardView);
    // source line 68, bytecode pc 1022
    xs.Utils.Node.attachNodes(this, this.bfCardView, { desc: "lb", offset: cc.p(10, 80), sc: false });
    // source line 70, bytecode pc 1024
    return true;
},
    tableCellAtIndex: function(table, idx) {
    var cell, card, generalData;
    try {
        // source line 75, bytecode pc 18
        (cell = table.dequeueCell());
        // source line 76, bytecode pc 23
        (card = null);
        if (!cell) {
            // source line 78, bytecode pc 51
            (cell = new cc.TableViewCell());
            // source line 81, bytecode pc 173
            (card = this.cardData[idx].createCard_General({
    pos: cc.p((xs.Cfg.Resource.Card.w / 2), (xs.Cfg.Resource.Card.h / 2)),
    markShowFengyin: this.markShowFengyin
}));
            // source line 83, bytecode pc 211
            cell.addChild(card, (this.cardData.length - idx), 15);
        } else {
            // source line 85, bytecode pc 237
            (card = cell.getChildByTag(15));
            if ((this.cardData[idx].name === "xs.Models.GeneralSoul")) {
                // source line 87, bytecode pc 300
                card.reloadData(this.cardData[idx].getBaseGeneralModel());
            } else {
                if ((this.cardData[idx].name === "xs.Models.EvolutionInfo")) {
                    // source line 89, bytecode pc 368
                    card.reloadData(this.cardData[idx].getCacheGeneralModel());
                } else {
                    // source line 91, bytecode pc 399
                    card.reloadData(this.cardData[idx]);
                }
            }
        }
        if ((this.cardData[idx].name === "xs.Models.General")) {
            // source line 97, bytecode pc 439
            (generalData = this.cardData[idx]);
            if (xs.Profile.GameData.Mgr.getInstance().Generals.isSurrender(generalData)) {
                // source line 99, bytecode pc 512
                card.setSurrender(true);
            } else {
                // source line 101, bytecode pc 534
                card.setSurrender(false);
            }
        }
    } catch (e) {
        // source line 106, bytecode pc 576
        xs.warnException("AgaCardView-tableCellAtIndex", e);
        /* TODO_BYTECODE pc=577 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 108, bytecode pc 589
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 112, bytecode pc 11
    return this.cardData.length;
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 116, bytecode pc 35
    return cc.size(this.normalCellWid, this.tableViewSize.height);
}
}));
// source line 120, bytecode pc 129
(xs.Views.CardNavigateView.create = function(cardData) {
    var ret;
    // source line 121, bytecode pc 23
    (ret = new xs.Views.CardNavigateView());
    if ((ret && ret.init(cardData))) {
        // source line 123, bytecode pc 59
        return ret;
    }
    // source line 125, bytecode pc 61
    return null;
});
