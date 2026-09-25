// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/SkillAttack.js:1
// source line 12, bytecode pc 43
(xs.Cfg.Skill.Attack_Sword_0 = [ "P_Attack_Sword_0", "P_Attack_Sword_1" ]);
// source line 13, bytecode pc 87
(xs.Cfg.Skill.Attack_Chopper_0 = [ "P_Attack_Chopper_0", "P_Attack_Chopper_1" ]);
// source line 14, bytecode pc 131
(xs.Cfg.Skill.Attack_Hammer_0 = [ "P_Attack_Hammer_0", "P_Attack_Hammer_1" ]);
// source line 15, bytecode pc 175
(xs.Cfg.Skill.Attack_Axe_0 = [ "P_Attack_Axe_0", "P_Attack_Axe_1" ]);
// source line 16, bytecode pc 219
(xs.Cfg.Skill.Attack_Claw_0 = [ "P_Attack_Claw_0", "P_Attack_Claw_1" ]);
// source line 17, bytecode pc 263
(xs.Cfg.Skill.Attack_Spear_0 = [ "P_Attack_Spear_0", "P_Attack_Spear_1" ]);
// source line 18, bytecode pc 307
(xs.Cfg.Skill.Attack_Knife_0 = [ "P_Attack_Knife_0", "P_Attack_Knife_1" ]);
// source line 19, bytecode pc 351
(xs.Cfg.Skill.Attack_Pike_0 = [ "P_Attack_Pike_0", "P_Attack_Pike_1" ]);
// source line 20, bytecode pc 386
(xs.Cfg.Skill.Attack_Bow_0 = [ "P_Attack_Bow_0" ]);
// source line 21, bytecode pc 421
(xs.Cfg.Skill.Attack_Fan_0 = [ "P_Attack_Fan_0" ]);
// source line 28, bytecode pc 478
(xs.Cfg.Skill.Attack_Sword_1 = { type: "Spawn", _hurt: "P_Hurt_Normal_Over", _effect: "P_Sword_Effect_From" });
// source line 33, bytecode pc 535
(xs.Cfg.Skill.Attack_Chopper_1 = { type: "Spawn", _hurt: "P_Hurt_Normal_Over", _effect: "P_Chopper_Effect_From" });
// source line 39, bytecode pc 592
(xs.Cfg.Skill.Attack_Hammer_1 = { type: "Spawn", _hurt: "P_Hurt_Normal_Over", _effect: "P_Hammer_Effect_From" });
// source line 44, bytecode pc 649
(xs.Cfg.Skill.Attack_Axe_1 = { type: "Spawn", _hurt: "P_Hurt_Normal_Over", _effect: "P_Axe_Effect_From" });
// source line 50, bytecode pc 706
(xs.Cfg.Skill.Attack_Spear_1 = { type: "Spawn", _hurt: "P_Hurt_Normal_Over", _effect: "P_Spear_Effect_From" });
// source line 55, bytecode pc 763
(xs.Cfg.Skill.Attack_Knife_1 = { type: "Spawn", _hurt: "P_Hurt_Normal_Over", _effect: "P_Knife_Effect_From" });
// source line 60, bytecode pc 820
(xs.Cfg.Skill.Attack_Pike_1 = { type: "Spawn", _hurt: "P_Hurt_Normal_Over", _effect: "P_Pike_Effect_From" });
// source line 66, bytecode pc 886
(xs.Cfg.Skill.Attack_Claw_1 = { type: "Spawn", _hurt: "P_Hurt_Normal_Over", _effect: [ "P_Claw_Effect_From" ] });
// source line 73, bytecode pc 962
(xs.Cfg.Skill.Attack_Bow_1 = {
    type: "Spawn",
    _hurt: [ "P_Hurt_Normal_Over" ],
    _effect_from: "P_Bow_Effect_From",
    _effect_to: "P_Bow_Effect_To"
});
// source line 79, bytecode pc 1038
(xs.Cfg.Skill.Attack_Fan_1 = {
    type: "Spawn",
    _hurt: [ "P_Hurt_Normal_Over" ],
    _effect_from: "P_Fan_Effect_From",
    _effect_to: "P_Fan_Effect_To"
});
// source line 84, bytecode pc 1064
(xs.Cfg.Skill.Attack_Sword_2 = "P_Attack_Sword_3");
// source line 85, bytecode pc 1090
(xs.Cfg.Skill.Attack_Hammer_2 = "P_Attack_Hammer_3");
// source line 87, bytecode pc 1116
(xs.Cfg.Skill.Attack_Claw_2 = "P_Attack_Sword_3");
// source line 89, bytecode pc 1142
(xs.Cfg.Skill.Attack_Spear_2 = "P_Attack_Spear_3");
// source line 90, bytecode pc 1168
(xs.Cfg.Skill.Attack_Knife_2 = "P_Attack_Knife_3");
// source line 91, bytecode pc 1194
(xs.Cfg.Skill.Attack_Pike_2 = "P_Attack_Pike_3");
// source line 92, bytecode pc 1220
(xs.Cfg.Skill.Attack_Chopper_2 = "P_Attack_Chopper_3");
// source line 93, bytecode pc 1246
(xs.Cfg.Skill.Attack_Axe_2 = "P_Attack_Axe_3");
// source line 94, bytecode pc 1273
(xs.Cfg.Skill.Attack_Bow_2 = {});
// source line 95, bytecode pc 1300
(xs.Cfg.Skill.Attack_Fan_2 = {});
// source line 271, bytecode pc 2289
xs.Utils.extendScope(xs.Cfg.Skill, {
    Attack_Sword: {
        extend: "template.T_Sword",
        _name: null,
        _black_begin: null,
        _attack: { _hurt: { _type: "P_Hurt_Normal_Over" } }
    },
    Attack_Hammer: {
        extend: "template.T_Hammer",
        _name: null,
        _black_begin: null,
        _attack: { _hurt: { _type: "P_Hurt_Normal_Over" } }
    },
    Attack_Knife: {
        extend: "template.T_Knife",
        _name: null,
        _black_begin: null,
        _attack: { _hurt: { _type: "P_Hurt_Normal_Over" } }
    },
    Attack_Spear: {
        extend: "template.T_Spear",
        _name: null,
        _black_begin: null,
        _attack: { _hurt: { _type: "P_Hurt_Normal_Over" } }
    },
    Attack_Claw: {
        extend: "template.T_Claw",
        _name: null,
        _black_begin: null,
        _attack: { _hurt: { _type: "P_Hurt_Normal_Over" } }
    },
    Attack_Pike: {
        extend: "template.T_Pike",
        _name: null,
        _black_begin: null,
        _attack: { _hurt: { _type: "P_Hurt_Normal_Over" } }
    },
    Attack_Chopper: {
        extend: "template.T_Chopper",
        _name: null,
        _black_begin: null,
        _attack: { _hurt: { _type: "P_Hurt_Normal_Over" } }
    },
    Attack_Axe: {
        extend: "template.T_Axe",
        _black_begin: null,
        _name: null,
        _attack: { _hurt: { _type: "P_Hurt_Normal_Over" } }
    },
    Attack_Fan: {
        extend: "template.T_Fan",
        _black_begin: null,
        _name: null,
        _attack: { _hurt: { _type: "P_Hurt_Normal_Over" } }
    },
    Attack_Bow: {
        extend: "template.T_Bow",
        _black_begin: null,
        _name: null,
        _attack: { _hurt: { _type: "P_Hurt_Normal_Over" } }
    },
    zhuisha: { extend: "template.T_Sword" },
    shalu: { extend: "template.T_Chopper" },
    xuezhan: { extend: "template.T_Knife" },
    mouhai: { extend: "template.T_Fan" },
    chuanci: { extend: "template.T_Pike" },
    jianyu: { extend: "template.T_Bow" },
    pojia: { extend: "template.T_Axe" },
    kuangfu: {
        extend: "template.T_Axe",
        _attack_after: {
            type: "Spawn",
            _effect_to: { _type: "P_BuffSub_Effect_To" },
            _buff_to: { _type: "P_Atk_Sub_To" }
        }
    },
    zhongzhuang: { extend: "template.T_Hammer" },
    huiqiang: { extend: "template.T_Spear" },
    anxi: { extend: "template.T_Claw" }
});
