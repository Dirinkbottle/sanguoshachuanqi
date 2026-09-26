package com.sgscq.vpn;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class SgscqApplication extends Application {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f154a = 0;

    /* JADX WARN: Code duplicated, block: B:16:0x0049  */
    @Override // android.app.Application
    public final void onCreate() {
        final m0 m0Var;
        String strSubstring;
        String string;
        super.onCreate();
        if (!n0.f1209c) {
            n0.f1209c = true;
            n0.f1208b = this;
            n0.f1212f = SystemClock.elapsedRealtime();
            final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.sgscq.vpn.k0
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public final void uncaughtException(Thread thread, Throwable th) {
                    Application application = this;
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler = defaultUncaughtExceptionHandler;
                    if (!n0.f1211e) {
                        n0.f1211e = true;
                        try {
                            n0.u(application, n0.e(System.currentTimeMillis(), n0.j(application), thread == null ? "" : thread.getName(), thread == null ? -1L : thread.getId(), th, n0.g()));
                            application.getSharedPreferences("sgscq_crash_v1", 0).edit().putLong("java_crash_at", System.currentTimeMillis()).commit();
                        } catch (Throwable th2) {
                            try {
                                Log.e("CrashReporter", "崩溃报告落盘失败: " + th2);
                            } catch (Throwable th3) {
                                n0.f1211e = false;
                                throw th3;
                            }
                        }
                        n0.f1211e = false;
                    }
                    if (uncaughtExceptionHandler != null) {
                        uncaughtExceptionHandler.uncaughtException(thread, th);
                    }
                }
            });
            m0 m0VarS = n0.s(this);
            final long j2 = getSharedPreferences("sgscq_crash_v1", 0).getLong("java_crash_at", 0L);
            if (m0VarS == null) {
                m0Var = null;
            } else {
                if (!(m0VarS.f1167c || m0VarS.f1168d) || j2 >= m0VarS.f1165a) {
                    m0Var = null;
                } else {
                    m0Var = m0VarS;
                }
            }
            if (m0Var == null || (string = n0.r(getApplicationContext()).getString("session_tail", null)) == null || string.isEmpty()) {
                strSubstring = "";
            } else {
                try {
                    strSubstring = string.startsWith("p1:") ? string.substring(3) : y5.c(this, string, y5.f1571d);
                } catch (Exception unused) {
                    strSubstring = "";
                }
            }
            final String str = strSubstring;
            Context applicationContext = getApplicationContext();
            long jCurrentTimeMillis = System.currentTimeMillis();
            SharedPreferences.Editor editorEdit = n0.r(applicationContext).edit();
            editorEdit.putString("session", "1|" + jCurrentTimeMillis + "|" + jCurrentTimeMillis + "|" + Process.myPid() + "|" + (n0.f1210d ? 1 : 0) + "|" + (SgscqVpnService.f155m ? 1 : 0));
            editorEdit.remove("session_tail");
            editorEdit.remove("java_crash_at");
            editorEdit.apply();
            Thread thread = new Thread(new Runnable() { // from class: com.sgscq.vpn.j0
                @Override // java.lang.Runnable
                public final void run() {
                    String str2 = str;
                    long j3 = j2;
                    Application application = this;
                    m0 m0Var2 = m0Var;
                    if (m0Var2 != null) {
                        try {
                            if (m0Var2.f1167c || m0Var2.f1168d) {
                                n0.u(application, n0.f(System.currentTimeMillis(), n0.j(application), m0Var2, str2));
                            }
                        } catch (Throwable th) {
                            z2.g("CrashReporter", "上一会话崩溃记录失败: ".concat(th.getClass().getSimpleName()));
                        }
                    }
                    try {
                        n0.o(application, j3);
                    } catch (Throwable th2) {
                        z2.g("CrashReporter", "系统退出记录读取失败: ".concat(th2.getClass().getSimpleName()));
                    }
                }
            }, "CrashHarvest");
            thread.setDaemon(true);
            thread.start();
        }
        q.o.a(this);
        q.e.a(this);
        z0.d(this, "startup", "app");
        new Thread(new b(this, 4), "CloudSessionStartup").start();
    }
}
