package com.sgscq.vpn;

import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d5 implements Predicate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f636a;

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f636a) {
            case 0:
                return h5.a(obj);
            case 1:
                return h5.a(obj);
            case 2:
                return h5.a(obj);
            case 3:
            default:
                return com.sgscq.vpn.handler.x.p((String) obj);
        }
    }
}
