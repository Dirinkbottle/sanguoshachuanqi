// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/PartHurt.js:1
// source line 15, bytecode pc 106
(xs.Cfg.Skill.part.P_Hurt_Hit = {
    extend: "template.part.TP_Hurt_Hit",
    items: { _card_to: { timelines: { _card: { data: { aniId: "ani_hit_stiff" } } } } }
});
// source line 28, bytecode pc 234
(xs.Cfg.Skill.part.P_Hurt_Hit_NoFs = {
    extend: "template.part.TP_Hurt_Hit",
    property: { ignore: "fs" },
    items: { _card_to: { timelines: { _card: { data: { aniId: "ani_hit_stiff" } } } } }
});
// source line 64, bytecode pc 591
(xs.Cfg.Skill.part.P_Hurt_Hit_Higher = {
    extend: "template.part.TP_Hurt_Hit",
    items: {
        _card_to: { timelines: { _card: { data: { aniId: "ani_hit_stiff" } } } },
        _to_text: { property: { pos: { creater: "HitTextPos", offset: null } } },
        _fixY: {
            property: { type: "to", belong: "to" },
            timelines: {
                _fix0: { type: "MoveBy", args: [ cc.p(0, 20) ], dp: (4 / xs.fps) },
                _fix1: { type: "MoveBy", args: [ cc.p(0, -10) ], dp: (4 / xs.fps) }
            }
        }
    }
});
// source line 79, bytecode pc 704
(xs.Cfg.Skill.part.P_Hurt_Hit_Higher0 = {
    extend: "part.P_Hurt_Hit_Higher",
    items: { _to_text: { property: { pos: { offset: cc.p(0, 150) } } } }
});
// source line 89, bytecode pc 817
(xs.Cfg.Skill.part.P_Hurt_Hit_Higher1 = {
    extend: "part.P_Hurt_Hit_Higher",
    items: { _to_text: { property: { pos: { offset: cc.p(0, 170) } } } }
});
// source line 99, bytecode pc 930
(xs.Cfg.Skill.part.P_Hurt_Hit_Higher2 = {
    extend: "part.P_Hurt_Hit_Higher",
    items: { _to_text: { property: { pos: { offset: cc.p(0, 190) } } } }
});
// source line 109, bytecode pc 1043
(xs.Cfg.Skill.part.P_Hurt_Hit_Higher3 = {
    extend: "part.P_Hurt_Hit_Higher",
    items: { _to_text: { property: { pos: { offset: cc.p(0, 210) } } } }
});
// source line 143, bytecode pc 1318
(xs.Cfg.Skill.part.P_Hurt_Back_OnSkillEnd = {
    extend: "template.part.TP_Hurt_Over_Skill",
    items: {
        _to_text: { property: { pos: { creater: "HitTextPos", offset: null } } },
        _to_text_all: {
            property: { type: "env", belong: "to", trigger: [ "skillend" ] },
            timelines: { _delay: null, _finish: { type: "createAction", name: "createHurtAllEffectAction" } }
        },
        _card_to: {
            extend: "template.item.TI_Card_Hurt_Over_To",
            timelines: { _hurt_over: { data: { aniId: "ani_hit_back" } } }
        }
    }
});
// source line 185, bytecode pc 1671
(xs.Cfg.Skill.part.P_Hurt_Backup_Death = {
    pre: [ { who: "env", type: "updateBackupModel", args: [ "$para" ] } ],
    items: {
        _death: {
            property: { type: "to", belong: "to", trigger: [ "backup" ], mirror: [ "death" ] },
            timelines: { _hide: null },
            death: { timelines: { _hide: { type: "Hide" } } }
        },
        from_other_icons: {
            property: { type: "env", belong: "once" },
            timelines: [ { type: "createAction", name: "createBackupIconsFixActions", dp: (7 / xs.fps), data: {} } ]
        }
    }
});
// source line 265, bytecode pc 2231
(xs.Cfg.Skill.part.P_Hurt_Normal_Over = {
    extend: "template.part.TP_Hurt_Over_Normal",
    items: {
        _dujin: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_DuJin", trigger: [ "dujin" ], rotationY: 180 },
            timelines: { _play: { aniId: "ani_from" } }
        },
        _tianxiang: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_TianXiang", trigger: [ "tianxiang", "liuli" ] },
            timelines: { _play: { aniId: "ani_from" } }
        },
        _tianxiang_v3: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_TianXiang_jinjie", trigger: [ "tianxiang_v3", "tianxiang_v5" ] },
            timelines: { _play: { aniId: "ani_from" } }
        },
        _yizhong: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_YiZhong", rotationY: 180, trigger: [ "yizhong" ] },
            timelines: { _play: { aniId: "ani_from" } }
        },
        _buqu: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_BuQu", rotationY: 180, trigger: [ "buqu" ] },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 279, bytecode pc 2308
(xs.Cfg.Skill.part.P_Hurt_V2_Over = {
    extend: "template.part.TP_Hurt_Over_Normal",
    items: { _to_hp_top: null, _to_hp_bot: null, _to_text: null, _card_to: null }
});
// source line 292, bytecode pc 2379
(xs.Cfg.Skill.part.P_Hurt_V3_Over = {
    extend: "template.part.TP_Hurt_Over_Normal",
    items: { _to_hp_top: null, _to_hp_bot: null, _to_text: null }
});
// source line 321, bytecode pc 2545
(xs.Cfg.Skill.part.P_Hurt_Back_Over = {
    extend: "template.part.TP_Hurt_Over_Skill",
    items: {
        _to_text: { property: { pos: { creater: "HitTextPos", offset: null } } },
        _card_to: {
            extend: "template.item.TI_Card_Hurt_Over_To",
            timelines: { _hurt_over: { data: { aniId: "ani_hit_back" } } }
        }
    }
});
// source line 345, bytecode pc 2771
(xs.Cfg.Skill.part.P_Hurt_Back_Over_No_FJ = {
    extend: "template.part.TP_Hurt_Over_Skill",
    items: {
        _to_text_all: {
            property: { type: "env", belong: "to", trigger: [ "skillend" ] },
            timelines: { _delay: null, _finish: { type: "createAction", name: "createHurtAllEffectAction" } }
        },
        _card_to: {
            extend: "template.item.TI_Card_Hurt_Over_Normal_To",
            timelines: { _hurt_over: { data: { aniId: "ani_scle_change" } } }
        }
    }
});
// source line 380, bytecode pc 3131
(xs.Cfg.Skill.part.P_Hurt_Back_Over_ZhaoXin = {
    extend: "template.part.TP_Hurt_Over_Skill",
    property: { ignore: "fs" },
    items: {
        _to_text_all: {
            property: { type: "env", belong: "to", trigger: [ "skillend" ] },
            timelines: { _delay: null, _finish: { type: "createAction", name: "createHurtAllEffectAction" } }
        },
        _to_text: {
            timelines: {
                _delay: { type: "DelayTime", dp: (60 / xs.fps) },
                _play: { type: "createPlayAction", aniId: "ani_text_hurt" },
                _show: { type: "Show" }
            }
        },
        _card_to: {
            extend: "template.item.TI_Card_Hurt_Over_Normal_To",
            timelines: { _hurt_over: { data: { aniId: "ani_xuechi" } } }
        }
    }
});
// source line 406, bytecode pc 3357
(xs.Cfg.Skill.part.P_Hurt_Back_Over_IDLE = {
    extend: "template.part.TP_Hurt_Over_Skill",
    items: {
        _to_text_all: {
            property: { type: "env", belong: "to", trigger: [ "skillend" ] },
            timelines: { _delay: null, _finish: { type: "createAction", name: "createHurtAllEffectAction" } }
        },
        _card_to: {
            extend: "template.item.TI_Card_Hurt_Over_Normal_To",
            timelines: { _hurt_over: { data: { aniId: "ani_idle" } } }
        }
    }
});
// source line 432, bytecode pc 3583
(xs.Cfg.Skill.part.P_Hurt_Back_Over_FL = {
    extend: "template.part.TP_Hurt_Over_Skill",
    items: {
        _to_text_all: {
            property: { type: "env", belong: "to", trigger: [ "skillend" ] },
            timelines: { _delay: null, _finish: { type: "createAction", name: "createHurtAllEffectAction" } }
        },
        _card_to: {
            extend: "template.item.TI_Card_Hurt_Over_Normal_To",
            timelines: { _hurt_over: { data: { aniId: "ani_kun" } } }
        }
    }
});
// source line 466, bytecode pc 3824
(xs.Cfg.Skill.part.P_Hurt_Back_Over_FJ = {
    extend: "template.part.TP_Hurt_Over_Skill",
    property: { ignore: [ "second", "third", "fourth", "fifth", "sixth", "seventh" ] },
    items: {
        _to_text: { property: { pos: { creater: "HitTextPos", offset: null } } },
        _card_to: {
            extend: "template.item.TI_Card_Hurt_Over_To",
            timelines: { _hurt_over: { data: { aniId: "ani_hit_back" } } }
        }
    }
});
// source line 495, bytecode pc 4021
(xs.Cfg.Skill.part.P_Hurt_Back_Over_NOHURT = {
    extend: "template.part.TP_Hurt_Over_Skill",
    items: {
        _to_text: { property: { ignore: "nohurt", pos: { creater: "HitTextPos", offset: null } } },
        _card_to: {
            extend: "template.item.TI_Card_Hurt_Over_To",
            property: { ignore: "nohurt" },
            timelines: { _hurt_over: { data: { aniId: "ani_hit_back" } } }
        }
    }
});
// source line 524, bytecode pc 4218
(xs.Cfg.Skill.part.P_Hurt_Back_Over_NFS = {
    extend: "template.part.TP_Hurt_Over_Skill",
    items: {
        _to_text: { property: { ignore: "fs", pos: { creater: "HitTextPos", offset: null } } },
        _card_to: {
            extend: "template.item.TI_Card_Hurt_Over_To",
            property: { ignore: "fs" },
            timelines: { _hurt_over: { data: { aniId: "ani_hit_back" } } }
        }
    }
});
// source line 551, bytecode pc 4433
(xs.Cfg.Skill.part.P_Hurt_Back_Over_FS = {
    extend: "template.part.TP_Hurt_Over_Skill",
    items: {
        _to_text: { property: { trigger: [ "fs" ], pos: { creater: "HitTextPos", offset: null } } },
        _card_to: {
            extend: "template.item.TI_Card_Hurt_Over_To",
            property: { trigger: [ "fs" ] },
            timelines: { _hurt_over: { data: { aniId: "ani_hit_back" } } }
        }
    }
});
// source line 578, bytecode pc 4648
(xs.Cfg.Skill.part.P_Hurt_Back_Over_BOOM = {
    extend: "template.part.TP_Hurt_Over_Skill",
    items: {
        _to_text: { property: { trigger: [ "boom" ], pos: { creater: "HitTextPos", offset: null } } },
        _card_to: {
            extend: "template.item.TI_Card_Hurt_Over_To",
            property: { trigger: [ "boom" ] },
            timelines: { _hurt_over: { data: { aniId: "ani_hit_back" } } }
        }
    }
});
// source line 587, bytecode pc 4711
(xs.Cfg.Skill.part.P_Hurt_Back_Over_No_Fs = { extend: "part.P_Hurt_Back_Over", property: { ignore: "fs" } });
// source line 661, bytecode pc 5126
(xs.Cfg.Skill.part.P_Hurt_Back_Over_From_FL = {
    extend: "part.P_Hurt_Back_Over",
    items: {
        _finish_pause: null,
        _death_count: { extend: "template.item.TI_DeathCount_From" },
        _to_hp_top: { property: { type: "from", belong: "from" } },
        _to_hp_bot: { property: { type: "from", belong: "from" } },
        _to_text: { property: { belong: "from_tmp", pos: { base: "from", creater: null, offset: null } } },
        _to_text_all: null,
        _to_miss: null,
        _to_cri: null,
        _to_status_clean_feng: { property: { type: "from", belong: "from" } },
        _to_status_clean_le: { property: { type: "from", belong: "from" } },
        _to_status_clean_yun: { property: { type: "from", belong: "from" } },
        _card_to: { property: { type: "from", belong: "from" } }
    }
});
// source line 738, bytecode pc 5541
(xs.Cfg.Skill.part.P_Hurt_Back_Over_From = {
    extend: "part.P_Hurt_Back_Over",
    items: {
        _finish_pause: null,
        _death_count: { extend: "template.item.TI_DeathCount_From" },
        _to_hp_top: { property: { type: "from", belong: "from" } },
        _to_hp_bot: { property: { type: "from", belong: "from" } },
        _to_text: { property: { belong: "from_tmp", pos: { base: "from", creater: null, offset: null } } },
        _to_text_all: null,
        _to_miss: null,
        _to_cri: null,
        _to_status_clean_feng: { property: { type: "from", belong: "from" } },
        _to_status_clean_le: { property: { type: "from", belong: "from" } },
        _to_status_clean_yun: { property: { type: "from", belong: "from" } },
        _card_to: { property: { type: "from", belong: "from" } }
    }
});
// source line 752, bytecode pc 5658
(xs.Cfg.Skill.part.P_Hurt_Flat_Over = {
    extend: "template.part.TP_Hurt_Over_Skill",
    items: {
        _card_to: {
            extend: "template.item.TI_Card_Hurt_Over_To",
            timelines: { _hurt_over: { data: { aniId: "ani_hit_flat" } } }
        }
    }
});
// source line 764, bytecode pc 5700
(xs.Cfg.Skill.part.P_Hurt_Over = { extend: "template.part.TP_Hurt_Over_Skill" });
// source line 769, bytecode pc 5742
(xs.Cfg.Skill.part.P_Hurt_Fly_Over = { extend: "template.part.TP_Hurt_Over_Skill" });
// source line 783, bytecode pc 5859
(xs.Cfg.Skill.part.P_Hurt_Fly_Over_NFS = {
    extend: "template.part.TP_Hurt_Over_Skill",
    items: { _to_text: { property: { ignore: "fs" } }, _card_to: { property: { ignore: "fs" } } }
});
// source line 794, bytecode pc 5922
(xs.Cfg.Skill.part.P_Hurt_Fly_Over_NO_FS = { extend: "template.part.TP_Hurt_Over_Skill", property: { ignore: "fs" } });
// source line 804, bytecode pc 6028
(xs.Cfg.Skill.part.P_Over_TEST = {
    items: {
        _to_hp_top: { extend: "template.item.TI_Hp_Sub_Top_To" },
        _to_hp_bot: { extend: "template.item.TI_Hp_Sub_Bot_To" },
        _to_text: { extend: "template.item.TI_Text_Hurt_To" }
    }
});
// source line 817, bytecode pc 6092
(xs.Cfg.Skill.part.P_Hurt_Normal_Over_OTHER = { items: { _to_text: { extend: "template.item.TI_Text_Hurt_toOther" } } });
// source line 843, bytecode pc 6151
(xs.Cfg.Skill.part.P_Hurt_From = { extend: "template.part.TP_Hurt_From", items: { _effect: null } });
// source line 869, bytecode pc 6223
(xs.Cfg.Skill.part.P_Hurt_Back_Over_IgnoreOther = { extend: "part.P_Hurt_Back_Over", property: { ignore: [ "fs" ] } });
// source line 878, bytecode pc 6295
(xs.Cfg.Skill.part.P_Hurt_Fly_Over_IgnoreOther = { extend: "part.P_Hurt_Fly_Over", property: { ignore: [ "fs" ] } });
// source line 888, bytecode pc 6354
(xs.Cfg.Skill.part.P_Hurt_Back_Over_No_Text = { extend: "part.P_Hurt_Back_Over", items: { _to_text: null } });
// source line 897, bytecode pc 6413
(xs.Cfg.Skill.part.P_Hurt_Normal_Over_No_Text = { extend: "part.P_Hurt_Normal_Over", items: { _to_text: null } });
