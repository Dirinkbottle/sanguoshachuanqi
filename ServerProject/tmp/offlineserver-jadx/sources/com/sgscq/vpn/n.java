package com.sgscq.vpn;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class n extends FilterOutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f1206a;

    public n(ZipOutputStream zipOutputStream) {
        super(zipOutputStream);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i2) throws IOException {
        ((FilterOutputStream) this).out.write(i2);
        this.f1206a++;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i2, int i3) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i2, i3);
        this.f1206a += (long) i3;
    }
}
