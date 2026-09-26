package com.sgscq.vpn;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.net.VpnService;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class SgscqVpnService extends VpnService {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static volatile boolean f155m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static volatile e3 f156n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static u6 f157o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f158p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.sgscq.vpn.cloud.c0 f159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ParcelFileDescriptor f160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FileInputStream f161c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public FileOutputStream f162d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile long f164f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public y2 f165g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public a1 f166h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public m2 f167i;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile boolean f163e = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f168j = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Random f169k = new Random();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ConcurrentHashMap f170l = new ConcurrentHashMap();

    public static byte[] a(SgscqVpnService sgscqVpnService, int i2, int i3, int i4, int i5, int i6, int i7, int i8, byte[] bArr) {
        sgscqVpnService.getClass();
        int length = bArr != null ? bArr.length : 0;
        int i9 = length + 40;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i9);
        byteBufferAllocate.put((byte) 69);
        byteBufferAllocate.put((byte) 0);
        byteBufferAllocate.putShort((short) i9);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putShort((short) 16384);
        byteBufferAllocate.put((byte) 64);
        byteBufferAllocate.put((byte) 6);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putInt(i2);
        byteBufferAllocate.putInt(i4);
        byteBufferAllocate.putShort((short) i3);
        byteBufferAllocate.putShort((short) i5);
        byteBufferAllocate.putInt(i6);
        byteBufferAllocate.putInt(i7);
        byteBufferAllocate.put((byte) 80);
        byteBufferAllocate.put((byte) i8);
        byteBufferAllocate.putShort((short) -1);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putShort((short) 0);
        if (bArr != null) {
            byteBufferAllocate.put(bArr);
        }
        byte[] bArrArray = byteBufferAllocate.array();
        int iL = l(bArrArray);
        bArrArray[10] = (byte) ((iL >> 8) & 255);
        bArrArray[11] = (byte) (iL & 255);
        int iG = g(length + 20, bArrArray);
        bArrArray[36] = (byte) ((iG >> 8) & 255);
        bArrArray[37] = (byte) (iG & 255);
        return bArrArray;
    }

    public static byte[] b() {
        byte[] bArr = {18, 52, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0};
        String[] strArrSplit = "sgscqtv.bfun.cn".split("\\.");
        byte[] bArr2 = new byte[21];
        int length = strArrSplit.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            String str = strArrSplit[i2];
            int i4 = i3 + 1;
            bArr2[i3] = (byte) str.length();
            char[] charArray = str.toCharArray();
            int length2 = charArray.length;
            int i5 = 0;
            while (i5 < length2) {
                bArr2[i4] = (byte) charArray[i5];
                i5++;
                i4++;
            }
            i2++;
            i3 = i4;
        }
        int i6 = i3 + 1;
        bArr2[i3] = 0;
        int i7 = i6 + 1;
        bArr2[i6] = 0;
        int i8 = i7 + 1;
        bArr2[i7] = 1;
        int i9 = i8 + 1;
        bArr2[i8] = 0;
        int i10 = i9 + 1;
        bArr2[i9] = 1;
        byte[] bArr3 = new byte[12 + i10];
        System.arraycopy(bArr, 0, bArr3, 0, 12);
        System.arraycopy(bArr2, 0, bArr3, 12, i10);
        return bArr3;
    }

    public static byte[] c(byte[] bArr, byte[] bArr2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr2.length + 48);
        byteBufferAllocate.put((byte) 96);
        byteBufferAllocate.put(bArr, 1, 3);
        byteBufferAllocate.putShort((short) (bArr2.length + 8));
        byteBufferAllocate.put((byte) 17);
        byteBufferAllocate.put((byte) 64);
        byteBufferAllocate.put(bArr, 24, 16);
        byteBufferAllocate.put(bArr, 8, 16);
        byteBufferAllocate.putShort((short) 53);
        byteBufferAllocate.put(bArr, 48, 2);
        byteBufferAllocate.putShort((short) (bArr2.length + 8));
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.put(bArr2);
        return byteBufferAllocate.array();
    }

    public static byte[] d(int i2, int i3, byte[] bArr) {
        int length = bArr.length + 28;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        byteBufferAllocate.put((byte) 69);
        byteBufferAllocate.put((byte) 0);
        byteBufferAllocate.putShort((short) length);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putShort((short) 16384);
        byteBufferAllocate.put((byte) 64);
        byteBufferAllocate.put((byte) 17);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putInt(167772162);
        byteBufferAllocate.putInt(i2);
        byteBufferAllocate.putShort((short) 53);
        byteBufferAllocate.putShort((short) i3);
        byteBufferAllocate.putShort((short) (bArr.length + 8));
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.put(bArr);
        byte[] bArrArray = byteBufferAllocate.array();
        int iL = l(bArrArray);
        bArrArray[10] = (byte) ((iL >> 8) & 255);
        bArrArray[11] = (byte) (iL & 255);
        int iG = g(bArr.length + 8, bArrArray);
        bArrArray[26] = (byte) ((iG >> 8) & 255);
        bArrArray[27] = (byte) (iG & 255);
        return bArrArray;
    }

    public static boolean e(int i2, byte[] bArr) {
        int i3;
        byte b2;
        int i4 = 12;
        while (i4 < i2 && (b2 = bArr[i4]) != 0) {
            if ((b2 & 192) == 192) {
                i4 += 2;
                break;
            }
            i4 += (b2 & 255) + 1;
        }
        if (i4 < i2 && bArr[i4] == 0) {
            i4++;
        }
        int i5 = i4 + 4;
        while (i5 + 10 <= i2) {
            if ((bArr[i5] & 192) == 192) {
                i3 = i5 + 2;
            } else {
                while (i5 < i2) {
                    byte b3 = bArr[i5];
                    if (b3 == 0) {
                        break;
                    }
                    i5 += (b3 & 255) + 1;
                }
                i3 = i5 + 1;
            }
            int i6 = i3 + 8;
            if (i6 > i2) {
                return false;
            }
            int i7 = ((bArr[i3] & 255) << 8) | (bArr[i3 + 1] & 255);
            int i8 = ((bArr[i6] & 255) << 8) | (bArr[i3 + 9] & 255);
            int i9 = i3 + 10;
            if (i7 == 1 && i8 == 4 && i9 + 4 <= i2) {
                return true;
            }
            i5 = i9 + i8;
        }
        return false;
    }

    public static int g(int i2, byte[] bArr) {
        int iP = p(12, bArr);
        int iP2 = p(16, bArr);
        int i3 = ((iP >> 16) & 65535) + 0 + (iP & 65535) + ((iP2 >> 16) & 65535) + (iP2 & 65535) + (bArr[9] & 255) + i2;
        for (int i4 = 0; i4 < i2; i4 += 2) {
            int i5 = 20 + i4;
            int i6 = (bArr[i5] & 255) << 8;
            if (i4 + 1 < i2) {
                i6 |= bArr[i5 + 1] & 255;
            }
            i3 += i6;
        }
        while (true) {
            int i7 = i3 >> 16;
            if (i7 == 0) {
                return (~i3) & 65535;
            }
            i3 = (i3 & 65535) + i7;
        }
    }

    public static String h(byte[] bArr, int i2, int i3) {
        int i4 = i2 + 12;
        try {
            StringBuilder sb = new StringBuilder();
            while (i4 < i3) {
                int i5 = bArr[i4] & 255;
                if (i5 == 0) {
                    break;
                }
                if (i5 >= 64) {
                    sb.append("(ptr)");
                    break;
                }
                if (sb.length() > 0) {
                    sb.append('.');
                }
                for (int i6 = 1; i6 <= i5; i6++) {
                    int i7 = i4 + i6;
                    if (i7 >= i3) {
                        break;
                    }
                    sb.append((char) bArr[i7]);
                }
                i4 += i5 + 1;
            }
            return sb.toString();
        } catch (Exception unused) {
            return "?";
        }
    }

    public static int i(byte[] bArr, int i2, int i3) {
        int i4;
        byte b2;
        int i5 = i2 + 12;
        while (i5 + 4 < i3) {
            try {
                int i6 = bArr[i5] & 255;
                if (i6 == 0) {
                    i4 = (bArr[i5 + 1] & 255) << 8;
                    b2 = bArr[i5 + 2];
                } else if ((i6 & 192) == 192) {
                    i4 = (bArr[i5 + 2] & 255) << 8;
                    b2 = bArr[i5 + 3];
                } else {
                    i5 += i6 + 1;
                }
                return (b2 & 255) | i4;
            } catch (Exception unused) {
                return 0;
            }
        }
        return 0;
    }

    public static u6 j() {
        if (f157o == null) {
            f157o = new u6();
        }
        return f157o;
    }

    public static int l(byte[] bArr) {
        int i2 = (bArr[0] & 15) * 4;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4 += 2) {
            int i5 = 0 + i4;
            int i6 = (bArr[i5] & 255) << 8;
            if (i4 + 1 < i2) {
                i6 |= bArr[i5 + 1] & 255;
            }
            if (i4 == 10) {
                i6 = 0;
            }
            i3 += i6;
        }
        while (true) {
            int i7 = i3 >> 16;
            if (i7 == 0) {
                return (~i3) & 65535;
            }
            i3 = (65535 & i3) + i7;
        }
    }

    public static String m(int i2) {
        return ((i2 >> 24) & 255) + "." + ((i2 >> 16) & 255) + "." + ((i2 >> 8) & 255) + "." + (i2 & 255);
    }

    public static byte[] n(byte[] bArr, int i2, int i3) {
        int i4 = i3 - i2;
        byte[] bArr2 = new byte[i4 + 16];
        System.arraycopy(bArr, i2, bArr2, 0, i4);
        bArr2[2] = -127;
        bArr2[3] = -128;
        bArr2[7] = 1;
        int i5 = i4 + 1;
        bArr2[i4] = -64;
        int i6 = i5 + 1;
        bArr2[i5] = 12;
        int i7 = i6 + 1;
        bArr2[i6] = 0;
        int i8 = i7 + 1;
        bArr2[i7] = 1;
        int i9 = i8 + 1;
        bArr2[i8] = 0;
        int i10 = i9 + 1;
        bArr2[i9] = 1;
        int i11 = i10 + 1;
        bArr2[i10] = 0;
        int i12 = i11 + 1;
        bArr2[i11] = 0;
        int i13 = i12 + 1;
        bArr2[i12] = 0;
        int i14 = i13 + 1;
        bArr2[i13] = 60;
        int i15 = i14 + 1;
        bArr2[i14] = 0;
        int i16 = i15 + 1;
        bArr2[i15] = 4;
        int i17 = i16 + 1;
        bArr2[i16] = 10;
        int i18 = i17 + 1;
        bArr2[i17] = 0;
        int i19 = i18 + 1;
        bArr2[i18] = 0;
        bArr2[i19] = 100;
        return Arrays.copyOf(bArr2, i19 + 1);
    }

    public static void o(boolean z) {
        e3 e3Var = f156n;
        if (e3Var != null) {
            try {
                int i2 = MainActivity.F;
                MainActivity mainActivity = e3Var.f649b;
                mainActivity.getClass();
                mainActivity.runOnUiThread(new j3(mainActivity, z, 0));
            } catch (Exception unused) {
            }
        }
    }

    public static int p(int i2, byte[] bArr) {
        return ByteBuffer.wrap(bArr, i2, 4).getInt();
    }

    public final void f() {
        this.f170l.values().forEach(new r6());
        this.f170l.clear();
        a1 a1Var = this.f166h;
        if (a1Var != null) {
            a1Var.f177b = false;
            a1.f174d = false;
            a1.f175e = 0;
            DatagramSocket datagramSocket = a1Var.f176a;
            if (datagramSocket != null) {
                try {
                    datagramSocket.close();
                } catch (Exception unused) {
                }
                a1Var.f176a = null;
            }
            z2.e("SGSCQ_DNS", "DNS stopped");
            this.f166h = null;
        }
        y2 y2Var = this.f165g;
        if (y2Var != null) {
            y2Var.f1548a = false;
            Iterator it = y2Var.S.iterator();
            while (it.hasNext()) {
                try {
                    ((ServerSocket) it.next()).close();
                } catch (Exception unused2) {
                }
            }
            y2Var.S.clear();
            y2Var.T.shutdownNow();
            com.sgscq.vpn.cloud.b bVar = y2Var.P;
            if (bVar != null) {
                bVar.close();
            }
            y2Var.f1553f.f737b.close();
            z2.e("SGSCQ_SRV", "Server stopped");
        }
        try {
            this.f160b.close();
        } catch (Exception unused3) {
        }
        z2.e("SGSCQ_VPN", "VPN stopped");
    }

    public final void k(int i2, byte[] bArr) {
        String string;
        StringBuilder sb;
        String strM;
        if (i2 < 40) {
            return;
        }
        int i3 = bArr[6] & 255;
        if (i3 != 17 || i2 < 48) {
            if (i3 != 6 || i2 < 60) {
                return;
            }
            int i4 = bArr[53] & 255;
            if ((i4 & 2) == 0 || (i4 & 16) != 0) {
                return;
            }
            int i5 = ((bArr[40] & 255) << 8) | (bArr[41] & 255);
            int i6 = ((bArr[42] & 255) << 8) | (bArr[43] & 255);
            int iP = p(44, bArr);
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(60);
            byteBufferAllocate.put((byte) 96);
            byteBufferAllocate.put(bArr, 1, 3);
            byteBufferAllocate.putShort((short) 20);
            byteBufferAllocate.put((byte) 6);
            byteBufferAllocate.put((byte) 64);
            byteBufferAllocate.put(bArr, 24, 16);
            byteBufferAllocate.put(bArr, 8, 16);
            byteBufferAllocate.putShort((short) i6);
            byteBufferAllocate.putShort((short) i5);
            byteBufferAllocate.putInt(0);
            byteBufferAllocate.putInt(iP + 1);
            byteBufferAllocate.put((byte) 80);
            byteBufferAllocate.put((byte) 20);
            byteBufferAllocate.putShort((short) 0);
            byteBufferAllocate.putShort((short) 0);
            byteBufferAllocate.putShort((short) 0);
            r(byteBufferAllocate.array());
            string = "TCP6 RST src=" + i5 + " dst=" + i6;
        } else {
            if ((((bArr[42] & 255) << 8) | (bArr[43] & 255)) != 53) {
                return;
            }
            String strH = h(bArr, 48, i2);
            int i7 = i(bArr, 48, i2);
            if (!this.f167i.c(strH)) {
                return;
            }
            if (i7 == 28) {
                int i8 = i2 - 48;
                byte[] bArr2 = new byte[i8];
                System.arraycopy(bArr, 48, bArr2, 0, i8);
                bArr2[2] = -127;
                bArr2[3] = -128;
                bArr2[6] = 0;
                bArr2[7] = 0;
                r(c(bArr, bArr2));
                sb = new StringBuilder("DNS6 [");
                sb.append(strH);
                strM = "] AAAA → empty";
            } else {
                if (i7 != 1) {
                    return;
                }
                r(c(bArr, n(bArr, 48, i2)));
                sb = new StringBuilder("DNS6 [");
                sb.append(strH);
                sb.append("] A → ");
                strM = m(167772260);
            }
            sb.append(strM);
            string = sb.toString();
        }
        z2.e("SGSCQ_VPN", string);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        com.sgscq.vpn.cloud.c0 c0Var = this.f159a;
        if (c0Var != null) {
            c0Var.close();
            this.f159a = null;
        }
        this.f163e = false;
        this.f164f++;
        f155m = false;
        if (!n0.f1210d) {
            n0.r(getApplicationContext()).edit().remove("session").remove("session_tail").apply();
        }
        f();
        o(false);
        super.onDestroy();
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:40:0x00f1  */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        if (intent == null) {
            return 2;
        }
        if ("STOP".equals(intent.getAction())) {
            this.f163e = false;
            this.f164f++;
            f155m = false;
            f();
            stopSelf();
            o(false);
            return 2;
        }
        if (f155m) {
            z2.b("SGSCQ_VPN", "Already running");
            return 1;
        }
        this.f163e = true;
        f155m = true;
        com.sgscq.vpn.cloud.c0 c0Var = this.f159a;
        if (c0Var != null) {
            c0Var.close();
            this.f159a = null;
        }
        com.sgscq.vpn.cloud.c0 c0Var2 = new com.sgscq.vpn.cloud.c0(this);
        this.f159a = c0Var2;
        if (!c0Var2.f304i && c0Var2.f303h.compareAndSet(false, true)) {
            c0Var2.f302g.scheduleWithFixedDelay(new b(c0Var2, 13), 1L, 1L, TimeUnit.MINUTES);
        }
        new Thread(new b(this, 5), "VpnLimitedInit").start();
        PendingIntent activity = PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) MainActivity.class), 201326592);
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 26) {
            NotificationChannel notificationChannelB = q1.b();
            notificationChannelB.setDescription("保持本地游戏服务器 VPN 连接");
            NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
            if (notificationManager != null) {
                notificationManager.createNotificationChannel(notificationChannelB);
            }
        }
        Notification notificationBuild = (i4 >= 26 ? q1.a(this) : new Notification.Builder(this)).setSmallIcon(R.mipmap.ic_launcher).setContentTitle("三国杀传奇单机版").setContentText("VPN 正在转发游戏请求").setContentIntent(activity).setOngoing(true).setShowWhen(false).build();
        if (i4 >= 34) {
            try {
                startForeground(1001, notificationBuild, 1024);
            } catch (RuntimeException e2) {
                z2.g("SGSCQ_VPN", "systemExempted 前台服务不可用，回退 specialUse: " + e2);
                if (Build.VERSION.SDK_INT >= 29) {
                    startForeground(1001, notificationBuild, 1073741824);
                } else {
                    startForeground(1001, notificationBuild);
                }
            }
        } else if (Build.VERSION.SDK_INT >= 29) {
            startForeground(1001, notificationBuild, 1073741824);
        } else {
            startForeground(1001, notificationBuild);
        }
        final long j2 = this.f164f + 1;
        this.f164f = j2;
        try {
            z2.e("SGSCQ_VPN", "状态: VPN 启动中...");
            z2.f();
            this.f167i = new m2(this);
            z2.e("SGSCQ_VPN", "Rules loaded: " + ((Set) this.f167i.f1186a).size() + " domains");
            y2 y2Var = new y2(this);
            this.f165g = y2Var;
            f158p = y2Var.W;
            z2.e("SGSCQ_VPN", "LocalServer on :" + f158p);
            if (this.f166h != null) {
                z2.e("SGSCQ_VPN", "Stopping old DNS server before restart...");
                a1 a1Var = this.f166h;
                a1Var.f177b = false;
                a1.f174d = false;
                a1.f175e = 0;
                DatagramSocket datagramSocket = a1Var.f176a;
                if (datagramSocket != null) {
                    try {
                        datagramSocket.close();
                    } catch (Exception unused) {
                    }
                    a1Var.f176a = null;
                }
                z2.e("SGSCQ_DNS", "DNS stopped");
                this.f166h = null;
            }
            a1 a1Var2 = new a1(this.f167i);
            this.f166h = a1Var2;
            if (!a1Var2.e()) {
                z2.g("SGSCQ_VPN", "DNS bind failed, VPN will use TUN-level DNS interception only");
            }
            VpnService.Builder configureIntent = new VpnService.Builder(this).setSession("SGSCQ VPN").addAddress("10.0.0.1", 24).addRoute("0.0.0.0", 0).addDnsServer("10.0.0.2").setMtu(1500).setBlocking(true).setConfigureIntent(PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) MainActivity.class), 67108864));
            String[] strArr = p5.f1279f;
            for (int i5 = 0; i5 < 5; i5++) {
                configureIntent.addAllowedApplication(strArr[i5]);
            }
            this.f160b = configureIntent.establish();
            this.f161c = new FileInputStream(this.f160b.getFileDescriptor());
            this.f162d = new FileOutputStream(this.f160b.getFileDescriptor());
            z2.e("SGSCQ_VPN", "VPN ACTIVE → TUN 10.0.0.1/24, DNS 10.0.0.2, spoof → " + m(167772260));
            try {
                j().c(24, new byte[]{-44, -61, -78, -95, 2, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 101, 0, 0, 0});
                z2.e("SGSCQ_VPN", "PCAP: memory buffer (100MB shared)");
            } catch (Exception e3) {
                z2.c("SGSCQ_VPN", "PCAP init: " + e3.getMessage());
            }
            System.currentTimeMillis();
            z2.e("SGSCQ_VPN", "状态: VPN 组件启动完成，开始验证...");
            new Thread(new a6(this, j2, this.f161c), "VPN-Main").start();
            new Thread(new Runnable() { // from class: com.sgscq.vpn.s6
                /* JADX WARN: Code duplicated, block: B:42:0x00fc  */
                /* JADX WARN: Code duplicated, block: B:43:0x0100  */
                /* JADX WARN: Code duplicated, block: B:55:0x0157  */
                /* JADX WARN: Code duplicated, block: B:70:0x017e  */
                /* JADX WARN: Code duplicated, block: B:94:0x01b7 A[ADDED_TO_REGION, SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:98:0x019a A[SYNTHETIC] */
                /* JADX WARN: Instruction removed from duplicated block: B:70:0x017e, please report this as an issue */
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z;
                    y2 y2Var2;
                    int i6;
                    boolean z2;
                    String str;
                    boolean z3;
                    String str2;
                    String str3;
                    SgscqVpnService sgscqVpnService = this.f1369a;
                    long j3 = j2;
                    int i7 = 500;
                    int i8 = 1;
                    while (true) {
                        boolean z4 = sgscqVpnService.f163e;
                        if (i8 > 5) {
                            if (z4 && j3 == sgscqVpnService.f164f) {
                                z2.c("SGSCQ_VPN", "状态: VPN 验证失败 ✗ (重试 5 次后仍无法通过验证)");
                                sgscqVpnService.f163e = false;
                                SgscqVpnService.f155m = false;
                                sgscqVpnService.f();
                                SgscqVpnService.o(false);
                                return;
                            }
                            return;
                        }
                        if (z4 && j3 == sgscqVpnService.f164f) {
                            z2.e("SGSCQ_VPN", "状态: 验证中 (attempt " + i8 + "/5)...");
                            if (sgscqVpnService.f166h != null && a1.f174d) {
                                z2.e("SGSCQ_VPN", "状态: DNS 已启动 (127.0.0.1:" + a1.f175e + ")");
                                try {
                                    DatagramSocket datagramSocket2 = new DatagramSocket();
                                    datagramSocket2.setSoTimeout(2000);
                                    byte[] bArrB = SgscqVpnService.b();
                                    datagramSocket2.send(new DatagramPacket(bArrB, bArrB.length, InetAddress.getByName("127.0.0.1"), a1.f175e));
                                    byte[] bArr = new byte[512];
                                    DatagramPacket datagramPacket = new DatagramPacket(bArr, 512);
                                    datagramSocket2.receive(datagramPacket);
                                    datagramSocket2.close();
                                    if (datagramPacket.getLength() >= 12) {
                                        int i9 = ((bArr[6] & 255) << 8) | (bArr[7] & 255);
                                        if (i9 <= 0 || !SgscqVpnService.e(datagramPacket.getLength(), bArr)) {
                                            z2.g("SGSCQ_VPN", "状态: DNS 验证失败 (answers=" + i9 + ", 无 A 记录)");
                                        } else {
                                            try {
                                                z2.e("SGSCQ_VPN", "状态: DNS 已验证 (sgscqtv.bfun.cn → 10.0.0.1 ✓)");
                                                z = true;
                                            } catch (SocketTimeoutException unused2) {
                                                z = true;
                                                str3 = "状态: DNS 验证超时 (2s 无响应)";
                                                z2.g("SGSCQ_VPN", str3);
                                            } catch (Exception e4) {
                                                e = e4;
                                                z = true;
                                                str3 = "状态: DNS 验证异常: " + e.getMessage();
                                                z2.g("SGSCQ_VPN", str3);
                                            }
                                        }
                                    }
                                } catch (SocketTimeoutException unused3) {
                                    z = false;
                                } catch (Exception e5) {
                                    e = e5;
                                    z = false;
                                }
                                y2Var2 = sgscqVpnService.f165g;
                                if (y2Var2 != null) {
                                    str = "状态: LocalServer 未创建";
                                    z3 = false;
                                } else {
                                    i6 = y2Var2.W;
                                    try {
                                        Socket socket = new Socket();
                                        socket.connect(new InetSocketAddress("127.0.0.1", i6), 2000);
                                        socket.close();
                                        try {
                                            z2.e("SGSCQ_VPN", "状态: LocalServer 已验证 (127.0.0.1:" + i6 + " ✓)");
                                            z3 = true;
                                        } catch (Exception e6) {
                                            e = e6;
                                            z2 = true;
                                            str = "状态: LocalServer 验证失败 (port " + i6 + "): " + e.getMessage();
                                            z3 = z2;
                                            z2.g("SGSCQ_VPN", str);
                                        }
                                    } catch (Exception e7) {
                                        e = e7;
                                        z2 = false;
                                    }
                                    if (sgscqVpnService.f163e || j3 != sgscqVpnService.f164f) {
                                        return;
                                    }
                                    if (z && z3) {
                                        z2.e("SGSCQ_VPN", "状态: VPN 已验证 ✓ (DNS + LocalServer 全部正常)");
                                        SgscqVpnService.o(true);
                                        return;
                                    }
                                    if (!z || z3) {
                                        str2 = (!z && z3) ? "状态: LocalServer 正常但 DNS 异常，等待重试..." : "状态: DNS 正常但 LocalServer 异常，等待重试...";
                                        if (i8 < 5) {
                                            z2.e("SGSCQ_VPN", "状态: " + i7 + "ms 后重试...");
                                            try {
                                                Thread.sleep(i7);
                                            } catch (InterruptedException unused4) {
                                            }
                                            i7 *= 2;
                                        }
                                        i8++;
                                    }
                                    z2.g("SGSCQ_VPN", str2);
                                    if (i8 < 5) {
                                        z2.e("SGSCQ_VPN", "状态: " + i7 + "ms 后重试...");
                                        Thread.sleep(i7);
                                        i7 *= 2;
                                    }
                                    i8++;
                                }
                                z2.g("SGSCQ_VPN", str);
                                if (sgscqVpnService.f163e) {
                                    return;
                                } else {
                                    return;
                                }
                            }
                            z2.g("SGSCQ_VPN", "状态: DNS 未启动".concat(sgscqVpnService.f166h == null ? " (null)" : " (not running)"));
                            z = false;
                            y2Var2 = sgscqVpnService.f165g;
                            if (y2Var2 != null) {
                                i6 = y2Var2.W;
                                Socket socket2 = new Socket();
                                socket2.connect(new InetSocketAddress("127.0.0.1", i6), 2000);
                                socket2.close();
                                z2.e("SGSCQ_VPN", "状态: LocalServer 已验证 (127.0.0.1:" + i6 + " ✓)");
                                z3 = true;
                                if (sgscqVpnService.f163e) {
                                    return;
                                } else {
                                    return;
                                }
                            }
                            str = "状态: LocalServer 未创建";
                            z3 = false;
                            z2.g("SGSCQ_VPN", str);
                            if (sgscqVpnService.f163e) {
                                return;
                            } else {
                                return;
                            }
                        }
                        return;
                    }
                }
            }, "VPN-Verify").start();
        } catch (Exception e4) {
            c.a.D(e4, new StringBuilder("VPN start failed: "), "SGSCQ_VPN");
            f155m = false;
            o(false);
        }
        return 1;
    }

    public final void q(int i2, byte[] bArr) {
        synchronized (this.f168j) {
            try {
                u6 u6VarJ = j();
                long jCurrentTimeMillis = System.currentTimeMillis();
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
                byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
                byteBufferAllocate.putInt((int) (jCurrentTimeMillis / 1000));
                byteBufferAllocate.putInt((int) ((jCurrentTimeMillis % 1000) * 1000));
                byteBufferAllocate.putInt(i2);
                byteBufferAllocate.putInt(i2);
                u6VarJ.c(16, byteBufferAllocate.array());
                u6VarJ.c(i2, bArr);
            } catch (Exception unused) {
            }
        }
    }

    public final void r(byte[] bArr) {
        q(bArr.length, bArr);
        synchronized (this.f162d) {
            try {
                this.f162d.write(bArr);
                this.f162d.flush();
            } catch (Exception unused) {
            }
        }
    }
}
