// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/SkillAbsorb.js:1
// source line 63, bytecode pc 597
xs.Utils.extendScope(xs.Cfg.Skill, {
    guixin_TEST: { extend: "template.T_Absorb_Atk_0" },
    jianxiong_0: {},
    jianxiong_1: {
        extend: "template.T_Buff_Super",
        _attack: {
            type: "Spawn",
            _effect_from: { _type: "P_JianXiong_Effect_From" },
            _effect_to: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_7" ], _type: "P_JianXiong_Effect_To" },
            _buff_from: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_7" ], _type: "P_Atk_Add_From" },
            _buff_to: {
                _delay: [
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_5"
                ],
                _type: "P_Atk_Sub_To"
            },
            _sub: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_7" ], _absorb: "P_Absorb_Tmp_To2From" }
        }
    },
    yiji_0: {},
    yiji_1: {
        extend: "template.T_Buff_Super",
        _attack: {
            type: "Spawn",
            _effect_from: { _type: "P_YiJi_Effect_From" },
            _effect_to: {
                _delay: [
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_5",
                    "P_Delay_Frame_4"
                ],
                _type: "P_YiJi_Effect_To"
            },
            _buff_to: {
                _delay: [
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_4"
                ],
                _type: "P_Def_Add_To"
            }
        }
    }
});
