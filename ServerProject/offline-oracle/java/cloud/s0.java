package com.sgscq.vpn.cloud;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f490c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f491d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f492e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final double f493f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinkedHashMap f494g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LinkedHashMap f495h;

    public s0(String str, String str2, String str3, long j2, int i2, double d2, Map map, Map map2) {
        this.f488a = str == null ? "" : str;
        this.f489b = str2 == null ? "" : str2;
        this.f490c = str3 == null ? "" : str3;
        this.f491d = j2;
        this.f492e = Math.max(0, i2);
        this.f493f = Math.max(0.0d, d2);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f494g = linkedHashMap;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        this.f495h = linkedHashMap2;
        linkedHashMap.putAll(map);
        if (map2 != null) {
            linkedHashMap2.putAll(map2);
        }
    }
}
