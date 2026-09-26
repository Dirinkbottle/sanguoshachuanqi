package com.sgscq.vpn;

import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class z6 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1614c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1616e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayDeque f1612a = new ArrayDeque();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1615d = 65535;

    public z6(int i2) {
        this.f1613b = i2;
        this.f1614c = i2;
    }

    public final synchronized boolean a(int i2) {
        boolean z;
        z = false;
        int iMin = Math.min(32768, Math.max(0, this.f1615d));
        if (i2 > 0) {
            synchronized (this) {
                if (Math.max(0, this.f1614c - this.f1613b) + i2 <= iMin) {
                    z = true;
                }
            }
        }
        return z;
    }

    public final synchronized void b(int i2, int i3) {
        this.f1615d = Math.max(0, i3);
        int iMin = Math.min(i2, this.f1614c);
        if (iMin <= this.f1613b) {
            return;
        }
        this.f1613b = iMin;
        this.f1616e = 0;
        while (!this.f1612a.isEmpty()) {
            y6 y6Var = (y6) this.f1612a.peekFirst();
            if (y6Var.f1577a + y6Var.f1578b > this.f1613b) {
                break;
            } else {
                this.f1612a.removeFirst();
            }
        }
    }

    public final synchronized void c(int i2, int i3, byte[] bArr, long j2) {
        if (!a(i3)) {
            throw new IllegalStateException("TCP send window is full");
        }
        this.f1612a.addLast(new y6(i2, i3, bArr, j2));
        this.f1614c = Math.max(this.f1614c, i2 + i3);
    }

    public final synchronized List d(long j2) {
        if (this.f1612a.isEmpty()) {
            return Collections.emptyList();
        }
        if (j2 - ((y6) this.f1612a.peekFirst()).f1580d < 300) {
            return Collections.emptyList();
        }
        int i2 = this.f1616e;
        if (i2 >= 10) {
            throw new SocketTimeoutException("TCP ACK stalled");
        }
        this.f1616e = i2 + 1;
        ArrayList arrayList = new ArrayList(this.f1612a.size());
        for (y6 y6Var : this.f1612a) {
            y6Var.f1580d = j2;
            arrayList.add(y6Var.f1579c);
        }
        return arrayList;
    }

    public final synchronized long e(long j2) {
        if (this.f1612a.isEmpty()) {
            return 300L;
        }
        return Math.max(1L, (((y6) this.f1612a.peekFirst()).f1580d + 300) - j2);
    }
}
