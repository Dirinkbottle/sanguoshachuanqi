package com.sgscq.vpn;

import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class u6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t6 f1433a = new t6();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t6 f1434b = new t6();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1435c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile boolean f1436d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f1437e = new Object();

    public final void a(byte[] bArr) {
        synchronized (this.f1437e) {
            if (this.f1436d) {
                return;
            }
            if (this.f1435c + bArr.length > 104857600) {
                this.f1436d = true;
            } else {
                this.f1433a.a(bArr, bArr.length);
                this.f1435c += bArr.length;
            }
        }
    }

    public final void b(ByteArrayOutputStream byteArrayOutputStream) {
        synchronized (this.f1437e) {
            t6 t6Var = this.f1433a;
            int i2 = t6Var.f1414a;
            if (i2 != 0) {
                int iMin = Math.min(12288, i2);
                int i3 = t6Var.f1414a - iMin;
                for (byte[] bArr : t6Var.f1415b) {
                    if (i3 >= 65536) {
                        i3 -= 65536;
                    } else {
                        int iMin2 = Math.min(65536 - i3, iMin);
                        if (iMin2 <= 0) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, i3, iMin2);
                        iMin -= iMin2;
                        i3 = 0;
                    }
                }
            }
        }
    }

    public final void c(int i2, byte[] bArr) {
        synchronized (this.f1437e) {
            if (this.f1436d) {
                return;
            }
            if (this.f1435c + i2 > 104857600) {
                this.f1436d = true;
            } else {
                this.f1434b.a(bArr, i2);
                this.f1435c += i2;
            }
        }
    }
}
