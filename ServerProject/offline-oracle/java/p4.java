package com.sgscq.vpn;

import java.io.Serializable;
import java.net.Proxy;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class p4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Serializable f1272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1273c;

    public p4() {
        this.f1273c = new ThreadLocal();
        this.f1271a = 4;
        this.f1272b = new LinkedHashMap(4, 0.75f, true);
    }

    public static boolean a(String str) {
        return str == null || str.trim().isEmpty();
    }

    public final Map b(String str, a aVar) {
        Map mapF;
        n4 n4Var = (n4) ((ThreadLocal) this.f1273c).get();
        if (n4Var == null || a(str)) {
            return ((z4) aVar.f172b).f((String) aVar.f173c);
        }
        Map map = (Map) n4Var.f1222c.get(str);
        if (map != null) {
            return map;
        }
        synchronized (this) {
            mapF = (Map) ((LinkedHashMap) this.f1272b).get(str);
        }
        if (mapF == null) {
            mapF = ((z4) aVar.f172b).f((String) aVar.f173c);
        }
        if (mapF != null) {
            n4Var.f1222c.put(str, mapF);
            d(str, mapF);
        }
        return mapF;
    }

    public final synchronized void c(String str, Map map) {
        if (!a(str) && map != null) {
            d(str, map);
        }
    }

    public final synchronized void d(String str, Map map) {
        ((LinkedHashMap) this.f1272b).put(str, map);
        while (((LinkedHashMap) this.f1272b).size() > this.f1271a) {
            ((LinkedHashMap) this.f1272b).remove((String) ((LinkedHashMap) this.f1272b).keySet().iterator().next());
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public p4(String str, int i2, int i3) {
        this(str, Proxy.Type.HTTP, i2);
        if (i3 != 3) {
        } else {
            this(str, "", i2);
        }
    }

    public /* synthetic */ p4(String str, Serializable serializable, int i2) {
        this.f1272b = str;
        this.f1271a = i2;
        this.f1273c = serializable;
    }
}
