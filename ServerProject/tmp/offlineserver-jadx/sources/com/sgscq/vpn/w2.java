package com.sgscq.vpn;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class w2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f1510a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f1511b = new LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1512c;

    public final void a(String str, Map map) {
        if (map == null) {
            return;
        }
        LinkedHashMap linkedHashMap = this.f1511b;
        List arrayList = (List) linkedHashMap.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList();
            linkedHashMap.put(str, arrayList);
        }
        y2.t(arrayList, map);
    }
}
