package com.sgscq.vpn;

import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class r1 implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Map f1336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Map f1337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Map f1338c;

    public r1(HashMap map, HashMap map2, HashMap map3) {
        this.f1336a = map;
        this.f1337b = map2;
        this.f1338c = map3;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i2;
        Map map;
        Map map2 = (Map) obj;
        Map map3 = (Map) obj2;
        int i3 = 2;
        String str = "equipment_id";
        if (w1.u1(map2)) {
            i2 = 0;
        } else {
            if (map2 != null && map2.containsKey("equipment_id")) {
                i2 = 1;
            } else {
                i2 = w1.E1(map2) ? 2 : 3;
            }
        }
        if (w1.u1(map3)) {
            i3 = 0;
        } else {
            if (map3 != null && map3.containsKey("equipment_id")) {
                i3 = 1;
            } else if (!w1.E1(map3)) {
                i3 = 3;
            }
        }
        int iCompare = Integer.compare(i2, i3);
        if (iCompare != 0) {
            return iCompare;
        }
        if (!w1.u1(map2)) {
            if (map2 != null && map2.containsKey("equipment_id")) {
                map = this.f1337b;
            } else {
                if (!w1.E1(map2)) {
                    return w1.b(map2).compareTo(w1.b(map3));
                }
                map = this.f1338c;
                str = "skill_id";
            }
            return w1.a(str, map2, map3, map);
        }
        String strJ = c.a.j(map2, "pk_id", "", "general_id");
        String strJ2 = c.a.j(map3, "pk_id", "", "general_id");
        Map map4 = this.f1336a;
        Map map5 = map4 != null ? (Map) map4.get(strJ) : null;
        Map map6 = map4 != null ? (Map) map4.get(strJ2) : null;
        int iCompare2 = Integer.compare(w1.d0(w1.q(map2, map5), map5), w1.d0(w1.q(map3, map6), map6));
        if (iCompare2 != 0 || (iCompare2 = Integer.compare(w1.C(strJ), w1.C(strJ2))) != 0) {
            return iCompare2;
        }
        int iCompare3 = Double.compare(w1.o(map3, map6), w1.o(map2, map5));
        if (iCompare3 == 0) {
            iCompare3 = strJ.compareTo(strJ2);
        }
        return iCompare3;
    }
}
