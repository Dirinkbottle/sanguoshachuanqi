package com.sgscq.vpn;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class t4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1399c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Serializable f1400d;

    public t4(int i2, String str, String str2) {
        this.f1399c = str;
        this.f1400d = str2;
        this.f1397a = 1;
        this.f1398b = i2;
    }

    public final synchronized q4 a(String str, long j2, String str2, String str3, Map map, long j3) {
        r4 r4VarC = c(str);
        for (q4 q4Var : r4VarC.f1346b) {
            if (q4Var.f1320b.equals(str2)) {
                return q4Var;
            }
        }
        long jMax = Math.max(r4VarC.f1345a, j2 + 1);
        q4 q4Var2 = new q4(jMax, str2, str3, map, j3);
        ArrayList arrayList = new ArrayList(r4VarC.f1346b);
        arrayList.add(q4Var2);
        r4 r4Var = new r4(jMax + 1, arrayList);
        ((s4) this.f1399c).e(str, r4Var.a());
        ((Map) this.f1400d).put(str, r4Var);
        return q4Var2;
    }

    public final synchronized void b(long j2, String str) {
        r4 r4VarC = c(str);
        ArrayList arrayList = new ArrayList();
        for (q4 q4Var : r4VarC.f1346b) {
            if (q4Var.f1319a > j2) {
                arrayList.add(q4Var);
            }
        }
        r4 r4Var = new r4(r4VarC.f1345a, arrayList);
        if (r4Var.f1346b.isEmpty()) {
            ((s4) this.f1399c).b(str);
        } else {
            ((s4) this.f1399c).e(str, r4Var.a());
        }
        ((Map) this.f1400d).put(str, r4Var);
    }

    public final r4 c(String str) {
        r4 r4Var;
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("uid required");
        }
        Map map = (Map) this.f1400d;
        r4 r4Var2 = (r4) map.get(str);
        if (r4Var2 != null) {
            return r4Var2;
        }
        String strK = ((s4) this.f1399c).k(str);
        if (strK == null || strK.isEmpty()) {
            r4Var = new r4(1L, Collections.emptyList());
        } else {
            try {
                LinkedHashMap linkedHashMapU1 = p5.u1(strK);
                Object obj = linkedHashMapU1.get("events");
                Object obj2 = linkedHashMapU1.get("next_sequence");
                if (!(obj instanceof List) || obj2 == null) {
                    throw new IllegalStateException("journal state missing fields");
                }
                ArrayList arrayList = new ArrayList();
                try {
                    for (Object obj3 : (List) obj) {
                        if (!(obj3 instanceof Map)) {
                            throw new IllegalStateException("invalid journal event");
                        }
                        arrayList.add(q4.a((Map) obj3));
                    }
                    r4Var = new r4(obj2 instanceof Number ? ((Number) obj2).longValue() : Long.parseLong(String.valueOf(obj2)), arrayList);
                } catch (RuntimeException e2) {
                    if (e2 instanceof IllegalStateException) {
                        throw e2;
                    }
                    throw new IllegalStateException("invalid journal state", e2);
                }
            } catch (RuntimeException e3) {
                throw new IllegalStateException("invalid journal json", e3);
            }
        }
        map.put(str, r4Var);
        return r4Var;
    }

    public t4(s4 s4Var, int i2, int i3) {
        this.f1400d = new LinkedHashMap();
        if (i2 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("journal limits must be positive");
        }
        this.f1399c = s4Var;
        this.f1397a = i2;
        this.f1398b = i3;
    }
}
