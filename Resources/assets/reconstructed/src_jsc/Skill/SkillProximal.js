// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/SkillProximal.js:1
// source line 204, bytecode pc 1406
xs.Utils.extendScope(xs.Cfg.Skill, {
    luoyi: {
        extend: "template.T_Proximal_MoveFst_SS",
        _attack0: { _type: "P_LuoYi_Effect_From" },
        _attack1: {
            _hurt: { _type: "P_Hurt_Flat_Over" },
            _effect_to: { _type: "P_LuoYi_Effect_To" },
            _effect_from: { _type: null }
        }
    },
    kuanggu: {
        extend: "template.T_Proximal_MoveFst_SS",
        _attack0: { _delay: null, _type: null },
        _attack1: {
            type: "Spawn",
            _hurt: { _delay: "P_Delay_Frame_10", _type: "P_Hurt_Fly_Over_NFS" },
            _effect_to: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_5", "P_Delay_Frame_3" ], _type: "P_Hp_Add_From" },
            _effect_to1: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_5", "P_Delay_Frame_3" ], _type: "P_Hp_Add_To_FS" },
            _effect_from: { _type: "P_KuangGu_Effect_From" }
        }
    },
    shixue: { extend: "kuanggu" },
    duanliang: {
        extend: "template.T_Proximal_MoveFst_SS",
        _attack0: { _delay: null, _type: null },
        _attack1: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_11", "P_Delay_Frame_5" ], _type: "P_Hurt_Fly_Over" },
            _effect_to: { _type: "P_DuanLiang_Effect_To" },
            _effect_to1: { _delay: [ "P_Delay_Frame_11", "P_Delay_Frame_5" ], _type: "P_Treat_Sub_To" },
            _effect_from: { _type: "P_DuanLiang_Effect_From" }
        }
    },
    mo_kurou: {},
    mo_kurou_0: {
        extend: "template.T_Remote_SS",
        _black_begin: null,
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_to: { _delay: null, _type: null, _black_end: null },
            _effect_from: { _type: null }
        }
    },
    mo_kurou_1: {
        extend: "template.T_Remote_SS",
        property: { hps: { type: xs.Constant_FightScene_HpsType_Average }, loopNum: 2 },
        _name: null,
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _hurt0: { _delay: "P_Delay_Frame_4", _type: "P_Hurt_Hit_Higher", params: { idx: 0 } },
            _hurt1: {
                _delay: "P_Delay_Frame_10",
                _type: [ "P_Higher_Over_Revert", "P_Hurt_Back_Over" ],
                params: { idx: 1 }
            },
            _effect_to: { _delay: null, _type: [ "P_MoKuRou_Effect_To" ] },
            _effect_from: { _type: [ "P_MoKuRou_Effect_From0" ] },
            _buff_to: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_6", "P_Delay_Frame_3" ], _type: "P_Def_Add_To" }
        }
    },
    mo_kurou_2: {
        extend: "template.T_Proximal_MoveFst_SS",
        _name: null,
        _attack0: { _delay: null, _type: null },
        _attack1: {
            type: "Spawn",
            _hurt: { _delay: "P_Delay_Frame_6", _type: "P_Hurt_Fly_Over" },
            _effect_to: { _delay: null, _type: null },
            _effect_from: { _type: "P_MoKuRou_Effect_From1" }
        }
    },
    mo_leiji: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_11" ], _type: "P_Hurt_Back_Over" },
            _effect_from: { _type: { type: "Spawn", _0: "P_Mo_LeiJi_Effect_From0", _1: "P_Mo_LeiJi_Effect_From1" } },
            _effect_to: { _type: "P_Mo_LeiJi_Effect_To" }
        }
    }
});
