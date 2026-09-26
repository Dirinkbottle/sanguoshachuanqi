package com.sgscq.vpn.handler;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f881a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f883c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f884d;

    public j() {
        this.f883c = new b0();
        this.f884d = Collections.emptyMap();
    }

    public static j d() {
        return new j(false, false, new ArrayList(), new LinkedHashSet());
    }

    public final void a(Map map, AbstractCollection abstractCollection) {
        if (map != null) {
            b0 b0Var = (b0) this.f883c;
            y0.a(map, abstractCollection, "General", b0Var.f764a);
            y0.a(map, abstractCollection, "Skill", b0Var.f765b);
            y0.a(map, abstractCollection, "Item", b0Var.f766c);
            y0.a(map, abstractCollection, "GeneralSoul", b0Var.f767d);
            y0.a(map, abstractCollection, "Equipment", b0Var.f768e);
            y0.a(map, abstractCollection, "EquipmentPiece", b0Var.f769f);
            y0.a(map, abstractCollection, "Atlas", b0Var.f770g);
            if ((this.f882b || b0Var.f771h > 0 || b0Var.f772i) && !abstractCollection.contains("Player")) {
                abstractCollection.add("Player");
            }
        }
    }

    public final void b(Map map) {
        if (((Map) this.f884d).isEmpty()) {
            return;
        }
        Object obj = map.get("surrender_info");
        if (!(obj instanceof Map)) {
            map.put("surrender_info", (Map) this.f884d);
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap((Map) obj);
        Object obj2 = linkedHashMap.get("general_list");
        Set set = y0.f1038a;
        LinkedHashMap linkedHashMap2 = obj2 instanceof Map ? new LinkedHashMap((Map) obj2) : new LinkedHashMap();
        Object obj3 = ((Map) this.f884d).get("general_list");
        for (Map.Entry entry : (obj3 instanceof Map ? new LinkedHashMap((Map) obj3) : new LinkedHashMap()).entrySet()) {
            if (!linkedHashMap2.containsKey(entry.getKey())) {
                linkedHashMap2.put((String) entry.getKey(), entry.getValue());
            }
        }
        linkedHashMap.put("general_list", linkedHashMap2);
        map.put("surrender_info", linkedHashMap);
    }

    public final boolean c() {
        return !((Map) this.f884d).isEmpty();
    }

    public j(boolean z, boolean z2, ArrayList arrayList, LinkedHashSet linkedHashSet) {
        this.f881a = z;
        this.f882b = z2;
        this.f883c = arrayList;
        this.f884d = linkedHashSet;
    }
}
