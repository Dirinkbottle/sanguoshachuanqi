package com.sgscq.vpn;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import java.util.Locale;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class b0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f194c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f196b;

    static {
        String str = p5.S()[3];
    }

    public b0(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f195a = applicationContext;
        this.f196b = applicationContext.getSharedPreferences("sgscq_bili", 0);
    }

    public static void f(Activity activity, p6 p6Var, w wVar) {
        new Thread(new c((Object) wVar, p6Var, activity, 1), "BiliAuth").start();
    }

    public final int a() {
        if (!com.sgscq.vpn.cloud.m0.b3(this.f195a)) {
            return 0;
        }
        z zVarB = b();
        return (zVarB.f1582b && zVarB.f1583c && System.currentTimeMillis() <= zVarB.f1585e) ? 500 : 0;
    }

    public final z b() {
        z zVar = new z();
        SharedPreferences sharedPreferences = this.f196b;
        zVar.f1581a = sharedPreferences.getString("mid", "");
        zVar.f1582b = sharedPreferences.getBoolean("bound", false);
        zVar.f1583c = sharedPreferences.getBoolean("following", false);
        zVar.f1584d = sharedPreferences.getLong("checked_at", 0L);
        zVar.f1585e = sharedPreferences.getLong("valid_until", 0L);
        zVar.f1586f = sharedPreferences.getString("name", "");
        zVar.f1587g = sharedPreferences.getString("face", "");
        zVar.f1588h = sharedPreferences.getInt("level", 0);
        zVar.f1589i = sharedPreferences.getLong("profile_checked_at", 0L);
        String string = sharedPreferences.getString("signature", "");
        zVar.f1590j = string;
        if (!((string == null || string.isEmpty()) ? !zVar.f1582b : zVar.f1590j.equals(c(zVar)))) {
            zVar.f1583c = false;
            zVar.f1586f = "";
            zVar.f1587g = "";
            zVar.f1588h = 0;
            zVar.f1589i = 0L;
        }
        return zVar;
    }

    public final String c(z zVar) {
        Context context = this.f195a;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(zVar.f1581a);
            sb.append("|");
            sb.append(zVar.f1582b);
            sb.append("|");
            sb.append(zVar.f1583c);
            sb.append("|");
            sb.append(zVar.f1584d);
            sb.append("|");
            sb.append(zVar.f1585e);
            sb.append("|");
            String str = zVar.f1586f;
            if (str == null) {
                str = "";
            }
            sb.append(str);
            sb.append("|");
            String str2 = zVar.f1587g;
            if (str2 == null) {
                str2 = "";
            }
            sb.append(str2);
            sb.append("|");
            sb.append(zVar.f1588h);
            sb.append("|");
            sb.append(zVar.f1589i);
            String string = sb.toString();
            byte[] bArrG2 = com.sgscq.vpn.cloud.m0.G2(context);
            StringBuilder sb2 = new StringBuilder();
            for (byte b2 : bArrG2) {
                sb2.append(String.format(Locale.US, "%02x", Byte.valueOf(b2)));
            }
            sb2.append('|');
            sb2.append(context.getPackageName());
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(sb2.toString().getBytes("UTF-8"), "HmacSHA256"));
            byte[] bArrDoFinal = mac.doFinal(string.getBytes("UTF-8"));
            StringBuilder sb3 = new StringBuilder();
            for (byte b3 : bArrDoFinal) {
                sb3.append(String.format(Locale.US, "%02x", Byte.valueOf(b3)));
            }
            return sb3.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public final z d(boolean z) {
        z zVarB = b();
        if (!zVarB.f1582b || zVarB.f1581a.isEmpty()) {
            throw new Exception("未绑定 B 站 UID");
        }
        Boolean boolValueOf = null;
        try {
            com.sgscq.vpn.cloud.i iVarF = new com.sgscq.vpn.cloud.z(this.f195a).f("bilibili", zVarB.f1581a);
            if ("verified".equals(iVarF.f352a)) {
                boolValueOf = Boolean.valueOf(iVarF.f353b);
            }
        } catch (Exception e2) {
            if (z) {
                throw new Exception("校验失败：" + e2.getMessage());
            }
        }
        if (boolValueOf == null) {
            e(zVarB);
            return zVarB;
        }
        zVarB.f1583c = boolValueOf.booleanValue();
        long jCurrentTimeMillis = System.currentTimeMillis();
        zVarB.f1584d = jCurrentTimeMillis;
        zVarB.f1585e = jCurrentTimeMillis + 604800000;
        e(zVarB);
        zVarB.f1590j = c(zVarB);
        g(zVarB);
        return zVarB;
    }

    public final void e(z zVar) {
        try {
            x xVar = (x) p5.O(new a(this, zVar.f1581a, 2));
            if (xVar == null) {
                return;
            }
            zVar.f1586f = xVar.f1522a;
            zVar.f1587g = xVar.f1523b;
            zVar.f1588h = xVar.f1524c;
            zVar.f1589i = System.currentTimeMillis();
        } catch (Exception unused) {
        }
    }

    public final void g(z zVar) {
        SharedPreferences.Editor editorPutLong = this.f196b.edit().putString("mid", zVar.f1581a).putBoolean("bound", zVar.f1582b).putBoolean("following", zVar.f1583c).putLong("checked_at", zVar.f1584d).putLong("valid_until", zVar.f1585e);
        String str = zVar.f1586f;
        if (str == null) {
            str = "";
        }
        SharedPreferences.Editor editorPutString = editorPutLong.putString("name", str);
        String str2 = zVar.f1587g;
        editorPutString.putString("face", str2 != null ? str2 : "").putInt("level", zVar.f1588h).putLong("profile_checked_at", zVar.f1589i).putString("signature", zVar.f1590j).apply();
    }
}
