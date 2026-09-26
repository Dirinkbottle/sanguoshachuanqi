package com.sgscq.vpn.cloud;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f499a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f500b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f501c;

    public u(int i2, int i3, List list, List list2) {
        if (i3 != 1) {
            this.f499a = list;
            this.f500b = list2 == null ? Collections.emptyList() : list2;
            this.f501c = Math.max(0, i2);
        } else {
            this.f499a = Collections.unmodifiableList(new ArrayList(list));
            this.f500b = Collections.unmodifiableList(new ArrayList(list2));
            this.f501c = Math.max(0, i2);
        }
    }
}
