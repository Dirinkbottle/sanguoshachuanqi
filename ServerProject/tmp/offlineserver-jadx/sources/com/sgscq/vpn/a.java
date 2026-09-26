package com.sgscq.vpn;

import android.content.Context;
import android.widget.Toast;
import com.sgscq.vpn.cloud.CloudSessionStore$SessionData;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.PublicKey;
import java.security.Signature;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements g, q.l, b7, p.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f171a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f172b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f173c;

    public /* synthetic */ a(Object obj, Object obj2, int i2) {
        this.f171a = i2;
        this.f172b = obj;
        this.f173c = obj2;
    }

    @Override // p.j
    public final p.b a(byte[] bArr, long j2) {
        PublicKey publicKey = (PublicKey) this.f172b;
        Context context = (Context) this.f173c;
        Object obj = p.l.f1876o;
        f2 f2Var = new f2(6, context);
        a.o oVar = p.c.f1869a;
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("package is empty");
        }
        if (bArr.length > 65536) {
            throw new IllegalArgumentException("package is too large");
        }
        a.t tVarB = p.c.b("package JSON is invalid", bArr);
        String strG = p.c.g(tVarB, "payload");
        String strG2 = p.c.g(tVarB, "signature_algorithm");
        String strG3 = p.c.g(tVarB, "signature");
        if (!"SHA256withRSA".equals(strG2)) {
            throw new IllegalArgumentException("signature algorithm is invalid");
        }
        byte[] bArrA = p.c.a(strG);
        byte[] bArrA2 = p.c.a(strG3);
        try {
            Signature signature = Signature.getInstance("SHA256withRSA");
            signature.initVerify(publicKey);
            signature.update(bArrA);
            if (!signature.verify(bArrA2)) {
                throw new IllegalArgumentException("package signature is invalid");
            }
            a.t tVarB2 = p.c.b("payload JSON is invalid", bArrA);
            if (!Arrays.equals(bArrA, p.c.f1869a.h(p.c.h(tVarB2)).getBytes(StandardCharsets.UTF_8))) {
                throw new IllegalArgumentException("payload JSON is not canonical");
            }
            int iE = p.c.e(tVarB2, "schema_version");
            long jF = p.c.f(tVarB2, "revision");
            long jF2 = p.c.f(tVarB2, "server_time");
            long jF3 = p.c.f(tVarB2, "generated_at");
            long jF4 = p.c.f(tVarB2, "expires_at");
            long jF5 = p.c.f(tVarB2, "next_refresh_at");
            int iE2 = p.c.e(tVarB2, "minimum_schedule_version");
            if ((iE != 1 && iE != 2) || jF <= 0) {
                throw new IllegalArgumentException("schema or revision is invalid");
            }
            if (jF4 <= j2 || jF3 > jF2 || jF2 >= jF4) {
                throw new IllegalArgumentException("payload is expired or time bounds are invalid");
            }
            if (jF5 < jF3 || jF5 > jF4) {
                throw new IllegalArgumentException("next refresh time is invalid");
            }
            if (23 < iE2) {
                throw new IllegalArgumentException("minimum schedule version is not met");
            }
            HashSet hashSet = new HashSet();
            m.e eVarD = p.c.d(tVarB2, "regular", iE, jF2, f2Var, hashSet);
            m.e eVarD2 = p.c.d(tVarB2, "special", iE, jF2, f2Var, hashSet);
            if (iE == 2) {
                Iterator it = ((List) eVarD.f1805b).iterator();
                long jMax = 0;
                while (it.hasNext()) {
                    jMax = Math.max(jMax, ((p.a) it.next()).f1861f);
                }
                if (jMax < jF4) {
                    throw new IllegalArgumentException("batch expiry exceeds loaded slots");
                }
            }
            return new p.b(jF, jF3, jF4, iE2, eVarD, eVarD2);
        } catch (IllegalArgumentException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new IllegalArgumentException("package signature verification failed", e3);
        }
    }

    @Override // com.sgscq.vpn.b7
    public final void b(final boolean z) {
        final MainActivity mainActivity = (MainActivity) this.f172b;
        final c7 c7Var = (c7) this.f173c;
        int i2 = MainActivity.F;
        mainActivity.getClass();
        mainActivity.runOnUiThread(new Runnable() { // from class: com.sgscq.vpn.m3
            @Override // java.lang.Runnable
            public final void run() {
                int i3 = MainActivity.F;
                boolean z2 = z;
                MainActivity mainActivity2 = mainActivity;
                if (!z2) {
                    mainActivity2.m();
                    Toast.makeText(mainActivity2, c7Var.j(), 1).show();
                } else {
                    mainActivity2.getClass();
                    if (p.l.c(mainActivity2).n(new f3(mainActivity2, 15))) {
                        return;
                    }
                    mainActivity2.j();
                }
            }
        });
    }

    public final f c() throws com.sgscq.vpn.cloud.a0 {
        String strP;
        switch (this.f171a) {
            case 0:
                h hVar = (h) this.f172b;
                String str = (String) this.f173c;
                hVar.getClass();
                com.sgscq.vpn.cloud.z zVar = new com.sgscq.vpn.cloud.z(hVar.f720b);
                String str2 = null;
                try {
                    com.sgscq.vpn.cloud.e eVarU = com.sgscq.vpn.cloud.z.U();
                    if (eVarU != null) {
                        strP = zVar.P(eVarU.f321b, eVarU.f322c);
                        try {
                            str2 = eVarU.f320a;
                        } catch (Exception e2) {
                            e = e2;
                            z2.g("SGSCQ_AUTH", "[Integrity] challenge unavailable: " + e);
                        }
                    } else {
                        strP = null;
                    }
                    break;
                } catch (Exception e3) {
                    e = e3;
                    strP = null;
                }
                String str3 = com.sgscq.vpn.cloud.m0.t0(hVar.f720b)[4];
                LinkedHashMap linkedHashMapR = c.a.r("code", str, "redirect_uri", "https://oauth.sgscq.com/afdian/oauth.html");
                linkedHashMapR.put("device_id", zVar.f541b.d());
                linkedHashMapR.put("environment", "release");
                if (str2 != null && strP != null) {
                    linkedHashMapR.put("integrity", c.a.r("challenge_id", str2, "data", strP));
                }
                a.t tVarX = com.sgscq.vpn.cloud.z.x(com.sgscq.vpn.cloud.z.p("POST", "/auth/afdian/exchange", "", "application/json", "", Collections.emptyMap(), com.sgscq.vpn.cloud.z.f537c.i(linkedHashMapR).getBytes(StandardCharsets.UTF_8)).a());
                a.t tVarG = com.sgscq.vpn.cloud.z.g(tVarX, "user");
                String strA0 = com.sgscq.vpn.cloud.z.a0(tVarX, "environment", "");
                String strA1 = com.sgscq.vpn.cloud.z.a0(tVarX, "access_token", "");
                String strA2 = com.sgscq.vpn.cloud.z.a0(tVarX, "refresh_token", "");
                String strA3 = com.sgscq.vpn.cloud.z.a0(tVarG, "afdian_user_id", "");
                if (strA0.isEmpty() || strA1.isEmpty() || strA2.isEmpty() || strA3.isEmpty()) {
                    throw new IllegalArgumentException("云会话响应不完整");
                }
                String strA4 = com.sgscq.vpn.cloud.z.a0(tVarG, "name", "");
                long jU = com.sgscq.vpn.cloud.z.u(tVarX, "access_expires_at", 0L);
                long jU2 = com.sgscq.vpn.cloud.z.u(tVarX, "refresh_expires_at", 0L);
                if (!"release".equals(strA0)) {
                    zVar.f541b.a();
                    throw new com.sgscq.vpn.cloud.a0(409, 0, "cloud_environment_mismatch", "云服务版本环境不匹配，请重新登录爱发电");
                }
                m.e eVar = zVar.f541b;
                synchronized (eVar) {
                    CloudSessionStore$SessionData cloudSessionStore$SessionData = new CloudSessionStore$SessionData();
                    cloudSessionStore$SessionData.environment = strA0;
                    cloudSessionStore$SessionData.afdianUserId = strA3;
                    cloudSessionStore$SessionData.name = strA4;
                    cloudSessionStore$SessionData.accessToken = strA1;
                    cloudSessionStore$SessionData.accessExpiresAt = jU;
                    cloudSessionStore$SessionData.refreshToken = strA2;
                    cloudSessionStore$SessionData.refreshExpiresAt = jU2;
                    eVar.F(cloudSessionStore$SessionData);
                }
                f fVarR = hVar.r(strA3, strA4);
                o.j.b(hVar.f720b, true);
                return fVarR;
            default:
                h hVar2 = (h) this.f172b;
                f fVar = (f) this.f173c;
                hVar2.getClass();
                return hVar2.r(fVar.f663a, fVar.f664b);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object] */
    @Override // q.l
    public final Object run() throws Throwable {
        q.n nVar;
        JSONObject jSONObjectOptJSONObject;
        Throwable th;
        int i2 = this.f171a;
        boolean z = true;
        ?? r3 = 0;
        HttpURLConnection httpURLConnection = null;
        r3 = 0;
        Object obj = this.f173c;
        Object obj2 = this.f172b;
        switch (i2) {
            case 2:
                int i3 = b0.f194c;
                ((b0) obj2).getClass();
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(p5.S()[2] + ((String) obj)).openConnection();
                httpURLConnection2.setRequestMethod("GET");
                httpURLConnection2.setConnectTimeout(10000);
                httpURLConnection2.setReadTimeout(15000);
                httpURLConnection2.setRequestProperty("Accept", "application/json");
                httpURLConnection2.setRequestProperty("User-Agent", "Mozilla/5.0");
                try {
                    int responseCode = httpURLConnection2.getResponseCode();
                    if (responseCode != 200) {
                        if (p5.t0(responseCode)) {
                            throw new q.j(responseCode);
                        }
                        throw new Exception("profile HTTP " + responseCode);
                    }
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection2.getInputStream(), "UTF-8"));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            bufferedReader.close();
                            JSONObject jSONObject = new JSONObject(sb.toString());
                            if (jSONObject.optInt("code", -1) != 0) {
                                throw new Exception("profile code " + jSONObject.optInt("code", -1));
                            }
                            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("data");
                            if (jSONObjectOptJSONObject2 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("card")) != null) {
                                x xVar = new x();
                                xVar.f1522a = jSONObjectOptJSONObject.optString("name", "");
                                xVar.f1523b = jSONObjectOptJSONObject.optString("face", "");
                                JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("level_info");
                                xVar.f1524c = jSONObjectOptJSONObject3 != null ? jSONObjectOptJSONObject3.optInt("current_level", 0) : 0;
                                r3 = xVar;
                            }
                            httpURLConnection2.disconnect();
                            return r3;
                        }
                        sb.append(line);
                    }
                } catch (Throwable th2) {
                    httpURLConnection2.disconnect();
                    throw th2;
                }
                break;
            case 3:
            case 5:
            default:
                try {
                    HttpURLConnection httpURLConnectionD = ((k) obj).d(p5.P0((com.sgscq.vpn.config.f) obj2), new URL("https://api.sgscq.com/api/v1/online-healthz"));
                    httpURLConnectionD.setRequestMethod("GET");
                    httpURLConnectionD.setConnectTimeout(5000);
                    httpURLConnectionD.setReadTimeout(5000);
                    httpURLConnectionD.setUseCaches(false);
                    httpURLConnectionD.setRequestProperty("Accept", "application/json");
                    int responseCode2 = httpURLConnectionD.getResponseCode();
                    if (responseCode2 >= 200 && responseCode2 < 300) {
                        nVar = new q.n("连接成功", true);
                    } else {
                        if (p5.t0(responseCode2)) {
                            throw new q.j(responseCode2);
                        }
                        nVar = new q.n("连接失败：HTTP " + responseCode2, false);
                    }
                    httpURLConnectionD.disconnect();
                    return nVar;
                } catch (Throwable th3) {
                    if (0 != 0) {
                        r3.disconnect();
                    }
                    throw th3;
                }
            case 4:
                Proxy proxy = (Proxy) obj;
                ((a.w) obj2).getClass();
                try {
                    URL url = new URL("https://oauth.sgscq.com/");
                    HttpURLConnection httpURLConnection3 = (HttpURLConnection) (proxy == null ? url.openConnection() : url.openConnection(proxy));
                    try {
                        httpURLConnection3.setRequestMethod("GET");
                        httpURLConnection3.setConnectTimeout(2000);
                        httpURLConnection3.setReadTimeout(2000);
                        httpURLConnection3.setRequestProperty("Accept", "text/html,*/*");
                        int responseCode3 = httpURLConnection3.getResponseCode();
                        if (responseCode3 < 200 || responseCode3 >= 500) {
                            r3.d("探测响应 " + r3.h(proxy) + " HTTP " + responseCode3);
                            httpURLConnection3.disconnect();
                            z = false;
                        } else {
                            InputStream errorStream = responseCode3 >= 400 ? httpURLConnection3.getErrorStream() : httpURLConnection3.getInputStream();
                            if (errorStream != null) {
                                errorStream.close();
                            }
                            r3.d("探测响应 " + r3.h(proxy) + " HTTP " + responseCode3);
                            httpURLConnection3.disconnect();
                        }
                        return Boolean.valueOf(z);
                    } catch (Throwable th4) {
                        th = th4;
                        httpURLConnection = httpURLConnection3;
                        if (httpURLConnection == null) {
                            throw th;
                        }
                        httpURLConnection.disconnect();
                        throw th;
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
                break;
            case 6:
                ((c7) obj2).getClass();
                HttpURLConnection httpURLConnection4 = (HttpURLConnection) new URL((String) obj).openConnection();
                httpURLConnection4.setRequestMethod("GET");
                httpURLConnection4.setConnectTimeout(3000);
                httpURLConnection4.setReadTimeout(3000);
                httpURLConnection4.setUseCaches(false);
                httpURLConnection4.connect();
                try {
                    String headerField = httpURLConnection4.getHeaderField("Date");
                    if (headerField == null || headerField.isEmpty()) {
                        throw new Exception("missing Date header");
                    }
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
                    simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
                    long time = simpleDateFormat.parse(headerField).getTime();
                    httpURLConnection4.disconnect();
                    return Long.valueOf(time);
                } catch (Throwable th6) {
                    httpURLConnection4.disconnect();
                    throw th6;
                }
        }
    }
}
