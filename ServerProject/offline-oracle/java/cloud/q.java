package com.sgscq.vpn.cloud;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f460b;

    public q(int i2, long j2, ArrayList arrayList) {
        if (i2 != 1) {
            this.f459a = j2;
            this.f460b = Collections.unmodifiableList(new ArrayList(arrayList));
            return;
        }
        this.f459a = j2;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(com.sgscq.vpn.config.i.a((List) it.next()));
        }
        this.f460b = com.sgscq.vpn.config.i.a(arrayList2);
    }
}
