package com.sgscq.vpn;

import android.media.MediaScannerConnection;
import android.os.Environment;
import android.util.Log;
import android.widget.Toast;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f3 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f685a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f686b;

    public /* synthetic */ f3(MainActivity mainActivity, int i2) {
        this.f685a = i2;
        this.f686b = mainActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2;
        int i3;
        final int i4 = 0;
        int i5 = 6;
        int i6 = 5;
        int i7 = 9;
        final int i8 = 1;
        switch (this.f685a) {
            case 0:
                int i9 = MainActivity.F;
                this.f686b.j();
                return;
            case 1:
                MainActivity mainActivity = this.f686b;
                int i10 = MainActivity.F;
                mainActivity.getClass();
                try {
                    g2.e(mainActivity).j();
                    p.l lVarC = p.l.c(mainActivity);
                    p.d.b(mainActivity);
                    f3 f3Var = new f3(mainActivity, i7);
                    if (lVarC.f1887j.compareAndSet(false, true)) {
                        lVarC.n(f3Var);
                    }
                    w1 w1VarA1 = w1.a1(mainActivity);
                    w1VarA1.i0();
                    w1VarA1.v(g2.b());
                    break;
                } catch (Throwable th) {
                    Log.w("SGSCQ_UI", "[StartupWarmUp] 限时/游戏数据初始化失败: " + th);
                }
                mainActivity.s = true;
                mainActivity.runOnUiThread(new f3(mainActivity, 10));
                return;
            case 2:
                MainActivity mainActivity2 = this.f686b;
                mainActivity2.v = true;
                mainActivity2.a(SgscqVpnService.f155m);
                return;
            case 3:
                int i11 = MainActivity.F;
                MainActivity mainActivity3 = this.f686b;
                mainActivity3.getClass();
                mainActivity3.runOnUiThread(new f3(mainActivity3, i6));
                return;
            case 4:
                int i12 = MainActivity.F;
                MainActivity mainActivity4 = this.f686b;
                mainActivity4.getClass();
                mainActivity4.runOnUiThread(new f3(mainActivity4, i5));
                return;
            case 5:
                int i13 = MainActivity.F;
                this.f686b.j();
                return;
            case 6:
                int i14 = MainActivity.F;
                this.f686b.j();
                return;
            case 7:
                MainActivity mainActivity5 = this.f686b;
                int i15 = MainActivity.F;
                mainActivity5.getClass();
                try {
                    try {
                        final u6 u6VarJ = SgscqVpnService.j();
                        ArrayList arrayList = new ArrayList();
                        synchronized (u6VarJ.f1437e) {
                            i2 = u6VarJ.f1433a.f1414a;
                            break;
                        }
                        if (i2 > 0) {
                            arrayList.add(new o("analysis_log.txt", new p() { // from class: com.sgscq.vpn.l3
                                @Override // com.sgscq.vpn.p
                                public final void a(n nVar) {
                                    switch (i4) {
                                        case 0:
                                            u6 u6Var = u6VarJ;
                                            synchronized (u6Var.f1437e) {
                                                u6Var.f1433a.b(nVar);
                                                break;
                                            }
                                            return;
                                        default:
                                            u6 u6Var2 = u6VarJ;
                                            synchronized (u6Var2.f1437e) {
                                                u6Var2.f1434b.b(nVar);
                                                break;
                                            }
                                            return;
                                    }
                                }
                            }));
                        }
                        synchronized (u6VarJ.f1437e) {
                            i3 = u6VarJ.f1434b.f1414a;
                            break;
                        }
                        if (i3 > 0) {
                            arrayList.add(new o("sgscq_capture.pcap", new p() { // from class: com.sgscq.vpn.l3
                                @Override // com.sgscq.vpn.p
                                public final void a(n nVar) {
                                    switch (i8) {
                                        case 0:
                                            u6 u6Var = u6VarJ;
                                            synchronized (u6Var.f1437e) {
                                                u6Var.f1433a.b(nVar);
                                                break;
                                            }
                                            return;
                                        default:
                                            u6 u6Var2 = u6VarJ;
                                            synchronized (u6Var2.f1437e) {
                                                u6Var2.f1434b.b(nVar);
                                                break;
                                            }
                                            return;
                                    }
                                }
                            }));
                        }
                        arrayList.add(new o("local_save.json", new e3(mainActivity5, 3)));
                        boolean zP = n0.p(mainActivity5);
                        int i16 = 4;
                        if (zP) {
                            arrayList.add(new o("crash_log.txt", new e3(mainActivity5, i16)));
                        }
                        String str = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(new Date());
                        File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
                        if (!externalStoragePublicDirectory.isDirectory() && !externalStoragePublicDirectory.mkdirs()) {
                            throw new IOException("无法创建下载目录: " + externalStoragePublicDirectory);
                        }
                        File file = new File(externalStoragePublicDirectory, "sgscq_data_" + str + ".dat");
                        q qVarC1 = p5.C1(file, mainActivity5.d(), arrayList);
                        MediaScannerConnection.scanFile(mainActivity5, new String[]{file.getAbsolutePath()}, null, null);
                        String str2 = String.format(Locale.getDefault(), "日志: %.1fKB, PCAP: %.1fKB, 存档: %.1fKB, 崩溃: %.1fKB, ZIP: %.1fKB, DAT: %.1fKB", Double.valueOf(((double) qVarC1.a("analysis_log.txt")) / 1024.0d), Double.valueOf(((double) qVarC1.a("sgscq_capture.pcap")) / 1024.0d), Double.valueOf(((double) qVarC1.a("local_save.json")) / 1024.0d), Double.valueOf(((double) qVarC1.a("crash_log.txt")) / 1024.0d), Double.valueOf(((double) qVarC1.f1311b) / 1024.0d), Double.valueOf(((double) qVarC1.f1312c) / 1024.0d));
                        if (zP) {
                            n0.h(mainActivity5);
                        }
                        mainActivity5.runOnUiThread(new c(mainActivity5, file, str2, i6));
                    } catch (Throwable th2) {
                        mainActivity5.f118p.set(false);
                        throw th2;
                    }
                } catch (Exception e2) {
                    mainActivity5.runOnUiThread(new d(mainActivity5, e2.getMessage() == null ? e2.getClass().getSimpleName() : e2.getMessage(), 9));
                }
                mainActivity5.f118p.set(false);
                return;
            case 8:
                int i17 = MainActivity.F;
                MainActivity mainActivity6 = this.f686b;
                mainActivity6.getClass();
                Toast.makeText(mainActivity6, "当前网络不可用，已使用离线战斗授权。", 1).show();
                return;
            case 9:
                int i18 = MainActivity.F;
                MainActivity mainActivity7 = this.f686b;
                mainActivity7.getClass();
                mainActivity7.runOnUiThread(new f3(mainActivity7, 13));
                return;
            case 10:
                int i19 = MainActivity.F;
                this.f686b.j();
                return;
            case 11:
                int i20 = MainActivity.F;
                MainActivity mainActivity8 = this.f686b;
                mainActivity8.getClass();
                try {
                    mainActivity8.h();
                    mainActivity8.k();
                    return;
                } catch (Exception e3) {
                    mainActivity8.e("赞助名单加载失败: " + e3.getMessage());
                    List list = mainActivity8.f111i;
                    if (list == null || list.isEmpty()) {
                        mainActivity8.f111i = new ArrayList();
                        return;
                    }
                    return;
                }
            case 12:
                int i21 = MainActivity.F;
                this.f686b.i();
                return;
            case 13:
                int i22 = MainActivity.F;
                this.f686b.j();
                return;
            case 14:
                int i23 = MainActivity.F;
                this.f686b.p();
                return;
            case 15:
                int i24 = MainActivity.F;
                MainActivity mainActivity9 = this.f686b;
                mainActivity9.getClass();
                mainActivity9.runOnUiThread(new f3(mainActivity9, 16));
                return;
            default:
                int i25 = MainActivity.F;
                this.f686b.j();
                return;
        }
    }
}
