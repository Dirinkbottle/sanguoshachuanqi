package com.sgscq.vpn;

import android.app.AlertDialog;
import android.content.DialogInterface;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a4 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f182a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PassportActivity f183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f184c;

    public /* synthetic */ a4(PassportActivity passportActivity, List list, int i2) {
        this.f182a = i2;
        this.f183b = passportActivity;
        this.f184c = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f182a;
        final List list = this.f184c;
        final PassportActivity passportActivity = this.f183b;
        switch (i2) {
            case 0:
                int i3 = PassportActivity.f120q;
                passportActivity.getClass();
                String[] strArr = new String[list.size()];
                boolean[] zArr = new boolean[list.size()];
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
                for (int i4 = 0; i4 < list.size(); i4++) {
                    com.sgscq.vpn.cloud.t0 t0Var = (com.sgscq.vpn.cloud.t0) list.get(i4);
                    com.sgscq.vpn.cloud.s0 s0Var = t0Var.f497a;
                    StringBuilder sb = new StringBuilder();
                    sb.append(s0Var.f489b);
                    sb.append(" | Lv");
                    sb.append(s0Var.f492e);
                    sb.append(" | 战力 ");
                    sb.append(String.format(Locale.getDefault(), "%,.0f", Double.valueOf(s0Var.f493f)));
                    sb.append(" | ");
                    String str = s0Var.f490c;
                    sb.append("cloud".equals(str) ? "线上云存档" : "local_cloud".equals(str) ? "本地云存档" : "本地存档");
                    sb.append(" | ");
                    sb.append(simpleDateFormat.format(new Date(s0Var.f491d)));
                    strArr[i4] = sb.toString();
                    zArr[i4] = t0Var.f498b;
                }
                final AlertDialog alertDialogCreate = new AlertDialog.Builder(passportActivity).setTitle("选择要导入的存档（默认全选）").setMultiChoiceItems(strArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: com.sgscq.vpn.h4
                    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                    public final void onClick(DialogInterface dialogInterface, int i5, boolean z) {
                        int i6 = PassportActivity.f120q;
                        a.o oVar = com.sgscq.vpn.cloud.u0.f502f;
                        List list2 = list;
                        if (list2 != null && i5 >= 0 && i5 < list2.size()) {
                            ((com.sgscq.vpn.cloud.t0) list2.get(i5)).f498b = z;
                        }
                        AlertDialog[] alertDialogArr = alertDialogArr;
                        if (alertDialogArr[0] != null) {
                            for (int i7 = 0; i7 < list2.size(); i7++) {
                                alertDialogArr[0].getListView().setItemChecked(i7, ((com.sgscq.vpn.cloud.t0) list2.get(i7)).f498b);
                            }
                        }
                    }
                }).setPositiveButton("导入所选", (DialogInterface.OnClickListener) null).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create();
                final AlertDialog[] alertDialogArr = {alertDialogCreate};
                alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.sgscq.vpn.i4
                    @Override // android.content.DialogInterface.OnShowListener
                    public final void onShow(DialogInterface dialogInterface) {
                        int i5 = PassportActivity.f120q;
                        PassportActivity passportActivity2 = passportActivity;
                        passportActivity2.getClass();
                        AlertDialog alertDialog = alertDialogCreate;
                        alertDialog.getButton(-1).setOnClickListener(new t3(passportActivity2, list, alertDialog, 0));
                    }
                });
                alertDialogCreate.show();
                break;
            default:
                int i5 = PassportActivity.f120q;
                passportActivity.getClass();
                try {
                    passportActivity.runOnUiThread(new b4(passportActivity, passportActivity.f131k.c(list), 1));
                } catch (Exception e2) {
                    passportActivity.h(e2);
                    return;
                }
                break;
        }
    }
}
