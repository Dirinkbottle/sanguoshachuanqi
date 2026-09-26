package com.sgscq.vpn;

import android.os.Build;
import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class z2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SimpleDateFormat f1595a = new SimpleDateFormat("HH:mm:ss.SSS", Locale.getDefault());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SimpleDateFormat f1596b = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());

    public static void a(String str, String str2, String str3) {
        u6 u6VarJ = SgscqVpnService.j();
        if (u6VarJ.f1436d) {
            return;
        }
        StringBuilder sbL = c.a.l("[", f1595a.format(new Date()), "] ", str2, "/");
        sbL.append(str);
        sbL.append(": ");
        sbL.append(str3);
        sbL.append("\n");
        u6VarJ.a(sbL.toString().getBytes());
    }

    public static void b(String str, String str2) {
        a(str, "D", str2);
        try {
            Log.d(str, str2);
        } catch (RuntimeException unused) {
        }
    }

    public static void c(String str, String str2) {
        a(str, "E", str2);
        try {
            Log.e(str, str2);
        } catch (RuntimeException unused) {
        }
    }

    public static void d(String str, String str2, Exception exc) {
        String string;
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append("\n");
        try {
            string = Log.getStackTraceString(exc);
        } catch (RuntimeException unused) {
            string = exc.toString();
        }
        sb.append(string);
        a(str, "E", sb.toString());
        try {
            Log.e(str, str2, exc);
        } catch (RuntimeException unused2) {
        }
    }

    public static void e(String str, String str2) {
        a(str, "I", str2);
        try {
            Log.i(str, str2);
        } catch (RuntimeException unused) {
        }
    }

    public static void f() {
        SgscqVpnService.j().a(("=== SGSCQ Analysis Log ===\nCreated: " + f1596b.format(new Date()) + "\nDevice: " + Build.MODEL + "\nAndroid: " + Build.VERSION.RELEASE + "\n\n").getBytes());
    }

    public static void g(String str, String str2) {
        a(str, "W", str2);
        try {
            Log.w(str, str2);
        } catch (RuntimeException unused) {
        }
    }
}
