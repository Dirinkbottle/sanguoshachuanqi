package com.sgscq.vpn;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.widget.TextView;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z3 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1597a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f1599c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1600d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1601e;

    public /* synthetic */ z3(PassportActivity passportActivity, AlertDialog alertDialog, String str, String str2) {
        this.f1600d = passportActivity;
        this.f1601e = alertDialog;
        this.f1598b = str;
        this.f1599c = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TextView textView;
        int i2 = this.f1597a;
        String strA = this.f1599c;
        String str = this.f1598b;
        Object obj = this.f1601e;
        Object obj2 = this.f1600d;
        switch (i2) {
            case 0:
                PassportActivity passportActivity = (PassportActivity) obj2;
                AlertDialog alertDialog = (AlertDialog) obj;
                passportActivity.f136p.set(false);
                if ((passportActivity.isFinishing() || passportActivity.isDestroyed()) ? false : true) {
                    if (alertDialog.isShowing()) {
                        alertDialog.dismiss();
                    }
                    if (str == null) {
                        Toast.makeText(passportActivity, strA, 0).show();
                        passportActivity.f();
                    } else {
                        Toast.makeText(passportActivity, "存档操作失败：".concat(str), 1).show();
                    }
                    break;
                }
                break;
            default:
                a7 a7Var = (a7) obj2;
                String str2 = (String) obj;
                a7Var.getClass();
                if (strA.isEmpty()) {
                    strA = com.sgscq.vpn.handler.l.a("新版本 ", str, " 可用");
                }
                if (strA.length() > 300) {
                    strA = strA.substring(0, 300) + "...";
                }
                Object obj3 = a7Var.f190a;
                AlertDialog.Builder builder = new AlertDialog.Builder((Context) obj3);
                builder.setTitle("发现新版本: " + str);
                builder.setMessage(strA);
                builder.setPositiveButton("下载更新", new u0(a7Var, str2, 3));
                builder.setNegativeButton("以后再说", (DialogInterface.OnClickListener) null);
                builder.setCancelable(true);
                AlertDialog alertDialogCreate = builder.create();
                alertDialogCreate.show();
                alertDialogCreate.getWindow().setBackgroundDrawable(new ColorDrawable(p5.y));
                alertDialogCreate.getButton(-1).setTextColor(p5.B);
                alertDialogCreate.getButton(-2).setTextColor(p5.G);
                try {
                    int identifier = ((Context) obj3).getResources().getIdentifier("alertTitle", "id", "android");
                    if (identifier > 0 && (textView = (TextView) alertDialogCreate.findViewById(identifier)) != null) {
                        textView.setTextColor(p5.F);
                        break;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
        }
    }

    public /* synthetic */ z3(a7 a7Var, String str, String str2, String str3) {
        this.f1600d = a7Var;
        this.f1598b = str;
        this.f1599c = str2;
        this.f1601e = str3;
    }
}
