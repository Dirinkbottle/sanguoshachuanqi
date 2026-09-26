package com.sgscq.vpn.battle;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f224a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f226c;

    public e(int i2, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        if (i2 != 1) {
            this.f224a = arrayList;
            this.f225b = arrayList2;
            this.f226c = arrayList3;
        } else {
            this.f224a = Collections.unmodifiableList(arrayList);
            this.f225b = Collections.unmodifiableList(arrayList2);
            this.f226c = Collections.unmodifiableList(arrayList3);
        }
    }
}
