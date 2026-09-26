package com.sgscq.vpn;

/* JADX INFO: loaded from: classes.dex */
public final class o6 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SettingsActivity f1257a;

    public o6(SettingsActivity settingsActivity) {
        this.f1257a = settingsActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SettingsActivity settingsActivity = this.f1257a;
        if (settingsActivity.isFinishing() || settingsActivity.isDestroyed()) {
            return;
        }
        int i2 = SettingsActivity.Y;
        if (settingsActivity.B()) {
            settingsActivity.v.postDelayed(this, 250L);
        } else {
            settingsActivity.v();
        }
    }
}
