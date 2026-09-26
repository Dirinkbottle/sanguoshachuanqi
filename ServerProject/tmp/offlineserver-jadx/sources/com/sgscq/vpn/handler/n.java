package com.sgscq.vpn.handler;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f935c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f936d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f937e;

    public n(String str, int i2, int i3, long j2, boolean z) {
        this.f933a = str;
        this.f934b = i2;
        this.f935c = i3;
        this.f936d = j2;
        this.f937e = z;
    }

    public final long a(int i2) {
        boolean z = this.f937e;
        long j2 = this.f936d;
        if (!z) {
            return j2;
        }
        long jMax = Math.max(1, i2);
        long jMax2 = Math.max(1L, (jMax * jMax) / 100);
        if (j2 <= 0 || jMax2 <= Long.MAX_VALUE / j2) {
            return j2 * jMax2;
        }
        return Long.MAX_VALUE;
    }
}
