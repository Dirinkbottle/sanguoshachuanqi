// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/SkillUpDialog.js:1
// source line 526, bytecode pc 654
(xs.Views.Dialog.SkillUpDialog = xs.Views.Dialog.CommonDialog.extend({
    name: "SkillUpDialog",
    ccbCfg: [
        { tag: 100, type: "ls", name: "_titleLabel", id: "LS_paihangWZ" },
        { tag: 101, type: "ls", name: "_effectLabelBiaoti", id: "LS_paihangNomb" },
        { tag: 2, type: "ls", name: "_effect", id: "LS_jinengInf1" },
        { tag: 7, type: "ls", name: "_materialTitleBG", id: "LS_paihangWZ" }
    ],
    ccbCfg_SkillDia: { tag: 5, type: "ls", name: "_needCoinLabel", id: "LS_mainUI4" },
    loadCCBI: function() {
    var visibleOrigin, visibleSize, bgSize, effectPos, space, offx;
    // source line 28, bytecode pc 24
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 29, bytecode pc 49
    (visibleSize = xs.director.getVisibleSize());
    // source line 32, bytecode pc 100
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.SkillDialog, this));
    // source line 38, bytecode pc 228
    xs.Utils.Node.attachNodes(this, this._ccbNode, {
    desc: "lb",
    sc: true,
    offset: {
        x: (visibleOrigin.x + ((visibleSize.width - 930) / 2)),
        y: (visibleOrigin.y + ((visibleSize.height - 600) / 2))
    }
});
    // source line 41, bytecode pc 279
    (this._ccbNodePanel = xs.ccb_reader.load(xs.Cfg.CCBI.SkillDialogPanel, this));
    // source line 49, bytecode pc 407
    xs.Utils.Node.attachNodes(this, this._ccbNodePanel, {
    desc: "lb",
    sc: true,
    offset: {
        x: (visibleOrigin.x + ((visibleSize.width - 930) / 2)),
        y: (visibleOrigin.y + ((visibleSize.height - 620) / 2))
    }
});
    // source line 53, bytecode pc 420
    this._createCardView();
    // source line 56, bytecode pc 447
    (this._effect = this._ccbNode.getChildByTag(2));
    // source line 58, bytecode pc 474
    (this._effectBG = this._ccbNode.getChildByTag(5));
    // source line 60, bytecode pc 495
    (bgSize = this._effectBG.getContentSize());
    // source line 61, bytecode pc 516
    (effectPos = this._effect.getPosition());
    // source line 63, bytecode pc 575
    this._effect.setDimensions(cc.size((bgSize.width - 6), (bgSize.height - 5)));
    // source line 64, bytecode pc 631
    this._effect.setPosition(cc.p((effectPos.x - 3), effectPos.y));
    // source line 66, bytecode pc 658
    (this._materialTitleLabel = this._ccbNode.getChildByTag(6));
    // source line 67, bytecode pc 685
    (this._materialTitleBG = this._ccbNode.getChildByTag(7));
    // source line 71, bytecode pc 712
    (this._effectLabel = this._ccbNode.getChildByTag(3));
    // source line 73, bytecode pc 755
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 74, bytecode pc 798
    xs.Utils.UI.replaceCcbByCfgEntity(this._ccbNodePanel, this.ccbCfg_SkillDia, this);
    // source line 77, bytecode pc 818
    this._needCoinLabel.setVisible(false);
    // source line 79, bytecode pc 858
    (this._anotherTouchPriority = (xs.Cfg.Scene.CommonScene.Dialog.priority + 10));
    // source line 83, bytecode pc 865
    (space = 165);
    // source line 84, bytecode pc 871
    (offx = 10);
    // source line 85, bytecode pc 943
    (this._chooseAllJuanZhou = xs.Views.Btn.createWithString("Btn_Confirm_2", xs.Tools.String.createString("btn_selectAllJuanZhou")));
    // source line 86, bytecode pc 1058
    this._chooseAllJuanZhou.setPosition(cc.p(((this._ccbNodePanel.getChildByTag(1).getPosition().x - space) + offx), this._ccbNodePanel.getChildByTag(1).getPosition().y));
    // source line 87, bytecode pc 1096
    this._chooseAllJuanZhou.setOnClickCallBack(this._allJuanZhou.bind(this));
    // source line 88, bytecode pc 1124
    this._chooseAllJuanZhou.setTouchPriority((this._anotherTouchPriority - 100));
    // source line 89, bytecode pc 1165
    xs.Utils.Node.attachNodes(this._ccbNodePanel, this._chooseAllJuanZhou);
    // source line 91, bytecode pc 1237
    (this._chooseAllNo = xs.Views.Btn.createWithString("Btn_Confirm_2", xs.Tools.String.createString("btn_selectAllGodBook")));
    // source line 92, bytecode pc 1348
    this._chooseAllNo.setPosition(cc.p((this._ccbNodePanel.getChildByTag(1).getPosition().x + offx), this._ccbNodePanel.getChildByTag(1).getPosition().y));
    // source line 93, bytecode pc 1386
    this._chooseAllNo.setOnClickCallBack(this._godBook.bind(this));
    // source line 94, bytecode pc 1414
    this._chooseAllNo.setTouchPriority((this._anotherTouchPriority - 100));
    // source line 95, bytecode pc 1455
    xs.Utils.Node.attachNodes(this._ccbNodePanel, this._chooseAllNo);
    // source line 98, bytecode pc 1527
    (this._chooseAllSilver = xs.Views.Btn.createWithString("Btn_Confirm_2", xs.Tools.String.createString("btnStr_checkAllGolden")));
    // source line 99, bytecode pc 1642
    this._chooseAllSilver.setPosition(cc.p(((this._ccbNodePanel.getChildByTag(1).getPosition().x + space) + offx), this._ccbNodePanel.getChildByTag(1).getPosition().y));
    // source line 100, bytecode pc 1680
    this._chooseAllSilver.setOnClickCallBack(this._gold.bind(this));
    // source line 101, bytecode pc 1708
    this._chooseAllSilver.setTouchPriority((this._anotherTouchPriority - 100));
    // source line 102, bytecode pc 1749
    xs.Utils.Node.attachNodes(this._ccbNodePanel, this._chooseAllSilver);
    // source line 104, bytecode pc 1821
    (this._chooseAllCopper = xs.Views.Btn.createWithString("Btn_Confirm_2", xs.Tools.String.createString("auto_name_438")));
    // source line 105, bytecode pc 1939
    this._chooseAllCopper.setPosition(cc.p(((this._ccbNodePanel.getChildByTag(1).getPosition().x + (space * 2)) + offx), this._ccbNodePanel.getChildByTag(1).getPosition().y));
    // source line 106, bytecode pc 1977
    this._chooseAllCopper.setOnClickCallBack(this._silver.bind(this));
    // source line 107, bytecode pc 2005
    this._chooseAllCopper.setTouchPriority((this._anotherTouchPriority - 100));
    // source line 108, bytecode pc 2046
    xs.Utils.Node.attachNodes(this._ccbNodePanel, this._chooseAllCopper);
    // source line 111, bytecode pc 2123
    (this._chooseAllYes = xs.Utils.replaceButton(this._ccbNodePanel, 4, "Btn_Confirm_2", xs.Tools.String.createString("auto_name_76")));
    // source line 113, bytecode pc 2161
    this._chooseAllYes.setOnClickCallBack(this._yes.bind(this));
    // source line 114, bytecode pc 2189
    this._chooseAllYes.setTouchPriority((this._anotherTouchPriority - 100));
    // source line 119, bytecode pc 2211
    (this._selectData = new buckets.Dictionary());
    // source line 121, bytecode pc 2262
    this._titleLabel.setString(xs.Tools.String.createString("auto_name_389"));
    // source line 122, bytecode pc 2313
    this._effectLabelBiaoti.setString(xs.Tools.String.createString("auto_name_386"));
    // source line 123, bytecode pc 2333
    this._effectLabelBiaoti.setVisible(false);
    // source line 124, bytecode pc 2384
    this._materialTitleBG.setString(xs.Tools.String.createString("auto_name_439"));
},
    _createCardView: function() {
    var tmpcard;
    // source line 128, bytecode pc 22
    (tmpcard = this._ccbNode.getChildByTag(1));
    // source line 129, bytecode pc 55
    (this._cardView = xs.Views.CardUpdateView.create());
    // source line 130, bytecode pc 88
    this._cardView.setPosition(tmpcard.getPosition());
    // source line 131, bytecode pc 129
    xs.Utils.Node.attachNodes(this._ccbNode, this._cardView);
    // source line 135, bytecode pc 166
    this._cardView.setLevelChangeCallBack(function(level) {
    // source line 134, bytecode pc 16
    this._levelChange(level);
}.bind(this));
},
    createListView: function(size) {
    // source line 138, bytecode pc 22
    xs.log("createListView");
    // source line 139, bytecode pc 56
    xs.Utils.Node.safeRemoveChild(this._skillListTableView);
    // source line 140, bytecode pc 64
    (this._skillListTableView = null);
    // source line 141, bytecode pc 115
    (this._skillListTableView = xs.Views.Table.SkillListTableView.create(size, this._data, this));
    // source line 147, bytecode pc 205
    xs.Utils.Node.attachNodes(this._ccbNode, this._skillListTableView, { desc: "lb", sc: true, offset: { x: 382, y: 70 } });
    // source line 150, bytecode pc 235
    xs.log(("_skillListTableView createListView " + this._anotherTouchPriority));
    // source line 152, bytecode pc 263
    this._skillListTableView.setTouchPriority((this._anotherTouchPriority - 10));
},
    onEnter: function() {
    // source line 155, bytecode pc 22
    xs.log("SkillUpDialog onEnter");
    // source line 156, bytecode pc 69
    xs.Utils.Notify.addObserver(this, this.refreshDialog, xs.Constant_Notify_ModelChange_Skill);
},
    onExit: function() {
    // source line 159, bytecode pc 22
    xs.log("equalmentStrengthen_Dialog onExit");
    // source line 160, bytecode pc 62
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_Skill);
},
    showDialog: function(skillObj) {
    // source line 164, bytecode pc 22
    xs.log("showDialog");
    // source line 165, bytecode pc 32
    (this._data = skillObj);
    // source line 166, bytecode pc 56
    (this._PKid = this._data.getPkId());
    // source line 167, bytecode pc 97
    xs.log(("this._data level is " + this._data.getLevel()));
    // source line 168, bytecode pc 110
    this._showDialogEx();
    // source line 169, bytecode pc 130
    this._resetCardViewInfo(this._data);
    // source line 170, bytecode pc 150
    this._setPreviewCloneData(this._data);
    // source line 171, bytecode pc 176
    this._setCurPercentage(this._getPreviewCloneData());
    // source line 173, bytecode pc 206
    xs.log(("this._anotherTouchPriority is " + this._anotherTouchPriority));
},
    _setCurPercentage: function(param) {
    var data, curExp, _nowLevelNeedExp, curTotalExp, _curPercent;
    // source line 176, bytecode pc 6
    (data = param);
    // source line 177, bytecode pc 24
    (curExp = data.getTotalExp());
    // source line 178, bytecode pc 62
    xs.log(("data.getTotalExp is " + data.getTotalExp()));
    // source line 179, bytecode pc 89
    xs.dump("data is ", data);
    // source line 184, bytecode pc 122
    (_nowLevelNeedExp = data.getTotalExpByLevel(data.getLevel()));
    // source line 185, bytecode pc 157
    (curTotalExp = data.getTotalExpByLevel((data.getLevel() + 1)));
    // source line 186, bytecode pc 196
    (_curPercent = Math.floor((((curExp - _nowLevelNeedExp) / (curTotalExp - _nowLevelNeedExp)) * 100)));
    // source line 187, bytecode pc 218
    this._cardView.setCurPercentage(_curPercent);
    // source line 188, bytecode pc 275
    xs.log(((((((("_setCurPercentage is " + _curPercent) + ",") + curExp) + ",") + curTotalExp) + ",") + _nowLevelNeedExp));
},
    _getPrelevelUseExp: function(level, data) {
    var totalExp, i;
    // source line 192, bytecode pc 4
    (totalExp = 0);
    // source line 193, bytecode pc 9
    (i = 1);
    while ((i <= level)) {
        // source line 195, bytecode pc 41
        (totalExp = (totalExp + data.getUpgradeExpNeed(i)));
        // source line 193, bytecode pc 56
        i++;
    }
    // source line 197, bytecode pc 73
    return totalExp;
},
    updateRightView: function() {
    // source line 201, bytecode pc 22
    xs.log("updateRightView");
    // source line 202, bytecode pc 52
    xs.log(("this._anotherTouchPriority 1111 is " + this._anotherTouchPriority));
    // source line 203, bytecode pc 65
    this._showDialogEx();
},
    _showDialogEx: function() {
    var addSize, _effectBGSize, oldPos1, oldPos2, odlListSize, newListSize;
    // source line 206, bytecode pc 22
    xs.log("xs.Views.SkillUpDialog showDialog");
    // source line 208, bytecode pc 58
    this._effect.setString(this._data.getDescString());
    // source line 209, bytecode pc 128
    xs.log(((("this._data.getDescString length is " + this._data.getDescString().length) + ",") + this._data.getDescString()));
    // source line 211, bytecode pc 175
    this._effectLabel.setString(this._data.getAttrNaked(xs.Constant_AttrType_FightPoint));
    // source line 214, bytecode pc 199
    this._needCoinLabel.setString("0");
    // source line 217, bytecode pc 253
    (addSize = xs.Tools.UI.changeLabelVertical(this._effect, { styleString: "LS_jinengInf1" }));
    if ((addSize != null)) {
        // source line 221, bytecode pc 284
        (_effectBGSize = this._effectBG.getContentSize());
        // source line 222, bytecode pc 354
        this._effectBG.setPreferredSize(cc.size(_effectBGSize.width, (this._effect.getContentSize().height + 10)));
        // source line 224, bytecode pc 389
        (oldPos1 = this._ccbNode.getChildByTag(6).getPosition());
        // source line 225, bytecode pc 465
        this._ccbNode.getChildByTag(6).setPosition(cc.p(oldPos1.x, (oldPos1.y - addSize.height)));
        // source line 226, bytecode pc 500
        (oldPos2 = this._ccbNode.getChildByTag(7).getPosition());
        // source line 227, bytecode pc 576
        this._ccbNode.getChildByTag(7).setPosition(cc.p(oldPos2.x, (oldPos2.y - addSize.height)));
        // source line 228, bytecode pc 600
        (odlListSize = cc.size(0, 0));
        if ((this._skillListTableView == null)) {
            // source line 230, bytecode pc 641
            (odlListSize = cc.size(425, 310));
        } else {
            // source line 232, bytecode pc 667
            (odlListSize = this._skillListTableView.makeViewSize());
        }
        // source line 234, bytecode pc 714
        (newListSize = cc.size(odlListSize.width, (odlListSize.height - addSize.height)));
        // source line 235, bytecode pc 776
        xs.log(((((("newListSize is " + newListSize.width) + ",") + newListSize.height) + ",") + addSize.height));
        // source line 236, bytecode pc 793
        this.createListView(newListSize);
    }
},
    _allJuanZhou: function() {
    // source line 241, bytecode pc 22
    xs.log_ck("_allJuanZhou");
    if (!this.isMaxExp()) {
        // source line 244, bytecode pc 100
        xs.Views.Mgr.showToast(xs.Tools.String.createString("str_Equipment_TheHightest"));
        // source line 245, bytecode pc 102
        return void 0;
    }
    // source line 247, bytecode pc 120
    this._skillListTableView.setAllJuanZhouBeSelected();
    // source line 248, bytecode pc 133
    this.updateCardPercentageAdd();
},
    _godBook: function() {
    // source line 252, bytecode pc 22
    xs.log_zhz("_godbook");
    if (!this.isMaxExp()) {
        // source line 255, bytecode pc 100
        xs.Views.Mgr.showToast(xs.Tools.String.createString("str_Equipment_TheHightest"));
        // source line 256, bytecode pc 102
        return void 0;
    }
    // source line 259, bytecode pc 120
    this._skillListTableView.setAllGodBookBeSelected();
    // source line 261, bytecode pc 133
    this.updateCardPercentageAdd();
},
    _silver: function() {
    // source line 264, bytecode pc 22
    xs.log("_silver");
    if (!this.isMaxExp()) {
        // source line 267, bytecode pc 100
        xs.Views.Mgr.showToast(xs.Tools.String.createString("str_Equipment_TheHightest"));
        // source line 268, bytecode pc 102
        return void 0;
    }
    // source line 271, bytecode pc 120
    this._skillListTableView.setAllSilverBeSelected();
    // source line 273, bytecode pc 133
    this.updateCardPercentageAdd();
},
    _gold: function() {
    if (!this.isMaxExp()) {
        // source line 278, bytecode pc 77
        xs.Views.Mgr.showToast(xs.Tools.String.createString("str_Equipment_TheHightest"));
        // source line 279, bytecode pc 79
        return void 0;
    }
    // source line 281, bytecode pc 97
    this._skillListTableView.setAllGoldBeSelected();
    // source line 282, bytecode pc 110
    this.updateCardPercentageAdd();
},
    _no: function() {
    // source line 287, bytecode pc 12
    this._refreshDialogEx();
},
    _yes: function() {
    var param, skillarray, itemIds, itemNums, _func;
    // source line 290, bytecode pc 64
    xs.log(((("SkillDialog _yes," + this._selectData.size()) + ",") + this._chooseAllYes.getTouchPriority()));
    if ((this._selectData.size() != 0)) {
        // source line 292, bytecode pc 111
        xs.log("确定选择");
        if ((this._allExpendNum != null)) {
            // source line 294, bytecode pc 147
            xs.log("_allExpendNum 不是 null");
            if ((this._allExpendNum > xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerTongQian())) {
                // source line 296, bytecode pc 277
                xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_403"));
                // source line 297, bytecode pc 279
                return void 0;
            }
        }
        // source line 300, bytecode pc 289
        (param = {});
        // source line 301, bytecode pc 304
        (skillarray = []);
        // source line 302, bytecode pc 319
        (itemIds = []);
        // source line 303, bytecode pc 334
        (itemNums = []);
        // source line 306, bytecode pc 357
        xs.log_ck("统计完成111");
        // source line 307, bytecode pc 366
        (_func = function(key, value) {
    // source line 308, bytecode pc 26
    xs.log_ck(("统计完成222:::" + key));
    if (((value.getOriModel().getId() == xs.Models.ItemID_JuanZhou_chuji) || ((value.getOriModel().getId() == xs.Models.ItemID_JuanZhou_zhongji) || (value.getOriModel().getId() == xs.Models.ItemID_JuanZhou_gaoji)))) {
        // source line 313, bytecode pc 191
        itemIds.push(key);
        // source line 314, bytecode pc 227
        itemNums.push(value.getSelectNum());
    } else {
        // source line 318, bytecode pc 257
        skillarray.push(key);
    }
    // source line 320, bytecode pc 284
    xs.log_ck(("统计完成333:::" + key));
});
        // source line 322, bytecode pc 388
        this._selectData.forEach(_func);
        // source line 324, bytecode pc 411
        xs.log_ck("统计完成");
        // source line 325, bytecode pc 438
        xs.log_ck(itemIds);
        // source line 326, bytecode pc 464
        (param.user_skill_id = this._data.getPkId());
        // source line 327, bytecode pc 482
        (param.consume_user_skill_ids = skillarray);
        // source line 328, bytecode pc 500
        (param.consume_user_item_ids = itemIds);
        // source line 329, bytecode pc 518
        (param.consume_user_item_num = itemNums);
        // source line 332, bytecode pc 530
        (this._selectedIconPosArray = []);
        // source line 333, bytecode pc 554
        (this._selectedIconPosArray = this._skillListTableView.getSelectIconPosArray());
        // source line 335, bytecode pc 593
        xs.Tools.Net.requestSkillUpdate(param, function() {
}, this);
    } else {
        // source line 337, bytecode pc 658
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_440"));
    }
},
    getSelectData: function() {
    // source line 341, bytecode pc 6
    return this._selectData;
},
    resetSelectData: function() {
    // source line 344, bytecode pc 17
    this._selectData.clear();
},
    _updateCardView: function(object) {
    // source line 348, bytecode pc 22
    xs.log("SkillUpDialog _updateCardView");
},
    getCloneData: function() {
    var _data;
    // source line 355, bytecode pc 57
    (_data = xs.Profile.GameData.Mgr.getInstance().Skills.getAllSkillCanBeEaten(this._PKid));
    // source line 357, bytecode pc 72
    return _data.reverse();
},
    refreshDialog: function() {
    // source line 360, bytecode pc 22
    xs.log("refreshDialog");
    // source line 362, bytecode pc 42
    this.playEatCardAction(this._selectedIconPosArray);
    // source line 364, bytecode pc 55
    this._refreshDialogEx();
},
    _refreshDialogEx: function() {
    // source line 367, bytecode pc 22
    xs.log("refreshDialog func");
    // source line 369, bytecode pc 83
    (this._data = xs.Profile.GameData.Mgr.getInstance().Skills.getByPkId(this._PKid));
    // source line 370, bytecode pc 124
    xs.log(("this._data level is " + this._data.getLevel()));
    // source line 372, bytecode pc 158
    xs.Utils.Node.safeRemoveChild(this._cardView);
    // source line 373, bytecode pc 171
    this._createCardView();
    // source line 377, bytecode pc 184
    this.updateRightView();
    // source line 379, bytecode pc 204
    this._resetCardViewInfo(this._data);
    // source line 381, bytecode pc 217
    this.resetSelectData();
    // source line 383, bytecode pc 237
    this._setPreviewCloneData(this._data);
    // source line 384, bytecode pc 263
    this._setCurPercentage(this._getPreviewCloneData());
},
    updateCardPercentageAdd: function() {
    var cloneData;
    // source line 389, bytecode pc 22
    xs.log("updateCardPercentageAdd ");
    // source line 391, bytecode pc 38
    (cloneData = this._getPreviewCloneData());
    // source line 392, bytecode pc 73
    this._cardView.updateExp(this._caculateSelectDataExp(), cloneData);
},
    updateCardPercentageSub: function() {
    var cloneData;
    // source line 395, bytecode pc 22
    xs.log("updateCardPercentageSub");
    // source line 397, bytecode pc 38
    (cloneData = this._getPreviewCloneData());
    // source line 399, bytecode pc 73
    this._cardView.updateExp(this._caculateSelectDataExp(), cloneData);
},
    _resetCardViewInfo: function(cardData) {
    // source line 407, bytecode pc 53
    this._cardView.updateCardInfo(cardData, this._anotherTouchPriority, function() {
    // source line 406, bytecode pc 22
    this._showSkillDetai(cardData);
}.bind(this));
    // source line 408, bytecode pc 77
    this._cardView.setCardScale(0.8);
},
    playEatCardAction: function(posarr) {
    var posArray, i, cardCenterPos;
    // source line 412, bytecode pc 17
    (posArray = (posarr || []));
    // source line 413, bytecode pc 29
    (this._particle = []);
    // source line 414, bytecode pc 34
    (i = 0);
    while ((i < posArray.length)) {
        // source line 415, bytecode pc 83
        (this._particle[i] = xs.Factorys.Particle.create("ParticleLight"));
        // source line 419, bytecode pc 158
        xs.Utils.Node.attachNodes(this, this._particle[i], { desc: "lb", offset: posArray[i], sc: false });
        // source line 421, bytecode pc 218
        (cardCenterPos = cc.p((this._cardView.getPositionX() + 185), this._cardView.getPositionY()));
        // source line 460, bytecode pc 392
        this._particle[i].runAction(cc.Sequence.create(cc.MoveTo.create(0.5, cardCenterPos), cc.CallFunc.create(function() {
    var index, _this;
    // source line 429, bytecode pc 6
    (index = this[0]);
    // source line 430, bytecode pc 13
    (_this = this[1]);
    // source line 431, bytecode pc 40
    xs.log(("index is " + index));
    // source line 432, bytecode pc 64
    _this._particle[index].removeFromParent();
    // source line 433, bytecode pc 78
    (_this._particle[index] = null);
}.bind([ i, this ])), cc.CallFunc.create(function() {
    var i;
    // source line 438, bytecode pc 4
    (i = 0);
    while ((i < this._particle.length)) {
        if ((this._particle[i] != null)) {
            // source line 440, bytecode pc 29
            return void 0;
        }
        // source line 438, bytecode pc 44
        i++;
    }
    // source line 445, bytecode pc 109
    (this.armEat = xs.Views.Armature.AutoAudioArmature.create("Arm_UpgradeCard_LevelUp"));
    // source line 448, bytecode pc 192
    xs.Utils.Node.attachNodes(this._cardView, this.armEat, { desc: "c", offset: cc.p(0, 0) });
    // source line 451, bytecode pc 222
    xs.log(("this.armEat is " + this.armEat));
    // source line 454, bytecode pc 265
    this.armEat.playAniById("idle", { loop: false, speed: 1 });
    // source line 458, bytecode pc 308
    this.armEat.playAniById("eatCardFinish", { loop: false, speed: 1 });
}.bind(this))));
        // source line 414, bytecode pc 407
        i++;
    }
},
    isMaxExp: function() {
    var _totalExp, _curExp, _addExp;
    // source line 466, bytecode pc 15
    (_totalExp = this.getMaxSkillExp());
    // source line 467, bytecode pc 42
    (_curExp = this._getPreviewCloneData().getTotalExp());
    // source line 468, bytecode pc 58
    (_addExp = this._caculateSelectDataExp());
    // source line 469, bytecode pc 105
    xs.log(((((("isMaxExp is " + _totalExp) + ",") + _curExp) + ",") + _addExp));
    if (((_curExp + _addExp) >= _totalExp)) {
        // source line 472, bytecode pc 123
        return false;
    }
    // source line 474, bytecode pc 125
    return true;
},
    _setPreviewCloneData: function(data) {
    // source line 478, bytecode pc 20
    (this._previewCloneData = data.Clone());
    // source line 488, bytecode pc 55
    (this._previewCloneData.getTotalExpByLevel = function(level) {
    var totalExp, i;
    // source line 480, bytecode pc 4
    (totalExp = 0);
    // source line 482, bytecode pc 9
    (i = 1);
    while ((i < level)) {
        // source line 484, bytecode pc 39
        (totalExp = (totalExp + this.getUpgradeExpNeed(i)));
        // source line 482, bytecode pc 54
        i++;
    }
    // source line 487, bytecode pc 71
    return totalExp;
}.bind(this._previewCloneData));
},
    _getPreviewCloneData: function() {
    // source line 491, bytecode pc 6
    return this._previewCloneData;
},
    _showSkillDetai: function(data) {
    // source line 495, bytecode pc 47
    xs.Views.Mgr.showDialogByName("SkillNoPanel", { skillData: data });
},
    _levelChange: function(level) {
    var _data;
    // source line 500, bytecode pc 26
    (_data = this._getPreviewCloneData().Clone());
    // source line 501, bytecode pc 45
    _data.setLevel(level);
    // source line 502, bytecode pc 62
    this._resetCardViewInfo(_data);
    // source line 503, bytecode pc 95
    this._effect.setString(_data.getDescString());
},
    _caculateSelectDataExp: function() {
    var totalNum, _func;
    // source line 506, bytecode pc 10
    (totalNum = 0);
    if ((this._selectData.size() != 0)) {
        // source line 508, bytecode pc 43
        (_func = function(key, value) {
    var _exp;
    // source line 509, bytecode pc 43
    (_exp = (value.getOriModel().getEatedProExp() * value.getSelectNum()));
    // source line 510, bytecode pc 66
    (totalNum = (totalNum + _exp));
});
        // source line 512, bytecode pc 65
        this._selectData.forEach(_func);
    }
    // source line 517, bytecode pc 98
    xs.log_ck(("TT总经验卷轴测试::" + totalNum));
    // source line 519, bytecode pc 108
    return totalNum;
},
    layerTouched: function() {
    // source line 523, bytecode pc 40
    xs.log(("layerTouched " + this._skillListTableView.getTouchPriority()));
    // source line 524, bytecode pc 81
    xs.log(("layerTouched " + this._chooseAllYes.getTouchPriority()));
},
    getMaxSkillExp: function() {
    var totalExp, i;
    if (this._data.isMaxLv()) {
        // source line 528, bytecode pc 23
        return 0;
    }
    // source line 531, bytecode pc 28
    (totalExp = 0);
    // source line 533, bytecode pc 33
    (i = 1);
    while ((i < this._data.getMaxLevel())) {
        // source line 535, bytecode pc 68
        (totalExp = (totalExp + this._data.getUpgradeExpNeed(i)));
        // source line 533, bytecode pc 83
        i++;
    }
    // source line 538, bytecode pc 114
    return totalExp;
}
}));
// source line 541, bytecode pc 685
(xs.Views.Dialog.SkillUpDialog.create = function(skillObj) {
    var obj;
    // source line 543, bytecode pc 28
    (obj = new xs.Views.Dialog.SkillUpDialog());
    if ((obj && obj.init())) {
        // source line 545, bytecode pc 75
        obj.showDialog(skillObj);
        // source line 547, bytecode pc 79
        return obj;
    }
    // source line 549, bytecode pc 127
    xs.error((((" xs.Views.Dialog.SkillUpDialog.create error, " + obj) + ",") + obj.init()));
    // source line 550, bytecode pc 129
    return null;
});
// source line 564, bytecode pc 749
(xs.Views.SkillUpLayer = cc.Layer.extend({
    ctor: function() {
    // source line 560, bytecode pc 12
    this._super();
    // source line 561, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(skillObj) {
    var visibleSize, playerInfo, pageView;
    // source line 566, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 569, bytecode pc 57
    xs.Tools.UI.addCommonBg(this, true, true);
    // source line 572, bytecode pc 87
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 573, bytecode pc 123
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 576, bytecode pc 179
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt ", sc: true });
    // source line 580, bytecode pc 221
    (this._skillUpView = xs.Views.Dialog.SkillUpDialog.create(skillObj));
    // source line 584, bytecode pc 284
    (pageView = xs.Views.TablePage.create(cc.size(846, (visibleSize.height - 56))));
    // source line 585, bytecode pc 339
    pageView.addPage(xs.Tools.String.createString("auto_name_441"), this._skillUpView);
    // source line 588, bytecode pc 395
    xs.Utils.Node.attachNodes(this, pageView, { desc: "lb ", sc: true });
    // source line 592, bytecode pc 432
    (this.sideMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 593, bytecode pc 481
    this.sideMenu.setBaseTouchPriority(xs.Cfg.Scene.CommonScene.Dialog.priority);
    // source line 594, bytecode pc 483
    return true;
}
}));
// source line 599, bytecode pc 775
(xs.Views.SkillUpLayer.create = function(skillData, parent) {
    var ret;
    // source line 600, bytecode pc 23
    (ret = new xs.Views.SkillUpLayer());
    if ((ret && ret.init(skillData))) {
        if ((parent != null)) {
            // source line 603, bytecode pc 100
            xs.Utils.Node.attachNodes(parent, ret);
        } else {
            // source line 605, bytecode pc 163
            xs.Utils.Node.attachNodes(xs.Views.Mgr.getRunningScene(), ret);
        }
        // source line 607, bytecode pc 167
        return ret;
    } else {
        // source line 609, bytecode pc 174
        return null;
    }
});
