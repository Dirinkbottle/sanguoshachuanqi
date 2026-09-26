package com.sgscq.vpn;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class j5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m5 f1087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1089c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f1090d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f1091e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Set f1092f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1093g;

    public j5(m5 m5Var, String str, int i2, List list, List list2, LinkedHashSet linkedHashSet, int i3) {
        this.f1087a = m5Var;
        this.f1088b = str;
        this.f1089c = i2;
        this.f1090d = Collections.unmodifiableList(new ArrayList(list));
        this.f1091e = Collections.unmodifiableList(new ArrayList(list2));
        this.f1092f = Collections.unmodifiableSet(new LinkedHashSet(linkedHashSet));
        this.f1093g = i3;
    }

    public final boolean a() {
        return !this.f1088b.isEmpty() && this.f1090d.size() == 2 && this.f1092f.size() == 4;
    }
}
