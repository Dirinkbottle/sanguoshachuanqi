package com.sgscq.vpn.battle;

import a.w;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f212a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f213b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f214c;

    public a(int i2, String str, ArrayList arrayList) {
        this.f214c = str;
        this.f212a = i2;
        this.f213b = Collections.unmodifiableList(arrayList);
    }

    public final void a(List list, int i2, int i3) {
        if (list == null) {
            return;
        }
        for (int iMax = Math.max(0, i2); iMax < Math.min(i3, list.size()); iMax++) {
            BattleUnit battleUnit = (BattleUnit) list.get(iMax);
            Map map = (Map) this.f214c;
            List list2 = this.f213b;
            map.put(battleUnit, Integer.valueOf(list2.size()));
            list2.add(w.p("id", battleUnit.getId(), "hpCur", Double.valueOf(battleUnit.getHpMax()), "hpMax", Double.valueOf(battleUnit.getHpMax()), "name", battleUnit.getName(), "evolution_image_status", Boolean.valueOf(battleUnit.hasEvolutionImage())));
        }
    }

    public a(ArrayList arrayList, com.sgscq.vpn.cloud.g gVar, int i2) {
        this.f213b = arrayList;
        this.f214c = gVar;
        this.f212a = Math.max(0, i2);
    }

    public a(List list, List list2, int i2, int i3) {
        this.f213b = new ArrayList();
        this.f214c = new IdentityHashMap();
        this.f212a = i2;
        a(list, 0, i2);
        a(list2, 0, i3);
        a(list, i2, list == null ? 0 : list.size());
        a(list2, i3, list2 != null ? list2.size() : 0);
    }
}
