// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/TemplateItemAttack.js:1
// source line 28, bytecode pc 200
(xs.Cfg.Skill.template.item.TI_Attack_move = {
    property: { type: "from", belong: "from" },
    timelines: {
        _delay: { type: "DelayTime", dp: (0 / xs.fps) },
        move: { type: "Move", dp: (4 / xs.ani_fps), dst_pos: { base: "from_touch", offset: { x: -30, y: 0 } } }
    }
});
// source line 38, bytecode pc 296
(xs.Cfg.Skill.template.item.TI_Attack_moveFast = { extend: "template.item.TI_Attack_move", timelines: { move: { type: "Move", dp: (0 / xs.fps) } } });
// source line 52, bytecode pc 435
(xs.Cfg.Skill.template.item.TI_Attack_back = {
    property: { type: "from", belong: "from" },
    timelines: { back: { type: "MoveTo", dp: (4 / xs.fps), dst_pos: { base: "from_ori" } } }
});
