package com.sgscq.vpn.handler;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f944f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f945g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f946h = 5;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f947i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f948j;

    public o(String str, String str2, String str3, int i2, int i3, int i4, String str4, int i5, List list) {
        this.f939a = str;
        this.f940b = str2;
        this.f941c = str3;
        this.f942d = i2;
        this.f943e = i3;
        this.f944f = i4;
        this.f945g = str4;
        this.f947i = Math.max(1, i5);
        this.f948j = list;
    }

    public final ArrayList a(int i2) {
        String str;
        ArrayList arrayList = new ArrayList();
        if (i2 >= 40) {
            str = "191006";
        } else if (i2 >= 32) {
            str = "191005";
        } else if (i2 >= 24) {
            str = "192004";
        } else if (i2 >= 16) {
            str = "192003";
        } else {
            str = i2 >= 8 ? "193002" : "194001";
        }
        arrayList.add(new n(str, 6, 6, this.f947i, false));
        arrayList.addAll(this.f948j);
        return arrayList;
    }
}
