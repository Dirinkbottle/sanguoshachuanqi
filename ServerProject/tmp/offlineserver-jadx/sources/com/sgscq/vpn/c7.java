package com.sgscq.vpn;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class c7 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile c7 f253h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f258a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f259b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f260c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile boolean f261d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile boolean f262e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile String f263f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String[] f252g = {"https://www.baidu.com/", "https://www.qq.com/", "https://www.taobao.com/", "https://www.jd.com/"};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile boolean f254i = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile long f255j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static volatile long f256k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static volatile long f257l = 0;

    public c7(Context context) {
        this.f263f = "";
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("sgscq_trusted_time", 0);
        this.f258a = sharedPreferences;
        this.f261d = false;
        this.f262e = false;
        sharedPreferences.getLong("skew_ms", Long.MAX_VALUE);
        this.f263f = sharedPreferences.getString("source", "");
        long jMax = sharedPreferences.getLong("game_time_ms", 0L);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        jMax = jMax <= 0 ? Math.max(1L, System.currentTimeMillis()) : jMax;
        long jMax2 = Math.max(1L, jElapsedRealtime);
        f255j = jMax;
        f256k = jMax2;
        f257l = jMax;
        h(jMax);
        f254i = e();
    }

    public static String b() {
        return c(f());
    }

    public static String c(long j2) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+08:00"));
        return simpleDateFormat.format(new Date(j2));
    }

    public static c7 d(Context context) {
        if (f253h == null) {
            synchronized (c7.class) {
                if (f253h == null) {
                    f253h = new c7(context);
                }
            }
        }
        return f253h;
    }

    public static long f() {
        long j2 = f255j;
        long j3 = f256k;
        if (j2 <= 0 || j3 <= 0) {
            long j4 = f257l;
            return j4 > 0 ? j4 : System.currentTimeMillis();
        }
        long jMax = Math.max(0L, SystemClock.elapsedRealtime() - j3) + j2;
        f257l = jMax;
        return jMax;
    }

    public static long g() {
        return f() / 1000;
    }

    public final void a(boolean z, long j2, String str, long j3) {
        this.f261d = true;
        this.f262e = z;
        if (str == null) {
            str = "";
        }
        this.f263f = str;
        if (z && j3 > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long jMax = Math.max(1L, j3);
            long jMax2 = Math.max(1L, jElapsedRealtime);
            f255j = jMax;
            f256k = jMax2;
            f257l = jMax;
        }
        f254i = e();
        this.f258a.edit().putBoolean("checked", true).putBoolean("trusted", z).putLong("skew_ms", j2).putString("source", this.f263f).putLong("checked_at", System.currentTimeMillis()).putLong("trusted_base_ms", f255j).putLong("elapsed_base_ms", f256k).putLong("game_time_ms", f()).putLong("game_elapsed_base_ms", f256k).apply();
    }

    public final boolean e() {
        return (this.f261d && this.f262e) ? false : true;
    }

    public final void h(long j2) {
        if (j2 <= 0) {
            return;
        }
        this.f258a.edit().putLong("game_time_ms", j2).putLong("game_elapsed_base_ms", f256k).apply();
    }

    public final void i() {
        if (this.f259b.compareAndSet(false, true)) {
            Thread thread = new Thread(new b(this, 9), "GameTime");
            thread.setDaemon(true);
            thread.start();
        }
    }

    public final String j() {
        if (this.f261d) {
            return this.f262e ? "网络时间校验正常" : "本机时间异常，限时功能和设置已禁用";
        }
        return "正在校验网络时间，限时功能暂不可用";
    }

    public final void k(b7 b7Var) {
        i();
        if (this.f261d && this.f262e && f() - this.f258a.getLong("checked_at", 0L) < 1800000) {
            if (b7Var != null) {
                b7Var.b(true);
            }
        } else if (this.f260c.compareAndSet(false, true)) {
            new Thread(new d(this, b7Var, 26), "TrustedTime").start();
        } else if (b7Var != null) {
            b7Var.b(this.f262e);
        }
    }
}
