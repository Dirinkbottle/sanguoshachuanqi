package com.sgscq.vpn;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d7 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a7 f642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Runnable f643c;

    public /* synthetic */ d7(a7 a7Var, Runnable runnable, int i2) {
        this.f641a = i2;
        this.f642b = a7Var;
        this.f643c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f641a;
        Runnable runnable = this.f643c;
        a7 a7Var = this.f642b;
        switch (i2) {
            case 0:
                a7Var.getClass();
                try {
                    new com.sgscq.vpn.cloud.z((Context) a7Var.f190a);
                    com.sgscq.vpn.cloud.z.p("GET", "/client-policy", "", "application/json", "", Collections.emptyMap(), null);
                } catch (com.sgscq.vpn.cloud.a0 e2) {
                    if ("client_update_required".equals(e2.f268b)) {
                        ((Handler) a7Var.f191b).post(new d7(a7Var, runnable, 1));
                    }
                    return;
                } catch (Exception unused) {
                    return;
                }
                break;
            default:
                a7Var.getClass();
                if (runnable != null) {
                    runnable.run();
                }
                AlertDialog.Builder builder = new AlertDialog.Builder((Context) a7Var.f190a);
                builder.setTitle("必须更新客户端");
                builder.setMessage("当前版本已停用。更新后才能继续启动游戏和使用云功能。离线存档不会丢失。");
                builder.setPositiveButton("立即更新", (DialogInterface.OnClickListener) null);
                builder.setNegativeButton("退出", new k3(a7Var, 3));
                builder.setCancelable(false);
                AlertDialog alertDialogCreate = builder.create();
                alertDialogCreate.setCanceledOnTouchOutside(false);
                alertDialogCreate.show();
                alertDialogCreate.getWindow().setBackgroundDrawable(new ColorDrawable(p5.y));
                alertDialogCreate.getButton(-1).setTextColor(p5.B);
                alertDialogCreate.getButton(-2).setTextColor(p5.G);
                alertDialogCreate.getButton(-1).setOnClickListener(new q0(a7Var, 4));
                break;
        }
    }
}
