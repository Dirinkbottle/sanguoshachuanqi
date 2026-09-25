// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/PartOpen.js:1
// source line 466, bytecode pc 4697
xs.Utils.extendScope(xs.Cfg.Skill.part, {
    P_Result_Init: {
        pre: [
            { who: "env", type: "revertViews", args: [] },
            { who: "center", type: "setVisible", args: [ true ] },
            { who: "from_userInfo", type: "setVisible", args: [ false ] },
            { who: "to_userInfo", type: "setVisible", args: [ false ] },
            { who: "roundInfo", type: "setVisible", args: [ false ] },
            { who: "fightStar", type: "setVisible", args: [ false ] }
        ]
    },
    P_Result_Cmn: {
        items: {
            _center: { property: { type: "center", belong: "from_once" }, timelines: [ { type: "Show" } ] },
            _cards: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "createAction", name: "createCardsOpenActions", dp: 1, data: { isResultOpen: true } } ]
            },
            _backups: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "createAction", name: "createBackupsOpenActions", dp: 1, data: { isResultOpen: true } } ]
            },
            _bak_bg_from: {
                property: { type: "from_bak_bg", belong: "from_once" },
                timelines: [
                    { type: "Hide" },
                    { type: "DelayTime", dp: (8 / xs.fps) },
                    { type: "MoveBy", args: [ cc.p(-238, 0) ], dp: 0 },
                    { type: "Show" },
                    { type: "MoveBy", args: [ cc.p(298, 0) ], dp: (4 / xs.fps) },
                    { type: "MoveBy", args: [ cc.p(-68, 0) ], dp: (3 / xs.fps) },
                    { type: "MoveBy", args: [ cc.p(8, 0) ], dp: (1 / xs.fps) }
                ]
            },
            _vs: {
                property: { type: "vs", belong: "once" },
                timelines: [
                    { type: "Hide" },
                    { type: "DelayTime", dp: (13 / xs.fps) },
                    { type: "ScaleTo", args: [ 0.68, 1 ], dp: (1 / xs.fps) },
                    { type: "Show" },
                    { type: "ScaleTo", args: [ 1.19, 1 ], dp: (1 / xs.fps) },
                    { type: "ScaleTo", args: [ 1, 1 ], dp: (1 / xs.fps) }
                ]
            }
        },
        duration: 1
    },
    P_Result_Exp: {
        items: {
            _exp: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "createAction", name: "createResultExpLevelAction" } ]
            }
        }
    },
    P_Result_Level: {
        items: {
            _level: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "createAction", name: "createResultLevelAction" } ]
            }
        }
    },
    P_Open_Init: {
        pre: [
            { who: "center", type: "setVisible", args: [ true ] },
            { who: "from_userInfo", type: "setVisible", args: [ false ] },
            { who: "to_userInfo", type: "setVisible", args: [ false ] },
            { who: "roundInfo", type: "setVisible", args: [ false ] },
            { who: "fightStar", type: "setVisible", args: [ false ] }
        ]
    },
    P_Open_Cmn: {
        items: {
            _center: { property: { type: "center", belong: "from_once" }, timelines: [ { type: "Show" } ] },
            _bg: {
                extend: "template.item.TI_BgAndCards_Shake_To_Once",
                timelines: { _delay: { type: "DelayTime", dp: (19 / xs.fps) } }
            },
            _cards: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "createAction", name: "createCardsOpenActions", dp: 1, data: {} } ]
            },
            _backups: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "createAction", name: "createBackupsOpenActions", dp: 1, data: {} } ]
            },
            _bak_bg_from: {
                property: { type: "from_bak_bg", belong: "from_once" },
                timelines: [
                    { type: "Hide" },
                    { type: "DelayTime", dp: (8 / xs.fps) },
                    { type: "MoveBy", args: [ cc.p(-238, 0) ], dp: 0 },
                    { type: "Show" },
                    { type: "MoveBy", args: [ cc.p(298, 0) ], dp: (4 / xs.fps) },
                    { type: "MoveBy", args: [ cc.p(-68, 0) ], dp: (3 / xs.fps) },
                    { type: "MoveBy", args: [ cc.p(8, 0) ], dp: (1 / xs.fps) }
                ]
            },
            _bak_bg_to: {
                property: { type: "to_bak_bg", belong: "to_once" },
                timelines: [
                    { type: "Hide" },
                    { type: "DelayTime", dp: (8 / xs.fps) },
                    { type: "MoveBy", args: [ cc.p(238, 0) ], dp: 0 },
                    { type: "Show" },
                    { type: "MoveBy", args: [ cc.p(-298, 0) ], dp: (4 / xs.fps) },
                    { type: "MoveBy", args: [ cc.p(68, 0) ], dp: (3 / xs.fps) },
                    { type: "MoveBy", args: [ cc.p(-8, 0) ], dp: (1 / xs.fps) }
                ]
            },
            _vs: {
                property: { type: "vs", belong: "once" },
                timelines: [
                    { type: "Hide" },
                    { type: "DelayTime", dp: (13 / xs.fps) },
                    { type: "ScaleTo", args: [ 0.68, 1 ], dp: (1 / xs.fps) },
                    { type: "Show" },
                    { type: "ScaleTo", args: [ 1.19, 1 ], dp: (1 / xs.fps) },
                    { type: "ScaleTo", args: [ 1, 1 ], dp: (1 / xs.fps) }
                ]
            },
            _armature: {
                property: { parent: "near", type: "armature", belong: "tmp_once", armatureId: "Arm_Fight_Openning" },
                timelines: {
                    _delay: { type: "DelayTime", dp: (19 / xs.fps) },
                    _show: { type: "Show" },
                    _play: { type: "PlayAnimation", aniId: "kaichang02" }
                }
            }
        },
        duration: 1
    },
    P_Open_Exit: {
        pre: [
            { who: "center", type: "setVisible", args: [ true ] },
            { who: "from_userInfo", type: "setVisible", args: [ true ] },
            { who: "to_userInfo", type: "setVisible", args: [ true ] },
            { who: "roundInfo", type: "setVisible", args: [ true ] },
            { who: "fightStar", type: "setVisible", args: [ true ] }
        ]
    },
    P_Open_Pvp_0: {
        items: {
            _env: {
                property: { type: "env", belong: "once" },
                timelines: { _hide_fake: { type: "createAction", name: "createRemoveFakePvpOpeningAction" } }
            },
            _armature: {
                property: {
                    parent: "near",
                    type: "armature",
                    belong: "tmp_once",
                    armatureId: "Arm_Fight_Openning",
                    bones: [
                        { key: "general_side0", ope: "changeDisplay", skin: { type: "sprite", teamLeader: true, side: 0 } },
                        { key: "general_side1", ope: "changeDisplay", skin: { type: "sprite", teamLeader: true, side: 1 } },
                        {
                            key: "name_side0",
                            ope: "changeDisplay",
                            skin: { type: "label", id: "Label_Fight_Pvp_LeaderName", getter: { type: "userName", side: 0 } }
                        },
                        {
                            key: "name_side1",
                            ope: "changeDisplay",
                            skin: { type: "label", id: "Label_Fight_Pvp_LeaderName", getter: { type: "userName", side: 1 } }
                        },
                        {
                            key: "shuzi01",
                            ope: "changeDisplay",
                            skin: {
                                type: "label",
                                id: "Label_Fight_Pvp_TeamPoint",
                                alignH: xs.AlignH_Left,
                                alignV: xs.AlignV_Center,
                                getter: { type: "teamPoint", side: 0 }
                            }
                        },
                        {
                            key: "shuzi02",
                            ope: "changeDisplay",
                            skin: {
                                type: "label",
                                id: "Label_Fight_Pvp_TeamPoint",
                                alignH: xs.AlignH_Left,
                                alignV: xs.AlignV_Center,
                                getter: { type: "teamPoint", side: 1 }
                            }
                        },
                        { key: "you01", ope: "remove" },
                        { key: "you02", ope: "remove" }
                    ]
                },
                timelines: { _show: { type: "Show" }, _play: { type: "PlayAnimation", aniId: "kaichang01" } }
            }
        }
    },
    P_Open_Pvp_1: {
        extend: "part.P_Open_Pvp_0",
        items: {
            _armature: {
                property: { bones: { "6": { key: "zuo01", ope: "remove" }, "7": { key: "zuo02", ope: "remove" } } }
            }
        }
    }
});
