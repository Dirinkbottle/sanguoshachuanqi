// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/Skill.js:1
// source line 933, bytecode pc 6762
(xs.Cfg.Skill = {
    EmptySkill: {},
    ShowStory: "P_ShowStory",
    enter: "P_Enter",
    leave: "P_Leave",
    Round: "P_Round",
    Round_Finish: [ "P_Round_Finish", "P_Delay_Sec_1" ],
    Star: "P_Star",
    Open_Pvp_0: "P_Open_Pvp_0",
    Open_Pvp_1: "P_Open_Pvp_1",
    lijian: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: {
                _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_3" ],
                _type: "P_Hurt_Back_Over"
            },
            _effect: {
                _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5", "P_Delay_Frame_1" ],
                _type: "P_LiJian_Effect_To_Near"
            },
            _effect_from: { _delay: null, _type: "P_LiJian_Effect_From_Mid" },
            _effect_to: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_4" ], _type: "P_LiJian_Effect_To" }
        }
    },
    mo_lijian: { extend: "lijian" },
    mo_lijian_b: { extend: "lijian" },
    mo_lijian_g: { extend: "lijian" },
    lijian_v3: {
        extend: "lijian",
        _attack: {
            type: "Spawn",
            _buff_from1: { _delay: "P_Delay_Frame_2", _type: "P_Def_Add_From" },
            _buff_from2: { _delay: null, _type: "P_BuffAdd_Effect_From" }
        }
    },
    lianying: {
        extend: "template.T_SS",
        property: { hps: { type: xs.Constant_FightScene_HpsType_Critical }, loopNum: 1, criticalNum: 0 },
        _main_before: "P_LianYing_Effect_Begin",
        _main: {
            type: "Spawn",
            _hit_over: {
                "0": { type: "Spawn", "0": "P_LianYing_Hit", "1": "P_LianYing_Hit_FixY" },
                "1": { type: "Spawn", "0": "P_LianYing_Over", "1": "P_Higher_Over_Revert" }
            },
            _text: { "0": "P_LianYing_Text" }
        }
    },
    luoshen: {
        property: { hps: { type: xs.Constant_FightScene_HpsType_Average }, loopNum: 1 },
        parts: {
            "0": "P_BlackHalfBegin",
            "1": "P_Super_Skill",
            "2": "P_LuoShen_Effect_Begin",
            "3": "P_LuoShen_Effect_Loop",
            "4": "P_LuoShen_Effect_End",
            "5": { type: "Spawn", "0": "P_SkillAfter", "1": "P_BlackHalfEnd" }
        }
    },
    luoshen_v3: { extend: "luoshen", parts: { "3": "P_LuoShen_V3_Effect_Loop" } },
    luoshen_v4: {
        extend: "luoshen_v3",
        parts: {
            "3": "P_LuoShen_V5_Effect_Loop",
            "4": "P_LuoShen_V5_Loop_End",
            "5": "P_LuoShen_Effect_End",
            "6": { type: "Spawn", "0": "P_SkillAfter", "1": "P_BlackHalfEnd" }
        }
    },
    hujiao: {
        extend: "template.T_SS",
        property: { hps: { type: xs.Constant_FightScene_HpsType_Average }, loopNum: 1 },
        _main: {
            "1": {
                type: "Spawn",
                "0": [ "P_Delay_Frame_5", "P_Delay_Frame_1", "P_Hurt_Back_Over" ],
                "1": "P_HuJiao_Effect_To_Over"
            }
        }
    },
    humei: { extend: "hujiao" },
    xiaoji: {
        extend: "luoshen",
        parts: { "2": "P_XiaoJi1_Effect_Begin", "3": "P_XiaoJi1_Effect_Loop", "4": "P_XiaoJi1_Effect_End" }
    },
    kurou: {
        property: { hps: { type: xs.Constant_FightScene_HpsType_Average }, loopNum: 1 },
        parts: {
            "0": "P_BlackHalfBegin",
            "1": "P_Super_Skill",
            "2": "P_KuRou_Effect_From_Loop",
            "3": { type: "Spawn", "0": "P_Atk_Add_From", "1": "P_Hurt_Back_Over_From" },
            "4": "P_BlackHalfEnd"
        }
    },
    paoxiao: {
        extend: "template.T_Proximal_MoveFst_SS",
        property: { hps: { type: xs.Constant_FightScene_HpsType_Average }, loopNum: 8 },
        _attack0: { _delay: null, _type: null },
        _attack1: {
            type: "Spawn",
            _hurt0: { _delay0: "P_Delay_Frame_3", _type0: "P_Hurt_Hit_Higher", params: { idx: 0 } },
            _hurt1: { _delay0: "P_Delay_Frame_7", _type0: "P_Hurt_Hit_Higher", params: { idx: 1 } },
            _hurt2: {
                _delay0: [ "P_Delay_Frame_7", "P_Delay_Frame_5" ],
                _type0: "P_Hurt_Hit_Higher",
                params: { idx: 2 }
            },
            _hurt3: {
                _delay0: [ "P_Delay_Frame_10", "P_Delay_Frame_7" ],
                _type0: "P_Hurt_Hit_Higher",
                params: { idx: 3 }
            },
            _hurt4: {
                _delay0: [ "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_2" ],
                _type0: "P_Hurt_Hit_Higher",
                params: { idx: 4 }
            },
            _hurt5: {
                _delay0: [ "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_7" ],
                _type0: "P_Hurt_Hit_Higher",
                params: { idx: 5 }
            },
            _hurt6: {
                _delay0: [ "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_2" ],
                _type0: "P_Hurt_Hit_Higher",
                params: { idx: 6 }
            },
            _hurt7: {
                _delay: "P_Delay_Frame_37",
                _type: { type: "Spawn", "0": "P_Higher_Over_Revert", "1": "P_Hurt_Back_Over", params: { idx: 7 } }
            },
            _hurt: { _delay: null, _type: null },
            _effect: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "P_PaoXiao_Effect_From" }
        },
        _backup: null,
        _back: "P_Back",
        _black_end: "P_SS_BG_End"
    },
    jiang: {
        extend: "template.T_SS_MoveFst",
        property: { hps: { type: xs.Constant_FightScene_HpsType_Loop2Finish1 }, loopNum: 1 },
        _main: {
            type: "Spawn",
            _hit_and_over: [
                "P_JiAng_Effect_From_Loop_Hit",
                { type: "Spawn", "0": "P_JiAng_Effect_From_Over", "1": [ "P_Delay_Frame_3", "P_Hurt_V2_Over" ] }
            ]
        }
    },
    xueshang: {
        extend: "template.T_Remote_Super",
        property: { hps: { type: xs.Constant_FightScene_HpsType_Average }, loopNum: 6 },
        _attack: {
            type: "Spawn",
            _hurt0: { _delay0: "P_Delay_Frame_4", _type0: "P_Hurt_Hit" },
            _hurt1: { _delay0: "P_Delay_Frame_10", _type0: "P_Hurt_Hit" },
            _hurt2: { _delay0: [ "P_Delay_Frame_11", "P_Delay_Frame_5" ], _type0: "P_Hurt_Hit" },
            _hurt3: { _delay0: [ "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_2" ], _type0: "P_Hurt_Hit" },
            _hurt4: {
                _delay0: [ "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_7", "P_Delay_Frame_1" ],
                _type0: "P_Hurt_Hit"
            },
            _hurt5: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_4" ],
                _type: "P_Hurt_Fly_Over"
            },
            _hurt: null,
            _effect_from: { _delay: null, _type: "P_XueShang_Effect_From" },
            _effect_to: { _delay: null, _type: "P_XueShang_Effect_To" },
            _buff: [ "P_Delay_Frame_30", "P_Delay_Frame_7", "P_Atk_Sub_To" ]
        }
    },
    zhangshi: { extend: "xueshang", _attack: { _buff: null } },
    wusheng: {
        extend: "template.T_Proximal_MoveFst_SS",
        property: { hps: { type: xs.Constant_FightScene_HpsType_Average }, loopNum: 2 },
        _attack0: { _delay: null, _type: null },
        _attack1: {
            type: "Spawn",
            _hurt: null,
            _hurt0: { _delay0: [ "P_Delay_Frame_10", "P_Delay_Frame_1" ], _type0: "P_Hurt_Hit" },
            _hurt1: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5", "P_Delay_Frame_1" ], _type: "P_Hurt_Flat_Over" },
            _effect_from: { _delay: null, _type: "P_WuSheng_Effect_From" }
        }
    },
    dangxian: {
        extend: "wusheng",
        _attack1: {
            type: "Spawn",
            _hurt: null,
            _hurt0: { _delay0: [ "P_Delay_Frame_10", "P_Delay_Frame_2" ], _type0: "P_Hurt_Hit" },
            _hurt1: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_4" ],
                _type: "P_Hurt_Back_Over"
            },
            _effect_from: { _delay: null, _type: "P_DangXian_Effect_From" }
        }
    },
    longyin: {
        extend: "wusheng",
        _attack1: {
            type: "Spawn",
            _hurt: null,
            _hurt0: { _delay0: [ "P_Delay_Frame_5", "P_Delay_Frame_2" ], _type0: "P_Hurt_Hit" },
            _hurt1: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_4", "P_Delay_Frame_4" ],
                _type: "P_Hurt_Flat_Over"
            },
            _effect_from: { _delay: null, _type: "P_LongYin_Effect_From" }
        }
    },
    fangquan: {
        extend: "template.T_Buff_Super",
        _attack: {
            type: "Spawn",
            _effect_from: { _type: "P_FangQuan_Effect_From" },
            _effect_to: { _delay: "P_Delay_Frame_5", _type: "P_FangQuan_Effect_To" },
            _buff_from: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_5", "P_Delay_Frame_3" ],
                _type: "P_Hp_Add_From"
            }
        }
    },
    quhu: {
        extend: "template.T_Buff_Super",
        _attack: {
            type: "Spawn",
            _effect_from: { _type: "P_QuHu_Effect_From" },
            _effect_to: { _delay: "P_Delay_Frame_5", _type: "P_QuHu_Effect_To" },
            _buff_to: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_2" ],
                _type: "P_Buff_AtkDef_Add_To"
            }
        }
    },
    mingce: {
        extend: "template.T_Buff_Super",
        _attack: {
            type: "Spawn",
            _effect_to: { _delay: null, _type: "P_MingCe_Effect_To" },
            _buff_to: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_1" ], _type: "P_Int_Add_To" }
        }
    },
    qingnang: {
        extend: "template.T_Buff_Super",
        _attack: {
            type: "Spawn",
            _effect_from: { _type: null },
            _effect_to: { _delay: "P_Delay_Frame_5", _type: "P_QingNang_Effect_To" },
            _buff_to: {
                _delay: [
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_5",
                    "P_Delay_Frame_1"
                ],
                _type: "P_Hp_Add_To"
            }
        }
    },
    yaowu_0: {},
    yaowu_1: {
        extend: "template.T_Buff_Super",
        _attack: {
            type: "Spawn",
            _effect_from: { _type: "P_YaoWu_Effect_From" },
            _effect_to: { _type: "P_YaoWu_Effect_To" },
            _buff_to: {}
        }
    },
    zhuiyi: {
        extend: "template.T_Buff_Super",
        _attack: {
            type: "Spawn",
            _effect_from: { _type: "P_YaoWu_Effect_From" },
            _effect_to: { _type: "P_YaoWu_Effect_To" },
            _buff_to: { _type: "P_Atk_Add_To" }
        }
    },
    fulu: { extend: "template.T_Buff_Normal", _main: "P_Cure_To" },
    guhuo_dmg: {
        extend: "template.T_Remote_SS",
        _name: "P_Super_Skill",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: "P_Delay_Frame_55", _type: "P_Hurt_Back_Over" },
            _effect_from: { _type: "P_GuHuoA_Effect_From" },
            _effect_to: { _type: "P_GuHuoA_Effect_To" }
        }
    },
    guhuo_atk: {
        extend: "template.T_Buff_Super",
        _attack: {
            type: "Spawn",
            _effect_from: { _delay: null, _type: "P_GuHuoB_Effect_From" },
            _effect_to: { _delay: null, _type: "P_GuHuoB_Effect_To" },
            _buff_from: { _delay: null, _type: null },
            _buff_to: { _delay: "P_Delay_Frame_46", _type: "P_Atk_Add_To" }
        }
    },
    qice_dmg: {
        extend: "template.T_Remote_SS",
        _name: "P_Super_Skill",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_2" ], _type: "P_Hurt_Flat_Over" },
            _effect_from: { _type: null },
            _effect_to: { _type: "P_QiCe_Dmg_Effect_To" }
        }
    },
    qice_hp: {
        extend: "template.T_Buff_Super",
        _attack: {
            type: "Spawn",
            _effect_from: { _delay: null, _type: "P_QiCe_Cure_Effect_Near_From" },
            _effect_to: { _delay: null, _type: null },
            _buff_from: { _delay: null, _type: null },
            _buff_to: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_5", "P_Delay_Frame_3" ], _type: "P_Hp_Add_To" }
        }
    },
    zhiheng_atk: {
        extend: "template.T_Super",
        _main: {
            _main0: "P_ZhiHeng_Effect_From",
            _main1: {
                type: "Spawn",
                _effect: "P_ZhiHeng_Atk_Effect_From",
                _buff: [ "P_Delay_Frame_5", "P_Delay_Frame_4", "P_Atk_Add_From" ]
            }
        }
    },
    zhiheng_def: {
        extend: "template.T_Super",
        _main: {
            _main0: "P_ZhiHeng_Effect_From",
            _main1: {
                type: "Spawn",
                _effect: "P_ZhiHeng_Def_Effect_From",
                _buff: [ "P_Delay_Frame_5", "P_Delay_Frame_4", "P_Def_Add_From" ]
            }
        }
    },
    tuxi: {
        extend: "template.T_SS",
        _main: {
            type: "Spawn",
            _effect0: "P_TuXi_Effect_From0",
            _effect1: "P_TuXi_Effect_From1",
            _effect_to: "P_TuXi_Effect_To",
            _buff_from: [ "P_Delay_Frame_26", "P_Atk_Add_From" ],
            _buff_to: [ "P_Delay_Frame_26", "P_Atk_Sub_To" ]
        }
    },
    tuxi_v3: {
        extend: "tuxi",
        _main: { _hurt: { _delay: [ "P_Delay_Frame_11", "P_Delay_Frame_10" ], _type: "P_Hurt_Back_Over" } }
    },
    tuxi_v5: { extend: "tuxi_v3", _main: { _buff_to: [ "P_Delay_Frame_26", "P_AtkDef_Sub_To" ] } },
    longdan: {
        extend: "template.T_Super",
        _main: {
            type: "Spawn",
            _effect: "P_LongDan_Effect_From",
            _buff: [ "P_Delay_Frame_30", "P_Delay_Frame_10", "P_Delay_Frame_3", "P_LongDan_Buff_Add_From" ]
        }
    },
    longdan_v2: {
        extend: "template.T_Super",
        _black_begin: "P_SS_BG_Begin",
        property: { hps: { type: xs.Constant_FightScene_HpsType_Average }, loopNum: 4 },
        _attack1: {
            type: "Spawn",
            _hurt0: { _delay0: "P_Delay_Frame_7", _type0: "P_Hurt_Hit_NoFs", params: { idx: 0 } },
            _hurt1: {
                _delay0: [ "P_Delay_Frame_7", "P_Delay_Frame_10" ],
                _type0: "P_Hurt_Hit_NoFs",
                params: { idx: 1 }
            },
            _hurt2: {
                _delay0: [ "P_Delay_Frame_7", "P_Delay_Frame_10", "P_Delay_Frame_10" ],
                _type0: "P_Hurt_Hit_NoFs",
                params: { idx: 2 }
            },
            _hurt3: {
                _delay: [ "P_Delay_Frame_1", "P_Delay_Frame_26", "P_Delay_Frame_10" ],
                _type: { type: "Spawn", "0": "P_Hurt_Back_Over_NFS", params: { idx: 3 } }
            },
            _effect_from: { _delay: null, _type: "P_LongDan_Effect_From1" },
            _effect_to: { _delay: null, _type: [ "P_LongDan_Effect_To_NoFs" ] },
            _effect: [ "P_Delay_Frame_10", "P_Delay_Frame_6", "P_LongDan_Effect_From" ],
            _buff: [ "P_Delay_Frame_55", "P_LongDan_Buff_Add_From" ]
        },
        _backup: null,
        _back: "P_Back",
        _black_end: "P_SS_BG_End"
    },
    longdan_v4: { extend: "longdan_v2", _attack1: { _addhp: [ "P_Delay_Frame_55", "P_Hp_Add_From" ] } },
    longdan_v5: { extend: "longdan_v2", _attack1: { _addhp: [ "P_Delay_Frame_55", "P_Hp_Add_To_FS" ] } },
    yingzi: { extend: "template.T_Super", _main: { _effect: "P_YingZi_Effect_From" } },
    jushou: {
        extend: "template.T_Super",
        _main: [
            "P_Cure_From",
            {
                type: "Spawn",
                _effect: [ "P_JuShou_Effect_From" ],
                _buff: [ "P_Delay_Frame_10", "P_Def_Add_From" ]
            }
        ]
    },
    jushou_bounce: {
        _attack: {
            type: "Spawn",
            _hurt: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_2" ],
                _type: "P_Hurt_Back_Over",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 3 }
            },
            _effect_from: {
                _delay: null,
                _type: "P_JuShou_Effect_From_V4",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 12 }
            }
        }
    },
    jushou_v3: { extend: "jushou" },
    jushou_v4: { extend: "jushou_v3" },
    jushou_v5: { extend: "jushou_v4" },
    jushou_live: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Super_Skill",
        _main: {
            type: "Spawn",
            _effect2: [ "P_Delay_Frame_6", "P_Ghost_Live_From" ],
            _effect_hp: [ "P_Delay_Frame_10", "P_Delay_Frame_6", "P_Delay_Frame_2", "P_Hp_Add_From" ]
        },
        _black_end: "P_BlackHalfEnd"
    },
    lianpo: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Super_Skill",
        _main: {
            type: "Spawn",
            _effect_form: "P_LianPo_Effect_From",
            _effect2: [ "P_Delay_Frame_6", "P_Ghost_Live_From" ],
            _effect_hp: [ "P_Delay_Frame_10", "P_Delay_Frame_6", "P_Delay_Frame_2", "P_Hp_Add_From" ]
        },
        _black_end: "P_BlackHalfEnd"
    },
    way3_TEST: { "0": [ "P_Attack_Sword_2_TEST", "WAY3_TEST" ] },
    duration: 1
});
// source line 951, bytecode pc 6890
(xs.Cfg.Skill.WAY3_TEST = {
    type: "Spawn",
    _from: { _delay: null, _type: "P_Idle_From" },
    _hurt: { _delay: null, _type0: "P_Hurt_Normal_Over", _type1: "P_Hurt_Normal_Over_OTHER" },
    _effect: { _delay: null, _type: "P_Effect_Attack_Sword_2_To_TEST" }
});
