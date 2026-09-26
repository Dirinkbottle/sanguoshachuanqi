package com.sgscq.vpn;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URI;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class h implements s4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f719a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f720b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SharedPreferences f721c;

    public h(int i2, Context context) {
        this.f719a = i2;
        if (i2 == 1) {
            Context applicationContext = context.getApplicationContext();
            this.f720b = applicationContext;
            this.f721c = applicationContext.getSharedPreferences("sgscq_douyin", 0);
        } else if (i2 != 2) {
            Context applicationContext2 = context.getApplicationContext();
            this.f720b = applicationContext2;
            this.f721c = applicationContext2.getSharedPreferences("sgscq_afdian", 0);
        } else {
            if (context == null) {
                throw new IllegalArgumentException("context required");
            }
            this.f720b = context;
            this.f721c = context.getSharedPreferences("sgscq_player_journal_v1", 0);
        }
    }

    public static boolean g(Uri uri) {
        return uri != null && "sgscq".equals(uri.getScheme()) && "afdian".equals(uri.getHost()) && "/oauth".equals(uri.getPath());
    }

    public static String i(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("uid required");
        }
        return "journal_enc_".concat(str);
    }

    public static String o(String str) {
        String strDecode;
        String strDecode2 = "";
        String strTrim = str == null ? "" : str.trim();
        if (strTrim.startsWith("\"") && strTrim.endsWith("\"") && strTrim.length() > 1) {
            strTrim = strTrim.substring(1, strTrim.length() - 1).trim();
        }
        if (strTrim.startsWith("http://") || strTrim.startsWith("https://")) {
            try {
                URI uri = new URI(strTrim);
                String rawQuery = uri.getRawQuery();
                String[] strArr = {"sec_user_id", "user_id", "uid"};
                if (rawQuery == null || rawQuery.isEmpty()) {
                    strDecode = "";
                    break;
                }
                String[] strArrSplit = rawQuery.split("&");
                int length = strArrSplit.length;
                int i2 = 0;
                loop0: while (true) {
                    if (i2 >= length) {
                        strDecode = "";
                        break;
                    }
                    String str2 = strArrSplit[i2];
                    int iIndexOf = str2.indexOf(61);
                    String strSubstring = iIndexOf >= 0 ? str2.substring(0, iIndexOf) : str2;
                    String strSubstring2 = iIndexOf >= 0 ? str2.substring(iIndexOf + 1) : "";
                    for (int i3 = 0; i3 < 3; i3++) {
                        if (strArr[i3].equals(strSubstring)) {
                            try {
                                strDecode = URLDecoder.decode(strSubstring2, "UTF-8");
                                break loop0;
                            } catch (Exception unused) {
                                if (strSubstring2 == null) {
                                    strSubstring2 = "";
                                }
                                strDecode = strSubstring2;
                            }
                        }
                    }
                    i2++;
                }
                if (strDecode.isEmpty()) {
                    String rawPath = uri.getRawPath() == null ? "" : uri.getRawPath();
                    int iIndexOf2 = rawPath.indexOf("/user/");
                    if (iIndexOf2 >= 0) {
                        String strSubstring3 = rawPath.substring(iIndexOf2 + 6);
                        int iIndexOf3 = strSubstring3.indexOf(47);
                        if (iIndexOf3 >= 0) {
                            strSubstring3 = strSubstring3.substring(0, iIndexOf3);
                        }
                        String strU = u(strSubstring3);
                        try {
                            strDecode2 = URLDecoder.decode(strU, "UTF-8");
                        } catch (Exception unused2) {
                            if (strU != null) {
                                strDecode2 = strU;
                            }
                        }
                    }
                } else {
                    strDecode2 = strDecode;
                }
            } catch (Exception unused3) {
            }
            if (!strDecode2.isEmpty()) {
                return strDecode2;
            }
        }
        return u(strTrim);
    }

    public static String u(String str) {
        String strTrim = str == null ? "" : str.trim();
        int iIndexOf = strTrim.indexOf(63);
        if (iIndexOf >= 0) {
            strTrim = strTrim.substring(0, iIndexOf);
        }
        int iIndexOf2 = strTrim.indexOf(35);
        if (iIndexOf2 >= 0) {
            strTrim = strTrim.substring(0, iIndexOf2);
        }
        return strTrim.trim();
    }

    public final int a() {
        if (!com.sgscq.vpn.cloud.m0.b3(this.f720b)) {
            return 0;
        }
        d1 d1VarL = l();
        return (d1VarL.f618b && d1VarL.f619c && System.currentTimeMillis() <= d1VarL.f621e) ? 500 : 0;
    }

    @Override // com.sgscq.vpn.s4
    public final void b(String str) {
        if (!this.f721c.edit().remove(i(str)).commit()) {
            throw new IllegalStateException("journal clear commit failed");
        }
    }

    public final void c() {
        int i2 = this.f719a;
        SharedPreferences sharedPreferences = this.f721c;
        switch (i2) {
            case 0:
                c.k kVar = c.k.f56c;
                a.b bVar = a.i.f8a;
                Map mapEmptyMap = Collections.emptyMap();
                Collections.emptyList();
                Collections.emptyList();
                List listEmptyList = Collections.emptyList();
                List listEmptyList2 = Collections.emptyList();
                new ThreadLocal();
                new ConcurrentHashMap();
                int i3 = 1;
                c.i iVar = new c.i(mapEmptyMap, listEmptyList2, true);
                ArrayList arrayList = new ArrayList();
                arrayList.add(d.a0.A);
                arrayList.add(d.p.f1662c);
                arrayList.add(kVar);
                arrayList.addAll(listEmptyList);
                arrayList.add(d.a0.f1633p);
                arrayList.add(d.a0.f1624g);
                arrayList.add(d.a0.f1621d);
                arrayList.add(d.a0.f1622e);
                arrayList.add(d.a0.f1623f);
                a.l lVar = d.a0.f1628k;
                arrayList.add(d.a0.b(Long.TYPE, Long.class, lVar));
                int i4 = 0;
                arrayList.add(d.a0.b(Double.TYPE, Double.class, new a.k(0)));
                arrayList.add(d.a0.b(Float.TYPE, Float.class, new a.k(1)));
                arrayList.add(d.o.f1660b);
                arrayList.add(d.a0.f1625h);
                arrayList.add(d.a0.f1626i);
                arrayList.add(d.a0.a(AtomicLong.class, new a.m(lVar, 0).a()));
                arrayList.add(d.a0.a(AtomicLongArray.class, new a.m(lVar, 1).a()));
                arrayList.add(d.a0.f1627j);
                arrayList.add(d.a0.f1629l);
                arrayList.add(d.a0.f1634q);
                arrayList.add(d.a0.r);
                arrayList.add(d.a0.a(BigDecimal.class, d.a0.f1630m));
                arrayList.add(d.a0.a(BigInteger.class, d.a0.f1631n));
                arrayList.add(d.a0.a(c.m.class, d.a0.f1632o));
                arrayList.add(d.a0.s);
                arrayList.add(d.a0.t);
                arrayList.add(d.a0.v);
                arrayList.add(d.a0.w);
                arrayList.add(d.a0.y);
                arrayList.add(d.a0.u);
                arrayList.add(d.a0.f1619b);
                arrayList.add(d.e.f1643b);
                arrayList.add(d.a0.x);
                if (g.e.f1710a) {
                    arrayList.add(g.e.f1712c);
                    arrayList.add(g.e.f1711b);
                    arrayList.add(g.e.f1713d);
                }
                arrayList.add(d.b.f1635c);
                arrayList.add(d.a0.f1618a);
                arrayList.add(new d.d(iVar, i4));
                arrayList.add(new d.m(iVar));
                d.d dVar = new d.d(iVar, i3);
                arrayList.add(dVar);
                arrayList.add(d.a0.B);
                arrayList.add(new d.u(iVar, bVar, kVar, dVar, listEmptyList2));
                Collections.unmodifiableList(arrayList);
                this.f720b.getApplicationContext().getSharedPreferences("sgscq_cloud_session_v1", 0).edit().remove("session_encrypted").commit();
                new Thread(new b(this, i4), "sgscq-cloud-logout").start();
                sharedPreferences.edit().clear().apply();
                break;
            default:
                sharedPreferences.edit().clear().apply();
                break;
        }
    }

    public final boolean d(int i2) {
        if (!com.sgscq.vpn.cloud.m0.b3(this.f720b)) {
            return false;
        }
        f fVarJ = j();
        return i2 > 0 && fVarJ.f665c && fVarJ.f666d && !fVarJ.f667e && fVarJ.f668f >= i2 && System.currentTimeMillis() <= fVarJ.f672j;
    }

    @Override // com.sgscq.vpn.s4
    public final void e(String str, String str2) {
        try {
            if (this.f721c.edit().putString(i(str), y5.i(this.f720b, str2, y5.f1570c)).commit()) {
            } else {
                throw new IllegalStateException("journal commit failed");
            }
        } catch (Exception e2) {
            if (!(e2 instanceof IllegalStateException)) {
                throw new IllegalStateException("journal encrypt failed", e2);
            }
            throw ((IllegalStateException) e2);
        }
    }

    public final boolean f() {
        if (!com.sgscq.vpn.cloud.m0.b3(this.f720b)) {
            return false;
        }
        f fVarJ = j();
        return fVarJ.f665c && fVarJ.f666d && fVarJ.f668f > 0 && System.currentTimeMillis() <= fVarJ.f672j;
    }

    public final boolean h() {
        Context context = this.f720b;
        if (!com.sgscq.vpn.cloud.m0.b3(context) || com.sgscq.vpn.cloud.m0.t0(context)[2].isEmpty() || com.sgscq.vpn.cloud.m0.t0(context)[3].isEmpty()) {
            return false;
        }
        String str = com.sgscq.vpn.cloud.m0.t0(context)[4];
        return true;
    }

    public final f j() {
        f fVar = new f();
        SharedPreferences sharedPreferences = this.f721c;
        fVar.f663a = sharedPreferences.getString("user_id", "");
        fVar.f664b = sharedPreferences.getString("name", "");
        fVar.f665c = sharedPreferences.getBoolean("logged_in", false);
        fVar.f666d = sharedPreferences.getBoolean("sponsor", false);
        fVar.f668f = sharedPreferences.getInt("level", 0);
        fVar.f669g = Double.longBitsToDouble(sharedPreferences.getLong("amount", Double.doubleToLongBits(0.0d)));
        fVar.f670h = sharedPreferences.getString("plan_name", "");
        fVar.f671i = sharedPreferences.getLong("checked_at", 0L);
        fVar.f672j = sharedPreferences.getLong("valid_until", 0L);
        fVar.f673k = sharedPreferences.getString("signature", "");
        if (fVar.f665c && !new m.e(5, this.f720b).y().isLoggedIn()) {
            fVar.f665c = false;
        }
        String str = fVar.f673k;
        if (!((str == null || str.isEmpty()) ? !fVar.f665c : fVar.f673k.equals(m(fVar)))) {
            fVar.f666d = false;
            fVar.f668f = 0;
            fVar.f669g = 0.0d;
        }
        return fVar;
    }

    @Override // com.sgscq.vpn.s4
    public final String k(String str) {
        String string = this.f721c.getString(i(str), null);
        if (string == null || string.isEmpty()) {
            return null;
        }
        try {
            return y5.c(this.f720b, string, y5.f1570c);
        } catch (Exception e2) {
            throw new IllegalStateException("journal decrypt failed", e2);
        }
    }

    public final d1 l() {
        d1 d1Var = new d1();
        SharedPreferences sharedPreferences = this.f721c;
        d1Var.f617a = sharedPreferences.getString("user_id", "");
        d1Var.f618b = sharedPreferences.getBoolean("bound", false);
        d1Var.f619c = sharedPreferences.getBoolean("following", false);
        d1Var.f620d = sharedPreferences.getLong("checked_at", 0L);
        d1Var.f621e = sharedPreferences.getLong("valid_until", 0L);
        String string = sharedPreferences.getString("signature", "");
        d1Var.f623g = string;
        if (!((string == null || string.isEmpty()) ? !d1Var.f618b : d1Var.f623g.equals(n(d1Var)))) {
            d1Var.f619c = false;
        }
        return d1Var;
    }

    public final String m(f fVar) {
        Context context = this.f720b;
        try {
            String str = fVar.f663a + "|" + fVar.f664b + "|" + fVar.f666d + "|" + fVar.f668f + "|" + Double.doubleToLongBits(fVar.f669g) + "|" + fVar.f671i + "|" + fVar.f672j;
            String str2 = com.sgscq.vpn.cloud.m0.t0(context)[1] + "|" + com.sgscq.vpn.cloud.m0.t0(context)[3] + "|" + context.getPackageName();
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(str2.getBytes("UTF-8"), "HmacSHA256"));
            byte[] bArrDoFinal = mac.doFinal(str.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder();
            for (byte b2 : bArrDoFinal) {
                sb.append(String.format(Locale.US, "%02x", Byte.valueOf(b2)));
            }
            return sb.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public final String n(d1 d1Var) {
        Context context = this.f720b;
        try {
            String str = d1Var.f617a + "|" + d1Var.f618b + "|" + d1Var.f619c + "|" + d1Var.f620d + "|" + d1Var.f621e;
            byte[] bArrG2 = com.sgscq.vpn.cloud.m0.G2(context);
            StringBuilder sb = new StringBuilder();
            for (byte b2 : bArrG2) {
                sb.append(String.format(Locale.US, "%02x", Byte.valueOf(b2)));
            }
            sb.append('|');
            sb.append(context.getPackageName());
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(sb.toString().getBytes("UTF-8"), "HmacSHA256"));
            byte[] bArrDoFinal = mac.doFinal(str.getBytes("UTF-8"));
            StringBuilder sb2 = new StringBuilder();
            for (byte b3 : bArrDoFinal) {
                sb2.append(String.format(Locale.US, "%02x", Byte.valueOf(b3)));
            }
            return sb2.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public final void p(SettingsActivity settingsActivity) {
        if (!h()) {
            throw new IllegalStateException("Afdian OAuth credentials are not configured");
        }
        Intent intent = new Intent(settingsActivity, (Class<?>) AfdianOAuthActivity.class);
        String str = Long.toHexString(System.currentTimeMillis()) + Integer.toHexString((int) (Math.random() * 2.147483647E9d));
        this.f721c.edit().putString("oauth_state", str).apply();
        Uri.Builder builderBuildUpon = Uri.parse("https://ifdian.net/oauth2/authorize").buildUpon();
        builderBuildUpon.appendQueryParameter("response_type", "code");
        Context context = this.f720b;
        builderBuildUpon.appendQueryParameter("client_id", com.sgscq.vpn.cloud.m0.t0(context)[2]);
        String str2 = com.sgscq.vpn.cloud.m0.t0(context)[4];
        builderBuildUpon.appendQueryParameter("redirect_uri", "https://oauth.sgscq.com/afdian/oauth.html");
        builderBuildUpon.appendQueryParameter("scope", "basic");
        builderBuildUpon.appendQueryParameter("state", str);
        intent.putExtra("url", builderBuildUpon.build().toString());
        z2.e("AfdianAuth", "openLogin: 使用应用内 OAuth WebView");
        settingsActivity.startActivity(intent);
    }

    public final d1 q() {
        d1 d1VarL = l();
        if (!d1VarL.f618b || d1VarL.f617a.isEmpty()) {
            throw new Exception("未绑定抖音号");
        }
        try {
            com.sgscq.vpn.cloud.i iVarF = new com.sgscq.vpn.cloud.z(this.f720b).f("douyin", d1VarL.f617a);
            Boolean boolValueOf = !"verified".equals(iVarF.f352a) ? null : Boolean.valueOf(iVarF.f353b);
            if (boolValueOf == null) {
                return d1VarL;
            }
            d1VarL.f619c = boolValueOf.booleanValue();
            long jCurrentTimeMillis = System.currentTimeMillis();
            d1VarL.f620d = jCurrentTimeMillis;
            d1VarL.f621e = jCurrentTimeMillis + 604800000;
            d1VarL.f622f = "";
            d1VarL.f623g = n(d1VarL);
            t(d1VarL);
            return d1VarL;
        } catch (Exception e2) {
            throw new Exception("校验失败：" + e2.getMessage());
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x009d  */
    /* JADX WARN: Code duplicated, block: B:30:0x00bc  */
    public final f r(String str, String str2) {
        boolean z;
        a.t tVar;
        a.t tVar2;
        f fVar = new f();
        fVar.f663a = str;
        if (str2 == null) {
            str2 = "";
        }
        fVar.f664b = str2;
        boolean z2 = true;
        fVar.f665c = true;
        long jCurrentTimeMillis = System.currentTimeMillis();
        fVar.f671i = jCurrentTimeMillis;
        fVar.f672j = jCurrentTimeMillis + 604800000;
        Context context = this.f720b;
        String str3 = com.sgscq.vpn.cloud.m0.t0(context)[0];
        if (str3 == null || str3.isEmpty() || !str3.equals(fVar.f663a)) {
            z = false;
        } else {
            fVar.f666d = true;
            fVar.f668f = 6;
            fVar.f669g = Math.max(fVar.f669g, 10000.0d);
            fVar.f670h = "作者账号";
            fVar.f672j = Long.MAX_VALUE;
            z = true;
        }
        if (!z) {
            a.t tVarX = com.sgscq.vpn.cloud.z.x(new com.sgscq.vpn.cloud.z(context).a("GET", "/identity/me", null, "application/json", Collections.emptyMap()).a());
            boolean zO = tVarX.o("entitlement");
            c.s sVar = tVarX.f27a;
            if (zO) {
                a.q qVarM = tVarX.m("entitlement");
                qVarM.getClass();
                if (qVarM instanceof a.t) {
                    tVar = (a.t) sVar.get("entitlement");
                } else {
                    tVar = new a.t();
                }
            } else {
                tVar = new a.t();
            }
            if (tVarX.o("access")) {
                a.q qVarM2 = tVarX.m("access");
                qVarM2.getClass();
                if (qVarM2 instanceof a.t) {
                    tVar2 = (a.t) sVar.get("access");
                } else {
                    tVar2 = new a.t();
                }
            } else {
                tVar2 = new a.t();
            }
            boolean zD = com.sgscq.vpn.cloud.z.d(tVar, "active");
            int iT = com.sgscq.vpn.cloud.z.t(tVar, "level", 0);
            String strA0 = com.sgscq.vpn.cloud.z.a0(tVar, "plan_name", "");
            long jU = com.sgscq.vpn.cloud.z.u(tVar, "updated_at", 0L);
            boolean zD2 = com.sgscq.vpn.cloud.z.d(tVar2, "login_blocked");
            boolean zD3 = com.sgscq.vpn.cloud.z.d(tVar2, "cloud_blocked");
            fVar.f666d = zD;
            fVar.f668f = iT;
            fVar.f670h = strA0;
            if (jU <= 0) {
                jU = System.currentTimeMillis();
            }
            fVar.f671i = jU;
            fVar.f672j = System.currentTimeMillis() + 604800000;
            if (!zD2 && !zD3) {
                z2 = false;
            }
            fVar.f667e = z2;
            if (z2) {
                fVar.f666d = false;
                fVar.f668f = 0;
            }
        }
        fVar.f673k = m(fVar);
        s(fVar);
        return fVar;
    }

    public final void s(f fVar) {
        this.f721c.edit().putString("user_id", fVar.f663a).putString("name", fVar.f664b).putBoolean("logged_in", fVar.f665c).putBoolean("sponsor", fVar.f666d).putInt("level", fVar.f668f).putLong("amount", Double.doubleToLongBits(fVar.f669g)).putString("plan_name", fVar.f670h).putLong("checked_at", fVar.f671i).putLong("valid_until", fVar.f672j).putString("signature", fVar.f673k).apply();
    }

    public final void t(d1 d1Var) {
        this.f721c.edit().putString("user_id", d1Var.f617a).putBoolean("bound", d1Var.f618b).putBoolean("following", d1Var.f619c).putLong("checked_at", d1Var.f620d).putLong("valid_until", d1Var.f621e).putString("signature", d1Var.f623g).apply();
    }
}
