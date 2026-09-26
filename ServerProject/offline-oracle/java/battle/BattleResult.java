package com.sgscq.vpn.battle;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class BattleResult {
    private final Map<String, Object> fightInfo;
    private final int roundCount;
    private final List<Map<String, Object>> rounds;
    private final boolean success;

    public BattleResult(Map<String, Object> map, List<Map<String, Object>> list, boolean z) {
        this(map, list, z, list == null ? 0 : list.size());
    }

    public static BattleResult fromRuntime(Map<String, Object> map, List<Map<String, Object>> list, boolean z, int i2) {
        return new BattleResult(map == null ? new LinkedHashMap() : new LinkedHashMap(map), list == null ? new ArrayList() : new ArrayList(list), z, i2);
    }

    public Map<String, Object> getFightInfo() {
        return this.fightInfo;
    }

    public int getRoundCount() {
        return this.roundCount;
    }

    public List<Map<String, Object>> getRounds() {
        return this.rounds;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public BattleResult(Map<String, Object> map, List<Map<String, Object>> list, boolean z, int i2) {
        this.fightInfo = map;
        this.rounds = list;
        this.success = z;
        this.roundCount = Math.max(0, i2);
    }
}
