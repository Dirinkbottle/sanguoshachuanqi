package com.sgscq.vpn;

import android.os.SystemClock;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k implements p.h, p.i, p.j, q.m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1098a;

    public /* synthetic */ k(int i2) {
        this.f1098a = i2;
    }

    public static void b(HttpURLConnection httpURLConnection) throws ProtocolException {
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(10000);
        httpURLConnection.setRequestProperty("Accept", "text/html,application/xhtml+xml,*/*");
    }

    @Override // p.j
    public final p.b a(byte[] bArr, long j2) {
        Object obj = p.l.f1876o;
        throw new IllegalStateException("schedule disabled");
    }

    public final long c() {
        switch (this.f1098a) {
            case 1:
                return System.currentTimeMillis();
            case 8:
                return System.currentTimeMillis();
            case 9:
                return SystemClock.elapsedRealtime();
            case 11:
                return c7.f();
            case 13:
                return System.currentTimeMillis();
            case 16:
                return System.currentTimeMillis();
            default:
                return System.currentTimeMillis();
        }
    }

    public final HttpURLConnection d(Proxy proxy, URL url) {
        switch (this.f1098a) {
            case 2:
                return r3.a(proxy, url);
            case 3:
                return r3.a(proxy, url);
            case 4:
            default:
                return (HttpURLConnection) url.openConnection(proxy);
            case 5:
                return r3.a(proxy, url);
            case 6:
                return r3.a(proxy, url);
            case 7:
                return r3.a(proxy, url);
        }
    }

    @Override // p.i
    public final byte[] f(String str, int i2) {
        Object obj = p.l.f1876o;
        throw new IllegalStateException("schedule disabled");
    }
}
