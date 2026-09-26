package com.sgscq.vpn;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f1310a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f1311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f1312c;

    public q(LinkedHashMap linkedHashMap, long j2, long j3) {
        this.f1310a = Collections.unmodifiableMap(new LinkedHashMap(linkedHashMap));
        this.f1311b = j2;
        this.f1312c = j3;
    }

    public final long a(String str) {
        Long l2 = (Long) this.f1310a.get(str);
        if (l2 == null) {
            return 0L;
        }
        return l2.longValue();
    }
}
