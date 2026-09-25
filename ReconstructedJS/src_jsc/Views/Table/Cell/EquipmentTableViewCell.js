// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/EquipmentTableViewCell.js:1
// source line 180, bytecode pc 188
(xs.Views.Table.Cell.EquipmentTableViewCell = xs.Views.Table.Cell.BaseTableViewExtraCell.extend({
    name: "EquipmentTableViewCell",
    initWithData: function(data) {
    var func;
    // source line 8, bytecode pc 22
    xs.log("EquipmentTableViewCell initWithData");
    if ((data != null)) {
        // source line 12, bytecode pc 42
        (this._data = data);
    }
    // source line 15, bytecode pc 50
    (this.m_cellGuideTag = null);
    // source line 17, bytecode pc 63
    this.init();
    // source line 19, bytecode pc 106
    (this._ccbNode = xs.Views.Table.Cell.BaseCmnStyleBCell.create());
    // source line 20, bytecode pc 142
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 26, bytecode pc 151
    (func = function() {
    // source line 27, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("FightChapters");
});
    // source line 29, bytecode pc 223
    (this._button = xs.Views.Btn.createWithString("Btn_TableLastButton", xs.Tools.String.createString("1070610005")));
    // source line 31, bytecode pc 277
    this._button.setString(xs.Tools.String.createString("1070410002"), 32);
    // source line 32, bytecode pc 319
    this._button.setButtonSize(cc.size(838, 107));
    // source line 33, bytecode pc 361
    this._button.setPosition(cc.p(420, 53));
    // source line 34, bytecode pc 383
    this._button.setOnClickCallBack(func);
    // source line 35, bytecode pc 419
    xs.Utils.Node.attachNodes(this, this._button);
    // source line 38, bytecode pc 451
    this._ccbNode.m_btn.addCallBackForEvent(this, this._sell);
    // source line 40, bytecode pc 453
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 43, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 44, bytecode pc 34
    this._button.setTouchPriority(this.m_baseTouchPriority);
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 47, bytecode pc 12
    this._super();
    // source line 49, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 52, bytecode pc 63
            (this.m_parentView = parent);
            // source line 53, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 54, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 57, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 61, bytecode pc 12
    this._super();
},
    updateCell: function(data) {
    // source line 65, bytecode pc 9
    (this._data = data);
    // source line 66, bytecode pc 29
    this._button.setVisible(false);
    // source line 67, bytecode pc 49
    this._ccbNode.setVisible(true);
    // source line 68, bytecode pc 62
    this.ccbUpdateCell();
},
    setCellGuideTag: function(tag) {
    // source line 71, bytecode pc 9
    (this.m_cellGuideTag = tag);
    // source line 72, bytecode pc 29
    this.updateCell(this._data);
},
    updateCellEx: function(idx) {
    // source line 77, bytecode pc 19
    this._ccbNode.setVisible(false);
    // source line 78, bytecode pc 39
    this._button.setVisible(true);
},
    _sellEx: function(data) {
    var list, chuji_refineStone, zhongji_refineStone, gaoji_refineStone, yinLiang, i, str;
    if (data.add_list) {
        // source line 84, bytecode pc 24
        (list = data.add_list);
        // source line 85, bytecode pc 29
        (chuji_refineStone = 0);
        // source line 86, bytecode pc 34
        (zhongji_refineStone = 0);
        // source line 87, bytecode pc 39
        (gaoji_refineStone = 0);
        // source line 88, bytecode pc 44
        (yinLiang = 0);
        // source line 90, bytecode pc 49
        (i = 0);
        while ((i < list.length)) {
            if ((list[i].type == xs.Const_Item_Style_Item)) {
                if ((list[i].id == xs.Models.ItemID_RefineStone_chuji)) {
                    // source line 93, bytecode pc 151
                    (chuji_refineStone = (chuji_refineStone + Number(list[i].num)));
                } else {
                    if ((list[i].id == xs.Models.ItemID_RefineStone_zhongji)) {
                        // source line 95, bytecode pc 224
                        (zhongji_refineStone = (zhongji_refineStone + Number(list[i].num)));
                    } else {
                        if ((list[i].id == xs.Models.ItemID_RefineStone_gaoji)) {
                            // source line 97, bytecode pc 297
                            (gaoji_refineStone = (gaoji_refineStone + Number(list[i].num)));
                        }
                    }
                }
            } else {
                // source line 100, bytecode pc 337
                (yinLiang = (yinLiang + Number(list[i].num)));
            }
            // source line 90, bytecode pc 352
            i++;
        }
        // source line 103, bytecode pc 406
        (str = xs.Tools.String.createString("EquipmentMeltSucess"));
        if (chuji_refineStone) {
            // source line 105, bytecode pc 464
            (str = (((str + xs.Tools.String.createString("chuJi_RefineStone")) + chuji_refineStone) + ","));
        }
        if (zhongji_refineStone) {
            // source line 108, bytecode pc 522
            (str = (((str + xs.Tools.String.createString("zhongJi_RefineStone")) + zhongji_refineStone) + ","));
        }
        if (gaoji_refineStone) {
            // source line 111, bytecode pc 580
            (str = (((str + xs.Tools.String.createString("gaoJi_RefineStone")) + gaoji_refineStone) + ","));
        }
        if (yinLiang) {
            // source line 114, bytecode pc 632
            (str = ((str + xs.Tools.String.createString("auto_name_26")) + yinLiang));
        }
        // source line 116, bytecode pc 663
        xs.Views.Mgr.showToast(str);
    }
},
    showCommonDialog: function(_title, _content, _func) {
    // source line 129, bytecode pc 160
    xs.Views.Mgr.showDialogByName("common", {
    title: _title,
    content: _content,
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 127, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: _func
});
},
    _sell: function() {
    var array, sendCallback, rightFunction;
    // source line 132, bytecode pc 14
    (array = []);
    // source line 133, bytecode pc 43
    (array[0] = this._data.getPkId());
    // source line 135, bytecode pc 52
    (sendCallback = function() {
    // source line 136, bytecode pc 26
    xs.Views.Mgr.hideAllDialog();
    // source line 140, bytecode pc 146
    xs.Tools.Net.requireMelt({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), eids: array }, this._sellEx, this);
});
    if ((this._data.getGeneralPkId() != null)) {
        // source line 144, bytecode pc 85
        (rightFunction = function() {
    // source line 145, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
        // source line 147, bytecode pc 127
        this.showCommonDialog("MeltPromptTitle", "EquipmentMelt_HaveEquip", rightFunction.bind(this));
        // source line 148, bytecode pc 129
        return void 0;
    }
    if (this._data.getGemNum()) {
        // source line 152, bytecode pc 160
        (rightFunction = function() {
    // source line 153, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
        // source line 155, bytecode pc 202
        this.showCommonDialog("MeltPromptTitle", "EquipmentMelt_GemsEquip", rightFunction.bind(this));
        // source line 156, bytecode pc 204
        return void 0;
    }
    if ((this._data.getGrade() == xs.Constant_Grade_God)) {
        // source line 162, bytecode pc 279
        this.showCommonDialog("MeltPromptTitle", "EquipmentMelt_GodEquip", sendCallback.bind(this));
        // source line 163, bytecode pc 281
        return void 0;
    }
    if ((this._data.getGrade() == xs.Constant_Grade_Demon)) {
        // source line 166, bytecode pc 356
        this.showCommonDialog("MeltPromptTitle", "EquipmentMelt_MoEquip", sendCallback.bind(this));
        // source line 167, bytecode pc 358
        return void 0;
    }
    if ((this._data.getGrade() == xs.Constant_Grade_Gold)) {
        // source line 170, bytecode pc 433
        this.showCommonDialog("MeltPromptTitle", "EquipmentMelt_GoldEquip", sendCallback.bind(this));
        // source line 171, bytecode pc 435
        return void 0;
    }
    // source line 176, bytecode pc 555
    xs.Tools.Net.requireMelt({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), eids: array }, this._sellEx, this);
},
    ccbUpdateCell: function() {
    var obj_belongs_general, refineStoneBg, refineStone, refineStoneType, refineStoneLable, pos, posPro, sprite;
    try {
        // source line 185, bytecode pc 25
        this._ccbNode.m_icon.setVisible(false);
        // source line 186, bytecode pc 50
        this._ccbNode.m_nameLab.setVisible(true);
        // source line 187, bytecode pc 75
        this._ccbNode.m_belongLab.setVisible(true);
        // source line 190, bytecode pc 133
        (obj_belongs_general = xs.Profile.GameData.Mgr.getInstance().Equipments.getGeneral(this._data));
        if ((obj_belongs_general != null)) {
            // source line 192, bytecode pc 214
            this._ccbNode.m_belongLab.setString((xs.Tools.String.createString("str_Equipment_BelongTo") + obj_belongs_general.getNameString()));
        } else {
            // source line 195, bytecode pc 248
            this._ccbNode.m_belongLab.setString(" ");
        }
        // source line 203, bytecode pc 273
        this._ccbNode.m_propertyBg.setVisible(true);
        // source line 204, bytecode pc 298
        this._ccbNode.m_fightBg.setVisible(true);
        // source line 205, bytecode pc 323
        this._ccbNode.m_priceBg.setVisible(true);
        // source line 206, bytecode pc 348
        this._ccbNode.m_propertyIcon.setVisible(true);
        // source line 207, bytecode pc 373
        this._ccbNode.m_coinIcon.setVisible(true);
        // source line 208, bytecode pc 398
        this._ccbNode.m_propertyLab.setVisible(true);
        // source line 209, bytecode pc 423
        this._ccbNode.m_priceLab.setVisible(true);
        // source line 210, bytecode pc 448
        this._ccbNode.m_btn.setVisible(true);
        // source line 211, bytecode pc 504
        this._ccbNode.m_btn.setString(xs.Tools.String.createString("EquipmentMelt"));
        // source line 212, bytecode pc 529
        this._ccbNode.m_fightIcon.setVisible(true);
        // source line 213, bytecode pc 554
        this._ccbNode.m_fightLab.setVisible(true);
        // source line 217, bytecode pc 581
        this._ccbNode.m_propertyIcon.setPositionX(286);
        // source line 218, bytecode pc 608
        this._ccbNode.m_propertyBg.setPositionX(346);
        // source line 219, bytecode pc 635
        this._ccbNode.m_propertyLab.setPositionX(308);
        // source line 221, bytecode pc 662
        this._ccbNode.m_priceBg.setPositionX(482);
        // source line 222, bytecode pc 689
        this._ccbNode.m_coinIcon.setPositionX(422);
        // source line 223, bytecode pc 716
        this._ccbNode.m_priceLab.setPositionX(442);
        // source line 227, bytecode pc 758
        (refineStoneBg = xs.Factorys.Sprite.create("smallIcon_fp_bg", "Cmn01"));
        // source line 233, bytecode pc 845
        xs.Utils.Node.attachNodes(this._ccbNode, refineStoneBg, { desc: "lb", sc: true, offset: { x: 614, y: 24 } });
        // source line 236, bytecode pc 850
        (refineStone = null);
        // source line 237, bytecode pc 871
        (refineStoneType = this._data.getMeltRefineStoneId());
        if ((refineStoneType == xs.Models.ItemID_RefineStone_chuji)) {
            // source line 239, bytecode pc 937
            (refineStone = xs.Factorys.Sprite.create("Cmn02_jinglianshi1", "Cmn02"));
        } else {
            if ((refineStoneType == xs.Models.ItemID_RefineStone_zhongji)) {
                // source line 243, bytecode pc 1008
                (refineStone = xs.Factorys.Sprite.create("Cmn02_jinglianshi2", "Cmn02"));
            } else {
                if ((refineStoneType == xs.Models.ItemID_RefineStone_gaoji)) {
                    // source line 246, bytecode pc 1079
                    (refineStone = xs.Factorys.Sprite.create("Cmn02_jinglianshi3", "Cmn02"));
                }
            }
        }
        // source line 253, bytecode pc 1166
        xs.Utils.Node.attachNodes(this._ccbNode, refineStone, { desc: "lb", sc: true, offset: { x: 564, y: 27 } });
        // source line 257, bytecode pc 1202
        (refineStoneLable = xs.Factorys.Label.createByStyleId("LS_mainUI4"));
        // source line 258, bytecode pc 1242
        refineStoneLable.setAnchorPoint(cc.p(0, 0.5));
        // source line 259, bytecode pc 1275
        refineStoneLable.setString(this._data.getMeltRefineStoneNum());
        // source line 265, bytecode pc 1362
        xs.Utils.Node.attachNodes(this._ccbNode, refineStoneLable, { desc: "lb", sc: true, offset: { x: 584, y: 26 } });
        // source line 272, bytecode pc 1436
        this._ccbNode.m_fightLab.setString(xs.Utils.floorSafe(this._data.getAttrNaked(xs.Constant_AttrType_FightPoint)));
        // source line 276, bytecode pc 1470
        xs.Utils.Node.safeRemoveChild(this._equipmenthead);
        // source line 278, bytecode pc 1494
        (this._equipmenthead = this._data.createIcon_GradeAndLvBoreGem());
        // source line 279, bytecode pc 1535
        xs.Utils.Node.attachNodes(this._ccbNode, this._equipmenthead);
        // source line 280, bytecode pc 1576
        this._equipmenthead.setPosition(this._ccbNode.m_icon.getPosition());
        // source line 285, bytecode pc 1613
        this._equipmenthead.setOnClickCallBack(function() {
    // source line 283, bytecode pc 50
    xs.Views.Mgr.showDialogByName("EquipNoPanel", { equipData: this._data });
}.bind(this));
        // source line 289, bytecode pc 1654
        this._ccbNode.m_priceLab.setString(this._data.getPrice());
        // source line 292, bytecode pc 1723
        this._ccbNode.m_propertyLab.setString(("+" + xs.Utils.floorSafe(this._data.getEffectValue())));
        // source line 295, bytecode pc 1764
        this._ccbNode.m_nameLab.setString(this._data.getNameString());
        // source line 297, bytecode pc 1790
        (pos = this._ccbNode.m_gradeIcon.getPosition());
        // source line 298, bytecode pc 1829
        xs.Utils.Node.safeRemoveChild(this._ccbNode.m_gradeIcon);
        // source line 299, bytecode pc 1885
        (this._ccbNode.m_gradeIcon = xs.Tools.UI.createGradeSmallIcon(this._data.getGrade()));
        // source line 300, bytecode pc 1912
        this._ccbNode.m_gradeIcon.setPosition(pos);
        // source line 301, bytecode pc 1958
        xs.Utils.Node.attachNodes(this._ccbNode, this._ccbNode.m_gradeIcon);
        // source line 305, bytecode pc 1984
        (posPro = this._ccbNode.m_propertyIcon.getPosition());
        // source line 306, bytecode pc 2005
        (sprite = this._data.createEffectTypeSmallIcon());
        // source line 307, bytecode pc 2039
        xs.Utils.Node.safeRemoveChild(this._propertyIcon);
        // source line 308, bytecode pc 2063
        (this._propertyIcon = this._data.createEffectTypeSmallIcon());
        // source line 309, bytecode pc 2085
        this._propertyIcon.setPosition(posPro);
        // source line 310, bytecode pc 2126
        xs.Utils.Node.attachNodes(this._ccbNode, this._propertyIcon);
        // source line 313, bytecode pc 2156
        this._ccbNode.m_btn.setGuideTag(this.m_cellGuideTag);
    } catch (e) {
        /* TODO_BYTECODE pc=2172 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
}
}));
// source line 319, bytecode pc 224
(xs.Views.Table.Cell.EquipmentTableViewCell.create = function(data) {
    var ret;
    // source line 320, bytecode pc 33
    (ret = new xs.Views.Table.Cell.EquipmentTableViewCell());
    if ((ret && ret.initWithData(data))) {
        // source line 322, bytecode pc 69
        return ret;
    }
    // source line 324, bytecode pc 88
    this.error("EquipmentTableViewCell.create:");
    // source line 325, bytecode pc 90
    return null;
});
// source line 328, bytecode pc 260
(xs.Views.Table.Cell.EquipmentTableViewCell.createDialog = function(sendCallback, target) {
    var obj;
    // source line 332, bytecode pc 70
    (obj = xs.Views.Mgr.showDialogByName("common", { title: "MeltPromptTitle", content: "EquipmentMelt_GoldEquip", rightCB: sendCallback }));
    // source line 335, bytecode pc 74
    return obj;
});
