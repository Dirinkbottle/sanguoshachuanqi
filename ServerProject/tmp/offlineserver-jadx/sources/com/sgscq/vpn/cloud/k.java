package com.sgscq.vpn.cloud;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f372a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f374c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f375d;

    public k(int i2, List list, List list2, List list3) {
        this.f373b = list;
        this.f374c = list2;
        this.f372a = i2;
        this.f375d = list3 == null ? Collections.emptyList() : list3;
    }

    public k(g gVar, com.sgscq.vpn.battle.a aVar, String str, int i2) {
        this.f373b = gVar;
        this.f374c = aVar;
        this.f375d = str;
        this.f372a = Math.max(1, i2);
    }

    public k(List list, List list2) {
        this(-1, list, list2, Collections.emptyList());
    }
}
