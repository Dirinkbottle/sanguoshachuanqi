// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/MulitiFightCell.js:1
// source line 123, bytecode pc 250
(xs.Views.Table.Cell.MulitiFightCell = cc.TableViewCell.extend({
    name: "MulitiFightCell",
    ctor: function() {
    // source line 10, bytecode pc 12
    this._super();
},
    init: function(data) {
    // source line 14, bytecode pc 35
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_7_10_MulitiFightResultCell.ccbi", this));
    // source line 15, bytecode pc 119
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", offset: cc.p(0, 0), sc: false });
    // source line 17, bytecode pc 160
    (this.title = this.ccbNode.getChildByTag(this.cfg.title.tag));
    // source line 18, bytecode pc 201
    (this.userExp = this.ccbNode.getChildByTag(this.cfg.userExp.tag));
    // source line 19, bytecode pc 242
    (this.coin = this.ccbNode.getChildByTag(this.cfg.coin.tag));
    // source line 21, bytecode pc 259
    this.updateCell(data);
    // source line 23, bytecode pc 261
    return true;
},
    updateCell: function(data) {
    var i, generalsInTeam, _generalExpLabel, row, col, dropItems, itemInfoLabel;
    // source line 28, bytecode pc 78
    xs.Utils.replaceLabelWithString(this.ccbNode, this.cfg.title.tag, [ "LS_yuanfen" ], [ data.titleName ]);
    // source line 31, bytecode pc 154
    xs.Utils.replaceLabel(this.ccbNode, this.cfg.userExpStr.tag, [ "LS_wujiangInf1" ], [ "1071110050" ]);
    // source line 32, bytecode pc 245
    xs.Utils.replaceLabelWithString(this.ccbNode, this.cfg.userExp.tag, [ "LS_mainUI4" ], [ ("+" + data.getUserExp()) ]);
    // source line 36, bytecode pc 348
    xs.Utils.replaceLabelWithString(this.ccbNode, this.cfg.coinStr.tag, [ "LS_wujiangInf1" ], [ xs.Tools.String.createString("coin") ]);
    // source line 37, bytecode pc 439
    xs.Utils.replaceLabelWithString(this.ccbNode, this.cfg.coin.tag, [ "LS_mainUI4" ], [ ("+" + data.getDropCoin()) ]);
    // source line 41, bytecode pc 515
    xs.Utils.replaceLabel(this.ccbNode, this.cfg.generalExpStr.tag, [ "LS_Lv" ], [ "1071110051" ]);
    if (this.generalExpLabels) {
        // source line 44, bytecode pc 531
        (i = 0);
        while ((i < this.generalExpLabels.length)) {
            // source line 45, bytecode pc 561
            this.generalExpLabels[i].removeFromParent(true);
            // source line 44, bytecode pc 575
            (i = (+i + 1));
        }
    }
    // source line 48, bytecode pc 609
    (this.generalExpLabels = []);
    // source line 49, bytecode pc 660
    (generalsInTeam = xs.Profile.GameData.Mgr.getInstance().Team.getGeneralsInTeam());
    // source line 50, bytecode pc 665
    (i = 0);
    while ((i < generalsInTeam.length)) {
        // source line 51, bytecode pc 721
        (_generalExpLabel = this.getLabelForGeneralExp(generalsInTeam[i].getNameString(), data.getGeneralExp()));
        // source line 52, bytecode pc 743
        this.generalExpLabels.push(_generalExpLabel);
        // source line 53, bytecode pc 753
        (row = (i % 3));
        // source line 54, bytecode pc 780
        (col = Math.floor((i / 3)));
        // source line 55, bytecode pc 878
        xs.Utils.Node.attachNodes(this, _generalExpLabel, { desc: "c", offset: cc.p(((255 * row) + 20), (106 - (col * 27))), sc: false });
        // source line 50, bytecode pc 892
        (i = (+i + 1));
    }
    // source line 58, bytecode pc 987
    xs.Utils.replaceLabel(this.ccbNode, this.cfg.dropStr.tag, [ "LS_Lv" ], [ "1071110052" ]);
    if (this.dropItemLabels) {
        // source line 60, bytecode pc 1003
        (i = 0);
        while ((i < this.dropItemLabels.length)) {
            // source line 61, bytecode pc 1033
            this.dropItemLabels[i].removeFromParent(true);
            // source line 60, bytecode pc 1047
            (i = (+i + 1));
        }
    }
    // source line 64, bytecode pc 1081
    (this.dropItemLabels = []);
    // source line 65, bytecode pc 1099
    (dropItems = data.getDropItems());
    // source line 66, bytecode pc 1104
    (i = 0);
    while ((i < dropItems.length)) {
        // source line 67, bytecode pc 1134
        (itemInfoLabel = this.getDropItemInfoLabel(dropItems[i]));
        // source line 68, bytecode pc 1144
        (row = (i % 3));
        // source line 69, bytecode pc 1166
        this.dropItemLabels.push(itemInfoLabel);
        // source line 70, bytecode pc 1257
        xs.Utils.Node.attachNodes(this, itemInfoLabel, { desc: "c", offset: cc.p(((255 * row) + 20), 5), sc: false });
        // source line 66, bytecode pc 1271
        (i = (+i + 1));
    }
},
    getLabelForGeneralExp: function(generalName, exp) {
    var generalExpInfoLabel;
    // source line 76, bytecode pc 58
    (generalExpInfoLabel = xs.Views.Label.LabelExt.createWithStyles([ "LS_liebiaoInf", "LS_liebiaoInf2" ]));
    // source line 77, bytecode pc 99
    generalExpInfoLabel.setStringByStrings([ generalName, ("+" + exp) ]);
    // source line 79, bytecode pc 103
    return generalExpInfoLabel;
},
    getDropItemInfoLabel: function(item) {
    var itemInfoLabel;
    // source line 84, bytecode pc 58
    (itemInfoLabel = xs.Views.Label.LabelExt.createWithStyles([ "LS_liebiaoInf", "LS_liebiaoInf2" ]));
    if ((item.isPiece && item.isPiece())) {
        // source line 86, bytecode pc 193
        itemInfoLabel.setStringByStrings([
    (item.getNameString() + xs.Tools.String.createString("auto_name_504")),
    (("x" + item.getNum()) + "")
]);
    } else {
        if ((item.isSoul && item.isSoul())) {
            // source line 88, bytecode pc 333
            itemInfoLabel.setStringByStrings([
    (item.getNameString() + xs.Tools.String.createString("auto_name_505")),
    (("x" + item.getNum()) + "")
]);
        } else {
            // source line 90, bytecode pc 407
            itemInfoLabel.setStringByStrings([ item.getNameString(), (("x" + item.getNum()) + "") ]);
        }
    }
    // source line 94, bytecode pc 411
    return itemInfoLabel;
},
    cfg: {
        title: { tag: 10 },
        userExp: { tag: 11 },
        coin: { tag: 12 },
        userExpStr: { tag: 20 },
        coinStr: { tag: 21 },
        generalExpStr: { tag: 22 },
        dropStr: { tag: 23 }
    }
}));
// source line 128, bytecode pc 286
(xs.Views.Table.Cell.MulitiFightCell.create = function(data) {
    var ret;
    // source line 129, bytecode pc 33
    (ret = new xs.Views.Table.Cell.MulitiFightCell());
    if ((ret && ret.init(data))) {
        // source line 132, bytecode pc 69
        return ret;
    }
    // source line 135, bytecode pc 71
    return null;
});
