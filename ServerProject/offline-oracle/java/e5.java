package com.sgscq.vpn;

import java.util.Map;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e5 implements Predicate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f654a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f655b;

    public /* synthetic */ e5(Object obj, int i2) {
        this.f654a = i2;
        this.f655b = obj;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        int i2 = this.f654a;
        Object obj2 = this.f655b;
        switch (i2) {
            case 0:
                ((h5) obj2).getClass();
                return (obj instanceof Map) && h5.K0(0, "num", (Map) obj) <= 0;
            case 1:
                String str = (String) obj;
                return p7.k(str) && !((Map) obj2).containsKey(str);
            default:
                return w1.a1(((com.sgscq.vpn.handler.f0) obj2).f827a.f901a).I0((String) obj) != null;
        }
    }
}
