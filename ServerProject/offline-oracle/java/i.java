package com.sgscq.vpn;

import java.io.FilterInputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes.dex */
public final class i extends FilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HttpURLConnection f1044a;

    public i(InputStream inputStream, HttpURLConnection httpURLConnection) {
        super(inputStream);
        this.f1044a = httpURLConnection;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        HttpURLConnection httpURLConnection = this.f1044a;
        try {
            super.close();
        } finally {
            httpURLConnection.disconnect();
        }
    }
}
