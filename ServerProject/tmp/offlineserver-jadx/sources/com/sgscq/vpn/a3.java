package com.sgscq.vpn;

import java.util.Map;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a3 implements Predicate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f181a;

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return this.f181a > ((b3) ((Map.Entry) obj).getValue()).f203b;
    }
}
