// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Cfg/Fight/SkillPreview.js:1
// source line 36, bytecode pc 690
(xs.Cfg.Fight.SkillPreviewFight = (xs.Cfg.Fight.SkillPreview || {
    init: {
        first: 0,
        roundMax: 15,
        cards_size0: 3,
        cards_size1: 3,
        backups_size0: 3,
        backups_size1: 3,
        godness_0: false,
        godness_1: false,
        cards: [
            { id: "121010", hpCur: 10000, hpMax: 10000, name: "马超" },
            { id: "121009", hpCur: 10000, hpMax: 10000, name: "黄忠" },
            { id: "121016", hpCur: 10000, hpMax: 10000, name: "魏延" },
            { id: "141005", hpCur: 10000, hpMax: 10000, name: "张角" },
            { id: "141008", hpCur: 10000, hpMax: 10000, name: "于吉" },
            { id: "141012", hpCur: 5000, hpMax: 10000, name: "袁绍" },
            { id: "121004", hpCur: 10000, hpMax: 10000, name: "刘备" },
            { id: "121006", hpCur: 10000, hpMax: 10000, name: "关羽" },
            { id: "121007", hpCur: 10000, hpMax: 10000, name: "张飞" },
            { id: "141003", hpCur: 10000, hpMax: 10000, name: "貂蝉" },
            { id: "141011", hpCur: 10000, hpMax: 10000, name: "蔡文姬" },
            { id: "141002", hpCur: 10000, hpMax: 10000, name: "吕布" }
        ],
        roundCur: 1,
        skipRounds: 0
    }
}));
// source line 3006, bytecode pc 48807
(xs.Cfg.Fight.SkillPreview = (xs.Cfg.Fight.SkillPreview || {
    Idx: {
        mingce: "mingce",
        fencheng: "attack_all",
        gongxin: "attack_all",
        xuanfeng: "attack_all",
        tuxi: "attack_all",
        tuxi_v5: "attack_all",
        wuhun: "attack_all",
        qiangwu: "attack_all",
        yinghun: "attack_all",
        shenfen: "attack_all_hurtself",
        jiang: "attack_all",
        fanjian: "attack_one",
        lieren: "attack_one",
        renjia: "attack_one",
        qixi: "attack_one",
        shensu: "attack_one",
        longdan: "attack_one",
        yingzi: "attack_one",
        huiqiang: "attack_one",
        jushou: "attack_one",
        kuanggu: "attack_one_cure_one",
        mo_leiji: "attack_one_cure_one",
        xiaoji: "from_self",
        bupo: "from_self",
        kurou: "from_self",
        ganglie: "defend",
        dujin: "defend",
        fangzhu: "defend",
        fangzhu_v4: "defend",
        leiji: "defend",
        spleiji: "defend",
        mo_paoxiao: "defend",
        mo_tieqi: "defend",
        mo_tieji: "defend",
        yaowu: "defend_ours",
        yiji: "defend_ours"
    },
    Cfg: {
        defend: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Spear_0",
                type: 0,
                params: { to: [ { hpCur: 10000, hpMax: 10000, event: "leiji" } ] }
            },
            { from: [ 3 ], to: [ 0 ], skill: "leiji_0", skillId: "341005", type: 0 },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Spear_1",
                type: 0,
                params: { to: [ { hpCur: 10000, hpMax: 10000, hp: 0, event: [ "leiji" ] } ] }
            },
            {
                from: [ 3 ],
                to: [ 0 ],
                skill: "leiji_1",
                skillId: "341005",
                type: 0,
                params: { to: [ { hpCur: 7500, hpMax: 10000, hp: 2500 } ] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Spear_2",
                type: 0,
                params: { to: [ { hpCur: 10000, hpMax: 10000 } ] }
            }
        ],
        defend_other: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Spear_0",
                type: 0,
                params: { to: [ { hpCur: 10000, hpMax: 10000, event: "leiji" } ] }
            },
            { from: [ 3 ], to: [ 0 ], skill: "leiji_0", skillId: "341005", type: 0 },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Spear_1",
                type: 0,
                params: { to: [ { hpCur: 10000, hpMax: 10000, hp: 0, event: [ "leiji" ] } ] }
            },
            {
                from: [ 3 ],
                to: [ 1 ],
                skill: "leiji_1",
                skillId: "341005",
                type: 0,
                params: { to: [ { hpCur: 7500, hpMax: 10000, hp: 2500 } ] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Spear_2",
                type: 0,
                params: { to: [ { hpCur: 10000, hpMax: 10000 } ] }
            }
        ],
        defend_ours: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Spear_0",
                type: 0,
                params: { to: [ { hpCur: 9900, hpMax: 9900, event: "leiji" } ] }
            },
            { from: [ 3 ], to: [ 4 ], skill: "leiji_0", skillId: "341005", type: 0 },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Spear_1",
                type: 0,
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: 0, event: [ "leiji" ] } ] }
            },
            {
                from: [ 3 ],
                to: [ 4 ],
                skill: "leiji_1",
                skillId: "341005",
                type: 0,
                params: {
                    to: [
                        { hpCur: 11000, hpMax: 20999, hp: 9999, def: 100 },
                        { hpCur: 11000, hpMax: 20999, hp: 9999, def: 100 }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Spear_2",
                type: 0,
                params: { to: [ { hpCur: 9900, hpMax: 9900 } ] }
            }
        ],
        yuanhu: [
            {
                from: [ 2 ],
                to: [ 3 ],
                skill: "Attack_Spear",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 6600, hpMax: 9900, hp: 3300 } ] }
            },
            {
                from: [ 5 ],
                to: [ 3 ],
                skill: "yuanhu",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, cure: 6600 } ] }
            }
        ],
        hujia: [
            {
                from: [ 2 ],
                to: [ 3, 4, 5 ],
                skill: "hujia",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 6600, hpMax: 9900, hp: 0 },
                        { hpCur: 6600, hpMax: 9900, hp: 0 },
                        { hpCur: 6600, hpMax: 9900, hp: 0 }
                    ]
                }
            },
            {
                from: [ 5 ],
                to: [ 3 ],
                skill: "yuanhu",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, cure: 6600 } ] }
            }
        ],
        duanliang: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "duanliang",
                skillId: "TODO",
                type: 0,
                params: { from: [ {} ], to: [ { hp: 8999, hpCur: 1000, hpMax: 9900 } ] }
            }
        ],
        lueying: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Sword",
                type: 0,
                params: { to: [ { hpCur: 1000, hpMax: 30000, hp: 5000 } ] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "lueying",
                skillId: "TODO",
                type: 0,
                params: { from: [ {} ], to: [ { hpCur: 9900, hpMax: 9900 } ] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "shesheng",
                skillId: "TODO",
                type: 0,
                params: { from: [ { cure: 8999, hpCur: 1000, hpMax: 9900 } ], to: [] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Sword_nuyan",
                skillId: "TODO",
                type: 0,
                params: { to: [ { hpCur: 1000, hpMax: 30000, hp: 5000 } ] }
            }
        ],
        shesheng: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "shesheng",
                skillId: "TODO",
                type: 0,
                params: { from: [ {} ], to: [ { hp: 8999, hpCur: 1000, hpMax: 9900 } ] }
            }
        ],
        nuyan: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Sword_nuyan",
                type: 0,
                params: { to: [ { hpCur: 1000, hpMax: 30000, hp: 5000 } ] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Hammer_nuyan",
                type: 0,
                params: { to: [ { hpCur: 1000, hpMax: 30000, hp: 5000 } ] }
            }
        ],
        tieji: [
            {
                from: [ 0 ],
                to: [ 10 ],
                skill: "tieji",
                skillId: "321010",
                type: 0,
                params: { from: [ {} ], to: [ { hp: 9999, hpCur: 20000, hpMax: 29999 } ] }
            },
            {
                from: [ 0 ],
                to: [ 9 ],
                skill: "nuyan_backup_add",
                skillId: "321010",
                type: 0,
                params: { from: [ {} ], to: [ { hp: 9999, hpCur: 20000, hpMax: 29999 } ] }
            },
            {
                from: [ 0 ],
                to: [ 10 ],
                skill: "nuyan_backup_end",
                skillId: "321010",
                type: 0,
                params: { from: [ {} ], to: [] }
            }
        ],
        huoji: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "huoji",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [
                        { hp: 9999, hpCur: 1111, hpMax: 9900, event: [ "yun" ] },
                        { hp: 9999, hpCur: 20000, hpMax: 29999 },
                        { hp: 9999, hpCur: 20000, hpMax: 29999, event: [ "yun" ] }
                    ]
                }
            }
        ],
        fuluan: [
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "fuluan",
                skillId: "TODO",
                type: 0,
                params: { from: [ { hpCur: 1111, hpMax: 10000 } ] }
            },
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "fuluan_extra",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [
                        { hp: 5000, hpCur: 1111, hpMax: 9900, event: [ "baoji" ] },
                        { hp: 9999, hpCur: 20000, hpMax: 29999 },
                        { hp: 9999, hpCur: 20000, hpMax: 29999 }
                    ]
                }
            }
        ],
        yanyan: [
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "yanyan",
                skillId: "TODO",
                type: 0,
                params: { from: [ { hp: 5000, hpCur: 1111, hpMax: 9900 } ] }
            },
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "yanyan_extra",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [
                        { hp: 5000, hpCur: 1111, hpMax: 9900, event: [ "baoji" ] },
                        { hp: 9999, hpCur: 20000, hpMax: 29999 },
                        { hp: 9999, hpCur: 20000, hpMax: 29999 }
                    ]
                }
            }
        ],
        xingwu: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "xingwu",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [
                        { hp: 9999, hpCur: 1111, hpMax: 9900 },
                        { hp: 9999, hpCur: 20000, hpMax: 29999 },
                        { hp: 9999, hpCur: 20000, hpMax: 29999 }
                    ]
                }
            }
        ],
        jianying: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "jianying",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [
                        { hp: 9999, hpCur: 1111, hpMax: 9900, event: [ "yun" ] },
                        { hp: 9999, hpCur: 20000, hpMax: 29999 },
                        { hp: 9999, hpCur: 20000, hpMax: 29999, event: [ "yun" ] }
                    ]
                }
            }
        ],
        jijiang_v3: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "jijiang_v3",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [
                        { hp: 9999, hpCur: 0, hpMax: 9900, event: [ "death" ] },
                        { hp: 9999, hpCur: 20000, hpMax: 29999 },
                        { hp: 9999, hpCur: 20000, hpMax: 29999 }
                    ]
                }
            }
        ],
        jijiang_v5: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "jijiang_v5",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [
                        { hp: 9999, hpCur: 0, hpMax: 9900, event: [ "death" ] },
                        { hp: 9999, hpCur: 20000, hpMax: 29999 },
                        { hp: 9999, hpCur: 20000, hpMax: 29999 }
                    ]
                }
            }
        ],
        jijiang: [
            {
                from: [ 0 ],
                to: [ 0, 1, 2, 3 ],
                skill: "jijiang",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [
                        { hp: 0, hpCur: 10000, hpMax: 10000, event: [ "fs" ] },
                        { hp: 0, hpCur: 10000, hpMax: 10000, event: [ "fs" ] },
                        { hp: 0, hpCur: 10000, hpMax: 10000, event: [ "fs" ] },
                        { hp: 9999, hpCur: 1, hpMax: 10000 }
                    ]
                }
            },
            {
                from: [ 1 ],
                to: [ 0, 1, 2, 3 ],
                skill: "jijiang",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [
                        { hp: 0, hpCur: 10000, hpMax: 10000, event: [ "fs" ] },
                        { hp: 0, hpCur: 10000, hpMax: 10000, event: [ "fs" ] },
                        { hp: 0, hpCur: 10000, hpMax: 10000, event: [ "fs" ] },
                        { hp: 9999, hpCur: 1, hpMax: 10000 }
                    ]
                }
            },
            {
                from: [ 2 ],
                to: [ 0, 1, 2, 3 ],
                skill: "jijiang",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [
                        { hp: 0, hpCur: 10000, hpMax: 10000, event: [ "fs" ] },
                        { hp: 0, hpCur: 10000, hpMax: 10000, event: [ "fs" ] },
                        { hp: 0, hpCur: 10000, hpMax: 10000, event: [ "fs" ] },
                        { hp: 9999, hpCur: 1, hpMax: 10000 }
                    ]
                }
            }
        ],
        xinsheng: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Spear_0",
                type: 0,
                params: { to: [ { hpCur: 10000, hpMax: 10000, event: "xinsheng" } ] }
            },
            { from: [ 3 ], to: [ 0 ], skill: "xinsheng_0", skillId: "TODO", type: 0 },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Spear_1",
                type: 0,
                params: { to: [ { hpCur: 10000, hpMax: 10000, hp: 0, event: [ "xinsheng" ] } ] }
            },
            {
                from: [ 3 ],
                to: [ 3 ],
                skill: "xinsheng_1",
                skillId: "TODO",
                type: 0,
                params: { to: [ { hpCur: 7500, hpMax: 10000, hp: 2500 } ] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Spear_2",
                type: 0,
                params: { to: [ { hpCur: 10000, hpMax: 10000 } ] }
            }
        ],
        haoshi: [
            {
                from: [ 0 ],
                to: [ 1, 2 ],
                skill: "haoshi",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [ { hp: 9999, hpCur: 29999, hpMax: 29999 }, { hp: 9999, hpCur: 29999, hpMax: 29999 } ]
                }
            },
            {
                from: [ 1 ],
                to: [ 0, 1, 2 ],
                skill: "haoshi",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [
                        { hp: 9999, hpCur: 29999, hpMax: 29999 },
                        { hp: 9999, hpCur: 29999, hpMax: 29999 },
                        { hp: 9999, hpCur: 29999, hpMax: 29999 }
                    ]
                }
            },
            {
                from: [ 2 ],
                to: [ 0, 1, 2 ],
                skill: "haoshi",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [
                        { hp: 9999, hpCur: 29999, hpMax: 29999 },
                        { hp: 9999, hpCur: 29999, hpMax: 29999 },
                        { hp: 9999, hpCur: 29999, hpMax: 29999 }
                    ]
                }
            }
        ],
        zhuikong: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "zhuikong_v3",
                skillId: "TODO",
                type: 0,
                params: { from: [ {} ], to: [ { hp: 9999, hpCur: 1111, hpMax: 9900, event: [ "yun" ] } ] }
            }
        ],
        qiaobian: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "qiaobian_before",
                skillId: "TODO",
                type: 0,
                params: { from: [ {} ], to: [] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Knife",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "qiaobian_after",
                skillId: "TODO",
                type: 0,
                params: { from: [ {} ], to: [] }
            }
        ],
        enyuan: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Spear_0",
                type: 0,
                params: { to: [ { hpCur: 10000, hpMax: 10000, event: "enyuan" } ] }
            },
            { from: [ 3 ], to: [ 0 ], skill: "enyuan_0", skillId: "TODO", type: 0 },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Spear_1",
                type: 0,
                params: { to: [ { hpCur: 10000, hpMax: 10000, hp: 0, event: [ "enyuan" ] } ] }
            },
            {
                from: [ 3 ],
                to: [ 0, 3, 4, 5 ],
                skill: "enyuan_1",
                skillId: "TODO",
                type: 0,
                params: {
                    to: [
                        { hpCur: 7500, hpMax: 10000, hp: 2500 },
                        { hpCur: 7500, hpMax: 10000, event: [ "fs" ] },
                        { hpCur: 7500, hpMax: 10000, event: [ "fs" ] },
                        { hpCur: 7500, hpMax: 10000, event: [ "fs" ] }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Spear_2",
                type: 0,
                params: { to: [ { hpCur: 10000, hpMax: 10000 } ] }
            }
        ],
        enyuan_v4_1: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Spear_0",
                type: 0,
                params: { to: [ { hpCur: 10000, hpMax: 10000, event: "enyuan" } ] }
            },
            { from: [ 0 ], to: [ 3 ], skill: "enyuan_v4_1", skillId: "TODO", type: 0 }
        ],
        tianyi_v3: [
            {
                from: [ 0 ],
                to: [ 3, 4 ],
                skill: "tianyi_v3",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [ { hp: 9999, hpCur: 1000, hpMax: 8900 }, { hp: 9999, hpCur: 2000, hpMax: 7900 } ]
                }
            }
        ],
        longdan_v2: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "longdan_v2",
                skillId: "TODO",
                type: 0,
                params: { from: [ {} ], to: [ { hp: 9999, hpCur: 1000, hpMax: 8900 } ] }
            },
            {
                from: [ 0 ],
                to: [ 0, 3 ],
                skill: "longdan_v4",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ { hp: 9999, hpCur: 1000, hpMax: 8900 } ],
                    to: [ { hp: 9999, hpCur: 1000, hpMax: 8900, event: [ "fs" ] }, { hp: 9999, hpCur: 1000, hpMax: 8900 } ]
                }
            },
            {
                from: [ 0 ],
                to: [ 0, 1, 3 ],
                skill: "longdan_v4",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ { hp: 9999, hpCur: 1000, hpMax: 8900 } ],
                    to: [
                        { hp: 9999, hpCur: 1000, hpMax: 8900, event: [ "fs" ] },
                        { hp: 9999, hpCur: 1000, hpMax: 8900, event: [ "fs" ] },
                        { hp: 9999, hpCur: 1000, hpMax: 8900 }
                    ]
                }
            }
        ],
        tianyi_v5: [
            {
                from: [ 0 ],
                to: [ 3, 4 ],
                skill: "tianyi_v5",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [ { hp: 9999, hpCur: 1000, hpMax: 8900 }, { hp: 9999, hpCur: 2000, hpMax: 7900 } ]
                }
            }
        ],
        tianyi_v5_yun: [
            {
                from: [ 0 ],
                to: [ 3, 4 ],
                skill: "tianyi_v5_yun",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [ { hp: 9999, hpCur: 1000, hpMax: 8900 }, { hp: 9999, hpCur: 2000, hpMax: 7900 } ]
                }
            }
        ],
        tianyi_yun: [
            {
                from: [ 0 ],
                to: [ 3, 4 ],
                skill: "tianyi_v5_yun",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [ { hp: 9999, hpCur: 1000, hpMax: 8900 }, { hp: 9999, hpCur: 2000, hpMax: 7900 } ]
                }
            },
            {
                from: [ 0 ],
                to: [ 3, 4 ],
                skill: "lijian_v3",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [ { hp: 9999, hpCur: 1000, hpMax: 8900 }, { hp: 9999, hpCur: 2000, hpMax: 7900 } ]
                }
            },
            { from: [], to: [ 3, 4 ], skill: "yun_end", skillId: "TODO", type: 0 },
            {
                from: [ 1 ],
                to: [ 0, 2, 4 ],
                skill: "mo_kurou",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 6600, hpMax: 9900, hp: 3300, event: [ "fs" ], def: 118 },
                        { hpCur: 6600, hpMax: 9900, hp: 3300, event: [ "fs" ], def: 118 },
                        { hpCur: 6600, hpMax: 9900, hp: 3300 }
                    ]
                }
            }
        ],
        lijian_v3: [
            {
                from: [ 0 ],
                to: [ 3, 4 ],
                skill: "lijian_v3",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [ { hp: 9999, hpCur: 1000, hpMax: 8900 }, { hp: 9999, hpCur: 2000, hpMax: 7900 } ]
                }
            }
        ],
        zhongyan: [
            {
                from: [ 5 ],
                to: [ 2, 0, 1 ],
                skill: "Attack_Knife",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 0, hpMax: 9900, hp: 990 },
                        { hpCur: 0, hpMax: 9900, hp: 990 },
                        { hpCur: 0, hpMax: 9900, hp: 990 }
                    ]
                }
            },
            {
                from: [ 5 ],
                to: [ 2, 0, 1 ],
                skill: "Attack_Knife",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 0, hpMax: 9900, hp: 990 },
                        { hpCur: 0, hpMax: 9900, hp: 990 },
                        { hpCur: 0, hpMax: 9900, hp: 990 }
                    ]
                }
            },
            {
                from: [ 5 ],
                to: [ 2, 0, 1 ],
                skill: "Attack_Knife",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 0, hpMax: 9900, hp: 990 },
                        { hpCur: 0, hpMax: 9900, hp: 990 },
                        { hpCur: 0, hpMax: 9900, hp: 990 }
                    ]
                }
            },
            {
                from: [ 5 ],
                to: [ 2, 0, 1 ],
                skill: "Attack_Knife",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 0, hpMax: 9900, hp: 990 },
                        { hpCur: 0, hpMax: 9900, hp: 990 },
                        { hpCur: 0, hpMax: 9900, hp: 990 }
                    ]
                }
            }
        ],
        luoshen: [
            {
                from: [ 0 ],
                to: [],
                skill: "luoshen",
                skillId: "TODO",
                type: 0,
                num: 5,
                params: { from: [ {} ], to: [] }
            },
            {
                from: [ 1 ],
                to: [ 0, 2 ],
                skill: "luoshen_v3",
                skillId: "TODO",
                type: 0,
                num: 6,
                params: {
                    from: [ {} ],
                    to: [ { hp: 9999, hpCur: 1000, hpMax: 8900 }, { hp: 9999, hpCur: 2000, hpMax: 7900 } ]
                }
            },
            {
                from: [ 0 ],
                to: [ 1, 2 ],
                skill: "luoshen_v4",
                skillId: "TODO",
                type: 0,
                num: 5,
                params: {
                    from: [ {} ],
                    to: [ { hp: 9999, hpCur: 1000, hpMax: 8900 }, { hp: 9999, hpCur: 2000, hpMax: 7900 } ]
                }
            }
        ],
        mo_kurou: [
            {
                from: [ 1 ],
                to: [ 0, 2, 4 ],
                skill: "mo_kurou",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 6600, hpMax: 9900, hp: 3300, event: [ "fs" ], def: 118 },
                        { hpCur: 6600, hpMax: 9900, hp: 3300, event: [ "fs" ], def: 118 },
                        { hpCur: 6600, hpMax: 9900, hp: 3300 }
                    ]
                }
            }
        ],
        kuanggu1: [
            {
                from: [ 0 ],
                to: [ 0, 1, 2, 3 ],
                skill: "kuanggu",
                type: 0,
                skillId: "TODO",
                params: {
                    from: [ { hpCur: 10000, hpMax: 10000, cure: "4000", event: [ "fs" ] } ],
                    to: [
                        { hpCur: 10000, hpMax: 10000, cure: "4000", event: [ "fs" ] },
                        { hpCur: 10000, hpMax: 10000, cure: "4000", event: [ "fs" ] },
                        { hpCur: 10000, hpMax: 10000, cure: "4000", event: [ "fs" ] },
                        { hpCur: 6600, hpMax: 10000, hp: 3300 }
                    ]
                }
            },
            {
                from: [ 1 ],
                to: [ 0, 2, 4 ],
                skill: "kuanggu",
                type: 0,
                skillId: "TODO",
                params: {
                    from: [ { hpCur: 10000, hpMax: 10000, cure: "4000", event: [ "fs" ] } ],
                    to: [
                        { hpCur: 10000, hpMax: 10000, cure: "4000", event: [ "fs" ] },
                        { hpCur: 10000, hpMax: 10000, cure: "4000", event: [ "fs" ] },
                        { hpCur: 6600, hpMax: 10000, hp: 3300 }
                    ]
                }
            },
            {
                from: [ 2 ],
                to: [ 4 ],
                skill: "kuanggu",
                type: 0,
                skillId: "TODO",
                params: {
                    from: [ { hpCur: 10000, hpMax: 10000, cure: "4000", event: [ "fs" ] } ],
                    to: [ { hpCur: 6600, hpMax: 10000, hp: 3300 } ]
                }
            }
        ],
        jieyin: [
            {
                from: [ 1 ],
                to: [ 1, 2 ],
                skill: "jieyin",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 6600, hpMax: 9900, cure: 2000 }, { hpCur: 6600, hpMax: 9900, cure: 2000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 1, 2 ],
                skill: "jieyin_v2",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 6600, hpMax: 9900, cure: 2000, event: [ "self" ] },
                        { hpCur: 6600, hpMax: 9900, cure: 2000 }
                    ]
                }
            },
            {
                from: [ 1 ],
                to: [ 1, 2 ],
                skill: "jieyin_v5",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 6600, hpMax: 9900, cure: 2000 }, { hpCur: 6600, hpMax: 9900, cure: 2000 } ] }
            }
        ],
        guicai: [
            {
                from: [ 1 ],
                to: [ 9, 10, 11 ],
                skill: "guicai",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 6600, hpMax: 9900, hp: 3300 },
                        { hpCur: 6600, hpMax: 9900, hp: 3300 },
                        { hpCur: 6600, hpMax: 9900, hp: 3300 }
                    ]
                }
            }
        ],
        zhuiyi_v1: [
            { from: [ 1 ], to: [ 9, 10, 11 ], skill: "lock_add", type: 0, skillId: "TODO" },
            {
                from: [ 1 ],
                to: [ 4 ],
                skill: "Attack_Knife",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 0, hpMax: 9900, hp: 990, event: [ "ghost" ] } ] }
            },
            { from: [ 5 ], to: [ 9, 10, 11 ], skill: "lock_add", type: 0, skillId: "TODO" },
            { from: [ 5 ], to: [ 9, 10, 11 ], skill: "lock_end", type: 0, skillId: "TODO" }
        ],
        huitian: [
            {
                from: [ 4 ],
                to: [ 1 ],
                skill: "Attack_Knife",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 0, hpMax: 9900, hp: 990, event: [ "ghost" ] } ] }
            },
            {
                from: [ 1 ],
                to: [],
                skill: "huitian",
                type: 0,
                skillId: "TODO",
                params: { from: [ { hpCur: 2000, hpMax: 9900, cure: 1 } ] }
            }
        ],
        jushou_v5: [
            {
                from: [ 1 ],
                to: [ 4 ],
                skill: "Attack_Knife",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 0, hpMax: 9900, hp: 990, event: [ "ghost" ] } ] }
            },
            {
                from: [ 4 ],
                to: [],
                skill: "jushou_v5",
                type: 0,
                skillId: "TODO",
                params: { from: [ { hpCur: 1, hpMax: 9900, cure: 1 } ] }
            },
            { from: [ 1 ], to: [ 4 ], skill: "turn_over_add", type: 0, skillId: "TODO" }
        ],
        raoshe_extra: [ { from: [ 1 ], to: [ 4 ], skill: "raoshe_extra", type: 0, skillId: "TODO" } ],
        raoshe_live: [
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "Attack_Knife",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 0, hpMax: 9900, hp: 990, event: [ "ghost" ] } ] }
            },
            {
                from: [ 3 ],
                to: [],
                skill: "jushou_v5",
                type: 0,
                skillId: "TODO",
                params: { from: [ { hpCur: 1, hpMax: 9900, cure: 1 } ] }
            }
        ],
        jiushi: [
            {
                from: [ 1 ],
                to: [ 4 ],
                skill: "Attack_Knife",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 0, hpMax: 9900, hp: 990, event: [ "ghost" ] } ] }
            },
            {
                from: [ 4 ],
                to: [],
                skill: "jiushi",
                type: 0,
                skillId: "TODO",
                params: { from: [ { hpCur: 2000, hpMax: 9900, cure: 2000 } ] }
            },
            { from: [ 1 ], to: [ 4 ], skill: "Attack_Knife_0", type: 0, skillId: "TODO", params: { to: [] } },
            { from: [ 4 ], to: [], skill: "jiushi_0", type: 0, skillId: "TODO", params: { from: [] } },
            {
                from: [ 1 ],
                to: [ 4 ],
                skill: "Attack_Knife_1",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 1000, hpMax: 9900, hp: 990 } ] }
            },
            {
                from: [ 4 ],
                to: [],
                skill: "jiushi_1",
                type: 0,
                skillId: "TODO",
                params: { from: [ { hpCur: 1000, hpMax: 9900 } ] }
            },
            { from: [ 1 ], to: [ 4 ], skill: "Attack_Knife_2", type: 0, skillId: "TODO", params: { to: [] } }
        ],
        baiyin_jiuyuan: [
            {
                from: [ 4 ],
                to: [ 1 ],
                skill: "Attack_Bow_1",
                type: 0,
                params: { to: [ { hpCur: 20000, hpMax: 20000, hp: 0, event: [ "jiuyuan" ] } ] }
            },
            {
                from: [ 1 ],
                to: [ 4 ],
                skill: "baiyin_jiuyuan",
                type: 0,
                params: { from: [ { hpCur: 5000, hpMax: 20000, cure: 2000 } ], to: [ { hpCur: 5000, hpMax: 20000 } ] }
            }
        ],
        jiuyuan: [
            {
                from: [ 1 ],
                to: [ 4 ],
                skill: "Attack_Bow_0",
                type: 0,
                params: { to: [ { hpCur: 20000, hpMax: 20000, event: "jiuyuan" } ] }
            },
            { from: [ 4 ], to: [ 1 ], skill: "jiuyuan_0", skillId: "331008", type: 0 },
            {
                from: [ 1 ],
                to: [ 4 ],
                skill: "Attack_Bow_1",
                type: 0,
                params: { to: [ { hpCur: 20000, hpMax: 20000, hp: 0, event: [ "jiuyuan" ] } ] }
            },
            {
                from: [ 4 ],
                to: [ 1 ],
                skill: "jiuyuan_1",
                skillId: "331008",
                type: 0,
                params: { from: [ { hpCur: 5000, hpMax: 20000, cure: 2000 } ], to: [ { hpCur: 5000, hpMax: 20000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 4 ],
                skill: "Attack_Bow_0",
                type: 0,
                params: { to: [ { hpCur: 20000, hpMax: 20000, event: "jiuyuan" } ] }
            },
            { from: [ 4 ], to: [ 1 ], skill: "jiuyuan_0", skillId: "331008", type: 0 },
            {
                from: [ 1 ],
                to: [ 4 ],
                skill: "Attack_Bow_1",
                type: 0,
                params: { to: [ { hpCur: 20000, hpMax: 20000, hp: 0, event: [ "jiuyuan" ] } ] }
            },
            {
                from: [ 4 ],
                to: [ 1 ],
                skill: "jiuyuan_1",
                skillId: "331008",
                type: 0,
                params: { to: [ { hpCur: 5000, hpMax: 20000 } ] }
            }
        ],
        zhuiyi: [
            {
                from: [ 1 ],
                to: [ 4 ],
                skill: "Attack_Knife",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 0, hpMax: 9900, hp: 990, event: [ "ghost" ] } ] }
            },
            {
                from: [ 4 ],
                to: [ 3, 5 ],
                skill: "zhuiyi",
                type: 0,
                skillId: "TODO",
                params: { from: [ { hpCur: 2000, hpMax: 9900, cure: 2000 }, { hpCur: 2000, hpMax: 9900, cure: 2000 } ] }
            }
        ],
        dangxian: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "dangxian",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            }
        ],
        qicai: [
            {
                from: [ 0 ],
                to: [ 0, 4, 5 ],
                skill: "qicai",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 9900, hpMax: 9900, cure: 2000 },
                        { hpCur: 9900, hpMax: 9900, hp: "1000" },
                        { hpCur: 9900, hpMax: 9900, hp: "1500" }
                    ]
                }
            }
        ],
        qicai_v4: [
            {
                from: [ 0 ],
                to: [ 4, 5 ],
                skill: "qicai_v4",
                type: 0,
                skillId: "TODO",
                num: 4,
                params: {
                    from: [ { hpCur: 8900, hpMax: 9900, hp: "1000", cure: 2000 } ],
                    to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" }, { hpCur: 9900, hpMax: 9900, hp: "1500" } ]
                }
            }
        ],
        qicai_v5: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "qicai_v4",
                type: 0,
                num: 5,
                skillId: "TODO",
                params: {
                    from: [ { hpCur: 166978, hpMax: 169367, cure: 18832, def: 19856, event: [ "baoji" ] } ],
                    to: [
                        { hpCur: 0, hpMax: 137587, hp: "102620", event: [ "baoji", "qicai_v5" ] },
                        { hpCur: 293, hpMax: 137587, hp: "102620", event: [ "baoji", "qicai_v5" ] },
                        { hpCur: 0, hpMax: 137587, hp: "102620", event: [ "baoji", "qicai_v5" ] }
                    ]
                }
            }
        ],
        baiyin_qicai: [
            {
                from: [ 0 ],
                to: [ 0, 4, 5 ],
                skill: "baiyin_qicai",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 9900, hpMax: 9900 },
                        { hpCur: 9900, hpMax: 9900, hp: "1000" },
                        { hpCur: 9900, hpMax: 9900, hp: "1500" }
                    ]
                }
            }
        ],
        ganlu: [
            {
                from: [ 0 ],
                to: [ 1, 2, 3, 4, 5 ],
                skill: "ganlu",
                type: 0,
                skillId: "TODO",
                params: {
                    from: [ { hpCur: 2000, hpMax: 9900, cure: 2000 } ],
                    to: [
                        { hpCur: 9900, hpMax: 9900, hp: "500", event: "fs" },
                        { hpCur: 9900, hpMax: 9900, hp: "1000", event: "fs" },
                        { hpCur: 9900, hpMax: 9900, hp: "1500" },
                        { hpCur: 9900, hpMax: 9900, hp: "1500" },
                        { hpCur: 9900, hpMax: 9900, hp: "1500" }
                    ]
                }
            }
        ],
        ganlu_v5: [
            {
                from: [ 0 ],
                to: [ 4 ],
                skill: "ganlu_v5",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "500" } ] }
            }
        ],
        paoxiao: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "paoxiao",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 4 ],
                to: [ 1 ],
                skill: "paoxiao",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            }
        ],
        luanwu: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "luanwu",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 9900, hpMax: 9900, hp: "1000" },
                        { hpCur: 9900, hpMax: 9900, hp: "1500" },
                        { hpCur: 9900, hpMax: 9900, hp: "2000" }
                    ]
                }
            },
            {
                from: [ 1 ],
                to: [ 0, 1, 2 ],
                skill: "luanwu",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 9900, hpMax: 9900, hp: "1000" },
                        { hpCur: 9900, hpMax: 9900, hp: "2000" },
                        { hpCur: 9900, hpMax: 9900, hp: "1500" }
                    ]
                }
            }
        ],
        baiyin_luanwu: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "baiyin_luanwu",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 9900, hpMax: 9900, hp: "1000" },
                        { hpCur: 9900, hpMax: 9900, hp: "1500" },
                        { hpCur: 9900, hpMax: 9900, hp: "2000" }
                    ]
                }
            }
        ],
        tiaoxin: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "tiaoxin",
                type: 0,
                skillId: "321020",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000", def: 111 },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" }
                    ]
                }
            },
            {
                from: [ 1 ],
                to: [ 3, 4, 5 ],
                skill: "tiaoxin",
                type: 0,
                skillId: "321020",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000", def: 111 },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" }
                    ]
                }
            }
        ],
        qixi_v3: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "qixi_v3",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000", def: 111 },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" }
                    ]
                }
            },
            {
                from: [ 1 ],
                to: [ 3, 4, 5 ],
                skill: "qixi_v3",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000", def: 111 },
                        { hpCur: 8900, hpMax: 9900, hp: "1000", def: 111 },
                        { hpCur: 8900, hpMax: 9900, hp: "1000", def: 111 }
                    ]
                }
            },
            {
                from: [ 2 ],
                to: [ 3, 4, 5 ],
                skill: "qixi_v3",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000", def: 111 },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" }
                    ]
                }
            },
            {
                from: [ 3 ],
                to: [ 0, 1, 2 ],
                skill: "qixi_v3",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000", def: 111 },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" }
                    ]
                }
            },
            {
                from: [ 3 ],
                to: [ 0 ],
                skill: "guose",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: "1000" } ] }
            }
        ],
        wushuang: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "wushuang",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "wushuang_v3",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 3, 4, 5, 9, 10, 11 ],
                skill: "wushuang_v3",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" }
                    ]
                }
            }
        ],
        shefu: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "shefu",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 3 ],
                to: [ 3 ],
                skill: "fu",
                type: 0,
                skillId: "TODO",
                params: { from: [ { hpCur: 8900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 0 ],
                to: [ 3, 4 ],
                skill: "shefu",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: "1000" }, { hpCur: 8900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 3 ],
                to: [ 3 ],
                skill: "fu",
                type: 0,
                skillId: "TODO",
                params: { from: [ { hpCur: 8900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 4 ],
                to: [ 4 ],
                skill: "fu",
                type: 0,
                skillId: "TODO",
                params: { from: [ { hpCur: 8900, hpMax: 9900, hp: "1000" } ] }
            },
            { from: [], to: [ 3, 4 ], skill: "fu_end", skillId: "TODO", type: 0 },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "shefu",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: "1000" } ] }
            }
        ],
        shenji: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "wuqian",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "shenji",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 3, 4, 5, 9, 10, 11 ],
                skill: "shenji",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" }
                    ]
                }
            }
        ],
        guose: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "guose",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 3 ],
                to: [ 0 ],
                skill: "guose",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: "1000" } ] }
            },
            { from: [ 0 ], to: [ 3 ], skill: "le_end", type: 0, skillId: "TODO" }
        ],
        jushou_v4: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "jushou_v4",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            }
        ],
        turn_over_add: [ { from: [ 0 ], to: [ 3 ], skill: "turn_over_add", type: 0, skillId: "TODO" } ],
        turn_over_end: [
            { from: [ 0 ], to: [ 3 ], skill: "turn_over_add", type: 0, skillId: "TODO" },
            { from: [ 0 ], to: [ 3 ], skill: "turn_over_end", type: 0, skillId: "TODO" }
        ],
        guixin: [
            {
                from: [ 0 ],
                to: [ 0, 3 ],
                skill: "guixin",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "yun" ] } ] }
            }
        ],
        guixin_dun_1: [
            {
                from: [ 0 ],
                to: [ 0, 3 ],
                skill: "guixin_dun_1",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "yun" ] } ] }
            }
        ],
        zhaoxin: [
            { from: [ 0 ], to: [ 0 ], skill: "blood_pool_add", type: 0, skillId: "TODO" },
            { from: [ 2 ], to: [ 2 ], skill: "blood_pool_add", type: 0, skillId: "TODO" },
            {
                from: [ 0 ],
                to: [ 0, 3 ],
                skill: "zhaoxin",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 9900, hpMax: 9900, hp: "9900", event: [ "fs" ] },
                        { hpCur: 9900, hpMax: 9900, hp: "1000" }
                    ]
                }
            }
        ],
        hujia_v4: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "hujia_v4_enter",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [
                        { hp: 9999, hpCur: 1, hpMax: 9900, event: [ "add" ] },
                        { hp: 9999, hpCur: 20000, hpMax: 29999, event: [ "add" ] },
                        { hp: 9999, hpCur: 20000, hpMax: 29999 }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "hujia_v4_enter",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ {} ],
                    to: [
                        { hp: 9999, hpCur: 1, hpMax: 9900, event: [ "boom" ] },
                        { hp: 9999, hpCur: 20000, hpMax: 29999, event: [ "boom" ] },
                        { hp: 9999, hpCur: 20000, hpMax: 29999, event: [ "add" ] }
                    ]
                }
            }
        ],
        mingce: [
            {
                from: [ 0 ],
                to: [ 1 ],
                skill: "mingce",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: "1000", int: "1000" } ] }
            }
        ],
        quhu: [
            {
                from: [ 0 ],
                to: [ 1 ],
                skill: "quhu",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: "1000", int: "1000" } ] }
            },
            {
                from: [ 1 ],
                to: [ 4 ],
                skill: "Attack_Spear",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: "1000", int: "1000" } ] }
            }
        ],
        lianying: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "lianying",
                type: 0,
                skillId: "TODO",
                num: 5,
                params: { to: [ { hpCur: 6900, hpMax: 9900, hp: "4000" } ] }
            }
        ],
        jianying_v5: [
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "jianying_v5",
                type: 0,
                skillId: "TODO",
                num: 4,
                params: { from: [ { hpCur: 6900, hpMax: 9900, hp: "4000" } ] }
            }
        ],
        xianzhen: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "xianzhen",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: "1000" } ] }
            }
        ],
        from_self: [
            {
                from: [ 0 ],
                skill: "xiaoji",
                type: 0,
                skillId: "TODO",
                num: 5,
                params: { from: [ { hpCur: 5000, hpMax: 10000, hp: 5000, int: 900, atk: 600 } ] }
            }
        ],
        longyin: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "longyin",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: "1000" } ] }
            }
        ],
        attack_one: [
            {
                from: [ 5 ],
                to: [ 2 ],
                skill: "qiangwu",
                type: 0,
                skillId: "TODO",
                num: 5,
                params: {
                    from: [ { hpCur: 10000, hpMax: 10000, hp: "5000", isCure: true, atk: 100, wis: 100 } ],
                    to: [ { hpCur: 5000, hpMax: 10000, hp: "5000", cure: "5000" } ]
                }
            },
            {
                from: [ 1 ],
                to: [ 4 ],
                skill: "qiangwu",
                type: 0,
                skillId: "TODO",
                num: 5,
                params: {
                    from: [ { hpCur: 10000, hpMax: 10000, hp: "5000", isCure: true } ],
                    to: [ { hpCur: 5000, hpMax: 10000, hp: "5000" } ]
                }
            }
        ],
        attack_one_cure_one: [
            {
                from: [ 0 ],
                to: [ 4 ],
                skill: "qiangwu",
                type: 0,
                skillId: "TODO",
                num: 1,
                params: {
                    from: [ { hpCur: 9000, hpMax: 10000, cure: "4000", event: [ "fs" ] } ],
                    to: [ { hpCur: 5000, hpMax: 10000, hp: 5000 } ]
                }
            }
        ],
        attack_all: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "qiangwu",
                type: 0,
                skillId: "TODO",
                num: 5,
                params: {
                    to: [
                        { hpCur: 5000, hpMax: 10000, hp: "5000", event: [ "" ] },
                        { hpCur: 5000, hpMax: 10000, hp: "10000", event: [ "" ] },
                        { hpCur: 5000, hpMax: 10000, hp: "10000", event: [ "" ] }
                    ]
                }
            }
        ],
        attack_all_hurtself: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "qiangwu",
                type: 0,
                skillId: "TODO",
                num: 5,
                params: {
                    from: [ { hpCur: 5000, hpMax: 10000, hp: "5000", event: [ "fs" ] } ],
                    to: [
                        { hpCur: 5000, hpMax: 10000, hp: "5000", event: [ "death" ] },
                        { hpCur: 0, hpMax: 10000, hp: "10000", event: [ "ghost" ] },
                        { hpCur: 0, hpMax: 10000, hp: "10000", event: [ "death" ] }
                    ],
                    once: { event: [ "finish" ] }
                }
            }
        ],
        attack_all_side1: [
            {
                from: [ 4 ],
                to: [ 0, 1, 2, 6 ],
                skill: "qiangwu",
                type: 0,
                skillId: "TODO",
                num: 5,
                params: {
                    to: [
                        { hpCur: 9000, hpMax: 10000, hp: "1000" },
                        { hpCur: 8000, hpMax: 10000, hp: "2000" },
                        { hpCur: 7000, hpMax: 10000, hp: "3000" },
                        { hpCur: 6000, hpMax: 10000, hp: "4000" }
                    ]
                }
            }
        ],
        qinyin: [
            {
                from: [ 5 ],
                to: [ 0, 1, 2 ],
                skill: "qinyin",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 5000, hpMax: 10000, hp: "5000" },
                        { hpCur: 5000, hpMax: 10000, hp: "5000" },
                        { hpCur: 5000, hpMax: 10000, hp: "5000" }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 0, 1, 2, 3, 4, 5 ],
                skill: "qinyin",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 10000, hpMax: 10000, cure: "5000", event: [ "fs" ] },
                        { hpCur: 10000, hpMax: 10000, cure: "5000", event: [ "fs" ] },
                        { hpCur: 10000, hpMax: 10000, cure: "5000", event: [ "fs" ] },
                        { hpCur: 5000, hpMax: 10000, hp: "5000" },
                        { hpCur: 5000, hpMax: 10000, hp: "5000" },
                        { hpCur: 5000, hpMax: 10000, hp: "5000" }
                    ]
                }
            }
        ],
        qinyin1: [
            {
                from: [ 5 ],
                to: [ 0, 1, 2, 3, 4, 5 ],
                skill: "qinyin",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 1111, hpMax: 9900, hp: "11111" },
                        { hpCur: 1111, hpMax: 9900, hp: "22222" },
                        { hpCur: 1111, hpMax: 9900, hp: "33333" },
                        { hpCur: 6900, hpMax: 9900, hp: "10000", isCure: true, event: [ "fs" ] },
                        { hpCur: 8900, hpMax: 9900, hp: "20000", isCure: true, event: [ "fs" ] },
                        { hpCur: 7900, hpMax: 9900, hp: "30000", isCure: true, event: [ "fs" ] }
                    ]
                }
            }
        ],
        qinyin2: [
            {
                from: [ 0 ],
                to: [ 2, 3, 4 ],
                skill: "yinran_add",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 1111, hpMax: 9900, hp: "11111" },
                        { hpCur: 1111, hpMax: 9900, hp: "11111" },
                        { hpCur: 1111, hpMax: 9900, hp: "11111" }
                    ]
                }
            },
            {
                from: [ 2 ],
                to: [ 4, 5 ],
                skill: "qinyin_extra",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 1111, hpMax: 9900, hp: "22222" }, { hpCur: 1111, hpMax: 9900, hp: "33333" } ] }
            },
            {
                from: [ 2 ],
                to: [ 3, 4, 5 ],
                skill: "wuhun",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 1111, hpMax: 9900, hp: "11111" },
                        { hpCur: 1111, hpMax: 9900, hp: "11111" },
                        { hpCur: 1111, hpMax: 9900, hp: "11111" }
                    ]
                }
            },
            { from: [], to: [ 2 ], skill: "leave", type: 0, skillId: "TODO", params: {} },
            {
                from: [ 0 ],
                to: [ 2, 4, 5 ],
                skill: "xiaoyong_3",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 1111, hpMax: 9900, hp: "22222" },
                        { hpCur: 1111, hpMax: 9900, hp: "22222" },
                        { hpCur: 1111, hpMax: 9900, hp: "33333" }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 1, 2 ],
                skill: "qinyin_extra",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 1111, hpMax: 9900, hp: "22222" }, { hpCur: 1111, hpMax: 9900, hp: "33333" } ] }
            },
            {
                from: [ 2 ],
                to: [ 0, 1 ],
                skill: "qinyin_extra",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 1111, hpMax: 9900, hp: "22222" }, { hpCur: 1111, hpMax: 9900, hp: "33333" } ] }
            },
            {
                from: [ 0 ],
                to: [ 2, 4, 5 ],
                skill: "xiaoyong_3_end",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 1111, hpMax: 9900, hp: "22222" },
                        { hpCur: 1111, hpMax: 9900, hp: "22222" },
                        { hpCur: 1111, hpMax: 9900, hp: "33333" }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 0, 1 ],
                skill: "zaiqi",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 2000, hpMax: 2000, hp: 2000, cure: 2000 } ] }
            },
            {
                from: [ 0 ],
                to: [ 0, 1 ],
                skill: "zaiqi_add",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 2000, hpMax: 2000, hp: 2000, cure: 2000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "Attack_Bow",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "Attack_Bow",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "Attack_Bow",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 0 ],
                to: [ 0, 1 ],
                skill: "zaiqi_end",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 2000, hpMax: 2000, hp: 2000, cure: 2000 } ] }
            }
        ],
        fengwu0: [
            {
                from: [ 0 ],
                to: [ 0, 1, 2, 3, 4, 5 ],
                skill: "fengwu",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 9900, hpMax: 9900, hp: "11111", event: [ "fs" ] },
                        { hpCur: 9900, hpMax: 9900, hp: "22222", event: [ "fs" ] },
                        { hpCur: 9900, hpMax: 9900, hp: "33333", event: [ "fs" ] },
                        { hpCur: 6900, hpMax: 9900, hp: "3000" },
                        { hpCur: 6999, hpMax: 19999, hp: "13000" },
                        { hpCur: 3999, hpMax: 16999, hp: "13000" }
                    ]
                }
            }
        ],
        fengwu1: [
            {
                from: [ 0 ],
                to: [ 0, 1, 2, 3, 4, 5 ],
                skill: "fengwu",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 9900, hpMax: 9900, hp: "11111", event: [ "fs" ] },
                        { hpCur: 9900, hpMax: 9900, hp: "22222", event: [ "fs" ] },
                        { hpCur: 9900, hpMax: 9900, hp: "33333", event: [ "fs" ] },
                        { hpCur: 6900, hpMax: 9900, hp: "3000" },
                        { hpCur: 6999, hpMax: 19999, hp: "13000" },
                        { hpCur: 3999, hpMax: 16999, hp: "13000" }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "star_7",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "11111" } ] }
            },
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "huojian",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 1111, hpMax: 9900, hp: "11111" },
                        { hpCur: 1111, hpMax: 9900, hp: "22222" },
                        { hpCur: 1111, hpMax: 9900, hp: "33333" }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "huojian",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 1111, hpMax: 9900, hp: "11111" },
                        { hpCur: 1111, hpMax: 9900, hp: "22222" },
                        { hpCur: 1111, hpMax: 9900, hp: "33333" }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "star_7_end",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "11111" } ] }
            },
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "huojian",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 1111, hpMax: 9900, hp: "11111" },
                        { hpCur: 1111, hpMax: 9900, hp: "22222" },
                        { hpCur: 1111, hpMax: 9900, hp: "33333" }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "star_4",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "11111" } ] }
            },
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "star_4_end",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "11111" } ] }
            }
        ],
        tongji: [
            {
                from: [ 0 ],
                to: [ 3, 4, 3, 5, 3 ],
                skill: "tongji",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 6900, hpMax: 9900, hp: "2000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 0, hpMax: 9900, hp: "6900", event: [ "death", "skillend" ] }
                    ]
                }
            }
        ],
        tianzhao: [
            {
                from: [ 2 ],
                to: [ 3, 4, 3, 5, 3 ],
                skill: "tianzhao",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 6900, hpMax: 9900, hp: "2000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 0, hpMax: 9900, hp: "6900", event: [ "death", "skillend" ] }
                    ]
                }
            }
        ],
        spluanji: [
            {
                from: [ 0 ],
                to: [ 3, 4 ],
                skill: "spluanji",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 0, hpMax: 9900, hp: "6900", event: [ "death", "skillend" ] }
                    ]
                }
            }
        ],
        spluanji_baoji: [
            {
                from: [ 0 ],
                to: [ 3, 4 ],
                skill: "spluanji_baoji",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 0, hpMax: 9900, hp: "6900", event: [ "death", "skillend" ] }
                    ]
                }
            }
        ],
        spluanji_extra: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "spluanji_extra",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: "1000" } ] }
            }
        ],
        pojun: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "pojun_left",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000", event: [ "baoji" ] },
                        { hpCur: 8900, hpMax: 9900, hp: "1000", event: [ "baoji" ] },
                        { hpCur: 6900, hpMax: 9900, hp: "2000", event: [ "baoji" ] }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "pojun_right",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 8900, hpMax: 9900, hp: "1000" },
                        { hpCur: 6900, hpMax: 9900, hp: "2000" }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "pojun_right",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000", event: [ "baoji" ] },
                        { hpCur: 8900, hpMax: 9900, hp: "1000", event: [ "baoji" ] },
                        { hpCur: 6900, hpMax: 9900, hp: "2000", event: [ "baoji" ] }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "pojun_right",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 8900, hpMax: 9900, hp: "1000", event: [ "baoji" ] },
                        { hpCur: 8900, hpMax: 9900, hp: "1000", event: [ "baoji" ] },
                        { hpCur: 6900, hpMax: 9900, hp: "2000", event: [ "baoji" ] }
                    ]
                }
            }
        ],
        lianpo: [
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "Attack_Knife",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 0, hpMax: 9900, hp: 90, event: [ "ghost" ] } ] }
            },
            {
                from: [ 3 ],
                to: [],
                skill: "lianpo",
                type: 0,
                skillId: "TODO",
                params: { from: [ { hpCur: 4500, hpMax: 9900, cure: 4500 } ] }
            }
        ],
        shuangxiong: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "shuangxiong_left",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 5000, hpMax: 10000, hp: "5000", event: [ "baoji" ] } ] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "shuangxiong_right",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 1000, hpMax: 5000, hp: "5000", event: [ "baoji" ] } ] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "shuangxiong_extra",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 1000, hpMax: 5000, hp: "5000", event: [ "baoji" ] } ] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "shuangxiong_extra",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 1000, hpMax: 5000, hp: "5000", event: [ "baoji", "corpse" ] } ] }
            },
            { from: [ 0 ], to: [ 0 ], skill: "xiaoyong_1", type: 0, skillId: "TODO", params: { to: [] } },
            { from: [ 0 ], to: [ 1 ], skill: "xiaoyong_2", type: 0, skillId: "TODO", params: { to: [] } },
            { from: [ 0 ], to: [ 2 ], skill: "xiaoyong_1", type: 0, skillId: "TODO", params: { to: [] } }
        ],
        dimeng: [
            {
                from: [ 0 ],
                to: [ 2, 5 ],
                skill: "dimeng",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 10000, "10000": 10000, hp: "0", event: [ "fs" ] },
                        { hpCur: 5000, hpMax: 10000, hp: "5000" }
                    ]
                }
            },
            {
                from: [ 2 ],
                to: [ 2, 5 ],
                skill: "dimeng",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 10000, "10000": 10000, hp: "0", event: [ "fs" ] },
                        { hpCur: 5000, hpMax: 10000, hp: "5000" }
                    ]
                }
            }
        ],
        guipu: [
            {
                from: [ 1 ],
                to: [ 0, 1, 2 ],
                skill: "guipu",
                type: 0,
                skillId: "TODO",
                params: {
                    from: [ {} ],
                    to: [
                        { hpCur: 1000, hpMax: 2000, cure: 2000 },
                        { hpCur: 10000, hpMax: 20000, cure: 5000 },
                        { hpCur: 10000, hpMax: 20000, cure: 20000 }
                    ]
                }
            }
        ],
        zhengnan: [
            {
                from: [ 1 ],
                to: [ 4 ],
                skill: "zhengnan",
                type: 0,
                skillId: "TODO",
                params: { from: [ {} ], to: [ { hpCur: 2000, hpMax: 9900, hp: 200 } ] }
            },
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "Attack_Bow",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 1 ],
                skill: "zhengnan_hp_add",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 2000, hpMax: 2000, hp: 2000, cure: 2000 } ] }
            }
        ],
        qingnang: [
            {
                from: [ 0 ],
                to: [ 0, 1, 2 ],
                skill: "qingnang_dun",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            }
        ],
        zaiqi: [
            {
                from: [ 0 ],
                to: [ 0, 1, 2 ],
                skill: "zaiqi",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 2000, hpMax: 2000, hp: 2000, cure: 2000 } ] }
            },
            {
                from: [ 0 ],
                to: [ 0, 1, 2 ],
                skill: "zaiqi_add",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 2000, hpMax: 2000, hp: 2000, cure: 2000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "Attack_Bow",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "Attack_Bow",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "Attack_Bow",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 0 ],
                to: [ 0, 1, 2 ],
                skill: "zaiqi_end",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 2000, hpMax: 2000, hp: 2000, cure: 2000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "Attack_Bow",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "Attack_Bow",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 0 ],
                to: [ 0, 1, 2 ],
                skill: "zaiqi",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 2000, hpMax: 2000, hp: 2000, cure: 2000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "Attack_Bow",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            }
        ],
        zhidao: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "zhidao",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 9900, hpMax: 9900, hp: "1000" },
                        { hpCur: 9900, hpMax: 9900, hp: "1000" },
                        { hpCur: 9900, hpMax: 9900, hp: "1000" }
                    ]
                }
            }
        ],
        jili: [
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "jili",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "add" ] } ] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "Attack_Bow",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "jili",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "reduce" ] } ] }
            }
        ],
        mumu: [
            {
                from: [ 0 ],
                to: [ 3, 4, 5 ],
                skill: "mumu",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 9900, hpMax: 9900, hp: "0" },
                        { hpCur: 9900, hpMax: 9900, hp: "0" },
                        { hpCur: 9900, hpMax: 9900, hp: "0" }
                    ]
                }
            }
        ],
        fuhun: [
            {
                from: [ 0 ],
                to: [ 4 ],
                skill: "fuhun_skill",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            }
        ],
        panding: [
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "panding",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "fail" ] } ] }
            },
            {
                from: [ 0 ],
                to: [ 3, 4 ],
                skill: "spleiji",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "panding",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "win" ] } ] }
            },
            {
                from: [ 0 ],
                to: [ 3, 4 ],
                skill: "sptieqi",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "panding",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "success" ] } ] }
            },
            {
                from: [ 0 ],
                to: [ 3, 4 ],
                skill: "yingbing_v4",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            }
        ],
        sptieqi: [
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "panding",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "success" ] } ] }
            },
            {
                from: [ 0 ],
                to: [ 4 ],
                skill: "sptieqi",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            }
        ],
        spleidian: [
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "spleidian",
                type: 0,
                skillId: "TODO",
                params: {
                    from: [ { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "success" ] } ],
                    to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ]
                }
            },
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "spleidian_extra",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 1 ],
                to: [ 4 ],
                skill: "spleidian_extra",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 1 ],
                to: [ 4 ],
                skill: "spleidian_extra",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 1 ],
                to: [ 5 ],
                skill: "spleidian_extra",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            }
        ],
        yicong: [
            {
                from: [ 0 ],
                to: [ 4 ],
                skill: "yicong_v5",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            }
        ],
        yingbing: [
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "panding",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "win" ] } ] }
            },
            {
                from: [ 0 ],
                to: [ 4, 5 ],
                skill: "yingbing_v4",
                type: 0,
                skillId: "TODO",
                params: {
                    from: [ { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "win" ] } ],
                    to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ]
                }
            }
        ],
        juejing: [
            {
                from: [ 0 ],
                to: [ 5, 4, 3, 3, 3, 4 ],
                skill: "juejing",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "first" ] },
                        { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "first" ] },
                        { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "first" ] },
                        { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "first" ] },
                        { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "first" ] },
                        { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "skillend" ] }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "juejing_dun",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "juejing_dun_end",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            }
        ],
        tianzhao_v4: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "fanji_add",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "tianzhao_extra",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "fanji_end",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            }
        ],
        huoshou: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "huoshou",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "xuruo_add",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "xuruo_end",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "pojia_add",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "pojia_end",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "zhuiji_add",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "zhuiji_end",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            }
        ],
        spliegong: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "spliegong",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "zhuiji_add",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "spliegong_extra",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            },
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "zhuiji_end",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000" } ] }
            }
        ],
        jijiaozhishi: [
            {
                from: [ 0 ],
                to: [ 3 ],
                skill: "jijiaozhishi",
                skillId: "TODO",
                type: 0,
                params: { from: [ {} ], to: [ { hp: 10950, hpCur: 861150, hpMax: 900000 } ] }
            }
        ],
        yijue: [
            {
                from: [ 0 ],
                to: [ 0 ],
                skill: "panding",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 9900, hpMax: 9900, hp: "1000", event: [ "success" ] } ] }
            },
            {
                from: [ 0 ],
                to: [ 4 ],
                skill: "yijue",
                skillId: "TODO",
                type: 0,
                params: { from: [ {} ], to: [ { hp: 9999, hpCur: 20000, hpMax: 29999 } ] }
            }
        ],
        zhaoxin_v4: [
            {
                from: [ 0 ],
                to: [ 4 ],
                skill: "zhaoxin_v4",
                skillId: "TODO",
                type: 0,
                params: {
                    from: [ { cure: 8999, hpCur: 1000, hpMax: 9900 } ],
                    to: [ { hpCur: 9900, hpMax: 9900, hp: "9900", cure: 1000, event: [ "fs" ] } ]
                }
            }
        ],
        test: [
            {
                from: [ 0 ],
                to: [ 0, 1, 2 ],
                skill: "blood_pool_add",
                type: 0,
                skillId: "TODO",
                params: {
                    to: [
                        { hpCur: 2000, hpMax: 2000, hp: 2000, cure: 2000 },
                        { hpCur: 2000, hpMax: 2000, hp: 2000, cure: 2000 },
                        { hpCur: 2000, hpMax: 2000, hp: 2000, cure: 2000 }
                    ]
                }
            },
            {
                from: [ 0 ],
                to: [ 0, 1, 2 ],
                skill: "Attack_Bow",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 2000, hpMax: 2000, hp: 2000, cure: 2000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "Attack_Bow",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "zaiqi_add",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "Attack_Bow",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 0 ],
                to: [ 0, 1, 2 ],
                skill: "zaiqi_end",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 2000, hpMax: 2000, hp: 2000, cure: 2000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "Attack_Bow",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "Attack_Bow",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            },
            {
                from: [ 0 ],
                to: [ 0, 1, 2 ],
                skill: "zaiqi",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 2000, hpMax: 2000, hp: 2000, cure: 2000 } ] }
            },
            {
                from: [ 1 ],
                to: [ 3 ],
                skill: "Attack_Bow",
                type: 0,
                skillId: "TODO",
                params: { to: [ { hpCur: 8900, hpMax: 9900, hp: 1000 } ] }
            }
        ]
    }
}));
