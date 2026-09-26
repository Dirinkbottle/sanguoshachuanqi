package com.sgscq.vpn;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.widget.TextView;
import android.widget.Toast;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PushbackInputStream;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketAddress;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f614c;

    public /* synthetic */ d(Object obj, Object obj2, int i2) {
        this.f612a = i2;
        this.f613b = obj;
        this.f614c = obj2;
    }

    private final void a() {
        int i2;
        v6 v6Var = (v6) this.f613b;
        Socket socket = (Socket) this.f614c;
        v6Var.getClass();
        try {
            try {
                InputStream inputStream = socket.getInputStream();
                byte[] bArr = new byte[4096];
                while (!v6Var.f1488m && (i2 = inputStream.read(bArr)) > 0) {
                    byte[] bArr2 = new byte[i2];
                    System.arraycopy(bArr, 0, bArr2, 0, i2);
                    v6Var.f(bArr2, v6Var.f1483h, v6Var.f1484i);
                    v6Var.f1483h += i2;
                }
                try {
                    try {
                        if (!v6Var.f1488m) {
                            v6Var.a();
                            v6Var.g(v6Var.f1483h, v6Var.f1484i);
                        }
                        v6Var.f1488m = true;
                        synchronized (v6Var.f1486k) {
                            v6Var.f1486k.notifyAll();
                        }
                        v6Var.f1485j.offer(new byte[0]);
                    } catch (Exception e2) {
                        if (!v6Var.f1488m) {
                            z2.b("SGSCQ_VPN", "HTTPS relay close: " + e2.getMessage());
                        }
                        v6Var.f1488m = true;
                        synchronized (v6Var.f1486k) {
                            v6Var.f1486k.notifyAll();
                            v6Var.f1485j.offer(new byte[0]);
                        }
                    }
                } catch (Throwable th) {
                    v6Var.f1488m = true;
                    synchronized (v6Var.f1486k) {
                        v6Var.f1486k.notifyAll();
                        v6Var.f1485j.offer(new byte[0]);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                try {
                    try {
                        if (!v6Var.f1488m) {
                            v6Var.a();
                            v6Var.g(v6Var.f1483h, v6Var.f1484i);
                        }
                        v6Var.f1488m = true;
                        synchronized (v6Var.f1486k) {
                            v6Var.f1486k.notifyAll();
                            v6Var.f1485j.offer(new byte[0]);
                            throw th2;
                        }
                    } catch (Exception e3) {
                        if (!v6Var.f1488m) {
                            z2.b("SGSCQ_VPN", "HTTPS relay close: " + e3.getMessage());
                        }
                        v6Var.f1488m = true;
                        synchronized (v6Var.f1486k) {
                            v6Var.f1486k.notifyAll();
                            v6Var.f1485j.offer(new byte[0]);
                        }
                    }
                } catch (Throwable th3) {
                    v6Var.f1488m = true;
                    synchronized (v6Var.f1486k) {
                        v6Var.f1486k.notifyAll();
                        v6Var.f1485j.offer(new byte[0]);
                        throw th3;
                    }
                }
            }
        } catch (Exception e4) {
            if (!v6Var.f1488m) {
                z2.b("SGSCQ_VPN", "HTTPS relay server→client end: " + e4.getMessage());
            }
            try {
                try {
                    if (!v6Var.f1488m) {
                        v6Var.a();
                        v6Var.g(v6Var.f1483h, v6Var.f1484i);
                    }
                    v6Var.f1488m = true;
                    synchronized (v6Var.f1486k) {
                        v6Var.f1486k.notifyAll();
                        v6Var.f1485j.offer(new byte[0]);
                    }
                } catch (Exception e5) {
                    if (!v6Var.f1488m) {
                        z2.b("SGSCQ_VPN", "HTTPS relay close: " + e5.getMessage());
                    }
                    v6Var.f1488m = true;
                    synchronized (v6Var.f1486k) {
                        v6Var.f1486k.notifyAll();
                        v6Var.f1485j.offer(new byte[0]);
                    }
                }
            } catch (Throwable th4) {
                v6Var.f1488m = true;
                synchronized (v6Var.f1486k) {
                    v6Var.f1486k.notifyAll();
                    v6Var.f1485j.offer(new byte[0]);
                    throw th4;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:332:0x0792  */
    /* JADX WARN: Code duplicated, block: B:333:0x079e  */
    /* JADX WARN: Code duplicated, block: B:406:0x07a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:456:0x07c5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:460:0x07a5 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:291:0x065d -> B:396:0x0670). Please report as a decompilation issue!!! */
    @Override // java.lang.Runnable
    public final void run() {
        m.e eVar;
        byte[] bArr;
        DatagramPacket datagramPacket;
        byte[] bArrD;
        List listEmptyList;
        String strConcat;
        com.sgscq.vpn.cloud.g0 g0Var;
        q.n nVar;
        q.n nVar2;
        long j2;
        String str;
        boolean z;
        int i2 = 8;
        int i3 = 2;
        String message = null;
        int i4 = 0;
        boolean z2 = false;
        switch (this.f612a) {
            case 0:
                e eVar2 = (e) this.f613b;
                f fVar = (f) this.f614c;
                p6 p6Var = (p6) eVar2;
                int i5 = p6Var.f1291a;
                SettingsActivity settingsActivity = p6Var.f1292b;
                switch (i5) {
                    case 4:
                        Toast.makeText(settingsActivity, "爱发电权益已刷新", 0).show();
                        int i6 = SettingsActivity.Y;
                        settingsActivity.t();
                        z0.d(settingsActivity, "refresh", "afdian");
                        return;
                    default:
                        Toast.makeText(settingsActivity, fVar.f666d ? "爱发电登录成功：赞助有效 Lv." + fVar.f668f : "爱发电登录成功，未识别到赞助记录", 1).show();
                        int i7 = SettingsActivity.Y;
                        settingsActivity.t();
                        if (settingsActivity.f149m != null && (eVar = settingsActivity.f150n) != null && eVar.y().isLoggedIn()) {
                            settingsActivity.H("正在查找当前爱发电账号绑定的云端角色...");
                            new Thread(new f6(settingsActivity, 5), "sgscq-cloud-login-switch").start();
                        }
                        z0.d(settingsActivity, "bind", "afdian");
                        return;
                }
            case 1:
                ((p6) ((e) this.f613b)).a(((Exception) this.f614c).getMessage());
                return;
            case 2:
                y yVar = (y) this.f613b;
                z zVar = (z) this.f614c;
                int i8 = b0.f194c;
                p6 p6Var2 = (p6) yVar;
                int i9 = p6Var2.f1291a;
                SettingsActivity settingsActivity2 = p6Var2.f1292b;
                switch (i9) {
                    case 0:
                        Toast.makeText(settingsActivity2, zVar.f1583c ? zVar.a() : zVar.a() + "。如刚关注，请约 1 天后再点刷新。", 1).show();
                        int i10 = SettingsActivity.Y;
                        settingsActivity2.u();
                        z0.d(settingsActivity2, "bind", "bilibili");
                        return;
                    default:
                        boolean z3 = zVar.f1583c;
                        Toast.makeText(settingsActivity2, zVar.a(), 1).show();
                        int i11 = SettingsActivity.Y;
                        settingsActivity2.u();
                        z0.d(settingsActivity2, "refresh", "bilibili");
                        return;
                }
            case 3:
                y yVar2 = (y) this.f613b;
                Exception exc = (Exception) this.f614c;
                int i12 = b0.f194c;
                ((p6) yVar2).a(exc.getMessage());
                return;
            case 4:
                a1 a1Var = (a1) this.f613b;
                CountDownLatch countDownLatch = (CountDownLatch) this.f614c;
                int[] iArr = {5353, 5354};
                for (int i13 = 0; i13 < 2; i13++) {
                    a1Var.getClass();
                    int i14 = iArr[i13];
                    try {
                        DatagramSocket datagramSocket = new DatagramSocket((SocketAddress) null);
                        a1Var.f176a = datagramSocket;
                        datagramSocket.setReuseAddress(true);
                        a1Var.f176a.bind(new InetSocketAddress("127.0.0.1", i14));
                        a1.f174d = true;
                        a1.f175e = i14;
                        z2.e("SGSCQ_DNS", "DNS on 127.0.0.1:" + i14 + " (need iptables redirect from :53)");
                        if (a1Var.f176a == null) {
                            z2.c("SGSCQ_DNS", "DNS failed to bind");
                            a1.f174d = false;
                            countDownLatch.countDown();
                            return;
                        }
                        countDownLatch.countDown();
                        bArr = new byte[512];
                        while (a1Var.f177b) {
                            try {
                                datagramPacket = new DatagramPacket(bArr, 512);
                                a1Var.f176a.receive(datagramPacket);
                                bArrD = a1Var.d(Arrays.copyOf(datagramPacket.getData(), datagramPacket.getLength()));
                                if (bArrD != null) {
                                    a1Var.f176a.send(new DatagramPacket(bArrD, bArrD.length, datagramPacket.getAddress(), datagramPacket.getPort()));
                                }
                            } catch (Exception e2) {
                                if (a1Var.f177b) {
                                    c.a.D(e2, new StringBuilder("DNS error: "), "SGSCQ_DNS");
                                }
                            }
                        }
                        return;
                    } catch (Exception e3) {
                        StringBuilder sb = new StringBuilder("Cannot bind 127.0.0.1:");
                        sb.append(i14);
                        sb.append(" — ");
                        c.a.u(e3, sb, "SGSCQ_DNS");
                        DatagramSocket datagramSocket2 = a1Var.f176a;
                        if (datagramSocket2 != null) {
                            try {
                                datagramSocket2.close();
                                break;
                            } catch (Exception unused) {
                            }
                            a1Var.f176a = null;
                        }
                    }
                }
                if (a1Var.f176a == null) {
                    z2.c("SGSCQ_DNS", "DNS failed to bind");
                    a1.f174d = false;
                    countDownLatch.countDown();
                    return;
                }
                countDownLatch.countDown();
                bArr = new byte[512];
                while (a1Var.f177b) {
                    datagramPacket = new DatagramPacket(bArr, 512);
                    a1Var.f176a.receive(datagramPacket);
                    bArrD = a1Var.d(Arrays.copyOf(datagramPacket.getData(), datagramPacket.getLength()));
                    if (bArrD != null) {
                        a1Var.f176a.send(new DatagramPacket(bArrD, bArrD.length, datagramPacket.getAddress(), datagramPacket.getPort()));
                    }
                }
                return;
            case 5:
                c1 c1Var = (c1) this.f613b;
                d1 d1Var = (d1) this.f614c;
                p6 p6Var3 = (p6) c1Var;
                int i15 = p6Var3.f1291a;
                SettingsActivity settingsActivity3 = p6Var3.f1292b;
                switch (i15) {
                    case 2:
                        Toast.makeText(settingsActivity3, d1Var.f619c ? d1Var.a() : d1Var.a() + "。如刚关注，请稍后再点刷新。", 1).show();
                        int i16 = SettingsActivity.Y;
                        settingsActivity3.w();
                        z0.d(settingsActivity3, "bind", "douyin");
                        return;
                    default:
                        Toast.makeText(settingsActivity3, d1Var.a(), 1).show();
                        int i17 = SettingsActivity.Y;
                        settingsActivity3.w();
                        z0.d(settingsActivity3, "refresh", "douyin");
                        return;
                }
            case 6:
                ((p6) ((c1) this.f613b)).a(((Exception) this.f614c).getMessage());
                return;
            case 7:
                y2 y2Var = (y2) this.f613b;
                ServerSocket serverSocket = (ServerSocket) this.f614c;
                while (y2Var.f1548a) {
                    try {
                        new Thread(new d(y2Var, serverSocket.accept(), i2), "HTTP").start();
                    } catch (Exception e4) {
                        if (y2Var.f1548a) {
                            c.a.D(e4, new StringBuilder("Accept: "), "SGSCQ_SRV");
                        }
                    }
                }
                return;
            case 8:
                y2 y2Var2 = (y2) this.f613b;
                Socket socket = (Socket) this.f614c;
                String[] strArr = y2.X;
                y2Var2.getClass();
                try {
                    try {
                        try {
                            socket.setSoTimeout(15000);
                            PushbackInputStream pushbackInputStream = new PushbackInputStream(socket.getInputStream(), 1);
                            int i18 = pushbackInputStream.read();
                            if (i18 >= 0) {
                                pushbackInputStream.unread(i18);
                                if (i18 == 71 || i18 == 80 || i18 == 72 || i18 == 68 || i18 == 79) {
                                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(pushbackInputStream));
                                    String line = bufferedReader.readLine();
                                    if (line != null) {
                                        y2Var2.c2(socket, line, bufferedReader);
                                    }
                                } else {
                                    z2.g("SGSCQ_SRV", "NON-HTTP raw connection");
                                    socket.getOutputStream().write("HTTP/1.0 200 OK\r\nContent-Length: 0\r\n\r\n".getBytes());
                                }
                                socket.close();
                                return;
                            }
                            socket.close();
                        } catch (Exception e5) {
                            z2.c("SGSCQ_SRV", "Client: " + e5.getMessage());
                            break;
                        }
                        socket.close();
                        return;
                    } catch (Exception unused2) {
                        return;
                    }
                } catch (Throwable th) {
                    try {
                        socket.close();
                        break;
                    } catch (Exception unused3) {
                    }
                    throw th;
                }
            case 9:
                MainActivity mainActivity = (MainActivity) this.f613b;
                String str2 = (String) this.f614c;
                int i19 = MainActivity.F;
                if ((mainActivity.isFinishing() || mainActivity.isDestroyed()) ? false : true) {
                    mainActivity.e("导出失败: " + str2);
                    new AlertDialog.Builder(mainActivity).setTitle("导出失败").setMessage(str2).setPositiveButton("确定", (DialogInterface.OnClickListener) null).show();
                    return;
                }
                return;
            case 10:
                MainActivity mainActivity2 = (MainActivity) this.f613b;
                mainActivity2.f111i = (List) this.f614c;
                mainActivity2.i();
                return;
            case 11:
                PassportActivity passportActivity = (PassportActivity) this.f613b;
                Uri uri = (Uri) this.f614c;
                int i20 = PassportActivity.f120q;
                passportActivity.getClass();
                try {
                    InputStream inputStreamOpenInputStream = passportActivity.getContentResolver().openInputStream(uri);
                    try {
                        if (inputStreamOpenInputStream == null) {
                            throw new IOException("无法读取归档文件");
                        }
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        byte[] bArr2 = new byte[8192];
                        int i21 = 0;
                        while (true) {
                            int i22 = inputStreamOpenInputStream.read(bArr2);
                            if (i22 == -1) {
                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                inputStreamOpenInputStream.close();
                                List list = (List) passportActivity.f131k.a(byteArray).f616b;
                                if (list == null) {
                                    listEmptyList = Collections.emptyList();
                                } else {
                                    ArrayList arrayList = new ArrayList();
                                    Iterator it = list.iterator();
                                    while (it.hasNext()) {
                                        arrayList.add(new com.sgscq.vpn.cloud.t0((com.sgscq.vpn.cloud.s0) it.next()));
                                    }
                                    listEmptyList = arrayList;
                                }
                                passportActivity.runOnUiThread(new a4(passportActivity, listEmptyList, 0));
                                return;
                            }
                            i21 += i22;
                            if (i21 > 125829120) {
                                throw new IOException("归档文件过大");
                            }
                            byteArrayOutputStream.write(bArr2, 0, i22);
                        }
                    } catch (Throwable th2) {
                        if (inputStreamOpenInputStream == null) {
                            throw th2;
                        }
                        try {
                            inputStreamOpenInputStream.close();
                            throw th2;
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                            throw th2;
                        }
                    }
                } catch (Exception e6) {
                    passportActivity.h(e6);
                    return;
                }
                break;
            case 12:
                PassportActivity passportActivity2 = (PassportActivity) this.f613b;
                com.sgscq.vpn.cloud.p0 p0Var = (com.sgscq.vpn.cloud.p0) this.f614c;
                int i23 = PassportActivity.f120q;
                passportActivity2.getClass();
                boolean z4 = p0Var == com.sgscq.vpn.cloud.p0.READY;
                passportActivity2.f125e.setEnabled(z4);
                passportActivity2.f125e.setAlpha(z4 ? 1.0f : 0.45f);
                passportActivity2.f125e.setContentDescription(com.sgscq.vpn.cloud.q0.c(p0Var));
                return;
            case 13:
                PassportActivity passportActivity3 = (PassportActivity) this.f613b;
                passportActivity3.f132l = (byte[]) this.f614c;
                Intent intent = new Intent("android.intent.action.CREATE_DOCUMENT");
                intent.addCategory("android.intent.category.OPENABLE");
                intent.setType("application/octet-stream");
                intent.putExtra("android.intent.extra.TITLE", "sgscq-save-" + new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.getDefault()).format(new Date()) + ".sgscqbackup");
                passportActivity3.startActivityForResult(intent, 1003);
                return;
            case 14:
                PassportActivity passportActivity4 = (PassportActivity) this.f613b;
                Exception exc2 = (Exception) this.f614c;
                int i24 = PassportActivity.f120q;
                passportActivity4.getClass();
                Toast.makeText(passportActivity4, exc2.getMessage(), 1).show();
                passportActivity4.e();
                return;
            case 15:
                z4 z4Var = (z4) this.f613b;
                String str3 = (String) this.f614c;
                z4Var.getClass();
                try {
                    synchronized (z4Var.g(str3)) {
                        z4Var.f1604c.a(str3);
                        z4Var.d(str3);
                        break;
                    }
                    return;
                } catch (RuntimeException e7) {
                    StringBuilder sbB = a.b0.b("Player compaction failed uid=", str3, ": ");
                    sbB.append(e7.getMessage());
                    z2.d("SGSCQ_SAVE", sbB.toString(), e7);
                    return;
                }
            case 16:
                Toast.makeText((Context) this.f613b, (String) this.f614c, 1).show();
                return;
            case 17:
                SettingsActivity settingsActivity4 = (SettingsActivity) this.f613b;
                Uri uri2 = (Uri) this.f614c;
                int i25 = SettingsActivity.Y;
                settingsActivity4.getClass();
                try {
                    File file = new File(settingsActivity4.getFilesDir(), "hd");
                    file.mkdirs();
                    File file2 = new File(new File(settingsActivity4.getFilesDir(), "hd"), "hd_image.zip");
                    File file3 = new File(file, "hd_image.zip.tmp");
                    InputStream inputStreamOpenInputStream2 = settingsActivity4.getContentResolver().openInputStream(uri2);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file3);
                        try {
                            byte[] bArr3 = new byte[65536];
                            while (true) {
                                int i26 = inputStreamOpenInputStream2.read(bArr3);
                                if (i26 == -1) {
                                    fileOutputStream.close();
                                    inputStreamOpenInputStream2.close();
                                    ZipFile zipFile = new ZipFile(file3);
                                    try {
                                        zipFile.entries();
                                        zipFile.close();
                                        if (file2.exists() && !file2.delete()) {
                                            throw new IOException("无法覆盖旧资源文件");
                                        }
                                        if (!file3.renameTo(file2)) {
                                            throw new IOException("重命名失败");
                                        }
                                        settingsActivity4.runOnUiThread(new d(settingsActivity4, message, 18));
                                        return;
                                    } catch (Throwable th4) {
                                        try {
                                            zipFile.close();
                                            throw th4;
                                        } catch (Throwable th5) {
                                            th4.addSuppressed(th5);
                                            throw th4;
                                        }
                                    }
                                }
                                fileOutputStream.write(bArr3, 0, i26);
                                message = e.getMessage();
                                new File(new File(settingsActivity4.getFilesDir(), "hd"), "hd_image.zip.tmp").delete();
                                settingsActivity4.runOnUiThread(new d(settingsActivity4, message, 18));
                                return;
                            }
                        } catch (Throwable th6) {
                            try {
                                fileOutputStream.close();
                                throw th6;
                            } catch (Throwable th7) {
                                th6.addSuppressed(th7);
                                throw th6;
                            }
                        }
                    } catch (Throwable th8) {
                        if (inputStreamOpenInputStream2 == null) {
                            throw th8;
                        }
                        try {
                            inputStreamOpenInputStream2.close();
                            throw th8;
                        } catch (Throwable th9) {
                            th8.addSuppressed(th9);
                            throw th8;
                        }
                    }
                } catch (Exception e8) {
                    message = e8.getMessage();
                    new File(new File(settingsActivity4.getFilesDir(), "hd"), "hd_image.zip.tmp").delete();
                }
                break;
            case 18:
                SettingsActivity settingsActivity5 = (SettingsActivity) this.f613b;
                String str4 = (String) this.f614c;
                int i27 = SettingsActivity.Y;
                settingsActivity5.getClass();
                if (str4 == null) {
                    Toast.makeText(settingsActivity5, "高清图资源已导入", 0).show();
                    settingsActivity5.N();
                    return;
                }
                Toast.makeText(settingsActivity5, "导入失败: ".concat(str4), 1).show();
                TextView textView = settingsActivity5.S;
                if (textView != null) {
                    textView.setText("导入失败: ".concat(str4));
                    settingsActivity5.S.setTextColor(p5.D);
                    return;
                }
                return;
            case 19:
                SettingsActivity settingsActivity6 = (SettingsActivity) this.f613b;
                c.i iVar = (c.i) this.f614c;
                int i28 = SettingsActivity.Y;
                settingsActivity6.getClass();
                q.g gVar = new q.g();
                k kVar = new k(16);
                if (iVar != null && iVar.f47b) {
                    long jC = kVar.c();
                    ArrayList arrayList2 = new ArrayList();
                    try {
                        String[] strArr2 = com.sgscq.vpn.cloud.m0.w;
                        int i29 = 0;
                        while (i4 < i3) {
                            String str5 = strArr2[i4];
                            InetAddress[] inetAddressArrB = gVar.b(str5, iVar);
                            if (inetAddressArrB != null && inetAddressArrB.length != 0) {
                                ArrayList arrayList3 = new ArrayList();
                                int length = inetAddressArrB.length;
                                while (i29 < length) {
                                    arrayList3.add(inetAddressArrB[i29].getHostAddress());
                                    i29++;
                                    iVar = iVar;
                                }
                                arrayList2.add(str5 + "=" + com.sgscq.vpn.cloud.m0.D1(arrayList3));
                                i4++;
                                i3 = 2;
                                i29 = 0;
                                iVar = iVar;
                            }
                            g0Var = new com.sgscq.vpn.cloud.g0("测试失败：" + str5 + " 没有可用公网地址", false);
                            settingsActivity6.runOnUiThread(new d(settingsActivity6, g0Var, 22));
                            return;
                        }
                        g0Var = new com.sgscq.vpn.cloud.g0("解析成功 · " + com.sgscq.vpn.cloud.m0.D1(arrayList2) + " · " + Math.max(0L, kVar.c() - jC) + "ms", true);
                    } catch (Exception e9) {
                        String message2 = e9.getMessage();
                        if (message2 == null || message2.trim().isEmpty()) {
                            message2 = e9.getClass().getSimpleName();
                        }
                        strConcat = "测试失败：".concat(message2);
                        g0Var = new com.sgscq.vpn.cloud.g0(strConcat, false);
                    }
                    settingsActivity6.runOnUiThread(new d(settingsActivity6, g0Var, 22));
                    return;
                }
                strConcat = "测试失败：APP DNS 未启用";
                g0Var = new com.sgscq.vpn.cloud.g0(strConcat, false);
                settingsActivity6.runOnUiThread(new d(settingsActivity6, g0Var, 22));
                return;
            case 20:
                SettingsActivity settingsActivity7 = (SettingsActivity) this.f613b;
                com.sgscq.vpn.config.f fVar2 = (com.sgscq.vpn.config.f) this.f614c;
                int i30 = SettingsActivity.Y;
                settingsActivity7.getClass();
                k kVar2 = new k(19);
                k kVar3 = p5.V;
                if (fVar2 != null && fVar2.f569a) {
                    try {
                        nVar2 = (q.n) p5.P(new a(fVar2, kVar2, i2), kVar3);
                        break;
                    } catch (Exception e10) {
                        String message3 = e10.getMessage();
                        if (message3 == null || message3.trim().isEmpty()) {
                            message3 = e10.getClass().getSimpleName();
                        }
                        nVar = new q.n("连接失败：".concat(message3), false);
                        nVar2 = nVar;
                    }
                    settingsActivity7.runOnUiThread(new d(settingsActivity7, nVar2, 21));
                    return;
                }
                nVar = new q.n("连接失败：代理未启用", false);
                nVar2 = nVar;
                settingsActivity7.runOnUiThread(new d(settingsActivity7, nVar2, 21));
                return;
            case 21:
                SettingsActivity settingsActivity8 = (SettingsActivity) this.f613b;
                q.n nVar3 = (q.n) this.f614c;
                int i31 = SettingsActivity.Y;
                if (settingsActivity8.isFinishing() || settingsActivity8.isDestroyed()) {
                    return;
                }
                settingsActivity8.L.setEnabled(true);
                settingsActivity8.L(nVar3.f1928b, nVar3.f1927a ? p5.B : p5.D);
                return;
            case 22:
                SettingsActivity settingsActivity9 = (SettingsActivity) this.f613b;
                com.sgscq.vpn.cloud.g0 g0Var2 = (com.sgscq.vpn.cloud.g0) this.f614c;
                int i32 = SettingsActivity.Y;
                if (settingsActivity9.isFinishing() || settingsActivity9.isDestroyed()) {
                    return;
                }
                settingsActivity9.Q.setEnabled(true);
                settingsActivity9.J((String) g0Var2.f340b, g0Var2.f339a ? p5.B : p5.D);
                return;
            case 23:
                SettingsActivity settingsActivity10 = (SettingsActivity) this.f613b;
                List list2 = (List) this.f614c;
                int i33 = SettingsActivity.Y;
                settingsActivity10.m();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM-dd HH:mm", Locale.CHINA);
                String[] strArr3 = new String[list2.size()];
                for (int i34 = 0; i34 < list2.size(); i34++) {
                    com.sgscq.vpn.cloud.w wVar = (com.sgscq.vpn.cloud.w) list2.get(i34);
                    StringBuilder sb2 = new StringBuilder();
                    String strConcat2 = "";
                    sb2.append(wVar.f513c ? "当前 · " : "");
                    sb2.append("r");
                    sb2.append(wVar.f511a);
                    sb2.append(" · ");
                    sb2.append(simpleDateFormat.format(new Date(wVar.f512b)));
                    sb2.append(" · 等级");
                    sb2.append(wVar.f514d);
                    sb2.append(" · 战力");
                    sb2.append(Math.round(wVar.f515e));
                    String str6 = wVar.f516f;
                    if (!str6.isEmpty()) {
                        strConcat2 = " · ".concat(str6);
                    }
                    sb2.append(strConcat2);
                    strArr3[i34] = sb2.toString();
                }
                new AlertDialog.Builder(settingsActivity10).setTitle("选择要下载的云端节点（仅恢复本地）").setSingleChoiceItems(strArr3, 0, (DialogInterface.OnClickListener) null).setPositiveButton("下载", new u0(settingsActivity10, list2, i3)).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                return;
            case 24:
                a();
                return;
            case 25:
                g3 g3Var = (g3) this.f613b;
                String str7 = (String) this.f614c;
                Object obj = x6.f1537a;
                g3Var.a(str7);
                return;
            case 26:
                c7 c7Var = (c7) this.f613b;
                b7 b7Var = (b7) this.f614c;
                AtomicBoolean atomicBoolean = c7Var.f260c;
                String[] strArr4 = c7.f252g;
                String str8 = "";
                long jAbs = Long.MAX_VALUE;
                int i35 = 0;
                while (true) {
                    if (i35 < 4) {
                        String str9 = strArr4[i35];
                        try {
                            long jLongValue = ((Long) p5.O(new a(c7Var, str9, 6))).longValue();
                            jAbs = Math.abs(System.currentTimeMillis() - jLongValue);
                            try {
                                System.currentTimeMillis();
                                z = jLongValue > 0;
                                j2 = jLongValue;
                                str = str9;
                            } catch (Exception unused4) {
                                str8 = str9;
                            }
                        } catch (Exception unused5) {
                        }
                    } else {
                        j2 = 0;
                        str = str8;
                        z = false;
                    }
                    i35++;
                }
                try {
                    c7Var.a(z, jAbs, str, j2);
                    if (b7Var != null) {
                        b7Var.b(z);
                        break;
                    }
                    return;
                } finally {
                    atomicBoolean.set(false);
                }
            case 27:
                Toast.makeText((Context) ((a7) this.f613b).f190a, (String) this.f614c, 1).show();
                return;
            case 28:
                p7 p7Var = (p7) this.f613b;
                List list3 = (List) this.f614c;
                HashMap map = p7.t;
                p7Var.e();
                synchronized (p7Var.f1293a) {
                    p7Var.y(list3);
                    p7Var.p(p7Var.r ? p7Var.f1303k : Collections.emptyList());
                    break;
                }
                return;
            default:
                t tVar = (t) this.f613b;
                String str10 = (String) this.f614c;
                tVar.getClass();
                try {
                    ((com.sgscq.vpn.cloud.z) tVar.f1371a).h(Collections.singletonList(str10));
                    return;
                } catch (Exception unused6) {
                    return;
                }
        }
    }
}
