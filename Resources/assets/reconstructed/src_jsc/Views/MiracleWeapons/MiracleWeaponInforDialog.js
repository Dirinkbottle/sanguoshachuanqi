// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/MiracleWeapons/MiracleWeaponInforDialog.js:1
// source line 209, bytecode pc 593
(xs.Views.MiracleWeaponInforDialog = xs.Views.HungerLayer.extend({
    name: "xs.Views.MiracleWeaponInforDialog",
    ccbCfg: [
        { tag: 1, type: "ls", name: "m_title", id: "LS_huodong_title" },
        { tag: 2, type: "ls", name: "m_grade", id: "LS_huodong_title" },
        { tag: 3, type: "ls", name: "m_xue", id: "LS_yuanfenInf1" },
        { tag: 4, type: "ls", name: "m_gong", id: "LS_yuanfenInf1" },
        { tag: 5, type: "ls", name: "m_fang", id: "LS_yuanfenInf1" },
        { tag: 6, type: "ls", name: "m_zhi", id: "LS_yuanfenInf1" },
        { tag: 21, type: "ls", name: "m_shuxing", id: "LS_yuanfen", stringId: "MiracleWeapon_shuxing" },
        { tag: 7, type: "btn", name: "m_Close", id: "Btn_Close" }
    ],
    ctor: function() {
    // source line 18, bytecode pc 12
    this._super();
    // source line 19, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(param) {
    var weaponName, weaponStr, gong, fang, xue, zhi;
    if (!this._super()) {
        // source line 23, bytecode pc 19
        return false;
    }
    // source line 25, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 26, bytecode pc 35
    (this.m_Close = null);
    // source line 28, bytecode pc 45
    (this.m_MiracleWeaponInfor = param);
    // source line 29, bytecode pc 53
    (this.m_step = null);
    // source line 30, bytecode pc 61
    (this.m_subStep = null);
    // source line 31, bytecode pc 69
    (this.m_vipStep = null);
    // source line 33, bytecode pc 77
    (this.m_xue = null);
    // source line 34, bytecode pc 85
    (this.m_gong = null);
    // source line 35, bytecode pc 93
    (this.m_fang = null);
    // source line 36, bytecode pc 101
    (this.m_zhi = null);
    // source line 38, bytecode pc 109
    (this.m_allData = null);
    // source line 39, bytecode pc 117
    (this.m_userVipGrade = null);
    // source line 41, bytecode pc 182
    (this.m_userVipGrade = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
    // source line 43, bytecode pc 206
    (this.m_weaponOnHundredInforList = this.m_MiracleWeaponInfor.getNormalList());
    // source line 44, bytecode pc 230
    (this.m_weaponVIPInforList = this.m_MiracleWeaponInfor.getEliteList());
    // source line 46, bytecode pc 281
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.MiracleWeaponsInforDialog, this));
    // source line 47, bytecode pc 324
    this.m_ccbNode.setContentSize(cc.size(581, 528));
    // source line 48, bytecode pc 371
    this.m_ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 51, bytecode pc 455
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "c", offset: cc.p(0, 0), sc: true });
    // source line 52, bytecode pc 498
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 54, bytecode pc 536
    this.m_Close.setOnClickCallBack(this.onBtnCloseClicked.bind(this));
    // source line 57, bytecode pc 557
    (weaponName = this.m_MiracleWeaponInfor.getMagicalName());
    // source line 58, bytecode pc 593
    (weaponStr = xs.Tools.String.createString("MiracleWeapon_shenbing"));
    // source line 59, bytecode pc 619
    this.m_title.setString((weaponStr + weaponName));
    // source line 62, bytecode pc 658
    (this.m_step = Number(this.m_MiracleWeaponInfor.getNormalStep()));
    // source line 63, bytecode pc 697
    (this.m_subStep = Number(this.m_MiracleWeaponInfor.getNormalSubStep()));
    // source line 64, bytecode pc 736
    (this.m_vipStep = Number(this.m_MiracleWeaponInfor.getEliteStep()));
    // source line 67, bytecode pc 763
    this.initStepAndSubStep(this.m_step, this.m_subStep);
    if (((this.m_step == 1) && (this.m_subStep == 0))) {
        // source line 72, bytecode pc 814
        this.m_xue.setString("0");
        // source line 73, bytecode pc 838
        this.m_gong.setString("0");
        // source line 74, bytecode pc 862
        this.m_fang.setString("0");
        // source line 75, bytecode pc 886
        this.m_zhi.setString("0");
    } else {
        // source line 77, bytecode pc 923
        (gong = this.m_MiracleWeaponInfor.getPointEffectValAllByType(xs.Constant_MagicalEquPoint_Type_Atk));
        // source line 78, bytecode pc 955
        (fang = this.m_MiracleWeaponInfor.getPointEffectValAllByType(xs.Constant_MagicalEquPoint_Type_Def));
        // source line 79, bytecode pc 987
        (xue = this.m_MiracleWeaponInfor.getPointEffectValAllByType(xs.Constant_MagicalEquPoint_Type_Hp));
        // source line 80, bytecode pc 1019
        (zhi = this.m_MiracleWeaponInfor.getPointEffectValAllByType(xs.Constant_MagicalEquPoint_Type_Int));
        // source line 82, bytecode pc 1041
        this.m_xue.setString(xue);
        // source line 83, bytecode pc 1063
        this.m_gong.setString(gong);
        // source line 84, bytecode pc 1085
        this.m_fang.setString(fang);
        // source line 85, bytecode pc 1107
        this.m_zhi.setString(zhi);
    }
    // source line 90, bytecode pc 1147
    (this.m_allData = this.getAllDate(this.m_step, this.m_subStep, this.m_vipStep));
    // source line 93, bytecode pc 1202
    (this.m_tableView = cc.TableView.create(this, cc.size(560, 290)));
    // source line 94, bytecode pc 1231
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 95, bytecode pc 1271
    this.m_tableView.setPosition(cc.p(0, 20));
    // source line 96, bytecode pc 1291
    this.m_tableView.setDelegate(this);
    // source line 97, bytecode pc 1320
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 98, bytecode pc 1345
    this.m_ccbNode.addChild(this.m_tableView);
    // source line 99, bytecode pc 1363
    this.m_tableView.reloadData();
    // source line 103, bytecode pc 1365
    return true;
},
    getAllDate: function(step, subStep, vipStep) {
    var magicalId, relStep, _elite_list, i, numStr, StepStr, j, _point_obj, index;
    // source line 107, bytecode pc 20
    (magicalId = this.m_MiracleWeaponInfor.getMagicalId());
    // source line 108, bytecode pc 34
    (relStep = ((step * 10) + subStep));
    // source line 112, bytecode pc 43
    (_elite_list = []);
    // source line 113, bytecode pc 48
    (i = 1);
    while ((i <= 10)) {
        // source line 115, bytecode pc 88
        (numStr = xs.Tools.String.convNumberString(i));
        // source line 116, bytecode pc 137
        (StepStr = xs.Tools.String.createStringWithArgsArray("MiracleWeaponInfor_2", [ numStr ]));
        // source line 119, bytecode pc 173
        _elite_list.push({ _data: StepStr, _bool: true });
        // source line 121, bytecode pc 178
        (j = 1);
        while ((j <= 10)) {
            // source line 126, bytecode pc 251
            (_point_obj = xs.Models.MagicalEquPoint.createWithJson({ is_normal: true, step: i, sub_step: j, magical_id: magicalId }));
            // source line 128, bytecode pc 265
            (index = ((i * 10) + j));
            if ((index <= relStep)) {
                // source line 131, bytecode pc 294
                _point_obj.setLight(true);
            }
            // source line 135, bytecode pc 330
            _elite_list.push({ _data: _point_obj, _bool: false });
            // source line 121, bytecode pc 344
            (j = (+j + 1));
        }
        // source line 143, bytecode pc 422
        (_point_obj = xs.Models.MagicalEquPoint.createWithJson({ is_normal: false, step: i, sub_step: 1, magical_id: magicalId }));
        if ((i <= vipStep)) {
            // source line 146, bytecode pc 451
            _point_obj.setLight(true);
        }
        if ((this.m_userVipGrade >= _point_obj.getVipGrade())) {
            // source line 152, bytecode pc 513
            _elite_list.push({ _data: _point_obj, _bool: false });
        }
        // source line 113, bytecode pc 527
        (i = (+i + 1));
    }
    // source line 158, bytecode pc 544
    return _elite_list;
},
    initStepAndSubStep: function(step, substep) {
    var array, str, grade;
    // source line 162, bytecode pc 8
    (array = []);
    // source line 163, bytecode pc 44
    (array[0] = xs.Tools.String.convNumberString(step));
    // source line 164, bytecode pc 80
    (array[1] = xs.Tools.String.convNumberString(substep));
    // source line 166, bytecode pc 116
    (str = xs.Tools.String.createString("MiracleWeapon_chongDuan"));
    // source line 167, bytecode pc 154
    (grade = xs.Tools.String.replaceStringByArray(str, array));
    // source line 169, bytecode pc 176
    this.m_grade.setString(grade);
},
    onBtnCloseClicked: function() {
    // source line 172, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function(view) {
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 184, bytecode pc 23
    return cc.size(560, 40);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 189, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 191, bytecode pc 56
        (cell = xs.Views.MiracleWeaponInforTableViewCell.create());
    }
    // source line 195, bytecode pc 82
    cell.update(this.m_allData[idx]);
    // source line 197, bytecode pc 86
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 201, bytecode pc 11
    return this.m_allData.length;
},
    onEnter: function() {
    // source line 204, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 207, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 210, bytecode pc 12
    (this.m_baseTouchPriority = (priority - 10));
    // source line 211, bytecode pc 34
    this.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 212, bytecode pc 61
    this.m_Close.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 213, bytecode pc 88
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 217, bytecode pc 619
(xs.Views.MiracleWeaponInforDialog.create = function(param) {
    var ret;
    // source line 218, bytecode pc 23
    (ret = new xs.Views.MiracleWeaponInforDialog());
    if ((ret && ret.init(param))) {
        // source line 220, bytecode pc 59
        return ret;
    }
    // source line 222, bytecode pc 84
    xs.assert(false, "xs.Views.MiracleWeaponInforDialog.create err");
    // source line 223, bytecode pc 86
    return null;
});
// source line 225, bytecode pc 645
(xs.Views.MiracleWeaponInforDialog.load = function() {
    // source line 226, bytecode pc 32
    xs.Factorys.Sprite.load("MiracleWeaponsScene");
});
// source line 228, bytecode pc 671
(xs.Views.MiracleWeaponInforDialog.unload = function() {
    // source line 229, bytecode pc 32
    xs.Factorys.Sprite.unload("MiracleWeaponsScene");
});
// source line 235, bytecode pc 756
xs.Views.Mgr.registerDialog("MiracleWeaponInforDialog", {
    "class": xs.Views.MiracleWeaponInforDialog,
    styleType: xs.Constant_DlgStyleType_Small,
    area: "MiracleWeaponsScene"
});
// source line 356, bytecode pc 870
(xs.Views.MiracleWeaponInforTableViewCell = cc.TableViewCell.extend({
    ctor: function() {
    // source line 244, bytecode pc 12
    this._super();
    // source line 245, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 249, bytecode pc 19
        return false;
    }
    // source line 252, bytecode pc 27
    (this.m_LightPointPic = null);
    // source line 253, bytecode pc 35
    (this.m_DarkPointPic = null);
    // source line 254, bytecode pc 43
    (this.m_WeaponIntro = null);
    // source line 256, bytecode pc 88
    (this.m_LightPointPic = xs.Factorys.Sprite.create("MiracleWeapons_liangguang", "MiracleWeaponsScene"));
    // source line 257, bytecode pc 129
    this.m_LightPointPic.setPosition(cc.p(50, 20));
    // source line 258, bytecode pc 149
    this.addChild(this.m_LightPointPic);
    // source line 260, bytecode pc 194
    (this.m_DarkPointPic = xs.Factorys.Sprite.create("MiracleWeapons_andian", "MiracleWeaponsScene"));
    // source line 261, bytecode pc 235
    this.m_DarkPointPic.setPosition(cc.p(50, 20));
    // source line 262, bytecode pc 255
    this.addChild(this.m_DarkPointPic);
    // source line 266, bytecode pc 294
    (this.m_WeaponIntro = xs.Factorys.Label.createByStyleId("LS_liaotian_5"));
    // source line 267, bytecode pc 337
    this.m_WeaponIntro.setAnchorPoint(cc.p(0, 0.5));
    // source line 273, bytecode pc 421
    xs.Utils.Node.attachNodes(this, this.m_WeaponIntro, { desc: "lb", sc: true, offset: { x: 60, y: 20 } });
    // source line 277, bytecode pc 423
    return true;
},
    createWeaponIntroByType: function(type, data) {
    var str, numStr, subStepStr, array, yuanfenArray;
    // source line 281, bytecode pc 4
    (str = null);
    // source line 282, bytecode pc 8
    switch (type) {
        case 1:
        // source line 285, bytecode pc 88
        (str = xs.Tools.String.createString("MiracleWeapon_gongjia"));
        break;
        case 2:
        // source line 289, bytecode pc 129
        (str = xs.Tools.String.createString("MiracleWeapon_fangjia"));
        break;
        case 3:
        // source line 293, bytecode pc 170
        (str = xs.Tools.String.createString("MiracleWeapon_xuejia"));
        break;
        case 4:
        // source line 297, bytecode pc 211
        (str = xs.Tools.String.createString("MiracleWeapon_zhijia"));
        break;
        case 5:
        // source line 301, bytecode pc 252
        (str = xs.Tools.String.createString("MiracleWeapon_jinengjia"));
        break;
        case 6:
        // source line 305, bytecode pc 293
        (str = xs.Tools.String.createString("MiracleWeapon_jinengjinjie"));
        break;
        case 7:
        // source line 309, bytecode pc 334
        (str = xs.Tools.String.createString("MiracleWeapon_yuanfenType"));
        break;
        case 8:
        // source line 313, bytecode pc 375
        (str = xs.Tools.String.createString("MiracleWeapon_tianfudian"));
        break;
        default:
        // source line 317, bytecode pc 403
        xs.warn("createWeaponIntroByType type is erro");
        break;
    }
    // source line 320, bytecode pc 413
    (numStr = null);
    if (data.getIsNormal()) {
        // source line 322, bytecode pc 477
        (numStr = xs.Tools.String.convNumberString(data.getEffectSubStep()));
    } else {
        // source line 324, bytecode pc 515
        (numStr = xs.Tools.String.convNumberString(11));
    }
    // source line 326, bytecode pc 564
    (subStepStr = xs.Tools.String.createStringWithArgsArray("MiracleWeaponInfor_1", [ numStr ]));
    if ((type != 7)) {
        // source line 330, bytecode pc 584
        (array = []);
        // source line 331, bytecode pc 604
        (array[0] = data.getEffectVal());
        // source line 333, bytecode pc 661
        this.m_WeaponIntro.setString((subStepStr + xs.Tools.String.replaceStringByArray(str, array)));
    } else {
        // source line 337, bytecode pc 684
        (yuanfenArray = data.getEffectVal());
        // source line 339, bytecode pc 693
        (array = []);
        // source line 340, bytecode pc 742
        (array[0] = xs.Models.Fate.createWithBase(yuanfenArray[0]).getNameString());
        // source line 341, bytecode pc 791
        (array[1] = xs.Models.Fate.createWithBase(yuanfenArray[1]).getNameString());
        // source line 343, bytecode pc 848
        this.m_WeaponIntro.setString((subStepStr + xs.Tools.String.replaceStringByArray(str, array)));
    }
},
    onEnter: function() {
    // source line 348, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 351, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 354, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    update: function(param) {
    var isLight, type;
    // source line 357, bytecode pc 14
    (this.m_data = param._data);
    if (param._bool) {
        if (this.m_WeaponSubIntro) {
            // source line 361, bytecode pc 58
            this.m_WeaponSubIntro.setVisible(true);
            // source line 362, bytecode pc 85
            this.m_WeaponSubIntro.setString(param._data);
        } else {
            // source line 364, bytecode pc 129
            (this.m_WeaponSubIntro = xs.Factorys.Label.createByStyleId("LS_paixun"));
            // source line 365, bytecode pc 176
            this.m_WeaponSubIntro.setAnchorPoint(cc.p(0.5, 0.5));
            // source line 366, bytecode pc 203
            this.m_WeaponSubIntro.setString(param._data);
            // source line 372, bytecode pc 288
            xs.Utils.Node.attachNodes(this, this.m_WeaponSubIntro, { desc: "lb", sc: true, offset: { x: 280, y: 20 } });
        }
        // source line 376, bytecode pc 308
        this.m_LightPointPic.setVisible(false);
        // source line 377, bytecode pc 328
        this.m_DarkPointPic.setVisible(false);
        // source line 378, bytecode pc 348
        this.m_WeaponIntro.setVisible(false);
        // source line 380, bytecode pc 350
        return void 0;
    } else {
        // source line 383, bytecode pc 375
        this.m_LightPointPic.setVisible(true);
        // source line 384, bytecode pc 395
        this.m_DarkPointPic.setVisible(true);
        // source line 385, bytecode pc 415
        this.m_WeaponIntro.setVisible(true);
        if (this.m_WeaponSubIntro) {
            // source line 387, bytecode pc 446
            this.m_WeaponSubIntro.setVisible(false);
        }
    }
    // source line 390, bytecode pc 467
    (isLight = this.m_data.isLight());
    if (isLight) {
        // source line 394, bytecode pc 495
        this.m_LightPointPic.setVisible(true);
    } else {
        // source line 398, bytecode pc 520
        this.m_LightPointPic.setVisible(false);
    }
    // source line 403, bytecode pc 541
    (type = this.m_data.getEffectType());
    // source line 404, bytecode pc 580
    this.createWeaponIntroByType(Number(type), this.m_data);
}
}));
// source line 411, bytecode pc 896
(xs.Views.MiracleWeaponInforTableViewCell.create = function() {
    var cell;
    // source line 412, bytecode pc 23
    (cell = new xs.Views.MiracleWeaponInforTableViewCell());
    if ((cell && cell.init())) {
        // source line 414, bytecode pc 55
        return cell;
    }
    // source line 416, bytecode pc 57
    return null;
});
