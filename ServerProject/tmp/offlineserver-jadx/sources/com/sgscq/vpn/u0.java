package com.sgscq.vpn;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.widget.TextView;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u0 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1419a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1421c;

    public /* synthetic */ u0(Object obj, Object obj2, int i2) {
        this.f1419a = i2;
        this.f1420b = obj;
        this.f1421c = obj2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        TextView textView;
        int i3 = this.f1419a;
        int i4 = 0;
        Object obj = this.f1421c;
        Object obj2 = this.f1420b;
        switch (i3) {
            case 0:
                float[] fArr = DebugSparringConfigActivity.f97f;
                ((w0) obj2).a((String) ((List) obj).get(i2));
                dialogInterface.dismiss();
                break;
            case 1:
                MainActivity mainActivity = (MainActivity) obj2;
                int i5 = MainActivity.F;
                mainActivity.getClass();
                String str = ((n3) obj).f1217a;
                try {
                    Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                    intent.setData(Uri.parse("package:" + str));
                    intent.addFlags(268435456);
                    mainActivity.startActivity(intent);
                } catch (Exception unused) {
                    mainActivity.e("无法打开系统设置");
                    return;
                }
                break;
            case 2:
                SettingsActivity settingsActivity = (SettingsActivity) obj2;
                List list = (List) obj;
                int i6 = SettingsActivity.Y;
                settingsActivity.getClass();
                int checkedItemPosition = ((AlertDialog) dialogInterface).getListView().getCheckedItemPosition();
                if (checkedItemPosition >= 0 && checkedItemPosition < list.size()) {
                    i4 = checkedItemPosition;
                }
                int i7 = ((com.sgscq.vpn.cloud.w) list.get(i4)).f511a;
                settingsActivity.H("正在下载历史节点 r" + i7 + "...");
                new Thread(new c6(settingsActivity, i7, 1), "sgscq-cloud-revision").start();
                break;
            default:
                a7 a7Var = (a7) obj2;
                String str2 = (String) obj;
                a7Var.getClass();
                dialogInterface.dismiss();
                Object obj3 = a7Var.f190a;
                AlertDialog.Builder builder = new AlertDialog.Builder((Context) obj3);
                builder.setTitle("正在下载更新...");
                builder.setMessage("准备连接...");
                builder.setCancelable(false);
                AlertDialog alertDialogCreate = builder.create();
                alertDialogCreate.show();
                alertDialogCreate.getWindow().setBackgroundDrawable(new ColorDrawable(p5.y));
                try {
                    int identifier = ((Context) obj3).getResources().getIdentifier("alertTitle", "id", "android");
                    if (identifier > 0 && (textView = (TextView) alertDialogCreate.findViewById(identifier)) != null) {
                        textView.setTextColor(p5.F);
                    }
                    break;
                } catch (Exception unused2) {
                }
                new Thread(new c(a7Var, str2, alertDialogCreate, 8)).start();
                break;
        }
    }
}
