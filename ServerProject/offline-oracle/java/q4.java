package com.sgscq.vpn;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class q4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f1319a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1321c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map f1322d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f1323e;

    public q4(long j2, String str, String str2, Map map, long j3) {
        if (j2 <= 0) {
            throw new IllegalArgumentException("sequence must be positive");
        }
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("event_id required");
        }
        if (str2.isEmpty()) {
            throw new IllegalArgumentException("kind required");
        }
        this.f1319a = j2;
        this.f1320b = str;
        this.f1321c = str2;
        this.f1322d = Collections.unmodifiableMap(new LinkedHashMap(map == null ? Collections.emptyMap() : map));
        this.f1323e = j3;
    }

    public static q4 a(Map map) {
        Object obj = map.get("payload");
        return new q4(c(map.get("sequence")), String.valueOf(map.getOrDefault("event_id", "")), String.valueOf(map.getOrDefault("kind", "")), obj instanceof Map ? (Map) obj : Collections.emptyMap(), c(map.get("created_at_ms")));
    }

    public static long c(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        try {
            return Long.parseLong(String.valueOf(obj));
        } catch (Exception e2) {
            throw new IllegalArgumentException("invalid event number", e2);
        }
    }

    public final int b(String str, int i2) {
        Object obj = this.f1322d.get(str);
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj == null) {
            return i2;
        }
        try {
            return Integer.parseInt(String.valueOf(obj));
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public final String d(String str) {
        Object obj = this.f1322d.get(str);
        return obj == null ? "" : String.valueOf(obj);
    }
}
