package com.sgscq.vpn;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q2 implements Predicate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ List f1316b;

    public /* synthetic */ q2(int i2, ArrayList arrayList) {
        this.f1315a = i2;
        this.f1316b = arrayList;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        int i2 = this.f1315a;
        List list = this.f1316b;
        switch (i2) {
            case 0:
                break;
            default:
                break;
        }
        return list.contains(y2.v0((Map) obj));
    }
}
