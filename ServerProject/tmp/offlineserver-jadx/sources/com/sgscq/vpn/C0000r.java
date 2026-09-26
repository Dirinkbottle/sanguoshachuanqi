package com.sgscq.vpn;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.crypto.Cipher;

/* JADX INFO: renamed from: com.sgscq.vpn.r, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0000r extends OutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OutputStream f1327a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Cipher f1328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f1329c = new byte[190];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1330d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f1331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1332f;

    public C0000r(BufferedOutputStream bufferedOutputStream, Cipher cipher) {
        this.f1327a = bufferedOutputStream;
        this.f1328b = cipher;
    }

    public final void c() throws IOException {
        OutputStream outputStream = this.f1327a;
        try {
            byte[] bArrDoFinal = this.f1328b.doFinal(this.f1329c, 0, this.f1330d);
            outputStream.write((bArrDoFinal.length >> 8) & 255);
            outputStream.write(bArrDoFinal.length & 255);
            outputStream.write(bArrDoFinal);
            this.f1330d = 0;
        } catch (Exception e2) {
            throw new IOException("RSA export encryption failed", e2);
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f1332f) {
            return;
        }
        try {
            if (this.f1330d > 0) {
                c();
            }
            e = null;
        } catch (IOException e2) {
            e = e2;
        }
        try {
            this.f1327a.close();
        } catch (IOException e3) {
            if (e == null) {
                e = e3;
            }
        }
        this.f1332f = true;
        if (e != null) {
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        if (this.f1332f) {
            throw new IOException("stream closed");
        }
        this.f1327a.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i2) throws IOException {
        if (this.f1332f) {
            throw new IOException("stream closed");
        }
        int i3 = this.f1330d;
        int i4 = i3 + 1;
        this.f1330d = i4;
        byte[] bArr = this.f1329c;
        bArr[i3] = (byte) i2;
        this.f1331e++;
        if (i4 == bArr.length) {
            c();
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i2, int i3) throws IOException {
        if (bArr == null) {
            throw new NullPointerException("bytes");
        }
        if (i2 >= 0 && i3 >= 0 && i2 + i3 <= bArr.length) {
            if (this.f1332f) {
                throw new IOException("stream closed");
            }
            while (i3 > 0) {
                byte[] bArr2 = this.f1329c;
                int iMin = Math.min(i3, bArr2.length - this.f1330d);
                System.arraycopy(bArr, i2, bArr2, this.f1330d, iMin);
                int i4 = this.f1330d + iMin;
                this.f1330d = i4;
                this.f1331e += (long) iMin;
                i2 += iMin;
                i3 -= iMin;
                if (i4 == bArr2.length) {
                    c();
                }
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
