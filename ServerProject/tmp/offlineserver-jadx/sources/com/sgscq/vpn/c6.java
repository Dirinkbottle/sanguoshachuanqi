package com.sgscq.vpn;

import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c6 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SettingsActivity f250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f251c;

    public /* synthetic */ c6(SettingsActivity settingsActivity, int i2, int i3) {
        this.f249a = i3;
        this.f250b = settingsActivity;
        this.f251c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f249a;
        final int i3 = this.f251c;
        final SettingsActivity settingsActivity = this.f250b;
        switch (i2) {
            case 0:
                int i4 = SettingsActivity.Y;
                settingsActivity.m();
                settingsActivity.z(settingsActivity.f149m.b());
                Toast.makeText(settingsActivity, "已同步 " + i3 + " 名云对手", 1).show();
                break;
            default:
                int i5 = SettingsActivity.Y;
                settingsActivity.getClass();
                try {
                    final com.sgscq.vpn.cloud.d0 d0VarG = settingsActivity.f149m.g(i3);
                    settingsActivity.runOnUiThread(new Runnable() { // from class: com.sgscq.vpn.e6
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i6 = SettingsActivity.Y;
                            SettingsActivity settingsActivity2 = settingsActivity;
                            settingsActivity2.m();
                            settingsActivity2.z(d0VarG);
                            Toast.makeText(settingsActivity2, "已恢复到节点 r" + i3 + "（仅本地；需上传才会覆盖云端）", 1).show();
                        }
                    });
                } catch (Exception e2) {
                    settingsActivity.K(e2);
                    return;
                }
                break;
        }
    }
}
