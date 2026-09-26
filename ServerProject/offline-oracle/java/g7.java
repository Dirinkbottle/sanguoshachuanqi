package com.sgscq.vpn;

import java.util.function.LongSupplier;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g7 implements LongSupplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f718a;

    @Override // java.util.function.LongSupplier
    public final long getAsLong() {
        switch (this.f718a) {
            case 0:
                return c7.g() / 3600;
            default:
                return c7.f();
        }
    }
}
