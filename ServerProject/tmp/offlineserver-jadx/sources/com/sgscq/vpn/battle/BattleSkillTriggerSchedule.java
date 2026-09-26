package com.sgscq.vpn.battle;

/* JADX INFO: loaded from: classes.dex */
public final class BattleSkillTriggerSchedule {
    private BattleSkillTriggerSchedule() {
    }

    public static int firstTriggerAction(String str) {
        if (str == null) {
            return 4;
        }
        if (str.contains("必触发") || str.contains("必定触发") || str.contains("极易触发")) {
            return 1;
        }
        if (str.contains("易触发")) {
            return 2;
        }
        if (str.contains("一般概率")) {
            return 3;
        }
        if (str.contains("较困难")) {
            return 4;
        }
        if (str.contains("第二次")) {
            return 2;
        }
        return str.contains("第三次") ? 3 : 4;
    }
}
