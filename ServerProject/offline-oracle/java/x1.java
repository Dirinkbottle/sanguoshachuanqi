package com.sgscq.vpn;

import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class x1 implements y4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f1526a = Executors.newSingleThreadScheduledExecutor(new x0(1));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f1527b = new HashMap();

    @Override // com.sgscq.vpn.y4
    public final synchronized void a(String str) {
        ScheduledFuture scheduledFuture = (ScheduledFuture) this.f1527b.remove(str);
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
    }

    @Override // com.sgscq.vpn.y4
    public final synchronized void b(String str, long j2, d dVar) {
        a(str);
        this.f1527b.put(str, this.f1526a.schedule(new c(this, str, dVar, 3), j2, TimeUnit.MILLISECONDS));
    }

    @Override // java.lang.AutoCloseable
    public final synchronized void close() {
        Iterator it = this.f1527b.values().iterator();
        while (it.hasNext()) {
            ((ScheduledFuture) it.next()).cancel(false);
        }
        this.f1527b.clear();
        this.f1526a.shutdownNow();
    }
}
