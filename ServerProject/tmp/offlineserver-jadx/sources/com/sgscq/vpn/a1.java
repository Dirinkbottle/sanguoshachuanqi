package com.sgscq.vpn;

import java.net.DatagramSocket;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class a1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile boolean f174d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile int f175e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public DatagramSocket f176a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile boolean f177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m2 f178c;

    public a1(m2 m2Var) {
        this.f178c = m2Var;
    }

    public static byte[] a(byte[] bArr, short s) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 12, c(bArr));
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArrCopyOfRange.length + 12);
        byteBufferAllocate.put(bArr, 0, 2);
        byteBufferAllocate.putShort(s);
        byteBufferAllocate.putShort((short) 1);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.put(bArrCopyOfRange);
        return Arrays.copyOf(byteBufferAllocate.array(), byteBufferAllocate.position());
    }

    public static String b(int i2, byte[] bArr) {
        int i3;
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i2 < bArr.length && i4 < 20 && (i3 = bArr[i2] & 255) != 0; i4++) {
            if ((i3 & 192) == 192) {
                int i5 = i2 + 1;
                if (i5 >= bArr.length) {
                    break;
                }
                String strB = b((bArr[i5] & 255) | ((i3 & 63) << 8), bArr);
                if (strB == null) {
                    break;
                }
                if (sb.length() > 0) {
                    sb.append('.');
                }
                sb.append(strB);
                break;
            }
            if (sb.length() > 0) {
                sb.append('.');
            }
            for (int i6 = 1; i6 <= i3; i6++) {
                int i7 = i2 + i6;
                if (i7 >= bArr.length) {
                    break;
                }
                sb.append((char) bArr[i7]);
            }
            i2 += i3 + 1;
        }
        return sb.toString();
    }

    public static int c(byte[] bArr) {
        int i2 = 12;
        while (i2 + 4 < bArr.length) {
            int i3 = bArr[i2] & 255;
            if (i3 == 0) {
                return i2 + 5;
            }
            if ((i3 & 192) == 192) {
                return i2 + 2 + 4;
            }
            i2 += i3 + 1;
        }
        return bArr.length;
    }

    public final byte[] d(byte[] bArr) {
        String strB;
        int i2;
        int i3;
        byte b2;
        if (bArr.length < 12 || (strB = b(12, bArr)) == null || strB.isEmpty()) {
            return null;
        }
        int i4 = 12;
        while (true) {
            int i5 = i4 + 1;
            if (i5 >= bArr.length) {
                i2 = 0;
                break;
            }
            int i6 = bArr[i4] & 255;
            if (i6 == 0) {
                i3 = (bArr[i5] & 255) << 8;
                b2 = bArr[i4 + 2];
            } else if ((i6 & 192) == 192) {
                i3 = (bArr[i4 + 2] & 255) << 8;
                b2 = bArr[i4 + 3];
            } else {
                i4 += i6 + 1;
            }
            i2 = (b2 & 255) | i3;
            break;
        }
        if (!this.f178c.c(strB)) {
            return a(bArr, (short) -32381);
        }
        z2.e("SGSCQ_DNS", "DNS [" + strB + "] type=" + i2 + " → 10.0.0.1");
        if (i2 != 1) {
            return a(bArr, (short) -32384);
        }
        try {
            byte[] address = InetAddress.getByName("10.0.0.1").getAddress();
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 12, c(bArr));
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArrCopyOfRange.length + 12 + 16);
            byteBufferAllocate.put(bArr, 0, 2);
            byteBufferAllocate.putShort((short) -32384);
            byteBufferAllocate.putShort((short) 1);
            byteBufferAllocate.putShort((short) 1);
            byteBufferAllocate.putShort((short) 0);
            byteBufferAllocate.putShort((short) 0);
            byteBufferAllocate.put(bArrCopyOfRange);
            byteBufferAllocate.putShort((short) -16372);
            byteBufferAllocate.putShort((short) 1);
            byteBufferAllocate.putShort((short) 1);
            byteBufferAllocate.putInt(60);
            byteBufferAllocate.putShort((short) 4);
            byteBufferAllocate.put(address);
            return Arrays.copyOf(byteBufferAllocate.array(), byteBufferAllocate.position());
        } catch (Exception e2) {
            c.a.D(e2, new StringBuilder("buildAResponse: "), "SGSCQ_DNS");
            return null;
        }
    }

    public final boolean e() {
        z2.e("SGSCQ_DNS", "Starting DNS server...");
        this.f177b = true;
        CountDownLatch countDownLatch = new CountDownLatch(1);
        new Thread(new d(this, countDownLatch, 4), "DnsServer").start();
        try {
            countDownLatch.await(3L, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
            z2.g("SGSCQ_DNS", "DNS start interrupted: " + e2.getMessage());
        }
        z2.e("SGSCQ_DNS", "DNS start result: ".concat(f174d ? "OK" : "FAILED"));
        return f174d;
    }
}
