// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/SortController.js:1
// source line 365, bytecode pc 3880
(xs.Views.SortController = cc.Layer.extend({
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
    // source line 11, bytecode pc 50
    (this.bScrollView = false);
},
    init: function(filterType) {
    // source line 16, bytecode pc 23
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 17, bytecode pc 38
    this.setTouchEnabled(true);
    // source line 19, bytecode pc 77
    (this.sortBtn = xs.Views.Btn.create("Btn_PullList"));
    // source line 21, bytecode pc 112
    this.sortBtn.setTitleForState("", cc.CONTROL_STATE_NORMAL);
    // source line 22, bytecode pc 132
    this.sortBtn.setZoomOnTouchDown(false);
    // source line 24, bytecode pc 174
    this.sortBtn.setPreferredSize(cc.size(212, 62));
    // source line 25, bytecode pc 213
    this.sortBtn.setAnchorPoint(cc.p(0, 0));
    // source line 26, bytecode pc 252
    this.sortBtn.setPosition(cc.p(0, 0));
    // source line 27, bytecode pc 290
    this.sortBtn.addTargetWithActionForControlEvents(this, this.showPullList, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 28, bytecode pc 310
    this.addChild(this.sortBtn);
    // source line 31, bytecode pc 327
    this._initPullList(filterType);
    // source line 34, bytecode pc 336
    (this.curSortIdx = -1);
    // source line 36, bytecode pc 338
    return true;
},
    _getLazyInit_SortView: function() {
    if (!this.m_sortWidget) {
        // source line 42, bytecode pc 39
        (this.m_sortWidget = xs.BFSortTableWidget.create());
        // source line 43, bytecode pc 78
        this.m_sortWidget.setAnchorPoint(cc.p(0, 0));
        // source line 44, bytecode pc 122
        this.m_sortWidget.setPosition(cc.p(-10, -288));
        // source line 45, bytecode pc 147
        this.m_sortWidget.setData(this.sortStrs);
        // source line 46, bytecode pc 167
        this.m_sortWidget.setDelegate(this);
        // source line 47, bytecode pc 209
        this.m_sortWidget.setTouchPriority((this.m_baseTouchPriority + this.cfg.sortWidget.priority));
    }
    // source line 50, bytecode pc 216
    return this.m_sortWidget;
},
    onEnter: function() {
    // source line 54, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 58, bytecode pc 12
    this._super();
},
    _initPullList: function(filterStyle) {
    var listStrings, i, idx, strKey;
    // source line 64, bytecode pc 8
    (listStrings = []);
    // source line 65, bytecode pc 16
    (this.filterList = null);
    // source line 66, bytecode pc 28
    (this.sortStrs = []);
    // source line 68, bytecode pc 32
    switch (filterStyle) {
        case xs.Constant_FilterStyle_General:
        // source line 71, bytecode pc 240
        (this.filterList = this.cfg.filterList.general);
        break;
        case xs.Constant_FilterStyle_Equipment:
        // source line 74, bytecode pc 268
        (this.filterList = this.cfg.filterList.equipMent);
        break;
        case xs.Constant_FilterStyle_ChangeSkill:
        // source line 77, bytecode pc 296
        (this.filterList = this.cfg.filterList.changeSkill);
        break;
        case xs.Constant_FilterStyle_GeneralAtlas:
        // source line 80, bytecode pc 324
        (this.filterList = this.cfg.filterList.generalAtlas);
        break;
        case xs.Constant_FilterStyle_EquipmentAtLas:
        // source line 83, bytecode pc 352
        (this.filterList = this.cfg.filterList.equipMentAtlas);
        break;
        case xs.Constant_FilterStyle_SkillAtlas:
        // source line 86, bytecode pc 380
        (this.filterList = this.cfg.filterList.skillAtlas);
        break;
        case xs.Constant_FilterStyle_ChangeGeneralLieutenant:
        // source line 89, bytecode pc 408
        (this.filterList = this.cfg.filterList.generalLieutenant);
        break;
        case xs.Constant_FilterStyle_Skill:
        // source line 92, bytecode pc 436
        (this.filterList = this.cfg.filterList.skill);
        break;
        case xs.Constant_FilterStyle_ChangeEquipMent:
        // source line 95, bytecode pc 464
        (this.filterList = this.cfg.filterList.changeEquipMent);
        break;
        case xs.Constant_FilterStyle_ChangeBattlePlayer:
        // source line 98, bytecode pc 492
        (this.filterList = this.cfg.filterList.battleAtlas);
        break;
        case xs.Constant_FilterStyle_TrainGenerals:
        // source line 101, bytecode pc 520
        (this.filterList = this.cfg.filterList.trainAtlas);
        break;
        case xs.Constant_FilterStyle_DisplayGenerals:
        // source line 104, bytecode pc 548
        (this.filterList = this.cfg.filterList.display);
        break;
        default:
        break;
    }
    // source line 111, bytecode pc 558
    (i = 0);
    while ((i < this.filterList.length)) {
        // source line 112, bytecode pc 583
        (idx = this.filterList[i].idx);
        // source line 113, bytecode pc 607
        (strKey = this.cfg.filterResults[idx].stringKey);
        // source line 114, bytecode pc 656
        this.sortStrs.push(xs.Tools.String.createString(strKey));
        // source line 111, bytecode pc 671
        i++;
    }
    // source line 119, bytecode pc 707
    this.setSelected(0);
},
    showPullList: function() {
    if (!this.bScrollView) {
        // source line 126, bytecode pc 37
        this.addChild(this._getLazyInit_SortView());
        // source line 127, bytecode pc 45
        (this.bScrollView = true);
    } else {
        if (this.m_sortWidget) {
            // source line 130, bytecode pc 83
            this.removeChild(this.m_sortWidget, true);
        }
        // source line 133, bytecode pc 91
        (this.m_sortWidget = null);
        // source line 134, bytecode pc 99
        (this.bScrollView = false);
    }
},
    setSelected: function(idx) {
    // source line 140, bytecode pc 28
    this.sortBtn.setString(this.sortStrs[idx]);
    // source line 141, bytecode pc 50
    (this.filterType = this.filterList[idx].type);
    // source line 142, bytecode pc 89
    (this.filterResult = this.cfg.filterResults[this.filterList[idx].idx].filterResult);
},
    onTouchBegan: function(touch, e) {
    var location, locationInView, boundingRect;
    // source line 146, bytecode pc 17
    (location = touch.getLocation());
    // source line 147, bytecode pc 37
    (locationInView = this.convertToNodeSpace(location));
    // source line 148, bytecode pc 74
    (boundingRect = cc.rect(-10, -288, 245, 282));
    if (((cc.rectContainsPoint(boundingRect, locationInView) !== true) && (this.bScrollView === true))) {
        // source line 150, bytecode pc 127
        (this.dispatchByTouchBegan = true);
        // source line 151, bytecode pc 140
        this.showPullList();
    } else {
        // source line 153, bytecode pc 153
        (this.dispatchByTouchBegan = false);
    }
    // source line 156, bytecode pc 155
    return false;
},
    onSelectCell: function(idx, no_manual) {
    // source line 161, bytecode pc 9
    (this.curSortIdx = idx);
    // source line 162, bytecode pc 26
    this.setSelected(idx);
    if ((no_manual === undefined)) {
        // source line 165, bytecode pc 84
        this.runAction(cc.CallFunc.create(this.showPullList, this));
    }
    if (this.notifyChange) {
        // source line 169, bytecode pc 122
        this.notifyChange(this.filterType, this.filterResult);
    }
},
    setSortChgCallBack: function(callBack) {
    // source line 174, bytecode pc 9
    (this.notifyChange = callBack);
},
    getDefaultFilter: function() {
    // source line 178, bytecode pc 47
    return { filterType: this.filterList[0].type, filterResult: this.cfg.filterResults[0].filterResult }
},
    getCurFilter: function() {
    if ((this.filterType && this.filterResult)) {
        // source line 183, bytecode pc 51
        return { filterType: this.filterType, filterResult: this.filterResult }
    }
    // source line 185, bytecode pc 53
    return null;
},
    getIdxForFilterIdx: function(filterIdx) {
    var realIdx, i;
    // source line 189, bytecode pc 5
    (realIdx = -1);
    // source line 190, bytecode pc 10
    (i = 0);
    while ((i < this.filterList.length)) {
        if ((this.filterList[i].idx == filterIdx)) {
            // source line 192, bytecode pc 47
            (realIdx = i);
            break;
        }
        // source line 190, bytecode pc 67
        i++;
    }
    // source line 196, bytecode pc 115
    xs.log(("canbeset =" + realIdx));
    // source line 197, bytecode pc 119
    return realIdx;
},
    setBaseTouchPriority: function(priority) {
    // source line 201, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 202, bytecode pc 46
    this.setTouchPriority((this.m_baseTouchPriority + this.cfg.base.priority));
    // source line 203, bytecode pc 88
    this.sortBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.sortBtn.priority));
    if (this.m_sortWidget) {
        // source line 206, bytecode pc 141
        this.m_sortWidget.setTouchPriority((this.m_baseTouchPriority + this.cfg.sortWidget.priority));
    }
},
    cfg: {
        base: { zOrder: 2, tag: -1, priority: -1 },
        sortBtn: { zOrder: 2, tag: -1, priority: -2 },
        sortWidget: { zOrder: 2, tag: -1, priority: 0 },
        filterList: {
            general: [
                { idx: xs.Constant_FilterIdx_All, type: xs.Constant_FilterType_General_Type },
                { idx: xs.Constant_FilterIdx_passive, type: xs.Constant_FilterType_General_Type },
                { idx: xs.Constant_FilterIdx_burst, type: xs.Constant_FilterType_General_Type },
                { idx: xs.Constant_FilterIdx_attack, type: xs.Constant_FilterType_General_Type },
                { idx: xs.Constant_FilterIdx_blood, type: xs.Constant_FilterType_General_Type }
            ],
            equipMent: [
                { idx: xs.Constant_FilterIdx_All, type: xs.Constant_FilterType_Equipment_Pos },
                { idx: xs.Constant_FilterIdx_weapon, type: xs.Constant_FilterType_Equipment_Pos },
                { idx: xs.Constant_FilterIdx_armor, type: xs.Constant_FilterType_Equipment_Pos },
                { idx: xs.Constant_FilterIdx_mount, type: xs.Constant_FilterType_Equipment_Pos },
                { idx: xs.Constant_FilterIdx_kit, type: xs.Constant_FilterType_Equipment_Pos }
            ],
            changeSkill: [
                { idx: xs.Constant_FilterIdx_All, type: xs.Constant_FilterType_Skill_Type },
                { idx: xs.Constant_FilterIdx_attack, type: xs.Constant_FilterType_Skill_Type },
                { idx: xs.Constant_FilterIdx_blood, type: xs.Constant_FilterType_Skill_Type },
                { idx: xs.Constant_FilterIdx_burst, type: xs.Constant_FilterType_Skill_Type },
                { idx: xs.Constant_FilterIdx_passive, type: xs.Constant_FilterType_Skill_Type },
                { idx: xs.Constant_FilterIdx_canUse, type: xs.Constant_FilterType_Skill_IsCanBeSet }
            ],
            skill: [
                { idx: xs.Constant_FilterIdx_All, type: xs.Constant_FilterType_Skill_Type },
                { idx: xs.Constant_FilterIdx_attack, type: xs.Constant_FilterType_Skill_Type },
                { idx: xs.Constant_FilterIdx_blood, type: xs.Constant_FilterType_Skill_Type },
                { idx: xs.Constant_FilterIdx_burst, type: xs.Constant_FilterType_Skill_Type },
                { idx: xs.Constant_FilterIdx_passive, type: xs.Constant_FilterType_Skill_Type }
            ],
            generalAtlas: [
                { idx: xs.Constant_FilterIdx_All, type: xs.Constant_FilterType_GeneralAtlas_Type },
                { idx: xs.Constant_FilterIdx_passive, type: xs.Constant_FilterType_GeneralAtlas_Type },
                { idx: xs.Constant_FilterIdx_burst, type: xs.Constant_FilterType_GeneralAtlas_Type },
                { idx: xs.Constant_FilterIdx_attack, type: xs.Constant_FilterType_GeneralAtlas_Type },
                { idx: xs.Constant_FilterIdx_blood, type: xs.Constant_FilterType_GeneralAtlas_Type },
                { idx: xs.Constant_FilterIdx_surrender, type: xs.Constant_FilterType_GeneralAtlas_IsSurrender },
                { idx: xs.Constant_FilterIdx_notSurrender, type: xs.Constant_FilterType_GeneralAtlas_IsSurrender }
            ],
            equipMentAtlas: [
                { idx: xs.Constant_FilterIdx_All, type: xs.Constant_FilterType_EquipmentAtLas_Pos },
                { idx: xs.Constant_FilterIdx_weapon, type: xs.Constant_FilterType_EquipmentAtLas_Pos },
                { idx: xs.Constant_FilterIdx_armor, type: xs.Constant_FilterType_EquipmentAtLas_Pos },
                { idx: xs.Constant_FilterIdx_mount, type: xs.Constant_FilterType_EquipmentAtLas_Pos },
                { idx: xs.Constant_FilterIdx_kit, type: xs.Constant_FilterType_EquipmentAtLas_Pos }
            ],
            skillAtlas: [
                { idx: xs.Constant_FilterIdx_All, type: xs.Constant_FilterType_SkillAtlas_Type },
                { idx: xs.Constant_FilterIdx_attack, type: xs.Constant_FilterType_SkillAtlas_Type },
                { idx: xs.Constant_FilterIdx_blood, type: xs.Constant_FilterType_SkillAtlas_Type },
                { idx: xs.Constant_FilterIdx_burst, type: xs.Constant_FilterType_SkillAtlas_Type },
                { idx: xs.Constant_FilterIdx_passive, type: xs.Constant_FilterType_SkillAtlas_Type }
            ],
            generalLieutenant: [
                { idx: xs.Constant_FilterIdx_All, type: xs.Constant_FilterType_GeneralLieutenant_Type },
                { idx: xs.Constant_FilterIdx_attack, type: xs.Constant_FilterType_GeneralLieutenant_Type },
                { idx: xs.Constant_FilterIdx_blood, type: xs.Constant_FilterType_GeneralLieutenant_Type },
                { idx: xs.Constant_FilterIdx_burst, type: xs.Constant_FilterType_GeneralLieutenant_Type },
                { idx: xs.Constant_FilterIdx_passive, type: xs.Constant_FilterType_GeneralLieutenant_Type },
                { idx: xs.Constant_FilterIdx_canUse, type: xs.Constant_FilterType_GeneralLieutenant_IsCanBeSet }
            ],
            changeEquipMent: [ { idx: xs.Constant_FilterIdx_All, type: xs.Constant_FilterType_Equipment_Pos } ],
            battleAtlas: [
                { idx: xs.Constant_FilterIdx_All, type: xs.Constant_FilterType_Battle_Id },
                { idx: xs.Constant_FilterIdx_chiBi, type: xs.Constant_FilterType_Battle_Id },
                { idx: xs.Constant_FilterIdx_guanDu, type: xs.Constant_FilterType_Battle_Id },
                { idx: xs.Constant_FilterIdx_yiLing, type: xs.Constant_FilterType_Battle_Id },
                { idx: xs.Constant_FilterIdx_huaRong, type: xs.Constant_FilterType_Battle_Id },
                { idx: xs.Constant_FilterIdx_changBan, type: xs.Constant_FilterType_Battle_Id },
                { idx: xs.Constant_FilterIdx_boWang, type: xs.Constant_FilterType_Battle_Id }
            ],
            gemsEpsScreen: [ { idx: xs.Constant_FilterIdx_All, type: xs.Constant_FilterType_Equipment_Pos } ],
            trainAtlas: [
                { idx: xs.Constant_FilterIdx_All, type: xs.Constant_FilterType_Train_Id },
                { idx: xs.Constant_FilterIdx_sunJian, type: xs.Constant_FilterType_Train_Id },
                { idx: xs.Constant_FilterIdx_zhaoYun, type: xs.Constant_FilterType_Train_Id },
                { idx: xs.Constant_FilterIdx_lvBu, type: xs.Constant_FilterType_Train_Id }
            ],
            display: [
                { idx: xs.Constant_FilterIdx_All, type: xs.Constant_FilterType_General_Grade },
                { idx: xs.Constant_FilterIdx_God, type: xs.Constant_FilterType_General_Grade },
                { idx: xs.Constant_FilterIdx_Gold, type: xs.Constant_FilterType_General_Grade },
                { idx: xs.Constant_FilterIdx_Silver, type: xs.Constant_FilterType_General_Grade },
                { idx: xs.Constant_FilterIdx_Copper, type: xs.Constant_FilterType_General_Grade },
                { idx: xs.Constant_FilterIdx_Demon, type: xs.Constant_FilterType_General_Grade }
            ]
        },
        filterResults: [
            { filterResult: xs.Constant_FilterResult_All, stringKey: "filter_all" },
            { filterResult: xs.Constant_FilterResult_Passive, stringKey: "filter_passive" },
            { filterResult: xs.Constant_FilterResult_burst, stringKey: "filter_burst" },
            { filterResult: xs.Constant_FilterResult_attack, stringKey: "filter_attack" },
            { filterResult: xs.Constant_FilterResult_blood, stringKey: "filter_blood" },
            { filterResult: xs.Constant_FilterResult_Weapon, stringKey: "filter_weapon" },
            { filterResult: xs.Constant_FilterResult_Armor, stringKey: "filter_armor" },
            { filterResult: xs.Constant_FilterResult_Mount, stringKey: "filter_mount" },
            { filterResult: xs.Constant_FilterResult_Kit, stringKey: "filter_kit" },
            { filterResult: xs.Constant_FilterResult_Surrender, stringKey: "filter_surrender" },
            { filterResult: xs.Constant_FilterResult_NotSurrender, stringKey: "filter_notSurrender" },
            { filterResult: xs.Constant_FilterResult_CanUse, stringKey: "filter_canUse" },
            { filterResult: xs.Constant_FilterResult_Battle_ChiBi, stringKey: "unionWar_battleName_chiBi" },
            { filterResult: xs.Constant_FilterResult_Battle_GuanDu, stringKey: "unionWar_battleName_guanDu" },
            { filterResult: xs.Constant_FilterResult_Battle_YiLing, stringKey: "unionWar_battleName_yiLing" },
            {
                filterResult: xs.Constant_FilterResult_Battle_HuaRong,
                stringKey: "unionWar_battleName_huaRongDao"
            },
            {
                filterResult: xs.Constant_FilterResult_Battle_ChangBan,
                stringKey: "unionWar_battleName_changBanPo"
            },
            { filterResult: xs.Constant_FilterResult_Battle_BoWang, stringKey: "unionWar_battleName_boWangPo" },
            { filterResult: xs.Constant_FilterResult_Train_SunJian, stringKey: "TrainSunJian" },
            { filterResult: xs.Constant_FilterResult_Train_ZhaoYun, stringKey: "TrainZhaoYun" },
            { filterResult: xs.Constant_FilterResult_Train_LvBu, stringKey: "TrainLvBu" },
            { filterResult: xs.Constant_FilterIdx_God, stringKey: "str_Filter_God" },
            { filterResult: xs.Constant_FilterIdx_Gold, stringKey: "str_Filter_Gold" },
            { filterResult: xs.Constant_FilterIdx_Silver, stringKey: "str_Filter_Silver" },
            { filterResult: xs.Constant_FilterIdx_Copper, stringKey: "str_Filter_Copper" },
            { filterResult: xs.Constant_FilterIdx_Demon, stringKey: "str_Filter_Demon" }
        ]
    }
}));
// source line 372, bytecode pc 3906
(xs.Views.SortController.create = function(filterType) {
    var ret;
    // source line 373, bytecode pc 23
    (ret = new xs.Views.SortController());
    if ((ret && ret.init(filterType))) {
        // source line 375, bytecode pc 59
        return ret;
    }
    // source line 378, bytecode pc 88
    xs.assert(false, "xs.Views.SortController.create", ret);
    // source line 380, bytecode pc 90
    return null;
});
