package com.sgscq.vpn;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class i5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f1059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f1060c;

    public i5(String str, ArrayList arrayList, double d2) {
        this.f1058a = str == null ? "" : str;
        ArrayList arrayListU = n5.u(arrayList);
        Collections.sort(arrayListU);
        this.f1059b = Collections.unmodifiableList(arrayListU);
        this.f1060c = d2;
    }
}
