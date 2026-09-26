package com.sgscq.vpn;

import java.util.concurrent.atomic.AtomicLong;
import java.util.function.ToLongFunction;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o7 implements ToLongFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1258a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f1259b;

    public /* synthetic */ o7(long j2, int i2) {
        this.f1258a = i2;
        this.f1259b = j2;
    }

    @Override // java.util.function.ToLongFunction
    public final long applyAsLong(Object obj) {
        int i2 = this.f1258a;
        long j2 = this.f1259b;
        switch (i2) {
            case 0:
                return p7.C(j2, ((v5) obj).f1459a);
            case 1:
                return p7.C(j2, ((v5) obj).f1459a);
            case 2:
                return p7.C(j2, ((v5) obj).f1459a);
            case 3:
                return p7.C(j2, ((v5) obj).f1459a);
            case 4:
                return p7.C(j2, ((v5) obj).f1459a);
            default:
                AtomicLong atomicLong = com.sgscq.vpn.handler.h1.f872b;
                return Math.abs(((long) ((v5) obj).f1462d) - j2);
        }
    }
}
