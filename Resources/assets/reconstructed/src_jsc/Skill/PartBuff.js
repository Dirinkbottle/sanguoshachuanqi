// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/PartBuff.js:1
// source line 13, bytecode pc 50
(xs.Cfg.Skill.part.P_Cure_To = { extend: [ "template.part.TP_Cure_To" ] });
// source line 19, bytecode pc 101
(xs.Cfg.Skill.part.P_Cure_From = { extend: [ "template.part.TP_Cure_From" ] });
// source line 26, bytecode pc 171
(xs.Cfg.Skill.part.P_Cure_From_Fs = { trigger: [ "fs" ], extend: [ "template.part.TP_Cure_From" ] });
// source line 31, bytecode pc 213
(xs.Cfg.Skill.part.P_BuffAdd_Effect_From = { extend: "template.part.TP_Buff_Add_From" });
// source line 34, bytecode pc 255
(xs.Cfg.Skill.part.P_BuffAdd_Effect_To = { extend: "template.part.TP_Buff_Add_To" });
// source line 36, bytecode pc 287
(xs.Cfg.Skill.part.P_BuffSub_Effect_From = {});
// source line 40, bytecode pc 329
(xs.Cfg.Skill.part.P_BuffSub_Effect_To = { extend: "template.part.TP_Buff_Sub_To" });
// source line 44, bytecode pc 371
(xs.Cfg.Skill.part.P_BuffSub_Effect_ToByNo = { extend: "template.part.TP_Buff_Sub_ToByNo" });
// source line 54, bytecode pc 467
(xs.Cfg.Skill.part.P_Atk_Add_From = {
    extend: "template.part.TP_Buff_From",
    items: { _buff: { timelines: { _play: { aniId: "ani_buff_atk_add" } } } }
});
// source line 69, bytecode pc 593
(xs.Cfg.Skill.part.P_Atk_Add_From_Noatk = {
    extend: "template.part.TP_Buff_From",
    items: {
        _buff: { property: { ignore: [ "noatk" ] }, timelines: { _play: { aniId: "ani_buff_atk_add" } } }
    }
});
// source line 83, bytecode pc 689
(xs.Cfg.Skill.part.P_Atk_Add_To = {
    extend: "template.part.TP_Buff_To",
    items: { _buff: { timelines: { _play: { aniId: "ani_buff_atk_add" } } } }
});
// source line 99, bytecode pc 815
(xs.Cfg.Skill.part.P_Atk_Add_To_JieYin = {
    extend: "template.part.TP_Buff_To",
    property: { ignore: [ "self" ] },
    items: { _buff: { timelines: { _play: { aniId: "ani_buff_atk_add" } } } }
});
// source line 110, bytecode pc 911
(xs.Cfg.Skill.part.P_Int_Add_To = {
    extend: "part.P_Atk_Add_To",
    items: { _buff: { timelines: { _play: { aniId: "ani_buff_int_add" } } } }
});
// source line 121, bytecode pc 1007
(xs.Cfg.Skill.part.P_Int_Add_From = {
    extend: "part.P_Atk_Add_From",
    items: { _buff: { timelines: { _play: { aniId: "ani_buff_int_add" } } } }
});
// source line 137, bytecode pc 1133
(xs.Cfg.Skill.part.P_Int_Add_From_Nowis = {
    extend: "part.P_Atk_Add_From",
    items: {
        _buff: { property: { ignore: [ "nowis" ] }, timelines: { _play: { aniId: "ani_buff_int_add" } } }
    }
});
// source line 150, bytecode pc 1229
(xs.Cfg.Skill.part.P_Def_Add_From = {
    extend: "template.part.TP_Buff_From",
    items: { _buff: { timelines: { _play: { aniId: "ani_buff_def_add" } } } }
});
// source line 163, bytecode pc 1325
(xs.Cfg.Skill.part.P_Def_Add_To = {
    extend: "template.part.TP_Buff_To",
    items: { _buff: { timelines: { _play: { aniId: "ani_buff_def_add" } } } }
});
// source line 180, bytecode pc 1421
(xs.Cfg.Skill.part.P_Def_Sub_To = {
    extend: "template.part.TP_Buff_To",
    items: { _buff: { timelines: { _play: { aniId: "ani_buff_def_sub" } } } }
});
// source line 204, bytecode pc 1517
(xs.Cfg.Skill.part.P_Def_Sub_From = {
    extend: "template.part.TP_Buff_From",
    items: { _buff: { timelines: { _play: { aniId: "ani_buff_def_sub" } } } }
});
// source line 236, bytecode pc 1652
(xs.Cfg.Skill.part.P_Def_Sub_ToByDef = {
    extend: "template.part.TP_Buff_To",
    items: {
        _buff: { property: { ignore: [ "death", "nodef" ] }, timelines: { _play: { aniId: "ani_buff_def_sub" } } }
    }
});
// source line 254, bytecode pc 1748
(xs.Cfg.Skill.part.P_Atk_Sub_To = {
    extend: "template.part.TP_Buff_To",
    items: { _buff: { timelines: { _play: { aniId: "ani_buff_atk_sub" } } } }
});
// source line 269, bytecode pc 1844
(xs.Cfg.Skill.part.P_Atk_Sub_To_NoBak = {
    extend: "template.part.TP_Buff_To_NoBak",
    items: { _buff: { timelines: { _play: { aniId: "ani_buff_atk_sub" } } } }
});
// source line 283, bytecode pc 1940
(xs.Cfg.Skill.part.P_Treat_Sub_To = {
    extend: "template.part.TP_Buff_To",
    items: { _buff: { timelines: { _play: { aniId: "ani_buff_treat_sub" } } } }
});
// source line 302, bytecode pc 2111
(xs.Cfg.Skill.part.P_NuYan_Backup_Add = {
    items: {
        _effect: {
            property: {
                parent: "to",
                type: "armature",
                armatureId: "Arm_Fight_Status_Nuyan",
                belong: "to_tmp",
                ignore: [ "death", "ghost" ]
            },
            timelines: { _delay: null, _play: { type: "AddWeiWuFlag" } }
        }
    }
});
// source line 322, bytecode pc 2282
(xs.Cfg.Skill.part.P_NuYan_Backup_Remove = {
    items: {
        _effect: {
            property: {
                parent: "to",
                type: "armature",
                armatureId: "Arm_Fight_Status_Nuyan",
                belong: "to_tmp",
                ignore: [ "death", "ghost" ]
            },
            timelines: { _delay: null, _play: { type: "RemoveWeiWuFlag" } }
        }
    }
});
// source line 337, bytecode pc 2378
(xs.Cfg.Skill.part.P_Int_Sub_To = {
    extend: "template.part.TP_Buff_To",
    items: { _buff: { timelines: { _play: { aniId: "ani_buff_int_sub" } } } }
});
// source line 350, bytecode pc 2474
(xs.Cfg.Skill.part.P_Int_Sub_From = {
    extend: "template.part.TP_Buff_From",
    items: { _buff: { timelines: { _play: { aniId: "ani_buff_int_sub" } } } }
});
// source line 364, bytecode pc 2570
(xs.Cfg.Skill.part.P_AtkDef_Sub_To = {
    extend: "template.part.TP_Buff_To",
    items: { _buff: { timelines: { _play: { aniId: "ani_buff_atkdef_sub" } } } }
});
// source line 377, bytecode pc 2676
(xs.Cfg.Skill.part.P_Hp_Add_To = {
    items: {
        _text: { extend: "template.item.TI_Text_Cure_To" },
        _to_hp_top: { extend: "template.item.TI_Hp_Add_Top_To" },
        _to_hp_bot: { extend: "template.item.TI_Hp_Add_Bot_To" }
    }
});
// source line 390, bytecode pc 2803
(xs.Cfg.Skill.part.P_Hp_Add_To_FS = {
    items: {
        property: { trigger: "fs" },
        _text: { extend: "template.item.TI_Text_Cure_To" },
        _to_hp_top: { extend: "template.item.TI_Hp_Add_Top_To" },
        _to_hp_bot: { extend: "template.item.TI_Hp_Add_Bot_To" }
    }
});
// source line 403, bytecode pc 2939
(xs.Cfg.Skill.part.P_Hp_Add_To_NOFS = {
    property: { ignore: [ "fs" ] },
    items: {
        _text: { extend: "template.item.TI_Text_Cure_To" },
        _to_hp_top: { extend: "template.item.TI_Hp_Add_Top_To" },
        _to_hp_bot: { extend: "template.item.TI_Hp_Add_Bot_To" }
    }
});
// source line 413, bytecode pc 3045
(xs.Cfg.Skill.part.P_Hp_Add_From = {
    items: {
        _text: { extend: "template.item.TI_Text_Cure_From" },
        _to_hp_top: { extend: "template.item.TI_Hp_Add_Top_From" },
        _to_hp_bot: { extend: "template.item.TI_Hp_Add_Bot_From" }
    }
});
// source line 424, bytecode pc 3151
(xs.Cfg.Skill.part.P_Hp_Add_From_By_Cure = {
    items: {
        _text: { extend: "template.item.TI_Text_Cure_From_ByCure" },
        _to_hp_top: { extend: "template.item.TI_Hp_Add_Top_From" },
        _to_hp_bot: { extend: "template.item.TI_Hp_Add_Bot_From" }
    }
});
// source line 434, bytecode pc 3257
(xs.Cfg.Skill.part.P_Hp_Sub_From = {
    items: {
        _text: { extend: "template.item.TI_Text_Hurt_From" },
        _to_hp_top: { extend: "template.item.TI_Hp_Sub_Top_From" },
        _to_hp_bot: { extend: "template.item.TI_Hp_Sub_Bot_From" }
    }
});
// source line 447, bytecode pc 3383
(xs.Cfg.Skill.part.P_Int_Add_From_NoFail = {
    extend: "part.P_Atk_Add_From",
    items: {
        _buff: { property: { ignore: [ "fail" ] }, timelines: { _play: { aniId: "ani_buff_int_add" } } }
    }
});
// source line 456, bytecode pc 3425
(xs.Cfg.Skill.part.P_LuoShen_Buff_Text_Loop = { extend: "part.P_Int_Add_From" });
// source line 476, bytecode pc 3542
(xs.Cfg.Skill.part.P_DiMeng_a = {
    extend: "part.P_Def_Add_To",
    items: { _buff: { property: { trigger: "dimeng_a" } }, _text: { property: { trigger: "dimeng_a" } } }
});
// source line 493, bytecode pc 3659
(xs.Cfg.Skill.part.P_DiMeng_b = {
    extend: "part.P_Def_Sub_To",
    items: { _buff: { property: { trigger: "dimeng_b" } }, _text: { property: { trigger: "dimeng_b" } } }
});
// source line 502, bytecode pc 3722
(xs.Cfg.Skill.part.P_JianYing_Cure_From = { extend: "part.P_Cure_From", property: { ignore: "nohurt" } });
