package com.sgscq.vpn;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class a7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f191b;

    public a7() {
        this.f190a = new ConcurrentHashMap();
        this.f191b = new ConcurrentHashMap();
    }

    public final Set a() {
        return ((Map) this.f190a).keySet();
    }

    public final Map b(String str) {
        return (Map) ((Map) this.f190a).get(str);
    }

    public final void c(String str) {
        ((Handler) this.f191b).post(new d(this, str, 27));
    }

    public a7(int i2) {
        this((HashMap) null, Collections.emptySet());
    }

    public a7(Context context) {
        this.f191b = new Handler(Looper.getMainLooper());
        this.f190a = context;
    }

    public a7(i2 i2Var, j2 j2Var) {
        this.f190a = i2Var;
        this.f191b = j2Var;
    }

    public a7(ArrayList arrayList, a7 a7Var) {
        this.f190a = new ArrayList(arrayList);
        this.f191b = a7Var;
    }

    public a7(HashMap map, Set set) {
        this.f190a = map == null ? new HashMap() : map;
        this.f191b = set == null ? new HashSet() : set;
    }

    public a7(LinkedHashSet linkedHashSet, ArrayList arrayList) {
        this.f190a = new LinkedHashSet(linkedHashSet);
        this.f191b = new ArrayList(arrayList);
    }
}
