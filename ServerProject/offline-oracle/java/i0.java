package com.sgscq.vpn;

import android.app.Application;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1045a;

    public /* synthetic */ i0(int i2) {
        this.f1045a = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1045a) {
            case 0:
                Application application = n0.f1208b;
                if (application != null) {
                    if (n0.f1210d || SgscqVpnService.f155m) {
                        try {
                            n0.d(application);
                        } catch (Throwable th) {
                            z2.g("CrashReporter", "心跳写入失败: ".concat(th.getClass().getSimpleName()));
                        }
                        Handler handler = n0.f1213g;
                        if (handler == null) {
                            handler = new Handler(Looper.getMainLooper());
                            n0.f1213g = handler;
                        }
                        i0 i0Var = n0.f1214h;
                        handler.removeCallbacks(i0Var);
                        handler.postDelayed(i0Var, 60000L);
                    }
                    break;
                }
                break;
            default:
                try {
                    r3.b();
                } catch (RuntimeException unused) {
                    return;
                }
                break;
        }
    }
}
