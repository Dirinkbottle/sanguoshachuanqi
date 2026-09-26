package com.sgscq.vpn;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class d3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f628a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f631d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f632e;

    public d3() {
        this.f631d = "";
        this.f632e = "";
    }

    public final synchronized void a(long j2, String str, String str2, byte[] bArr) {
        ((LinkedHashMap) this.f632e).entrySet().removeIf(new a3(j2));
        ((LinkedHashMap) this.f632e).put(String.valueOf(str) + (char) 0 + str2, new b3((byte[]) bArr.clone(), j2 + this.f629b));
        while (((LinkedHashMap) this.f632e).size() > this.f628a) {
            ((LinkedHashMap) this.f632e).remove((String) ((LinkedHashMap) this.f632e).keySet().iterator().next());
        }
    }

    public final LinkedHashMap b(String str, long j2, int i2, String str2) {
        if (((Map) this.f630c) != null && j2 - this.f629b <= 30000 && ((String) this.f631d).equals(str) && this.f628a == i2 && ((String) this.f632e).equals(str2)) {
            return new LinkedHashMap((Map) this.f630c);
        }
        return null;
    }

    public final ArrayList c(long j2, String str) {
        Map map = (Map) this.f631d;
        if (str == null) {
            str = "";
        }
        c3 c3Var = (c3) map.remove(str);
        if (c3Var == null || j2 > c3Var.f241b) {
            return null;
        }
        return new ArrayList(c3Var.f240a);
    }

    public d3(int i2) {
        this.f630c = new ConcurrentHashMap();
        this.f631d = new ConcurrentHashMap();
        this.f632e = new LinkedHashMap(16, 0.75f, true);
        this.f629b = 15000L;
        this.f628a = 256;
    }

    public d3(ArrayList arrayList, ArrayList arrayList2, String str, int i2, long j2) {
        this.f630c = Collections.unmodifiableList(new ArrayList(arrayList));
        this.f631d = Collections.unmodifiableList(new ArrayList(arrayList2));
        this.f632e = str == null ? "" : str;
        this.f628a = Math.max(0, i2);
        this.f629b = Math.max(0L, j2);
    }

    public d3(List list, List list2, List list3, int i2, long j2) {
        this.f630c = list;
        this.f631d = list2;
        this.f632e = list3;
        this.f628a = Math.max(0, i2);
        this.f629b = j2;
    }
}
