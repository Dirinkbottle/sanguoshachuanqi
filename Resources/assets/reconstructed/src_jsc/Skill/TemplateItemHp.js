// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/TemplateItemHp.js:1
// source line 113, bytecode pc 1194
xs.Utils.extendScope(xs.Cfg.Skill.template.item, {
    TI_Hp_Sub_Top_To: {
        property: { type: "to", belong: "to", ignore: [ "miss" ] },
        timelines: {
            delay: { type: "DelayTime", dp: (1 / xs.ani_fps) },
            _update: {
                type: "createAction",
                dp: (0 / xs.fps),
                name: "createUpdateHpActions",
                data: { type: "top", useStack: true }
            }
        }
    },
    TI_Hp_Sub_Bot_To: {
        property: { type: "to", belong: "to", ignore: [ "miss", "backup" ] },
        timelines: {
            delay: { type: "DelayTime", dp: (4 / xs.fps) },
            _update: { type: "createAction", dp: (7 / xs.fps), name: "createUpdateHpActions", data: { type: "bot" } }
        }
    },
    TI_Hp_Add_Top_To: {
        extend: "template.item.TI_Hp_Sub_Top_To",
        timelines: {
            _update: {
                type: "createAction",
                dp: (0 / xs.fps),
                name: "createUpdateHpActions",
                data: { type: "top", useStack: true, add: true }
            }
        }
    },
    TI_Hp_Add_Bot_To: {
        extend: "template.item.TI_Hp_Sub_Bot_To",
        timelines: {
            _update: {
                type: "createAction",
                dp: (0 / xs.fps),
                name: "createUpdateHpActions",
                data: { type: "bot", add: true }
            }
        }
    },
    TI_Hp_Sub_Top_From: { extend: "template.item.TI_Hp_Sub_Top_To", property: { type: "from", belong: "from" } },
    TI_Hp_Sub_Bot_From: { extend: "template.item.TI_Hp_Sub_Bot_To", property: { type: "from", belong: "from" } },
    TI_Hp_Add_Top_From: {
        extend: "template.item.TI_Hp_Add_Top_To",
        timelines: { _update: { data: { type: "top", useStack: false, add: true } } },
        property: { type: "from", belong: "from" }
    },
    TI_Hp_Add_Bot_From: { extend: "template.item.TI_Hp_Add_Bot_To", property: { type: "from", belong: "from" } },
    TI_Hp_Hide_To: {
        property: { type: "to_hp", belong: "to", trigger: [ "death", "ghost" ] },
        timelines: [ { type: "DelayTime", dp: (34 / xs.fps) }, { type: "Hide" } ]
    },
    TI_Hp_Show_To: { property: { type: "to_hp", belong: "to" }, timelines: [ { type: "Show" } ] },
    TI_Hp_Show_From: { property: { type: "from_hp", belong: "from" }, timelines: [ { type: "Show" } ] }
});
