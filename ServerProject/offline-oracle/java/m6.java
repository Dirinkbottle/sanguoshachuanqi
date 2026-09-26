package com.sgscq.vpn;

import android.widget.TextView;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m6 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SettingsActivity f1202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Exception f1203c;

    public /* synthetic */ m6(SettingsActivity settingsActivity, Exception exc, int i2) {
        this.f1201a = i2;
        this.f1202b = settingsActivity;
        this.f1203c = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f1201a;
        Exception exc = this.f1203c;
        SettingsActivity settingsActivity = this.f1202b;
        switch (i2) {
            case 0:
                settingsActivity.z(settingsActivity.f149m.b());
                settingsActivity.f151o.setText("云服务暂时不可用：" + SettingsActivity.j(exc));
                settingsActivity.f151o.setTextColor(p5.D);
                break;
            default:
                int i3 = SettingsActivity.Y;
                settingsActivity.m();
                String strJ = SettingsActivity.j(exc);
                settingsActivity.z(settingsActivity.f149m.b());
                Toast.makeText(settingsActivity, strJ, 1).show();
                TextView textView = settingsActivity.f151o;
                if (textView != null) {
                    textView.setText("操作失败：" + strJ);
                    settingsActivity.f151o.setTextColor(p5.D);
                }
                break;
        }
    }
}
