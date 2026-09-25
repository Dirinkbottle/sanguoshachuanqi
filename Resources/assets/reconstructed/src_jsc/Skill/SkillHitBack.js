// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/SkillHitBack.js:1
// source line 1273, bytecode pc 9586
xs.Utils.extendScope(xs.Cfg.Skill, {
    ganglie: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: "P_Delay_Frame_26", _type: "P_Hurt_Back_Over" },
            _effect_from: { _type: null },
            _effect_to: { _type: "P_GangLie_Effect" }
        }
    },
    ganglie_0: {},
    ganglie_1: { extend: "ganglie" },
    leiji_0: {},
    leiji_1: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: "P_Delay_Frame_11", _type: "P_Hurt_Back_Over" },
            _effect_from: { _type: null },
            _effect_to: { _type: "P_Thunder_Effect_To" }
        }
    },
    spleiji_0: {},
    spleiji_1: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _hurt: {
                _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_30", "P_Delay_Frame_50" ],
                _type: "P_Hurt_Normal_Over"
            },
            _effect_from: { _delay: null, _type: "P_PanDing_Effect_From" },
            _effect_from1: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_6" ], _type: "P_PanDing_Effect_From01" },
            _effect_from2: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_6" ], _type: "P_PanDing_Effect_From02" },
            _effect_from3: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_6" ], _type: "P_PanDing_Effect_From03" },
            _effect_to: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_50" ], _type: "P_SPLeiJi_Effect_To" }
        }
    },
    shuangxiong_left: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_11" ], _type: "P_Hurt_Normal_Over" },
            _effect_from: { _type: null },
            _effect_to: { _type: "P_ShuangXiong_Effect_To_Left" },
            _effect_to1: { _delay: [ "P_Delay_Frame_11" ], _type: "P_ShuangXiong_Effect_To_BaoJi" }
        }
    },
    shuangxiong_right: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_11" ], _type: "P_Hurt_Normal_Over" },
            _effect_from: { _type: null },
            _effect_to: { _type: "P_ShuangXiong_Effect_To_Right" },
            _effect_to1: { _delay: [ "P_Delay_Frame_11" ], _type: "P_ShuangXiong_Effect_To_BaoJi" }
        }
    },
    shuangxiong_extra: {
        _attack: {
            type: "Spawn",
            _effect_from: { _type: null },
            _hurt: {
                _delay: [ "P_Delay_Frame_11" ],
                _type: "P_Hurt_Back_OnSkillEnd",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 11 }
            },
            _effect_to: {
                _delay: null,
                _type: "P_ShuangXiong_Effect_To_Left",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 26 }
            },
            _effect_to1: { _delay: null, _type: "P_ShuangXiong_Effect_To_BaoJi" }
        }
    },
    pojun_left: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_26" ], _type: "P_Hurt_Normal_Over" },
            _effect_from: { _delay: null, _type: "P_PoJun_Effect_From" },
            _effect_from1: { _delay: [ "P_Delay_Frame_7", "P_Delay_Frame_7" ], _type: "P_PoJun_Effect_From_Mid" },
            _effect_to: { _delay: [ "P_Delay_Frame_26" ], _type: "P_ShuangXiong_Effect_To_BaoJi" }
        }
    },
    pojun_right: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Normal_Over" },
            _effect_to: { _delay: null, _type: "P_ShuangXiong_Effect_To_BaoJi" }
        }
    },
    pojun_extra: {
        _attack: {
            type: "Spawn",
            _hurt: {
                _delay: null,
                _type: "P_Hurt_Back_OnSkillEnd",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 3 }
            },
            _effect_to: { _delay: null, _type: "P_ShuangXiong_Effect_To_BaoJi" }
        }
    },
    tongji: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _effect_from: { _type: "P_TongJi_Effect_From" },
            _effect_from_far: { _type: "P_TongJi_Effect_From_Far" },
            _hurt: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_3", "P_Delay_Frame_2" ],
                _type: "P_Hurt_Back_OnSkillEnd",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 17 }
            },
            _effect_to: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_3" ],
                _type: "P_TongJi_Effect_To",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 17 }
            }
        }
    },
    tongji_continue: {
        _attack: {
            type: "Spawn",
            _hurt: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_3", "P_Delay_Frame_2" ],
                _type: "P_Hurt_Back_OnSkillEnd",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 17 }
            },
            _effect_to: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_3" ],
                _type: "P_TongJi_Effect_To",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 17 }
            }
        }
    },
    tianzhao: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _effect_from: { _type: "P_TianZhao_Effect_From_Mid" },
            _hurt: {
                _delay: [ "P_Delay_Frame_50", "P_Delay_Frame_10" ],
                _type: "P_Hurt_Back_OnSkillEnd",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 38 }
            },
            _effect_to: {
                _delay: [ "P_Delay_Frame_26" ],
                _type: "P_TianZhao_Effect_To",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 38 }
            }
        }
    },
    tianzhao_extra: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_50", "P_Delay_Frame_10" ], _type: "P_Hurt_Back_OnSkillEnd" },
            _effect_from: { _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_26" ], _type: "P_TianZhao_Effect_To" }
        }
    },
    tianzhao_continue: {
        _attack: {
            type: "Spawn",
            _hurt: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_3", "P_Delay_Frame_2" ],
                _type: "P_Hurt_Back_OnSkillEnd",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 38 }
            },
            _effect_to: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_3" ],
                _type: "P_TianZhao_Effect_To",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 38 }
            }
        }
    },
    raoshe: {
        _attack: {
            type: "Spawn",
            _hurt: {
                _delay: [ "P_Delay_Frame_11", "P_Delay_Frame_3", "P_Delay_Frame_2" ],
                _type: "P_Hurt_Back_OnSkillEnd",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 25 }
            },
            _effect_to: {
                _delay: [ "P_Delay_Frame_11", "P_Delay_Frame_3" ],
                _type: "P_RaoShe_Effect_To",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 25 }
            }
        }
    },
    raoshe_extra: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _effect_from: { _type: "P_RaoShe_Effect_From" },
            _effect_atkUp: [ "P_Delay_Frame_50", "P_Delay_Frame_3", "P_Delay_Frame_2", "P_Atk_Add_From" ],
            _hurt: { _delay: null, _type: null },
            _effect_to: { _delay: null, _type: null }
        }
    },
    raoshe_continue: {
        _attack: {
            type: "Spawn",
            _hurt: {
                _delay: [ "P_Delay_Frame_50", "P_Delay_Frame_3", "P_Delay_Frame_2", "P_Delay_Frame_10" ],
                _type: "P_Hurt_Back_OnSkillEnd",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 25 }
            },
            _effect_to: {
                _delay: [ "P_Delay_Frame_50", "P_Delay_Frame_3" ],
                _type: "P_TongJi_Effect_To",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 25 }
            }
        }
    },
    raoshe_live: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Super_Skill",
        _main: {
            type: "Spawn",
            _effect2: [ "P_Delay_Frame_6", "P_Ghost_Live_From" ],
            _effect_hp: [ "P_Delay_Frame_10", "P_Delay_Frame_6", "P_Delay_Frame_2", "P_Hp_Add_From" ]
        },
        _black_end: "P_BlackHalfEnd"
    },
    spluanji: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _effect_from: { _type: "P_SPLuanJi_Effect_From" },
            _hurt: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_3", "P_Delay_Frame_2" ],
                _type: "P_Hurt_Back_OnSkillEnd",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 30 }
            },
            _effect_to: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_3" ],
                _type: "P_SPLuanJi_Effect_To1",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 30 }
            }
        }
    },
    spluanji_baoji: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _effect_from: { _type: "P_SPLuanJi_Effect_From" },
            _hurt: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_3", "P_Delay_Frame_2" ],
                _type: "P_Hurt_Back_OnSkillEnd",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 30 }
            },
            _effect_to: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_3" ],
                _type: "P_SPLuanJi_Effect_To1",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 30 }
            },
            _effect_to1: { _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_3" ], _type: "P_BaoJi_Effect_To" }
        }
    },
    spluanji_continue: {
        _attack: {
            type: "Spawn",
            _hurt: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_3", "P_Delay_Frame_2" ],
                _type: "P_Hurt_Back_OnSkillEnd",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 30 }
            },
            _effect_to: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_3" ],
                _type: "P_SPLuanJi_Effect_To1",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 30 }
            }
        }
    },
    spluanji_extra: {
        _attack: {
            type: "Spawn",
            _effect_from: { _type: "P_SPLuanJi_Effect_From_Extra" },
            _hurt: {
                _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_10" ],
                _type: "P_Hurt_Back_OnSkillEnd",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 30 }
            },
            _effect_to: {
                _delay: [ "P_Delay_Frame_30" ],
                _type: "P_SPLuanJi_Effect_To1",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 30 }
            },
            _effect_to1: {
                _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_3" ],
                _type: "P_ShuangXiong_Effect_To_BaoJi",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 30 }
            }
        }
    },
    mo_paoxiao_0: {},
    mo_paoxiao_1: {
        extend: "template.T_Remote_Super",
        property: { hps: { type: xs.Constant_FightScene_HpsType_Average }, loopNum: 8 },
        _attack: {
            type: "Spawn",
            _hurt0: { _delay0: "P_Delay_Frame_2", _type0: "P_Hurt_Hit_Higher", params: { idx: 0 } },
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
                _type: { type: "Spawn", "0": "P_Hurt_Back_Over", "1": "P_Higher_Over_Revert", params: { idx: 7 } }
            },
            _hurt: { _delay: null, _type: null },
            _effect: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "P_PaoXiao_Effect_From_Evil" },
            _effect_to: { _delay: null, _type: "P_PaoXiao_Effect_To_Evil" }
        }
    },
    mo_tieji_0: {},
    mo_tieji_1: {
        extend: "template.T_Remote_Super",
        _attack_before: "P_TieJi_Effect_From",
        _attack: {
            _hurt: { _delay: "P_Delay_Frame_2", _type: "P_Hurt_Back_Over" },
            _effect_from: { _type: null },
            _effect_to: { _type: "P_TieJi_Effect_To" }
        }
    },
    mo_tieqi_0: { extend: "mo_tieji_0" },
    mo_tieqi_1: { extend: "mo_tieji_1" },
    enyuan_0: {},
    enyuan_1: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_11" ], _type: "P_Hurt_Back_Over_No_Fs" },
            _effect_from: { _type: "P_EnYuan_Effect_From0" },
            _effect_from1: { _type: "P_EnYuan_Effect_From1" },
            _effect_to: { _type: "P_EnYuan_Effect_To" },
            _buff_to: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ], _type: "P_Atk_Add_To_FS" }
        }
    },
    enyuan_v4_0: {},
    enyuan_v4_1: {
        extend: "enyuan_1",
        _attack: { _buff_to1: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_10" ], _type: "P_Atk_Sub_To_NOT_FS" } }
    },
    enyuan_v5_0: { extend: "enyuan_v4_0" },
    enyuan_v5_1: { extend: "enyuan_v4_1" },
    xinsheng_0: {},
    xinsheng_1: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_11" ], _type: null },
            _effect_from: { _type: "P_XinSheng_Effect_From" },
            _effect_to: null
        }
    },
    fangzhu_0: {},
    fangzhu_1: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_3" ], _type: "P_Hurt_Fly_Over" },
            _effect_from: { _type: "P_FangZhu_Effect_From" },
            _effect_to: { _type: "P_FangZhu_Effect_To" }
        }
    },
    fangzhu_v4_0: {},
    fangzhu_v4_1: {
        extend: "fangzhu_1",
        _attack: {
            _effect_to1: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_3" ], _type: "P_Def_Sub_To" },
            _effect_to2: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_3" ], _type: "P_BuffSub_Effect_To" }
        }
    },
    tianxiang_0: { _black_begin: "P_BlackHalfBegin", _name: "P_Super_Skill" },
    tianxiang_1: {
        _black_begin: "P_Color_Revert_All",
        _main: { type: "Spawn", _effect: "P_TianXiang_Effect_To", _hurt: "P_Hurt_Fly_Over" },
        _backup: "P_Hurt_Backup_Death",
        _black_end: "P_BlackHalfEnd"
    },
    tianxiang_v3_0: { extend: "tianxiang_0" },
    tianxiang_v3_1: { extend: "tianxiang_1", _main: { _effect: "P_TianXiangV3_Effect_To" } },
    tianxiang_v5_0: { extend: "tianxiang_v3_0" },
    tianxiang_v5_1: {
        extend: "tianxiang_v3_1",
        _main: {
            _atk_def: { _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_1" ], _effect: "P_AtkDef_Sub_To" },
            _down: { _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_2" ], _effect: "P_BuffSub_Effect_To" }
        }
    },
    liuli_0: { extend: "tianxiang_0" },
    liuli_1: { extend: "tianxiang_1" },
    dujin_0: { extend: "tianxiang_0" },
    dujin_1: {
        extend: "tianxiang_1",
        _main: { _effect: "P_DuJin_Effect_To", _hurt: [ "P_Delay_Frame_4", "P_Hurt_Back_Over" ] }
    },
    yizhong: {},
    yizhong_0: { _black_begin: "P_BlackHalfBegin", _name: "P_Super_Skill" },
    yizhong_1: { _black_end: "P_BlackHalfEnd" },
    huitian: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Normal_Skill_Yellow",
        _main: {
            type: "Spawn",
            _effect_form0: "P_HuiTian_Effect_From0",
            _effect_form1: "P_HuiTian_Effect_From1",
            _effect1: [ "P_Delay_Frame_6", "P_Ghost_Live_From" ],
            _effect_from_cure: [ "P_Delay_Frame_11", "P_Delay_Frame_11", "P_Hp_Add_From" ]
        },
        _black_end: "P_BlackHalfEnd"
    },
    niepan: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Super_Skill",
        _main: {
            type: "Spawn",
            _effect: "P_NiePan_Effect_From",
            _effect1: [ "P_Delay_Frame_6", "P_Ghost_Live_From" ],
            _effect_from_cure: [ "P_Delay_Frame_11", "P_Delay_Frame_11", "P_Hp_Add_From" ]
        },
        _black_end: "P_BlackHalfEnd"
    },
    niepan_0: { _black_begin: "P_BlackHalfBegin", _name: "P_Super_Skill" },
    niepan_1: {
        extend: "niepan",
        _black_begin: null,
        _name: null,
        _main: { _effect_from_cure: [ "P_Delay_Frame_11", "P_Delay_Frame_11", "P_Atk_Add_From" ] }
    },
    jiushi: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Super_Skill",
        _main: {
            type: "Spawn",
            _effect_form: "P_JiuShi_Effect_From",
            _effect2: [ "P_Delay_Frame_6", "P_Ghost_Live_From" ],
            _effect_1: [ "P_Delay_Frame_26", "P_Delay_Frame_2", "P_Def_Sub_From" ],
            _effect_atkUp: [ "P_Delay_Frame_26", "P_Delay_Frame_2", "P_Atk_Add_From" ],
            _effect_hp: [ "P_Delay_Frame_26", "P_Delay_Frame_2", "P_Hp_Add_From" ]
        },
        _black_end: "P_BlackHalfEnd"
    },
    jiushi_0: { _black_begin: "P_BlackHalfBegin", _name: "P_Super_Skill" },
    jiushi_1: {
        extend: "jiushi",
        _black_begin: null,
        _name: null,
        _main: { _effect_from_cure: [ "P_JiuShi_Effect_From1" ], _effect_hp: null }
    },
    baiyin_jiuyuan2: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "P_BaiYin_Effect_From_Mid" },
            _effect_to: { _delay: null, _type: null },
            _effect_from1: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ], _type: "P_JiuYuan_Effect_From01" },
            _effect_from_cure: [ "P_Delay_Frame_30", "P_Delay_Frame_30", "P_Delay_Frame_11", "P_Delay_Frame_2", "P_Atk_Add_From" ]
        }
    },
    jiuyuan: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Super_Skill",
        _main: {
            type: "Spawn",
            _effect: "P_JiuYuan_Effect_From02",
            _effect_from_cure: [ "P_Delay_Frame_30", "P_Delay_Frame_11", "P_Delay_Frame_2", "P_Hp_Add_From" ]
        },
        _black_end: "P_BlackHalfEnd"
    },
    jiuyuan_0: { _black_begin: "P_BlackHalfBegin", _name: "P_Super_Skill" },
    jiuyuan_1: {
        _black_begin: null,
        _name: null,
        _main: {
            type: "Spawn",
            _effect: "P_JiuYuan_Effect_From01",
            _effect_from_cure: [ "P_Delay_Frame_30", "P_Delay_Frame_11", "P_Delay_Frame_2", "P_Atk_Add_From" ],
            _effect_from_cure1: [ "P_Delay_Frame_30", "P_Delay_Frame_11", "P_Delay_Frame_2", "P_Hp_Add_From_By_Cure" ]
        },
        _black_end: "P_BlackHalfEnd"
    },
    jiuyuan_v3_0: { _black_begin: "P_BlackHalfBegin", _name: "P_Super_Skill" },
    jiuyuan_v3_1: {
        _black_begin: null,
        _name: null,
        _main: {
            type: "Spawn",
            _effect: "P_JiuYuan_Effect_From01",
            _effect_from_cure: [ "P_Delay_Frame_30", "P_Delay_Frame_11", "P_Delay_Frame_2", "P_Atk_Add_From" ],
            _effect_from_cure1: [ "P_Delay_Frame_30", "P_Delay_Frame_11", "P_Delay_Frame_2", "P_Hp_Add_From_By_Cure" ],
            _effect_to: [ "P_Delay_Frame_30", "P_Delay_Frame_11", "P_Delay_Frame_2", "P_Hp_Add_To_FS" ]
        },
        _black_end: "P_BlackHalfEnd"
    },
    jiuyuan_v3: {
        _black_begin: null,
        _name: null,
        _main: {
            type: "Spawn",
            _effect: "P_JiuYuan_Effect_From01",
            _effect_from_cure: [ "P_Delay_Frame_30", "P_Delay_Frame_11", "P_Delay_Frame_2", "P_Atk_Add_From" ],
            _effect_from_cure1: [ "P_Delay_Frame_30", "P_Delay_Frame_11", "P_Delay_Frame_2", "P_Hp_Add_From_By_Cure" ],
            _effect_to: [ "P_Delay_Frame_30", "P_Delay_Frame_11", "P_Delay_Frame_2", "P_Hp_Add_To_FS" ]
        },
        _black_end: "P_BlackHalfEnd"
    },
    jiuyuan_v4_0: { extend: "jiuyuan_v3_0" },
    jiuyuan_v4_1: { extend: "jiuyuan_v3_1" },
    jiuyuan_v4: { extend: "jiuyuan_v3" },
    jiuyuan_v5_0: { extend: "jiuyuan_v3_0" },
    jiuyuan_v5_1: { extend: "jiuyuan_v3_1" },
    jiuyuan_v5: { extend: "jiuyuan_v3" },
    tiannian: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_4", "P_Delay_Frame_4" ], _type: "P_Hp_Add_To_FS" }
        }
    },
    buqu_0: { _black_begin: "P_BlackHalfBegin", _name: "P_Super_Skill" },
    buqu_1: { _black_end: "P_BlackHalfEnd" },
    buqu: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Super_Skill",
        _effect_from: "P_BuQu_Effect_From",
        _black_end: "P_BlackHalfEnd"
    },
    juejing: {
        extend: "template.T_SS",
        _attack: {
            type: "Spawn",
            _effect_from: { extend: null },
            _hurt: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_3", "P_Delay_Frame_2" ],
                _type: "P_Hurt_Back_OnSkillEnd",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 17 }
            },
            _effect_to: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_3" ],
                _type: "P_JueJing_Hit",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 17 }
            }
        }
    },
    huoshou: {
        _attack: {
            type: "Spawn",
            _effect_from: { extend: null },
            _hurt: { _delay: null, _type: null },
            _effect_to: { _delay: null, _type: null }
        }
    },
    huojian: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _effect_from: { extend: null, _type: null },
            _effect: { _delay: null, _type: null },
            _hurt: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_11", "P_Delay_Frame_3" ],
                _type: "P_Hurt_Back_OnSkillEnd",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 17 }
            },
            _effect_to: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_3" ],
                _type: "P_QinYin_Effect_To01",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 17 }
            },
            _effect_to_yinran: { _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_20" ], _type: "P_HuoYan_Begin" }
        }
    },
    huojian_2: { extend: "huojian", _name: null },
    qinyin_extra: {
        _attack_before: "P_temporaryVisableStart",
        _attack: {
            type: "Spawn",
            _effect_from: { extend: [ "P_Delay_Frame_26", "P_Delay_Frame_3" ], _type: "P_QinYin_Effect_To03" },
            _effect: { _delay: null, _type: null },
            _hurt: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_11", "P_Delay_Frame_3" ],
                _type: "P_Hurt_Back_OnSkillEnd"
            },
            _effect_to: { _delay: null, _type: null }
        },
        _attack_after: "P_temporaryVisableEnd"
    },
    huojian_extra: {
        _attack: {
            type: "Spawn",
            _effect_from: { extend: [ "P_Delay_Frame_26", "P_Delay_Frame_3" ], _type: "P_QinYin_Effect_To03" },
            _effect: { _delay: null, _type: null },
            _hurt: {
                _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_11", "P_Delay_Frame_3" ],
                _type: "P_Hurt_Back_OnSkillEnd"
            },
            _effect_to: { _delay: null, _type: null }
        }
    }
});
