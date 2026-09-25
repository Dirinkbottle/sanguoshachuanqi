// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/TemplatePart.js:1
// source line 229, bytecode pc 2129
(xs.Cfg.Skill.template.part = {
    TP_goddess_skill: {
        items: {
            _name: {
                property: { type: "env", belong: "from" },
                timelines: {
                    _delay: { type: "DelayTime", dp: (12 / xs.fps) },
                    _play: { type: "createAction", name: "createSuperGoddessNameAction", dp: 1, data: { type: 1 } }
                }
            }
        },
        duration: 1
    },
    TP_super_skill: {
        items: {
            from_light: { extend: "template.item.TI_Skill_Light" },
            _general_voice: { extend: "template.item.TI_Skill_Name_Voice" },
            _name: {
                property: { type: "env", belong: "from" },
                timelines: {
                    _delay: { type: "DelayTime", dp: (12 / xs.fps) },
                    _play: { type: "createAction", name: "createSuperSkillNameAction", dp: 1, data: { type: 0 } }
                }
            }
        },
        duration: 1
    },
    TP_normal_skill: {
        items: {
            from_light: { extend: "template.item.TI_Skill_Light" },
            _name: {
                extend: "template.item.TI_Arm_From",
                property: {
                    armatureId: "Arm_Fight_SkillName",
                    ui: true,
                    bones: [
                        {
                            key: "skillName",
                            ope: "changeDisplay",
                            skin: { type: "label", id: "Label_Fight_SkillName", getter: { type: "skillName" } }
                        }
                    ]
                },
                timelines: { _play: { type: "createPlayAction", aniId: "ani_name_normal" } }
            }
        }
    },
    TP_normal_skill_Yellow: {
        extend: "template.part.TP_normal_skill",
        items: { from_light: { extend: "template.item.TI_Skill_Light_Yellow" } }
    },
    TP_ss_skill: {
        extend: "template.part.TP_super_skill",
        items: {
            _name: {
                timelines: { _play: { type: "createAction", name: "createSuperSkillNameAction", dp: 1, data: { type: 1 } } }
            }
        }
    },
    TP_ss_skill_bak: {
        items: {
            from_light: { extend: "template.item.TI_Skill_Light" },
            env_bg: {
                property: { parent: "near", type: "animate", belong: "tmp_once", animateId: "ss_bg" },
                timelines: [
                    { type: "DelayTime", dp: (10 / xs.fps) },
                    { type: "Show" },
                    { type: "Animate", dp: 3 },
                    { type: "Hide" }
                ]
            },
            icon: {
                property: {
                    parent: "env_bg",
                    type: "sprite",
                    info: { func: "createCardIconSprite" },
                    anchor: { x: 0.5, y: 0.5 },
                    pos: { base: "c" },
                    belong: "tmp_once"
                },
                timelines: [
                    { type: "DelayTime", dp: (10 / xs.fps) },
                    { type: "Show" },
                    { type: "DelayTime", dp: (100 / xs.fps) },
                    { type: "Hide" }
                ]
            }
        },
        duration: 1
    },
    TP_GhostAttack_Effect_To: {
        items: {
            to_ghost: {
                property: { parent: "to", type: "from_ghost", belong: "to_tmp", pos: cc.p(-173, 0), ui: true },
                timelines: {
                    _show: { type: "Show" },
                    _appear: {
                        type: "createAction",
                        name: "createPlayAniActions",
                        data: { aniId: "ani_appear_sword", control: { speed: 1 } }
                    },
                    _status: {
                        type: "createAction",
                        name: "createPlayAniActions",
                        data: { aniId: "ani_status_sword", control: { speed: 1 } }
                    },
                    _attack: {
                        type: "createAction",
                        name: "createPlayAniActions",
                        data: { aniId: "ani_attack_sword", control: { speed: 1 } }
                    },
                    _fadeOut: { target: { func: "getSkin" }, type: "FadeOut", dp: (6 / xs.fps) }
                }
            }
        }
    },
    TP_GhostOther_Effect_To: {
        items: {
            to_ghost: {
                property: {
                    parent: "to",
                    type: "from_ghostOther",
                    belong: "to_tmp",
                    pos: cc.p(-173, 0),
                    ui: true,
                    armatureId: "Arm_Fight_QiXi",
                    mirror: [ "nodef" ]
                },
                timelines: {
                    _show: { type: "Show" },
                    _appear: {
                        type: "createAction",
                        name: "createPlayOtherArmActions",
                        data: { aniId: "ani_appear_sword", control: { speed: 1 } }
                    },
                    _status: {
                        type: "createAction",
                        name: "createPlayOtherArmActions",
                        data: { aniId: "ani_status_sword", control: { speed: 1 } }
                    },
                    _attack: {
                        type: "createAction",
                        name: "createPlayOtherArmActions",
                        data: { aniId: "ani_attack_sword", control: { speed: 1 } }
                    },
                    _fadeOut: { target: { func: "getSkin" }, type: "FadeOut", dp: (6 / xs.fps) }
                }
            }
        }
    }
});
