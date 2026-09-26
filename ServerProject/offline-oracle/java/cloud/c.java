package com.sgscq.vpn.cloud;

import com.sgscq.vpn.p5;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements q.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ byte[] f290c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f291d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f292e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Map f293f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ boolean f294g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Serializable f295h;

    public /* synthetic */ c(String str, String str2, String str3, byte[] bArr, String str4, String str5, Map map, boolean z) {
        this.f288a = str;
        this.f289b = str2;
        this.f291d = str3;
        this.f290c = bArr;
        this.f292e = str4;
        this.f295h = str5;
        this.f293f = map;
        this.f294g = z;
    }

    public final Object a(Proxy proxy) throws Throwable {
        IOException e2;
        Throwable th;
        HttpURLConnection httpURLConnection;
        byte[] byteArray;
        URL url = (URL) this.f295h;
        String str = this.f288a;
        Map map = this.f293f;
        boolean z = this.f294g;
        String str2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) (proxy == null ? url.openConnection() : url.openConnection(proxy));
                try {
                    try {
                        httpURLConnection.setRequestMethod(str);
                        httpURLConnection.setConnectTimeout(5000);
                        httpURLConnection.setReadTimeout(15000);
                        httpURLConnection.setRequestProperty("Accept", "application/json, application/octet-stream");
                        httpURLConnection.setRequestProperty("Cache-Control", "no-store");
                        httpURLConnection.setRequestProperty("X-SGSCQ-Version-Code", String.valueOf(23));
                        httpURLConnection.setRequestProperty("X-SGSCQ-Version-Name", "1.0.1.14067");
                        httpURLConnection.setRequestProperty("X-SGSCQ-Environment", "release");
                        String str3 = this.f289b;
                        if (str3 != null && !str3.isEmpty()) {
                            httpURLConnection.setRequestProperty("Authorization", "Bearer ".concat(str3));
                        }
                        String str4 = this.f291d;
                        if (str4 != null && !str4.isEmpty()) {
                            httpURLConnection.setRequestProperty("Content-Type", str4);
                        }
                        String str5 = this.f292e;
                        if (str5 != null && !str5.isEmpty()) {
                            httpURLConnection.setRequestProperty("Content-Encoding", str5);
                        }
                        for (Map.Entry entry : map.entrySet()) {
                            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                        }
                        byte[] bArr = this.f290c;
                        try {
                            if (bArr != null && !"GET".equals(str) && !"DELETE".equals(str)) {
                                httpURLConnection.setDoOutput(true);
                                OutputStream outputStream = httpURLConnection.getOutputStream();
                                try {
                                    outputStream.write(bArr);
                                    outputStream.close();
                                } catch (Throwable th2) {
                                    if (outputStream != null) {
                                        try {
                                            outputStream.close();
                                        } catch (Throwable th3) {
                                            th2.addSuppressed(th3);
                                        }
                                    }
                                    throw th2;
                                }
                            }
                            int responseCode = httpURLConnection.getResponseCode();
                            InputStream errorStream = responseCode >= 400 ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream();
                            try {
                                if (errorStream != null) {
                                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                    byte[] bArr2 = new byte[8192];
                                    while (true) {
                                        int i2 = errorStream.read(bArr2);
                                        if (i2 == -1) {
                                            byteArray = byteArrayOutputStream.toByteArray();
                                            break;
                                        }
                                        if (byteArrayOutputStream.size() + i2 > 16777216) {
                                            throw new IllegalArgumentException("云服务响应过大");
                                        }
                                        byteArrayOutputStream.write(bArr2, 0, i2);
                                    }
                                } else {
                                    byteArray = new byte[0];
                                }
                                if (errorStream != null) {
                                    errorStream.close();
                                }
                                t tVar = new t(byteArray);
                                if (responseCode < 400) {
                                    httpURLConnection.disconnect();
                                    return tVar;
                                }
                                if (z && p5.t0(responseCode)) {
                                    throw new q.j(responseCode);
                                }
                                throw z.z(tVar.a(), responseCode);
                            } catch (Throwable th4) {
                                if (errorStream != null) {
                                    try {
                                        errorStream.close();
                                    } catch (Throwable th5) {
                                        th4.addSuppressed(th5);
                                    }
                                }
                                throw th4;
                            }
                        } catch (IOException e3) {
                            e2 = e3;
                            str2 = str;
                            if (z || str2 == null) {
                                throw e2;
                            }
                            throw new q.k("请求发送后连接中断", e2);
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        throw th;
                    }
                } catch (IOException e4) {
                    e2 = e4;
                }
            } catch (Throwable th7) {
                th = th7;
                httpURLConnection = null;
            }
        } catch (IOException e5) {
            e2 = e5;
        }
    }

    @Override // q.l
    public final Object run() {
        String str = this.f288a;
        String str2 = this.f291d;
        byte[] bArr = this.f290c;
        String str3 = this.f292e;
        String str4 = (String) this.f295h;
        Map map = this.f293f;
        boolean z = this.f294g;
        URL url = new URL("https://api.sgscq.com/api/v1" + this.f289b);
        c cVar = new c(url, str, str2, bArr, str3, str4, map, z);
        Proxy proxyC = q.o.c(url);
        if (proxyC == null) {
            proxyC = q.d.c(url, q.e.f1907b);
        }
        return (t) cVar.a(proxyC);
    }

    public /* synthetic */ c(URL url, String str, String str2, byte[] bArr, String str3, String str4, Map map, boolean z) {
        this.f295h = url;
        this.f288a = str;
        this.f289b = str2;
        this.f290c = bArr;
        this.f291d = str3;
        this.f292e = str4;
        this.f293f = map;
        this.f294g = z;
    }
}
