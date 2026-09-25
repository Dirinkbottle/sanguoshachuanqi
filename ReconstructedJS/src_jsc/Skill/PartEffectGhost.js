// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/PartEffectGhost.js:1
// source line 165, bytecode pc 1737
xs.Utils.extendScope(xs.Cfg.Skill.part, {
    P_ZhenLie_Effect_To: {
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
    P_Ghost_Sword_Effect_To: {
        extend: "template.part.TP_GhostAttack_Effect_To",
        items: {
            to_ghost: {
                timelines: {
                    _appear: { data: { aniId: "ani_appear_sword" } },
                    _status: { data: { aniId: "ani_status_sword" } },
                    _attack: { data: { aniId: "ani_attack_sword" } }
                }
            }
        }
    },
    P_Ghost_Chopper_Effect_To: {
        extend: "template.part.TP_GhostAttack_Effect_To",
        items: {
            to_ghost: {
                timelines: {
                    _appear: { data: { aniId: "ani_appear_chopper" } },
                    _status: { data: { aniId: "ani_status_chopper" } },
                    _attack: { data: { aniId: "ani_attack_chopper" } }
                }
            }
        }
    },
    P_Ghost_Claw_Effect_To: {
        extend: "template.part.TP_GhostAttack_Effect_To",
        items: {
            to_ghost: {
                timelines: {
                    _appear: { data: { aniId: "ani_appear_claw" } },
                    _status: { data: { aniId: "ani_status_claw" } },
                    _attack: { data: { aniId: "ani_attack_claw" } }
                }
            }
        }
    },
    P_Ghost_Knife_Effect_To: {
        extend: "template.part.TP_GhostAttack_Effect_To",
        items: {
            to_ghost: {
                timelines: {
                    _appear: { data: { aniId: "ani_appear_knife" } },
                    _status: { data: { aniId: "ani_status_knife" } },
                    _attack: { data: { aniId: "ani_attack_knife" } }
                }
            }
        }
    },
    P_Ghost_Spear_Effect_To: {
        extend: "template.part.TP_GhostAttack_Effect_To",
        items: {
            to_ghost: {
                timelines: {
                    _appear: { data: { aniId: "ani_appear_spear" } },
                    _status: { data: { aniId: "ani_status_spear" } },
                    _attack: { data: { aniId: "ani_attack_spear" } }
                }
            }
        }
    },
    P_Ghost_Pike_Effect_To: {
        extend: "template.part.TP_GhostAttack_Effect_To",
        items: {
            to_ghost: {
                timelines: {
                    _appear: { data: { aniId: "ani_appear_pike" } },
                    _status: { data: { aniId: "ani_status_pike" } },
                    _attack: { data: { aniId: "ani_attack_pike" } }
                }
            }
        }
    },
    P_Ghost_Hammer_Effect_To: {
        extend: "template.part.TP_GhostAttack_Effect_To",
        items: {
            to_ghost: { timelines: { _appear: null, _status: null, _attack: { data: { aniId: "ani_attack_hammer" } } } }
        }
    },
    P_Ghost_Axe_Effect_To: {
        extend: "template.part.TP_GhostAttack_Effect_To",
        items: {
            to_ghost: { timelines: { _appear: null, _status: null, _attack: { data: { aniId: "ani_attack_axe" } } } }
        }
    },
    P_QiXi_Effect_to0: {
        extend: "template.part.TP_GhostOther_Effect_To",
        items: {
            to_ghost: {
                timelines: {
                    _appear: null,
                    _status: null,
                    _attack: { data: { aniId: "ani_from1", armId: "Arm_Fight_QiXi" } }
                },
                nodef: {
                    timelines: {
                        _appear: null,
                        _status: null,
                        _attack: { data: { aniId: "ani_from0", armId: "Arm_Fight_QiXi" } }
                    }
                }
            }
        }
    }
});
