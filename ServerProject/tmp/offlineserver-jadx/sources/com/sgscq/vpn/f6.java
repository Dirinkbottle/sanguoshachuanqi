package com.sgscq.vpn;

import android.widget.Toast;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f6 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SettingsActivity f695b;

    public /* synthetic */ f6(SettingsActivity settingsActivity, int i2) {
        this.f694a = i2;
        this.f695b = settingsActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayListH;
        int i2 = this.f694a;
        final SettingsActivity settingsActivity = this.f695b;
        final int i3 = 3;
        final int i4 = 1;
        final int i5 = 0;
        switch (i2) {
            case 0:
                int i6 = SettingsActivity.Y;
                settingsActivity.getClass();
                try {
                    final com.sgscq.vpn.cloud.d0 d0VarJ = settingsActivity.f149m.j();
                    settingsActivity.runOnUiThread(new Runnable() { // from class: com.sgscq.vpn.l6
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i7 = i5;
                            com.sgscq.vpn.cloud.d0 d0Var = d0VarJ;
                            SettingsActivity settingsActivity2 = settingsActivity;
                            switch (i7) {
                                case 0:
                                    int i8 = SettingsActivity.Y;
                                    settingsActivity2.z(d0Var);
                                    break;
                                case 1:
                                    int i9 = SettingsActivity.Y;
                                    settingsActivity2.m();
                                    settingsActivity2.z(d0Var);
                                    Toast.makeText(settingsActivity2, "本人云存档已上传并替换云端版本", 1).show();
                                    break;
                                case 2:
                                    int i10 = SettingsActivity.Y;
                                    settingsActivity2.m();
                                    settingsActivity2.z(d0Var);
                                    Toast.makeText(settingsActivity2, "云存档已删除，可新建新的云存档", 1).show();
                                    break;
                                default:
                                    int i11 = SettingsActivity.Y;
                                    settingsActivity2.m();
                                    settingsActivity2.z(d0Var);
                                    Toast.makeText(settingsActivity2, "云端版本已下载并替换本地云存档", 1).show();
                                    break;
                            }
                        }
                    });
                    return;
                } catch (Exception e2) {
                    settingsActivity.runOnUiThread(new m6(settingsActivity, e2, i5));
                    return;
                }
            case 1:
                int i7 = SettingsActivity.Y;
                settingsActivity.getClass();
                try {
                    final com.sgscq.vpn.cloud.d0 d0VarQ = settingsActivity.f149m.q();
                    settingsActivity.runOnUiThread(new Runnable() { // from class: com.sgscq.vpn.l6
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i8 = i4;
                            com.sgscq.vpn.cloud.d0 d0Var = d0VarQ;
                            SettingsActivity settingsActivity2 = settingsActivity;
                            switch (i8) {
                                case 0:
                                    int i9 = SettingsActivity.Y;
                                    settingsActivity2.z(d0Var);
                                    break;
                                case 1:
                                    int i10 = SettingsActivity.Y;
                                    settingsActivity2.m();
                                    settingsActivity2.z(d0Var);
                                    Toast.makeText(settingsActivity2, "本人云存档已上传并替换云端版本", 1).show();
                                    break;
                                case 2:
                                    int i11 = SettingsActivity.Y;
                                    settingsActivity2.m();
                                    settingsActivity2.z(d0Var);
                                    Toast.makeText(settingsActivity2, "云存档已删除，可新建新的云存档", 1).show();
                                    break;
                                default:
                                    int i12 = SettingsActivity.Y;
                                    settingsActivity2.m();
                                    settingsActivity2.z(d0Var);
                                    Toast.makeText(settingsActivity2, "云端版本已下载并替换本地云存档", 1).show();
                                    break;
                            }
                        }
                    });
                    return;
                } catch (Exception e3) {
                    settingsActivity.K(e3);
                    return;
                }
            case 2:
                int i8 = SettingsActivity.Y;
                settingsActivity.getClass();
                try {
                    arrayListH = settingsActivity.f149m.h();
                } catch (Exception e4) {
                    z2.g("SGSCQ_CLOUD", "[CloudDownload] versions unavailable: " + e4);
                    arrayListH = null;
                }
                if (arrayListH != null && arrayListH.size() > 1) {
                    settingsActivity.runOnUiThread(new d(settingsActivity, arrayListH, 23));
                    return;
                } else {
                    settingsActivity.H("正在下载本人云存档...");
                    new Thread(new f6(settingsActivity, 6), "sgscq-cloud-download").start();
                    return;
                }
            case 3:
                int i9 = SettingsActivity.Y;
                settingsActivity.getClass();
                try {
                    int iN = settingsActivity.f149m.n(new y0(settingsActivity, i3));
                    synchronized (com.sgscq.vpn.cloud.m0.class) {
                        com.sgscq.vpn.cloud.m0.f413a = false;
                    }
                    settingsActivity.runOnUiThread(new c6(settingsActivity, iN, i5));
                    return;
                } catch (Exception e5) {
                    synchronized (com.sgscq.vpn.cloud.m0.class) {
                        com.sgscq.vpn.cloud.m0.f413a = false;
                        settingsActivity.K(e5);
                        return;
                    }
                }
            case 4:
                int i10 = SettingsActivity.Y;
                settingsActivity.getClass();
                try {
                    settingsActivity.f149m.e();
                    m4 m4Var = new m4(settingsActivity);
                    String strH = m4Var.h(settingsActivity.f150n.y().afdianUserId);
                    if (!strH.isEmpty()) {
                        m4Var.e(strH);
                    }
                    final com.sgscq.vpn.cloud.d0 d0VarJ2 = settingsActivity.f149m.j();
                    final int i11 = 2;
                    settingsActivity.runOnUiThread(new Runnable() { // from class: com.sgscq.vpn.l6
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i12 = i11;
                            com.sgscq.vpn.cloud.d0 d0Var = d0VarJ2;
                            SettingsActivity settingsActivity2 = settingsActivity;
                            switch (i12) {
                                case 0:
                                    int i13 = SettingsActivity.Y;
                                    settingsActivity2.z(d0Var);
                                    break;
                                case 1:
                                    int i14 = SettingsActivity.Y;
                                    settingsActivity2.m();
                                    settingsActivity2.z(d0Var);
                                    Toast.makeText(settingsActivity2, "本人云存档已上传并替换云端版本", 1).show();
                                    break;
                                case 2:
                                    int i15 = SettingsActivity.Y;
                                    settingsActivity2.m();
                                    settingsActivity2.z(d0Var);
                                    Toast.makeText(settingsActivity2, "云存档已删除，可新建新的云存档", 1).show();
                                    break;
                                default:
                                    int i16 = SettingsActivity.Y;
                                    settingsActivity2.m();
                                    settingsActivity2.z(d0Var);
                                    Toast.makeText(settingsActivity2, "云端版本已下载并替换本地云存档", 1).show();
                                    break;
                            }
                        }
                    });
                    return;
                } catch (Exception e6) {
                    settingsActivity.K(e6);
                    return;
                }
            case 5:
                int i12 = SettingsActivity.Y;
                settingsActivity.getClass();
                try {
                    com.sgscq.vpn.cloud.d0 d0VarJ3 = settingsActivity.f149m.j();
                    com.sgscq.vpn.cloud.q0 q0Var = settingsActivity.f149m;
                    String strH2 = q0Var.f466e.h(q0Var.k().afdianUserId);
                    if (!strH2.isEmpty()) {
                        q0Var.m(strH2);
                    }
                    settingsActivity.runOnUiThread(new c(settingsActivity, d0VarJ3, strH2, 7));
                    return;
                } catch (Exception e7) {
                    settingsActivity.K(e7);
                    return;
                }
            default:
                int i13 = SettingsActivity.Y;
                settingsActivity.getClass();
                try {
                    final com.sgscq.vpn.cloud.d0 d0VarF = settingsActivity.f149m.f();
                    settingsActivity.runOnUiThread(new Runnable() { // from class: com.sgscq.vpn.l6
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i14 = i3;
                            com.sgscq.vpn.cloud.d0 d0Var = d0VarF;
                            SettingsActivity settingsActivity2 = settingsActivity;
                            switch (i14) {
                                case 0:
                                    int i15 = SettingsActivity.Y;
                                    settingsActivity2.z(d0Var);
                                    break;
                                case 1:
                                    int i16 = SettingsActivity.Y;
                                    settingsActivity2.m();
                                    settingsActivity2.z(d0Var);
                                    Toast.makeText(settingsActivity2, "本人云存档已上传并替换云端版本", 1).show();
                                    break;
                                case 2:
                                    int i17 = SettingsActivity.Y;
                                    settingsActivity2.m();
                                    settingsActivity2.z(d0Var);
                                    Toast.makeText(settingsActivity2, "云存档已删除，可新建新的云存档", 1).show();
                                    break;
                                default:
                                    int i18 = SettingsActivity.Y;
                                    settingsActivity2.m();
                                    settingsActivity2.z(d0Var);
                                    Toast.makeText(settingsActivity2, "云端版本已下载并替换本地云存档", 1).show();
                                    break;
                            }
                        }
                    });
                    return;
                } catch (Exception e8) {
                    settingsActivity.K(e8);
                    return;
                }
        }
    }
}
