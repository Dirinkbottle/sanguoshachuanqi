// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/SkillBuff.js:1
// source line 322, bytecode pc 1846
xs.Utils.extendScope(xs.Cfg.Skill, {
    fuhun: {
        extend: "template.T_Buff_Normal",
        _main: {
            type: "Spawn",
            _effect_from: { _type: "P_BuffAdd_Effect_From" },
            _buff_from: { _delay: "P_Delay_Frame_2", _type: "P_Atk_Add_From" }
        }
    },
    suzheng: {
        extend: "template.T_Buff_Normal",
        _main: {
            type: "Spawn",
            _effect_to: { _type: "P_BuffSub_Effect_To" },
            _buff_to: { _type: "P_Def_Sub_To" }
        }
    },
    xiansi: { extend: "suzheng" },
    duodao: {
        extend: "template.T_Buff_Normal",
        _main: {
            type: "Spawn",
            _effect_to: { _type: "P_BuffSub_Effect_To", _absorb: "P_Absorb_Tmp_To2From" },
            _buff_to: { _type: "P_Atk_Sub_To" }
        },
        _main_after: {
            type: "Spawn",
            _effect_from: { _type: "P_BuffAdd_Effect_From" },
            _buff_from: { _delay: "P_Delay_Frame_2", _type: "P_Atk_Add_From" }
        }
    },
    guijue: {
        extend: "template.T_Buff_Normal",
        _main: {
            type: "Spawn",
            _effect_to: { _type: "P_BuffSub_Effect_To", _absorb: "P_Absorb_Tmp_To2From" },
            _buff_to: { _type: "P_Int_Sub_To" }
        },
        _main_after: {
            type: "Spawn",
            _effect_from: { _type: "P_BuffAdd_Effect_From" },
            _buff_from: { _delay: "P_Delay_Frame_2", _type: "P_Int_Add_From" }
        }
    },
    bupo: {
        extend: "template.T_Buff_Normal",
        _name: "P_Normal_Skill_Yellow",
        _main: {
            type: "Spawn",
            _effect_to: { _type: "P_BuffAdd_Effect_From" },
            _buff_to: { _delay: "P_Delay_Frame_2", _type: "P_Def_Add_From" }
        }
    },
    zhongyong: {
        extend: "template.T_Buff_Normal",
        _main: {
            type: "Spawn",
            _effect_to: { _type: "P_BuffAdd_Effect_To" },
            _buff_to: { _delay: "P_Delay_Frame_2", _type: "P_Def_Add_To" }
        }
    },
    shouye: { extend: "zhongyong" },
    zhongyan: {
        extend: "template.T_Buff_Normal",
        _main: {
            type: "Spawn",
            _effect_to: { _type: "P_BuffAdd_Effect_To" },
            _buff_to: { _delay: "P_Delay_Frame_2", _type: "P_Atk_Add_To" }
        }
    },
    yinbing: {
        extend: "template.T_Buff_Normal",
        _main: {
            type: "Spawn",
            _effect_to: { _type: "P_BuffSub_Effect_To" },
            _buff_to: { _type: "P_Atk_Sub_To" }
        }
    },
    junxing: { extend: "yinbing" },
    jiaodou: {
        extend: "template.T_Buff_Normal",
        _main: {
            type: "Spawn",
            _effect_to: { _type: "P_BuffSub_Effect_To" },
            _buff_to: { _type: "P_Int_Sub_To" }
        }
    },
    fuzhou: { extend: "template.T_Buff_Normal", _main: "P_Cure_To" },
    yuanhu: { extend: "template.T_Buff_Normal", _main: "P_Cure_To" },
    juequan: {
        extend: "template.T_Buff_Normal",
        _main: {
            type: "Spawn",
            _effect_to: { _type: "P_BuffAdd_Effect_To" },
            _buff_to: { _type: "P_Def_Add_To" }
        }
    },
    rende: {
        extend: "template.T_Super",
        _main: {
            type: "Spawn",
            _hp_add_from: [ "P_Delay_Frame_30", "P_Delay_Frame_2", "P_Hp_Add_From" ],
            _buff_add_to: [ "P_Delay_Frame_30", "P_Delay_Frame_2", "P_Atk_Add_To" ],
            _effect_to_mid: "P_RenDe_Effect_To_Mid"
        }
    },
    haoshi: {
        extend: "template.T_Buff_Super",
        _attack: {
            _effect_from0: { _type: "P_Haoshi_Effect_Far_Mid_From0" },
            _effect_from1: { _type: "P_Haoshi_Effect_Near_Mid_From1" },
            _buff_to: { _delay: [ "P_Delay_Frame_37" ], _type: "P_Def_Add_To" }
        }
    },
    jieyin: {
        extend: "template.T_Buff_Super",
        _attack: {
            _effect_to: { _type: "P_JieYin_Effect_To" },
            _buff_to: { _delay: "P_Delay_Frame_30", _type: "P_Hp_Add_To" }
        }
    },
    hujia: {
        extend: "template.T_Buff_Super",
        _attack: {
            _effect_to: { _type: "P_HuJia_Effect_To" },
            _buff_to: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_4" ], _type: "P_Atk_Sub_To" },
            _effect_from0: { _type: "P_HuJia_Effect_From0" },
            _effect_from1: { _type: "P_HuJia_Effect_From1" }
        }
    },
    jieyin_v2: {
        extend: "jieyin",
        _attack: { _buff_to1: { _delay: "P_Delay_Frame_50", _type: "P_Atk_Add_To_JieYin" } }
    },
    jieyin_v5: {
        extend: "jieyin_v2",
        _attack: {
            _effect_from: {
                _delay: [ "P_Delay_Frame_68", "P_Delay_Frame_5", "P_Delay_Frame_4" ],
                _type: "P_JieYinV5_Effect_From"
            }
        }
    }
});
