package com.sgscq.vpn;

import android.app.AlertDialog;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f710a;

    public /* synthetic */ g3(MainActivity mainActivity) {
        this.f710a = mainActivity;
    }

    public final void a(String str) {
        MainActivity mainActivity = this.f710a;
        int i2 = MainActivity.F;
        if ((mainActivity.isFinishing() || mainActivity.isDestroyed()) ? false : true) {
            if (str != null) {
                mainActivity.u = false;
                mainActivity.a(SgscqVpnService.f155m);
                new AlertDialog.Builder(mainActivity).setTitle("存档升级失败").setMessage("旧存档仍然安全保留，尚未被删除。请重启后重试。\n\n".concat(str)).setPositiveButton("退出", new k3(mainActivity, 2)).setCancelable(false).show();
            } else {
                mainActivity.u = true;
                mainActivity.a(SgscqVpnService.f155m);
                mainActivity.b();
            }
        }
    }
}
