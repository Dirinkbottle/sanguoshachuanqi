// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/TemplateItemText.js:1
// source line 34, bytecode pc 302
(xs.Cfg.Skill.template.item.TI_Text_Cure_To = {
    extend: "template.item.TI_Arm_Near_UI_To",
    property: {
        type: "armature",
        armatureId: "Arm_Fight_SkillName",
        ui: true,
        bones: [
            {
                key: "labelBlood",
                ope: "changeDisplay",
                skin: { type: "label", ls: "LS_Fight_Cure", stringId: "str_fight_cure", args: [ "$hp" ] }
            }
        ],
        pos: { offset: { y: 120 } }
    },
    timelines: {
        _delay: { type: "DelayTime", dp: 0 },
        _play: { type: "createPlayAction", aniId: "ani_text_cure" },
        _show: { type: "Show" }
    }
});
// source line 46, bytecode pc 425
(xs.Cfg.Skill.template.item.TI_Text_Cure_From = {
    extend: [ "template.item.TI_Text_Cure_To" ],
    property: { parent: "from", belong: "from_tmp", pos: { base: null, offset: null, x: 0, y: 120 } }
});
// source line 57, bytecode pc 567
(xs.Cfg.Skill.template.item.TI_Text_Cure_From_ByCure = {
    extend: [ "template.item.TI_Text_Cure_To" ],
    property: {
        parent: "from",
        belong: "from_tmp",
        trigger: [ "cure" ],
        pos: { base: null, offset: null, x: 0, y: 120 }
    }
});
// source line 76, bytecode pc 683
(xs.Cfg.Skill.template.item.TI_Text_Hurt_All = {
    property: { type: "env", belong: "to_once" },
    timelines: { _delay: null, _finish: { type: "createAction", name: "createHurtAllEffectAction" } }
});
// source line 117, bytecode pc 1219
(xs.Cfg.Skill.template.item.TI_Text_Hurt_To = {
    extend: "template.item.TI_Arm_Near_To",
    property: {
        type: "armature",
        armatureId: "Arm_Fight_SkillName",
        ignore: [
            "miss",
            "leiji",
            "spleiji",
            "liuli",
            "tianxiang",
            "tianxiang_v3",
            "tianxiang_v5",
            "jiuyuan",
            "jiuyuan_v3",
            "jiuyuan_v4",
            "jiuyuan_v5"
        ],
        pos: { offset: cc.p(0, 120) },
        ui: true,
        bones: [
            {
                key: "labelBlood",
                ope: "changeDisplay",
                skin: {
                    type: "label",
                    ls: "LS_Fight_Hurt",
                    stringId: "str_fight_hurt",
                    getter: { type: "queue", name: "hp" }
                }
            }
        ],
        mirror: [ "backup" ]
    },
    timelines: {
        _delay: { type: "DelayTime", dp: (1 / xs.fps) },
        _play: { type: "createPlayAction", aniId: "ani_text_hurt" },
        _show: { type: "Show" }
    },
    backup: { property: { pos: { offset: cc.p(0, 0), creater: null }, scale: 0.5 } }
});
// source line 126, bytecode pc 1308
(xs.Cfg.Skill.template.item.TI_Text_Hurt_From = {
    extend: "template.item.TI_Text_Hurt_To",
    property: { pos: { base: "from" }, belong: "tmp_from" }
});
// source line 159, bytecode pc 1675
(xs.Cfg.Skill.template.item.TI_Text_Hurt_Near_To = {
    extend: "template.item.TI_Arm_Near_UI_To",
    property: {
        type: "armature",
        armatureId: "Arm_Fight_SkillName",
        ignore: [
            "miss",
            "leiji",
            "spleiji",
            "liuli",
            "tianxiang",
            "jiuyuan",
            "jiuyuan_v3",
            "jiuyuan_v4",
            "jiuyuan_v5"
        ],
        ui: true,
        bones: [
            {
                key: "labelBlood",
                ope: "changeDisplay",
                skin: { type: "label", id: "Label_Fight_Hurt", getter: { type: "queue", name: "hp" } }
            }
        ]
    },
    timelines: {
        _delay: { type: "DelayTime", dp: 0 },
        _play: { type: "createPlayAction", aniId: "ani_text_hurt" },
        _show: { type: "Show" }
    }
});
