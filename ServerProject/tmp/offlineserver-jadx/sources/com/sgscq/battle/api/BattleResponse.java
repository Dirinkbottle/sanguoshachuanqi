package com.sgscq.battle.api;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class BattleResponse {
    private final Map<String, Object> fightInfo;
    private final int roundCount;
    private final List<Map<String, Object>> rounds;
    private final boolean settled;
    private final BattleRuntimeStatus status;
    private final boolean success;

    private BattleResponse(BattleRuntimeStatus battleRuntimeStatus, Map<String, Object> map, List<Map<String, Object>> list, boolean z, boolean z2, int i2) {
        this.status = battleRuntimeStatus == null ? BattleRuntimeStatus.MODULE_LOAD_FAILED : battleRuntimeStatus;
        this.fightInfo = map == null ? Collections.emptyMap() : Collections.unmodifiableMap(new LinkedHashMap(map));
        this.rounds = immutableRounds(list);
        this.success = z;
        this.settled = z2;
        this.roundCount = Math.max(0, i2);
    }

    private static List<Map<String, Object>> immutableRounds(List<Map<String, Object>> list) {
        if (list == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Map<String, Object>> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Collections.unmodifiableMap(new LinkedHashMap(it.next())));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static BattleResponse ready(Map<String, Object> map, List<Map<String, Object>> list, boolean z, int i2) {
        return new BattleResponse(BattleRuntimeStatus.READY, map, list, z, true, i2);
    }

    public static BattleResponse unavailable(BattleRuntimeStatus battleRuntimeStatus) {
        return new BattleResponse(battleRuntimeStatus, null, null, false, false, 0);
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

    public BattleRuntimeStatus getStatus() {
        return this.status;
    }

    public boolean isSettled() {
        return this.settled;
    }

    public boolean isSuccess() {
        return this.success;
    }
}
