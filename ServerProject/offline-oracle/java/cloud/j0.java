package com.sgscq.vpn.cloud;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f370a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f371b;

    public j0(int i2) {
        if (i2 != 2) {
            this.f370a = new ArrayList();
            this.f371b = new ArrayList();
        } else {
            this.f370a = new ArrayList();
            this.f371b = new ArrayList();
        }
    }

    public j0(ArrayList arrayList, ArrayList arrayList2) {
        this.f370a = Collections.unmodifiableList(new ArrayList(arrayList));
        this.f371b = Collections.unmodifiableList(new ArrayList(arrayList2));
    }
}
