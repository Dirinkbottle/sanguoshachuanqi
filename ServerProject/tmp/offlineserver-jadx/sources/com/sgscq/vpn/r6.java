package com.sgscq.vpn;

import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r6 implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        v6 v6Var = (v6) obj;
        boolean z = SgscqVpnService.f155m;
        v6Var.f1488m = true;
        synchronized (v6Var.f1486k) {
            v6Var.f1486k.notifyAll();
        }
        v6Var.f1485j.offer(new byte[0]);
    }
}
