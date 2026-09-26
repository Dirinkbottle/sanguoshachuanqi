package com.sgscq.vpn.config;

import com.sgscq.vpn.t;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f580a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f581b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m.e f582c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final t f583d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f584e;

    public i(int i2, String str, m.e eVar, t tVar, ArrayList arrayList) {
        this.f580a = i2;
        this.f581b = str;
        this.f582c = eVar;
        this.f583d = tVar;
        this.f584e = a(arrayList);
    }

    public static List a(List list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }
}
