package com.sgscq.vpn;

import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class o4 implements AutoCloseable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public p4 f1248a;

    public o4(p4 p4Var) {
        this.f1248a = p4Var;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        p4 p4Var = this.f1248a;
        if (p4Var == null) {
            return;
        }
        this.f1248a = null;
        ThreadLocal threadLocal = (ThreadLocal) p4Var.f1273c;
        n4 n4Var = (n4) threadLocal.get();
        threadLocal.remove();
        if (n4Var == null) {
            return;
        }
        for (String str : n4Var.f1222c.keySet()) {
            if (!n4Var.f1223d.contains(str) && (!n4Var.f1221b || !str.equals(n4Var.f1220a))) {
                synchronized (p4Var) {
                    if (!p4.a(str)) {
                        ((LinkedHashMap) p4Var.f1272b).remove(str);
                    }
                }
            }
        }
    }
}
