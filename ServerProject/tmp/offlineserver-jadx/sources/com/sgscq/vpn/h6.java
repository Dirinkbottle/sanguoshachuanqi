package com.sgscq.vpn;

import android.view.View;
import android.widget.Switch;
import android.widget.Toast;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h6 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f741a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SettingsActivity f742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f743c;

    public /* synthetic */ h6(SettingsActivity settingsActivity, int i2, int i3) {
        this.f741a = i3;
        this.f742b = settingsActivity;
        this.f743c = i2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = this.f741a;
        int i3 = this.f743c;
        boolean z = false;
        SettingsActivity settingsActivity = this.f742b;
        switch (i2) {
            case 0:
                int i4 = SettingsActivity.Y;
                settingsActivity.getClass();
                try {
                    JSONArray jSONArray = new JSONArray(settingsActivity.f137a.getString("custom_servers", "[]"));
                    if (i3 >= 0 && i3 < jSONArray.length()) {
                        JSONArray jSONArray2 = new JSONArray();
                        for (int i5 = 0; i5 < jSONArray.length(); i5++) {
                            if (i5 != i3) {
                                jSONArray2.put(jSONArray.get(i5));
                            }
                        }
                        settingsActivity.f137a.edit().putString("custom_servers", jSONArray2.toString()).apply();
                        Toast.makeText(settingsActivity, "已删除", 0).show();
                    }
                } catch (Exception unused) {
                    Toast.makeText(settingsActivity, "删除失败", 0).show();
                }
                settingsActivity.s();
                break;
            default:
                int i6 = SettingsActivity.Y;
                settingsActivity.getClass();
                settingsActivity.X = p5.E0(i3);
                Switch r8 = settingsActivity.V;
                if (r8 != null && r8.isChecked()) {
                    z = true;
                }
                settingsActivity.E(settingsActivity.X, z);
                settingsActivity.A();
                break;
        }
    }
}
