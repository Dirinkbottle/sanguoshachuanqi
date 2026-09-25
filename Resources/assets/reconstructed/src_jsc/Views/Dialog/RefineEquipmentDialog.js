// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/RefineEquipmentDialog.js:1
// source line 438, bytecode pc 598
(xs.Views.Dialog.RefineEquipmentDialog = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(equipModel) {
    var _refineStoneData, _equipData;
    // source line 13, bytecode pc 12
    this._super();
    // source line 14, bytecode pc 20
    (this.selectMaxLength = 0);
    // source line 15, bytecode pc 28
    (this.m_btn_1 = null);
    // source line 16, bytecode pc 36
    (this.m_btn_2 = null);
    // source line 17, bytecode pc 44
    (this.m_btn_3 = null);
    // source line 18, bytecode pc 52
    (this.m_btn_4 = null);
    // source line 20, bytecode pc 62
    (this.oriEquipModel = equipModel);
    // source line 22, bytecode pc 86
    (this.m_equip = this.oriEquipModel.Clone());
    // source line 24, bytecode pc 110
    (this.m_maxLevel = this.m_equip.getMaxRefineLevel());
    // source line 25, bytecode pc 141
    (this.m_maxExp = this.m_equip.getTotalRefineExpByLevel(this.m_maxLevel));
    // source line 28, bytecode pc 177
    (this.m_ccbNode = xs.ccb_reader.load("ccb3/RefineEquipDialog.ccbi", this));
    // source line 29, bytecode pc 236
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "c", sc: true });
    // source line 31, bytecode pc 279
    this.m_ccbNode.setContentSize(cc.size(932, 622));
    // source line 32, bytecode pc 326
    this.m_ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 34, bytecode pc 374
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.cfg.ccbCfg, this);
    // source line 36, bytecode pc 414
    (this.m_upgradeCard = xs.Views.EquipmentUpgradeCard.create(this.m_equip));
    // source line 37, bytecode pc 467
    xs.Utils.replaceNode(this.m_ccbNode, this.cfg.card.tag, this.m_upgradeCard);
    // source line 38, bytecode pc 503
    this.m_upgradeCard.setCurPercentage(this.m_equip.getCurRefineLevelExpPer());
    // source line 41, bytecode pc 527
    this.m_closeBtn.setOnClickCallBack(function() {
    // source line 42, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 46, bytecode pc 581
    (this.m_refineList = xs.Profile.GameData.Mgr.getInstance().CardShowData.getRefineStoneShowData());
    // source line 47, bytecode pc 591
    (_refineStoneData = this.m_refineList);
    // source line 50, bytecode pc 645
    (this.m_equipData = xs.Profile.GameData.Mgr.getInstance().CardShowData.getEquipShowData());
    // source line 51, bytecode pc 691
    (this.m_equipData = this.filterEquipData([ this.m_equip.getPkId() ]));
    // source line 52, bytecode pc 701
    (_equipData = this.m_equipData);
    // source line 54, bytecode pc 723
    (_refineStoneData = _refineStoneData.concat(_equipData));
    // source line 57, bytecode pc 772
    (this.m_tableView = xs.Views.Table.EquipRefineTableView.create(_refineStoneData, this.m_equip));
    // source line 58, bytecode pc 792
    this.m_tableView.setListener(this);
    // source line 59, bytecode pc 886
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_tableView, { desc: "c", offset: cc.p(-55, -240), sc: false });
    // source line 61, bytecode pc 924
    this.m_btn_1.setOnClickCallBack(this.onSelectAllGold.bind(this));
    // source line 62, bytecode pc 962
    this.m_btn_1.setLongTimeTouchCallBack(this.onLongSelectAllGold.bind(this));
    // source line 64, bytecode pc 1000
    this.m_btn_2.setOnClickCallBack(this.onSelectAllSilver.bind(this));
    // source line 65, bytecode pc 1038
    this.m_btn_2.setLongTimeTouchCallBack(this.onLongSelectAllSilver.bind(this));
    // source line 67, bytecode pc 1076
    this.m_btn_3.setOnClickCallBack(this.onSelecetCancel.bind(this));
    // source line 69, bytecode pc 1114
    this.m_btn_4.setOnClickCallBack(this.onConfirmRefine.bind(this));
    // source line 71, bytecode pc 1116
    return true;
},
    onEnter: function() {
    // source line 75, bytecode pc 12
    this._super();
    // source line 76, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.onEquipSelect, xs.Constant_Notify_EquipSelectChange);
    // source line 77, bytecode pc 106
    xs.Utils.Notify.addObserver(this, this.updateUpgradeCard, xs.Constant_Notify_ModelChange_Equ);
},
    onExit: function() {
    // source line 81, bytecode pc 12
    this._super();
    // source line 82, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_EquipSelectChange);
    // source line 83, bytecode pc 92
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_Equ);
},
    onSelectAllGold: function() {
    var is_chg, i;
    // source line 88, bytecode pc 4
    (is_chg = false);
    // source line 89, bytecode pc 9
    (i = 0);
    while ((i < this.m_equipData.length)) {
        if ((this.m_equipData[i].getModel().getGrade() === xs.Constant_Grade_Gold)) {
            if (this.isMaxLevel()) {
                // source line 92, bytecode pc 140
                xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_422"));
                break;
            } else {
                if ((this.selectMaxLength >= this.cfg.maxLength)) {
                    break;
                } else {
                    // source line 97, bytecode pc 188
                    (is_chg = true);
                    // source line 98, bytecode pc 210
                    this.m_equipData[i].addSelectNum();
                    // source line 99, bytecode pc 237
                    this.selectMaxLength++;
                }
            }
        }
        // source line 89, bytecode pc 252
        i++;
    }
    // source line 104, bytecode pc 278
    (i = 0);
    while ((i < this.m_refineList.length)) {
        if ((this.m_refineList[i].getModel().getItemId() == xs.Models.ItemID_RefineStone_zhongji)) {
            if (this.isMaxLevel()) {
                // source line 107, bytecode pc 414
                xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_422"));
                break;
            } else {
                if ((this.selectMaxLength >= this.cfg.maxLength)) {
                    break;
                } else {
                    // source line 112, bytecode pc 462
                    (is_chg = true);
                    // source line 113, bytecode pc 484
                    this.m_refineList[i].addSelectNum();
                    // source line 114, bytecode pc 511
                    this.selectMaxLength++;
                }
            }
        }
        // source line 104, bytecode pc 526
        i++;
    }
    if (is_chg) {
        // source line 121, bytecode pc 573
        this.m_tableView.refreshDataAndReload();
        // source line 122, bytecode pc 586
        this.onEquipSelect();
    }
},
    onLongSelectAllGold: function() {
    var is_chg, i;
    // source line 126, bytecode pc 4
    (is_chg = false);
    // source line 127, bytecode pc 9
    (i = 0);
    while ((i < this.m_equipData.length)) {
        if ((this.m_equipData[i].getModel().getGrade() === xs.Constant_Grade_Gold)) {
            if (this.isMaxLevel()) {
                // source line 130, bytecode pc 140
                xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_422"));
                break;
            } else {
                if ((this.selectMaxLength >= this.cfg.maxLength)) {
                    break;
                } else {
                    // source line 135, bytecode pc 188
                    (is_chg = true);
                    // source line 136, bytecode pc 210
                    this.m_equipData[i].addSelectNum();
                    // source line 137, bytecode pc 237
                    this.selectMaxLength++;
                }
            }
        }
        // source line 127, bytecode pc 252
        i++;
    }
    // source line 142, bytecode pc 278
    (i = 0);
    while ((i < this.m_refineList.length)) {
        if ((this.m_refineList[i].getModel().getItemId() == xs.Models.ItemID_RefineStone_zhongji)) {
            // source line 144, bytecode pc 342
            (is_chg = true);
            // source line 145, bytecode pc 364
            this.m_refineList[i].setSelectMaxNum();
            // source line 146, bytecode pc 399
            (this.selectMaxLength = (this.selectMaxLength + this.m_refineList[i].getMaxNum()));
        }
        // source line 142, bytecode pc 414
        i++;
    }
    if (is_chg) {
        // source line 152, bytecode pc 461
        this.m_tableView.refreshDataAndReload();
        // source line 153, bytecode pc 474
        this.onEquipSelect();
    }
},
    onSelectAllSilver: function() {
    var is_chg, i;
    // source line 158, bytecode pc 4
    (is_chg = false);
    // source line 159, bytecode pc 9
    (i = 0);
    while ((i < this.m_equipData.length)) {
        if ((this.m_equipData[i].getModel().getGrade() === xs.Constant_Grade_Silver)) {
            if (this.isMaxLevel()) {
                // source line 162, bytecode pc 140
                xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_422"));
                break;
            } else {
                if ((this.selectMaxLength >= this.cfg.maxLength)) {
                    break;
                } else {
                    // source line 167, bytecode pc 188
                    (is_chg = true);
                    // source line 168, bytecode pc 210
                    this.m_equipData[i].addSelectNum();
                    // source line 169, bytecode pc 237
                    this.selectMaxLength++;
                }
            }
        }
        // source line 159, bytecode pc 252
        i++;
    }
    // source line 174, bytecode pc 278
    (i = 0);
    while ((i < this.m_refineList.length)) {
        if ((this.m_refineList[i].getModel().getItemId() == xs.Models.ItemID_RefineStone_chuji)) {
            if (this.isMaxLevel()) {
                // source line 177, bytecode pc 414
                xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_422"));
                break;
            } else {
                if ((this.selectMaxLength >= this.cfg.maxLength)) {
                    break;
                } else {
                    // source line 182, bytecode pc 462
                    (is_chg = true);
                    // source line 183, bytecode pc 484
                    this.m_refineList[i].addSelectNum();
                    // source line 184, bytecode pc 511
                    this.selectMaxLength++;
                }
            }
        }
        // source line 174, bytecode pc 526
        i++;
    }
    if (is_chg) {
        // source line 192, bytecode pc 573
        this.m_tableView.refreshDataAndReload();
        // source line 193, bytecode pc 586
        this.onEquipSelect();
    }
},
    onLongSelectAllSilver: function() {
    var is_chg, i;
    // source line 197, bytecode pc 4
    (is_chg = false);
    // source line 198, bytecode pc 9
    (i = 0);
    while ((i < this.m_equipData.length)) {
        if ((this.m_equipData[i].getModel().getGrade() === xs.Constant_Grade_Silver)) {
            if (this.isMaxLevel()) {
                // source line 201, bytecode pc 140
                xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_422"));
                break;
            } else {
                if ((this.selectMaxLength >= this.cfg.maxLength)) {
                    break;
                } else {
                    // source line 206, bytecode pc 188
                    (is_chg = true);
                    // source line 207, bytecode pc 210
                    this.m_equipData[i].addSelectNum();
                    // source line 208, bytecode pc 237
                    this.selectMaxLength++;
                }
            }
        }
        // source line 198, bytecode pc 252
        i++;
    }
    // source line 213, bytecode pc 278
    (i = 0);
    while ((i < this.m_refineList.length)) {
        if ((this.m_refineList[i].getModel().getItemId() == xs.Models.ItemID_RefineStone_chuji)) {
            // source line 215, bytecode pc 342
            (is_chg = true);
            // source line 216, bytecode pc 364
            this.m_refineList[i].setSelectMaxNum();
            // source line 217, bytecode pc 399
            (this.selectMaxLength = (this.selectMaxLength + this.m_refineList[i].getMaxNum()));
        }
        // source line 213, bytecode pc 414
        i++;
    }
    if (is_chg) {
        // source line 224, bytecode pc 461
        this.m_tableView.refreshDataAndReload();
        // source line 225, bytecode pc 474
        this.onEquipSelect();
    }
},
    onSelecetCancel: function() {
    var is_chg, i;
    // source line 231, bytecode pc 4
    (is_chg = false);
    // source line 232, bytecode pc 9
    (i = 0);
    while ((i < this.m_equipData.length)) {
        if ((this.m_equipData[i].getModel().getGrade() === xs.Constant_Grade_Copper)) {
            if (this.isMaxLevel()) {
                // source line 235, bytecode pc 140
                xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_422"));
                break;
            } else {
                if ((this.selectMaxLength >= this.cfg.maxLength)) {
                    break;
                } else {
                    // source line 240, bytecode pc 188
                    (is_chg = true);
                    // source line 241, bytecode pc 210
                    this.m_equipData[i].addSelectNum();
                    // source line 242, bytecode pc 237
                    this.selectMaxLength++;
                }
            }
        }
        // source line 232, bytecode pc 252
        i++;
    }
    if (is_chg) {
        // source line 248, bytecode pc 299
        this.m_tableView.refreshDataAndReload();
        // source line 249, bytecode pc 312
        this.onEquipSelect();
    }
},
    onConfirmRefine: function() {
    var refinedEid, eids, i, refineStones, refineStoneIsNull, _pkid, _selectNum, nowExp, subExp;
    // source line 255, bytecode pc 20
    (refinedEid = this.m_equip.getPkId());
    // source line 256, bytecode pc 29
    (eids = []);
    // source line 257, bytecode pc 34
    (i = 0);
    while ((i < this.m_equipData.length)) {
        if (this.m_equipData[i].isSelected()) {
            // source line 259, bytecode pc 114
            eids.push(this.m_equipData[i].getModel().getPkId());
        }
        // source line 257, bytecode pc 129
        i++;
    }
    // source line 262, bytecode pc 160
    (refineStones = {});
    // source line 263, bytecode pc 165
    (refineStoneIsNull = true);
    // source line 264, bytecode pc 170
    (i = 0);
    while ((i < this.m_refineList.length)) {
        if (this.m_refineList[i].isSelected()) {
            // source line 266, bytecode pc 207
            (refineStoneIsNull = false);
            // source line 267, bytecode pc 243
            (_pkid = this.m_refineList[i].getModel().getPkId());
            // source line 268, bytecode pc 268
            (_selectNum = this.m_refineList[i].getSelectNum());
            // source line 269, bytecode pc 279
            (refineStones[_pkid] = _selectNum);
        }
        // source line 264, bytecode pc 294
        i++;
    }
    if (((eids.length == 0) && refineStoneIsNull)) {
        // source line 275, bytecode pc 399
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_420"));
        // source line 276, bytecode pc 401
        return void 0;
    }
    // source line 279, bytecode pc 417
    (nowExp = this.getNowExp());
    if ((nowExp > this.m_maxExp)) {
        // source line 281, bytecode pc 446
        (subExp = (nowExp - this.m_maxExp));
        if ((subExp > 200)) {
            // source line 283, bytecode pc 518
            xs.Views.Mgr.showToast(xs.Tools.String.createString("jingLian_1"));
            // source line 284, bytecode pc 520
            return void 0;
        }
    }
    // source line 297, bytecode pc 660
    xs.Tools.Net.requestRefineEquip({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    user_equipment_id: refinedEid,
    eaten_user_eids: eids,
    eaten_user_items: refineStones
}, function(data) {
    // source line 295, bytecode pc 73
    xs.Views.Mgr.showToast((xs.Tools.String.createString("auto_name_421") + data.add_list.num));
    // source line 296, bytecode pc 81
    (this.selectMaxLength = 0);
}.bind(this));
},
    onEquipSelect: function() {
    var addExp, i, selectNum, eatExp;
    // source line 302, bytecode pc 4
    (addExp = 0);
    // source line 303, bytecode pc 9
    (i = 0);
    while ((i < this.m_equipData.length)) {
        if (this.m_equipData[i].isSelected()) {
            // source line 305, bytecode pc 81
            (addExp = (addExp + this.m_equipData[i].getOriModel().getEatedRefineExp()));
        }
        // source line 303, bytecode pc 96
        i++;
    }
    // source line 308, bytecode pc 122
    (i = 0);
    while ((i < this.m_refineList.length)) {
        if (this.m_refineList[i].isSelected()) {
            // source line 311, bytecode pc 179
            (selectNum = this.m_refineList[i].getSelectNum());
            // source line 312, bytecode pc 215
            (eatExp = this.m_refineList[i].getOriModel().getEatedRefineExp());
            // source line 313, bytecode pc 230
            (addExp = (addExp + (selectNum * eatExp)));
        }
        // source line 308, bytecode pc 245
        i++;
    }
    // source line 318, bytecode pc 290
    (addExp = Math.floor(addExp));
    // source line 320, bytecode pc 319
    this.m_upgradeCard.updateExp(addExp, this.m_equip);
},
    filterEquipData: function(eids) {
    var newArray, i;
    // source line 326, bytecode pc 8
    (newArray = []);
    // source line 327, bytecode pc 13
    (i = 0);
    while ((i < this.m_equipData.length)) {
        if (((eids.indexOf(this.m_equipData[i].getModel().getPkId()) < 0) && (this.m_equipData[i].getModel().getGeneralPkId() == null))) {
            // source line 331, bytecode pc 139
            newArray.push(this.m_equipData[i]);
        }
        // source line 327, bytecode pc 154
        i++;
    }
    // source line 334, bytecode pc 179
    return newArray;
},
    getNowExp: function() {
    var addExp, curExp, i, selectNum, eatExp;
    // source line 337, bytecode pc 4
    (addExp = 0);
    // source line 338, bytecode pc 25
    (curExp = this.oriEquipModel.getTotalRefineExp());
    // source line 340, bytecode pc 30
    (i = 0);
    while ((i < this.m_equipData.length)) {
        if (this.m_equipData[i].isSelected()) {
            // source line 342, bytecode pc 102
            (addExp = (addExp + this.m_equipData[i].getOriModel().getEatedRefineExp()));
        }
        // source line 340, bytecode pc 117
        i++;
    }
    // source line 345, bytecode pc 143
    (i = 0);
    while ((i < this.m_refineList.length)) {
        if (this.m_refineList[i].isSelected()) {
            // source line 347, bytecode pc 200
            (selectNum = this.m_refineList[i].getSelectNum());
            // source line 348, bytecode pc 236
            (eatExp = this.m_refineList[i].getOriModel().getEatedRefineExp());
            // source line 349, bytecode pc 251
            (addExp = (addExp + (selectNum * eatExp)));
        }
        // source line 345, bytecode pc 266
        i++;
    }
    // source line 354, bytecode pc 310
    return parseInt((curExp + addExp));
},
    getSubMaxExp: function() {
    var nowExp;
    // source line 357, bytecode pc 15
    (nowExp = this.getNowExp());
    // source line 358, bytecode pc 26
    return (this.m_maxExp - nowExp);
},
    isMaxLevel: function() {
    var addExp, curExp, i, selectNum, eatExp;
    // source line 361, bytecode pc 4
    (addExp = 0);
    // source line 362, bytecode pc 25
    (curExp = this.oriEquipModel.getTotalRefineExp());
    // source line 364, bytecode pc 30
    (i = 0);
    while ((i < this.m_equipData.length)) {
        if (this.m_equipData[i].isSelected()) {
            // source line 366, bytecode pc 102
            (addExp = (addExp + this.m_equipData[i].getOriModel().getEatedRefineExp()));
        }
        // source line 364, bytecode pc 117
        i++;
    }
    // source line 369, bytecode pc 143
    (i = 0);
    while ((i < this.m_refineList.length)) {
        if (this.m_refineList[i].isSelected()) {
            // source line 371, bytecode pc 200
            (selectNum = this.m_refineList[i].getSelectNum());
            // source line 372, bytecode pc 236
            (eatExp = this.m_refineList[i].getOriModel().getEatedRefineExp());
            // source line 373, bytecode pc 251
            (addExp = (addExp + (selectNum * eatExp)));
        }
        // source line 369, bytecode pc 266
        i++;
    }
    if ((curExp >= this.m_maxExp)) {
        // source line 379, bytecode pc 304
        return true;
    }
    if ((parseInt((curExp + addExp)) >= parseInt(this.m_maxExp))) {
        // source line 383, bytecode pc 355
        return true;
    }
    // source line 385, bytecode pc 357
    return false;
},
    updateUpgradeCard: function() {
    var posArray, i, _equipData, _refineStoneData;
    // source line 390, bytecode pc 20
    (posArray = this.m_tableView.getSelectIconPosArray());
    // source line 391, bytecode pc 42
    this.m_upgradeCard.playEatCardAction(posArray);
    // source line 394, bytecode pc 114
    (this.oriEquipModel = xs.Profile.GameData.Mgr.getInstance().Equipments.getByPkId(this.oriEquipModel.getPkId()));
    // source line 395, bytecode pc 138
    (this.m_equip = this.oriEquipModel.Clone());
    // source line 396, bytecode pc 143
    (i = 0);
    while ((i < this.m_equipData.length)) {
        // source line 397, bytecode pc 171
        this.m_equipData[i].reset();
        // source line 396, bytecode pc 186
        i++;
    }
    // source line 399, bytecode pc 212
    (i = 0);
    while ((i < this.m_refineList.length)) {
        // source line 400, bytecode pc 240
        this.m_refineList[i].reset();
        // source line 399, bytecode pc 255
        i++;
    }
    // source line 402, bytecode pc 301
    this.m_tableView.resetTargetModel(this.m_equip);
    // source line 404, bytecode pc 355
    (this.m_equipData = xs.Profile.GameData.Mgr.getInstance().CardShowData.getEquipShowData());
    // source line 405, bytecode pc 401
    (this.m_equipData = this.filterEquipData([ this.m_equip.getPkId() ]));
    // source line 406, bytecode pc 411
    (_equipData = this.m_equipData);
    // source line 409, bytecode pc 465
    (this.m_refineList = xs.Profile.GameData.Mgr.getInstance().CardShowData.getRefineStoneShowData());
    // source line 410, bytecode pc 475
    (_refineStoneData = this.m_refineList);
    // source line 411, bytecode pc 497
    (_refineStoneData = _refineStoneData.concat(_equipData));
    // source line 413, bytecode pc 519
    this.m_tableView.setData(_refineStoneData);
    // source line 414, bytecode pc 537
    this.m_tableView.refreshDataAndReload();
},
    setBaseTouchPriority: function(priority) {
    // source line 418, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 419, bytecode pc 36
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 420, bytecode pc 63
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 421, bytecode pc 91
    this.m_btn_1.setTouchPriority((this.m_baseTouchPriority - 100));
    // source line 422, bytecode pc 119
    this.m_btn_2.setTouchPriority((this.m_baseTouchPriority - 100));
    // source line 423, bytecode pc 147
    this.m_btn_3.setTouchPriority((this.m_baseTouchPriority - 100));
    // source line 424, bytecode pc 175
    this.m_btn_4.setTouchPriority((this.m_baseTouchPriority - 100));
},
    cfg: {
        card: { tag: 4 },
        ccbCfg: [
            { tag: 1, type: "ls", id: "LS_popUI1", stringId: "btnStr_refining" },
            { tag: 5, type: "btn", name: "m_closeBtn", id: "Btn_Close" },
            { tag: 7, type: "btn", name: "m_btn_1", id: "Btn_All_Gold" },
            { tag: 8, type: "btn", name: "m_btn_2", id: "Btn_All_Silver" },
            { tag: 9, type: "btn", name: "m_btn_3", id: "Btn_All_Copper" },
            { tag: 10, type: "btn", name: "m_btn_4", id: "Btn_Refine" },
            { tag: 11, type: "ls", id: "LS_yuanfen", stringId: "str_ReplaceDialog_equ" }
        ],
        maxLength: 250
    }
}));
// source line 442, bytecode pc 629
(xs.Views.Dialog.RefineEquipmentDialog.create = function(equipModel) {
    var ret;
    // source line 443, bytecode pc 28
    (ret = new xs.Views.Dialog.RefineEquipmentDialog());
    if ((ret && ret.init(equipModel))) {
        // source line 445, bytecode pc 64
        return ret;
    }
    // source line 447, bytecode pc 66
    return null;
});
// source line 452, bytecode pc 709
xs.Views.Mgr.registerDialog("RefineEquipmentDialog", { "class": xs.Views.Dialog.RefineEquipmentDialog, styleType: xs.Constant_DlgStyleType_Large });
