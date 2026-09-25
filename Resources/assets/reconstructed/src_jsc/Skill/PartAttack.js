// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/PartAttack.js:1
// source line 21, bytecode pc 183
(xs.Cfg.Skill.part.P_Attack_Sword_0 = {
    items: {
        _weapon_appear: {
            property: { type: "from", belong: "from", ignore: [ "backup" ] },
            timelines: {
                _from0: {
                    type: "createAction",
                    name: "createPlayAniActions",
                    data: { aniId: "ani_appear_sword", control: { speed: 1 } }
                }
            }
        }
    }
});
// source line 28, bytecode pc 290
(xs.Cfg.Skill.part.P_Attack_Chopper_0 = {
    extend: "part.P_Attack_Sword_0",
    items: { _weapon_appear: { timelines: { _from0: { data: { aniId: "ani_appear_chopper" } } } } }
});
// source line 42, bytecode pc 543
(xs.Cfg.Skill.part.P_Attack_Hammer_0 = {
    items: {
        _weapon_appear: {
            property: { type: "from", belong: "from", ignore: [ "backup" ] },
            timelines: {
                _from0: {
                    type: "createAction",
                    name: "createPlayAniActions",
                    data: { aniId: "ani_appear_hammer", control: { speed: 1 } }
                },
                _from1: {
                    type: "createAction",
                    name: "createPlayAniActions",
                    data: { aniId: "ani_status_hammer", control: { speed: 1 } }
                }
            }
        }
    }
});
// source line 51, bytecode pc 682
(xs.Cfg.Skill.part.P_Attack_Axe_0 = {
    extend: "part.P_Attack_Hammer_0",
    items: {
        _weapon_appear: {
            timelines: { _from0: { data: { aniId: "ani_appear_axe" } }, _from1: { data: { aniId: "ani_status_axe" } } }
        }
    }
});
// source line 59, bytecode pc 821
(xs.Cfg.Skill.part.P_Attack_Spear_0 = {
    extend: "part.P_Attack_Hammer_0",
    items: {
        _weapon_appear: {
            timelines: {
                _from0: { data: { aniId: "ani_appear_spear" } },
                _from1: { data: { aniId: "ani_status_spear" } }
            }
        }
    }
});
// source line 67, bytecode pc 960
(xs.Cfg.Skill.part.P_Attack_Pike_0 = {
    extend: "part.P_Attack_Hammer_0",
    items: {
        _weapon_appear: {
            timelines: { _from0: { data: { aniId: "ani_appear_pike" } }, _from1: { data: { aniId: "ani_status_pike" } } }
        }
    }
});
// source line 74, bytecode pc 1099
(xs.Cfg.Skill.part.P_Attack_Knife_0 = {
    extend: "part.P_Attack_Hammer_0",
    items: {
        _weapon_appear: {
            timelines: {
                _from0: { data: { aniId: "ani_appear_knife" } },
                _from1: { data: { aniId: "ani_status_knife" } }
            }
        }
    }
});
// source line 82, bytecode pc 1238
(xs.Cfg.Skill.part.P_Attack_Claw_0 = {
    extend: "part.P_Attack_Hammer_0",
    items: {
        _weapon_appear: {
            timelines: { _from0: { data: { aniId: "ani_appear_claw" } }, _from1: { data: { aniId: "ani_status_claw" } } }
        }
    }
});
// source line 90, bytecode pc 1377
(xs.Cfg.Skill.part.P_Attack_Bow_0 = {
    extend: "part.P_Attack_Hammer_0",
    items: {
        _weapon_appear: {
            timelines: { _from0: { data: { aniId: "ani_appear_bow" } }, _from1: { data: { aniId: "ani_status_bow" } } }
        }
    }
});
// source line 98, bytecode pc 1516
(xs.Cfg.Skill.part.P_Attack_Fan_0 = {
    extend: "part.P_Attack_Hammer_0",
    items: {
        _weapon_appear: {
            timelines: { _from0: { data: { aniId: "ani_appear_fan" } }, _from1: { data: { aniId: "ani_status_fan" } } }
        }
    }
});
// source line 118, bytecode pc 1721
(xs.Cfg.Skill.part.P_Attack_Sword_1 = {
    items: {
        move: { extend: "template.item.TI_Attack_move" },
        weapon: {
            property: { type: "from", belong: "from", ignore: [ "backup" ] },
            timelines: {
                _status: {
                    type: "createAction",
                    name: "createPlayAniActions",
                    data: { aniId: "ani_status_sword", control: { speed: 1 } }
                }
            }
        }
    }
});
// source line 125, bytecode pc 1828
(xs.Cfg.Skill.part.P_Attack_Chopper_1 = {
    extend: "part.P_Attack_Sword_1",
    items: { weapon: { timelines: { _status: { data: { aniId: "ani_status_chopper" } } } } }
});
// source line 128, bytecode pc 1879
(xs.Cfg.Skill.part.P_Attack_Hammer_1 = xs.Cfg.Skill.part.P_MoveFast);
// source line 129, bytecode pc 1930
(xs.Cfg.Skill.part.P_Attack_Axe_1 = xs.Cfg.Skill.part.P_MoveFast);
// source line 130, bytecode pc 1981
(xs.Cfg.Skill.part.P_Attack_Knife_1 = xs.Cfg.Skill.part.P_MoveFast);
// source line 131, bytecode pc 2032
(xs.Cfg.Skill.part.P_Attack_Spear_1 = xs.Cfg.Skill.part.P_MoveFast);
// source line 132, bytecode pc 2083
(xs.Cfg.Skill.part.P_Attack_Pike_1 = xs.Cfg.Skill.part.P_MoveFast);
// source line 133, bytecode pc 2134
(xs.Cfg.Skill.part.P_Attack_Claw_1 = xs.Cfg.Skill.part.P_MoveFast);
// source line 202, bytecode pc 2185
(xs.Cfg.Skill.part.P_Attack_Sword_3 = xs.Cfg.Skill.part.P_Back);
// source line 203, bytecode pc 2236
(xs.Cfg.Skill.part.P_Attack_Hammer_3 = xs.Cfg.Skill.part.P_Back);
// source line 204, bytecode pc 2287
(xs.Cfg.Skill.part.P_Attack_Knife_3 = xs.Cfg.Skill.part.P_Back);
// source line 205, bytecode pc 2338
(xs.Cfg.Skill.part.P_Attack_Spear_3 = xs.Cfg.Skill.part.P_Back);
// source line 217, bytecode pc 2543
(xs.Cfg.Skill.part.P_Attack_Claw_3 = {
    items: {
        back: { extend: "template.item.TI_Attack_back" },
        weapon: {
            property: { type: "from", belong: "from", ignore: [ "backup" ] },
            timelines: {
                _status: {
                    type: "createAction",
                    name: "createPlayAniActions",
                    data: { aniId: "ani_back_claw", control: { speed: 1 } }
                }
            }
        }
    }
});
// source line 222, bytecode pc 2594
(xs.Cfg.Skill.part.P_Attack_Pike_3 = xs.Cfg.Skill.part.P_Back);
// source line 223, bytecode pc 2645
(xs.Cfg.Skill.part.P_Attack_Chopper_3 = xs.Cfg.Skill.part.P_Back);
// source line 224, bytecode pc 2696
(xs.Cfg.Skill.part.P_Attack_Axe_3 = xs.Cfg.Skill.part.P_Back);
// source line 234, bytecode pc 2803
(xs.Cfg.Skill.part.P_Sword_Effect_From = {
    extend: "part.P_NormalAttack_Effect_From",
    items: { weapon: { timelines: { _from: { data: { aniId: "ani_attack_sword" } } } } }
});
// source line 245, bytecode pc 2910
(xs.Cfg.Skill.part.P_Chopper_Effect_From = {
    extend: "part.P_NormalAttack_Effect_From",
    items: { weapon: { timelines: { _from: { data: { aniId: "ani_attack_chopper" } } } } }
});
// source line 258, bytecode pc 3017
(xs.Cfg.Skill.part.P_Axe_Effect_From = {
    extend: "part.P_NormalAttack_Effect_From",
    items: { weapon: { timelines: { _from: { data: { aniId: "ani_attack_axe" } } } } }
});
// source line 268, bytecode pc 3124
(xs.Cfg.Skill.part.P_Hammer_Effect_From = {
    extend: "part.P_NormalAttack_Effect_From",
    items: { weapon: { timelines: { _from: { data: { aniId: "ani_attack_hammer" } } } } }
});
// source line 279, bytecode pc 3231
(xs.Cfg.Skill.part.P_Knife_Effect_From = {
    extend: "part.P_NormalAttack_Effect_From",
    items: { weapon: { timelines: { _from: { data: { aniId: "ani_attack_knife" } } } } }
});
// source line 291, bytecode pc 3338
(xs.Cfg.Skill.part.P_Pike_Effect_From = {
    extend: "part.P_NormalAttack_Effect_From",
    items: { weapon: { timelines: { _from: { data: { aniId: "ani_attack_pike" } } } } }
});
// source line 301, bytecode pc 3445
(xs.Cfg.Skill.part.P_Spear_Effect_From = {
    extend: "part.P_NormalAttack_Effect_From",
    items: { weapon: { timelines: { _from: { data: { aniId: "ani_attack_spear" } } } } }
});
// source line 311, bytecode pc 3552
(xs.Cfg.Skill.part.P_Claw_Effect_From = {
    extend: "part.P_NormalAttack_Effect_From",
    items: { weapon: { timelines: { _from: { data: { aniId: "ani_attack_claw" } } } } }
});
// source line 323, bytecode pc 3659
(xs.Cfg.Skill.part.P_Bow_Effect_From = {
    extend: "part.P_NormalAttack_Effect_From",
    items: { weapon: { timelines: { _from: { data: { aniId: "ani_attack_bow" } } } } }
});
// source line 334, bytecode pc 3766
(xs.Cfg.Skill.part.P_Fan_Effect_From = {
    extend: "part.P_NormalAttack_Effect_From",
    items: { weapon: { timelines: { _from: { data: { aniId: "ani_attack_fan" } } } } }
});
// source line 360, bytecode pc 4030
(xs.Cfg.Skill.part.P_Bow_Effect_To = {
    items: {
        _from: {
            property: { type: "from", belong: "from", ignore: [ "backup" ] },
            timelines: {
                _delay: null,
                _from: {
                    type: "createAction",
                    name: "createPlayAniActions",
                    data: { aniId: "ani_attack_bow", control: { speed: 1 } }
                }
            }
        },
        _to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Weapon" },
            timelines: { _play: { aniId: "ani_effect_bow_to" } }
        }
    }
});
// source line 375, bytecode pc 4180
(xs.Cfg.Skill.part.P_Fan_Effect_To = {
    extend: "part.P_Bow_Effect_To",
    items: {
        _from: { timelines: { _from: { data: { aniId: "ani_attack_fan" } } } },
        _to: { timelines: { _play: { aniId: "ani_effect_fan_to" } } }
    }
});
