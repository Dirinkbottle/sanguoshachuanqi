package com.sgscq.vpn;

import java.util.List;
import java.util.Map;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r2 implements Predicate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1340b;

    public /* synthetic */ r2(String str, int i2) {
        this.f1339a = i2;
        this.f1340b = str;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        int i2 = this.f1339a;
        String str = this.f1340b;
        switch (i2) {
            case 0:
                return (obj instanceof Map) && c.a.A((Map) obj, "pk_id", str);
            case 1:
                return (obj instanceof Map) && c.a.A((Map) obj, "pk_id", str);
            case 2:
                String[] strArr = com.sgscq.vpn.handler.m.f924a;
                return (obj instanceof Map) && c.a.A((Map) obj, "pk_id", str);
            case 3:
                String[] strArr2 = com.sgscq.vpn.handler.m.f924a;
                return (obj instanceof Map) && c.a.A((Map) obj, "pk_id", str);
            default:
                List list = com.sgscq.vpn.handler.x0.f1028c;
                if (obj instanceof Map) {
                    return c.a.B((Map) obj, "pk_id", "", str);
                }
                return false;
        }
    }
}
