package com.sgscq.vpn;

import android.widget.CompoundButton;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j6 implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1094a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1095b;

    public /* synthetic */ j6(Object obj, int i2) {
        this.f1094a = i2;
        this.f1095b = obj;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        switch (this.f1094a) {
            case 0:
                SettingsActivity settingsActivity = (SettingsActivity) this.f1095b;
                if (settingsActivity.M) {
                    return;
                }
                if (z) {
                    if (settingsActivity.F()) {
                        return;
                    }
                    settingsActivity.M = true;
                    settingsActivity.E.setChecked(false);
                    settingsActivity.M = false;
                    return;
                }
                q.o.a(settingsActivity);
                synchronized (q.o.f1929a) {
                    if (q.o.f1931c == null) {
                        throw new IllegalStateException("代理配置尚未初始化");
                    }
                    q.i.h();
                    q.o.f1931c.o();
                    q.o.f1930b = com.sgscq.vpn.config.f.a();
                }
                settingsActivity.L("已关闭，当前使用默认连接", p5.G);
                return;
            case 1:
                SettingsActivity settingsActivity2 = (SettingsActivity) this.f1095b;
                if (settingsActivity2.R) {
                    return;
                }
                if (z) {
                    if (settingsActivity2.D()) {
                        return;
                    }
                    settingsActivity2.R = true;
                    settingsActivity2.N.setChecked(false);
                    settingsActivity2.R = false;
                    return;
                }
                q.e.a(settingsActivity2);
                synchronized (q.e.f1906a) {
                    if (q.e.f1908c == null) {
                        throw new IllegalStateException("DNS 配置尚未初始化");
                    }
                    q.e.f1908c.o();
                    InetAddress inetAddressD = c.i.d((String) q.e.f1907b.f48c);
                    q.e.f1907b = new c.i(false, inetAddressD.getHostAddress(), inetAddressD);
                }
                settingsActivity2.J("已关闭，当前使用系统 DNS", p5.G);
                return;
            case 2:
                SettingsActivity settingsActivity3 = (SettingsActivity) this.f1095b;
                settingsActivity3.E(settingsActivity3.X, z);
                return;
            case 3:
                SettingsActivity settingsActivity4 = (SettingsActivity) this.f1095b;
                int i2 = SettingsActivity.Y;
                settingsActivity4.r(z);
                return;
            case 4:
                SettingsActivity settingsActivity5 = (SettingsActivity) this.f1095b;
                int i3 = SettingsActivity.Y;
                settingsActivity5.r(z);
                return;
            default:
                v0 v0Var = (v0) this.f1095b;
                float[] fArr = DebugSparringConfigActivity.f97f;
                v0Var.f1442a.extreme = z;
                return;
        }
    }
}
