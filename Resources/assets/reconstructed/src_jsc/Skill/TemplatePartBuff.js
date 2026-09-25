// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/TemplatePartBuff.js:1
// source line 186, bytecode pc 1402
xs.Utils.extendScope(xs.Cfg.Skill.template.part, {
    TP_Cure_To: {
        items: {
            _effect: {
                extend: "template.item.TI_Arm_To",
                property: { armatureId: "Arm_Treat" },
                timelines: { _play: { aniId: "treat" } }
            },
            _text: { extend: "template.item.TI_Text_Cure_To" },
            _to_hp_top: { extend: "template.item.TI_Hp_Add_Top_To" },
            _to_hp_bot: { extend: "template.item.TI_Hp_Add_Bot_To" }
        }
    },
    TP_Cure_From: {
        extend: "template.part.TP_Cure_To",
        items: {
            _effect: { extend: "template.item.TI_Arm_From" },
            _text: { extend: "template.item.TI_Text_Cure_From" },
            _to_hp_top: { extend: "template.item.TI_Hp_Add_Top_From" },
            _to_hp_bot: { extend: "template.item.TI_Hp_Add_Bot_From" }
        }
    },
    TP_Hurt_From: {
        items: {
            _effect: {
                property: { type: "from", belong: "from", ignore: [ "backup" ] },
                timelines: {
                    _delay: null,
                    _card: {
                        type: "createAction",
                        name: "createPlayAniActions",
                        data: { aniId: "ani_idle", control: { speed: 1 } }
                    }
                }
            },
            _text: { extend: "template.item.TI_Text_Hurt_From" },
            _to_hp_top: { extend: "template.item.TI_Hp_Sub_Top_From" },
            _to_hp_bot: { extend: "template.item.TI_Hp_Sub_Bot_From" }
        }
    },
    TP_Buff_From: {
        items: {
            _buff: {
                extend: "template.item.TI_Arm_Near_From",
                property: { armatureId: "Arm_Fight_SkillName", ignore: [ "death" ], ui: true },
                timelines: { _play: { aniId: "override TP_Buff_From" } }
            }
        }
    },
    TP_Buff_Add_From: {
        items: {
            _buff_effect: {
                extend: "template.item.TI_Arm_From",
                property: { armatureId: "Arm_Fight_Buff", ignore: [ "death" ] },
                timelines: { _play: { aniId: "ani_buff_up" } }
            }
        }
    },
    TP_Buff_To: {
        items: {
            _buff: {
                extend: "template.item.TI_Arm_Near_UI_To",
                property: { armatureId: "Arm_Fight_SkillName", ignore: [ "death" ], ui: true },
                timelines: { _play: { aniId: "override TP_Buff_To" } }
            }
        }
    },
    TP_Buff_To_NoBak: {
        items: {
            _buff: {
                extend: "template.item.TI_Arm_Near_UI_To",
                property: { armatureId: "Arm_Fight_SkillName", ignore: [ "death", "backup" ], ui: true },
                timelines: { _play: { aniId: "override TP_Buff_To" } }
            }
        }
    },
    TP_Buff_Add_To: {
        items: {
            _buff_effect: {
                extend: "template.item.TI_Arm_To",
                property: { armatureId: "Arm_Fight_Buff", ignore: [ "death" ] },
                timelines: { _play: { aniId: "ani_buff_up" } }
            }
        }
    },
    TP_Buff_Sub_To: {
        items: {
            _buff_effect: {
                extend: "template.item.TI_Arm_To",
                property: { armatureId: "Arm_Fight_Buff", ignore: [ "death" ] },
                timelines: { _play: { aniId: "ani_buff_down" } }
            }
        }
    },
    TP_Buff_Sub_ToByNo: {
        items: {
            _buff_effect: {
                extend: "template.item.TI_Arm_To",
                property: { armatureId: "Arm_Fight_Buff", ignore: [ "death", "nodef" ] },
                timelines: { _play: { aniId: "ani_buff_down" } }
            }
        }
    }
});
