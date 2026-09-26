package com.sgscq.vpn.cloud;

/* JADX INFO: loaded from: classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f309a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f310b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f311c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f312d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f313e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f314f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f315g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final double f316h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f317i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f318j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f319k;

    public d0() {
        this("", "", "", 0, 0, "", 0, 0.0d, 0, 0, 0L);
    }

    public final boolean a(String str, String str2) {
        if (this.f313e > 0 && !this.f310b.isEmpty()) {
            if (str == null) {
                str = "";
            }
            if (this.f309a.equals(str)) {
                if (str2 == null) {
                    str2 = "";
                }
                if (this.f311c.equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public d0(String str, String str2, String str3, int i2, int i3, String str4, int i4, double d2, int i5, int i6, long j2) {
        this.f309a = str;
        this.f310b = str2 == null ? "" : str2;
        this.f311c = str3 == null ? "" : str3;
        this.f312d = Math.max(0, i2);
        this.f313e = Math.max(0, i3);
        this.f314f = str4 == null ? "" : str4;
        this.f315g = Math.max(0, i4);
        this.f316h = Math.max(0.0d, d2);
        this.f317i = Math.max(0, i5);
        this.f318j = Math.max(0, i6);
        this.f319k = Math.max(0L, j2);
    }
}
