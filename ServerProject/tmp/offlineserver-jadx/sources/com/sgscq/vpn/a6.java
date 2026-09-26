package com.sgscq.vpn;

import android.content.ContextWrapper;
import android.widget.TextView;
import java.io.File;
import java.io.FileInputStream;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a6 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f186a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ContextWrapper f188c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f189d;

    public /* synthetic */ a6(SettingsActivity settingsActivity, File file, long j2) {
        this.f188c = settingsActivity;
        this.f189d = file;
        this.f187b = j2;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0242  */
    /* JADX WARN: Code duplicated, block: B:105:0x024d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:118:0x0269  */
    /* JADX WARN: Code duplicated, block: B:120:0x026f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:125:0x027e A[Catch: Exception -> 0x02b7, TRY_LEAVE, TryCatch #3 {Exception -> 0x02b7, blocks: (B:122:0x0273, B:124:0x0277, B:125:0x027e, B:115:0x0264, B:110:0x0256, B:111:0x0260), top: B:195:0x0273, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:134:0x02c1 A[Catch: Exception -> 0x02b4, TryCatch #5 {Exception -> 0x02b4, blocks: (B:127:0x028b, B:134:0x02c1, B:139:0x02d3), top: B:199:0x028b }] */
    /* JADX WARN: Code duplicated, block: B:136:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:137:0x02cf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:138:0x02d1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:139:0x02d3 A[Catch: Exception -> 0x02b4, TRY_LEAVE, TryCatch #5 {Exception -> 0x02b4, blocks: (B:127:0x028b, B:134:0x02c1, B:139:0x02d3), top: B:199:0x028b }] */
    /* JADX WARN: Code duplicated, block: B:153:0x02fb A[PHI: r13
      0x02fb: PHI (r13v15 byte[]) = (r13v13 byte[]), (r13v13 byte[]), (r13v16 byte[]), (r13v17 byte[]) binds: [B:138:0x02d1, B:135:0x02ca, B:124:0x0277, B:127:0x028b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:154:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:156:0x0301 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:167:0x0317 A[PHI: r2 r13
      0x0317: PHI (r2v18 boolean) = (r2v12 boolean), (r2v12 boolean), (r2v17 boolean), (r2v19 boolean) binds: [B:155:0x02ff, B:156:0x0301, B:147:0x02f3, B:153:0x02fb] A[DONT_GENERATE, DONT_INLINE]
      0x0317: PHI (r13v14 byte[]) = (r13v13 byte[]), (r13v13 byte[]), (r13v13 byte[]), (r13v15 byte[]) binds: [B:155:0x02ff, B:156:0x0301, B:147:0x02f3, B:153:0x02fb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:183:0x0342  */
    /* JADX WARN: Code duplicated, block: B:209:0x02e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:236:0x0354 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:49:0x00d6 A[Catch: Exception -> 0x00c6, TryCatch #13 {Exception -> 0x00c6, blocks: (B:42:0x00c2, B:49:0x00d6, B:52:0x00e9, B:55:0x0103, B:58:0x010c, B:62:0x0143, B:65:0x0157, B:70:0x01c2, B:68:0x0182, B:69:0x01b1, B:74:0x01d7, B:76:0x01ef, B:78:0x01f5, B:82:0x01fc, B:86:0x0205, B:90:0x020e, B:94:0x0215), top: B:214:0x00c2 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0103 A[Catch: Exception -> 0x00c6, TryCatch #13 {Exception -> 0x00c6, blocks: (B:42:0x00c2, B:49:0x00d6, B:52:0x00e9, B:55:0x0103, B:58:0x010c, B:62:0x0143, B:65:0x0157, B:70:0x01c2, B:68:0x0182, B:69:0x01b1, B:74:0x01d7, B:76:0x01ef, B:78:0x01f5, B:82:0x01fc, B:86:0x0205, B:90:0x020e, B:94:0x0215), top: B:214:0x00c2 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0108 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x010a  */
    /* JADX WARN: Code duplicated, block: B:58:0x010c A[Catch: Exception -> 0x00c6, TryCatch #13 {Exception -> 0x00c6, blocks: (B:42:0x00c2, B:49:0x00d6, B:52:0x00e9, B:55:0x0103, B:58:0x010c, B:62:0x0143, B:65:0x0157, B:70:0x01c2, B:68:0x0182, B:69:0x01b1, B:74:0x01d7, B:76:0x01ef, B:78:0x01f5, B:82:0x01fc, B:86:0x0205, B:90:0x020e, B:94:0x0215), top: B:214:0x00c2 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:74:0x01d7 A[Catch: Exception -> 0x00c6, TryCatch #13 {Exception -> 0x00c6, blocks: (B:42:0x00c2, B:49:0x00d6, B:52:0x00e9, B:55:0x0103, B:58:0x010c, B:62:0x0143, B:65:0x0157, B:70:0x01c2, B:68:0x0182, B:69:0x01b1, B:74:0x01d7, B:76:0x01ef, B:78:0x01f5, B:82:0x01fc, B:86:0x0205, B:90:0x020e, B:94:0x0215), top: B:214:0x00c2 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x01ef A[Catch: Exception -> 0x00c6, TryCatch #13 {Exception -> 0x00c6, blocks: (B:42:0x00c2, B:49:0x00d6, B:52:0x00e9, B:55:0x0103, B:58:0x010c, B:62:0x0143, B:65:0x0157, B:70:0x01c2, B:68:0x0182, B:69:0x01b1, B:74:0x01d7, B:76:0x01ef, B:78:0x01f5, B:82:0x01fc, B:86:0x0205, B:90:0x020e, B:94:0x0215), top: B:214:0x00c2 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:80:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:81:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:84:0x0200  */
    /* JADX WARN: Code duplicated, block: B:85:0x0203  */
    /* JADX WARN: Code duplicated, block: B:88:0x0209  */
    /* JADX WARN: Code duplicated, block: B:89:0x020c  */
    /* JADX WARN: Code duplicated, block: B:92:0x0212  */
    /* JADX WARN: Code duplicated, block: B:93:0x0214  */
    /* JADX WARN: Instruction removed from duplicated block: B:74:0x01d7, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v20 */
    @Override // java.lang.Runnable
    public final void run() {
        long j2;
        FileInputStream fileInputStream;
        byte[] bArr;
        boolean z;
        byte b2;
        int i2;
        int i3;
        int i4;
        int i5;
        int iP;
        String str;
        int i6;
        int i7;
        ?? r6;
        ?? r19;
        ?? r20;
        ?? r4;
        int iP2;
        int i8;
        v6 v6Var;
        byte[] bArr2;
        boolean z2;
        String str2;
        StringBuilder sb;
        String strM;
        int[] iArr;
        boolean z3 = true;
        byte b3 = 0;
        switch (this.f186a) {
            case 0:
                final SettingsActivity settingsActivity = (SettingsActivity) this.f188c;
                File file = (File) this.f189d;
                final long j3 = this.f187b;
                int i9 = SettingsActivity.Y;
                settingsActivity.getClass();
                try {
                    ZipFile zipFile = new ZipFile(file);
                    try {
                        HashSet hashSet = new HashSet();
                        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                        while (enumerationEntries.hasMoreElements()) {
                            ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                            if (!zipEntryNextElement.isDirectory()) {
                                hashSet.add(zipEntryNextElement.getName());
                            }
                        }
                        int size = hashSet.size();
                        HashSet hashSetN = settingsActivity.n();
                        Iterator it = hashSet.iterator();
                        int i10 = 0;
                        while (it.hasNext()) {
                            if (hashSetN.contains((String) it.next())) {
                                i10++;
                            }
                        }
                        iArr = new int[]{size, i10};
                        zipFile.close();
                    } catch (Throwable th) {
                        try {
                            zipFile.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                } catch (Exception unused) {
                    iArr = new int[]{-1, -1};
                }
                final int i11 = iArr[0];
                final int i12 = iArr[1];
                settingsActivity.runOnUiThread(new Runnable() { // from class: com.sgscq.vpn.b6
                    @Override // java.lang.Runnable
                    public final void run() {
                        TextView textView;
                        int i13;
                        SettingsActivity settingsActivity2 = settingsActivity;
                        TextView textView2 = settingsActivity2.S;
                        if (textView2 == null) {
                            return;
                        }
                        int i14 = i11;
                        if (i14 < 0) {
                            textView2.setText("已导入文件损坏，请重新选择");
                            textView = settingsActivity2.S;
                            i13 = p5.D;
                        } else {
                            String str3 = String.format(Locale.ROOT, "%.1f", Double.valueOf((j3 / 1024.0d) / 1024.0d));
                            settingsActivity2.S.setText("已导入 " + i14 + " 张（" + str3 + " MB），其中 " + i12 + " 张可匹配武将立绘");
                            textView = settingsActivity2.S;
                            i13 = p5.B;
                        }
                        textView.setTextColor(i13);
                    }
                });
                return;
            default:
                SgscqVpnService sgscqVpnService = (SgscqVpnService) this.f188c;
                FileInputStream fileInputStream2 = (FileInputStream) this.f189d;
                boolean z4 = SgscqVpnService.f155m;
                sgscqVpnService.getClass();
                byte[] bArr3 = new byte[1500];
                z2.e("SGSCQ_VPN", "mainLoop STARTED");
                long j4 = 0;
                for (long j5 = this.f187b; sgscqVpnService.f163e && j5 == sgscqVpnService.f164f; j5 = j2) {
                    System.currentTimeMillis();
                    try {
                        int i13 = fileInputStream2.read(bArr3);
                        long j6 = j4 + 1;
                        if (i13 > 0) {
                            try {
                                sgscqVpnService.q(i13, bArr3);
                                if (i13 < 20) {
                                    b2 = bArr3[b3];
                                    i2 = (b2 >> 4) & 15;
                                    if (j6 <= 5 && i2 == 4) {
                                        int i14 = (b2 & 15) * 4;
                                        byte b4 = bArr3[i14];
                                        byte b5 = bArr3[i14 + 1];
                                        byte b6 = bArr3[i14 + 2];
                                        byte b7 = bArr3[i14 + 3];
                                        SgscqVpnService.p(12, bArr3);
                                        SgscqVpnService.p(16, bArr3);
                                    }
                                    if (i2 == 6) {
                                        sgscqVpnService.k(i13, bArr3);
                                    } else if (i2 != 4) {
                                        i3 = bArr3[9] & 255;
                                        i4 = (bArr3[b3] & 15) * 4;
                                        i5 = (bArr3[i4 + 1] & 255) | ((bArr3[i4] & 255) << 8);
                                        int i15 = (bArr3[i4 + 3] & 255) | ((bArr3[i4 + 2] & 255) << 8);
                                        iP = SgscqVpnService.p(12, bArr3);
                                        int iP3 = SgscqVpnService.p(16, bArr3);
                                        if (i3 == 17 || i15 != 53) {
                                            if (i3 == 6) {
                                                str = iP + ":" + i5;
                                                i6 = i4 + 13;
                                                if (i6 < i13) {
                                                    i7 = bArr3[i6] & 255;
                                                } else {
                                                    i7 = b3;
                                                }
                                                if ((i7 & 2) != 0) {
                                                    r6 = z3;
                                                } else {
                                                    r6 = b3;
                                                }
                                                if ((i7 & 16) != 0) {
                                                    r19 = z3;
                                                } else {
                                                    r19 = b3;
                                                }
                                                if ((i7 & 4) != 0) {
                                                    r20 = z3;
                                                } else {
                                                    r20 = b3;
                                                }
                                                if ((i7 & 1) != 0) {
                                                    r4 = z3;
                                                } else {
                                                    r4 = b3;
                                                }
                                                iP2 = SgscqVpnService.p(i4 + 4, bArr3);
                                                z = z3;
                                                try {
                                                    int iP4 = SgscqVpnService.p(i4 + 8, bArr3);
                                                    try {
                                                        fileInputStream = fileInputStream2;
                                                        try {
                                                            int i16 = ((bArr3[i4 + 14] & 255) << 8) | (bArr3[i4 + 15] & 255);
                                                            int i17 = (((bArr3[i4 + 12] >> 4) & 15) * 4) + i4;
                                                            i8 = i13 - i17;
                                                            if (i8 < 0) {
                                                                i8 = 0;
                                                            }
                                                            v6Var = (v6) sgscqVpnService.f170l.get(str);
                                                            if (r19 != 0 || v6Var == null) {
                                                                bArr2 = bArr3;
                                                                j2 = j5;
                                                            } else {
                                                                bArr2 = bArr3;
                                                                try {
                                                                    synchronized (v6Var.f1486k) {
                                                                        j2 = j5;
                                                                        try {
                                                                            v6Var.f1487l.b(iP4, i16);
                                                                            v6Var.f1486k.notifyAll();
                                                                        } catch (Throwable th3) {
                                                                            throw th3;
                                                                        }
                                                                    }
                                                                } catch (Exception e2) {
                                                                    e = e2;
                                                                    j2 = j5;
                                                                    bArr = bArr2;
                                                                    z3 = true;
                                                                    b3 = 0;
                                                                    j4 = j6;
                                                                    if (!sgscqVpnService.f163e) {
                                                                    }
                                                                    bArr3 = bArr;
                                                                    fileInputStream2 = fileInputStream;
                                                                }
                                                            }
                                                            if (r6 != 0 || r19 != 0) {
                                                                bArr = bArr2;
                                                                if (r20 != 0) {
                                                                    v6Var = (v6) sgscqVpnService.f170l.remove(str);
                                                                    if (v6Var != null) {
                                                                        z2 = true;
                                                                        try {
                                                                            v6Var.f1488m = z2;
                                                                            synchronized (v6Var.f1486k) {
                                                                                try {
                                                                                    v6Var.f1486k.notifyAll();
                                                                                } catch (Throwable th4) {
                                                                                    throw th4;
                                                                                }
                                                                                break;
                                                                            }
                                                                            v6Var.f1485j.offer(new byte[0]);
                                                                            z3 = z2;
                                                                        } catch (Exception e3) {
                                                                            e = e3;
                                                                            z3 = z2;
                                                                            b3 = 0;
                                                                            j4 = j6;
                                                                            if (!sgscqVpnService.f163e) {
                                                                            }
                                                                        }
                                                                    }
                                                                    b3 = 0;
                                                                } else if (r4 != 0) {
                                                                    if (v6Var != null) {
                                                                        v6Var.g(v6Var.f1483h, iP2 + 1);
                                                                        z2 = true;
                                                                        v6Var.f1483h++;
                                                                        v6Var.f1488m = z2;
                                                                        synchronized (v6Var.f1486k) {
                                                                            v6Var.f1486k.notifyAll();
                                                                            v6Var.f1485j.offer(new byte[0]);
                                                                            z3 = z2;
                                                                        }
                                                                    }
                                                                    b3 = 0;
                                                                } else {
                                                                    z3 = true;
                                                                    if (i8 > 0 || v6Var == null) {
                                                                        b3 = 0;
                                                                    } else {
                                                                        try {
                                                                            byte[] bArr4 = new byte[i8];
                                                                            b3 = 0;
                                                                            try {
                                                                                System.arraycopy(bArr, i17, bArr4, 0, i8);
                                                                                if (!v6Var.f1488m) {
                                                                                    v6Var.f1485j.offer(bArr4);
                                                                                }
                                                                                break;
                                                                            } catch (Exception e4) {
                                                                                e = e4;
                                                                                j4 = j6;
                                                                                if (!sgscqVpnService.f163e) {
                                                                                }
                                                                            }
                                                                        } catch (Exception e5) {
                                                                            e = e5;
                                                                            b3 = 0;
                                                                            j4 = j6;
                                                                            if (!sgscqVpnService.f163e) {
                                                                            }
                                                                            bArr3 = bArr;
                                                                            fileInputStream2 = fileInputStream;
                                                                        }
                                                                    }
                                                                }
                                                            } else if (v6Var == null) {
                                                                int i18 = 6;
                                                                bArr = bArr2;
                                                                v6 v6Var2 = new v6(sgscqVpnService, str, iP, i5, iP3, i15, iP2);
                                                                sgscqVpnService.f170l.put(str, v6Var2);
                                                                v6Var2.e();
                                                                new Thread(new b(v6Var2, i18), "TcpProxy-" + v6Var2.f1476a).start();
                                                                break;
                                                            } else {
                                                                try {
                                                                    if (v6Var.f1488m) {
                                                                        int i19 = 6;
                                                                        bArr = bArr2;
                                                                        try {
                                                                            v6 v6Var3 = new v6(sgscqVpnService, str, iP, i5, iP3, i15, iP2);
                                                                            sgscqVpnService.f170l.put(str, v6Var3);
                                                                            v6Var3.e();
                                                                            new Thread(new b(v6Var3, i19), "TcpProxy-" + v6Var3.f1476a).start();
                                                                            break;
                                                                        } catch (Exception e6) {
                                                                            e = e6;
                                                                            z3 = true;
                                                                            b3 = 0;
                                                                            j4 = j6;
                                                                            if (!sgscqVpnService.f163e) {
                                                                            }
                                                                        }
                                                                    } else {
                                                                        v6Var.e();
                                                                        bArr = bArr2;
                                                                    }
                                                                } catch (Exception e7) {
                                                                    e = e7;
                                                                    bArr = bArr2;
                                                                    z3 = true;
                                                                    b3 = 0;
                                                                    j4 = j6;
                                                                    if (!sgscqVpnService.f163e) {
                                                                    }
                                                                    bArr3 = bArr;
                                                                    fileInputStream2 = fileInputStream;
                                                                }
                                                            }
                                                            z3 = true;
                                                            b3 = 0;
                                                        } catch (Exception e8) {
                                                            e = e8;
                                                            j2 = j5;
                                                            bArr = bArr3;
                                                        }
                                                    } catch (Exception e9) {
                                                        e = e9;
                                                        j2 = j5;
                                                        fileInputStream = fileInputStream2;
                                                        bArr = bArr3;
                                                        z3 = z;
                                                    }
                                                } catch (Exception e10) {
                                                    e = e10;
                                                    j2 = j5;
                                                    fileInputStream = fileInputStream2;
                                                    bArr = bArr3;
                                                    z3 = z;
                                                    j4 = j6;
                                                    if (!sgscqVpnService.f163e && j2 == sgscqVpnService.f164f) {
                                                        c.a.D(e, new StringBuilder("mainLoop: "), "SGSCQ_VPN");
                                                    }
                                                    bArr3 = bArr;
                                                    fileInputStream2 = fileInputStream;
                                                }
                                                break;
                                            }
                                            j4 = j6;
                                        } else {
                                            int i20 = i4 + 8;
                                            String strH = SgscqVpnService.h(bArr3, i20, i13);
                                            int i21 = SgscqVpnService.i(bArr3, i20, i13);
                                            if (!sgscqVpnService.f167i.c(strH)) {
                                                str2 = "SGSCQ_VPN";
                                                sb = new StringBuilder();
                                                sb.append("DNS [");
                                                sb.append(strH);
                                                strM = "] → pass-through";
                                            } else if (i21 == z3) {
                                                sgscqVpnService.r(SgscqVpnService.d(iP, i5, SgscqVpnService.n(bArr3, i20, i13)));
                                                str2 = "SGSCQ_VPN";
                                                sb = new StringBuilder();
                                                sb.append("DNS [");
                                                sb.append(strH);
                                                sb.append("] A → ");
                                                strM = SgscqVpnService.m(167772260);
                                            } else if (i21 == 28) {
                                                int i22 = i13 - i20;
                                                byte[] bArr5 = new byte[i22];
                                                System.arraycopy(bArr3, i20, bArr5, b3, i22);
                                                bArr5[2] = -127;
                                                bArr5[3] = -128;
                                                bArr5[6] = b3;
                                                bArr5[7] = b3;
                                                sgscqVpnService.r(SgscqVpnService.d(iP, i5, bArr5));
                                                str2 = "SGSCQ_VPN";
                                                sb = new StringBuilder();
                                                sb.append("DNS [");
                                                sb.append(strH);
                                                strM = "] AAAA → empty";
                                            }
                                            sb.append(strM);
                                            z2.e(str2, sb.toString());
                                        }
                                    }
                                }
                                j2 = j5;
                                fileInputStream = fileInputStream2;
                                bArr = bArr3;
                                j4 = j6;
                            } catch (Exception e11) {
                                e = e11;
                                z = z3;
                                j2 = j5;
                                fileInputStream = fileInputStream2;
                                bArr = bArr3;
                                z3 = z;
                                j4 = j6;
                                if (!sgscqVpnService.f163e) {
                                }
                                bArr3 = bArr;
                                fileInputStream2 = fileInputStream;
                            }
                        } else {
                            if (i13 < 20) {
                                b2 = bArr3[b3];
                                i2 = (b2 >> 4) & 15;
                                if (j6 <= 5) {
                                    int i110 = (b2 & 15) * 4;
                                    byte b8 = bArr3[i110];
                                    byte b9 = bArr3[i110 + 1];
                                    byte b10 = bArr3[i110 + 2];
                                    byte b11 = bArr3[i110 + 3];
                                    SgscqVpnService.p(12, bArr3);
                                    SgscqVpnService.p(16, bArr3);
                                }
                                if (i2 == 6) {
                                    sgscqVpnService.k(i13, bArr3);
                                } else if (i2 != 4) {
                                    i3 = bArr3[9] & 255;
                                    i4 = (bArr3[b3] & 15) * 4;
                                    i5 = (bArr3[i4 + 1] & 255) | ((bArr3[i4] & 255) << 8);
                                    int i111 = (bArr3[i4 + 3] & 255) | ((bArr3[i4 + 2] & 255) << 8);
                                    iP = SgscqVpnService.p(12, bArr3);
                                    int iP5 = SgscqVpnService.p(16, bArr3);
                                    if (i3 == 17) {
                                        if (i3 == 6) {
                                            str = iP + ":" + i5;
                                            i6 = i4 + 13;
                                            if (i6 < i13) {
                                                i7 = bArr3[i6] & 255;
                                            } else {
                                                i7 = b3;
                                            }
                                            if ((i7 & 2) != 0) {
                                                r6 = z3;
                                            } else {
                                                r6 = b3;
                                            }
                                            if ((i7 & 16) != 0) {
                                                r19 = z3;
                                            } else {
                                                r19 = b3;
                                            }
                                            if ((i7 & 4) != 0) {
                                                r20 = z3;
                                            } else {
                                                r20 = b3;
                                            }
                                            if ((i7 & 1) != 0) {
                                                r4 = z3;
                                            } else {
                                                r4 = b3;
                                            }
                                            iP2 = SgscqVpnService.p(i4 + 4, bArr3);
                                            z = z3;
                                            int iP6 = SgscqVpnService.p(i4 + 8, bArr3);
                                            fileInputStream = fileInputStream2;
                                            int i112 = ((bArr3[i4 + 14] & 255) << 8) | (bArr3[i4 + 15] & 255);
                                            int i113 = (((bArr3[i4 + 12] >> 4) & 15) * 4) + i4;
                                            i8 = i13 - i113;
                                            if (i8 < 0) {
                                                i8 = 0;
                                            }
                                            v6Var = (v6) sgscqVpnService.f170l.get(str);
                                            if (r19 != 0) {
                                                bArr2 = bArr3;
                                                j2 = j5;
                                                if (r6 != 0) {
                                                    bArr = bArr2;
                                                    if (r20 != 0) {
                                                        v6Var = (v6) sgscqVpnService.f170l.remove(str);
                                                        if (v6Var != null) {
                                                            z2 = true;
                                                            v6Var.f1488m = z2;
                                                            synchronized (v6Var.f1486k) {
                                                                v6Var.f1486k.notifyAll();
                                                                v6Var.f1485j.offer(new byte[0]);
                                                                z3 = z2;
                                                            }
                                                        } else {
                                                            z3 = true;
                                                        }
                                                        b3 = 0;
                                                    } else if (r4 != 0) {
                                                        if (v6Var != null) {
                                                            v6Var.g(v6Var.f1483h, iP2 + 1);
                                                            z2 = true;
                                                            v6Var.f1483h++;
                                                            v6Var.f1488m = z2;
                                                            synchronized (v6Var.f1486k) {
                                                                v6Var.f1486k.notifyAll();
                                                                v6Var.f1485j.offer(new byte[0]);
                                                                z3 = z2;
                                                            }
                                                        } else {
                                                            z3 = true;
                                                        }
                                                        b3 = 0;
                                                    } else {
                                                        z3 = true;
                                                        if (i8 > 0) {
                                                            b3 = 0;
                                                        } else {
                                                            b3 = 0;
                                                        }
                                                    }
                                                } else {
                                                    bArr = bArr2;
                                                    if (r20 != 0) {
                                                        v6Var = (v6) sgscqVpnService.f170l.remove(str);
                                                        if (v6Var != null) {
                                                            z2 = true;
                                                            v6Var.f1488m = z2;
                                                            synchronized (v6Var.f1486k) {
                                                                v6Var.f1486k.notifyAll();
                                                                v6Var.f1485j.offer(new byte[0]);
                                                                z3 = z2;
                                                            }
                                                        } else {
                                                            z3 = true;
                                                        }
                                                        b3 = 0;
                                                    } else if (r4 != 0) {
                                                        if (v6Var != null) {
                                                            v6Var.g(v6Var.f1483h, iP2 + 1);
                                                            z2 = true;
                                                            v6Var.f1483h++;
                                                            v6Var.f1488m = z2;
                                                            synchronized (v6Var.f1486k) {
                                                                v6Var.f1486k.notifyAll();
                                                                v6Var.f1485j.offer(new byte[0]);
                                                                z3 = z2;
                                                            }
                                                        } else {
                                                            z3 = true;
                                                        }
                                                        b3 = 0;
                                                    } else {
                                                        z3 = true;
                                                        if (i8 > 0) {
                                                            b3 = 0;
                                                        } else {
                                                            b3 = 0;
                                                        }
                                                    }
                                                }
                                            } else {
                                                bArr2 = bArr3;
                                                j2 = j5;
                                                if (r6 != 0) {
                                                    bArr = bArr2;
                                                    if (r20 != 0) {
                                                        v6Var = (v6) sgscqVpnService.f170l.remove(str);
                                                        if (v6Var != null) {
                                                            z2 = true;
                                                            v6Var.f1488m = z2;
                                                            synchronized (v6Var.f1486k) {
                                                                v6Var.f1486k.notifyAll();
                                                                v6Var.f1485j.offer(new byte[0]);
                                                                z3 = z2;
                                                            }
                                                        } else {
                                                            z3 = true;
                                                        }
                                                        b3 = 0;
                                                    } else if (r4 != 0) {
                                                        if (v6Var != null) {
                                                            v6Var.g(v6Var.f1483h, iP2 + 1);
                                                            z2 = true;
                                                            v6Var.f1483h++;
                                                            v6Var.f1488m = z2;
                                                            synchronized (v6Var.f1486k) {
                                                                v6Var.f1486k.notifyAll();
                                                                v6Var.f1485j.offer(new byte[0]);
                                                                z3 = z2;
                                                            }
                                                        } else {
                                                            z3 = true;
                                                        }
                                                        b3 = 0;
                                                    } else {
                                                        z3 = true;
                                                        if (i8 > 0) {
                                                            b3 = 0;
                                                        } else {
                                                            b3 = 0;
                                                        }
                                                    }
                                                } else {
                                                    bArr = bArr2;
                                                    if (r20 != 0) {
                                                        v6Var = (v6) sgscqVpnService.f170l.remove(str);
                                                        if (v6Var != null) {
                                                            z2 = true;
                                                            v6Var.f1488m = z2;
                                                            synchronized (v6Var.f1486k) {
                                                                v6Var.f1486k.notifyAll();
                                                                v6Var.f1485j.offer(new byte[0]);
                                                                z3 = z2;
                                                            }
                                                        } else {
                                                            z3 = true;
                                                        }
                                                        b3 = 0;
                                                    } else if (r4 != 0) {
                                                        if (v6Var != null) {
                                                            v6Var.g(v6Var.f1483h, iP2 + 1);
                                                            z2 = true;
                                                            v6Var.f1483h++;
                                                            v6Var.f1488m = z2;
                                                            synchronized (v6Var.f1486k) {
                                                                v6Var.f1486k.notifyAll();
                                                                v6Var.f1485j.offer(new byte[0]);
                                                                z3 = z2;
                                                            }
                                                        } else {
                                                            z3 = true;
                                                        }
                                                        b3 = 0;
                                                    } else {
                                                        z3 = true;
                                                        if (i8 > 0) {
                                                            b3 = 0;
                                                        } else {
                                                            b3 = 0;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        j4 = j6;
                                    } else {
                                        if (i3 == 6) {
                                            str = iP + ":" + i5;
                                            i6 = i4 + 13;
                                            if (i6 < i13) {
                                                i7 = bArr3[i6] & 255;
                                            } else {
                                                i7 = b3;
                                            }
                                            if ((i7 & 2) != 0) {
                                                r6 = z3;
                                            } else {
                                                r6 = b3;
                                            }
                                            if ((i7 & 16) != 0) {
                                                r19 = z3;
                                            } else {
                                                r19 = b3;
                                            }
                                            if ((i7 & 4) != 0) {
                                                r20 = z3;
                                            } else {
                                                r20 = b3;
                                            }
                                            if ((i7 & 1) != 0) {
                                                r4 = z3;
                                            } else {
                                                r4 = b3;
                                            }
                                            iP2 = SgscqVpnService.p(i4 + 4, bArr3);
                                            z = z3;
                                            int iP7 = SgscqVpnService.p(i4 + 8, bArr3);
                                            fileInputStream = fileInputStream2;
                                            int i114 = ((bArr3[i4 + 14] & 255) << 8) | (bArr3[i4 + 15] & 255);
                                            int i115 = (((bArr3[i4 + 12] >> 4) & 15) * 4) + i4;
                                            i8 = i13 - i115;
                                            if (i8 < 0) {
                                                i8 = 0;
                                            }
                                            v6Var = (v6) sgscqVpnService.f170l.get(str);
                                            if (r19 != 0) {
                                                bArr2 = bArr3;
                                                j2 = j5;
                                                if (r6 != 0) {
                                                    bArr = bArr2;
                                                    if (r20 != 0) {
                                                        v6Var = (v6) sgscqVpnService.f170l.remove(str);
                                                        if (v6Var != null) {
                                                            z2 = true;
                                                            v6Var.f1488m = z2;
                                                            synchronized (v6Var.f1486k) {
                                                                v6Var.f1486k.notifyAll();
                                                                v6Var.f1485j.offer(new byte[0]);
                                                                z3 = z2;
                                                            }
                                                        } else {
                                                            z3 = true;
                                                        }
                                                        b3 = 0;
                                                    } else if (r4 != 0) {
                                                        if (v6Var != null) {
                                                            v6Var.g(v6Var.f1483h, iP2 + 1);
                                                            z2 = true;
                                                            v6Var.f1483h++;
                                                            v6Var.f1488m = z2;
                                                            synchronized (v6Var.f1486k) {
                                                                v6Var.f1486k.notifyAll();
                                                                v6Var.f1485j.offer(new byte[0]);
                                                                z3 = z2;
                                                            }
                                                        } else {
                                                            z3 = true;
                                                        }
                                                        b3 = 0;
                                                    } else {
                                                        z3 = true;
                                                        if (i8 > 0) {
                                                            b3 = 0;
                                                        } else {
                                                            b3 = 0;
                                                        }
                                                    }
                                                } else {
                                                    bArr = bArr2;
                                                    if (r20 != 0) {
                                                        v6Var = (v6) sgscqVpnService.f170l.remove(str);
                                                        if (v6Var != null) {
                                                            z2 = true;
                                                            v6Var.f1488m = z2;
                                                            synchronized (v6Var.f1486k) {
                                                                v6Var.f1486k.notifyAll();
                                                                v6Var.f1485j.offer(new byte[0]);
                                                                z3 = z2;
                                                            }
                                                        } else {
                                                            z3 = true;
                                                        }
                                                        b3 = 0;
                                                    } else if (r4 != 0) {
                                                        if (v6Var != null) {
                                                            v6Var.g(v6Var.f1483h, iP2 + 1);
                                                            z2 = true;
                                                            v6Var.f1483h++;
                                                            v6Var.f1488m = z2;
                                                            synchronized (v6Var.f1486k) {
                                                                v6Var.f1486k.notifyAll();
                                                                v6Var.f1485j.offer(new byte[0]);
                                                                z3 = z2;
                                                            }
                                                        } else {
                                                            z3 = true;
                                                        }
                                                        b3 = 0;
                                                    } else {
                                                        z3 = true;
                                                        if (i8 > 0) {
                                                            b3 = 0;
                                                        } else {
                                                            b3 = 0;
                                                        }
                                                    }
                                                }
                                            } else {
                                                bArr2 = bArr3;
                                                j2 = j5;
                                                if (r6 != 0) {
                                                    bArr = bArr2;
                                                    if (r20 != 0) {
                                                        v6Var = (v6) sgscqVpnService.f170l.remove(str);
                                                        if (v6Var != null) {
                                                            z2 = true;
                                                            v6Var.f1488m = z2;
                                                            synchronized (v6Var.f1486k) {
                                                                v6Var.f1486k.notifyAll();
                                                                v6Var.f1485j.offer(new byte[0]);
                                                                z3 = z2;
                                                            }
                                                        } else {
                                                            z3 = true;
                                                        }
                                                        b3 = 0;
                                                    } else if (r4 != 0) {
                                                        if (v6Var != null) {
                                                            v6Var.g(v6Var.f1483h, iP2 + 1);
                                                            z2 = true;
                                                            v6Var.f1483h++;
                                                            v6Var.f1488m = z2;
                                                            synchronized (v6Var.f1486k) {
                                                                v6Var.f1486k.notifyAll();
                                                                v6Var.f1485j.offer(new byte[0]);
                                                                z3 = z2;
                                                            }
                                                        } else {
                                                            z3 = true;
                                                        }
                                                        b3 = 0;
                                                    } else {
                                                        z3 = true;
                                                        if (i8 > 0) {
                                                            b3 = 0;
                                                        } else {
                                                            b3 = 0;
                                                        }
                                                    }
                                                } else {
                                                    bArr = bArr2;
                                                    if (r20 != 0) {
                                                        v6Var = (v6) sgscqVpnService.f170l.remove(str);
                                                        if (v6Var != null) {
                                                            z2 = true;
                                                            v6Var.f1488m = z2;
                                                            synchronized (v6Var.f1486k) {
                                                                v6Var.f1486k.notifyAll();
                                                                v6Var.f1485j.offer(new byte[0]);
                                                                z3 = z2;
                                                            }
                                                        } else {
                                                            z3 = true;
                                                        }
                                                        b3 = 0;
                                                    } else if (r4 != 0) {
                                                        if (v6Var != null) {
                                                            v6Var.g(v6Var.f1483h, iP2 + 1);
                                                            z2 = true;
                                                            v6Var.f1483h++;
                                                            v6Var.f1488m = z2;
                                                            synchronized (v6Var.f1486k) {
                                                                v6Var.f1486k.notifyAll();
                                                                v6Var.f1485j.offer(new byte[0]);
                                                                z3 = z2;
                                                            }
                                                        } else {
                                                            z3 = true;
                                                        }
                                                        b3 = 0;
                                                    } else {
                                                        z3 = true;
                                                        if (i8 > 0) {
                                                            b3 = 0;
                                                        } else {
                                                            b3 = 0;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        j4 = j6;
                                    }
                                }
                            }
                            j2 = j5;
                            fileInputStream = fileInputStream2;
                            bArr = bArr3;
                            j4 = j6;
                        }
                    } catch (Exception e12) {
                        e = e12;
                        j2 = j5;
                        fileInputStream = fileInputStream2;
                        bArr = bArr3;
                        z3 = z3;
                    }
                    bArr3 = bArr;
                    fileInputStream2 = fileInputStream;
                }
                z2.e("SGSCQ_VPN", "mainLoop ended");
                return;
        }
    }

    public /* synthetic */ a6(SgscqVpnService sgscqVpnService, long j2, FileInputStream fileInputStream) {
        this.f188c = sgscqVpnService;
        this.f187b = j2;
        this.f189d = fileInputStream;
    }
}
