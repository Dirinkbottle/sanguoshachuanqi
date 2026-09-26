package com.sgscq.vpn;

import java.util.function.ToLongFunction;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n7 implements ToLongFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1234b;

    public /* synthetic */ n7(int i2, int i3) {
        this.f1233a = i3;
        this.f1234b = i2;
    }

    @Override // java.util.function.ToLongFunction
    public final long applyAsLong(Object obj) {
        int i2 = this.f1233a;
        int i3 = this.f1234b;
        switch (i2) {
            case 0:
                break;
            case 1:
                break;
            default:
                break;
        }
        return Math.abs(((long) ((v5) obj).f1462d) - ((long) i3));
    }
}
