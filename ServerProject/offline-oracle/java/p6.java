package com.sgscq.vpn;

import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public final class p6 implements y, c1, e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1291a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SettingsActivity f1292b;

    public /* synthetic */ p6(SettingsActivity settingsActivity, int i2) {
        this.f1291a = i2;
        this.f1292b = settingsActivity;
    }

    public final void a(String str) {
        int i2 = this.f1291a;
        SettingsActivity settingsActivity = this.f1292b;
        switch (i2) {
            case 0:
                Toast.makeText(settingsActivity, str, 1).show();
                int i3 = SettingsActivity.Y;
                settingsActivity.u();
                break;
            case 1:
                Toast.makeText(settingsActivity, str, 1).show();
                int i4 = SettingsActivity.Y;
                settingsActivity.u();
                break;
            case 2:
                Toast.makeText(settingsActivity, str, 1).show();
                int i5 = SettingsActivity.Y;
                settingsActivity.w();
                break;
            case 3:
                Toast.makeText(settingsActivity, str, 1).show();
                int i6 = SettingsActivity.Y;
                settingsActivity.w();
                break;
            case 4:
                Toast.makeText(settingsActivity, str, 1).show();
                int i7 = SettingsActivity.Y;
                settingsActivity.t();
                break;
            default:
                Toast.makeText(settingsActivity, str, 1).show();
                int i8 = SettingsActivity.Y;
                settingsActivity.t();
                break;
        }
    }
}
