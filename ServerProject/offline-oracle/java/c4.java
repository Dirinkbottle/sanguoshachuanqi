package com.sgscq.vpn;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c4 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PassportActivity f243b;

    public /* synthetic */ c4(PassportActivity passportActivity, int i2) {
        this.f242a = i2;
        this.f243b = passportActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String simpleName;
        switch (this.f242a) {
            case 0:
                PassportActivity passportActivity = this.f243b;
                int i2 = PassportActivity.f120q;
                passportActivity.getClass();
                try {
                    passportActivity.f133m = new com.sgscq.vpn.cloud.q0(passportActivity.getApplicationContext());
                    simpleName = null;
                } catch (Exception e2) {
                    String message = e2.getMessage();
                    simpleName = (message == null || message.isEmpty()) ? e2.getClass().getSimpleName() : message;
                }
                passportActivity.runOnUiThread(new d4(passportActivity, simpleName, 1));
                break;
            default:
                int i3 = PassportActivity.f120q;
                PassportActivity passportActivity2 = this.f243b;
                passportActivity2.getClass();
                try {
                    passportActivity2.runOnUiThread(new d(passportActivity2, passportActivity2.f131k.b(), 13));
                } catch (Exception e3) {
                    passportActivity2.h(e3);
                    return;
                }
                break;
        }
    }
}
