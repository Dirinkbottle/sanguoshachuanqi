// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/SkillGhost.js:1
// source line 184, bytecode pc 1145
xs.Utils.extendScope(xs.Cfg.Skill, {
    duanchang: {
        extend: "template.T_GhostAttack_Super",
        _main: {
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_4" ], _type: "P_Hurt_Normal_Over" },
            _effect_to: { _type: [ "P_Ghost_Sword_Effect_To" ] }
        }
    },
    wuhun: {
        extend: "template.T_GhostAttack_Super",
        _main_before: { type: "Spawn", "0": "P_Effect_WuHun_From_Far", "1": "P_Effect_WuHun_From" },
        _main: {
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_4" ], _type: "P_Hurt_Fly_Over" },
            _effect_to: { _type: "P_Ghost_Knife_Effect_To" }
        }
    },
    zhenlie: {
        extend: "template.T_GhostAttack_Super",
        _main: {
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_4" ], _type: "P_Hurt_Back_Over" },
            _effect_to: { _type: "P_Ghost_Sword_Effect_To" }
        }
    },
    jianwu: { extend: "zhenlie" },
    choushu: {
        extend: "template.T_GhostAttack_Super",
        _main: {
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_5" ], _type: "P_Hurt_Back_Over" },
            _effect_to: { _type: "P_Ghost_Claw_Effect_To" }
        }
    },
    xuanlie: { extend: "choushu" },
    shiduan: {
        extend: "template.T_GhostAttack_Super",
        _main: {
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_4" ], _type: "P_Hurt_Back_Over" },
            _effect_to: { _type: "P_Ghost_Chopper_Effect_To" }
        }
    },
    kangkai: { extend: "shiduan" },
    shushen: {
        extend: "template.T_GhostAttack_Super",
        _main: {
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_10" ], _type: "P_Hurt_Back_Over" },
            _effect_to: { _type: "P_Ghost_Pike_Effect_To" }
        }
    },
    yongjue: {
        extend: "template.T_GhostAttack_Super",
        _main: {
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_10" ], _type: "P_Hurt_Back_Over" },
            _effect_to: { _type: "P_Ghost_Spear_Effect_To" }
        }
    },
    duanbing: {
        extend: "template.T_GhostAttack_Super",
        _main: {
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_5", "P_Delay_Frame_3" ], _type: "P_Hurt_Fly_Over" },
            _effect_to: { _type: "P_Ghost_Knife_Effect_To" }
        }
    },
    chengzhi: {
        extend: "template.T_GhostAttack_Super",
        _main: { _hurt: { _type: "P_Hurt_Flat_Over" }, _effect_to: { _type: "P_Ghost_Hammer_Effect_To" } }
    },
    sijian: {
        extend: "template.T_GhostAttack_Super",
        _main: { _hurt: { _type: "P_Hurt_Flat_Over" }, _effect_to: { _type: "P_Ghost_Axe_Effect_To" } }
    },
    enyuan_v5: { extend: "zhenlie" }
});
