package com.sgscq.vpn;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class j2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f1074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f1075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f1076c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f1077d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.sgscq.vpn.config.i f1078e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f1079f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f1080g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f1081h;

    public j2(ArrayList arrayList, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, List list, com.sgscq.vpn.config.i iVar, String str, long j2, long j3) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(Collections.unmodifiableMap(new LinkedHashMap((Map) it.next())));
        }
        this.f1074a = Collections.unmodifiableList(arrayList2);
        this.f1075b = Collections.unmodifiableMap(new LinkedHashMap(linkedHashMap));
        this.f1076c = Collections.unmodifiableMap(new LinkedHashMap(linkedHashMap2));
        this.f1077d = Collections.unmodifiableList(new ArrayList(list));
        this.f1078e = iVar;
        this.f1079f = str == null ? "" : str;
        this.f1080g = j2;
        this.f1081h = j3;
    }

    public final String a(String str) {
        String str2 = this.f1079f;
        if (str2.isEmpty() || !this.f1075b.containsValue(str)) {
            return "";
        }
        return str2 + ":fate_box:" + str;
    }

    public final String b(String str) {
        String str2 = this.f1079f;
        if (str2.isEmpty() || !this.f1076c.containsValue(str)) {
            return "";
        }
        return str2 + ":fate_skill:" + str;
    }
}
