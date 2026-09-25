// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Cfg/Fight/NewPlayerFight.js:1
// source line 387, bytecode pc 8658
(xs.Cfg.Fight.NewPlayerFight = (xs.Cfg.Fight.NewPlayerFight || {
    init: {
        first: 0,
        roundMax: 15,
        cards_size0: 3,
        cards_size1: 3,
        backups_size0: 4,
        backups_size1: 4,
        cards: [
            { id: "131007", hpCur: 20000, hpMax: 20000, name: "大乔" },
            { id: "131008", hpCur: 20000, hpMax: 20000, name: "小乔" },
            { id: "131014", hpCur: 20000, hpMax: 20000, name: "黄盖" },
            { id: "111007", hpCur: 20000, hpMax: 20000, name: "夏侯惇" },
            { id: "111004", hpCur: 20000, hpMax: 20000, name: "甄姬" },
            { id: "111012", hpCur: 20000, hpMax: 20000, name: "曹丕" },
            { id: "121011", hpCur: 20000, hpMax: 20000, name: "诸葛亮" },
            { id: "131004", hpCur: 20000, hpMax: 20000, name: "周瑜" },
            { id: "121006", hpCur: 30000, hpMax: 30000, name: "关羽" },
            { id: "121008", hpCur: 20000, hpMax: 20000, name: "赵云" },
            { id: "111009", hpCur: 20000, hpMax: 20000, name: "许褚" },
            { id: "111003", hpCur: 20000, hpMax: 20000, name: "曹操" },
            { id: "111017", hpCur: 20000, hpMax: 20000, name: "张郃" },
            { id: "111006", hpCur: 20000, hpMax: 20000, name: "张辽" }
        ],
        roundCur: 1,
        skipRounds: 0
    },
    rounds: [
        { skill: "Round", params: { pre: { roundCur: 1 } } },
        {
            from: [ 3 ],
            to: [ 0 ],
            skill: "Attack_Knife",
            type: 0,
            params: { to: [ { hpCur: 14000, hpMax: 20000, hp: 6000 } ] }
        },
        { skill: "ShowStory", skillId: "98000402", type: 1 },
        {
            from: [ 0 ],
            to: [ 3 ],
            skill: "guose",
            skillId: "331025",
            type: 0,
            params: { to: [ { hpCur: 11000, hpMax: 20000, hp: 9000 } ] }
        },
        { skill: "ShowStory", skillId: "98000411", type: 1 },
        { from: [ 4 ], skill: "luoshen", skillId: "311004", type: 0, num: 5, params: {} },
        {
            from: [ 4 ],
            to: [ 1 ],
            skill: "Attack_Bow_0",
            type: 0,
            params: { to: [ { hpCur: 20000, hpMax: 20000, event: "tianxiang" } ] }
        },
        { from: [ 1 ], to: [ 4 ], skill: "tianxiang_0", skillId: "331008", type: 0 },
        {
            from: [ 4 ],
            to: [ 1 ],
            skill: "Attack_Bow_1",
            type: 0,
            params: { to: [ { hpCur: 20000, hpMax: 20000, hp: 0, event: [ "tianxiang" ] } ] }
        },
        {
            from: [ 1 ],
            to: [ 4 ],
            skill: "tianxiang_1",
            skillId: "331008",
            type: 0,
            params: { to: [ { hpCur: 5000, hpMax: 20000, hp: 15000 } ] }
        },
        {
            from: [ 1 ],
            to: [ 4 ],
            skill: "Attack_Bow",
            type: 0,
            params: { to: [ { hpCur: 0, hpMax: 20000, hp: 5000, event: [ "death" ] } ] }
        },
        {
            from: [ 10 ],
            to: [ 4 ],
            skill: "enter",
            type: 0,
            params: { pre: { leaveIdx: 4, backupIdx: 10 } }
        },
        { skill: "ShowStory", skillId: "98000403", type: 1 },
        {
            from: [ 5 ],
            to: [ 2 ],
            skill: "Attack_Claw",
            type: 0,
            params: { to: [ { hpCur: 15000, hpMax: 20000, hp: 5000 } ] }
        },
        { skill: "ShowStory", skillId: "98000404", type: 1 },
        {
            from: [ 2 ],
            skill: "kurou",
            skillId: "331014",
            type: 0,
            num: 3,
            params: { from: [ { hpCur: 9000, hpMax: 20000, hp: 6000 } ] }
        },
        {
            from: [ 2 ],
            to: [ 5 ],
            skill: "Attack_Claw_0",
            type: 0,
            params: { to: [ { hpCur: 20000, hpMax: 20000, event: "fangzhu" } ] }
        },
        { from: [ 5 ], to: [ 2 ], skill: "fangzhu_0", skillId: "311012", type: 0, params: { to: [] } },
        {
            from: [ 2 ],
            to: [ 5 ],
            skill: "Attack_Claw_1",
            type: 0,
            params: { to: [ { hpCur: 4000, hpMax: 20000, hp: 16000, event: "fangzhu" } ] }
        },
        {
            from: [ 5 ],
            to: [ 2 ],
            skill: "fangzhu_1",
            skillId: "311012",
            type: 0,
            params: { to: [ { hpCur: 1000, hpMax: 20000, hp: 8000 } ] }
        },
        {
            from: [ 2 ],
            to: [ 5 ],
            skill: "Attack_Claw_2",
            type: 0,
            params: { to: [ { hpCur: 4000, hpMax: 20000 } ] }
        },
        { skill: "ShowStory", skillId: "98000412", type: 1 },
        { skill: "Round", params: { pre: { roundCur: 2 } } },
        {
            from: [ 0 ],
            to: [ 3 ],
            skill: "Attack_Bow_0",
            type: 0,
            params: { to: [ { hpCur: 11000, hpMax: 20000, event: "ganglie" } ] }
        },
        {
            from: [ 3 ],
            to: [ 0 ],
            skill: "ganglie_0",
            skillId: "311007",
            type: 0,
            params: { to: [ { event: [ "death" ] } ] }
        },
        {
            from: [ 0 ],
            to: [ 3 ],
            skill: "Attack_Bow_1",
            type: 0,
            params: { to: [ { hpCur: 6000, hpMax: 20000, hp: 5000, event: "ganglie" } ] }
        },
        {
            from: [ 3 ],
            to: [ 0 ],
            skill: "ganglie_1",
            skillId: "311007",
            type: 0,
            params: { to: [ { hpCur: 0, hpMax: 20000, hp: 15000, event: [ "death" ] } ] }
        },
        { from: [ 6 ], to: [ 0 ], skill: "enter", type: 0, params: { pre: { leaveIdx: 0, backupIdx: 6 } } },
        { skill: "ShowStory", skillId: "98000405", type: 1 },
        {
            from: [ 4 ],
            to: [ 1 ],
            skill: "luoyi",
            skillId: "311009",
            type: 0,
            params: { to: [ { hpCur: 0, hpMax: 20000, hp: 20000, event: [ "death" ] } ] }
        },
        { from: [ 7 ], to: [ 1 ], skill: "enter", type: 0, params: { pre: { leaveIdx: 1, backupIdx: 7 } } },
        {
            from: [ 1 ],
            to: [ 4 ],
            skill: "fanjian",
            skillId: "331004",
            type: 0,
            params: { to: [ { hpCur: 1000, hpMax: 20000, hp: 19000 } ] }
        },
        {
            from: [ 5 ],
            to: [ 2 ],
            skill: "Attack_Claw",
            type: 0,
            params: { to: [ { hpCur: 0, hpMax: 20000, hp: 5000, event: [ "death" ] } ] }
        },
        { from: [ 8 ], to: [ 2 ], skill: "enter", type: 0, params: { pre: { leaveIdx: 2, backupIdx: 8 } } },
        { skill: "ShowStory", skillId: "98000406", type: 1 },
        {
            from: [ 2 ],
            to: [ 5 ],
            skill: "wusheng",
            skillId: "321006",
            type: 0,
            num: 2,
            params: { to: [ { hpCur: 0, hpMax: 20000, hp: 24000, event: [ "death" ] } ] }
        },
        {
            from: [ 11 ],
            to: [ 5 ],
            skill: "enter",
            type: 0,
            params: { pre: { leaveIdx: 5, backupIdx: 11 } }
        },
        { skill: "Round", params: { pre: { roundCur: 3 } } },
        { skill: "le_end", to: [ 3 ], params: {} },
        {
            from: [ 3 ],
            to: [ 0 ],
            skill: "Attack_Knife",
            type: 0,
            params: { to: [ { hpCur: 15000, hpMax: 20000, hp: 5000 } ] }
        },
        { skill: "ShowStory", skillId: "98000407", type: 1 },
        {
            from: [ 0 ],
            to: [ 0, 1, 2, 3, 4, 5 ],
            skill: "huoji_new",
            skillId: "321011",
            type: 0,
            params: {
                to: [
                    { hpCur: 4000, hpMax: 20000, hp: 11000 },
                    { hpCur: 9000, hpMax: 20000, hp: 11000 },
                    { hpCur: 19000, hpMax: 30000, hp: 11000 },
                    { hpCur: 2000, hpMax: 20000, hp: 4000 },
                    { hpCur: 0, hpMax: 20000, hp: 4000, event: [ "death" ] },
                    { hpCur: 16000, hpMax: 20000, hp: 4000 }
                ]
            }
        },
        {
            from: [ 12 ],
            to: [ 4 ],
            skill: "enter",
            type: 0,
            params: { pre: { leaveIdx: 4, backupIdx: 12 } }
        },
        { skill: "ShowStory", skillId: "98000408", type: 1 },
        { from: [ 4 ], to: [ 1 ], skill: "qiaobian_before", skillId: "311017", type: 0, params: {} },
        {
            from: [ 4 ],
            to: [ 1 ],
            skill: "Attack_Spear",
            type: 0,
            params: { to: [ { hpCur: 0, hpMax: 20000, hp: 8000, event: [ "death" ] } ] }
        },
        { from: [ 9 ], to: [ 1 ], skill: "enter", type: 0, params: { pre: { leaveIdx: 1, backupIdx: 9 } } },
        { from: [ 4 ], to: [ 1 ], skill: "qiaobian_after", skillId: "311017", type: 0, params: {} },
        { skill: "ShowStory", skillId: "98000413", type: 1 },
        {
            from: [ 5 ],
            to: [ 2 ],
            skill: "Attack_Sword",
            type: 0,
            params: { to: [ { hpCur: 16000, hpMax: 30000, hp: 3000 } ] }
        },
        { skill: "ShowStory", skillId: "98000409", type: 1 },
        {
            from: [ 2 ],
            to: [ 5 ],
            skill: "Attack_Knife_0",
            type: 0,
            params: { to: [ { hpCur: 16000, hpMax: 20000, event: "jianxiong" } ] }
        },
        { from: [ 5 ], to: [ 2 ], skill: "jianxiong_0", skillId: "311003", type: 0, params: { to: [] } },
        {
            from: [ 2 ],
            to: [ 5 ],
            skill: "Attack_Knife_1",
            type: 0,
            params: { to: [ { hpCur: 10000, hpMax: 20000, hp: 6000, event: "jianxiong" } ] }
        },
        { from: [ 5 ], to: [ 2 ], skill: "jianxiong_1", skillId: "311003", type: 0, params: { to: [] } },
        { from: [ 2 ], to: [ 5 ], skill: "Attack_Knife_2", type: 0, params: { to: [ {} ] } },
        { skill: "Round", params: { pre: { roundCur: 4 } } },
        {
            from: [ 3 ],
            to: [ 0 ],
            skill: "Attack_Knife",
            type: 0,
            params: { to: [ { hpCur: 0, hpMax: 20000, hp: 5000, event: [ "death" ] } ] }
        },
        { skill: "ShowStory", skillId: "98000410", type: 1 },
        {
            from: [ 4 ],
            to: [ 1 ],
            skill: "Attack_Spear",
            type: 0,
            params: { to: [ { hpCur: 16000, hpMax: 20000, hp: 5000 } ] }
        },
        {
            from: [ 5 ],
            to: [ 2 ],
            skill: "Attack_Sword",
            type: 0,
            params: { to: [ { hpCur: 11000, hpMax: 30000, hp: 5000 } ] }
        },
        {
            from: [ 2 ],
            to: [ 5 ],
            skill: "Attack_Knife",
            type: 0,
            params: { to: [ { hpCur: 9500, hpMax: 20000, hp: 500 } ] }
        },
        { skill: "Round", params: { pre: { roundCur: 5 } } },
        { skill: "le_end", to: [ 1 ], params: {} },
        {
            from: [ 3 ],
            to: [ 1 ],
            skill: "Attack_Knife",
            type: 0,
            params: { to: [ { hpCur: 11000, hpMax: 20000, hp: 5000 } ] }
        },
        {
            from: [ 4 ],
            to: [ 1 ],
            skill: "Attack_Spear",
            type: 0,
            params: { to: [ { hpCur: 7000, hpMax: 20000, hp: 4000 } ] }
        },
        { from: [ 1 ], to: [ 4 ], skill: "longdan", skillId: "321008", type: 0, params: { to: [] } },
        {
            from: [ 1 ],
            to: [ 4 ],
            skill: "Attack_Spear",
            type: 0,
            params: { to: [ { hpCur: 0, hpMax: 20000, hp: 20000, event: [ "death" ] } ] }
        },
        {
            from: [ 13 ],
            to: [ 4 ],
            skill: "enter",
            type: 0,
            params: { pre: { leaveIdx: 4, backupIdx: 13 } }
        },
        {
            from: [ 5 ],
            to: [ 2 ],
            skill: "Attack_Sword",
            type: 0,
            params: { to: [ { hpCur: 6000, hpMax: 30000, hp: 5000 } ] }
        },
        {
            from: [ 2 ],
            to: [ 5 ],
            skill: "Attack_Knife_0",
            type: 0,
            params: { to: [ { hpCur: 9500, hpMax: 20000, event: "jianxiong" } ] }
        },
        { from: [ 5 ], to: [ 2 ], skill: "jianxiong_0", skillId: "311003", type: 0, params: { to: [] } },
        {
            from: [ 2 ],
            to: [ 5 ],
            skill: "Attack_Knife_1",
            type: 0,
            params: { to: [ { hpCur: 3500, hpMax: 20000, hp: 6000, event: "jianxiong" } ] }
        },
        { from: [ 5 ], to: [ 2 ], skill: "jianxiong_1", skillId: "311003", type: 0, params: { to: [] } },
        { from: [ 2 ], to: [ 5 ], skill: "Attack_Knife_2", type: 0, params: { to: [ {} ] } },
        { skill: "Round", params: { pre: { roundCur: 6 } } },
        {
            from: [ 3 ],
            to: [ 1 ],
            skill: "Attack_Knife",
            type: 0,
            params: { to: [ { hpCur: 2000, hpMax: 20000, hp: 5000 } ] }
        },
        { from: [ 4 ], to: [ 1, 2 ], skill: "tuxi", skillId: "311006", type: 0, params: {} },
        {
            from: [ 4 ],
            to: [ 1 ],
            skill: "Attack_Spear",
            type: 0,
            params: { to: [ { hpCur: 0, hpMax: 20000, hp: 15000, event: [ "death" ] } ] }
        },
        {
            from: [ 5 ],
            to: [ 2 ],
            skill: "Attack_Sword",
            type: 0,
            params: { to: [ { hpCur: 1000, hpMax: 30000, hp: 5000 } ] }
        },
        {
            from: [ 2 ],
            to: [ 5 ],
            skill: "Attack_Knife",
            type: 0,
            params: { to: [ { hpCur: 3400, hpMax: 20000, hp: 100 } ] }
        },
        { skill: "Round", params: { pre: { roundCur: 7 } } },
        {
            from: [ 3 ],
            to: [ 2 ],
            skill: "Attack_Knife",
            type: 0,
            params: { to: [ { hpCur: 0, hpMax: 30000, hp: 5500, event: [ "death" ] } ], once: { event: [ "finish" ] } }
        }
    ]
}));
