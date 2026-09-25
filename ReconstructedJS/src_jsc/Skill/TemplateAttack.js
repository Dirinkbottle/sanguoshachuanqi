// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/TemplateAttack.js:1
// source line 217, bytecode pc 1545
xs.Utils.extendScope(xs.Cfg.Skill.template, {
    T_Sword: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Normal_Skill",
        _appear: "P_Attack_Sword_0",
        _move: "P_Attack_Sword_1",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Back_Over", _black_end: "P_BlackHalfEnd" },
            _effect: { _delay: null, _type: "P_Sword_Effect_From", _back: "P_Attack_Sword_3" }
        }
    },
    T_Chopper: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Normal_Skill",
        _appear: "P_Attack_Chopper_0",
        _move: "P_Attack_Chopper_1",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Back_Over", _black_end: "P_BlackHalfEnd" },
            _effect: { _delay: null, _type: "P_Chopper_Effect_From", _back: "P_Attack_Chopper_3" }
        }
    },
    T_Axe: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Normal_Skill",
        _appear: "P_Attack_Axe_0",
        _move: "P_Attack_Axe_1",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Flat_Over", _black_end: "P_BlackHalfEnd", _back: "P_Attack_Axe_3" },
            _effect: { _delay: null, _type: "P_Axe_Effect_From" }
        },
        _attack_after: null
    },
    T_Hammer: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Normal_Skill",
        _appear: "P_Attack_Hammer_0",
        _move: "P_Attack_Hammer_1",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: "P_Delay_Frame_1", _type: "P_Hurt_Flat_Over", _black_end: "P_BlackHalfEnd" },
            _effect: { _delay: null, _type: "P_Hammer_Effect_From", _back: "P_Attack_Hammer_3" }
        }
    },
    T_Knife: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Normal_Skill",
        _appear: "P_Attack_Knife_0",
        _move: "P_Attack_Knife_1",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Fly_Over", _black_end: "P_BlackHalfEnd" },
            _effect: { _delay: null, _type: "P_Knife_Effect_From", _back: "P_Attack_Knife_3" }
        }
    },
    T_Pike: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Normal_Skill",
        _appear: "P_Attack_Pike_0",
        _move: "P_Attack_Pike_1",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Back_Over", _black_end: "P_BlackHalfEnd" },
            _effect: { _delay: null, _type: "P_Pike_Effect_From", _back: "P_Attack_Pike_3" }
        }
    },
    T_Spear: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Normal_Skill",
        _appear: "P_Attack_Spear_0",
        _move: "P_Attack_Spear_1",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Back_Over", _black_end: "P_BlackHalfEnd" },
            _effect: { _delay: null, _type: "P_Spear_Effect_From", _back: "P_Attack_Spear_3" }
        }
    },
    T_Claw: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Normal_Skill",
        _appear: "P_Attack_Claw_0",
        _move: "P_Attack_Claw_1",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Back_Over", _black_end: "P_BlackHalfEnd" },
            _effect: { _delay: null, _type: "P_Claw_Effect_From", _back: [ "P_Attack_Claw_3", "P_Idle_From" ] }
        }
    },
    T_Fan: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Normal_Skill",
        _appear: "P_Attack_Fan_0",
        _move: null,
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Back_Over", _black_end: "P_BlackHalfEnd" },
            _effect_to: { _type: "P_Fan_Effect_To" },
            _effect_from: { _type: "P_Fan_Effect_From" }
        }
    },
    T_Bow: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Normal_Skill",
        _appear: "P_Attack_Bow_0",
        _move: null,
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Back_Over", _black_end: "P_BlackHalfEnd" },
            _effect_to: { _delay: null, _type: "P_Bow_Effect_To" },
            _effect_from: { _type: "P_Bow_Effect_From" }
        }
    }
});
