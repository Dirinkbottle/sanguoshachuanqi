// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/SkillStatus.js:1
// source line 417, bytecode pc 3038
xs.Utils.extendScope(xs.Cfg.Skill, {
    le_add: "P_Le_Begin",
    le_end: "P_Le_End",
    feng_add: "P_Feng_Begin",
    feng_end: "P_Feng_End",
    freeze_end: "P_Freeze_End",
    lock_add: "P_Lock_Begin",
    lock_end: "P_Lock_End",
    yun_add: "P_Yun_Begin",
    yun_event_add: "P_Yun_Begin_HY",
    yun_end: "P_Yun_End",
    fu_add: "P_Fu_Begin",
    fu_end: "P_Fu_End",
    nuyan_add: "P_Nuyan_Begin_Backup",
    nuyan_end: "P_Nuyan_End",
    nuyan_backup_add: "P_NuYan_Backup_Add",
    nuyan_backup_end: "P_NuYan_Backup_Remove",
    guixin_1_end: "P_GuiXin_1_End",
    guixin_2_end: "P_GuiXin_2_End",
    guixin_3_end: "P_GuiXin_3_End",
    guixin_4_end: "P_GuiXin_4_End",
    guixin_5_end: "P_GuiXin_5_End",
    turn_over_add: "P_JuShou_Begin",
    turn_over_end: "P_JuShou_End",
    blood_pool_add: "P_XueChi_Begin",
    blood_pool_end: "P_XueChi_End_Blood",
    tiannian_1_end: "P_TianNian_1_End",
    tiannian_2_end: "P_TianNian_2_End",
    tiannian_3_end: "P_TianNian_3_End",
    tiannian_4_end: "P_TianNian_4_End",
    tiannian_5_end: "P_TianNian_5_End",
    xiaoyong_1_end: "P_XiaoYong_1_End",
    xiaoyong_2_end: "P_XiaoYong_2_End",
    xiaoyong_3_end: "P_XiaoYong_3_End",
    xiaoyong_4_end: "P_XiaoYong_4_End",
    xiaoyong_5_end: "P_XiaoYong_5_End",
    xiaoyong_6_end: "P_XiaoYong_6_End",
    xiaoyong_7_end: "P_XiaoYong_7_End",
    xiaoyong_8_end: "P_XiaoYong_8_End",
    xiaoyong_9_end: "P_XiaoYong_9_End",
    star_1_end: "P_Star_1_End",
    star_2_end: "P_Star_2_End",
    star_3_end: "P_Star_3_End",
    star_4_end: "P_Star_4_End",
    star_5_end: "P_Star_5_End",
    star_6_end: "P_Star_6_End",
    star_7_end: "P_Star_7_End",
    star_8_end: "P_Star_8_End",
    star_9_end: "P_Star_9_End",
    juejing_dun_end: "P_JueJingDun_End",
    pojia_end: "P_PoJia_End",
    xuruo_end: "P_XuRuo_End",
    fanji_end: "P_FanJi_End",
    zhuiji_end: "P_ZhuiJi_End",
    yinran_end: "P_HuoYan_End",
    jueqing: {
        extend: "template.T_Proximal_MoveFst_SS",
        _attack0: { _type: "P_JueQing_Effect_From" },
        _attack1: {
            type: "Spawn",
            _hurt: { _type: "P_Hurt_Normal_Over" },
            _effect_to: { _type: [ "P_JueQing_Effect_To" ] },
            _effect_from: { _type: null }
        }
    },
    qixi: {
        extend: "template.T_Proximal_MoveFst_SS",
        _attack0: null,
        _attack1: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_1" ], _type: "P_Hurt_Back_Over" },
            _buff: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_1" ], _type: "P_Def_Sub_To" },
            _effect_to: null,
            _effect_from: "P_QiXi_Effect_From"
        }
    },
    qixi_v3: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_1" ], _type: "P_Hurt_Back_Over" },
            _buff: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_1" ], _type: "P_Def_Sub_ToByDef" },
            _effect_from1: { _delay: [ "P_Delay_Frame_2" ], _type: "P_Hide_From_Begin" },
            _effect_from2: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_7", "P_Delay_Frame_2" ], _type: "P_Hide_From_End" },
            _effect_to: { _delay: null, _type: "P_QiXi_Effect_to0", _black_end: "P_SS_BG_End" }
        }
    },
    fanjian: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Back_Over" },
            _effect_from: { _delay: null, _type: "P_FanJian_Effect_From" },
            _effect_to: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_5", "P_Delay_Frame_1" ],
                _type: "P_FanJian_Effect_To"
            }
        }
    },
    fanjian_v4: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: {
                _delay: null,
                _type: "P_Hurt_Back_Over_No_FJ",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 24 }
            },
            _effect_from: { _delay: null, _type: "P_FanJian_Effect_From" },
            _effect_to1: {
                _delay: null,
                _type: "P_FanJian_Effect_To",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 13 }
            },
            _effect_to2: {
                _delay: null,
                _type: "P_FanJian_Effect_To_Second",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 24 }
            }
        }
    },
    fanjian_v4_continue: {
        _attack: {
            type: "Spawn",
            _hurt: {
                _delay: null,
                _type: "P_Hurt_Back_Over_No_FJ",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 24 }
            },
            _effect_to2: {
                _delay: null,
                _type: "P_FanJian_Effect_To_Second",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random, effectDuration: 24 }
            }
        }
    },
    fanjian_v5: { extend: "fanjian_v4" },
    guose: {
        extend: "template.T_Remote_SS",
        _attack_before: "P_GuoSe_Effect_From",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_1" ], _type: "P_Hurt_Normal_Over" },
            _effect_to: { _delay: null, _type: [ "P_GuoSe_Effect_To" ] },
            _effect_from: { _delay: null, _type: null }
        }
    },
    quanji_after: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_30" ], _type: "P_Hurt_Back_Over_No_Fs" },
            _effect_from: { _delay: null, _type: "P_Nuyan_Effect_From" },
            _effect_to1: {
                _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_46" ],
                _type: [ "P_Nuyan_Effect_To", "P_Nuyan_End_Boom" ]
            },
            _effect_from1: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_46" ], _type: [ "P_Hp_Add_To_FS" ] }
        }
    },
    quanji_getdmg: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to1: { _delay: null, _type: [ "P_Nuyan_Begin_QJ" ] }
        }
    },
    luanwu_v5: {
        extend: "template.T_Remote_SS",
        property: { hps: { type: xs.Constant_FightScene_HpsType_Average }, loopNum: 6 },
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _hurt0: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_1" ], _type: "P_Hurt_Hit_NoFs", params: { idx: 0 } },
            _hurt1: { _delay: [ "P_Delay_Frame_37" ], _type: "P_Hurt_Hit_NoFs", params: { idx: 1 } },
            _hurt2: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_6" ], _type: "P_Hurt_Hit_NoFs", params: { idx: 2 } },
            _hurt3: { _delay: [ "P_Delay_Frame_46", "P_Delay_Frame_3" ], _type: "P_Hurt_Hit_NoFs", params: { idx: 3 } },
            _hurt4: { _delay: [ "P_Delay_Frame_55" ], _type: "P_Hurt_Hit_NoFs", params: { idx: 4 } },
            _hurt5: {
                _delay: [ "P_Delay_Frame_55", "P_Delay_Frame_4", "P_Delay_Frame_4" ],
                _type: "P_Hurt_Fly_Over_NO_FS",
                params: { idx: 5 }
            },
            _effect: { _delay: null, _type: null },
            _effect_from0: { _delay: null, _type: "P_LuanWu_Effect_From0" },
            _effect_from1: { _delay: null, _type: "P_LuanWu_Effect_From1" },
            _effect_to: { _delay: null, _type: "P_LuanWu_Effect_To_NFS" },
            _effect_to1: {
                _delay: [ "P_Delay_Frame_55", "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_10" ],
                _type: "P_Nuyan_Begin_QJ"
            },
            _effect_to2: { _delay: null, _type: [ "P_Nuyan_Effect_To", "P_Nuyan_End_Boom" ] },
            _effect_from2: {
                _delay: [ "P_Delay_Frame_55", "P_Delay_Frame_10", "P_Delay_Frame_10" ],
                _type: [ "P_Hp_Add_To_FS" ]
            }
        }
    }
});
