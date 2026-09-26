package com.sgscq.vpn;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class DebugSparringConfig$Config {
    public int version = 1;

    @b.b("lord_level")
    public int lordLevel = 120;
    public List<DebugSparringConfig$Slot> slots = new ArrayList();

    public static void clearRuntimeForTest() {
        p0.f1261b = null;
    }

    public static DebugSparringConfig$Config defaults() {
        DebugSparringConfig$Config debugSparringConfig$Config = new DebugSparringConfig$Config();
        for (int i2 = 1; i2 <= 11; i2++) {
            debugSparringConfig$Config.slots.add(DebugSparringConfig$Slot.empty(i2));
        }
        return debugSparringConfig$Config;
    }

    private DebugSparringConfig$Slot findSlot(int i2) {
        List<DebugSparringConfig$Slot> list = this.slots;
        if (list == null) {
            return null;
        }
        for (DebugSparringConfig$Slot debugSparringConfig$Slot : list) {
            if (debugSparringConfig$Slot != null && debugSparringConfig$Slot.position == i2) {
                return debugSparringConfig$Slot;
            }
        }
        return null;
    }

    public static DebugSparringConfig$Config fromJson(String str) {
        DebugSparringConfig$Config debugSparringConfig$ConfigFromJsonOrNull = fromJsonOrNull(str);
        return debugSparringConfig$ConfigFromJsonOrNull == null ? defaults() : debugSparringConfig$ConfigFromJsonOrNull;
    }

    public static DebugSparringConfig$Config fromJsonOrNull(String str) {
        if (str == null || str.trim().isEmpty()) {
            return null;
        }
        try {
            DebugSparringConfig$Config debugSparringConfig$Config = (DebugSparringConfig$Config) p0.f1260a.d(str, DebugSparringConfig$Config.class);
            if (debugSparringConfig$Config == null) {
                return null;
            }
            return debugSparringConfig$Config.normalized();
        } catch (a.u | IllegalStateException unused) {
            return null;
        }
    }

    public static DebugSparringConfig$Config load(SharedPreferences sharedPreferences) {
        return sharedPreferences == null ? defaults() : fromJson(sharedPreferences.getString("debug_sparring_config", ""));
    }

    public static DebugSparringConfig$Config loadLatest(SharedPreferences sharedPreferences) {
        DebugSparringConfig$Config debugSparringConfig$ConfigRuntimeSnapshot = runtimeSnapshot();
        return debugSparringConfig$ConfigRuntimeSnapshot == null ? load(sharedPreferences) : debugSparringConfig$ConfigRuntimeSnapshot;
    }

    public static DebugSparringConfig$Config loadLatestOrNull(SharedPreferences sharedPreferences) {
        DebugSparringConfig$Config debugSparringConfig$ConfigRuntimeSnapshot = runtimeSnapshot();
        if (debugSparringConfig$ConfigRuntimeSnapshot != null) {
            return debugSparringConfig$ConfigRuntimeSnapshot;
        }
        if (sharedPreferences == null || !sharedPreferences.contains("debug_sparring_config")) {
            return null;
        }
        DebugSparringConfig$Config debugSparringConfig$ConfigLoad = load(sharedPreferences);
        publishRuntime(debugSparringConfig$ConfigLoad);
        return debugSparringConfig$ConfigLoad;
    }

    public static void publishRuntime(DebugSparringConfig$Config debugSparringConfig$Config) {
        p0.f1261b = debugSparringConfig$Config == null ? null : debugSparringConfig$Config.normalized();
    }

    private static void registerGeneral(List<String> list, Set<String> set, Map<String, String> map, String str, String str2) {
        if (set.add(str)) {
            map.put(str, str2);
            return;
        }
        list.add(str2 + ": duplicate general " + str + " (already used by " + map.get(str) + ")");
    }

    private static void registerSkillType(List<String> list, Map<String, String> map, DebugSparringConfig$SkillTypeResolver debugSparringConfig$SkillTypeResolver, String str, String str2) {
        String strResolve;
        if (debugSparringConfig$SkillTypeResolver == null || str == null || str.trim().isEmpty() || (strResolve = debugSparringConfig$SkillTypeResolver.resolve(str)) == null || strResolve.trim().isEmpty()) {
            return;
        }
        String lowerCase = strResolve.trim().toLowerCase();
        String str3 = map.get(lowerCase);
        if (str3 == null) {
            map.put(lowerCase, str2);
            return;
        }
        list.add(str2 + ": duplicate skill type " + lowerCase + " (already used by " + str3 + ")");
    }

    public static DebugSparringConfig$Config runtimeSnapshot() {
        DebugSparringConfig$Config debugSparringConfig$Config = p0.f1261b;
        if (debugSparringConfig$Config == null) {
            return null;
        }
        return debugSparringConfig$Config.normalized();
    }

    public DebugSparringConfig$Config normalized() {
        DebugSparringConfig$Config debugSparringConfig$Config = new DebugSparringConfig$Config();
        int i2 = this.version;
        if (i2 <= 0) {
            i2 = 1;
        }
        debugSparringConfig$Config.version = i2;
        debugSparringConfig$Config.lordLevel = Math.max(1, this.lordLevel);
        debugSparringConfig$Config.slots = new ArrayList();
        for (int i3 = 1; i3 <= 11; i3++) {
            DebugSparringConfig$Slot debugSparringConfig$SlotFindSlot = findSlot(i3);
            debugSparringConfig$Config.slots.add(debugSparringConfig$SlotFindSlot == null ? DebugSparringConfig$Slot.empty(i3) : debugSparringConfig$SlotFindSlot.normalized(i3));
        }
        return debugSparringConfig$Config;
    }

    public void save(SharedPreferences sharedPreferences) {
        DebugSparringConfig$Config debugSparringConfig$ConfigNormalized = normalized();
        publishRuntime(debugSparringConfig$ConfigNormalized);
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putString("debug_sparring_config", debugSparringConfig$ConfigNormalized.toJson()).apply();
    }

    public DebugSparringConfig$Slot slot(int i2) {
        if (i2 < 1 || i2 > 11) {
            return DebugSparringConfig$Slot.empty(i2);
        }
        DebugSparringConfig$Slot debugSparringConfig$SlotFindSlot = findSlot(i2);
        return debugSparringConfig$SlotFindSlot == null ? DebugSparringConfig$Slot.empty(i2) : debugSparringConfig$SlotFindSlot.normalized(i2);
    }

    public String toJson() {
        return p0.f1260a.i(normalized());
    }

    public List<String> validate() {
        return validate(null);
    }

    public List<String> validate(DebugSparringConfig$SkillTypeResolver debugSparringConfig$SkillTypeResolver) {
        HashSet hashSet;
        StringBuilder sb;
        String str;
        DebugSparringConfig$Config debugSparringConfig$ConfigNormalized = normalized();
        ArrayList arrayList = new ArrayList();
        HashSet hashSet2 = new HashSet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<DebugSparringConfig$Slot> it = debugSparringConfig$ConfigNormalized.slots.iterator();
        while (it.hasNext()) {
            DebugSparringConfig$Slot next = it.next();
            if (!next.generalId.isEmpty()) {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                registerGeneral(arrayList, hashSet2, linkedHashMap, next.generalId, "slot " + next.position + " main");
                registerSkillType(arrayList, linkedHashMap2, debugSparringConfig$SkillTypeResolver, debugSparringConfig$SkillTypeResolver == null ? "" : debugSparringConfig$SkillTypeResolver.resolveNative(next.generalId), "slot " + next.position + " native");
                registerSkillType(arrayList, linkedHashMap2, debugSparringConfig$SkillTypeResolver, next.skillId, "slot " + next.position + " skill");
                HashSet hashSet3 = new HashSet();
                int i2 = 0;
                while (i2 < next.deputyGeneralIds.size()) {
                    String str2 = next.deputyGeneralIds.get(i2);
                    if (str2.isEmpty()) {
                        it = it;
                        hashSet = hashSet2;
                    } else {
                        StringBuilder sb2 = new StringBuilder("slot ");
                        sb2.append(next.position);
                        sb2.append(" deputy");
                        int i3 = i2 + 1;
                        sb2.append(i3);
                        registerGeneral(arrayList, hashSet2, linkedHashMap, str2, sb2.toString());
                        String strResolveNative = debugSparringConfig$SkillTypeResolver == null ? "" : debugSparringConfig$SkillTypeResolver.resolveNative(str2);
                        StringBuilder sb3 = new StringBuilder("slot ");
                        hashSet = hashSet2;
                        sb3.append(next.position);
                        sb3.append(" deputy");
                        sb3.append(i3);
                        sb3.append(" native");
                        registerSkillType(arrayList, linkedHashMap2, debugSparringConfig$SkillTypeResolver, strResolveNative, sb3.toString());
                        if (next.generalId.equals(str2)) {
                            sb = new StringBuilder("slot ");
                            sb.append(next.position);
                            str = ": deputy equals general";
                        } else if (!hashSet3.add(str2)) {
                            sb = new StringBuilder("slot ");
                            sb.append(next.position);
                            str = ": duplicate deputy";
                        }
                        sb.append(str);
                        arrayList.add(sb.toString());
                    }
                    i2++;
                    it = it;
                    hashSet2 = hashSet;
                }
            }
        }
        return arrayList;
    }
}
