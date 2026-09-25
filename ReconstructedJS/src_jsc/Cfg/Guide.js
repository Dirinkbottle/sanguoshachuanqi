// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Cfg/Guide.js:1
// source line 16, bytecode pc 15
(xs.Constant_GuideTag_MainMenu_General = "40000");
// source line 17, bytecode pc 31
(xs.Constant_GuideTag_Shortcut_Idx = "50000");
// source line 18, bytecode pc 47
(xs.Constant_GuideTag_DlgDetail_Surrender = "60000");
// source line 20, bytecode pc 63
(xs.Constant_GuideTag_Chapter_Surrender = "70000");
// source line 23, bytecode pc 79
(xs.Constant_GuideTag_ChapterDetail_Fight = "3000");
// source line 25, bytecode pc 95
(xs.Constant_GuideTag_EliteDuplicate = "10000");
// source line 1405, bytecode pc 9439
(xs.Cfg.Guide = (xs.Cfg.Guide || {
    NewGuideCfg: {
        locationKey: "NewGuideStep",
        defaultStep: "0",
        "0": { type: xs.Constant_GuideStepType_None, isDot: true, nextStep: "00101" },
        "00101": { type: xs.Constant_GuideStepType_CG, isDot: true, nextStep: "00113" },
        "00113": {
            type: xs.Constant_GuideStepType_ChangeScene,
            isDot: true,
            nextStep: "00201",
            data: { isNeedChangeScene: true, sceneName: "MainMenuScene", data: true }
        },
        "00201": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "00301",
            data: { storyId: "99000201" }
        },
        "00301": { type: xs.Constant_GuideStepType_NewPlayerFight, isDot: false, nextStep: "00302", data: {} },
        "00302": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "00335_before",
            data: { posCfg: { desc: "c", sc: true }, isClickHand: false, width: 1136, height: 960 }
        },
        "00335_before": {
            type: xs.Constant_GuideStepType_ChangeScene,
            isDot: true,
            nextStep: "00335",
            data: { isNeedChangeScene: true, sceneName: "MainMenuScene" }
        },
        "00335": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "10000_before",
            data: { storyId: "99000335" }
        },
        "10000_before": {
            type: xs.Constant_GuideStepType_ChangeScene,
            isDot: false,
            nextStep: "10000",
            data: { sceneName: "GeneralSelectScene" }
        },
        "10000": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "10100",
            data: { posCfg: { desc: "c", sc: true }, isClickHand: false, width: 1136, height: 960 }
        },
        "10100": {
            type: xs.Constant_GuideStepType_ChangeScene,
            isDot: true,
            nextStep: "10101",
            data: { isNeedChangeScene: true, sceneName: "MainMenuScene" }
        },
        "10101": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "10201_before",
            data: { storyId: "99010101" }
        },
        "10201_before": {
            type: xs.Constant_GuideStepType_ChangeScene,
            isDot: true,
            nextStep: "10201",
            data: { isNeedChangeScene: false, sceneName: "MainMenuScene" }
        },
        "10201": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "20000",
            data: { storyId: "99010201" }
        },
        "20000": {
            type: xs.Constant_GuideStepType_ShowDialog,
            isDot: false,
            nextStep: "20101_before",
            data: { dialogName: "PlayerChangeNameDialog" }
        },
        "20101_before": {
            type: xs.Constant_GuideStepType_ChangeScene,
            isDot: true,
            nextStep: "20101",
            data: { isNeedChangeScene: false, sceneName: "MainMenuScene" }
        },
        "20101": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "20201",
            data: { storyId: "99020101" }
        },
        "20201": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "20202",
            data: { guideTag: 1000, width: 110, height: 110 }
        },
        "20202": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "20204",
            data: { guideTag: 2000, width: 110, height: 110 }
        },
        "20204": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "30000",
            data: { storyId: "99020204" }
        },
        "30000": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "30001",
            data: { guideTag: xs.Constant_GuideTag_ChapterDetail_Fight, width: 150, height: 72 }
        },
        "30001": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "30002",
            data: { posCfg: { desc: "c", sc: true }, isClickHand: false, width: 1136, height: 960 }
        },
        "30002": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "30101_before",
            data: { guideTag: 3001, width: 150, height: 72 }
        },
        "30101_before": {
            type: xs.Constant_GuideStepType_ChangeScene,
            isDot: true,
            nextStep: "30101",
            data: { isNeedChangeScene: false, sceneName: "FightChapters" }
        },
        "30101": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "30102",
            data: { storyId: "99030101" }
        },
        "30102": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "40000",
            data: { guideTag: 1001, width: 110, height: 110 }
        },
        "40000": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "40001_before",
            data: { guideTag: 3002, width: 200, height: 100 }
        },
        "40001_before": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "40001",
            data: { posCfg: { desc: "c", sc: true }, isClickHand: false, width: 1136, height: 960 }
        },
        "40001": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "40002",
            data: { storyId: "99040001" }
        },
        "40002": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "40101_before",
            data: { guideTag: 3003, width: 150, height: 72 }
        },
        "40101_before": {
            type: xs.Constant_GuideStepType_ChangeScene,
            isDot: true,
            nextStep: "40101",
            data: { isNeedChangeScene: false, sceneName: "StoreScene" }
        },
        "40101": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "40102",
            data: { storyId: "99040101" }
        },
        "40102": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "40103",
            data: { guideTag: 1002, width: 110, height: 110 }
        },
        "40103": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "40104",
            data: { guideTag: 3004, width: 342, height: 230 }
        },
        "40104": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "40105",
            data: { guideTag: 3005, width: 100, height: 100 }
        },
        "40105": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "50000",
            data: { posCfg: { desc: "c", sc: true, offset: { x: -50, y: -50 } }, width: 420, height: 500 }
        },
        "50000": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "50101_before",
            data: { guideTag: 3006, width: 150, height: 72 }
        },
        "50101_before": {
            type: xs.Constant_GuideStepType_ChangeScene,
            isDot: true,
            nextStep: "50101",
            data: { isNeedChangeScene: false, sceneName: "TeamBuildScene" }
        },
        "50101": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "50102",
            data: { storyId: "99050101" }
        },
        "50102": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "50103",
            data: { guideTag: 1000, width: 110, height: 110 }
        },
        "50103": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "60000",
            data: { guideTag: 2001, width: 110, height: 110 }
        },
        "60000": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "60001",
            data: { guideTag: xs.Constant_GuideTag_ChapterDetail_Fight, width: 150, height: 72 }
        },
        "60001": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "60002",
            data: { posCfg: { desc: "c", sc: true }, isClickHand: false, width: 1136, height: 960 }
        },
        "60002": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "60101_before",
            data: { guideTag: 3001, width: 150, height: 72 }
        },
        "60101_before": {
            type: xs.Constant_GuideStepType_ChangeScene,
            isDot: true,
            nextStep: "60101",
            data: { isNeedChangeScene: false, sceneName: "FightChapters" }
        },
        "60101": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "60102",
            data: { storyId: "99060101" }
        },
        "60102": {
            type: xs.Constant_GuideStepType_ShowToast,
            isDot: false,
            nextStep: "60103",
            data: { stringId: "auto_name_6" }
        },
        "60103": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "60104",
            data: { guideTag: 1002, width: 110, height: 110 }
        },
        "60104": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "70000",
            data: { guideTag: 3007, width: 342, height: 230 }
        },
        "70000": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "70001",
            data: { guideTag: 3008, width: 150, height: 72 }
        },
        "70001": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "70101_before",
            data: { guideTag: 3009, width: 150, height: 72 }
        },
        "70101_before": {
            type: xs.Constant_GuideStepType_ChangeScene,
            isDot: true,
            nextStep: "70101",
            data: { isNeedChangeScene: false, sceneName: "BagScene" }
        },
        "70101": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "70102",
            data: { storyId: "99070101" }
        },
        "70102": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "70103",
            data: { guideTag: 1002, width: 110, height: 110 }
        },
        "70103": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "70104",
            data: { guideTag: 3004, width: 342, height: 230 }
        },
        "70104": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "80000",
            data: { guideTag: 3010, width: 110, height: 110 }
        },
        "80000": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "80101",
            data: { guideTag: 3006, width: 150, height: 72 }
        },
        "80101_before": {
            type: xs.Constant_GuideStepType_ChangeScene,
            isDot: true,
            nextStep: "70101",
            data: { isNeedChangeScene: false, sceneName: "BagScene" }
        },
        "80101": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "80102",
            data: { storyId: "99080101" }
        },
        "80102": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "80103",
            data: { guideTag: 1000, width: 110, height: 110 }
        },
        "80103": {
            type: xs.Constant_GuideStepType_ShowDialog,
            isDot: false,
            nextStep: null,
            data: { dialogName: "AdvertisementDialogGuide" }
        }
    },
    TreasureGuideCfg: {
        locationKey: "TreasureGuideStep",
        defaultStep: "90101",
        "90101": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "90102",
            data: { storyId: "99090101" }
        },
        "90102": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "90103",
            data: { guideTag: 2005, width: 110, height: 110 }
        },
        "90103": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "90104",
            data: { guideTag: 3009, width: 150, height: 72 }
        },
        "90104": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: null,
            data: { guideTag: 4000, width: 30, height: 172 }
        }
    },
    ImproveGuideCfg: {
        locationKey: "ImproveGuideStep",
        defaultStep: "110101",
        "110101": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "110102",
            data: { storyId: "990110101" }
        },
        "110102": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "110103",
            data: { guideTag: 1002, width: 110, height: 110 }
        },
        "110103": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: null,
            data: { guideTag: 4001, width: 192, height: 230 }
        }
    },
    SurrenderGuideCfg: {
        locationKey: "SurrenderGuideStep",
        defaultStep: "180101",
        "180101": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "180102",
            data: { storyId: "990180101" }
        },
        "180102": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "180103",
            data: { guideTag: xs.Constant_GuideTag_Shortcut_Idx, width: 110, height: 110 }
        },
        "180103": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "180104",
            data: { storyId: "990180103" }
        },
        "180104": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "180105",
            data: { guideTag: xs.Constant_GuideTag_MainMenu_General, width: 192, height: 230 }
        },
        "180105": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "180106",
            data: { storyId: "990180105" }
        },
        "180106": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "180107",
            data: { guideTag: xs.Constant_GuideTag_DlgDetail_Surrender, width: 192, height: 230 }
        },
        "180107": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "180108",
            data: { storyId: "990180107" }
        },
        "180108": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: null,
            data: { guideTag: xs.Constant_GuideTag_ChapterDetail_Fight, width: 150, height: 72 }
        }
    },
    InTeamGuideCfg: {
        locationKey: "InTeamGuideStep",
        defaultStep: "150101",
        "150101": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "150102",
            data: { isClickHand: false, guideTag: 4003, width: 150, height: 72 }
        },
        "150102": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "150103",
            data: { storyId: "990150102" }
        },
        "150103": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "150104",
            data: { guideTag: 1002, width: 110, height: 110 }
        },
        "150104": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "150105",
            data: { guideTag: 3004, width: 342, height: 230 }
        },
        "150105": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "150106",
            data: { guideTag: 4004, width: 100, height: 100 }
        },
        "150106": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: null,
            data: { posCfg: { desc: "c", sc: true, offset: { x: -50, y: -50 } }, width: 420, height: 500 }
        }
    },
    LadderGuideCfg: {
        locationKey: "LadderGuideStep",
        defaultStep: "120115",
        "120115": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "120101",
            data: { isClickHand: false, guideTag: 4003, width: 150, height: 72 }
        },
        "120101": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "120102",
            data: { storyId: "990120101" }
        },
        "120102": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "120103",
            data: { guideTag: 1003, width: 110, height: 110 }
        },
        "120103": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "120104_before",
            data: { guideTag: 4005, width: 342, height: 230 }
        },
        "120104_before": {
            type: xs.Constant_GuideStepType_ChangeScene,
            isDot: false,
            nextStep: "120104",
            data: { isNeedChangeScene: false, sceneName: "LadderScene", data: true }
        },
        "120104": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: null,
            data: { storyId: "990120104" }
        }
    },
    ChaosGuideCfg: {
        locationKey: "ChaosGuideStep",
        defaultStep: "130101",
        "130101": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "130102",
            data: { isClickHand: false, guideTag: 4003, width: 150, height: 72 }
        },
        "130102": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "130103",
            data: { storyId: "990130102" }
        },
        "130103": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "130104",
            data: { guideTag: 1003, width: 110, height: 110 }
        },
        "130104": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "130105",
            data: { guideTag: 4006, width: 342, height: 230 }
        },
        "130105": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: null,
            data: { storyId: "990130105" }
        }
    },
    DevelopGuideCfg: {
        locationKey: "DevelopGuideStep",
        defaultStep: "140101",
        "140101": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "140102",
            data: { isClickHand: false, guideTag: 4003, width: 150, height: 72 }
        },
        "140102": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "140103",
            data: { storyId: "990140102" }
        },
        "140103": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "140104",
            data: { guideTag: 1002, width: 110, height: 110 }
        },
        "140104": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "140105",
            data: { guideTag: 4007, width: 192, height: 230 }
        },
        "140105": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "140106",
            data: { guideTag: 4008, width: 150, height: 72 }
        },
        "140106": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "140107",
            data: { storyId: "990140106" }
        },
        "140107": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: null,
            data: { guideTag: 4009, width: 300, height: 72 }
        }
    },
    ClimbGuideCfg: {
        locationKey: "ClimbGuideStep",
        defaultStep: "170101",
        "170101": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "170102",
            data: { isClickHand: false, guideTag: 4003, width: 150, height: 72 }
        },
        "170102": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "170103",
            data: { storyId: "990170102" }
        },
        "170103": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "170104",
            data: { guideTag: 1003, width: 110, height: 110 }
        },
        "170104": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "170105",
            data: { guideTag: 4010, width: 342, height: 230 }
        },
        "170105": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: null,
            data: { storyId: "990170105" }
        }
    },
    LieutenantGuideCfg: {
        locationKey: "LieutenantGuideStep",
        defaultStep: "160101",
        "160101": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "160102",
            data: { isClickHand: false, guideTag: 4003, width: 150, height: 72 }
        },
        "160102": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "160103",
            data: { storyId: "990160102" }
        },
        "160103": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "160104",
            data: { guideTag: 1002, width: 110, height: 110 }
        },
        "160104": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "160105",
            data: { guideTag: 3004, width: 342, height: 230 }
        },
        "160105": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: null,
            data: { guideTag: 4011, width: 110, height: 110 }
        }
    },
    EliteDuplicateGuideCfg: {
        locationKey: "LieutenantGuideStep",
        defaultStep: "190101",
        "190101": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "190102",
            data: { isClickHand: false, guideTag: 4003, anchorPoint: cc.p(0.5, 0.5), width: 150, height: 72 }
        },
        "190102": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "190103",
            data: { storyId: "990190102" }
        },
        "190103": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "190104",
            data: { guideTag: xs.Constant_GuideTag_EliteDuplicate, width: 181, height: 65 }
        },
        "190104": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: null,
            data: { storyId: "990190104" }
        }
    },
    RefineEquipGuideCfg: {
        locationKey: "LieutenantGuideStep",
        defaultStep: "200102",
        "200101": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "200102",
            data: { isClickHand: false, guideTag: 4003, width: 150, height: 72 }
        },
        "200102": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "200103",
            data: { storyId: "990200102" }
        },
        "200103": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "200104",
            data: { guideTag: 1002, width: 110, height: 110 }
        },
        "200104": {
            type: xs.Constant_GuideStepType_HollowOut,
            isDot: false,
            nextStep: "200105",
            data: { guideTag: 4001, width: 192, height: 230 }
        },
        "200105": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: null,
            data: { storyId: "990200105" }
        }
    },
    testStoryCfg: {
        locationKey: "NewGuideStep",
        defaultStep: "0",
        "0": {
            type: xs.Constant_GuideStepType_Story,
            isDot: true,
            nextStep: "10001",
            data: { storyId: "00000" }
        },
        "10001": {
            type: xs.Constant_GuideStepType_Story,
            isDot: false,
            nextStep: "10002",
            data: { storyId: "10001" }
        },
        "10002": {
            type: xs.Constant_GuideStepType_Story,
            isDot: true,
            nextStep: "10003",
            data: { storyId: "00000" }
        },
        "10003": {
            type: xs.Constant_GuideStepType_Story,
            isDot: true,
            nextStep: null,
            data: { storyId: "50100501" }
        }
    }
}));
