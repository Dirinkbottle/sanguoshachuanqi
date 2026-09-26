package com.sgscq.vpn.cloud;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f337c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f338d;

    public g() {
        this((m) null, (o) null, 0, 0L);
    }

    public g(int i2, long j2, String str, ArrayList arrayList) {
        List listUnmodifiableList = Collections.unmodifiableList(new ArrayList(arrayList));
        this.f337c = listUnmodifiableList;
        this.f338d = str == null ? "" : str;
        this.f335a = Math.max(listUnmodifiableList.size(), i2);
        this.f336b = Math.max(0L, j2);
    }

    public g(m mVar, o oVar, int i2, long j2) {
        this.f337c = mVar;
        this.f338d = oVar;
        this.f335a = Math.max(0, i2);
        this.f336b = Math.max(0L, j2);
    }

    public g(List list, long j2, g gVar, int i2) {
        this.f337c = list;
        this.f336b = j2;
        this.f338d = gVar;
        this.f335a = Math.max(0, i2);
    }
}
