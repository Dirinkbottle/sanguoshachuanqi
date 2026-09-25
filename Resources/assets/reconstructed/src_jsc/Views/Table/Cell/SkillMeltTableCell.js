// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/SkillMeltTableCell.js:1
// source line 159, bytecode pc 188
(xs.Views.Table.Cell.SkillMeltTableCell = xs.Views.Table.Cell.BaseTableViewExtraCell.extend({
    name: "SkillMeltTableCell",
    initWithData: function(data) {
    var func;
    // source line 7, bytecode pc 22
    xs.log("SkillMeltTableCell initWithData");
    if ((data != null)) {
        // source line 11, bytecode pc 42
        (this._data = data);
    }
    // source line 14, bytecode pc 50
    (this.m_cellGuideTag = null);
    // source line 16, bytecode pc 63
    this.init();
    // source line 18, bytecode pc 106
    (this._ccbNode = xs.Views.Table.Cell.BaseCmnStyleBCell.create());
    // source line 19, bytecode pc 142
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 22, bytecode pc 151
    (func = function() {
    // source line 23, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("FightChapters");
});
    // source line 25, bytecode pc 223
    (this._button = xs.Views.Btn.createWithString("Btn_TableLastButton", xs.Tools.String.createString("auto_name_506")));
    // source line 26, bytecode pc 277
    this._button.setString(xs.Tools.String.createString("auto_name_506"), 32);
    // source line 27, bytecode pc 319
    this._button.setButtonSize(cc.size(838, 107));
    // source line 28, bytecode pc 361
    this._button.setPosition(cc.p(420, 53));
    // source line 29, bytecode pc 383
    this._button.setOnClickCallBack(func);
    // source line 30, bytecode pc 419
    xs.Utils.Node.attachNodes(this, this._button);
    // source line 32, bytecode pc 451
    this._ccbNode.m_btn.addCallBackForEvent(this, this._sell);
    // source line 34, bytecode pc 453
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 37, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 38, bytecode pc 34
    this._button.setTouchPriority(this.m_baseTouchPriority);
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 41, bytecode pc 12
    this._super();
    // source line 43, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 46, bytecode pc 63
            (this.m_parentView = parent);
            // source line 47, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 48, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 51, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 55, bytecode pc 12
    this._super();
},
    updateCell: function(data) {
    // source line 59, bytecode pc 9
    (this._data = data);
    // source line 60, bytecode pc 29
    this._button.setVisible(false);
    // source line 61, bytecode pc 49
    this._ccbNode.setVisible(true);
    // source line 62, bytecode pc 62
    this.ccbUpdateCell();
},
    setCellGuideTag: function(tag) {
    // source line 65, bytecode pc 9
    (this.m_cellGuideTag = tag);
    // source line 66, bytecode pc 29
    this.updateCell(this._data);
},
    updateCellEx: function(idx) {
    // source line 71, bytecode pc 19
    this._ccbNode.setVisible(false);
    // source line 72, bytecode pc 39
    this._button.setVisible(true);
},
    _sellEx: function(data) {
    var list, chuji_refineStone, zhongji_refineStone, gaoji_refineStone, i, str;
    if (data.add_list) {
        // source line 78, bytecode pc 24
        (list = data.add_list);
        // source line 79, bytecode pc 29
        (chuji_refineStone = 0);
        // source line 80, bytecode pc 34
        (zhongji_refineStone = 0);
        // source line 81, bytecode pc 39
        (gaoji_refineStone = 0);
        // source line 83, bytecode pc 44
        (i = 0);
        while ((i < list.length)) {
            if ((list[i].type == xs.Const_Item_Style_Item)) {
                if ((list[i].id == xs.Models.ItemID_JuanZhou_chuji)) {
                    // source line 86, bytecode pc 146
                    (chuji_refineStone = (chuji_refineStone + Number(list[i].num)));
                } else {
                    if ((list[i].id == xs.Models.ItemID_JuanZhou_zhongji)) {
                        // source line 88, bytecode pc 219
                        (zhongji_refineStone = (zhongji_refineStone + Number(list[i].num)));
                    } else {
                        if ((list[i].id == xs.Models.ItemID_JuanZhou_gaoji)) {
                            // source line 90, bytecode pc 292
                            (gaoji_refineStone = (gaoji_refineStone + Number(list[i].num)));
                        }
                    }
                }
            }
            // source line 83, bytecode pc 307
            i++;
        }
        // source line 94, bytecode pc 361
        (str = xs.Tools.String.createString("EquipmentMeltSucess"));
        if (chuji_refineStone) {
            // source line 96, bytecode pc 419
            (str = (((str + xs.Tools.String.createString("chuJi_JuanZhou")) + chuji_refineStone) + ","));
        }
        if (zhongji_refineStone) {
            // source line 99, bytecode pc 477
            (str = (((str + xs.Tools.String.createString("zhongji_JuanZhou")) + zhongji_refineStone) + ","));
        }
        if (gaoji_refineStone) {
            // source line 102, bytecode pc 529
            (str = ((str + xs.Tools.String.createString("gaoji_JuanZhou")) + gaoji_refineStone));
        }
        // source line 105, bytecode pc 560
        xs.Views.Mgr.showToast(str);
    }
},
    showCommonDialog: function(_title, _content, _func) {
    // source line 118, bytecode pc 160
    xs.Views.Mgr.showDialogByName("common", {
    title: _title,
    content: _content,
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 116, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: _func
});
},
    _sell: function() {
    var array, sendCallback, rightFunction;
    // source line 121, bytecode pc 14
    (array = []);
    // source line 122, bytecode pc 43
    (array[0] = this._data.getPkId());
    // source line 124, bytecode pc 52
    (sendCallback = function() {
    // source line 125, bytecode pc 26
    xs.Views.Mgr.hideAllDialog();
    // source line 129, bytecode pc 146
    xs.Tools.Net.requireSkillMelt({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), sids: array }, this._sellEx, this);
});
    if ((this._data.getGeneralPkId() != null)) {
        // source line 133, bytecode pc 85
        (rightFunction = function() {
    // source line 134, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
        // source line 136, bytecode pc 127
        this.showCommonDialog("MeltPromptTitle", "EquipmentMelt_HaveEquip", rightFunction.bind(this));
        // source line 137, bytecode pc 129
        return void 0;
    }
    if ((this._data.getGrade() == xs.Constant_Grade_God)) {
        if ((this._data.getId() != xs.Models.ItemID_GodBook)) {
            // source line 146, bytecode pc 242
            this.showCommonDialog("MeltPromptTitle", "SKILLMelt_God", sendCallback.bind(this));
            // source line 147, bytecode pc 244
            return void 0;
        }
    }
    // source line 155, bytecode pc 364
    xs.Tools.Net.requireSkillMelt({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), sids: array }, this._sellEx, this);
},
    ccbUpdateCell: function() {
    var obj_belongs_general, offx, chujiJuanZhouBg, chujiJuanZhouIc, chujiJuanZhouLable, zhongjiJuanZhouBg, zhongjiJuanZhouIc, zhongjiJuanZhouLable, gaojiJuanZhouBg, gaojiJuanZhouIc, gaojiJuanZhouLable, chujiNum, zhongjiNum, gaojiNum, ids, nums, beichiExp, index, i, pos;
    try {
        // source line 162, bytecode pc 25
        this._ccbNode.m_icon.setVisible(false);
        // source line 163, bytecode pc 50
        this._ccbNode.m_belongLab.setVisible(true);
        // source line 164, bytecode pc 108
        (obj_belongs_general = xs.Profile.GameData.Mgr.getInstance().Skills.getGeneral(this._data));
        if ((obj_belongs_general != null)) {
            // source line 166, bytecode pc 189
            this._ccbNode.m_belongLab.setString((xs.Tools.String.createString("str_Equipment_BelongTo") + obj_belongs_general.getNameString()));
        } else {
            // source line 169, bytecode pc 223
            this._ccbNode.m_belongLab.setString(" ");
        }
        // source line 172, bytecode pc 248
        this._ccbNode.m_btn.setVisible(true);
        // source line 173, bytecode pc 304
        this._ccbNode.m_btn.setString(xs.Tools.String.createString("EquipmentMelt"));
        // source line 175, bytecode pc 311
        (offx = 132);
        // source line 176, bytecode pc 353
        (chujiJuanZhouBg = xs.Factorys.Sprite.create("smallIcon_fp_bg", "Cmn01"));
        // source line 182, bytecode pc 447
        xs.Utils.Node.attachNodes(this._ccbNode, chujiJuanZhouBg, { desc: "lb", sc: true, offset: { x: (614 - (offx * 2)), y: 24 } });
        // source line 185, bytecode pc 452
        (chujiJuanZhouIc = null);
        // source line 187, bytecode pc 494
        (chujiJuanZhouIc = xs.Factorys.Sprite.create("Cmn02_juanzhou1", "Cmn02"));
        // source line 193, bytecode pc 588
        xs.Utils.Node.attachNodes(this._ccbNode, chujiJuanZhouIc, { desc: "lb", sc: true, offset: { x: (564 - (offx * 2)), y: 27 } });
        // source line 196, bytecode pc 624
        (chujiJuanZhouLable = xs.Factorys.Label.createByStyleId("LS_mainUI4"));
        // source line 197, bytecode pc 664
        chujiJuanZhouLable.setAnchorPoint(cc.p(0, 0.5));
        // source line 203, bytecode pc 758
        xs.Utils.Node.attachNodes(this._ccbNode, chujiJuanZhouLable, { desc: "lb", sc: true, offset: { x: (584 - (offx * 2)), y: 26 } });
        // source line 208, bytecode pc 800
        (zhongjiJuanZhouBg = xs.Factorys.Sprite.create("smallIcon_fp_bg", "Cmn01"));
        // source line 214, bytecode pc 891
        xs.Utils.Node.attachNodes(this._ccbNode, zhongjiJuanZhouBg, { desc: "lb", sc: true, offset: { x: (614 - offx), y: 24 } });
        // source line 217, bytecode pc 933
        (zhongjiJuanZhouIc = xs.Factorys.Sprite.create("Cmn02_juanzhou2", "Cmn02"));
        // source line 223, bytecode pc 1024
        xs.Utils.Node.attachNodes(this._ccbNode, zhongjiJuanZhouIc, { desc: "lb", sc: true, offset: { x: (564 - offx), y: 27 } });
        // source line 226, bytecode pc 1060
        (zhongjiJuanZhouLable = xs.Factorys.Label.createByStyleId("LS_mainUI4"));
        // source line 227, bytecode pc 1100
        zhongjiJuanZhouLable.setAnchorPoint(cc.p(0, 0.5));
        // source line 233, bytecode pc 1191
        xs.Utils.Node.attachNodes(this._ccbNode, zhongjiJuanZhouLable, { desc: "lb", sc: true, offset: { x: (584 - offx), y: 26 } });
        // source line 238, bytecode pc 1233
        (gaojiJuanZhouBg = xs.Factorys.Sprite.create("smallIcon_fp_bg", "Cmn01"));
        // source line 244, bytecode pc 1320
        xs.Utils.Node.attachNodes(this._ccbNode, gaojiJuanZhouBg, { desc: "lb", sc: true, offset: { x: 614, y: 24 } });
        // source line 247, bytecode pc 1362
        (gaojiJuanZhouIc = xs.Factorys.Sprite.create("Cmn02_juanzhou3", "Cmn02"));
        // source line 253, bytecode pc 1449
        xs.Utils.Node.attachNodes(this._ccbNode, gaojiJuanZhouIc, { desc: "lb", sc: true, offset: { x: 564, y: 27 } });
        // source line 256, bytecode pc 1485
        (gaojiJuanZhouLable = xs.Factorys.Label.createByStyleId("LS_mainUI4"));
        // source line 257, bytecode pc 1525
        gaojiJuanZhouLable.setAnchorPoint(cc.p(0, 0.5));
        // source line 263, bytecode pc 1612
        xs.Utils.Node.attachNodes(this._ccbNode, gaojiJuanZhouLable, { desc: "lb", sc: true, offset: { x: 584, y: 26 } });
        // source line 270, bytecode pc 1613
        function strToArray(arrayStr) {
    var array;
    // source line 271, bytecode pc 8
    (array = []);
    while ((arrayStr.indexOf(";") > 0)) {
        // source line 276, bytecode pc 67
        array.push(arrayStr.substring(0, arrayStr.indexOf(";")));
        // source line 277, bytecode pc 117
        (arrayStr = arrayStr.substring((arrayStr.indexOf(";") + 1), arrayStr.length));
    }
    // source line 281, bytecode pc 175
    (arrayStr = arrayStr.replace(";", ""));
    if ((arrayStr.length > 0)) {
        // source line 283, bytecode pc 209
        array.push(arrayStr);
    }
    // source line 285, bytecode pc 213
    return array;
}
        // source line 289, bytecode pc 1622
        (chujiNum = 0);
        // source line 290, bytecode pc 1627
        (zhongjiNum = 0);
        // source line 291, bytecode pc 1632
        (gaojiNum = 0);
        // source line 292, bytecode pc 1641
        (ids = []);
        // source line 293, bytecode pc 1650
        (nums = []);
        if ((this._data.getId() == xs.Models.ItemID_GodBook)) {
            // source line 300, bytecode pc 1735
            (beichiExp = xs.Tools.CfgData.readRecordByTypeAndKeyNoDefault(xs.Constant_CfgDataType_SkillMelt, "shenshucailiao_jinengshengji"));
            // source line 301, bytecode pc 1764
            (ids = strToArray(beichiExp[0].item_id));
            // source line 302, bytecode pc 1793
            (nums = strToArray(beichiExp[0].item_num));
        } else {
            if ((this._data.getId() == xs.Models.ItemID_GoldBook)) {
                // source line 308, bytecode pc 1883
                (beichiExp = xs.Tools.CfgData.readRecordByTypeAndKeyNoDefault(xs.Constant_CfgDataType_SkillMelt, "jinshucailiao_jinengshengji"));
                // source line 309, bytecode pc 1912
                (ids = strToArray(beichiExp[0].item_id));
                // source line 310, bytecode pc 1941
                (nums = strToArray(beichiExp[0].item_num));
            } else {
                if ((this._data.getId() == xs.Models.ItemID_SilverBook)) {
                    // source line 315, bytecode pc 2031
                    (beichiExp = xs.Tools.CfgData.readRecordByTypeAndKeyNoDefault(xs.Constant_CfgDataType_SkillMelt, "yinshucailiao_jinengshengji"));
                    // source line 316, bytecode pc 2060
                    (ids = strToArray(beichiExp[0].item_id));
                    // source line 317, bytecode pc 2089
                    (nums = strToArray(beichiExp[0].item_num));
                } else {
                    // source line 322, bytecode pc 2158
                    (beichiExp = xs.Tools.CfgData.readRecordByTypeAndKeyNoDefault(xs.Constant_CfgDataType_SkillMelt, this._data.getBaseDataRef().eated_exp_type));
                    // source line 324, bytecode pc 2181
                    (index = (this._data.getLevel() - 1));
                    // source line 325, bytecode pc 2222
                    xs.log_ck(("技能分解" + this._data.getId()));
                    // source line 326, bytecode pc 2252
                    xs.log_ck(beichiExp[index].item_num);
                    // source line 327, bytecode pc 2282
                    xs.log_ck(beichiExp[index].item_id);
                    if (((index >= 0) && (index < beichiExp.length))) {
                        // source line 331, bytecode pc 2341
                        (ids = strToArray(beichiExp[index].item_id));
                        // source line 332, bytecode pc 2372
                        (nums = strToArray(beichiExp[index].item_num));
                    }
                }
            }
        }
        if ((ids.length === nums.length)) {
            // source line 341, bytecode pc 2399
            (i = 0);
            while ((i < ids.length)) {
                if ((ids[i] == xs.Models.ItemID_JuanZhou_chuji)) {
                    // source line 345, bytecode pc 2444
                    (chujiNum = nums[i]);
                } else {
                    if ((ids[i] == xs.Models.ItemID_JuanZhou_zhongji)) {
                        // source line 349, bytecode pc 2488
                        (zhongjiNum = nums[i]);
                    } else {
                        if ((ids[i] == xs.Models.ItemID_JuanZhou_gaoji)) {
                            // source line 353, bytecode pc 2532
                            (gaojiNum = nums[i]);
                        }
                    }
                }
                // source line 341, bytecode pc 2547
                i++;
            }
        }
        // source line 359, bytecode pc 2584
        chujiJuanZhouLable.setString(chujiNum);
        // source line 360, bytecode pc 2603
        zhongjiJuanZhouLable.setString(zhongjiNum);
        // source line 361, bytecode pc 2622
        gaojiJuanZhouLable.setString(gaojiNum);
        // source line 365, bytecode pc 2647
        this._ccbNode.m_fightIcon.setVisible(true);
        // source line 366, bytecode pc 2672
        this._ccbNode.m_fightLab.setVisible(true);
        // source line 367, bytecode pc 2697
        this._ccbNode.m_fightBg.setVisible(true);
        // source line 368, bytecode pc 2749
        this._ccbNode.m_fightLab.setString(this._data.getAttrNaked(xs.Constant_AttrType_FightPoint));
        // source line 370, bytecode pc 2783
        xs.Utils.Node.safeRemoveChild(this._skillHead);
        // source line 371, bytecode pc 2807
        (this._skillHead = this._data.createIcon_GradeAndLvAndAdvancedLv());
        // source line 372, bytecode pc 2848
        xs.Utils.Node.attachNodes(this._ccbNode, this._skillHead);
        // source line 373, bytecode pc 2889
        this._skillHead.setPosition(this._ccbNode.m_icon.getPosition());
        // source line 380, bytecode pc 2926
        this._skillHead.setOnClickCallBack(function() {
    var _id, _model;
    // source line 375, bytecode pc 20
    (_id = this._data.getId());
    // source line 376, bytecode pc 30
    (_model = this._data);
    // source line 378, bytecode pc 78
    xs.Views.Mgr.showDialogByName("SkillNoPanel", { skillData: _model });
}.bind(this));
        // source line 382, bytecode pc 2951
        this._ccbNode.m_nameLab.setVisible(true);
        // source line 383, bytecode pc 2992
        this._ccbNode.m_nameLab.setString(this._data.getNameString());
        // source line 385, bytecode pc 3018
        (pos = this._ccbNode.m_gradeIcon.getPosition());
        // source line 386, bytecode pc 3057
        xs.Utils.Node.safeRemoveChild(this._ccbNode.m_gradeIcon);
        // source line 387, bytecode pc 3113
        (this._ccbNode.m_gradeIcon = xs.Tools.UI.createGradeSmallIcon(this._data.getGrade()));
        // source line 388, bytecode pc 3140
        this._ccbNode.m_gradeIcon.setPosition(pos);
        // source line 389, bytecode pc 3186
        xs.Utils.Node.attachNodes(this._ccbNode, this._ccbNode.m_gradeIcon);
    } catch (e) {
        /* TODO_BYTECODE pc=3202 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
}
}));
// source line 397, bytecode pc 224
(xs.Views.Table.Cell.SkillMeltTableCell.create = function(data) {
    var ret;
    // source line 398, bytecode pc 33
    (ret = new xs.Views.Table.Cell.SkillMeltTableCell());
    if ((ret && ret.initWithData(data))) {
        // source line 400, bytecode pc 69
        return ret;
    }
    // source line 402, bytecode pc 88
    this.error("SkillMeltTableCell.create:");
    // source line 403, bytecode pc 90
    return null;
});
// source line 406, bytecode pc 260
(xs.Views.Table.Cell.SkillMeltTableCell.createDialog = function(sendCallback, target) {
    var obj;
    // source line 410, bytecode pc 70
    (obj = xs.Views.Mgr.showDialogByName("common", { title: "MeltPromptTitle", content: "EquipmentMelt_GoldEquip", rightCB: sendCallback }));
    // source line 413, bytecode pc 74
    return obj;
});
