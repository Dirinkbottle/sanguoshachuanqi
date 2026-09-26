package com.sgscq.vpn;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class t6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f1415b;

    public t6() {
        this.f1415b = new ArrayList();
    }

    public final void a(byte[] bArr, int i2) {
        int i3 = 0;
        while (i2 > 0) {
            int i4 = this.f1414a;
            int i5 = i4 / 65536;
            int i6 = i4 % 65536;
            List list = this.f1415b;
            if (i5 == list.size()) {
                list.add(new byte[65536]);
            }
            int iMin = Math.min(i2, 65536 - i6);
            System.arraycopy(bArr, i3, list.get(i5), i6, iMin);
            i3 += iMin;
            i2 -= iMin;
            this.f1414a += iMin;
        }
    }

    public final void b(n nVar) throws IOException {
        int i2 = this.f1414a;
        for (byte[] bArr : this.f1415b) {
            int iMin = Math.min(65536, i2);
            if (iMin <= 0) {
                return;
            }
            nVar.write(bArr, 0, iMin);
            i2 -= iMin;
        }
    }

    public t6(int i2, ArrayList arrayList) {
        this.f1414a = i2;
        this.f1415b = arrayList;
    }
}
