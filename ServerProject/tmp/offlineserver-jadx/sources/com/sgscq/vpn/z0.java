package com.sgscq.vpn;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Build;
import java.nio.charset.StandardCharsets;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public abstract class z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExecutorService f1591a = Executors.newSingleThreadExecutor(new x0(0));

    public static a.t a(String str, String str2, String str3, long j2, String str4, String str5, String str6, int i2, f fVar, z zVar, d1 d1Var) {
        a.t tVar = new a.t();
        tVar.k("schema_version", 1);
        tVar.l("event_id", b(str3, 128));
        tVar.l("event_type", str);
        tVar.l("event_source", str2);
        tVar.k("occurred_at", Long.valueOf(j2));
        tVar.l("device_hash", b(str4, 128));
        tVar.l("install_id", b(str5, 128));
        tVar.l("app_version_name", b(str6, 64));
        tVar.k("app_version_code", Integer.valueOf(i2));
        tVar.l("build_type", b("release", 32));
        boolean z = fVar.f665c && !b(fVar.f663a, 256).isEmpty();
        a.t tVar2 = new a.t();
        Boolean boolValueOf = Boolean.valueOf(z);
        a.q xVar = a.s.f26a;
        tVar2.j("bound", boolValueOf == null ? xVar : new a.x(boolValueOf));
        tVar2.l("user_id", z ? b(fVar.f663a, 256) : "");
        tVar2.l("name", z ? b(fVar.f664b, 256) : "");
        tVar2.k("reported_level", Integer.valueOf(z ? Math.max(0, fVar.f668f) : 0));
        tVar.j("afdian", tVar2);
        boolean z2 = zVar.f1582b && !b(zVar.f1581a, 64).isEmpty();
        a.t tVar3 = new a.t();
        Boolean boolValueOf2 = Boolean.valueOf(z2);
        tVar3.j("bound", boolValueOf2 == null ? xVar : new a.x(boolValueOf2));
        tVar3.l("uid", z2 ? b(zVar.f1581a, 64) : "");
        tVar3.l("name", z2 ? b(zVar.f1586f, 256) : "");
        tVar.j("bilibili", tVar3);
        boolean z3 = d1Var.f618b && !b(d1Var.f617a, 256).isEmpty();
        a.t tVar4 = new a.t();
        Boolean boolValueOf3 = Boolean.valueOf(z3);
        if (boolValueOf3 != null) {
            xVar = new a.x(boolValueOf3);
        }
        tVar4.j("bound", xVar);
        tVar4.l("user_id", z3 ? b(d1Var.f617a, 256) : "");
        tVar4.l("name", z3 ? b(d1Var.f622f, 256) : "");
        tVar.j("douyin", tVar4);
        return tVar;
    }

    public static String b(String str, int i2) {
        if (str == null) {
            return "";
        }
        String strTrim = str.trim();
        return strTrim.length() <= i2 ? strTrim : strTrim.substring(0, i2);
    }

    public static boolean c(String str, String str2) {
        boolean z = "startup".equals(str) || "bind".equals(str) || "refresh".equals(str) || "unbind".equals(str);
        if (!"app".equals(str2) && !"afdian".equals(str2) && !"bilibili".equals(str2)) {
            "douyin".equals(str2);
        }
        if ("startup".equals(str)) {
            return z && "app".equals(str2);
        }
        return z && !"app".equals(str2);
    }

    public static void d(Context context, String str, String str2) {
        if (c(str, str2)) {
            Context applicationContext = context.getApplicationContext();
            e(applicationContext, str, str2, new h(0, applicationContext).j(), new b0(applicationContext).b(), new h(1, applicationContext).l());
        }
    }

    public static void e(Context context, String str, String str2, f fVar, z zVar, d1 d1Var) {
        if (c(str, str2)) {
            Context applicationContext = context.getApplicationContext();
            try {
                PackageInfo packageInfo = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0);
                int longVersionCode = Build.VERSION.SDK_INT >= 28 ? (int) packageInfo.getLongVersionCode() : 23;
                String string = UUID.randomUUID().toString();
                long jCurrentTimeMillis = System.currentTimeMillis();
                String strE = p5.E(applicationContext);
                SharedPreferences sharedPreferences = applicationContext.getApplicationContext().getSharedPreferences("device_identity", 0);
                String string2 = sharedPreferences.getString("install_id", "");
                if (string2 == null || string2.trim().isEmpty()) {
                    string2 = UUID.randomUUID().toString();
                    sharedPreferences.edit().putString("install_id", string2).apply();
                }
                byte[] bytes = a(str, str2, string, jCurrentTimeMillis, strE, string2, packageInfo.versionName, longVersionCode, fVar, zVar, d1Var).toString().getBytes(StandardCharsets.UTF_8);
                if (bytes.length > 32768) {
                    return;
                }
                f1591a.execute(new b(bytes, 2));
            } catch (Exception e2) {
                z2.g("DeviceAudit", "build payload failed: ".concat(e2.getClass().getSimpleName()));
            }
        }
    }
}
