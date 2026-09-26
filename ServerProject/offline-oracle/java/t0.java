package com.sgscq.vpn;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t0 implements w0, q.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1376a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1377b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1378c;

    public /* synthetic */ t0(Object obj, Object obj2, int i2) {
        this.f1377b = obj;
        this.f1378c = obj2;
        this.f1376a = i2;
    }

    @Override // com.sgscq.vpn.w0
    public final void a(String str) {
        DebugSparringConfigActivity debugSparringConfigActivity = (DebugSparringConfigActivity) this.f1377b;
        v0 v0Var = (v0) this.f1378c;
        float[] fArr = DebugSparringConfigActivity.f97f;
        debugSparringConfigActivity.getClass();
        v0Var.f1442a.deputyGeneralIds.set(this.f1376a, str);
        DebugSparringConfigActivity.g(v0Var);
    }

    public final Object b(Proxy proxy) throws Throwable {
        Throwable th;
        HttpURLConnection httpURLConnection;
        a.w wVar = (a.w) this.f1377b;
        URL url = (URL) this.f1378c;
        wVar.getClass();
        try {
            httpURLConnection = (HttpURLConnection) (proxy == null ? url.openConnection() : url.openConnection(proxy));
            try {
                httpURLConnection.setConnectTimeout(10000);
                httpURLConnection.setReadTimeout(10000);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setRequestProperty("Accept", "application/json");
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode != 200) {
                    throw new q.j(responseCode);
                }
                int contentLength = httpURLConnection.getContentLength();
                int i2 = this.f1376a;
                if (contentLength > i2) {
                    throw new q.k("response too large");
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                try {
                    byte[] bArrH = p.l.h(inputStream, i2);
                    inputStream.close();
                    httpURLConnection.disconnect();
                    return bArrH;
                } catch (Throwable th2) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                th = th4;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            httpURLConnection = null;
        }
    }

    @Override // q.l
    public final Object run() {
        return a.w.l((a.w) this.f1377b, (String) this.f1378c, this.f1376a);
    }
}
