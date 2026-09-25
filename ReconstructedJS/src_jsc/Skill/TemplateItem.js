// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/TemplateItem.js:1
// source line 502, bytecode pc 5338
(xs.Cfg.Skill.template.item = {
    TI_from2toTmp: {
        property: {
            parent: "near",
            pos: { base: "from", offset: { x: 0, y: 0 } },
            ignore: [ "backup" ],
            belong: "tmp"
        },
        timelines: {
            delay: { type: "DelayTime", dp: 0 },
            show: { type: "Show" },
            move: { type: "Move", dp: 0.5, dst_pos: { base: "to", offset: { x: 0, y: 0 } } },
            hide: { type: "Hide" }
        }
    },
    TI_to2fromTmp: {
        extend: "template.item.TI_from2toTmp",
        property: { pos: { base: "to" } },
        timelines: { move: { dst_pos: { base: "from" } } }
    },
    TI_from2toTmp_Bezier: {
        property: {
            parent: "near",
            pos: { base: "from", offset: { x: 0, y: 0 } },
            ignore: [ "backup" ],
            belong: "tmp"
        },
        timelines: {
            delay: { type: "DelayTime", dp: 1 },
            show: { type: "Show" },
            move: { type: "Bezier", dp: 0.5, dst_pos: { base: "to", offset: { x: 0, y: 0 } } },
            hide: { type: "Hide" }
        }
    },
    TI_to2fromTmp_Bezier: {
        property: {
            parent: "near",
            pos: { base: "to", offset: { x: 0, y: 0 } },
            ignore: [ "backup" ],
            belong: "tmp"
        },
        timelines: {
            delay: { type: "DelayTime", dp: 0.4 },
            show: { type: "Show" },
            move: {
                type: "Bezier",
                dp: 2.5,
                dst_pos: {
                    base: "from",
                    offset: { x: 0, y: 0 },
                    controlPoint_0: cc.p(0, -400),
                    controlPoint_1: cc.p(0, -100)
                }
            },
            hide: { type: "Hide" }
        }
    },
    TI_Skill_Light: {
        property: { parent: "from", type: "armature", belong: "from_tmp", armatureId: "Arm_SkillLight" },
        timelines: [ { type: "Show" }, { type: "Play", index: 0 }, { type: "DelayTime", dp: (12 / xs.fps) } ]
    },
    TI_Skill_Light_Yellow: {
        property: {
            parent: "from",
            type: "armature",
            belong: "from_tmp",
            armatureId: "Arm_SkillLight",
            c3b: cc.c3b(247, 255, 5)
        },
        timelines: [ { type: "Show" }, { type: "Play", index: 0 }, { type: "DelayTime", dp: (12 / xs.fps) } ]
    },
    TI_Skill_Name_Voice: {
        property: { type: "env", belong: "from_once" },
        timelines: [ { type: "createAction", name: "createGeneralAudioEffectAction" } ]
    },
    TI_LeaveOrHide_To: {
        property: { parent: "to", type: "to", belong: "to" },
        timelines: [ { type: "createAction", name: "createLeaveAction", dp: 0 } ]
    },
    TI_DeathCount_To: {
        property: { type: "env", belong: "to", trigger: [ "death" ], ignore: [ "nohurt" ] },
        timelines: { _update: { type: "createAction", dp: 0, name: "createUpdateDeathNumAction", data: { side: 1 } } }
    },
    TI_DeathCount_From: {
        property: { type: "env", belong: "from", trigger: [ "death" ] },
        timelines: { _update: { type: "createAction", dp: 0, name: "createUpdateDeathNumAction", data: { side: 0 } } }
    },
    TI_Bg_Shake_To: {
        property: { type: "bg", belong: "to" },
        timelines: {
            _delay: null,
            _move0: { type: "MoveBy", args: [ cc.p(0, -8) ], dp: (1 / xs.fps) },
            _move1: { type: "MoveBy", args: [ cc.p(0, 12) ], dp: (1 / xs.fps) },
            _move2: { type: "MoveBy", args: [ cc.p(0, -4) ], dp: (1 / xs.fps) }
        }
    },
    TI_BgAndCards_Shake_To_Once: {
        property: { type: "env", belong: "to_once" },
        timelines: { _delay: null, _moveAll: { type: "createAction", name: "createShakeAction", data: {} } }
    },
    TI_Card_Do_From: {
        property: { type: "from", belong: "from", ignore: [ "backup" ] },
        timelines: {
            _delay: null,
            _card: {
                type: "createAction",
                name: "createPlayAniActions",
                data: { aniId: "ani_idle", control: { speed: 1 } }
            }
        }
    },
    TI_Card_Do_To: {
        property: { type: "to", belong: "to", ignore: [ "backup" ] },
        timelines: {
            _delay: null,
            _card: {
                type: "createAction",
                name: "createPlayAniActions",
                data: { aniId: "ani_idle", control: { speed: 1 } }
            }
        }
    },
    TI_Card_Idle_From: { extend: "template.item.TI_Card_Do_From", timelines: { _card: { data: { aniId: "ani_idle" } } } },
    TI_Card_Idle_To: { extend: "template.item.TI_Card_Do_To", timelines: { _card: { data: { aniId: "ani_idle" } } } },
    TI_Card_Hurt_Over_Normal_To: {
        property: {
            type: "to",
            belong: "to",
            ignore: [ "backup" ],
            mirror: [ "finish", "ghost", "death", "miss", "leiji", "spleiji" ]
        },
        timelines: {
            _hurt_over: {
                type: "createAction",
                name: "createPlayAniActions",
                data: { aniId: "ani_hit_normal", control: { speed: 1 } }
            },
            _back: null,
            _idle: {
                type: "createAction",
                name: "createPlayAniActions",
                data: { aniId: "ani_idle", control: { speed: 1 } }
            }
        },
        ghost: {
            timelines: {
                _hurt_over: {
                    type: "createAction",
                    name: "createPlayAniActions",
                    data: { aniId: "ani_over_skill_ghost", control: { speed: 1 } }
                },
                _idle: { data: { aniId: "ani_idle_ghost", control: { loop: true } } }
            }
        },
        death: {
            timelines: {
                _hurt_over: {
                    type: "createAction",
                    name: "createPlayAniActions",
                    data: { aniId: "ani_over_skill_death", control: { speed: 1 } }
                },
                _idle: null
            }
        },
        finish: {
            timelines: {
                _hurt_over: {
                    type: "createAction",
                    name: "createPlayAniActions",
                    data: { aniId: "ani_over_skill_death", control: { speed: 1 } }
                },
                _idle: null
            }
        },
        miss: { timelines: { _hurt_over: { data: { aniId: "ani_hit_miss" } } } },
        leiji: { timelines: { _hurt_over: { data: { aniId: "ani_hit_miss" } } } },
        spleiji: { timelines: { _hurt_over: { data: { aniId: "ani_hit_miss" } } } }
    },
    TI_Card_Hurt_Over_To: {
        extend: "template.item.TI_Card_Hurt_Over_Normal_To",
        timelines: {
            _hurt_over: { data: { aniId: "ani_hit_fly" } },
            _back: {
                type: "createAction",
                name: "createPlayAniActions",
                data: { aniId: "ani_over_skill_back", control: { speed: 1 } }
            }
        },
        ghost: { timelines: { _hurt_over: { data: { aniId: "ani_over_skill_ghost" } }, _back: null } },
        death: { timelines: { _hurt_over: { data: { aniId: "ani_over_skill_death" } }, _back: null } }
    },
    TI_Arm_To: {
        property: {
            parent: "to",
            type: "armature",
            armatureId: "override TI_Arm_To armatureId",
            belong: "to_tmp",
            ignore: [ "backup" ]
        },
        timelines: {
            _delay: { type: "DelayTime", dp: 0 },
            _show: { type: "Show" },
            _play: { type: "createPlayAction", aniId: "override TI_Arm_To._play" },
            _hide: { type: "Hide" }
        }
    },
    TI_Arm_To_FS: {
        property: {
            parent: "to",
            type: "armature",
            armatureId: "override TI_Arm_To armatureId",
            belong: "to_tmp",
            ignore: [ "backup" ],
            trigger: [ "fs" ]
        },
        timelines: {
            _delay: { type: "DelayTime", dp: 0 },
            _show: { type: "Show" },
            _play: { type: "createPlayAction", aniId: "override TI_Arm_To._play" },
            _hide: { type: "Hide" }
        }
    },
    TI_Arm_To_NFS: {
        property: {
            parent: "to",
            type: "armature",
            armatureId: "override TI_Arm_To armatureId",
            belong: "to_tmp",
            ignore: [ "backup", "fs" ]
        },
        timelines: {
            _delay: { type: "DelayTime", dp: 0 },
            _show: { type: "Show" },
            _play: { type: "createPlayAction", aniId: "override TI_Arm_To._play" },
            _hide: { type: "Hide" }
        }
    },
    TI_Arm_To_Backup: {
        property: { parent: "to", type: "armature", armatureId: "override TI_Arm_To armatureId", belong: "to_tmp" },
        timelines: {
            _delay: { type: "DelayTime", dp: 0 },
            _show: { type: "Show" },
            _play: { type: "createPlayAction", aniId: "override TI_Arm_To._play" },
            _hide: { type: "Hide" }
        }
    },
    TI_Arm_From: { extend: "template.item.TI_Arm_To", property: { parent: "from", belong: "from_tmp" } },
    TI_Arm_Far_From: {
        extend: "template.item.TI_Arm_From",
        property: { parent: "far", pos: { base: "from", offset: cc.p(0, 0) }, belong: "from_tmp" }
    },
    TI_Arm_Near_To: {
        extend: "template.item.TI_Arm_To",
        property: { parent: "near", pos: { base: "to", offset: cc.p(0, 0) }, belong: "to_tmp" }
    },
    TI_Arm_Near_From: {
        extend: "template.item.TI_Arm_From",
        property: { parent: "near", pos: { base: "from", offset: cc.p(0, 0) }, belong: "from_tmp" }
    },
    TI_Arm_Near_Once_To: { extend: "template.item.TI_Arm_Near_To", property: { belong: "to_tmp_once" } },
    TI_Arm_Near_Once_From: {
        extend: "template.item.TI_Arm_From",
        property: { parent: "near", pos: { base: "from", offset: cc.p(0, 0) }, belong: "from_tmp_once" }
    },
    TI_Arm_Far_Once_To: {
        extend: "template.item.TI_Arm_To",
        property: { parent: "far", pos: { base: "to", offset: cc.p(0, 0) }, belong: "to_tmp_once" }
    },
    TI_Arm_Far_Once_From: { extend: "template.item.TI_Arm_From", property: { parent: "far", belong: "from_tmp_once" } },
    TI_Arm_Mid_Once_To: {
        extend: "template.item.TI_Arm_To",
        property: { parent: "mid", pos: { base: "to", offset: cc.p(0, 0) }, belong: "to_tmp_once" }
    },
    TI_Arm_Mid_Once_From: { extend: "template.item.TI_Arm_Near_Once_From", property: { parent: "mid" } },
    TI_Arm_Mid_Once_From_Near: { extend: "template.item.TI_Arm_Far_Once_From", property: { parent: "near" } },
    TI_Arm_UI_To: { extend: "template.item.TI_Arm_To", property: { ui: true } },
    TI_Arm_UI_From: { extend: "template.item.TI_Arm_From", property: { ui: true } },
    TI_Arm_Near_UI_To: { extend: "template.item.TI_Arm_Near_To", property: { ui: true } },
    TI_Arm_Near_UI_From: { extend: "template.item.TI_Arm_Near_From", property: { ui: true } }
});
