package com.sgscq.vpn;

import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d4 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PassportActivity f634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f635c;

    public /* synthetic */ d4(PassportActivity passportActivity, String str, int i2) {
        this.f633a = i2;
        this.f634b = passportActivity;
        this.f635c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z = false;
        int i2 = this.f633a;
        String str = this.f635c;
        PassportActivity passportActivity = this.f634b;
        switch (i2) {
            case 0:
                int i3 = PassportActivity.f120q;
                passportActivity.getClass();
                if (str == null) {
                    str = "请稍后重试";
                }
                Toast.makeText(passportActivity, "存档操作失败：".concat(str), 1).show();
                break;
            case 1:
                int i4 = PassportActivity.f120q;
                if (!passportActivity.isFinishing() && !passportActivity.isDestroyed()) {
                    z = true;
                }
                if (z) {
                    if (str == null) {
                        passportActivity.e();
                    } else {
                        Toast.makeText(passportActivity, "云存档初始化失败：".concat(str), 1).show();
                    }
                    break;
                }
                break;
            default:
                int i5 = PassportActivity.f120q;
                passportActivity.getClass();
                Toast.makeText(passportActivity, "已新建云存档空号并切换: " + m4.f(str), 0).show();
                passportActivity.f();
                passportActivity.e();
                break;
        }
    }
}
