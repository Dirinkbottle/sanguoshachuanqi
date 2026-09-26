package com.sgscq.vpn;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j implements q.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1066a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1067b;

    public /* synthetic */ j(String str, int i2) {
        this.f1066a = i2;
        this.f1067b = str;
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0130 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:58:0x0131  */
    @Override // q.l
    public final Object run() throws IOException {
        URL url;
        IOException e2;
        HttpURLConnection httpURLConnectionA;
        k kVar;
        int responseCode;
        switch (this.f1066a) {
            case 0:
                URL url2 = new URL(this.f1067b);
                p4[] p4VarArr = r3.f1341a;
                Proxy proxyC = q.o.c(url2);
                HttpURLConnection httpURLConnectionD = null;
                try {
                    if (proxyC == null) {
                        proxyC = q.d.c(url2, q.e.f1907b);
                        if (proxyC == null) {
                            if ("oauth.sgscq.com".equalsIgnoreCase(url2.getHost())) {
                                r3.b();
                                Proxy proxy = r3.f1342b;
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new q3(proxy, url2));
                                if (proxy != null && "https".equalsIgnoreCase(url2.getProtocol()) && "oauth.sgscq.com".equalsIgnoreCase(url2.getHost())) {
                                    try {
                                        url = new URL("http", url2.getHost(), url2.getFile());
                                    } catch (MalformedURLException unused) {
                                        url = null;
                                    }
                                } else {
                                    url = null;
                                }
                                if (url != null) {
                                    arrayList.add(new q3(proxy, url));
                                }
                                Iterator it = arrayList.iterator();
                                IOException iOException = null;
                                while (true) {
                                    if (!it.hasNext()) {
                                        if (iOException != null) {
                                            throw iOException;
                                        }
                                        throw new IOException("oauth connection failed");
                                    }
                                    q3 q3Var = (q3) it.next();
                                    try {
                                        Proxy proxy2 = q3Var.f1318b;
                                        URL url3 = q3Var.f1317a;
                                        r3.e(proxy2, url3);
                                        httpURLConnectionA = r3.a(q3Var.f1318b, url3);
                                        try {
                                            k.b(httpURLConnectionA);
                                            httpURLConnectionA.getResponseCode();
                                            httpURLConnectionD = httpURLConnectionA;
                                        } catch (IOException e3) {
                                            e2 = e3;
                                            if (iOException == null) {
                                                iOException = e2;
                                            }
                                            r3.d("openConnection 响应失败 " + r3.h(q3Var.f1318b) + " -> " + r3.i(q3Var.f1317a) + ": " + e2.getClass().getSimpleName() + " " + String.valueOf(e2.getMessage()));
                                            if (httpURLConnectionA != null) {
                                                httpURLConnectionA.disconnect();
                                            }
                                        }
                                    } catch (IOException e4) {
                                        e2 = e4;
                                        httpURLConnectionA = null;
                                    }
                                }
                            } else {
                                httpURLConnectionD = (HttpURLConnection) url2.openConnection();
                                k.b(httpURLConnectionD);
                                httpURLConnectionD.getResponseCode();
                            }
                            break;
                        } else {
                            kVar = new k(3);
                        }
                        responseCode = httpURLConnectionD.getResponseCode();
                        if (!p5.t0(responseCode)) {
                            return httpURLConnectionD;
                        }
                        httpURLConnectionD.disconnect();
                        throw new q.j(responseCode);
                    }
                    kVar = new k(2);
                    r3.e(proxyC, url2);
                    httpURLConnectionD = kVar.d(proxyC, url2);
                    k.b(httpURLConnectionD);
                    httpURLConnectionD.getResponseCode();
                    responseCode = httpURLConnectionD.getResponseCode();
                    if (!p5.t0(responseCode)) {
                        return httpURLConnectionD;
                    }
                    httpURLConnectionD.disconnect();
                    throw new q.j(responseCode);
                } catch (IOException e5) {
                    if (httpURLConnectionD != null) {
                        httpURLConnectionD.disconnect();
                    }
                    throw e5;
                }
            default:
                int i2 = MainActivity.F;
                HttpURLConnection httpURLConnectionF = r3.f(new URL(this.f1067b));
                httpURLConnectionF.setRequestMethod("GET");
                httpURLConnectionF.setConnectTimeout(10000);
                httpURLConnectionF.setReadTimeout(15000);
                httpURLConnectionF.setRequestProperty("Accept", "application/json");
                try {
                    int responseCode2 = httpURLConnectionF.getResponseCode();
                    if (responseCode2 != 200) {
                        throw new q.j(responseCode2);
                    }
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnectionF.getInputStream(), "UTF-8"));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            bufferedReader.close();
                            JSONObject jSONObject = new JSONObject(sb.toString());
                            httpURLConnectionF.disconnect();
                            return jSONObject;
                        }
                        sb.append(line);
                    }
                } catch (Throwable th) {
                    httpURLConnectionF.disconnect();
                    throw th;
                }
                break;
        }
    }
}
