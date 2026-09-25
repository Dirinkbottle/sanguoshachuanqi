// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/HulaoBattle/GarrisonLayoutDialog.js:1
// source line 947, bytecode pc 1204
(xs.Views.GarrisonLayoutDialog = xs.Views.HungerLayer.extend({
    name: "xs.Views.GarrisonLayoutDialog",
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    constNum: { ten: 10, hundred: 100, sixty: 61, firstRound: 1, secondRound: 2, thirdRound: 3 },
    ccbCfg: [
        { tag: 1, type: "ls", name: "lblTitle", id: "LS_huodong_title", stringId: "GarrisonLayout_title" },
        { tag: 2, type: "btn", name: "btnClose", id: "Btn_Close" },
        { tag: 41, type: "ls", name: "m_defenders_1", id: "LS_popUI3", stringId: "GarrisonLayout01" },
        { tag: 42, type: "ls", name: "m_defenders_2", id: "LS_popUI3", stringId: "GarrisonLayout02" },
        { tag: 43, type: "ls", name: "m_defenders_3", id: "LS_popUI3", stringId: "GarrisonLayout03" },
        { tag: 44, type: "ls", name: "m_enemy_1", id: "LS_popUI3", stringId: "GarrisonLayout04" },
        { tag: 61, type: "ls", name: "m_enemyName_1", id: "LS_wujiangInf2" },
        { tag: 46, type: "ls", name: "m_enemy_2", id: "LS_popUI3", stringId: "GarrisonLayout05" },
        { tag: 62, type: "ls", name: "m_enemyName_2", id: "LS_wujiangInf2" },
        { tag: 48, type: "ls", name: "m_enemy_3", id: "LS_popUI3", stringId: "GarrisonLayout06" },
        { tag: 63, type: "ls", name: "m_enemyName_3", id: "LS_wujiangInf2" },
        { tag: 50, type: "ls", name: "m_introduction", id: "LS_jinengInf1" },
        { tag: 3, type: "btn", name: "m_LightenLuckBtn", id: "Btn_btn1", stringId: "GarrisonLayout08" },
        { tag: 4, type: "btn", name: "m_GoToFightBtn", id: "Btn_btn1", stringId: "GarrisonLayout09" },
        { tag: 5, type: "btn", name: "m_selectGeneralBtn", id: "Btn_btn1", stringId: "GarrisonLayout10" }
    ],
    init: function(param) {
    var i;
    if (!this._super()) {
        // source line 44, bytecode pc 19
        return false;
    }
    // source line 46, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 47, bytecode pc 35
    (this.btnClose = null);
    // source line 48, bytecode pc 43
    (this.m_LightenLuckBtn = null);
    // source line 49, bytecode pc 51
    (this.m_GoToFightBtn = null);
    // source line 50, bytecode pc 59
    (this.m_selectGeneralBtn = null);
    // source line 51, bytecode pc 67
    (this.m_introduction = null);
    // source line 54, bytecode pc 87
    (this.m_left_data = param.data.left_info);
    // source line 55, bytecode pc 99
    (this.m_left_list = []);
    // source line 56, bytecode pc 124
    (this.m_last_leftList = param.data.left_info.general_list);
    // source line 57, bytecode pc 149
    (this.m_right_data = param.data.right_info.general_list);
    // source line 58, bytecode pc 174
    (this.m_right_nameData = param.data.right_info.user_list);
    // source line 59, bytecode pc 189
    (this.m_type = param.mode);
    // source line 60, bytecode pc 204
    (this.m_stage = param.stage);
    // source line 61, bytecode pc 216
    (this.m_waysList = []);
    // source line 62, bytecode pc 224
    (this.m_needGeneralsNum = 0);
    // source line 64, bytecode pc 237
    (this.m_tag_data_dic = {});
    // source line 66, bytecode pc 245
    (this.m_tag = null);
    // source line 68, bytecode pc 253
    (this.m_isOneStepGenerals = false);
    // source line 71, bytecode pc 258
    (i = 0);
    while ((i < this.m_last_leftList.length)) {
        if (!xs.Utils.isEmpty(this.m_last_leftList[i])) {
            // source line 75, bytecode pc 331
            this.m_left_list.push(this.m_last_leftList[i]);
        }
        // source line 71, bytecode pc 345
        (i = (+i + 1));
    }
    // source line 79, bytecode pc 418
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.GarrisonLayoutDialog, this));
    // source line 80, bytecode pc 461
    this.m_ccbNode.setContentSize(cc.size(935, 606));
    // source line 81, bytecode pc 508
    this.m_ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 84, bytecode pc 567
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "c", sc: true });
    // source line 87, bytecode pc 610
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 93, bytecode pc 700
    this.m_introduction.setString(xs.Tools.String.createStringWithArgsArray("GarrisonLayout07", [ param.data.left_info.consume_fortune.toString() ]));
    // source line 97, bytecode pc 724
    this.btnClose.setOnClickCallBack(function() {
    // source line 99, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 102, bytecode pc 762
    this.m_LightenLuckBtn.setOnClickCallBack(this.LightenLuckCallBack.bind(this));
    // source line 103, bytecode pc 800
    this.m_GoToFightBtn.setOnClickCallBack(this.ClickFightButtonCallBack.bind(this));
    // source line 104, bytecode pc 838
    this.m_selectGeneralBtn.setOnClickCallBack(this.oneStepSetGeneral.bind(this));
    // source line 107, bytecode pc 851
    this.getRightGeneralsDeadState();
    // source line 108, bytecode pc 864
    this.replacePicWithButtonByType();
    // source line 109, bytecode pc 877
    this.setRightGenerals();
    // source line 110, bytecode pc 879
    return true;
},
    setRightGenerals: function() {
    var i, _icon, _GeneralIcon, _name;
    // source line 114, bytecode pc 4
    (i = 0);
    while ((i < this.m_right_data.length)) {
        // source line 115, bytecode pc 47
        (_icon = this.m_ccbNode.getChildByTag((this.constNum.hundred + i)));
        if (_icon) {
            if (!xs.Utils.isEmpty(this.m_right_data[i])) {
                // source line 118, bytecode pc 120
                (_GeneralIcon = this.createGeneralIcon(this.m_right_data[i]));
                // source line 119, bytecode pc 162
                xs.Utils.Node.replaceChildSafe(this.m_ccbNode, _icon, _GeneralIcon);
                // source line 120, bytecode pc 169
                (_icon = _GeneralIcon);
            }
        }
        // source line 114, bytecode pc 183
        (i = (+i + 1));
    }
    // source line 126, bytecode pc 210
    (i = 0);
    while ((i < this.m_right_nameData.length)) {
        // source line 127, bytecode pc 253
        (_name = this.m_ccbNode.getChildByTag((this.constNum.sixty + i)));
        if (_name) {
            // source line 129, bytecode pc 320
            _name.setString(((("S" + this.m_right_nameData[i].server_id) + " ") + this.m_right_nameData[i].user_nick));
        }
        // source line 126, bytecode pc 334
        (i = (+i + 1));
    }
},
    getRightGeneralsDeadState: function() {
    var listStar, listEnd, j, allDead, i;
    // source line 136, bytecode pc 11
    (this.m_waysList = []);
    // source line 138, bytecode pc 37
    (listStar = [ 0, 3, 6 ]);
    // source line 139, bytecode pc 64
    (listEnd = [ 2, 5, 8 ]);
    // source line 141, bytecode pc 69
    (j = 1);
    while ((j <= this.m_type)) {
        // source line 142, bytecode pc 80
        (allDead = 0);
        // source line 143, bytecode pc 93
        (i = listStar[(j - 1)]);
        while ((i <= listEnd[(j - 1)])) {
            if (!xs.Utils.isEmpty(this.m_right_data[i])) {
                if ((this.m_right_data[i].current_hp == 0)) {
                    // source line 147, bytecode pc 173
                    (allDead = (+allDead + 1));
                }
            } else {
                // source line 150, bytecode pc 193
                (allDead = (+allDead + 1));
            }
            // source line 143, bytecode pc 208
            (i = (+i + 1));
        }
        if ((allDead == 3)) {
            // source line 156, bytecode pc 259
            this.m_waysList.push(false);
        } else {
            // source line 158, bytecode pc 284
            this.m_waysList.push(true);
            // source line 159, bytecode pc 310
            (this.m_needGeneralsNum = (+this.m_needGeneralsNum + 1));
        }
        // source line 141, bytecode pc 325
        (j = (+j + 1));
    }
},
    replacePicWithButtonByType: function() {
    var i, j, _tag;
    // source line 167, bytecode pc 4
    (i = 1);
    while ((i <= this.m_type)) {
        if (this.m_waysList[(i - 1)]) {
            // source line 170, bytecode pc 32
            (j = 1);
            while ((j <= 3)) {
                // source line 172, bytecode pc 61
                (_tag = ((this.constNum.ten * i) + j));
                // source line 176, bytecode pc 141
                xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, [ { tag: _tag, type: "btn", id: "Btn_add" } ], this);
                // source line 178, bytecode pc 174
                (this[("btnAdd" + _tag)] = this.m_ccbNode.getChildByTag(_tag));
                if (this[("btnAdd" + _tag)]) {
                    // source line 181, bytecode pc 252
                    this[("btnAdd" + _tag)].setOnClickCallBack(this.selectGeneralCallBack.bind({ self: this, tag: _tag }));
                }
                // source line 170, bytecode pc 266
                (j = (+j + 1));
            }
        }
        // source line 167, bytecode pc 293
        (i = (+i + 1));
    }
},
    uncludeDeadGenerals: function(data) {
    var list, i;
    // source line 190, bytecode pc 8
    (list = []);
    // source line 191, bytecode pc 13
    (i = 0);
    while ((i < data.length)) {
        if ((data[i].current_hp != 0)) {
            // source line 193, bytecode pc 61
            list.push(data[i]);
        }
        // source line 191, bytecode pc 75
        (i = (+i + 1));
    }
    // source line 196, bytecode pc 98
    return list;
},
    cleanAllGenerals: function() {
    var i, j, idx, _icon, btn;
    // source line 202, bytecode pc 4
    (i = 1);
    while ((i <= this.m_type)) {
        // source line 204, bytecode pc 15
        (j = 1);
        while ((j <= 3)) {
            // source line 206, bytecode pc 44
            (idx = ((this.constNum.ten * i) + j));
            if (this[("btnAdd" + idx)]) {
                // source line 210, bytecode pc 102
                (_icon = xs.Factorys.Sprite.create("HuLaoBattle_icon_jiahao", "HuLaoBattleScene"));
                // source line 211, bytecode pc 136
                (btn = xs.Views.Btn.createInvisibleWithChild(_icon));
                // source line 212, bytecode pc 160
                btn.setTouchPriority((this.m_baseTouchPriority - 1));
                // source line 213, bytecode pc 214
                btn.setOnClickCallBack(this.selectGeneralCallBack.bind({ self: this, tag: idx }));
                // source line 215, bytecode pc 264
                xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this[("btnAdd" + idx)], btn);
                // source line 216, bytecode pc 279
                (this[("btnAdd" + idx)] = btn);
                // source line 218, bytecode pc 291
                (this.m_tag_data_dic[idx] = null);
            }
            // source line 204, bytecode pc 305
            (j = (+j + 1));
        }
        // source line 202, bytecode pc 332
        (i = (+i + 1));
    }
},
    getGeneralsDataByNewLeftGenerals: function(generalId) {
    var i;
    // source line 228, bytecode pc 4
    (i = 0);
    while ((i < this.m_left_list.length)) {
        if ((this.m_left_list[i].general_id == generalId)) {
            if ((this.m_left_list[i].current_hp != 0)) {
                // source line 234, bytecode pc 67
                return this.m_left_list[i];
            } else {
                // source line 237, bytecode pc 74
                return null;
            }
        }
        // source line 228, bytecode pc 88
        (i = (+i + 1));
    }
},
    getLastGarrisonLayoutData: function(_lastGarrisonLayoutData) {
    var list, i, generalData;
    // source line 248, bytecode pc 8
    (list = []);
    // source line 249, bytecode pc 13
    (i = 0);
    while ((i < _lastGarrisonLayoutData.length)) {
        if (_lastGarrisonLayoutData[i]) {
            // source line 251, bytecode pc 60
            (generalData = this.getGeneralsDataByNewLeftGenerals(_lastGarrisonLayoutData[i].general_id));
            if (generalData) {
                // source line 253, bytecode pc 87
                list.push(generalData);
            } else {
                // source line 255, bytecode pc 114
                list.push({});
            }
        } else {
            // source line 259, bytecode pc 141
            list.push({});
        }
        // source line 249, bytecode pc 155
        (i = (+i + 1));
    }
    // source line 262, bytecode pc 178
    return list;
},
    oneStepSetGeneral: function() {
    var generalsList, loadGarrisonLayoutData, num, allDead, i, j, _tag, _icon, btn, data;
    // source line 266, bytecode pc 12
    this.cleanAllGenerals();
    if (this.m_isOneStepGenerals) {
        // source line 268, bytecode pc 74
        this.m_selectGeneralBtn.setString(xs.Tools.String.createString("GarrisonLayout10"));
        // source line 269, bytecode pc 82
        (this.m_isOneStepGenerals = false);
        // source line 270, bytecode pc 84
        return void 0;
    }
    // source line 273, bytecode pc 93
    (generalsList = []);
    // source line 274, bytecode pc 135
    (loadGarrisonLayoutData = xs.Profile.GameData.HuLaoBattleData.getGarrisonLayoutData(this.m_type));
    if (!xs.Utils.isEmpty(loadGarrisonLayoutData)) {
        // source line 277, bytecode pc 186
        (generalsList = this.getLastGarrisonLayoutData(loadGarrisonLayoutData));
        // source line 278, bytecode pc 191
        (num = 0);
        // source line 279, bytecode pc 196
        (allDead = true);
        // source line 280, bytecode pc 201
        (i = 1);
        while ((i <= this.m_type)) {
            if (this.m_waysList[(i - 1)]) {
                // source line 282, bytecode pc 229
                (j = 1);
                while ((j <= 3)) {
                    // source line 283, bytecode pc 258
                    (_tag = ((this.constNum.ten * i) + j));
                    if (this[("btnAdd" + _tag)]) {
                        if (!xs.Utils.isEmpty(generalsList[num])) {
                            // source line 286, bytecode pc 314
                            (allDead = false);
                        }
                        // source line 288, bytecode pc 328
                        (num = (+num + 1));
                    }
                    // source line 282, bytecode pc 343
                    (j = (+j + 1));
                }
            }
            // source line 280, bytecode pc 370
            (i = (+i + 1));
        }
        if (allDead) {
            // source line 294, bytecode pc 418
            (generalsList = this.uncludeDeadGenerals(this.m_left_list));
        }
    } else {
        // source line 298, bytecode pc 446
        (generalsList = this.uncludeDeadGenerals(this.m_left_list));
    }
    if ((generalsList.length == 0)) {
        // source line 302, bytecode pc 521
        xs.Views.Mgr.showToast(xs.Tools.String.createString("GarrisonLayout13"));
        // source line 303, bytecode pc 523
        return void 0;
    }
    // source line 306, bytecode pc 574
    this.m_selectGeneralBtn.setString(xs.Tools.String.createString("GarrisonLayout14"));
    // source line 307, bytecode pc 582
    (this.m_isOneStepGenerals = true);
    // source line 310, bytecode pc 587
    (num = 0);
    // source line 311, bytecode pc 592
    (i = 1);
    while ((i <= this.m_type)) {
        if (this.m_waysList[(i - 1)]) {
            // source line 313, bytecode pc 620
            (j = 1);
            while ((j <= 3)) {
                // source line 314, bytecode pc 649
                (_tag = ((this.constNum.ten * i) + j));
                if (this[("btnAdd" + _tag)]) {
                    if (xs.Utils.isEmpty(generalsList[num])) {
                        // source line 317, bytecode pc 741
                        (_icon = xs.Factorys.Sprite.create("HuLaoBattle_icon_jiahao", "HuLaoBattleScene"));
                        // source line 318, bytecode pc 775
                        (btn = xs.Views.Btn.createInvisibleWithChild(_icon));
                        // source line 319, bytecode pc 799
                        btn.setTouchPriority((this.m_baseTouchPriority - 1));
                        // source line 320, bytecode pc 853
                        btn.setOnClickCallBack(this.selectGeneralCallBack.bind({ self: this, tag: _tag }));
                        // source line 322, bytecode pc 903
                        xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this[("btnAdd" + _tag)], btn);
                        // source line 323, bytecode pc 918
                        (this[("btnAdd" + _tag)] = btn);
                        // source line 325, bytecode pc 930
                        (this.m_tag_data_dic[_tag] = null);
                    } else {
                        // source line 328, bytecode pc 959
                        (_icon = this.createGeneralIcon(generalsList[num]));
                        // source line 329, bytecode pc 993
                        (btn = xs.Views.Btn.createInvisibleWithChild(_icon));
                        // source line 331, bytecode pc 1017
                        btn.setTouchPriority((this.m_baseTouchPriority - 1));
                        // source line 332, bytecode pc 1071
                        btn.setOnClickCallBack(this.selectGeneralCallBack.bind({ self: this, tag: _tag }));
                        // source line 334, bytecode pc 1121
                        xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this[("btnAdd" + _tag)], btn);
                        // source line 335, bytecode pc 1136
                        (this[("btnAdd" + _tag)] = btn);
                        // source line 341, bytecode pc 1166
                        (data = { general_data: generalsList[num], tag: _tag });
                        // source line 344, bytecode pc 1180
                        (this.m_tag_data_dic[_tag] = data);
                    }
                    // source line 347, bytecode pc 1194
                    (num = (+num + 1));
                }
                // source line 313, bytecode pc 1209
                (j = (+j + 1));
            }
        }
        // source line 311, bytecode pc 1236
        (i = (+i + 1));
    }
},
    createGeneralIcon: function(data) {
    var model, _icon, lightenPic, progressBg, progressPic, ProgressTimer;
    // source line 358, bytecode pc 49
    (model = xs.Models.General.createWithBase(data.general_id.toString()));
    // source line 359, bytecode pc 73
    model.setLevel(data.general_level);
    // source line 360, bytecode pc 91
    (_icon = model.createIcon_GradeAndLv());
    if ((data.current_hp == 0)) {
        // source line 362, bytecode pc 123
        _icon.setDarkMask(true);
    }
    if ((data.fortune == 1)) {
        // source line 366, bytecode pc 180
        (lightenPic = xs.Factorys.Sprite.create("Cmn02_icon_yunshixiao", "Cmn02"));
        // source line 372, bytecode pc 263
        xs.Utils.Node.attachNodes(_icon, lightenPic, { desc: "lb", sc: true, offset: { x: -43, y: 43 } });
    }
    // source line 378, bytecode pc 305
    (progressBg = xs.Factorys.Sprite.create("Cmn01_0_7_jindutiaodi", "Cmn01"));
    // source line 379, bytecode pc 322
    progressBg.setZOrder(0);
    // source line 380, bytecode pc 343
    progressBg.setScaleX(1.7);
    // source line 386, bytecode pc 425
    xs.Utils.Node.attachNodes(_icon, progressBg, { desc: "lb", sc: true, offset: { x: 0, y: -53 } });
    // source line 390, bytecode pc 467
    (progressPic = xs.Factorys.Sprite.create("Cmn01_0_7_jindutiao", "Cmn01"));
    // source line 392, bytecode pc 496
    (ProgressTimer = cc.ProgressTimer.create(progressPic));
    // source line 393, bytecode pc 517
    ProgressTimer.setScaleX(1.7);
    // source line 394, bytecode pc 543
    ProgressTimer.setType(cc.PROGRESS_TIMER_TYPE_BAR);
    // source line 395, bytecode pc 579
    ProgressTimer.setMidpoint(cc.p(0, 0));
    // source line 396, bytecode pc 615
    ProgressTimer.setBarChangeRate(cc.p(1, 0));
    // source line 397, bytecode pc 632
    ProgressTimer.setZOrder(1);
    // source line 403, bytecode pc 714
    xs.Utils.Node.attachNodes(_icon, ProgressTimer, { desc: "lb", sc: true, offset: { x: 0, y: -53 } });
    // source line 406, bytecode pc 750
    ProgressTimer.setPercentage(((data.current_hp / data.hp) * 100));
    // source line 409, bytecode pc 754
    return _icon;
},
    onEnter: function() {
    // source line 412, bytecode pc 12
    this._super();
    // source line 413, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.updateLeftLighten, xs.Constant_Notify_GarrisonLayout_lighten_refresh);
},
    onExit: function() {
    // source line 416, bytecode pc 12
    this._super();
    // source line 417, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_GarrisonLayout_lighten_refresh);
},
    setBaseTouchPriority: function(priority) {
    var i, j, _tag, _icon;
    // source line 420, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 421, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 422, bytecode pc 56
    this.btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 423, bytecode pc 83
    this.m_LightenLuckBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 424, bytecode pc 110
    this.m_GoToFightBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 425, bytecode pc 137
    this.m_selectGeneralBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 427, bytecode pc 142
    (i = 1);
    while ((i <= this.m_type)) {
        if (this.m_waysList[(i - 1)]) {
            // source line 430, bytecode pc 170
            (j = 1);
            while ((j <= 3)) {
                // source line 431, bytecode pc 199
                (_tag = ((this.constNum.ten * i) + j));
                // source line 432, bytecode pc 224
                (_icon = this.m_ccbNode.getChildByTag(_tag));
                if (_icon) {
                    // source line 435, bytecode pc 256
                    _icon.setTouchPriority((this.m_baseTouchPriority - 1));
                }
                // source line 430, bytecode pc 270
                (j = (+j + 1));
            }
        }
        // source line 427, bytecode pc 297
        (i = (+i + 1));
    }
},
    exchangeGeneralData: function(data, _generalId) {
    var i;
    // source line 446, bytecode pc 4
    (i = 0);
    while ((i < data.length)) {
        if ((data[i].general_data.general_id == _generalId)) {
            // source line 448, bytecode pc 38
            return false;
        }
        // source line 446, bytecode pc 52
        (i = (+i + 1));
    }
    // source line 452, bytecode pc 73
    return true;
},
    updateLeftLighten: function(data) {
    var i, _data, _icon, btn;
    // source line 456, bytecode pc 4
    (i = 0);
    while ((i < this.m_left_list.length)) {
        // source line 457, bytecode pc 46
        (_data = this.exchangeGeneralData(data, this.m_left_list[i].general_id));
        if (_data) {
            // source line 459, bytecode pc 71
            (this.m_left_list[i].fortune = 0);
        }
        // source line 456, bytecode pc 85
        (i = (+i + 1));
    }
    // source line 463, bytecode pc 112
    (i = 0);
    while ((i < data.length)) {
        if (this[("btnAdd" + data[i].tag)]) {
            // source line 466, bytecode pc 172
            (_icon = this.createGeneralIcon(data[i].general_data));
            // source line 468, bytecode pc 206
            (btn = xs.Views.Btn.createInvisibleWithChild(_icon));
            // source line 470, bytecode pc 230
            btn.setTouchPriority((this.m_baseTouchPriority - 1));
            // source line 471, bytecode pc 293
            btn.setOnClickCallBack(this.selectGeneralCallBack.bind({ self: this, tag: data[i].tag }));
            // source line 473, bytecode pc 352
            xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this[("btnAdd" + data[i].tag)], btn);
            // source line 474, bytecode pc 376
            (this[("btnAdd" + data[i].tag)] = btn);
            if (this.m_tag_data_dic[data[i].tag]) {
                // source line 480, bytecode pc 444
                (_data = { general_data: data[i].general_data, tag: data[i].tag });
                // source line 483, bytecode pc 467
                (this.m_tag_data_dic[data[i].tag] = _data);
            }
        }
        // source line 463, bytecode pc 481
        (i = (+i + 1));
    }
},
    LightenLuckCallBack: function() {
    var generals_list, i, j, _tag, _data;
    // source line 495, bytecode pc 8
    (generals_list = []);
    // source line 497, bytecode pc 13
    (i = 1);
    while ((i <= this.m_type)) {
        // source line 499, bytecode pc 24
        (j = 1);
        while ((j <= 3)) {
            // source line 500, bytecode pc 53
            (_tag = ((this.constNum.ten * i) + j));
            if (this.m_tag_data_dic[_tag]) {
                // source line 502, bytecode pc 94
                generals_list.push(this.m_tag_data_dic[_tag]);
            }
            // source line 499, bytecode pc 108
            (j = (+j + 1));
        }
        // source line 497, bytecode pc 135
        (i = (+i + 1));
    }
    if ((generals_list.length == 0)) {
        // source line 507, bytecode pc 227
        xs.Views.Mgr.showToast(xs.Tools.String.createString("GarrisonLayout11"));
        // source line 508, bytecode pc 229
        return void 0;
    }
    // source line 514, bytecode pc 279
    (_data = {
    generalsList: generals_list,
    total_fortune: this.m_left_data.total_fortune,
    consume_fortune: this.m_left_data.consume_fortune
});
    // source line 517, bytecode pc 316
    xs.Views.Mgr.showDialogByName("LightenLuckDialog", _data);
},
    isEveryWayHaveGeneral: function() {
    var canGoToFight, _idex, i, j, _tag;
    // source line 521, bytecode pc 4
    (canGoToFight = 0);
    // source line 522, bytecode pc 9
    (_idex = 0);
    // source line 523, bytecode pc 14
    (i = 1);
    while ((i <= this.m_type)) {
        if (this.m_waysList[(i - 1)]) {
            // source line 526, bytecode pc 42
            (_idex = 0);
            // source line 527, bytecode pc 47
            (j = 1);
            while ((j <= 3)) {
                // source line 528, bytecode pc 76
                (_tag = ((this.constNum.ten * i) + j));
                if (this.m_tag_data_dic[_tag]) {
                    // source line 530, bytecode pc 96
                    (_idex = 1);
                }
                // source line 527, bytecode pc 110
                (j = (+j + 1));
            }
        } else {
            // source line 535, bytecode pc 133
            (_idex = 1);
        }
        // source line 538, bytecode pc 144
        (canGoToFight = (canGoToFight + _idex));
        // source line 523, bytecode pc 158
        (i = (+i + 1));
    }
    // source line 541, bytecode pc 198
    return ((canGoToFight == this.m_type) ? true : false);
},
    ClickFightButtonCallBack: function() {
    var generals_list, usedFortune, i, j, _tag, data, isEveryWayGeneral;
    // source line 545, bytecode pc 8
    (generals_list = []);
    // source line 546, bytecode pc 13
    (usedFortune = false);
    // source line 547, bytecode pc 18
    (i = 1);
    while ((i <= this.m_type)) {
        // source line 548, bytecode pc 29
        (j = 1);
        while ((j <= 3)) {
            // source line 549, bytecode pc 58
            (_tag = ((this.constNum.ten * i) + j));
            if (this.m_tag_data_dic[_tag]) {
                // source line 551, bytecode pc 87
                (data = this.m_tag_data_dic[_tag]);
                // source line 552, bytecode pc 106
                generals_list.push(data);
                if ((data.general_data.fortune == 1)) {
                    // source line 554, bytecode pc 131
                    (usedFortune = true);
                    break;
                }
            }
            // source line 548, bytecode pc 150
            (j = (+j + 1));
        }
        // source line 547, bytecode pc 177
        (i = (+i + 1));
    }
    if ((this.m_left_data.total_fortune != 0)) {
        if (usedFortune) {
            // source line 565, bytecode pc 233
            this.GoToFightCallBack();
        } else {
            // source line 567, bytecode pc 254
            (isEveryWayGeneral = this.isEveryWayHaveGeneral());
            if (!isEveryWayGeneral) {
                // source line 569, bytecode pc 323
                xs.Views.Mgr.showToast(xs.Tools.String.createString("GarrisonLayout12"));
                // source line 570, bytecode pc 325
                return void 0;
            }
            // source line 584, bytecode pc 505
            xs.Views.Mgr.showDialogByName("common", {
    title: "useFortunePrompt_1",
    content: "useFortunePrompt_2",
    leftText: xs.Tools.String.createString("useFortunePrompt_3"),
    rightText: xs.Tools.String.createString("useFortunePrompt_4"),
    leftCB: function() {
    // source line 579, bytecode pc 37
    xs.Views.Mgr._myreleaseViewByType(xs.Constant_ViewType_Dlg);
    // source line 580, bytecode pc 50
    this.LightenLuckCallBack();
}.bind(this),
    rightCB: function() {
    // source line 583, bytecode pc 12
    this.GoToFightCallBack();
}.bind(this)
});
        }
    } else {
        // source line 588, bytecode pc 523
        this.GoToFightCallBack();
    }
},
    GoToFightCallBack: function() {
    var _generals_list, canGoToFight, _idex, _garrisonLayoutData, i, j, _tag, data;
    // source line 593, bytecode pc 8
    (_generals_list = []);
    // source line 594, bytecode pc 13
    (canGoToFight = 0);
    // source line 595, bytecode pc 18
    (_idex = 0);
    // source line 596, bytecode pc 27
    (_garrisonLayoutData = []);
    // source line 597, bytecode pc 32
    (i = 1);
    while ((i <= this.m_type)) {
        if (this.m_waysList[(i - 1)]) {
            // source line 600, bytecode pc 60
            (_idex = 0);
            // source line 601, bytecode pc 65
            (j = 1);
            while ((j <= 3)) {
                // source line 602, bytecode pc 94
                (_tag = ((this.constNum.ten * i) + j));
                if (this.m_tag_data_dic[_tag]) {
                    // source line 607, bytecode pc 169
                    (data = {
    pk_id: this.m_tag_data_dic[_tag].general_data.pk_id,
    fortune: this.m_tag_data_dic[_tag].general_data.fortune
});
                    // source line 609, bytecode pc 188
                    _generals_list.push(data);
                    // source line 610, bytecode pc 219
                    _garrisonLayoutData.push(this.m_tag_data_dic[_tag].general_data);
                    // source line 611, bytecode pc 224
                    (_idex = 1);
                } else {
                    // source line 614, bytecode pc 251
                    _generals_list.push({});
                    // source line 615, bytecode pc 273
                    _garrisonLayoutData.push({});
                }
                // source line 601, bytecode pc 287
                (j = (+j + 1));
            }
        } else {
            // source line 620, bytecode pc 327
            _generals_list.push({});
            // source line 621, bytecode pc 349
            _generals_list.push({});
            // source line 622, bytecode pc 371
            _generals_list.push({});
            // source line 624, bytecode pc 393
            _garrisonLayoutData.push({});
            // source line 625, bytecode pc 415
            _garrisonLayoutData.push({});
            // source line 626, bytecode pc 437
            _garrisonLayoutData.push({});
            // source line 628, bytecode pc 442
            (_idex = 1);
        }
        // source line 631, bytecode pc 453
        (canGoToFight = (canGoToFight + _idex));
        // source line 597, bytecode pc 467
        (i = (+i + 1));
    }
    if ((this.m_needGeneralsNum == this.m_type)) {
        // source line 637, bytecode pc 545
        xs.Profile.GameData.HuLaoBattleData.setGarrisonLayoutData(_garrisonLayoutData, this.m_type);
    }
    if ((canGoToFight == this.m_type)) {
        // source line 679, bytecode pc 701
        xs.Tools.Net.requestHuLaoBattleGoToFight({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    stage: this.m_stage,
    mode: this.m_type,
    general_list: _generals_list
}, function(data) {
    var fightResult;
    if (!xs.Utils.isEmpty(data.return_info)) {
        if (xs.Profile.UserCfg.getHuLaoBattle()) {
            // source line 652, bytecode pc 95
            xs.Profile.UserCfg.writeHulaoData(false);
        }
        // source line 654, bytecode pc 124
        xs.Profile.UserCfg.setHuLaoBattle(false);
        // source line 656, bytecode pc 172
        xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
        // source line 658, bytecode pc 184
        (fightResult = data.return_info);
        // source line 659, bytecode pc 193
        switch (fightResult.length) {
            case 1:
            // source line 661, bytecode pc 234
            this.OneFightResult(fightResult);
            break;
            case 2:
            // source line 664, bytecode pc 256
            this.TwoFightResult(fightResult);
            break;
            case 3:
            // source line 667, bytecode pc 278
            this.ThreeFightResult(fightResult);
            break;
            default:
            // source line 670, bytecode pc 306
            xs.log("GoToFightCallBack fightResultType erro");
            break;
        }
    }
}, function(data) {
}, this);
    } else {
        // source line 687, bytecode pc 766
        xs.Views.Mgr.showToast(xs.Tools.String.createString("GarrisonLayout12"));
    }
},
    OneFightResult: function(data) {
    var _round, i;
    // source line 696, bytecode pc 4
    (_round = 1);
    // source line 697, bytecode pc 9
    (i = 0);
    while ((i < this.m_waysList.length)) {
        if (this.m_waysList[i]) {
            // source line 701, bytecode pc 39
            (_round = (i + 1));
        }
        // source line 697, bytecode pc 53
        (i = (+i + 1));
    }
    // source line 726, bytecode pc 228
    xs.Scene.Mgr.changeSceneByName("FightScene", {
    mode: xs.Constant_FightScene_Mode_Normal,
    fightType: xs.Constant_FightScene_Type_Climp,
    openType: xs.Constant_FightScene_OpenType_Pvp,
    fightData: xs.Models.FightInfo.create(data[0]),
    round: _round,
    funcFinish: function() {
    // source line 725, bytecode pc 110
    xs.Tools.Net.requestHulaoMain({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    // source line 719, bytecode pc 41
    xs.Scene.Mgr.changeSceneByName("HulaoBattleMainScene", data.return_info);
    // source line 720, bytecode pc 78
    xs.Scene.Mgr.history.names_sub.pop();
    // source line 721, bytecode pc 115
    xs.Scene.Mgr.history.names_sub.pop();
}, function(data) {
}, this);
}.bind(this)
});
},
    TwoFightResult: function(data) {
    var _round, j, i;
    // source line 733, bytecode pc 25
    (_round = [ 1, 2 ]);
    // source line 734, bytecode pc 30
    (j = 0);
    // source line 735, bytecode pc 35
    (i = 0);
    while ((i < this.m_waysList.length)) {
        if (this.m_waysList[i]) {
            // source line 739, bytecode pc 75
            (_round[j] = (i + 1));
            // source line 740, bytecode pc 89
            (j = (+j + 1));
        }
        // source line 735, bytecode pc 104
        (i = (+i + 1));
    }
    // source line 781, bytecode pc 293
    xs.Scene.Mgr.changeSceneByName("FightScene", {
    mode: xs.Constant_FightScene_Mode_Normal,
    fightType: xs.Constant_FightScene_Type_Climp,
    openType: xs.Constant_FightScene_OpenType_Pvp,
    round: _round[0],
    fightData: xs.Models.FightInfo.create(data[0]),
    funcFinish: function() {
    // source line 778, bytecode pc 166
    xs.Scene.Mgr.changeSceneByName("FightScene", {
    mode: xs.Constant_FightScene_Mode_Normal,
    fightType: xs.Constant_FightScene_Type_Climp,
    openType: xs.Constant_FightScene_OpenType_Pvp,
    fightData: xs.Models.FightInfo.create(data[1]),
    round: _round[1],
    funcFinish: function() {
    // source line 777, bytecode pc 110
    xs.Tools.Net.requestHulaoMain({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    // source line 770, bytecode pc 41
    xs.Scene.Mgr.changeSceneByName("HulaoBattleMainScene", data.return_info);
    // source line 771, bytecode pc 78
    xs.Scene.Mgr.history.names_sub.pop();
    // source line 772, bytecode pc 115
    xs.Scene.Mgr.history.names_sub.pop();
}, function(data) {
}, this);
}.bind(this)
});
}.bind(this)
});
},
    ThreeFightResult: function(data) {
    // source line 836, bytecode pc 165
    xs.Scene.Mgr.changeSceneByName("FightScene", {
    mode: xs.Constant_FightScene_Mode_Normal,
    fightType: xs.Constant_FightScene_Type_Climp,
    openType: xs.Constant_FightScene_OpenType_Pvp,
    round: xs.Constant_HuLaoBattle_First_Round,
    fightData: xs.Models.FightInfo.create(data[0]),
    funcFinish: function() {
    // source line 833, bytecode pc 165
    xs.Scene.Mgr.changeSceneByName("FightScene", {
    mode: xs.Constant_FightScene_Mode_Normal,
    fightType: xs.Constant_FightScene_Type_Climp,
    openType: xs.Constant_FightScene_OpenType_Pvp,
    round: xs.Constant_HuLaoBattle_Second_Round,
    fightData: xs.Models.FightInfo.create(data[1]),
    funcFinish: function() {
    // source line 830, bytecode pc 166
    xs.Scene.Mgr.changeSceneByName("FightScene", {
    mode: xs.Constant_FightScene_Mode_Normal,
    fightType: xs.Constant_FightScene_Type_Climp,
    openType: xs.Constant_FightScene_OpenType_Pvp,
    fightData: xs.Models.FightInfo.create(data[2]),
    round: xs.Constant_HuLaoBattle_Third_Round,
    funcFinish: function() {
    // source line 829, bytecode pc 110
    xs.Tools.Net.requestHulaoMain({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    // source line 821, bytecode pc 41
    xs.Scene.Mgr.changeSceneByName("HulaoBattleMainScene", data.return_info);
    // source line 822, bytecode pc 78
    xs.Scene.Mgr.history.names_sub.pop();
    // source line 823, bytecode pc 115
    xs.Scene.Mgr.history.names_sub.pop();
    // source line 824, bytecode pc 152
    xs.Scene.Mgr.history.names_sub.pop();
}, function(data) {
}, this);
}.bind(this)
});
}.bind(this)
});
}.bind(this)
});
},
    addGeneralsStates: function(generalId) {
    var inFight, key;
    // source line 842, bytecode pc 4
    (inFight = false);
    for (var key in this.m_tag_data_dic) {
        if (!(this.m_tag_data_dic.hasOwnProperty(key))) continue;
        if (!(this.m_tag_data_dic[key])) continue;
        if (!((this.m_tag_data_dic[key].general_data.general_id == generalId))) continue;
        // source line 848, bytecode pc 98
        (inFight = true);
        break;
    }
    // source line 855, bytecode pc 115
    return inFight;
},
    selectGeneralCallBack: function() {
    var self, uncludeList, general_id, general_model, i;
    // source line 860, bytecode pc 9
    (self = this.self);
    // source line 861, bytecode pc 24
    (self.m_tag = this.tag);
    // source line 864, bytecode pc 33
    (uncludeList = []);
    // source line 867, bytecode pc 95
    (self.m_replaceDialog = xs.Views.Mgr.showDialogByName("ReplaceCardDialog", xs.Views.Dialog.ReplaceCardDialog_Type_HuLaoBattle));
    if (self.m_tag_data_dic[self.m_tag]) {
        // source line 871, bytecode pc 148
        (general_id = self.m_tag_data_dic[self.m_tag].general_data.general_id);
        // source line 872, bytecode pc 193
        (general_model = xs.Models.General.createWithBase(general_id.toString()));
        // source line 873, bytecode pc 236
        general_model.setLevel(self.m_tag_data_dic[self.m_tag].general_data.general_level);
        // source line 874, bytecode pc 279
        general_model.setFightPoint(self.m_tag_data_dic[self.m_tag].general_data.fighting);
        // source line 877, bytecode pc 305
        self.m_replaceDialog.setReplaceData(general_model, false);
        // source line 881, bytecode pc 310
        (i = 0);
        while ((i < self.m_left_list.length)) {
            if (!xs.Utils.isEmpty(self.m_left_list[i])) {
                if ((self.m_left_list[i].general_id != general_id)) {
                    // source line 884, bytecode pc 432
                    (self.m_left_list[i].isFight = self.addGeneralsStates(self.m_left_list[i].general_id));
                    // source line 885, bytecode pc 460
                    uncludeList.push(self.m_left_list[i]);
                }
            }
            // source line 881, bytecode pc 474
            (i = (+i + 1));
        }
    } else {
        // source line 892, bytecode pc 508
        (i = 0);
        while ((i < self.m_left_list.length)) {
            if (!xs.Utils.isEmpty(self.m_left_list[i])) {
                // source line 894, bytecode pc 604
                (self.m_left_list[i].isFight = self.addGeneralsStates(self.m_left_list[i].general_id));
                // source line 895, bytecode pc 632
                uncludeList.push(self.m_left_list[i]);
            }
            // source line 892, bytecode pc 646
            (i = (+i + 1));
        }
    }
    if ((uncludeList.length == 0)) {
        // source line 901, bytecode pc 745
        xs.Views.Mgr.showToast(xs.Tools.String.createString("GarrisonLayout13"));
    }
    // source line 906, bytecode pc 771
    self.m_replaceDialog.setHideData(uncludeList, true);
    // source line 908, bytecode pc 795
    self.m_replaceDialog.setListener(self);
},
    ReplaceCardDialog_close: function() {
},
    ReplaceCardDialog_replaceCard: function(data) {
    var _icon, btn, _data;
    if (this.m_tag) {
        if (this[("btnAdd" + this.m_tag)]) {
            // source line 917, bytecode pc 49
            (_icon = this.createGeneralIcon(data));
            // source line 919, bytecode pc 83
            (btn = xs.Views.Btn.createInvisibleWithChild(_icon));
            // source line 921, bytecode pc 107
            btn.setTouchPriority((this.m_baseTouchPriority - 1));
            // source line 922, bytecode pc 164
            btn.setOnClickCallBack(this.selectGeneralCallBack.bind({ self: this, tag: this.m_tag }));
            // source line 924, bytecode pc 217
            xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this[("btnAdd" + this.m_tag)], btn);
            // source line 925, bytecode pc 235
            (this[("btnAdd" + this.m_tag)] = btn);
            // source line 927, bytecode pc 257
            this.replaceRepeatGeneral(data.general_id);
            // source line 933, bytecode pc 286
            (_data = { general_data: data, tag: this.m_tag });
            // source line 936, bytecode pc 303
            (this.m_tag_data_dic[this.m_tag] = _data);
            // source line 938, bytecode pc 336
            xs.Views.Mgr.hideDialogByName("ReplaceCardDialog");
        }
    }
},
    replaceRepeatGeneral: function(general_id) {
    var key, _general_id, _icon, btn;
    for (var key in this.m_tag_data_dic) {
        if (!(this.m_tag_data_dic.hasOwnProperty(key))) continue;
        if (!(this.m_tag_data_dic[key])) continue;
        // source line 954, bytecode pc 83
        (_general_id = this.m_tag_data_dic[key].general_data.general_id);
        if (!((general_id == _general_id))) continue;
        if (!(this[("btnAdd" + key)])) continue;
        // source line 958, bytecode pc 153
        (_icon = xs.Factorys.Sprite.create("HuLaoBattle_icon_jiahao", "HuLaoBattleScene"));
        // source line 959, bytecode pc 187
        (btn = xs.Views.Btn.createInvisibleWithChild(_icon));
        // source line 960, bytecode pc 211
        btn.setTouchPriority((this.m_baseTouchPriority - 1));
        // source line 961, bytecode pc 265
        btn.setOnClickCallBack(this.selectGeneralCallBack.bind({ self: this, tag: key }));
        // source line 963, bytecode pc 315
        xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this[("btnAdd" + key)], btn);
        // source line 964, bytecode pc 330
        (this[("btnAdd" + key)] = btn);
        // source line 967, bytecode pc 342
        (this.m_tag_data_dic[key] = null);
        break;
    }
}
}));
// source line 985, bytecode pc 1230
(xs.Views.GarrisonLayoutDialog.create = function(param) {
    var ret;
    // source line 986, bytecode pc 23
    (ret = new xs.Views.GarrisonLayoutDialog());
    if ((ret && ret.init(param))) {
        // source line 988, bytecode pc 59
        return ret;
    }
    // source line 990, bytecode pc 84
    xs.assert(false, "xs.Views.GarrisonLayoutDialog.create err");
    // source line 991, bytecode pc 86
    return null;
});
// source line 995, bytecode pc 1305
xs.Views.Mgr.registerDialog("GarrisonLayoutDialog", { "class": xs.Views.GarrisonLayoutDialog, styleType: xs.Constant_DlgStyleType_Large });
