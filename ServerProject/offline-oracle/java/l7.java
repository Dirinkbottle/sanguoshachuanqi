package com.sgscq.vpn;

import java.util.concurrent.atomic.AtomicLong;
import java.util.function.ToIntFunction;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l7 implements ToIntFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1163b;

    public /* synthetic */ l7(int i2, int i3) {
        this.f1162a = i3;
        this.f1163b = i2;
    }

    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        int i2 = this.f1162a;
        int i3 = this.f1163b;
        switch (i2) {
            case 0:
                return ((v5) obj).s(i3);
            case 1:
                return Math.abs(((v5) obj).f1461c - i3);
            case 2:
                return Math.abs(((v5) obj).f1461c - i3);
            case 3:
                return Math.abs(((v5) obj).f1461c - i3);
            case 4:
                return Math.abs(((v5) obj).f1461c - i3);
            default:
                AtomicLong atomicLong = com.sgscq.vpn.handler.h1.f872b;
                return Math.abs(((v5) obj).f1461c - i3);
        }
    }
}
