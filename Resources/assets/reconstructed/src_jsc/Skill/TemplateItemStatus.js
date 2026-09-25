// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/TemplateItemStatus.js:1
// source line 23, bytecode pc 184
(xs.Cfg.Skill.template.item.TI_CardStatus_Begin = {
    property: { type: "to", belong: "to", ignore: [ "backup", "death", "ghost" ] },
    timelines: {
        _delay: null,
        _status: { type: "createAction", name: "createStartStatusActions", data: { statusId: "le", control: {} } }
    }
});
// source line 45, bytecode pc 380
(xs.Cfg.Skill.template.item.TI_Backup_Nuyan_Begin = {
    property: {
        parent: "to",
        type: "armature",
        armatureId: "Arm_Fight_Status_Nuyan",
        belong: "to_tmp",
        ignore: [ "death", "ghost" ]
    },
    timelines: {
        _delay: null,
        _status: {
            type: "createAction",
            name: "createStartStatusActions",
            data: { statusId: "nuyan", control: {} }
        }
    }
});
// source line 59, bytecode pc 565
(xs.Cfg.Skill.template.item.TI_CardStatus_Begin_From = {
    property: { type: "from", belong: "from", ignore: [ "backup", "death", "ghost" ] },
    timelines: {
        _delay: null,
        _status: { type: "createAction", name: "createStartStatusActions", data: { statusId: "le", control: {} } }
    }
});
// source line 71, bytecode pc 726
(xs.Cfg.Skill.template.item.TI_CardStatus_End = {
    property: { type: "to", belong: "to", ignore: [ "backup" ] },
    timelines: {
        _status: { type: "createAction", name: "createCancelStatusActions", data: { statusId: "le", control: {} } }
    }
});
// source line 81, bytecode pc 866
(xs.Cfg.Skill.template.item.TI_Freeze_Begin = {
    property: { type: "env", belong: "from_once" },
    timelines: [
        {
            type: "createAction",
            name: "createStartStatusActions",
            data: { statusId: "freeze", control: {} }
        }
    ]
});
// source line 91, bytecode pc 1006
(xs.Cfg.Skill.template.item.TI_Backup_Nuyan_Begin = {
    property: { type: "to", belong: "to_tmp" },
    timelines: [
        {
            type: "createAction",
            name: "createStartStatusActions",
            data: { statusId: "nuyan", control: {} }
        }
    ]
});
// source line 102, bytecode pc 1146
(xs.Cfg.Skill.template.item.TI_Freeze_End = {
    property: { type: "env", belong: "from_once" },
    timelines: [
        {
            type: "createAction",
            name: "createCancelStatusActions",
            data: { statusId: "freeze", control: {} }
        }
    ]
});
// source line 112, bytecode pc 1286
(xs.Cfg.Skill.template.item.TI_Lock_Begin = {
    property: { type: "env", belong: "from_once" },
    timelines: [
        { type: "createAction", name: "createStartStatusActions", data: { statusId: "lock", control: {} } }
    ]
});
// source line 122, bytecode pc 1426
(xs.Cfg.Skill.template.item.TI_Lock_End = {
    property: { type: "env", belong: "from_once" },
    timelines: [
        {
            type: "createAction",
            name: "createCancelStatusActions",
            data: { statusId: "lock", control: {} }
        }
    ]
});
