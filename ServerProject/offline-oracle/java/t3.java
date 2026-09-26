package com.sgscq.vpn;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t3 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1393a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f1394b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1395c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1396d;

    public /* synthetic */ t3(KeyEvent.Callback callback, Object obj, Object obj2, int i2) {
        this.f1393a = i2;
        this.f1394b = callback;
        this.f1395c = obj;
        this.f1396d = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = this.f1393a;
        Object obj = this.f1396d;
        Object obj2 = this.f1395c;
        KeyEvent.Callback callback = this.f1394b;
        switch (i2) {
            case 0:
                final PassportActivity passportActivity = (PassportActivity) callback;
                final List list = (List) obj2;
                final AlertDialog alertDialog = (AlertDialog) obj;
                int i3 = PassportActivity.f120q;
                passportActivity.getClass();
                int size = list.size();
                boolean[] zArr = new boolean[size];
                for (int i4 = 0; i4 < list.size(); i4++) {
                    zArr[i4] = alertDialog.getListView().isItemChecked(i4);
                }
                a.o oVar = com.sgscq.vpn.cloud.u0.f502f;
                if (list.size() != size) {
                    throw new IllegalArgumentException("存档选择状态无效");
                }
                for (int i5 = 0; i5 < list.size(); i5++) {
                    ((com.sgscq.vpn.cloud.t0) list.get(i5)).f498b = zArr[i5];
                }
                new AlertDialog.Builder(passportActivity).setTitle("确认导入").setMessage("选中的存档将导入为本地存档，不会覆盖线上云存档。已有同 UID 存档会被覆盖，是否继续？").setPositiveButton("确认导入", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.x3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i6) {
                        int i7 = PassportActivity.f120q;
                        PassportActivity passportActivity2 = passportActivity;
                        passportActivity2.getClass();
                        alertDialog.dismiss();
                        new Thread(new a4(passportActivity2, list, 1), "sgscq-save-archive-import-write").start();
                    }
                }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                return;
            default:
                p5.I0(((c5) callback).f244a, (String) obj2, (String) obj);
                return;
        }
    }
}
