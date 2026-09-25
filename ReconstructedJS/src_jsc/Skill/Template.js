// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/Template.js:1
// source line 352, bytecode pc 2657
(xs.Cfg.Skill.template = {
    T_Status: {},
    T_Status_0: {},
    T_Status_1: {},
    T_From_Buff_Atk_Add_0: { "0": "super_skill", "1": "P_Atk_Add_From" },
    T_From_Buff_Atk_Add_1: { "0": "P_Normal_Skill", "1": "P_Atk_Add_From" },
    T_To_Buff_Atk_Add_0: { "0": "super_skill", "1": "P_Atk_Add_To" },
    T_To_Buff_Atk_Add_1: { "0": "P_Normal_Skill", "1": "P_Atk_Add_To" },
    T_From_Buff_Atk_Sub_0: { "0": "super_skill", "1": "P_Atk_Sub_From" },
    T_From_Buff_Atk_Sub_1: { "0": "P_Normal_Skill", "1": "P_Atk_Sub_From" },
    T_To_Buff_Atk_Sub_0: { "0": "super_skill", "1": "P_Atk_Sub_To" },
    T_To_Buff_Atk_Sub_1: { "0": "P_Normal_Skill", "1": "P_Atk_Sub_To" },
    T_From_Buff_Int_Add_0: { "0": "super_skill", "1": "P_Int_Add_From" },
    T_From_Buff_Int_Add_1: { "0": "P_Normal_Skill", "1": "P_Int_Add_From" },
    T_To_Buff_Int_Add_0: { "0": "super_skill", "1": "P_Int_Add_To" },
    T_To_Buff_Int_Add_1: { "0": "P_Normal_Skill", "1": "P_Int_Add_To" },
    T_From_Buff_Int_Sub_0: { "0": "super_skill", "1": "P_Int_Sub_From" },
    T_From_Buff_Int_Sub_1: { "0": "P_Normal_Skill", "1": "P_Int_Sub_From" },
    T_To_Buff_Int_Sub_0: { "0": "super_skill", "1": "P_Int_Sub_To" },
    T_To_Buff_Int_Sub_1: { "0": "P_Normal_Skill", "1": "P_Int_Sub_To" },
    T_From_Buff_Def_Add_0: { "0": "super_skill", "1": "P_Def_Add_From" },
    T_From_Buff_Def_Add_1: { "0": "P_Normal_Skill", "1": "P_Def_Add_From" },
    T_To_Buff_Def_Add_0: { "0": "super_skill", "1": "P_Def_Add_To" },
    T_To_Buff_Def_Add_1: { "0": "P_Normal_Skill", "1": "P_Def_Add_To" },
    T_From_Buff_Def_Sub_0: { "0": "super_skill", "1": "P_Def_Sub_From" },
    T_From_Buff_Def_Sub_1: { "0": "P_Normal_Skill", "1": "P_Def_Sub_From" },
    T_To_Buff_Def_Sub_0: { "0": "super_skill", "1": "P_Def_Sub_To" },
    T_To_Buff_Def_Sub_1: { "0": "P_Normal_Skill", "1": "P_Def_Sub_To" },
    T_From_Cure_0: { "0": "super_skill", "1": "P_Cure_From" },
    T_From_Cure_1: { "0": "P_Normal_Skill", "1": "P_Cure_From" },
    T_To_Cure_0: { "0": "super_skill", "1": "P_Cure_To" },
    T_To_Cure_1: { "0": "P_Normal_Skill", "1": "P_Hp_Add_To" },
    T_Cure_From_1: { "0": "P_Normal_Skill", "1": "P_Cure_From" },
    T_Absorb_0: {
        _name: "P_Normal_Skill",
        _sub: { type: "Spawn", _tmp: "P_Absorb_Tmp_To2From", _buff: "P_Atk_Sub_To" },
        _add: "P_Atk_Add_From"
    },
    T_Absorb_Atk_0: { extend: "template.T_Absorb_0" },
    T_Absorb_Def_0: { extend: "template.T_Absorb_0", _sub: { _buff: "P_Def_Sub_To" }, _add: "P_Def_Add_From" },
    T_Remote_SS: {
        _black_begin: "P_SS_BG_Begin",
        _name: "P_SS_Skill",
        _attack_before: null,
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "override T_Remote_SS" },
            _effect: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: null, _type: null, _black_end: "P_SS_BG_End" }
        },
        _backup: "P_Hurt_Backup_Death"
    },
    T_Remote_Super: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Super_Skill",
        _attack_before: null,
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "override T_Remote_Super" },
            _effect: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "override T_Remote_Super" },
            _effect_to: { _delay: null, _type: "override T_Remote_Super" }
        },
        _attack_after: null,
        _backup: "P_Hurt_Backup_Death",
        _black_end: "P_BlackHalfEnd"
    },
    T_Remote_Normal: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Normal_Skill",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Over" },
            _effect: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "override T_Remote_0" },
            _effect_to: { _delay: null, _type: "override T_Remote_0" }
        },
        _backup: "P_Hurt_Backup_Death",
        _black_end: "P_BlackHalfEnd"
    },
    T_Remote_0: {
        _black_begin: "P_BlackBegin",
        _name: "P_Normal_Skill",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Over" },
            _effect: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "override T_Remote_0" },
            _effect_to: { _delay: null, _type: "override T_Remote_0" }
        },
        _backup: "P_Hurt_Backup_Death",
        _black_end: "P_BlackEnd"
    },
    T_Super: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Super_Skill",
        _main: null,
        _black_end: "P_BlackHalfEnd"
    },
    T_SS: {
        _black_begin: "P_SS_BG_Begin",
        _name: "P_SS_Skill",
        _main_before: null,
        _main: null,
        _main_after: null,
        _black_end: "P_SS_BG_End"
    },
    T_SS_MoveFst: {
        _move: "P_Move",
        _black_begin: "P_SS_BG_Begin",
        _name: "P_SS_Skill",
        _main_before: null,
        _main: null,
        _main_after: null,
        _back: "P_Back",
        _black_end: "P_SS_BG_End"
    },
    T_Buff_Super: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Super_Skill",
        _attack: {
            type: "Spawn",
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: null, _type: null },
            _buff_from: { _delay: null, _type: null },
            _buff_to: { _delay: null, _type: null }
        },
        _backup: "P_Hurt_Backup_Death",
        _black_end: "P_BlackHalfEnd"
    },
    T_Buff_Normal: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_Normal_Skill",
        _main: {
            type: "Spawn",
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: null, _type: null },
            _buff_from: { _delay: null, _type: null },
            _buff_to: { _delay: null, _type: null }
        },
        _main_after: null,
        _backup: "P_Hurt_Backup_Death",
        _black_end: "P_BlackHalfEnd"
    },
    T_Proximal_NameFst_0: {
        _name: "P_Normal_Skill",
        _move: "P_Move",
        _hit: { type: "Spawn", _hurt: { _delay: null, _type: null }, _effect: { _delay: null, _type: null } },
        _attack: { type: "Spawn", _hurt: { _delay: null, _type: null }, _effect: { _delay: null, _type: null } },
        _back: "P_Back"
    },
    T_Proximal_MoveFst_SS: {
        _move: "P_Move",
        _black_begin: "P_SS_BG_Begin",
        _name: "P_SS_Skill",
        _attack0: { _delay: null, _type: "T_Proximal_MoveFst_SS._effect_from override" },
        _attack1: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "T_Proximal_MoveFst_SS._hurt" },
            _effect_to: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "T_Proximal_MoveFst_SS" }
        },
        _backup: null,
        _back: "P_Back",
        _black_end: "P_SS_BG_End"
    },
    T_GhostAttack_Super: {
        _black_begin: "P_BlackHalfBegin",
        _name: "P_SS_Skill",
        _main_before: null,
        _main: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Normal_Over" },
            _effect_to: { _delay: null, _type: "override T_GhostAttack_Super" }
        },
        _main_after: null,
        _black_end: "P_BlackHalfEnd"
    }
});
