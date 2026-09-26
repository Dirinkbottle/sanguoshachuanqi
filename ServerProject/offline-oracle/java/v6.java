package com.sgscq.vpn;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class v6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1478c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1479d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1480e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1481f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1482g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1483h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1484i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinkedBlockingQueue f1485j = new LinkedBlockingQueue();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Object f1486k = new Object();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final z6 f1487l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile boolean f1488m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f1489n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final /* synthetic */ SgscqVpnService f1490o;

    public v6(SgscqVpnService sgscqVpnService, String str, int i2, int i3, int i4, int i5, int i6) {
        this.f1490o = sgscqVpnService;
        this.f1476a = str;
        this.f1477b = i2;
        this.f1478c = i3;
        this.f1479d = i4;
        this.f1480e = i5;
        this.f1481f = i6;
        this.f1484i = i6 + 1;
        int iNextInt = sgscqVpnService.f169k.nextInt(1000000000) + 1000000000;
        this.f1482g = iNextInt;
        int i7 = iNextInt + 1;
        this.f1483h = i7;
        this.f1487l = new z6(i7);
        this.f1489n = SgscqVpnService.m(i4) + ":" + i5;
    }

    public final void a() {
        boolean zIsEmpty;
        List listD;
        while (true) {
            synchronized (this.f1486k) {
                z6 z6Var = this.f1487l;
                synchronized (z6Var) {
                    zIsEmpty = z6Var.f1612a.isEmpty();
                }
                if (zIsEmpty) {
                    return;
                }
                if (this.f1488m) {
                    throw new EOFException("TCP client closed before acknowledging response");
                }
                this.f1486k.wait(this.f1487l.e(System.currentTimeMillis()));
                listD = this.f1487l.d(System.currentTimeMillis());
            }
            b(listD);
        }
    }

    public final void b(List list) {
        int i2;
        int iMax;
        int i3;
        if (list.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder("Proxy ");
        sb.append(this.f1476a);
        sb.append(" retransmit round=");
        z6 z6Var = this.f1487l;
        synchronized (z6Var) {
            i2 = z6Var.f1616e;
        }
        sb.append(i2);
        sb.append(" pending=");
        z6 z6Var2 = this.f1487l;
        synchronized (z6Var2) {
            iMax = Math.max(0, z6Var2.f1614c - z6Var2.f1613b);
        }
        sb.append(iMax);
        sb.append(" ack=");
        z6 z6Var3 = this.f1487l;
        synchronized (z6Var3) {
            i3 = z6Var3.f1613b;
        }
        sb.append(i3);
        z2.g("SGSCQ_VPN", sb.toString());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.f1490o.r((byte[]) it.next());
        }
    }

    public final void c() throws IOException {
        boolean z;
        int i2;
        int iIndexOf;
        String string;
        boolean z2;
        int iIndexOf2;
        if (!this.f1488m) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(4096);
            long jCurrentTimeMillis = System.currentTimeMillis() + 15000;
            int size = 0;
            while (true) {
                if (System.currentTimeMillis() >= jCurrentTimeMillis) {
                    z = false;
                    break;
                }
                byte[] bArr = (byte[]) this.f1485j.poll(500L, TimeUnit.MILLISECONDS);
                if (bArr != null) {
                    byteArrayOutputStream.write(bArr);
                    int length = this.f1484i + bArr.length;
                    this.f1484i = length;
                    this.f1490o.r(SgscqVpnService.a(this.f1490o, this.f1479d, this.f1480e, this.f1477b, this.f1478c, this.f1483h, length, 16, null));
                    if (byteArrayOutputStream.size() > size) {
                        SgscqVpnService sgscqVpnService = this.f1490o;
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        sgscqVpnService.getClass();
                        String str = new String(byteArray, StandardCharsets.ISO_8859_1);
                        int iIndexOf3 = str.indexOf("\r\n\r\n");
                        if (iIndexOf3 >= 0) {
                            if (!str.startsWith("GET ") && !str.startsWith("HEAD ") && !str.startsWith("DELETE ") && !str.startsWith("CONNECT ") && !str.startsWith("OPTIONS ") && (iIndexOf2 = str.indexOf("Content-Length:")) >= 0) {
                                int iIndexOf4 = str.indexOf("\r\n", iIndexOf2);
                                if (iIndexOf4 >= 0) {
                                    try {
                                        if (byteArray.length >= iIndexOf3 + 4 + Integer.parseInt(str.substring(iIndexOf2 + 15, iIndexOf4).trim())) {
                                        }
                                    } catch (Exception unused) {
                                    }
                                }
                                z2 = false;
                            }
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            z = true;
                            break;
                        }
                    }
                    size = byteArrayOutputStream.size();
                    jCurrentTimeMillis = System.currentTimeMillis() + 10000;
                }
            }
            byte[] byteArray2 = byteArrayOutputStream.toByteArray();
            if (z) {
                z2.e("SGSCQ_VPN", "Proxy " + this.f1476a + " req#1 [" + byteArray2.length + "B] " + new String(byteArray2, 0, Math.min(byteArray2.length, 300), StandardCharsets.ISO_8859_1).replace("\r", "\\r").replace("\n", "\\n"));
                Socket socket = new Socket("127.0.0.1", this.f1490o.f165g.W);
                try {
                    this.f1490o.protect(socket);
                    socket.setSoTimeout(30000);
                    socket.getOutputStream().write(byteArray2);
                    socket.getOutputStream().flush();
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(socket.getInputStream(), 8192);
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    int i3 = -1;
                    int i4 = -1;
                    int i5 = -1;
                    while (true) {
                        int i6 = bufferedInputStream.read();
                        if (i6 < 0) {
                            break;
                        }
                        byteArrayOutputStream2.write(i6);
                        if (i3 == 13 && i4 == 10 && i5 == 13 && i6 == 10) {
                            break;
                        }
                        i3 = i4;
                        i4 = i5;
                        i5 = i6;
                    }
                    byte[] byteArray3 = byteArrayOutputStream2.toByteArray();
                    String str2 = new String(byteArray3, StandardCharsets.ISO_8859_1);
                    int iIndexOf5 = str2.toLowerCase().indexOf("content-length:");
                    if (iIndexOf5 < 0 || (iIndexOf = str2.indexOf("\r\n", iIndexOf5)) < 0) {
                        i2 = -1;
                    } else {
                        try {
                            i2 = Integer.parseInt(str2.substring(iIndexOf5 + 15, iIndexOf).trim());
                        } catch (Exception unused2) {
                            i2 = -1;
                        }
                    }
                    z2.e("SGSCQ_VPN", "Proxy " + this.f1476a + " req#1 resp [" + (byteArray3.length + (i2 > 0 ? i2 : 0)) + "B]");
                    f(byteArray3, this.f1483h, this.f1484i);
                    this.f1483h = this.f1483h + byteArray3.length;
                    if (i2 <= 0) {
                        byte[] bArr2 = new byte[8192];
                        while (true) {
                            int i7 = bufferedInputStream.read(bArr2);
                            if (i7 <= 0) {
                                break;
                            }
                            int i8 = 0;
                            while (i8 < i7) {
                                int iMin = Math.min(1400, i7 - i8);
                                int i9 = i8 + iMin;
                                h(this.f1483h, this.f1484i, bArr2, i8, iMin, i9 >= i7);
                                this.f1483h += iMin;
                                i8 = i9;
                            }
                        }
                    } else {
                        byte[] bArr3 = new byte[8192];
                        int i10 = 0;
                        while (i10 < i2) {
                            int i11 = bufferedInputStream.read(bArr3, 0, Math.min(8192, i2 - i10));
                            if (i11 < 0) {
                                break;
                            }
                            int i12 = 0;
                            while (i12 < i11) {
                                int iMin2 = Math.min(1400, i11 - i12);
                                h(this.f1483h, this.f1484i, bArr3, i12, iMin2, (i10 + i12) + iMin2 >= i2);
                                this.f1483h += iMin2;
                                i12 += iMin2;
                                i11 = i11;
                                i10 = i10;
                            }
                            i10 += i11;
                        }
                    }
                    a();
                    socket.close();
                } catch (Throwable th) {
                    socket.close();
                    throw th;
                }
            } else {
                if (byteArray2.length > 0) {
                    int iMin3 = Math.min(byteArray2.length, 32);
                    boolean z3 = SgscqVpnService.f155m;
                    StringBuilder sb = new StringBuilder();
                    for (int i13 = 0; i13 < iMin3; i13++) {
                        sb.append(String.format("%02x ", Integer.valueOf(byteArray2[i13] & 255)));
                    }
                    string = sb.toString();
                } else {
                    string = "(no data)";
                }
                z2.g("SGSCQ_VPN", "Proxy " + this.f1476a + " → " + this.f1489n + " HTTP incomplete, got " + byteArray2.length + "B: " + string);
            }
        }
        g(this.f1483h, this.f1484i);
        this.f1488m = true;
    }

    public final void d() {
        z2.e("SGSCQ_VPN", "HTTPS relay " + this.f1476a + " → " + (SgscqVpnService.m(this.f1479d) + ":" + this.f1480e));
        Socket socket = new Socket(SgscqVpnService.m(this.f1479d), this.f1480e);
        try {
            this.f1490o.protect(socket);
            socket.setSoTimeout(60000);
            new Thread(new d(this, socket, 24), "HTTPS-S2C-" + this.f1476a).start();
            while (!this.f1488m) {
                byte[] bArr = (byte[]) this.f1485j.poll(1000L, TimeUnit.MILLISECONDS);
                if (bArr != null) {
                    if (bArr.length == 0) {
                        break;
                    }
                    int length = this.f1484i + bArr.length;
                    this.f1484i = length;
                    this.f1490o.r(SgscqVpnService.a(this.f1490o, this.f1479d, this.f1480e, this.f1477b, this.f1478c, this.f1483h, length, 16, null));
                    socket.getOutputStream().write(bArr);
                    socket.getOutputStream().flush();
                }
            }
        } finally {
            try {
                socket.close();
            } catch (Exception unused) {
            }
        }
    }

    public final void e() {
        this.f1490o.r(SgscqVpnService.a(this.f1490o, this.f1479d, this.f1480e, this.f1477b, this.f1478c, this.f1482g, this.f1481f + 1, 18, null));
    }

    public final void f(byte[] bArr, int i2, int i3) {
        int i4 = 0;
        while (i4 < bArr.length) {
            int iMin = Math.min(1400, bArr.length - i4);
            int i5 = i4 + iMin;
            h(i2 + i4, i3, bArr, i4, iMin, i5 >= bArr.length);
            i4 = i5;
        }
    }

    public final void g(int i2, int i3) {
        this.f1490o.r(SgscqVpnService.a(this.f1490o, this.f1479d, this.f1480e, this.f1477b, this.f1478c, i2, i3, 17, null));
    }

    public final void h(int i2, int i3, byte[] bArr, int i4, int i5, boolean z) {
        if (i5 <= 0) {
            return;
        }
        byte[] bArr2 = new byte[i5];
        System.arraycopy(bArr, i4, bArr2, 0, i5);
        byte[] bArrA = SgscqVpnService.a(this.f1490o, this.f1479d, this.f1480e, this.f1477b, this.f1478c, i2, i3, z ? 24 : 16, bArr2);
        while (true) {
            synchronized (this.f1486k) {
                if (this.f1488m) {
                    throw new EOFException("TCP client closed while waiting for send capacity");
                }
                if (this.f1487l.a(i5)) {
                    synchronized (this.f1486k) {
                        if (this.f1488m) {
                            throw new EOFException("TCP client closed before segment send");
                        }
                        if (this.f1487l.a(i5)) {
                            this.f1487l.c(i2, i5, bArrA, System.currentTimeMillis());
                            this.f1490o.r(bArrA);
                            return;
                        }
                    }
                } else {
                    this.f1486k.wait(this.f1487l.e(System.currentTimeMillis()));
                    b(this.f1487l.d(System.currentTimeMillis()));
                }
            }
        }
    }
}
