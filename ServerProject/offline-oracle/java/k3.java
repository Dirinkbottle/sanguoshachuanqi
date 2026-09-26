package com.sgscq.vpn;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k3 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1104a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1105b;

    public /* synthetic */ k3(Object obj, int i2) {
        this.f1104a = i2;
        this.f1105b = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        int i3 = this.f1104a;
        Object obj = this.f1105b;
        switch (i3) {
            case 0:
                MainActivity mainActivity = (MainActivity) obj;
                int i4 = MainActivity.F;
                mainActivity.getClass();
                dialogInterface.dismiss();
                mainActivity.getSharedPreferences("sgscq_config_v2", 0).edit().putBoolean("disclaimer_accepted", true).apply();
                break;
            case 1:
                MainActivity mainActivity2 = (MainActivity) obj;
                int i5 = MainActivity.F;
                mainActivity2.getClass();
                dialogInterface.dismiss();
                mainActivity2.finishAffinity();
                System.exit(0);
                break;
            case 2:
                int i6 = MainActivity.F;
                ((MainActivity) obj).finishAndRemoveTask();
                break;
            default:
                Context context = (Context) ((a7) obj).f190a;
                if (context instanceof Activity) {
                    ((Activity) context).finishAndRemoveTask();
                }
                break;
        }
    }
}
