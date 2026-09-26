package com.sgscq.vpn;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class r4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f1345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f1346b;

    public r4(long j2, List list) {
        this.f1345a = Math.max(1L, j2);
        List<q4> listUnmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        this.f1346b = listUnmodifiableList;
        HashSet hashSet = new HashSet();
        long j3 = 0;
        for (q4 q4Var : listUnmodifiableList) {
            if (j3 != 0 && q4Var.f1319a != j3 + 1) {
                throw new IllegalStateException("journal sequence gap");
            }
            if (!hashSet.add(q4Var.f1320b)) {
                throw new IllegalStateException("duplicate journal event id");
            }
            j3 = q4Var.f1319a;
        }
        if (j3 >= this.f1345a) {
            throw new IllegalStateException("invalid next journal sequence");
        }
    }

    public final String a() {
        ArrayList arrayList = new ArrayList();
        for (q4 q4Var : this.f1346b) {
            arrayList.add(p5.z0("sequence", Long.valueOf(q4Var.f1319a), "event_id", q4Var.f1320b, "kind", q4Var.f1321c, "payload", new LinkedHashMap(q4Var.f1322d), "created_at_ms", Long.valueOf(q4Var.f1323e)));
        }
        return p5.s1(p5.z0("next_sequence", Long.valueOf(this.f1345a), "events", arrayList));
    }
}
