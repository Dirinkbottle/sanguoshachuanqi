// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Cfg/Scene.js:1
// source line 11, bytecode pc 42
(xs.Cfg.Scene = (xs.Cfg.Scene || {}));
// source line 18, bytecode pc 96
(xs.Cfg.Scene.DesignResolution = { Default: { w: 1136, h: 768 } });
// source line 27, bytecode pc 200
(xs.Cfg.Scene.DesignResolutionMap = [ { w: 1024, h: 768 }, { w: 960, h: 640 }, { w: 1136, h: 640 } ]);
// source line 114, bytecode pc 1168
(xs.Cfg.Scene.FightScene = {
    CardPos: [
        [ cc.p(274, 279), cc.p(98, 438), cc.p(310, 580) ],
        [ cc.p(276, 226), cc.p(106, 349), cc.p(312, 495) ],
        [ cc.p(297, 226), cc.p(102, 349), cc.p(337, 495) ]
    ],
    defaultSpeedIdx: 0,
    speedInfos: [
        [ 1, "1", xs.Constant_SkillVoiceType_1and2, 1 ],
        [ 0.6666666666666666, "2", xs.Constant_SkillVoiceType_1and2, 2 ],
        [ 0.5, "3", xs.Constant_SkillVoiceType_2, 3 ]
    ],
    layout_boss: { body_skin: { skewY: 5, scale: 0.45 }, armBody: true, scale: 1.2222 },
    layout_normal: { body_skin: { skewY: 5, scale: 0.45 }, armBody: true },
    layout: [
        [
            { body_skin: { skewY: 5, scale: 0.45 }, armBody: true },
            { body_skin: { skewY: 5, scale: 0.45 }, armBody: true },
            { body_skin: { skewY: 5, scale: 0.45 }, armBody: true }
        ],
        [
            { body_skin: { skewY: 5, scale: 0.45 }, armBody: true },
            { body_skin: { skewY: 5, scale: 0.45 }, armBody: true },
            { body_skin: { skewY: 5, scale: 0.45 }, armBody: true }
        ]
    ],
    StatusMap: {
        freeze: { armId: "Arm_Freeze", offset: cc.p(-310, 53) },
        lock: { armId: "Arm_Lock", offset: cc.p(60, 320) }
    }
});
// source line 206, bytecode pc 1602
(xs.Cfg.Scene.CommonScene = {
    DialogHungerMask: { zOrder: 888, tag: 888, priority: -888 },
    DialogMask: { zOrder: 999, tag: 999, priority: -999 },
    Dialog: { zOrder: 1000, tag: 1000, priority: -1000 },
    HollowOutLayer: { zOrder: 3000, tag: 3000, priority: -3000 },
    Story: { zOrder: 3500, tag: 3500, priority: -3500 },
    RandEvent: { zOrder: 2000, tag: 2000, priority: -2000 },
    RandEvent_Dialog: { zOrder: 4000, tag: 4000, priority: -4000 },
    NetConnectErr: { zOrder: 5000, tag: 5000, priority: -5000 },
    FlutterText: { zOrder: 6000, tag: 6000, priority: -6000 },
    Loading: { zOrder: 7000, tag: 7000, priority: -7000 },
    Loading_ext: { zOrder: 7001, tag: 7001, priority: -7001 }
});
// source line 211, bytecode pc 1637
(xs.Cfg.Scene.LoginScene = { tag: 10001 });
// source line 294, bytecode pc 2168
(xs.Cfg.Scene.MainMenuScene = {
    bg: { zOrder: 0, tag: -1 },
    m_mainmenu: { zOrder: 0, tag: -1, priority: -1 },
    m_infoBar: { zOrder: 1, tag: -1, priority: -1 },
    m_menuBtn: { zOrder: 0, tag: -1, priority: -2 },
    m_chatBtn: { zOrder: 0, tag: -1, priority: -2 },
    m_unionBtn: { zOrder: 0, tag: -1, priority: -2 },
    m_taskBtn: { zOrder: 0, tag: -1, priority: -2 },
    m_rechargeBtn: { zOrder: 1, tag: -1, priority: -1 },
    m_copyBtn: { zOrder: 1, tag: -1, priority: -1 },
    m_EvoBoxBtn: { zOrder: 100, tag: 1000, priority: -500 },
    m_BeautyBtn: { zOrder: 100, tag: 1000, priority: -500 },
    m_mobileBtn: { zOrder: 100, tag: 1000, priority: -500 },
    m_msgPopMenu: { zOrder: 1, tag: -1, priority: -1 },
    m_horn: { zOrder: 1, tag: -1, priority: -1 },
    m_guideInMain: { zOrder: 1, tag: -1, priority: -1 },
    m_generalPlayer: { zOrder: 0, tag: -1, priority: -1 }
});
// source line 378, bytecode pc 2698
(xs.Cfg.Scene.TeamBuildScene = {
    m_mainMenu: { zOrder: 5, tag: -1, priority: -5 },
    m_generalMenu: { zOrder: 1, tag: -1, priority: -5 },
    m_closeBtn: { zOrder: 1, tag: -1, priority: -5 },
    m_instructionBtn: { zOrder: 1, tag: -1, priority: -5 },
    m_teamList: { zOrder: 1, tag: -1, priority: -4 },
    m_buddyBtn: { zOrder: 1, tag: -1, priority: -5 },
    m_teamListBg: { zOrder: 0, tag: -1, priority: -3 },
    m_iconBtn: { zOrder: 1, tag: -1, priority: -3 },
    m_gInfo: { zOrder: 0, tag: -1, priority: -1 },
    m_cntInfo: { zOrder: 0, tag: -1, priority: -1 },
    queueLayer: { zOrder: 10, tag: -1, priority: -20 },
    replaceLayer: { zOrder: 10, tag: -1, priority: -20 },
    popLayer: { zOrder: 10, tag: -1, priority: -20 },
    changeGeneralLayer: { zOrder: 10, tag: -1, priority: -20 },
    reinforcePopView: { zOrder: 10, tag: -1, priority: -20 },
    skillUpdateView: { zOrder: 10, tag: -1, priority: -20 }
});
// source line 385, bytecode pc 2756
(xs.Cfg.Scene.BeautyScene = { m_iconBtn: { zOrder: 1, tag: -1, priority: -3 } });
// source line 415, bytecode pc 2946
(xs.Cfg.Scene.EquipmentScene = {
    mainmenu: { zOrder: 0, tag: -1 },
    sortView: {
        base: { zOrder: 2, tag: -1, priority: -70 },
        sortBtn: { zOrder: 2, tag: -1, priority: 10 },
        sortWidget: { zOrder: 2, tag: -1, priority: 20 }
    },
    reinforcePopView: { zOrder: 5, tag: -1, priority: -20 }
});
// source line 505, bytecode pc 3465
(xs.Cfg.Scene.AgaScene = {
    maxZOrder: 10,
    maxPriority: -70,
    sortView: {
        base: { zOrder: 2, tag: -1, priority: -70 },
        sortBtn: { zOrder: 2, tag: -1, priority: 10 },
        sortWidget: { zOrder: 2, tag: -1, priority: 20 }
    },
    sideMenu: { zOrder: 3, tag: -1, priority: -40 },
    tablePage: {
        pageButton: { zOrder: 3, tag: -1, priority: -30 },
        infoView: {
            base: { zOrder: 1, tag: -1, priority: -10 },
            grade: { zOrder: 1, tag: 12 },
            name: { zOrder: 1, tag: 13 },
            toBattle: { zOrder: 1, tag: 14 },
            Parentheses: { zOrder: 1, tag: 17 },
            level: { zOrder: 1, tag: 15 },
            force: { zOrder: 1, tag: 16 },
            btn_dev: { zOrder: 1, tag: 18 },
            btn_inherit: { zOrder: 1, tag: 19 }
        },
        cardView: { zOrder: 0, tag: -1, priority: -20 },
        slider: { zOrder: 0, tag: -1, priority: -30 }
    }
});
// source line 641, bytecode pc 4239
(xs.Cfg.Scene.FightChapters = {
    base: { zOrder: 1, tag: 0, priority: -1 },
    sideMenu: { zOrder: 3, tag: -1, priority: -2 },
    MultiKillResultDialog: { zOrder: 1, tag: 0, priority: -20 },
    fightResultView: { zOrder: 1, tag: 0, priority: -20 },
    encounter: { base: { zOrder: 1, tag: 0, priority: -50 }, button: { zOrder: 1, tag: 0, priority: -10 } },
    chapterCell: { base: { zOrder: 1, tag: 0 }, bgSprite: { zOrder: 2, tag: 1 }, chapterStr: { zOrder: 3, tag: 0 } },
    levelCell: {
        base: { zOrder: 1, tag: 0 },
        chapterStr: { zOrder: 1, tag: 26 },
        star1: { zOrder: 1, tag: 10 },
        star2: { zOrder: 1, tag: 11 },
        star3: { zOrder: 1, tag: 12 },
        detailInfo: {
            base: { zOrder: 4, tag: 27 },
            uniqueBorder: { zOrder: 5, tag: 22 },
            goldenBorder: { zOrder: 5, tag: 23 },
            normalBorder: { zOrder: 5, tag: 24 },
            greyBorder: { zOrder: 5, tag: 25 },
            headIcon: { zOrder: 1, tag: 25 },
            power: { zOrder: 1, tag: 15 },
            times: { zOrder: 1, tag: 16 },
            recommendLevel: { zOrder: 1, tag: 17 },
            userExp: { zOrder: 1, tag: 18 },
            coin: { zOrder: 1, tag: 19 }
        },
        killButton: { zOrder: 1, tag: 28, priority: -1 },
        consecutiveKillButton: { zOrder: 1, tag: 29, priority: -1 }
    }
});
// source line 716, bytecode pc 4691
(xs.Cfg.Scene.fightResultView = {
    base: { zOrder: 1, tag: 0, priority: 0 },
    replayButton: { zOrder: 1, tag: 20, priority: -2 },
    confirmButton: { zOrder: 1, tag: 20, priority: -2 },
    infoRegion: {
        base: { zOrder: 1, tag: 25 },
        generalRest: { zOrder: 1, tag: 19 },
        defeat: { zOrder: 1, tag: 20 },
        beDefeated: { zOrder: 1, tag: 21 },
        rounds: { zOrder: 1, tag: 22 },
        userExp: { zOrder: 1, tag: 23 },
        coin: { zOrder: 1, tag: 24 }
    },
    generalInfo: {
        base: { zOrder: 1, tag: -1 },
        head: { zOrder: 1, tag: 10 },
        name: { zOrder: 1, tag: 11 },
        exp: { zOrder: 1, tag: 14 },
        level: { zOrder: 1, tag: 15 },
        levelState: { zOrder: 1, tag: 16 }
    }
});
// source line 756, bytecode pc 4917
(xs.Cfg.Scene.SkillScene = {
    sortView: {
        base: { zOrder: 10, tag: -1, priority: -70 },
        sortBtn: { zOrder: 0, tag: -1, priority: 10 },
        sortWidget: { zOrder: 0, tag: -1, priority: 20 }
    },
    mainmenu: { zOrder: 0, tag: -1, priority: -5 },
    pageView: { zOrder: 0, tag: -1, priority: -5 },
    skillUpdateView: { zOrder: 20, tag: -1, priority: -20 }
});
// source line 826, bytecode pc 5355
(xs.Cfg.Scene.StoreScene = {
    base: { priority: 0 },
    sideBar: { zOrder: 0, tag: -1, priority: 0 },
    DuiJiuView: {
        base: { zOrder: 0, tag: -1, priority: 0 },
        wineCup1: {
            dropGrade_tag: 13,
            yuanbaoNum_tag: 52,
            yuanbao_tag: 53,
            timesStrLabel_tag: 31,
            times_tag: 32,
            button: { tag: 40, priority: -1 }
        },
        wineCup2: {
            dropGrade_tag: 13,
            yuanbaoNum_tag: 54,
            yuanbao_tag: 55,
            timesStrLabel_tag: 34,
            times_tag: 35,
            button: { tag: 41, priority: -1 }
        },
        wineCup3: {
            dropGrade_tag: 13,
            yuanbaoNum_tag: 56,
            yuanbao_tag: 57,
            timesStrLabel_tag: 37,
            times_tag: 38,
            button: { tag: 42, priority: -1 }
        }
    },
    DuiJiuViewResult: {
        base: { zOrder: 1, tag: -1, priority: -20 },
        buttonCheck: { tag: -1, priority: -20 },
        buttonContinue: { tag: -1, priority: -20 }
    },
    BuyGoodsSuccessPopView: { priority: -20 }
});
// source line 879, bytecode pc 5677
(xs.Cfg.Scene.AlchemyScene = {
    generalInfo: {
        talent_tag: 14,
        ganoderma_tag: 18,
        head_tag: 19,
        level_tag: 21,
        generalName_tag: 23,
        blood_tag: 26,
        attack_tag: 31,
        defense_tag: 28,
        intelligence_tag: 34
    },
    medicineInfo: {
        name_tag: 11,
        cultureAttrLeft_tag: 13,
        arrowLeft_tag: 14,
        cultureAttrLeftVal_tag: 15,
        cultureAttrRight_tag: 16,
        arrowRight_tag: 17,
        cultureAttrRightVal_tag: 18,
        button_1: { tag: 19, priority: -1 },
        button_2: { tag: 20, priority: -1 }
    },
    bottom: {
        button_1: { tag: 14, priority: -1 },
        button_2: { tag: 31, priority: -1 },
        button_3: { tag: 32, priority: -1 },
        button_4: { tag: 33, priority: -1 }
    }
});
// source line 892, bytecode pc 5756
(xs.Cfg.Scene.InsightScene = {
    infoRgion: {
        InsightBtn_tag: 6,
        TalentAdd_tag: 1,
        InsightLevel_tag: 2,
        TalentPoint_tag: 3,
        HaveSoulNum_tag: 4,
        NeedSoulNum_tag: 5
    }
});
// source line 911, bytecode pc 5876
(xs.Cfg.Scene.UnionWar = {
    m_battleView: { zOrder: 1, tag: -1, priority: -5 },
    m_closeBtn: { zOrder: 1, tag: -1, priority: -5 },
    m_playerHeadView: { zOrder: 1, tag: -1, priority: -5 }
});
