package com.sgscq.vpn;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class z4 implements AutoCloseable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w4 f1602a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t4 f1603b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final y4 f1604c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f1605d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a5 f1607f = new a5();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ConcurrentHashMap f1608g = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p4 f1606e = new p4();

    public z4(w4 w4Var, t4 t4Var, y4 y4Var, long j2) {
        this.f1602a = w4Var;
        this.f1603b = t4Var;
        this.f1604c = y4Var;
        this.f1605d = Math.max(0L, j2);
    }

    public static long i(Map map) {
        Object obj = map.get("_persistence_journal_sequence");
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        if (obj == null) {
            return 0L;
        }
        try {
            return Long.parseLong(String.valueOf(obj));
        } catch (NumberFormatException e2) {
            throw new IllegalStateException("invalid player journal watermark", e2);
        }
    }

    public final x4 c(String str) {
        x4 x4Var = (x4) this.f1608g.get(str);
        if (x4Var != null) {
            return x4Var;
        }
        throw new IllegalStateException(c.a.i("unknown mutation kind ", str));
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.f1604c.close();
    }

    public final void d(String str) {
        Map mapF;
        p4 p4Var = this.f1606e;
        synchronized (p4Var) {
            mapF = p4.a(str) ? null : (Map) ((LinkedHashMap) p4Var.f1272b).get(str);
        }
        if (mapF == null) {
            mapF = f(str);
        }
        if (mapF == null) {
            throw new IllegalStateException("player not found for compaction");
        }
        try {
            this.f1602a.j(str, mapF);
            this.f1603b.b(i(mapF), str);
            this.f1606e.c(str, mapF);
        } catch (Exception e2) {
            if (!(e2 instanceof IllegalStateException)) {
                throw new IllegalStateException("full save failed", e2);
            }
        }
    }

    public final void e(String str) {
        synchronized (g(str)) {
            p4 p4Var = this.f1606e;
            synchronized (p4Var) {
                if (!p4.a(str)) {
                    ((LinkedHashMap) p4Var.f1272b).remove(str);
                }
                throw th;
            }
            t4 t4Var = this.f1603b;
            synchronized (t4Var) {
                ((Map) t4Var.f1400d).remove(str);
            }
        }
    }

    public final Map f(String str) {
        ArrayList<q4> arrayList;
        Map mapH = this.f1602a.h(str);
        if (mapH == null) {
            return null;
        }
        long jI = i(mapH);
        t4 t4Var = this.f1603b;
        synchronized (t4Var) {
            arrayList = new ArrayList(t4Var.c(str).f1346b);
        }
        for (q4 q4Var : arrayList) {
            long j2 = q4Var.f1319a;
            if (j2 > jI) {
                if (j2 != jI + 1) {
                    z2.g("SGSCQ_SAVE", "Discarding stale mutation journal uid=" + str + " baseWatermark=" + jI + " eventSequence=" + q4Var.f1319a);
                    t4 t4Var2 = this.f1603b;
                    synchronized (t4Var2) {
                        ((s4) t4Var2.f1399c).b(str);
                        ((Map) t4Var2.f1400d).put(str, new r4(1L, Collections.emptyList()));
                    }
                    return mapH;
                }
                ((n2) c(q4Var.f1321c)).a(mapH, q4Var);
                jI = q4Var.f1319a;
                mapH.put("_persistence_journal_sequence", Long.valueOf(jI));
            }
        }
        return mapH;
    }

    public final Object g(String str) {
        this.f1607f.getClass();
        return a5.a(str);
    }

    public final void h(String str, Map map) {
        if (map == null) {
            throw new IllegalArgumentException("player data required");
        }
        synchronized (g(str)) {
            this.f1604c.a(str);
            try {
                this.f1602a.j(str, map);
                this.f1603b.b(i(map), str);
                this.f1606e.c(str, map);
            } catch (Exception e2) {
                if (!(e2 instanceof IllegalStateException)) {
                    throw new IllegalStateException("full save failed", e2);
                }
            }
        }
    }
}
