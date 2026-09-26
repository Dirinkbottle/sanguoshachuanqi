package com.sgscq.vpn;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f616b;

    public d0(long j2, ArrayList arrayList) {
        this.f615a = j2;
        this.f616b = Collections.unmodifiableList(new ArrayList(arrayList));
    }

    public d0(long j2, LinkedHashMap linkedHashMap) {
        this.f615a = j2;
        this.f616b = Collections.unmodifiableMap(new LinkedHashMap(linkedHashMap));
    }
}
