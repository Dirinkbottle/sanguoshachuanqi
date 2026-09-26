package com.sgscq.vpn;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z1 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Activity f1593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f1594c = "1.0.1.14067";

    public /* synthetic */ z1(Activity activity, int i2) {
        this.f1592a = i2;
        this.f1593b = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        int i3 = this.f1592a;
        String str = this.f1594c;
        Activity activity = this.f1593b;
        switch (i3) {
            case 0:
                if (activity != null) {
                    activity.getApplicationContext().getSharedPreferences("sgscq_config_v2", 0).edit().putString("keepalive_prompted_for", String.valueOf(str)).apply();
                }
                try {
                    Intent intent = new Intent("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
                    intent.setData(Uri.parse("package:" + activity.getPackageName()));
                    activity.startActivity(intent);
                } catch (RuntimeException e2) {
                    z2.g("KeepAlive", "打不开电池优化设置: ".concat(e2.getClass().getSimpleName()));
                    return;
                }
                break;
            case 1:
                if (activity != null) {
                    activity.getApplicationContext().getSharedPreferences("sgscq_config_v2", 0).edit().putString("keepalive_prompted_for", String.valueOf(str)).apply();
                    break;
                }
                break;
            case 2:
                p5.A0(activity, str);
                p5.J0(activity);
                break;
            default:
                p5.A0(activity, str);
                break;
        }
    }
}
