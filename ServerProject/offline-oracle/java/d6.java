package com.sgscq.vpn;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d6 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SettingsActivity f637a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f638b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f639c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f640d;

    public /* synthetic */ d6(SettingsActivity settingsActivity, int i2, int i3, int i4) {
        this.f637a = settingsActivity;
        this.f638b = i2;
        this.f639c = i3;
        this.f640d = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = SettingsActivity.Y;
        this.f637a.x(this.f638b, this.f639c, this.f640d);
    }
}
