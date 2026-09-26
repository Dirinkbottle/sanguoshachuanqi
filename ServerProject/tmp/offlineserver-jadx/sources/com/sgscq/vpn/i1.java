package com.sgscq.vpn;

import android.content.Intent;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i1 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1046a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f1047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1048c;

    public /* synthetic */ i1(KeyEvent.Callback callback, Object obj, int i2) {
        this.f1046a = i2;
        this.f1047b = callback;
        this.f1048c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2;
        String str;
        int i3 = this.f1046a;
        Object obj = this.f1048c;
        KeyEvent.Callback callback = this.f1047b;
        switch (i3) {
            case 0:
                p5.a((EditText) callback, (ViewGroup) obj);
                break;
            case 1:
                MainActivity mainActivity = (MainActivity) callback;
                String str2 = (String) obj;
                int i4 = MainActivity.F;
                mainActivity.getClass();
                try {
                    Intent launchIntentForPackage = mainActivity.getPackageManager().getLaunchIntentForPackage(str2);
                    if (launchIntentForPackage != null) {
                        launchIntentForPackage.addFlags(268435456);
                        mainActivity.startActivity(launchIntentForPackage);
                        str = "启动游戏: " + str2;
                    } else {
                        str = "无法启动 " + str2;
                    }
                    mainActivity.e(str);
                } catch (Exception e2) {
                    mainActivity.e("启动失败: " + e2.getMessage());
                }
                break;
            default:
                SettingsActivity settingsActivity = (SettingsActivity) callback;
                String strTrim = settingsActivity.f140d.getText().toString().trim();
                String strTrim2 = settingsActivity.f141e.getText().toString().trim();
                String strTrim3 = settingsActivity.f142f.getText().toString().trim();
                String strTrim4 = settingsActivity.f143g.getText().toString().trim();
                try {
                    i2 = Integer.parseInt(settingsActivity.f144h.getText().toString().trim());
                    if (i2 < 0) {
                        i2 = 0;
                    } else if (i2 > 15) {
                        i2 = 15;
                    }
                } catch (NumberFormatException unused) {
                }
                if (strTrim.isEmpty()) {
                    strTrim = "0";
                }
                if (strTrim2.isEmpty()) {
                    strTrim2 = "0";
                }
                if (strTrim3.isEmpty()) {
                    strTrim3 = "150";
                }
                if (strTrim4.isEmpty()) {
                    strTrim4 = "12";
                }
                settingsActivity.f137a.edit().putString("resource_coin", strTrim).putString("resource_gold", strTrim2).putString("resource_power", strTrim3).putString("resource_energy", strTrim4).putString("resource_vip_level", String.valueOf(i2)).apply();
                Toast.makeText(settingsActivity, "资源设置已保存，重启游戏后生效", 0).show();
                break;
        }
    }
}
