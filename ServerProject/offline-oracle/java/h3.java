package com.sgscq.vpn;

import android.content.Intent;
import android.net.VpnService;
import android.os.Build;
import android.view.View;
import android.widget.Toast;
import java.text.SimpleDateFormat;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h3 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f730a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f731b;

    public /* synthetic */ h3(MainActivity mainActivity, int i2) {
        this.f730a = i2;
        this.f731b = mainActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f730a) {
            case 0:
                MainActivity mainActivity = this.f731b;
                int i2 = MainActivity.F;
                mainActivity.getClass();
                SgscqVpnService.f155m = false;
                mainActivity.getSharedPreferences("sgscq_config_v2", 0).edit().putBoolean("vpn_was_running", false).apply();
                Intent action = new Intent(mainActivity, (Class<?>) SgscqVpnService.class).setAction("STOP");
                if (Build.VERSION.SDK_INT < 26 || "STOP".equals(action.getAction())) {
                    mainActivity.startService(action);
                } else {
                    mainActivity.startForegroundService(action);
                }
                mainActivity.a(false);
                mainActivity.b();
                SimpleDateFormat simpleDateFormat = z2.f1595a;
                u6 u6VarJ = SgscqVpnService.j();
                synchronized (u6VarJ.f1437e) {
                    t6 t6Var = u6VarJ.f1433a;
                    t6Var.f1415b.clear();
                    t6Var.f1414a = 0;
                    t6 t6Var2 = u6VarJ.f1434b;
                    t6Var2.f1415b.clear();
                    t6Var2.f1414a = 0;
                    u6VarJ.f1435c = 0;
                    u6VarJ.f1436d = false;
                    break;
                }
                mainActivity.e("缓冲区已清空");
                return;
            case 1:
                int i3 = MainActivity.F;
                MainActivity mainActivity2 = this.f731b;
                mainActivity2.getClass();
                Intent intentPrepare = VpnService.prepare(mainActivity2);
                if (intentPrepare != null) {
                    mainActivity2.startActivityForResult(intentPrepare, 1);
                    return;
                } else {
                    mainActivity2.o();
                    mainActivity2.e("VPN 已连接");
                    return;
                }
            case 2:
                MainActivity mainActivity3 = this.f731b;
                if (!mainActivity3.f118p.compareAndSet(false, true)) {
                    mainActivity3.e("数据正在导出，请稍候");
                    return;
                } else {
                    mainActivity3.e("正在导出分析数据...");
                    new Thread(new f3(mainActivity3, 7), "analysis-export").start();
                    return;
                }
            case 3:
                int i4 = MainActivity.F;
                MainActivity mainActivity4 = this.f731b;
                mainActivity4.getClass();
                mainActivity4.startActivity(new Intent(mainActivity4, (Class<?>) PassportActivity.class));
                return;
            case 4:
                int i5 = MainActivity.F;
                MainActivity mainActivity5 = this.f731b;
                mainActivity5.getClass();
                c7 c7VarD = c7.d(mainActivity5);
                if (c7VarD.e()) {
                    Toast.makeText(mainActivity5, c7VarD.j(), 1).show();
                    return;
                } else {
                    mainActivity5.startActivity(new Intent(mainActivity5, (Class<?>) SettingsActivity.class));
                    return;
                }
            case 5:
                a7 a7Var = this.f731b.f117o;
                a7Var.getClass();
                new Thread(new j3(a7Var, false, 1)).start();
                return;
            case 6:
                int i6 = MainActivity.F;
                this.f731b.e("请先启动 VPN");
                return;
            default:
                MainActivity mainActivity6 = this.f731b;
                mainActivity6.f114l.setText("正在重试限时功能…");
                mainActivity6.f114l.setContentDescription("正在重试限时功能");
                mainActivity6.f114l.setOnClickListener(null);
                mainActivity6.f114l.setClickable(false);
                mainActivity6.f114l.setFocusable(false);
                c7 c7VarD2 = c7.d(mainActivity6);
                c7VarD2.k(new a(mainActivity6, c7VarD2, 3));
                return;
        }
    }
}
