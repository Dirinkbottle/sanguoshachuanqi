package com.sgscq.vpn.config;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f563a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f565c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f566d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f567e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f568f;

    public e(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i8 != 1) {
            this.f563a = i2;
            this.f564b = i3;
            this.f565c = i4;
            this.f566d = i5;
            this.f567e = i6;
            this.f568f = i7;
            return;
        }
        this.f563a = Math.max(1, i2);
        this.f564b = Math.max(1, i3);
        this.f565c = Math.max(1, i4);
        this.f566d = Math.max(1, i5);
        this.f567e = Math.max(1, i6);
        this.f568f = Math.max(1, i7);
    }
}
