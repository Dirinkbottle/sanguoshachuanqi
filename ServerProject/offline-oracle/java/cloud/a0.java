package com.sgscq.vpn.cloud;

/* JADX INFO: loaded from: classes.dex */
public final class a0 extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f267a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f269c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f270d;

    public a0(int i2, int i3, long j2, String str, String str2) {
        super((str2 == null || str2.isEmpty()) ? str : str2);
        this.f267a = i2;
        this.f268b = str == null ? "cloud_error" : str;
        this.f269c = Math.max(0, i3);
        this.f270d = Math.max(0L, j2);
    }

    public final String a() {
        return this.f268b;
    }

    public a0(int i2, int i3, String str, String str2) {
        this(i2, i3, 0L, str, str2);
    }
}
