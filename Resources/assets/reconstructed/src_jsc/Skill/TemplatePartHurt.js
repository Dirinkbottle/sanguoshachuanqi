// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/TemplatePartHurt.js:1
// source line 154, bytecode pc 1354
xs.Utils.extendScope(xs.Cfg.Skill.template.part, {
    TP_Hurt_Hit: {
        items: {
            _to_hp_top: { extend: "template.item.TI_Hp_Sub_Top_To" },
            _to_text: { extend: "template.item.TI_Text_Hurt_To" },
            _card_to: { extend: "template.item.TI_Card_Do_To" }
        }
    },
    TP_Hurt_Over_Normal: {
        items: {
            _finish_pause: {
                property: { type: "env", belong: "to_once", trigger: [ "finish" ] },
                timelines: {
                    _delay: { type: "DelayTime", dp: (4 / xs.fps) },
                    _finish: { type: "createAction", name: "createFinishEffectAction" }
                }
            },
            _death_count: { extend: "template.item.TI_DeathCount_To" },
            _to_hp_top: { extend: "template.item.TI_Hp_Sub_Top_To" },
            _to_hp_bot: { extend: "template.item.TI_Hp_Sub_Bot_To" },
            _to_text: { extend: "template.item.TI_Text_Hurt_To" },
            _to_text_all: { extend: "template.item.TI_Text_Hurt_All" },
            _to_miss: {
                extend: "template.item.TI_Arm_To",
                property: { armatureId: "Arm_Fight_Buff01", ui: true, trigger: [ "miss", "leiji", "spleiji" ] },
                timelines: { _play: { aniId: "ani_effect_miss" } }
            },
            _to_cri: {
                extend: "template.item.TI_BgAndCards_Shake_To_Once",
                property: {
                    trigger: false,
                    ignore: [
                        "miss",
                        "leiji",
                        "spleiji",
                        "liuli",
                        "tianxiang",
                        "dujin",
                        "tianxiang_v3",
                        "tianxiang_v5",
                        "jiuyuan",
                        "jiuyuan_v3",
                        "jiuyuan_v4",
                        "jiuyuan_v5"
                    ]
                }
            },
            _to_status_clean_feng: {
                extend: "template.item.TI_CardStatus_End",
                property: { trigger: [ "death", "ghost" ] },
                timelines: { _status: { data: { statusId: "feng" } } }
            },
            _to_status_clean_le: {
                extend: "template.item.TI_CardStatus_End",
                property: { trigger: [ "death", "ghost" ] },
                timelines: { _status: { data: { statusId: "le" } } }
            },
            _to_status_clean_yun: {
                extend: "template.item.TI_CardStatus_End",
                property: { trigger: [ "death", "ghost" ] },
                timelines: { _status: { data: { statusId: "yun" } } }
            },
            _to_status_clean_Fu: {
                extend: "template.item.TI_CardStatus_End",
                property: { trigger: [ "death", "ghost" ] },
                timelines: { _status: { data: { statusId: "fu" } } }
            },
            _card_to: { extend: "template.item.TI_Card_Hurt_Over_Normal_To" }
        }
    },
    TP_Hurt_Over_Skill: {
        extend: "template.part.TP_Hurt_Over_Normal",
        items: {
            _to_miss: null,
            _red_bg: {
                property: { type: "bg_blood", belong: "once", ignore: [ "finish" ] },
                timelines: {
                    _show: { type: "Show" },
                    _delay: { type: "DelayTime", dp: (6 / xs.fps) },
                    _hide: { type: "Hide" }
                }
            },
            _to_cri: { property: { trigger: true } },
            _card_to: { extend: "template.item.TI_Card_Hurt_Over_To" }
        }
    }
});
