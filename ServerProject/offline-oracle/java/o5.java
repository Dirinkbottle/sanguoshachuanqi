package com.sgscq.vpn;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class o5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w1 f1249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f1250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1251c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f1252d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1253e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f1254f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1255g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f1256h;

    public o5(w1 w1Var, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, List list) {
        this.f1249a = w1Var;
        this.f1250b = arrayList;
        this.f1251c = arrayList.size();
        this.f1252d = arrayList2;
        this.f1253e = arrayList2.size();
        this.f1254f = arrayList3;
        this.f1255g = arrayList3.size();
        this.f1256h = list;
    }

    public static boolean a(o5 o5Var, w1 w1Var, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        return o5Var.f1249a == w1Var && o5Var.f1250b == arrayList && o5Var.f1251c == arrayList.size() && o5Var.f1252d == arrayList2 && o5Var.f1253e == arrayList2.size() && o5Var.f1254f == arrayList3 && o5Var.f1255g == arrayList3.size();
    }
}
