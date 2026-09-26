package com.sgscq.vpn.cloud;

import android.content.Context;
import com.sgscq.vpn.m4;
import com.sgscq.vpn.x0;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class c0 implements AutoCloseable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q0 f296a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m.e f297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b0 f298c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b0 f299d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final m4 f300e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.sgscq.vpn.f0 f301f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ScheduledExecutorService f302g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicBoolean f303h = new AtomicBoolean();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile boolean f304i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile long f305j;

    public c0(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f296a = new q0(applicationContext);
        this.f297b = new m.e(5, applicationContext);
        this.f298c = new b0(1, applicationContext);
        this.f299d = new b0(0, applicationContext);
        this.f300e = new m4(applicationContext);
        this.f301f = new com.sgscq.vpn.f0(applicationContext);
        this.f302g = Executors.newSingleThreadScheduledExecutor(new x0(9));
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.f304i) {
            return;
        }
        this.f304i = true;
        this.f302g.shutdownNow();
    }
}
