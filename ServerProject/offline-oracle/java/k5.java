package com.sgscq.vpn;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class k5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f1113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f1114c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f1115d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1116e;

    public k5(String str, List list, double d2, boolean z, int i2) {
        this.f1112a = str;
        this.f1113b = Collections.unmodifiableList(new ArrayList(list));
        this.f1114c = d2;
        this.f1115d = z;
        this.f1116e = i2;
    }
}
