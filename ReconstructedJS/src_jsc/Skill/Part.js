// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/Part.js:1
// source line 677, bytecode pc 5284
(xs.Cfg.Skill.part = {
    P_Round: { pre: [ { who: "env", type: "updateRoundInfo", args: [ "$para" ] } ] },
    P_Round_Finish: { pre: [ { who: "env", type: "showRoundFinish", args: [ "$para" ] } ] },
    P_Star: { pre: [ { who: "env", type: "updateStarInfo", args: [ "$para" ] } ] },
    P_Absorb_Tmp_To2From: {
        items: {
            item: {
                extend: "template.item.TI_to2fromTmp",
                property: { type: "particle", particleId: "ParticleFileTest", scale: 1 },
                timelines: { move: { dp: 0.5 } }
            }
        }
    },
    P_Absorb_Tmp_From2To: {
        items: {
            item: {
                extend: "template.item.TI_from2toTmp",
                property: { type: "particle", particleId: "ParticleFileTest", scale: 1 },
                timelines: { move: { dp: 0.5 } }
            }
        }
    },
    P_Delay_Frame_1: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (1 / xs.fps) } ]
            }
        }
    },
    P_Delay_Frame_2: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (2 / xs.fps) } ]
            }
        }
    },
    P_Delay_Frame_3: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (3 / xs.fps) } ]
            }
        }
    },
    P_Delay_Frame_4: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (4 / xs.fps) } ]
            }
        }
    },
    P_Delay_Frame_5: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (5 / xs.fps) } ]
            }
        }
    },
    P_Delay_Frame_6: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (6 / xs.fps) } ]
            }
        }
    },
    P_Delay_Frame_7: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (7 / xs.fps) } ]
            }
        }
    },
    P_Delay_Frame_10: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (10 / xs.fps) } ]
            }
        }
    },
    P_Delay_Frame_11: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (11 / xs.fps) } ]
            }
        }
    },
    P_Delay_Frame_20: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (20 / xs.fps) } ]
            }
        }
    },
    P_Delay_Frame_26: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (26 / xs.fps) } ]
            }
        }
    },
    P_Delay_Frame_30: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (30 / xs.fps) } ]
            }
        }
    },
    P_Delay_Frame_37: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (37 / xs.fps) } ]
            }
        }
    },
    P_Delay_Frame_46: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (46 / xs.fps) } ]
            }
        }
    },
    P_Delay_Frame_50: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (50 / xs.fps) } ]
            }
        }
    },
    P_Delay_Frame_55: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (55 / xs.fps) } ]
            }
        }
    },
    P_Delay_Frame_60: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (60 / xs.fps) } ]
            }
        }
    },
    P_Delay_Frame_68: {
        items: {
            _Attack_0_sword: {
                property: { type: "env", belong: "once" },
                timelines: [ { type: "DelayTime", dp: (68 / xs.fps) } ]
            }
        }
    },
    P_Delay_Sec_1: {
        items: {
            _Attack_0_sword: { property: { type: "env", belong: "once" }, timelines: [ { type: "DelayTime", dp: 1 } ] }
        }
    },
    P_Delay_Sec_3: {
        items: {
            _Attack_0_sword: { property: { type: "env", belong: "once" }, timelines: [ { type: "DelayTime", dp: 3 } ] }
        }
    },
    P_Delay_Sec_10: {
        items: {
            _Attack_0_sword: { property: { type: "env", belong: "once" }, timelines: [ { type: "DelayTime", dp: 10 } ] }
        }
    },
    P_Idle_From: {
        items: {
            _Attack_0_sword: {
                property: { type: "from", belong: "from", ignore: [ "backup" ] },
                timelines: {
                    _from: {
                        type: "createAction",
                        name: "createPlayAniActions",
                        data: { aniId: "ani_idle", control: { speed: 1 } }
                    }
                }
            }
        }
    },
    P_Ghost_Live_From: { extend: "part.P_Idle_From", items: { _hp: { extend: "template.item.TI_Hp_Show_From" } } },
    P_NormalAttack_Effect_From: {
        items: {
            weapon: {
                property: { type: "from", belong: "from", ignore: [ "backup" ] },
                timelines: {
                    _delay: null,
                    _from: {
                        type: "createAction",
                        name: "createPlayAniActions",
                        data: { aniId: "ani_attack_sword", control: { speed: 1 } }
                    },
                    _from_idle: {
                        type: "createAction",
                        name: "createPlayAniActions",
                        data: { aniId: "ani_idle", control: { speed: 1 } }
                    }
                }
            }
        }
    },
    P_Move: { items: { _move: { extend: "template.item.TI_Attack_move" } } },
    P_MoveFast: { items: { _move: { extend: "template.item.TI_Attack_moveFast" } } },
    P_Back: { items: { _back: { extend: "template.item.TI_Attack_back" } } },
    P_BackFast: {
        items: { _back: { extend: "template.item.TI_Attack_back", timelines: { back: { dp: (0 / xs.fps) } } } }
    },
    P_BackFast_Claw: {
        items: {
            _back: {
                property: { type: "from", belong: "from" },
                timelines: {
                    hide: { type: "Hide" },
                    back: { type: "MoveTo", dp: (4 / xs.fps), dst_pos: { base: "from_ori" } },
                    Show: { type: "Show" }
                }
            }
        }
    },
    P_BlackHalfBegin: {
        items: {
            _hide_others: {
                property: { type: "env", belong: "once" },
                timelines: { _hide: { type: "createAction", name: "createBlackOthersAction", data: { flag: true } } }
            },
            _black: {
                property: { type: "black_bg", belong: "from", ignore: [ "backup" ] },
                timelines: { _show: { type: "Show" } }
            }
        }
    },
    P_Color_Revert_All: {
        items: {
            _hide_others: {
                property: { type: "env", belong: "once" },
                timelines: { _hide: { type: "createAction", name: "createBlackOthersAction", data: { revert: true } } }
            }
        }
    },
    P_BlackHalfEnd: {
        items: {
            _hide_others: {
                property: { type: "env", belong: "from" },
                timelines: { _hide: { type: "createAction", name: "createBlackOthersAction", data: { flag: false } } }
            },
            _black: {
                property: { type: "black_bg", belong: "from", ignore: [ "backup" ] },
                timelines: { _hide: { type: "Hide" } }
            }
        }
    },
    P_BlackBegin: {
        items: {
            _hide_others: {
                property: { type: "env", belong: "from" },
                timelines: { _hide: { type: "createAction", name: "createHideOthersAction", data: {} } }
            },
            _black: {
                property: { type: "black_bg", belong: "from", ignore: [ "backup" ] },
                timelines: { _show: { type: "Show" } }
            }
        }
    },
    P_BlackEnd: {
        items: {
            _hide_others: {
                property: { type: "env", belong: "from" },
                timelines: { _hide: { type: "createAction", name: "createShowAllAction", data: {} } }
            },
            _black: {
                property: { type: "black_bg", belong: "from", ignore: [ "backup" ] },
                timelines: { _hide: { type: "Hide" } }
            }
        }
    },
    P_Hide_From_Begin: {
        items: {
            _hide_self: {
                property: { type: "env", belong: "from" },
                timelines: { _hide: { type: "createAction", name: "createHideFromAction", data: {} } }
            }
        }
    },
    P_Hide_From_End: {
        items: {
            _hide_self: {
                property: { type: "env", belong: "from" },
                timelines: { _hide: { type: "createAction", name: "createShowFromAction", data: {} } }
            }
        }
    },
    P_SS_BG_Begin: {
        items: {
            _hide_others: {
                property: { type: "env", belong: "from" },
                timelines: { _hide: { type: "createAction", name: "createHideOthersAction", data: {} } }
            },
            _bg: {
                property: { type: "env", belong: "from" },
                timelines: { _hide: { type: "createAction", name: "createBgAction", data: { type: "ss", flag: true } } }
            }
        }
    },
    P_SS_BG_End: {
        items: {
            _hide_others: {
                property: { type: "env", belong: "from" },
                timelines: { _hide: { type: "createAction", name: "createShowAllAction", data: {} } }
            },
            _bg: {
                property: { type: "env", belong: "from" },
                timelines: { _hide: { type: "createAction", name: "createBgAction", data: { type: "ss", flag: false } } }
            }
        }
    }
});
// source line 687, bytecode pc 5326
(xs.Cfg.Skill.part.P_Normal_Skill = { extend: "template.part.TP_normal_skill" });
// source line 692, bytecode pc 5368
(xs.Cfg.Skill.part.P_Normal_Skill_Yellow = { extend: "template.part.TP_normal_skill_Yellow" });
// source line 697, bytecode pc 5410
(xs.Cfg.Skill.part.P_Super_Skill = { extend: "template.part.TP_super_skill" });
// source line 702, bytecode pc 5452
(xs.Cfg.Skill.part.ss_skill = { extend: "template.part.TP_normal_skill" });
// source line 706, bytecode pc 5494
(xs.Cfg.Skill.part.P_SS_Skill = { extend: "template.part.TP_ss_skill" });
// source line 710, bytecode pc 5536
(xs.Cfg.Skill.part.P_goddess_Skill = { extend: "template.part.TP_goddess_skill" });
// source line 735, bytecode pc 5803
(xs.Cfg.Skill.part.P_SkillAfter = {
    items: {
        _scale_from_revert: {
            property: { type: "from", belong: "from" },
            timelines: { _scale: { type: "ScaleTo", dp: (1 / xs.fps), dst: { base: "from_ori" } } }
        },
        _move_up_from_revert: {
            property: { type: "from", belong: "from" },
            timelines: { _move: { type: "MoveTo", dp: (1 / xs.fps), dst_pos: { base: "from_ori" } } }
        }
    }
});
// source line 762, bytecode pc 6033
(xs.Cfg.Skill.part.P_LuoShen_Effect_Loop = {
    extend: "part.P_Int_Add_From",
    property: { loopCtrl: "n" },
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LuoShen" },
            timelines: { _play: { aniId: "ani_from_loop" } }
        },
        _buff: {
            timelines: { _delay: { type: "DelayTime", dp: (8 / xs.fps) }, _play: { aniId: "ani_buff_atk_add" } }
        }
    }
});
// source line 811, bytecode pc 6475
(xs.Cfg.Skill.part.P_LuoShen_V3_Effect_Loop = {
    extend: "part.P_Int_Add_From",
    property: { loopCtrl: "n" },
    items: {
        _effect_from: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LuoShen" },
            timelines: { _play: { aniId: "ani_from_loop" } }
        },
        _buff: {
            timelines: { _delay: { type: "DelayTime", dp: (8 / xs.fps) }, _play: { aniId: "ani_buff_atk_add" } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_LuoShen_JinJie" },
            timelines: { _play: { aniId: "ani_from_buff" } }
        },
        _buff_to: {
            extend: "template.item.TI_Arm_Near_UI_To",
            property: { armatureId: "Arm_Fight_SkillName", ignore: [ "death" ], ui: true },
            timelines: { _delay: { type: "DelayTime", dp: (8 / xs.fps) }, _play: { aniId: "ani_buff_atk_add" } }
        }
    }
});
// source line 860, bytecode pc 6917
(xs.Cfg.Skill.part.P_LuoShen_V5_Effect_Loop = {
    extend: "part.P_Int_Add_From",
    property: { loopCtrl: "n-1" },
    items: {
        _effect_from: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LuoShen" },
            timelines: { _play: { aniId: "ani_from_loop" } }
        },
        _buff: {
            timelines: { _delay: { type: "DelayTime", dp: (8 / xs.fps) }, _play: { aniId: "ani_buff_atk_add" } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_LuoShen_JinJie" },
            timelines: { _play: { aniId: "ani_from_buff" } }
        },
        _buff_to: {
            extend: "template.item.TI_Arm_Near_UI_To",
            property: { armatureId: "Arm_Fight_SkillName", ignore: [ "death" ], ui: true },
            timelines: { _delay: { type: "DelayTime", dp: (8 / xs.fps) }, _play: { aniId: "ani_buff_atk_add" } }
        }
    }
});
// source line 907, bytecode pc 7338
(xs.Cfg.Skill.part.P_LuoShen_V5_Loop_End = {
    extend: "part.P_Int_Add_From",
    items: {
        _effect_from: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LuoShen" },
            timelines: { _play: { aniId: "ani_from_loop" } }
        },
        _buff: {
            timelines: { _delay: { type: "DelayTime", dp: (8 / xs.fps) }, _play: { aniId: "ani_buff_atkdef_add" } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_LuoShen_JinJie" },
            timelines: { _play: { aniId: "ani_from_buff" } }
        },
        _buff_to: {
            extend: "template.item.TI_Arm_Near_UI_To",
            property: { armatureId: "Arm_Fight_SkillName", ignore: [ "death" ], ui: true },
            timelines: { _delay: { type: "DelayTime", dp: (8 / xs.fps) }, _play: { aniId: "ani_buff_atk_add" } }
        }
    }
});
// source line 951, bytecode pc 7752
(xs.Cfg.Skill.part.P_XiaoJi1_Effect_Loop = {
    property: { loopCtrl: "n" },
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_XiaoJi1" },
            timelines: { _play: { aniId: "ani_from_loop" } }
        },
        _buff_0: {
            extend: "template.item.TI_Arm_Near_From",
            property: { armatureId: "Arm_Fight_SkillName", ignore: [ "death" ], ui: true },
            timelines: { _delay: { type: "DelayTime", dp: (4 / xs.fps) }, _play: { aniId: "ani_buff_atk_add" } }
        },
        _buff_1: {
            extend: "template.item.TI_Arm_Near_From",
            property: { armatureId: "Arm_Fight_SkillName", ignore: [ "death" ], ui: true },
            timelines: { _delay: { type: "DelayTime", dp: (26 / xs.fps) }, _play: { aniId: "ani_buff_atk_add" } }
        }
    }
});
// source line 987, bytecode pc 8045
(xs.Cfg.Skill.part.P_LianYing_Hit = {
    extend: [ "part.P_Hurt_Hit" ],
    property: { loopCtrl: "n-1" },
    items: {
        _to_text: null,
        _effect_from: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LianYing" },
            timelines: {
                _delay: { type: "DelayTime", dp: 0 },
                _show: { type: "Show" },
                _play: { aniId: "ani_from0_loop" }
            }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_LianYing", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to0" } }
        }
    }
});
// source line 1020, bytecode pc 8338
(xs.Cfg.Skill.part.P_JiAng_Hit = {
    extend: [ "part.P_Hurt_Hit" ],
    property: { loopCtrl: "n-1" },
    items: {
        _to_text: null,
        _effect_from: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_JiAng" },
            timelines: {
                _delay: { type: "DelayTime", dp: 0 },
                _show: { type: "Show" },
                _play: { aniId: "ani_from0_loop" }
            }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_LianYing", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to0" } }
        }
    }
});
// source line 1039, bytecode pc 8603
(xs.Cfg.Skill.part.P_LianYing_Hit_FixY = {
    property: { loopCtrl: "n-1" },
    items: {
        _fixY: {
            property: { type: "to", belong: "to" },
            timelines: {
                _fix0: { type: "MoveBy", args: [ cc.p(0, 20) ], dp: (4 / xs.fps) },
                _fix1: { type: "MoveBy", args: [ cc.p(0, -10) ], dp: (4 / xs.fps) }
            }
        }
    }
});
// source line 1064, bytecode pc 9016
(xs.Cfg.Skill.part.P_Hit_FixY_2in1 = {
    property: { loopCtrl: "n-1" },
    items: {
        _fixY: {
            property: { type: "to", belong: "to" },
            timelines: {
                _fix0: { type: "MoveBy", args: [ cc.p(0, 20) ], dp: (4 / xs.fps) },
                _fix1: { type: "MoveBy", args: [ cc.p(0, -10) ], dp: (4 / xs.fps) },
                _fix2: { type: "MoveBy", args: [ cc.p(0, 20) ], dp: (4 / xs.fps) },
                _fix3: { type: "MoveBy", args: [ cc.p(0, -10) ], dp: (4 / xs.fps) }
            }
        }
    }
});
// source line 1082, bytecode pc 9281
(xs.Cfg.Skill.part.P_PaoXiao_Hit_FixY = {
    property: { loopCtrl: "n-1" },
    items: {
        _fixY: {
            property: { type: "to", belong: "to" },
            timelines: {
                _fix0: { type: "MoveBy", args: [ cc.p(0, 20) ], dp: (4 / xs.fps) },
                _fix1: { type: "MoveBy", args: [ cc.p(0, -10) ], dp: (4 / xs.fps) }
            }
        }
    }
});
// source line 1091, bytecode pc 9353
(xs.Cfg.Skill.part.P_HuJiao_Hit = { extend: [ "part.P_Hurt_Hit" ], property: { loopCtrl: "n-1" } });
// source line 1106, bytecode pc 9499
(xs.Cfg.Skill.part.P_HuJiao_Effect_To_Hit = {
    property: { loopCtrl: "n-1" },
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_HuJiao", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1120, bytecode pc 9616
(xs.Cfg.Skill.part.P_LuoShen_Effect_End = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LuoShen" },
            timelines: { _play: { aniId: "ani_from_end" } }
        }
    }
});
// source line 1130, bytecode pc 9710
(xs.Cfg.Skill.part.P_XiaoJi1_Effect_End = {
    extend: [ "part.P_LuoShen_Effect_End" ],
    items: { _effect_to: { property: { armatureId: "Arm_Fight_XiaoJi1" } } }
});
// source line 1145, bytecode pc 9827
(xs.Cfg.Skill.part.P_HuJiao_Effect_To_Over = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_HuJiao" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1167, bytecode pc 10057
(xs.Cfg.Skill.part.P_Higher_Over_Revert = {
    items: {
        _fixY: {
            property: { type: "to", belong: "to" },
            timelines: {
                _fix0: { type: "MoveBy", args: [ cc.p(0, 40) ], dp: (4 / xs.fps) },
                _revert: { type: "MoveTo", dp: (8 / xs.fps), dst_pos: { base: "to_ori" } }
            }
        }
    }
});
// source line 1182, bytecode pc 10138
(xs.Cfg.Skill.part.P_JiAng_Hit_Loop = { extend: "part.P_Hurt_Hit", property: { loopCtrl: "floor((n-1)/2)*2", delaySpawn: (4 / xs.fps) } });
// source line 1230, bytecode pc 10486
(xs.Cfg.Skill.part.P_LianYing_Over_TEST = {
    extend: [ "part.P_Hurt_Back_Over" ],
    items: {
        _to_text: null,
        _card_to: null,
        _card_to_test: {
            property: {
                type: "to",
                belong: "to",
                ignore: [ "backup" ],
                mirror: [ "ghost", "death", "miss", "leiji", "spleiji", "buqu" ]
            },
            timelines: {
                _hurt_over: {
                    type: "createAction",
                    name: "createPlayAniActions",
                    data: { aniId: "ani_hit_normal", control: { speed: 1 } }
                },
                _idle: {
                    type: "createAction",
                    name: "createPlayAniActions",
                    data: { aniId: "ani_idle", control: { speed: 1 } }
                }
            }
        }
    }
});
// source line 1258, bytecode pc 10738
(xs.Cfg.Skill.part.P_LianYing_Over = {
    extend: [ "part.P_Hurt_Back_Over" ],
    items: {
        _to_text: null,
        _effect_from: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LianYing" },
            timelines: { _play: { type: "PlayAnimation", aniIds: [ "ani_from0_loop", "ani_from0_end" ] } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_LianYing", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to0" } }
        }
    }
});
// source line 1275, bytecode pc 10883
(xs.Cfg.Skill.part.P_LianYing_Text = {
    property: { loopCtrl: "n", delaySpawn: (17 / xs.fps) },
    items: {
        _to_text: {
            extend: "template.item.TI_Text_Hurt_To",
            timelines: { _play: { type: "createPlayAction", aniId: "ani_text_hurt_n" } }
        }
    }
});
// source line 1293, bytecode pc 11070
(xs.Cfg.Skill.part.P_QiCai_Text = {
    property: { loopCtrl: "n", delaySpawn: (17 / xs.fps) },
    items: {
        _to_text: {
            extend: "template.item.TI_Text_Hurt_To",
            timelines: { _show: { type: "Hide" }, _play: { type: "createPlayAction", aniId: "ani_text_hurt_n" } }
        }
    }
});
// source line 1306, bytecode pc 11151
(xs.Cfg.Skill.part.P_JiJiaoZhiShi_Hit_Loop = { extend: "part.P_Hurt_Back_OnSkillEnd", property: { loopCtrl: "n-1", delaySpawn: (15 / xs.fps) } });
// source line 1314, bytecode pc 11215
(xs.Cfg.Skill.part.P_Hurt_Over_Text = { items: { _to_text: { extend: "template.item.TI_Text_Hurt_All" } } });
// source line 1329, bytecode pc 11360
(xs.Cfg.Skill.part.P_JiAng_Text_Loop = {
    property: { loopCtrl: "floor((n-1)/2)*2", delaySpawn: (4 / xs.fps) },
    items: {
        _to_text: {
            extend: "template.item.TI_Text_Hurt_To",
            timelines: { _play: { type: "createPlayAction", aniId: "ani_text_hurt_n" } }
        }
    }
});
// source line 1344, bytecode pc 11501
(xs.Cfg.Skill.part.P_JiAng_Text_Over = {
    property: { loopCtrl: 1, delaySpawn: (8 / xs.fps) },
    items: {
        _to_text: {
            extend: "template.item.TI_Text_Hurt_To",
            timelines: { _play: { type: "createPlayAction", aniId: "ani_text_hurt_n" } }
        }
    }
});
// source line 1362, bytecode pc 11618
(xs.Cfg.Skill.part.P_LianYing_Effect_End = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LianYing" },
            timelines: { _play: { aniId: "ani_from0_end" } }
        }
    }
});
// source line 1395, bytecode pc 11726
(xs.Cfg.Skill.part.P_Leave = {
    items: {
        _death_count: { extend: "template.item.TI_DeathCount_To", property: { trigger: null } },
        _leaveOrDeath: { extend: "template.item.TI_LeaveOrHide_To" }
    },
    duration: 1
});
// source line 1479, bytecode pc 12565
(xs.Cfg.Skill.part.P_Enter = {
    pre: [
        { who: "env", type: "useNewBody", args: [ "$para" ] },
        { who: "env", type: "updateModel", args: [ "$para" ] }
    ],
    items: {
        from_icon_light: {
            property: { parent: "from", type: "armature", belong: "from_tmp", armatureId: "Arm_Enter" },
            timelines: [
                { type: "Show" },
                { type: "Play", name: "head-light" },
                { type: "DelayTime", dp: 0.26666666666666666 },
                { type: "Hide" }
            ]
        },
        from_backup_icon: {
            property: { type: "from", belong: "from" },
            timelines: [
                { type: "DelayTime", dp: 0.26666666666666666 },
                { type: "createAction", name: "createDisappearActions", dp: 0.2 },
                { type: "Hide" }
            ]
        },
        to_body0: {
            property: { type: "to", belong: "to", ignore: [ "backup" ] },
            timelines: [
                { type: "DelayTime", dp: (14 / xs.fps) },
                { type: "Show" },
                {
                    type: "createAction",
                    name: "createPlayAniActions",
                    data: { aniId: "ani_enter", control: { speed: 1 } }
                }
            ]
        },
        from_other_icons: {
            property: { type: "env", belong: "from" },
            timelines: [
                { type: "DelayTime", dp: (14 / xs.fps) },
                { type: "DelayTime", dp: 0.23333333333333334 },
                { type: "createAction", name: "createMoveIconsActions", dp: 0.23333333333333334, data: {} }
            ]
        }
    },
    duration: 1
});
// source line 1491, bytecode pc 12701
(xs.Cfg.Skill.part.P_ShowStory = {
    items: {
        _storyDlg: {
            property: { type: "env", belong: "once" },
            timelines: [ { type: "createAction", name: "createShowStoryAction", data: {} } ]
        }
    }
});
// source line 1524, bytecode pc 13055
(xs.Cfg.Skill.part.P_JueJing_Hit = {
    extend: "template.part.TP_Hurt_Hit",
    items: {
        _effect_from: {
            property: { type: "from", belong: "to" },
            timelines: {
                move: { type: "Move", dp: (4 / xs.ani_fps), dst_pos: { base: "from_touch", offset: { x: -30, y: 0 } } },
                _fix0: { type: "createAction", name: "createPlayAniActions", data: { aniId: "ani_hit_normal" } },
                _fix1: { type: "createAction", name: "createPlayAniActions", data: { aniId: "ani_idle" } },
                back: { type: "MoveTo", dp: (4 / xs.fps), dst_pos: { base: "from_ori" } }
            }
        }
    }
});
// source line 1542, bytecode pc 13199
(xs.Cfg.Skill.part.P_temporaryVisableStart = {
    items: {
        _effect_from: {
            property: { type: "from", belong: "from" },
            timelines: { _fix0: { type: "createAction", name: "createTemporaryVisableAction", data: { num: 0 } } }
        }
    }
});
// source line 1558, bytecode pc 13343
(xs.Cfg.Skill.part.P_temporaryVisableEnd = {
    items: {
        _effect_from: {
            property: { type: "from", belong: "from" },
            timelines: { _fix1: { type: "createAction", name: "createTemporaryVisableAction", data: { num: 1 } } }
        }
    }
});
