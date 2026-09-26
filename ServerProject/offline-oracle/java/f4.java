package com.sgscq.vpn;

import com.sgscq.vpn.cloud.CloudSessionStore$SessionData;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f4 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f687a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PassportActivity f688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.sgscq.vpn.cloud.q0 f689c;

    public /* synthetic */ f4(PassportActivity passportActivity, com.sgscq.vpn.cloud.q0 q0Var, int i2) {
        this.f687a = i2;
        this.f688b = passportActivity;
        this.f689c = q0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.sgscq.vpn.cloud.p0 p0Var;
        int i2 = this.f687a;
        com.sgscq.vpn.cloud.q0 q0Var = this.f689c;
        PassportActivity passportActivity = this.f688b;
        switch (i2) {
            case 0:
                int i3 = PassportActivity.f120q;
                passportActivity.getClass();
                q0Var.getClass();
                try {
                    CloudSessionStore$SessionData cloudSessionStore$SessionDataY = q0Var.f463b.y();
                    if (!cloudSessionStore$SessionDataY.isLoggedIn()) {
                        p0Var = com.sgscq.vpn.cloud.p0.NOT_LOGGED_IN;
                    } else if (!q0Var.f466e.h(cloudSessionStore$SessionDataY.afdianUserId).isEmpty()) {
                        p0Var = com.sgscq.vpn.cloud.p0.LOCAL_EXISTS;
                    } else {
                        p0Var = q0Var.f462a.s(cloudSessionStore$SessionDataY.afdianUserId) == null ? com.sgscq.vpn.cloud.p0.READY : com.sgscq.vpn.cloud.p0.SERVER_EXISTS;
                    }
                } catch (Exception unused) {
                    p0Var = com.sgscq.vpn.cloud.p0.UNKNOWN;
                }
                passportActivity.runOnUiThread(new d(passportActivity, p0Var, 12));
                break;
            default:
                int i4 = PassportActivity.f120q;
                passportActivity.getClass();
                try {
                    passportActivity.runOnUiThread(new d4(passportActivity, q0Var.d(), 2));
                } catch (Exception e2) {
                    passportActivity.runOnUiThread(new d(passportActivity, e2, 14));
                    return;
                }
                break;
        }
    }
}
