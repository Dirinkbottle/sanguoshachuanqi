package com.sgscq.vpn;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.sgscq.vpn.cloud.CloudSessionStore$SessionData;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class PassportActivity extends Activity {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final /* synthetic */ int f120q = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public m4 f121a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LinearLayout f122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ScrollView f123c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TextView f124d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Button f125e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Button f126f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Button f127g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f128h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public h f129i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public m.e f130j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public com.sgscq.vpn.cloud.u0 f131k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public byte[] f132l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile com.sgscq.vpn.cloud.q0 f133m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ExecutorService f134n = Executors.newSingleThreadExecutor(new x0(5));

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final AtomicInteger f135o = new AtomicInteger();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final AtomicBoolean f136p = new AtomicBoolean();

    public static LinearLayout.LayoutParams b(int i2, int i3, int i4, int i5, int i6) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i3, i4);
        if (i5 != 0) {
            layoutParams.topMargin = i5;
        }
        if (i6 != 0) {
            layoutParams.bottomMargin = i6;
        }
        return layoutParams;
    }

    public final void a(LinearLayout linearLayout, Button button, boolean z) {
        LinearLayout.LayoutParams layoutParamsB;
        if (linearLayout.getChildCount() > 0) {
            linearLayout.addView(new View(this), b(z ? 0 : p5.S0(8, this), z ? p5.S0(10, this) : 0, 0, 0, 0));
        }
        if (z) {
            layoutParamsB = b(-1, p5.S0(42, this), 0, 0, 0);
        } else {
            int iS0 = p5.S0(42, this);
            int iS1 = p5.S0(42, this);
            layoutParamsB = b(0, iS0, 1, 0, 0);
            if (iS1 != 0) {
                layoutParamsB.height = iS1;
            }
        }
        linearLayout.addView(button, layoutParamsB);
    }

    public final Button c(String str, s3 s3Var) {
        Button button = new Button(this);
        button.setText(str);
        button.setTextSize(13.0f);
        button.setTextColor(p5.B);
        button.setAllCaps(false);
        button.setMinHeight(0);
        button.setMinimumHeight(0);
        button.setPadding(p5.S0(14, this), 0, p5.S0(14, this), 0);
        float fS0 = p5.S0(8, this);
        int i2 = p5.C;
        int i3 = p5.x;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(fS0);
        gradientDrawable.setColor(i3);
        gradientDrawable.setStroke(p5.S0(1, this), i2);
        p5.i(button, gradientDrawable, p5.y0(p5.x, p5.S0(8, this), getResources().getDisplayMetrics().density));
        button.setOnClickListener(s3Var);
        return button;
    }

    public final void d() {
        f fVarJ = this.f129i.j();
        CloudSessionStore$SessionData cloudSessionStore$SessionDataY = this.f130j.y();
        boolean z = fVarJ.f665c && cloudSessionStore$SessionDataY.isLoggedIn();
        String str = fVarJ.f664b;
        String strTrim = str == null ? "" : str.trim();
        if (strTrim.isEmpty()) {
            String str2 = cloudSessionStore$SessionDataY.name;
            strTrim = str2 != null ? str2.trim() : "";
        }
        String upperCase = "release".toUpperCase(Locale.ROOT);
        TextView textView = this.f128h;
        if (textView != null) {
            StringBuilder sb = new StringBuilder("爱发电：");
            if (!z) {
                strTrim = "未登录";
            } else if (strTrim.isEmpty()) {
                strTrim = "已登录";
            }
            sb.append(strTrim);
            sb.append(" · ");
            sb.append(upperCase);
            textView.setText(sb.toString());
            this.f128h.setTextColor(z ? p5.C : p5.G);
        }
        Button button = this.f126f;
        if (button != null) {
            button.setEnabled(z);
            this.f126f.setAlpha(z ? 1.0f : 0.45f);
        }
        Button button2 = this.f127g;
        if (button2 != null) {
            button2.setEnabled(z);
            this.f127g.setAlpha(z ? 1.0f : 0.45f);
        }
    }

    public final void e() {
        Button button = this.f125e;
        if (button == null) {
            return;
        }
        int i2 = 0;
        button.setEnabled(false);
        this.f125e.setAlpha(0.45f);
        com.sgscq.vpn.cloud.q0 q0Var = this.f133m;
        if (q0Var == null) {
            this.f125e.setContentDescription("云存档状态正在加载");
        } else {
            new Thread(new f4(this, q0Var, i2), "cloud-save-status").start();
        }
    }

    public final void f() {
        ExecutorService executorService = this.f134n;
        if (executorService.isShutdown()) {
            return;
        }
        int iIncrementAndGet = this.f135o.incrementAndGet();
        this.f122b.removeAllViews();
        this.f124d.setText("正在读取存档…");
        this.f124d.setVisibility(0);
        try {
            executorService.execute(new b4(this, iIncrementAndGet, 0));
        } catch (RejectedExecutionException unused) {
        }
    }

    public final void g(String str, Callable callable) {
        AtomicBoolean atomicBoolean = this.f136p;
        if (!atomicBoolean.compareAndSet(false, true)) {
            Toast.makeText(this, "存档操作正在进行，请稍候", 0).show();
            return;
        }
        AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setTitle("存档处理中").setMessage(str).setCancelable(false).create();
        alertDialogCreate.show();
        try {
            this.f134n.execute(new c(this, callable, alertDialogCreate, 6));
        } catch (RejectedExecutionException unused) {
            atomicBoolean.set(false);
            if (alertDialogCreate.isShowing()) {
                alertDialogCreate.dismiss();
            }
        }
    }

    public final void h(Exception exc) {
        runOnUiThread(new d4(this, exc.getMessage(), 0));
    }

    public final Button i(String str, int i2, v3 v3Var) {
        Button button = new Button(this);
        button.setText(str);
        button.setTextSize(11.0f);
        button.setTextColor(i2);
        button.setAllCaps(false);
        button.setMinHeight(0);
        button.setMinimumHeight(0);
        button.setPadding(p5.S0(10, this), 0, p5.S0(10, this), 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(p5.S0(6, this));
        gradientDrawable.setColor(p5.y);
        gradientDrawable.setStroke(p5.S0(1, this), i2);
        p5.i(button, gradientDrawable, gradientDrawable);
        button.setOnClickListener(v3Var);
        return button;
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        byte[] bArr;
        super.onActivityResult(i2, i3, intent);
        if (i2 != 1003) {
            if (i2 != 1004 || i3 != -1 || intent == null || intent.getData() == null) {
                return;
            }
            Uri data = intent.getData();
            Toast.makeText(this, "正在验证并解密存档...", 0).show();
            new Thread(new d(this, data, 11), "sgscq-save-archive-import-read").start();
            return;
        }
        if (i3 != -1 || intent == null || intent.getData() == null || (bArr = this.f132l) == null) {
            this.f132l = null;
            return;
        }
        this.f132l = null;
        try {
            OutputStream outputStreamOpenOutputStream = getContentResolver().openOutputStream(intent.getData());
            try {
                if (outputStreamOpenOutputStream == null) {
                    throw new IOException("无法写入归档文件");
                }
                outputStreamOpenOutputStream.write(bArr);
                outputStreamOpenOutputStream.flush();
                Toast.makeText(this, "存档归档已导出", 1).show();
                outputStreamOpenOutputStream.close();
            } catch (Throwable th) {
                if (outputStreamOpenOutputStream != null) {
                    try {
                        outputStreamOpenOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Exception e2) {
            Toast.makeText(this, "写入归档失败：" + e2.getMessage(), 1).show();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v6, types: [com.sgscq.vpn.s3] */
    /* JADX WARN: Type inference failed for: r11v10, types: [com.sgscq.vpn.s3] */
    /* JADX WARN: Type inference failed for: r11v13, types: [com.sgscq.vpn.s3] */
    /* JADX WARN: Type inference failed for: r12v17, types: [com.sgscq.vpn.s3] */
    /* JADX WARN: Type inference failed for: r1v23, types: [com.sgscq.vpn.s3] */
    /* JADX WARN: Type inference failed for: r1v25, types: [com.sgscq.vpn.s3] */
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        int i2;
        int i3;
        int iS0;
        int i4;
        int i5;
        int i6;
        super.onCreate(bundle);
        p5.e0(this);
        p5.l(this);
        this.f121a = new m4(this);
        final int i7 = 0;
        this.f129i = new h(0, this);
        this.f130j = new m.e(5, this);
        this.f131k = new com.sgscq.vpn.cloud.u0(this);
        int iY = p5.Y(this);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(p5.x);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setPadding(p5.S0(12, this), p5.S0(8, this) + iY, p5.S0(16, this), p5.S0(8, this));
        frameLayout.setBackgroundColor(p5.A);
        Button button = new Button(this);
        button.setText("返回");
        button.setTextSize(13.0f);
        button.setTextColor(p5.B);
        button.setAllCaps(false);
        button.setMinHeight(0);
        button.setMinimumHeight(0);
        button.setPadding(p5.S0(10, this), 0, p5.S0(10, this), 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(p5.S0(6, this));
        gradientDrawable.setColor(p5.A);
        gradientDrawable.setStroke(p5.S0(1, this), p5.C);
        p5.i(button, gradientDrawable, p5.y0(p5.A, p5.S0(6, this), getResources().getDisplayMetrics().density));
        button.setOnClickListener(new View.OnClickListener(this) { // from class: com.sgscq.vpn.s3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PassportActivity f1366b;

            {
                this.f1366b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final int i8 = 1;
                final int i9 = 0;
                switch (i7) {
                    case 0:
                        int i10 = PassportActivity.f120q;
                        this.f1366b.finish();
                        break;
                    case 1:
                        PassportActivity passportActivity = this.f1366b;
                        m4 m4Var = passportActivity.f121a;
                        String strD = m4Var.d();
                        m4Var.w(strD);
                        Toast.makeText(passportActivity, "已新建本地空号并切换: " + m4.f(strD), 0).show();
                        passportActivity.f();
                        break;
                    case 2:
                        PassportActivity passportActivity2 = this.f1366b;
                        com.sgscq.vpn.cloud.q0 q0Var = passportActivity2.f133m;
                        if (q0Var != null) {
                            Button button2 = passportActivity2.f125e;
                            if (button2 != null) {
                                button2.setEnabled(false);
                            }
                            new Thread(new f4(passportActivity2, q0Var, i8), "cloud-save-create").start();
                        } else {
                            Toast.makeText(passportActivity2, "云存档状态正在加载，请稍候", 0).show();
                        }
                        break;
                    case 3:
                        final PassportActivity passportActivity3 = this.f1366b;
                        int size = passportActivity3.f121a.m().size();
                        int iJ = passportActivity3.f121a.j();
                        if (size != 0) {
                            new AlertDialog.Builder(passportActivity3).setTitle("清除所有玩家数据").setMessage("确定清除可操作的本地玩家存档和引导进度？\n\n将跳过 " + iJ + " 个云存档；通行证记录会保留。").setPositiveButton("清除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i11) {
                                    int i12 = i9;
                                    final PassportActivity passportActivity4 = passportActivity3;
                                    switch (i12) {
                                        case 0:
                                            int i13 = PassportActivity.f120q;
                                            passportActivity4.getClass();
                                            final int i14 = 0;
                                            passportActivity4.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i15 = i14;
                                                    int i16 = 0;
                                                    PassportActivity passportActivity5 = passportActivity4;
                                                    switch (i15) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity5.f121a;
                                                            int i17 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i17++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i16++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i16 + " skippedCloud=" + i17);
                                                            return "已处理 " + i16 + " 个本地存档，跳过 " + i17 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity5.f121a;
                                                            m4Var3.getClass();
                                                            int i18 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i18++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i16++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i16 + " skippedCloud=" + i18);
                                                            return "已处理 " + i16 + " 个本地存档，跳过 " + i18 + " 个云存档";
                                                        default:
                                                            int i19 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity5.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity5).V1();
                                                            m4 m4Var4 = passportActivity5.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity5, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity5, sharedPreferences, str4, linkedHashMapL);
                                                                        i16++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i16 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i16);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i15 = PassportActivity.f120q;
                                            passportActivity4.getClass();
                                            final int i16 = 2;
                                            passportActivity4.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i17 = i16;
                                                    int i18 = 0;
                                                    PassportActivity passportActivity5 = passportActivity4;
                                                    switch (i17) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity5.f121a;
                                                            int i19 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i19++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i18++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i18 + " skippedCloud=" + i19);
                                                            return "已处理 " + i18 + " 个本地存档，跳过 " + i19 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity5.f121a;
                                                            m4Var3.getClass();
                                                            int i110 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i110++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i18++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i18 + " skippedCloud=" + i110);
                                                            return "已处理 " + i18 + " 个本地存档，跳过 " + i110 + " 个云存档";
                                                        default:
                                                            int i111 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity5.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity5).V1();
                                                            m4 m4Var4 = passportActivity5.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity5, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity5, sharedPreferences, str4, linkedHashMapL);
                                                                        i18++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i18 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i18);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i17 = PassportActivity.f120q;
                                            passportActivity4.getClass();
                                            final int i18 = 1;
                                            passportActivity4.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i19 = i18;
                                                    int i110 = 0;
                                                    PassportActivity passportActivity5 = passportActivity4;
                                                    switch (i19) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity5.f121a;
                                                            int i111 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i111++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i110++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i110 + " skippedCloud=" + i111);
                                                            return "已处理 " + i110 + " 个本地存档，跳过 " + i111 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity5.f121a;
                                                            m4Var3.getClass();
                                                            int i112 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i112++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i110++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i110 + " skippedCloud=" + i112);
                                                            return "已处理 " + i110 + " 个本地存档，跳过 " + i112 + " 个云存档";
                                                        default:
                                                            int i113 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity5.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity5).V1();
                                                            m4 m4Var4 = passportActivity5.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity5, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity5, sharedPreferences, str4, linkedHashMapL);
                                                                        i110++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i110 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i110);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity3, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 4:
                        final PassportActivity passportActivity4 = this.f1366b;
                        if (passportActivity4.f121a.m().size() != 0) {
                            new AlertDialog.Builder(passportActivity4).setTitle("修复臣服魂魄").setMessage("扫描本机全部本地存档：把「觉醒臣服」历史上被错发成神将卡的奖励回收，并按配置补发对应数量的魂魄。\n\n如果该神将因为这张卡已经到手（可能已经上阵或培养过），会连同技能、上阵/副将绑定一起删除，无法撤销。\n\n已经按正确方式领取过的存档不会被重复补发。云存档请先下载到本机再修复。").setPositiveButton("开始修复", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i11) {
                                    int i12 = i8;
                                    final PassportActivity passportActivity5 = passportActivity4;
                                    switch (i12) {
                                        case 0:
                                            int i13 = PassportActivity.f120q;
                                            passportActivity5.getClass();
                                            final int i14 = 0;
                                            passportActivity5.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i19 = i14;
                                                    int i110 = 0;
                                                    PassportActivity passportActivity6 = passportActivity5;
                                                    switch (i19) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity6.f121a;
                                                            int i111 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i111++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i110++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i110 + " skippedCloud=" + i111);
                                                            return "已处理 " + i110 + " 个本地存档，跳过 " + i111 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity6.f121a;
                                                            m4Var3.getClass();
                                                            int i112 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i112++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i110++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i110 + " skippedCloud=" + i112);
                                                            return "已处理 " + i110 + " 个本地存档，跳过 " + i112 + " 个云存档";
                                                        default:
                                                            int i113 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity6.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity6).V1();
                                                            m4 m4Var4 = passportActivity6.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity6, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity6, sharedPreferences, str4, linkedHashMapL);
                                                                        i110++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i110 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i110);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i15 = PassportActivity.f120q;
                                            passportActivity5.getClass();
                                            final int i16 = 2;
                                            passportActivity5.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i19 = i16;
                                                    int i110 = 0;
                                                    PassportActivity passportActivity6 = passportActivity5;
                                                    switch (i19) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity6.f121a;
                                                            int i111 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i111++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i110++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i110 + " skippedCloud=" + i111);
                                                            return "已处理 " + i110 + " 个本地存档，跳过 " + i111 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity6.f121a;
                                                            m4Var3.getClass();
                                                            int i112 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i112++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i110++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i110 + " skippedCloud=" + i112);
                                                            return "已处理 " + i110 + " 个本地存档，跳过 " + i112 + " 个云存档";
                                                        default:
                                                            int i113 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity6.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity6).V1();
                                                            m4 m4Var4 = passportActivity6.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity6, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity6, sharedPreferences, str4, linkedHashMapL);
                                                                        i110++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i110 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i110);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i17 = PassportActivity.f120q;
                                            passportActivity5.getClass();
                                            final int i18 = 1;
                                            passportActivity5.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i19 = i18;
                                                    int i110 = 0;
                                                    PassportActivity passportActivity6 = passportActivity5;
                                                    switch (i19) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity6.f121a;
                                                            int i111 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i111++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i110++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i110 + " skippedCloud=" + i111);
                                                            return "已处理 " + i110 + " 个本地存档，跳过 " + i111 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity6.f121a;
                                                            m4Var3.getClass();
                                                            int i112 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i112++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i110++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i110 + " skippedCloud=" + i112);
                                                            return "已处理 " + i110 + " 个本地存档，跳过 " + i112 + " 个云存档";
                                                        default:
                                                            int i113 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity6.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity6).V1();
                                                            m4 m4Var4 = passportActivity6.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity6, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity6, sharedPreferences, str4, linkedHashMapL);
                                                                        i110++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i110 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i110);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity4, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 5:
                        final PassportActivity passportActivity5 = this.f1366b;
                        int size2 = passportActivity5.f121a.m().size();
                        int iJ2 = passportActivity5.f121a.j();
                        if (size2 != 0) {
                            final int i11 = 2;
                            new AlertDialog.Builder(passportActivity5).setTitle("清除所有通行证").setMessage("确定删除可操作的本地通行证？\n\n将跳过 " + iJ2 + " 个云存档；本地删除不可撤销。").setPositiveButton("全部删除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i12) {
                                    int i13 = i11;
                                    final PassportActivity passportActivity6 = passportActivity5;
                                    switch (i13) {
                                        case 0:
                                            int i14 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i15 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i19 = i15;
                                                    int i110 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i19) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i111 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i111++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i110++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i110 + " skippedCloud=" + i111);
                                                            return "已处理 " + i110 + " 个本地存档，跳过 " + i111 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i112 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i112++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i110++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i110 + " skippedCloud=" + i112);
                                                            return "已处理 " + i110 + " 个本地存档，跳过 " + i112 + " 个云存档";
                                                        default:
                                                            int i113 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i110++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i110 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i110);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i16 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i17 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i19 = i17;
                                                    int i110 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i19) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i111 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i111++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i110++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i110 + " skippedCloud=" + i111);
                                                            return "已处理 " + i110 + " 个本地存档，跳过 " + i111 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i112 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i112++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i110++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i110 + " skippedCloud=" + i112);
                                                            return "已处理 " + i110 + " 个本地存档，跳过 " + i112 + " 个云存档";
                                                        default:
                                                            int i113 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i110++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i110 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i110);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i18 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i19 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i110 = i19;
                                                    int i111 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i110) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i112 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i112++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i111 + " skippedCloud=" + i112);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i112 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i113 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i111 + " skippedCloud=" + i113);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        default:
                                                            int i114 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i111++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i111 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i111);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity5, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 6:
                        PassportActivity passportActivity6 = this.f1366b;
                        if (!passportActivity6.f130j.y().isLoggedIn()) {
                            Toast.makeText(passportActivity6, "请先登录爱发电", 0).show();
                        } else {
                            Toast.makeText(passportActivity6, "正在收集并加密全部存档...", 0).show();
                            new Thread(new c4(passportActivity6, i8), "sgscq-save-archive-export").start();
                        }
                        break;
                    default:
                        PassportActivity passportActivity7 = this.f1366b;
                        if (!passportActivity7.f130j.y().isLoggedIn()) {
                            Toast.makeText(passportActivity7, "请先登录爱发电", 0).show();
                        } else {
                            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                            intent.addCategory("android.intent.category.OPENABLE");
                            intent.setType("application/octet-stream");
                            passportActivity7.startActivityForResult(intent, 1004);
                        }
                        break;
                }
            }
        });
        frameLayout.addView(button, new FrameLayout.LayoutParams(p5.S0(88, this), p5.S0(34, this), 8388627));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        linearLayout2.setGravity(17);
        TextView textView = new TextView(this);
        textView.setText("存档管理");
        textView.setTextSize(18.0f);
        textView.setTextColor(p5.B);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setGravity(17);
        linearLayout2.addView(textView, b(-1, -2, 0, 0, 0));
        TextView textView2 = new TextView(this);
        this.f128h = textView2;
        textView2.setTextSize(11.0f);
        this.f128h.setTextColor(p5.C);
        this.f128h.setGravity(17);
        linearLayout2.addView(this.f128h, b(-1, -2, 0, 0, 0));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2, 17);
        layoutParams.leftMargin = p5.S0(104, this);
        layoutParams.rightMargin = p5.S0(104, this);
        frameLayout.addView(linearLayout2, layoutParams);
        View view = new View(this);
        view.setBackgroundColor(p5.C);
        boolean zS0 = p5.s0(this);
        ScrollView scrollView = new ScrollView(this);
        this.f123c = scrollView;
        scrollView.setFillViewport(true);
        this.f123c.setBackgroundColor(p5.x);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(1);
        linearLayout3.setPadding(p5.S0(14, this), p5.S0(16, this), p5.S0(14, this), p5.S0(20, this));
        linearLayout3.setBackgroundColor(p5.x);
        TextView textView3 = new TextView(this);
        this.f124d = textView3;
        textView3.setText("暂无存档\n\n点击新建空号后，从新手流程重新开始");
        this.f124d.setTextSize(14.0f);
        this.f124d.setTextColor(p5.G);
        this.f124d.setGravity(17);
        this.f124d.setPadding(p5.S0(20, this), p5.S0(60, this), p5.S0(20, this), p5.S0(20, this));
        this.f124d.setVisibility(8);
        linearLayout3.addView(this.f124d, b(-1, -2, 0, 0, 0));
        LinearLayout linearLayout4 = new LinearLayout(this);
        this.f122b = linearLayout4;
        linearLayout4.setOrientation(1);
        linearLayout3.addView(this.f122b, b(-1, -2, 0, 0, 0));
        this.f123c.addView(linearLayout3, b(-1, -1, 0, 0, 0));
        c5 c5Var = new c5(this);
        LinearLayout linearLayout5 = new LinearLayout(this);
        linearLayout5.setOrientation(!zS0 ? 1 : 0);
        linearLayout5.setGravity(17);
        if (zS0) {
            i2 = 10;
            iS0 = p5.S0(10, this);
            i3 = 14;
        } else {
            i2 = 10;
            i3 = 14;
            iS0 = p5.S0(14, this);
        }
        linearLayout5.setPadding(iS0, zS0 ? p5.S0(12, this) : p5.S0(i2, this), zS0 ? p5.S0(i2, this) : p5.S0(i3, this), zS0 ? p5.S0(12, this) : p5.S0(i2, this));
        linearLayout5.setBackgroundColor(p5.x);
        LinearLayout linearLayout6 = new LinearLayout(this);
        linearLayout6.setOrientation(zS0 ? 1 : 0);
        linearLayout6.setGravity(17);
        final int i8 = 1;
        Button buttonC = c("新建本地空号", new View.OnClickListener(this) { // from class: com.sgscq.vpn.s3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PassportActivity f1366b;

            {
                this.f1366b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                final int i9 = 1;
                final int i10 = 0;
                switch (i8) {
                    case 0:
                        int i11 = PassportActivity.f120q;
                        this.f1366b.finish();
                        break;
                    case 1:
                        PassportActivity passportActivity = this.f1366b;
                        m4 m4Var = passportActivity.f121a;
                        String strD = m4Var.d();
                        m4Var.w(strD);
                        Toast.makeText(passportActivity, "已新建本地空号并切换: " + m4.f(strD), 0).show();
                        passportActivity.f();
                        break;
                    case 2:
                        PassportActivity passportActivity2 = this.f1366b;
                        com.sgscq.vpn.cloud.q0 q0Var = passportActivity2.f133m;
                        if (q0Var != null) {
                            Button button2 = passportActivity2.f125e;
                            if (button2 != null) {
                                button2.setEnabled(false);
                            }
                            new Thread(new f4(passportActivity2, q0Var, i9), "cloud-save-create").start();
                        } else {
                            Toast.makeText(passportActivity2, "云存档状态正在加载，请稍候", 0).show();
                        }
                        break;
                    case 3:
                        final PassportActivity passportActivity3 = this.f1366b;
                        int size = passportActivity3.f121a.m().size();
                        int iJ = passportActivity3.f121a.j();
                        if (size != 0) {
                            new AlertDialog.Builder(passportActivity3).setTitle("清除所有玩家数据").setMessage("确定清除可操作的本地玩家存档和引导进度？\n\n将跳过 " + iJ + " 个云存档；通行证记录会保留。").setPositiveButton("清除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i12) {
                                    int i13 = i10;
                                    final PassportActivity passportActivity6 = passportActivity3;
                                    switch (i13) {
                                        case 0:
                                            int i14 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i15 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i110 = i15;
                                                    int i111 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i110) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i112 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i112++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i111 + " skippedCloud=" + i112);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i112 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i113 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i111 + " skippedCloud=" + i113);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        default:
                                                            int i114 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i111++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i111 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i111);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i16 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i17 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i110 = i17;
                                                    int i111 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i110) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i112 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i112++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i111 + " skippedCloud=" + i112);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i112 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i113 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i111 + " skippedCloud=" + i113);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        default:
                                                            int i114 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i111++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i111 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i111);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i18 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i19 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i110 = i19;
                                                    int i111 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i110) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i112 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i112++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i111 + " skippedCloud=" + i112);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i112 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i113 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i111 + " skippedCloud=" + i113);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        default:
                                                            int i114 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i111++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i111 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i111);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity3, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 4:
                        final PassportActivity passportActivity4 = this.f1366b;
                        if (passportActivity4.f121a.m().size() != 0) {
                            new AlertDialog.Builder(passportActivity4).setTitle("修复臣服魂魄").setMessage("扫描本机全部本地存档：把「觉醒臣服」历史上被错发成神将卡的奖励回收，并按配置补发对应数量的魂魄。\n\n如果该神将因为这张卡已经到手（可能已经上阵或培养过），会连同技能、上阵/副将绑定一起删除，无法撤销。\n\n已经按正确方式领取过的存档不会被重复补发。云存档请先下载到本机再修复。").setPositiveButton("开始修复", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i12) {
                                    int i13 = i9;
                                    final PassportActivity passportActivity6 = passportActivity4;
                                    switch (i13) {
                                        case 0:
                                            int i14 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i15 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i110 = i15;
                                                    int i111 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i110) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i112 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i112++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i111 + " skippedCloud=" + i112);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i112 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i113 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i111 + " skippedCloud=" + i113);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        default:
                                                            int i114 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i111++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i111 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i111);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i16 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i17 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i110 = i17;
                                                    int i111 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i110) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i112 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i112++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i111 + " skippedCloud=" + i112);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i112 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i113 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i111 + " skippedCloud=" + i113);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        default:
                                                            int i114 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i111++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i111 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i111);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i18 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i19 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i110 = i19;
                                                    int i111 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i110) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i112 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i112++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i111 + " skippedCloud=" + i112);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i112 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i113 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i111 + " skippedCloud=" + i113);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        default:
                                                            int i114 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i111++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i111 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i111);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity4, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 5:
                        final PassportActivity passportActivity5 = this.f1366b;
                        int size2 = passportActivity5.f121a.m().size();
                        int iJ2 = passportActivity5.f121a.j();
                        if (size2 != 0) {
                            final int i12 = 2;
                            new AlertDialog.Builder(passportActivity5).setTitle("清除所有通行证").setMessage("确定删除可操作的本地通行证？\n\n将跳过 " + iJ2 + " 个云存档；本地删除不可撤销。").setPositiveButton("全部删除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i13) {
                                    int i14 = i12;
                                    final PassportActivity passportActivity6 = passportActivity5;
                                    switch (i14) {
                                        case 0:
                                            int i15 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i16 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i110 = i16;
                                                    int i111 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i110) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i112 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i112++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i111 + " skippedCloud=" + i112);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i112 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i113 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i111 + " skippedCloud=" + i113);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        default:
                                                            int i114 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i111++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i111 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i111);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i17 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i18 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i110 = i18;
                                                    int i111 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i110) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i112 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i112++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i111 + " skippedCloud=" + i112);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i112 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i113 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i111++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i111 + " skippedCloud=" + i113);
                                                            return "已处理 " + i111 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        default:
                                                            int i114 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i111++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i111 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i111);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i19 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i110 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i111 = i110;
                                                    int i112 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i111) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i113 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i112 + " skippedCloud=" + i113);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i114 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i112 + " skippedCloud=" + i114);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        default:
                                                            int i115 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i112++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i112 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i112);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity5, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 6:
                        PassportActivity passportActivity6 = this.f1366b;
                        if (!passportActivity6.f130j.y().isLoggedIn()) {
                            Toast.makeText(passportActivity6, "请先登录爱发电", 0).show();
                        } else {
                            Toast.makeText(passportActivity6, "正在收集并加密全部存档...", 0).show();
                            new Thread(new c4(passportActivity6, i9), "sgscq-save-archive-export").start();
                        }
                        break;
                    default:
                        PassportActivity passportActivity7 = this.f1366b;
                        if (!passportActivity7.f130j.y().isLoggedIn()) {
                            Toast.makeText(passportActivity7, "请先登录爱发电", 0).show();
                        } else {
                            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                            intent.addCategory("android.intent.category.OPENABLE");
                            intent.setType("application/octet-stream");
                            passportActivity7.startActivityForResult(intent, 1004);
                        }
                        break;
                }
            }
        });
        final int i9 = 2;
        Button buttonC2 = c("新建云存档空号", new View.OnClickListener(this) { // from class: com.sgscq.vpn.s3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PassportActivity f1366b;

            {
                this.f1366b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                final int i10 = 1;
                final int i11 = 0;
                switch (i9) {
                    case 0:
                        int i12 = PassportActivity.f120q;
                        this.f1366b.finish();
                        break;
                    case 1:
                        PassportActivity passportActivity = this.f1366b;
                        m4 m4Var = passportActivity.f121a;
                        String strD = m4Var.d();
                        m4Var.w(strD);
                        Toast.makeText(passportActivity, "已新建本地空号并切换: " + m4.f(strD), 0).show();
                        passportActivity.f();
                        break;
                    case 2:
                        PassportActivity passportActivity2 = this.f1366b;
                        com.sgscq.vpn.cloud.q0 q0Var = passportActivity2.f133m;
                        if (q0Var != null) {
                            Button button2 = passportActivity2.f125e;
                            if (button2 != null) {
                                button2.setEnabled(false);
                            }
                            new Thread(new f4(passportActivity2, q0Var, i10), "cloud-save-create").start();
                        } else {
                            Toast.makeText(passportActivity2, "云存档状态正在加载，请稍候", 0).show();
                        }
                        break;
                    case 3:
                        final PassportActivity passportActivity3 = this.f1366b;
                        int size = passportActivity3.f121a.m().size();
                        int iJ = passportActivity3.f121a.j();
                        if (size != 0) {
                            new AlertDialog.Builder(passportActivity3).setTitle("清除所有玩家数据").setMessage("确定清除可操作的本地玩家存档和引导进度？\n\n将跳过 " + iJ + " 个云存档；通行证记录会保留。").setPositiveButton("清除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i13) {
                                    int i14 = i11;
                                    final PassportActivity passportActivity6 = passportActivity3;
                                    switch (i14) {
                                        case 0:
                                            int i15 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i16 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i111 = i16;
                                                    int i112 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i111) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i113 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i112 + " skippedCloud=" + i113);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i114 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i112 + " skippedCloud=" + i114);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        default:
                                                            int i115 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i112++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i112 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i112);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i17 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i18 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i111 = i18;
                                                    int i112 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i111) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i113 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i112 + " skippedCloud=" + i113);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i114 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i112 + " skippedCloud=" + i114);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        default:
                                                            int i115 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i112++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i112 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i112);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i19 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i110 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i111 = i110;
                                                    int i112 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i111) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i113 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i112 + " skippedCloud=" + i113);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i114 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i112 + " skippedCloud=" + i114);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        default:
                                                            int i115 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i112++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i112 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i112);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity3, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 4:
                        final PassportActivity passportActivity4 = this.f1366b;
                        if (passportActivity4.f121a.m().size() != 0) {
                            new AlertDialog.Builder(passportActivity4).setTitle("修复臣服魂魄").setMessage("扫描本机全部本地存档：把「觉醒臣服」历史上被错发成神将卡的奖励回收，并按配置补发对应数量的魂魄。\n\n如果该神将因为这张卡已经到手（可能已经上阵或培养过），会连同技能、上阵/副将绑定一起删除，无法撤销。\n\n已经按正确方式领取过的存档不会被重复补发。云存档请先下载到本机再修复。").setPositiveButton("开始修复", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i13) {
                                    int i14 = i10;
                                    final PassportActivity passportActivity6 = passportActivity4;
                                    switch (i14) {
                                        case 0:
                                            int i15 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i16 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i111 = i16;
                                                    int i112 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i111) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i113 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i112 + " skippedCloud=" + i113);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i114 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i112 + " skippedCloud=" + i114);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        default:
                                                            int i115 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i112++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i112 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i112);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i17 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i18 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i111 = i18;
                                                    int i112 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i111) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i113 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i112 + " skippedCloud=" + i113);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i114 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i112 + " skippedCloud=" + i114);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        default:
                                                            int i115 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i112++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i112 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i112);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i19 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i110 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i111 = i110;
                                                    int i112 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i111) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i113 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i112 + " skippedCloud=" + i113);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i114 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i112 + " skippedCloud=" + i114);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        default:
                                                            int i115 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i112++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i112 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i112);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity4, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 5:
                        final PassportActivity passportActivity5 = this.f1366b;
                        int size2 = passportActivity5.f121a.m().size();
                        int iJ2 = passportActivity5.f121a.j();
                        if (size2 != 0) {
                            final int i13 = 2;
                            new AlertDialog.Builder(passportActivity5).setTitle("清除所有通行证").setMessage("确定删除可操作的本地通行证？\n\n将跳过 " + iJ2 + " 个云存档；本地删除不可撤销。").setPositiveButton("全部删除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i14) {
                                    int i15 = i13;
                                    final PassportActivity passportActivity6 = passportActivity5;
                                    switch (i15) {
                                        case 0:
                                            int i16 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i17 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i111 = i17;
                                                    int i112 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i111) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i113 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i112 + " skippedCloud=" + i113);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i114 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i112 + " skippedCloud=" + i114);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        default:
                                                            int i115 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i112++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i112 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i112);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i18 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i19 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i111 = i19;
                                                    int i112 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i111) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i113 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i113++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i112 + " skippedCloud=" + i113);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i113 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i114 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i112++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i112 + " skippedCloud=" + i114);
                                                            return "已处理 " + i112 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        default:
                                                            int i115 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i112++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i112 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i112);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i110 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i111 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i112 = i111;
                                                    int i113 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i112) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i114 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i113 + " skippedCloud=" + i114);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i115 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i113 + " skippedCloud=" + i115);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        default:
                                                            int i116 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i113++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i113 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i113);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity5, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 6:
                        PassportActivity passportActivity6 = this.f1366b;
                        if (!passportActivity6.f130j.y().isLoggedIn()) {
                            Toast.makeText(passportActivity6, "请先登录爱发电", 0).show();
                        } else {
                            Toast.makeText(passportActivity6, "正在收集并加密全部存档...", 0).show();
                            new Thread(new c4(passportActivity6, i10), "sgscq-save-archive-export").start();
                        }
                        break;
                    default:
                        PassportActivity passportActivity7 = this.f1366b;
                        if (!passportActivity7.f130j.y().isLoggedIn()) {
                            Toast.makeText(passportActivity7, "请先登录爱发电", 0).show();
                        } else {
                            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                            intent.addCategory("android.intent.category.OPENABLE");
                            intent.setType("application/octet-stream");
                            passportActivity7.startActivityForResult(intent, 1004);
                        }
                        break;
                }
            }
        });
        this.f125e = buttonC2;
        buttonC2.setEnabled(false);
        this.f125e.setAlpha(0.45f);
        final int i10 = 3;
        Button buttonC3 = c("清除玩家数据", new View.OnClickListener(this) { // from class: com.sgscq.vpn.s3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PassportActivity f1366b;

            {
                this.f1366b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                final int i11 = 1;
                final int i12 = 0;
                switch (i10) {
                    case 0:
                        int i13 = PassportActivity.f120q;
                        this.f1366b.finish();
                        break;
                    case 1:
                        PassportActivity passportActivity = this.f1366b;
                        m4 m4Var = passportActivity.f121a;
                        String strD = m4Var.d();
                        m4Var.w(strD);
                        Toast.makeText(passportActivity, "已新建本地空号并切换: " + m4.f(strD), 0).show();
                        passportActivity.f();
                        break;
                    case 2:
                        PassportActivity passportActivity2 = this.f1366b;
                        com.sgscq.vpn.cloud.q0 q0Var = passportActivity2.f133m;
                        if (q0Var != null) {
                            Button button2 = passportActivity2.f125e;
                            if (button2 != null) {
                                button2.setEnabled(false);
                            }
                            new Thread(new f4(passportActivity2, q0Var, i11), "cloud-save-create").start();
                        } else {
                            Toast.makeText(passportActivity2, "云存档状态正在加载，请稍候", 0).show();
                        }
                        break;
                    case 3:
                        final PassportActivity passportActivity3 = this.f1366b;
                        int size = passportActivity3.f121a.m().size();
                        int iJ = passportActivity3.f121a.j();
                        if (size != 0) {
                            new AlertDialog.Builder(passportActivity3).setTitle("清除所有玩家数据").setMessage("确定清除可操作的本地玩家存档和引导进度？\n\n将跳过 " + iJ + " 个云存档；通行证记录会保留。").setPositiveButton("清除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i14) {
                                    int i15 = i12;
                                    final PassportActivity passportActivity6 = passportActivity3;
                                    switch (i15) {
                                        case 0:
                                            int i16 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i17 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i112 = i17;
                                                    int i113 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i112) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i114 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i113 + " skippedCloud=" + i114);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i115 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i113 + " skippedCloud=" + i115);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        default:
                                                            int i116 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i113++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i113 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i113);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i18 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i19 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i112 = i19;
                                                    int i113 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i112) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i114 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i113 + " skippedCloud=" + i114);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i115 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i113 + " skippedCloud=" + i115);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        default:
                                                            int i116 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i113++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i113 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i113);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i110 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i111 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i112 = i111;
                                                    int i113 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i112) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i114 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i113 + " skippedCloud=" + i114);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i115 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i113 + " skippedCloud=" + i115);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        default:
                                                            int i116 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i113++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i113 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i113);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity3, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 4:
                        final PassportActivity passportActivity4 = this.f1366b;
                        if (passportActivity4.f121a.m().size() != 0) {
                            new AlertDialog.Builder(passportActivity4).setTitle("修复臣服魂魄").setMessage("扫描本机全部本地存档：把「觉醒臣服」历史上被错发成神将卡的奖励回收，并按配置补发对应数量的魂魄。\n\n如果该神将因为这张卡已经到手（可能已经上阵或培养过），会连同技能、上阵/副将绑定一起删除，无法撤销。\n\n已经按正确方式领取过的存档不会被重复补发。云存档请先下载到本机再修复。").setPositiveButton("开始修复", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i14) {
                                    int i15 = i11;
                                    final PassportActivity passportActivity6 = passportActivity4;
                                    switch (i15) {
                                        case 0:
                                            int i16 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i17 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i112 = i17;
                                                    int i113 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i112) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i114 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i113 + " skippedCloud=" + i114);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i115 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i113 + " skippedCloud=" + i115);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        default:
                                                            int i116 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i113++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i113 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i113);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i18 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i19 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i112 = i19;
                                                    int i113 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i112) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i114 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i113 + " skippedCloud=" + i114);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i115 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i113 + " skippedCloud=" + i115);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        default:
                                                            int i116 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i113++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i113 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i113);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i110 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i111 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i112 = i111;
                                                    int i113 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i112) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i114 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i113 + " skippedCloud=" + i114);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i115 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i113 + " skippedCloud=" + i115);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        default:
                                                            int i116 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i113++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i113 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i113);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity4, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 5:
                        final PassportActivity passportActivity5 = this.f1366b;
                        int size2 = passportActivity5.f121a.m().size();
                        int iJ2 = passportActivity5.f121a.j();
                        if (size2 != 0) {
                            final int i14 = 2;
                            new AlertDialog.Builder(passportActivity5).setTitle("清除所有通行证").setMessage("确定删除可操作的本地通行证？\n\n将跳过 " + iJ2 + " 个云存档；本地删除不可撤销。").setPositiveButton("全部删除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i15) {
                                    int i16 = i14;
                                    final PassportActivity passportActivity6 = passportActivity5;
                                    switch (i16) {
                                        case 0:
                                            int i17 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i18 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i112 = i18;
                                                    int i113 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i112) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i114 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i113 + " skippedCloud=" + i114);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i115 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i113 + " skippedCloud=" + i115);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        default:
                                                            int i116 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i113++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i113 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i113);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i19 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i110 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i112 = i110;
                                                    int i113 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i112) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i114 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i114++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i113 + " skippedCloud=" + i114);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i114 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i115 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i113++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i113 + " skippedCloud=" + i115);
                                                            return "已处理 " + i113 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        default:
                                                            int i116 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i113++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i113 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i113);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i111 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i112 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i113 = i112;
                                                    int i114 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i113) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i115 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i114 + " skippedCloud=" + i115);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i116 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i114 + " skippedCloud=" + i116);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        default:
                                                            int i117 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i114++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i114 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i114);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity5, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 6:
                        PassportActivity passportActivity6 = this.f1366b;
                        if (!passportActivity6.f130j.y().isLoggedIn()) {
                            Toast.makeText(passportActivity6, "请先登录爱发电", 0).show();
                        } else {
                            Toast.makeText(passportActivity6, "正在收集并加密全部存档...", 0).show();
                            new Thread(new c4(passportActivity6, i11), "sgscq-save-archive-export").start();
                        }
                        break;
                    default:
                        PassportActivity passportActivity7 = this.f1366b;
                        if (!passportActivity7.f130j.y().isLoggedIn()) {
                            Toast.makeText(passportActivity7, "请先登录爱发电", 0).show();
                        } else {
                            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                            intent.addCategory("android.intent.category.OPENABLE");
                            intent.setType("application/octet-stream");
                            passportActivity7.startActivityForResult(intent, 1004);
                        }
                        break;
                }
            }
        });
        final int i11 = 4;
        Button buttonC4 = c("修复臣服魂魄", new View.OnClickListener(this) { // from class: com.sgscq.vpn.s3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PassportActivity f1366b;

            {
                this.f1366b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                final int i12 = 1;
                final int i13 = 0;
                switch (i11) {
                    case 0:
                        int i14 = PassportActivity.f120q;
                        this.f1366b.finish();
                        break;
                    case 1:
                        PassportActivity passportActivity = this.f1366b;
                        m4 m4Var = passportActivity.f121a;
                        String strD = m4Var.d();
                        m4Var.w(strD);
                        Toast.makeText(passportActivity, "已新建本地空号并切换: " + m4.f(strD), 0).show();
                        passportActivity.f();
                        break;
                    case 2:
                        PassportActivity passportActivity2 = this.f1366b;
                        com.sgscq.vpn.cloud.q0 q0Var = passportActivity2.f133m;
                        if (q0Var != null) {
                            Button button2 = passportActivity2.f125e;
                            if (button2 != null) {
                                button2.setEnabled(false);
                            }
                            new Thread(new f4(passportActivity2, q0Var, i12), "cloud-save-create").start();
                        } else {
                            Toast.makeText(passportActivity2, "云存档状态正在加载，请稍候", 0).show();
                        }
                        break;
                    case 3:
                        final PassportActivity passportActivity3 = this.f1366b;
                        int size = passportActivity3.f121a.m().size();
                        int iJ = passportActivity3.f121a.j();
                        if (size != 0) {
                            new AlertDialog.Builder(passportActivity3).setTitle("清除所有玩家数据").setMessage("确定清除可操作的本地玩家存档和引导进度？\n\n将跳过 " + iJ + " 个云存档；通行证记录会保留。").setPositiveButton("清除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i15) {
                                    int i16 = i13;
                                    final PassportActivity passportActivity6 = passportActivity3;
                                    switch (i16) {
                                        case 0:
                                            int i17 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i18 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i113 = i18;
                                                    int i114 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i113) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i115 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i114 + " skippedCloud=" + i115);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i116 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i114 + " skippedCloud=" + i116);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        default:
                                                            int i117 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i114++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i114 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i114);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i19 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i110 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i113 = i110;
                                                    int i114 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i113) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i115 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i114 + " skippedCloud=" + i115);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i116 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i114 + " skippedCloud=" + i116);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        default:
                                                            int i117 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i114++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i114 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i114);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i111 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i112 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i113 = i112;
                                                    int i114 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i113) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i115 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i114 + " skippedCloud=" + i115);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i116 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i114 + " skippedCloud=" + i116);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        default:
                                                            int i117 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i114++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i114 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i114);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity3, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 4:
                        final PassportActivity passportActivity4 = this.f1366b;
                        if (passportActivity4.f121a.m().size() != 0) {
                            new AlertDialog.Builder(passportActivity4).setTitle("修复臣服魂魄").setMessage("扫描本机全部本地存档：把「觉醒臣服」历史上被错发成神将卡的奖励回收，并按配置补发对应数量的魂魄。\n\n如果该神将因为这张卡已经到手（可能已经上阵或培养过），会连同技能、上阵/副将绑定一起删除，无法撤销。\n\n已经按正确方式领取过的存档不会被重复补发。云存档请先下载到本机再修复。").setPositiveButton("开始修复", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i15) {
                                    int i16 = i12;
                                    final PassportActivity passportActivity6 = passportActivity4;
                                    switch (i16) {
                                        case 0:
                                            int i17 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i18 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i113 = i18;
                                                    int i114 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i113) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i115 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i114 + " skippedCloud=" + i115);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i116 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i114 + " skippedCloud=" + i116);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        default:
                                                            int i117 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i114++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i114 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i114);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i19 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i110 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i113 = i110;
                                                    int i114 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i113) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i115 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i114 + " skippedCloud=" + i115);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i116 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i114 + " skippedCloud=" + i116);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        default:
                                                            int i117 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i114++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i114 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i114);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i111 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i112 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i113 = i112;
                                                    int i114 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i113) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i115 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i114 + " skippedCloud=" + i115);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i116 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i114 + " skippedCloud=" + i116);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        default:
                                                            int i117 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i114++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i114 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i114);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity4, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 5:
                        final PassportActivity passportActivity5 = this.f1366b;
                        int size2 = passportActivity5.f121a.m().size();
                        int iJ2 = passportActivity5.f121a.j();
                        if (size2 != 0) {
                            final int i15 = 2;
                            new AlertDialog.Builder(passportActivity5).setTitle("清除所有通行证").setMessage("确定删除可操作的本地通行证？\n\n将跳过 " + iJ2 + " 个云存档；本地删除不可撤销。").setPositiveButton("全部删除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i16) {
                                    int i17 = i15;
                                    final PassportActivity passportActivity6 = passportActivity5;
                                    switch (i17) {
                                        case 0:
                                            int i18 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i19 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i113 = i19;
                                                    int i114 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i113) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i115 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i114 + " skippedCloud=" + i115);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i116 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i114 + " skippedCloud=" + i116);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        default:
                                                            int i117 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i114++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i114 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i114);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i110 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i111 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i113 = i111;
                                                    int i114 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i113) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i115 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i115++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i114 + " skippedCloud=" + i115);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i115 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i116 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i114++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i114 + " skippedCloud=" + i116);
                                                            return "已处理 " + i114 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        default:
                                                            int i117 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i114++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i114 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i114);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i112 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i113 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i114 = i113;
                                                    int i115 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i114) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i116 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i115 + " skippedCloud=" + i116);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i117 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i117++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i115 + " skippedCloud=" + i117);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i117 + " 个云存档";
                                                        default:
                                                            int i118 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i115++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i115 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i115);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity5, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 6:
                        PassportActivity passportActivity6 = this.f1366b;
                        if (!passportActivity6.f130j.y().isLoggedIn()) {
                            Toast.makeText(passportActivity6, "请先登录爱发电", 0).show();
                        } else {
                            Toast.makeText(passportActivity6, "正在收集并加密全部存档...", 0).show();
                            new Thread(new c4(passportActivity6, i12), "sgscq-save-archive-export").start();
                        }
                        break;
                    default:
                        PassportActivity passportActivity7 = this.f1366b;
                        if (!passportActivity7.f130j.y().isLoggedIn()) {
                            Toast.makeText(passportActivity7, "请先登录爱发电", 0).show();
                        } else {
                            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                            intent.addCategory("android.intent.category.OPENABLE");
                            intent.setType("application/octet-stream");
                            passportActivity7.startActivityForResult(intent, 1004);
                        }
                        break;
                }
            }
        });
        final int i12 = 5;
        View.OnClickListener onClickListener = new View.OnClickListener(this) { // from class: com.sgscq.vpn.s3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PassportActivity f1366b;

            {
                this.f1366b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                final int i13 = 1;
                final int i14 = 0;
                switch (i12) {
                    case 0:
                        int i15 = PassportActivity.f120q;
                        this.f1366b.finish();
                        break;
                    case 1:
                        PassportActivity passportActivity = this.f1366b;
                        m4 m4Var = passportActivity.f121a;
                        String strD = m4Var.d();
                        m4Var.w(strD);
                        Toast.makeText(passportActivity, "已新建本地空号并切换: " + m4.f(strD), 0).show();
                        passportActivity.f();
                        break;
                    case 2:
                        PassportActivity passportActivity2 = this.f1366b;
                        com.sgscq.vpn.cloud.q0 q0Var = passportActivity2.f133m;
                        if (q0Var != null) {
                            Button button2 = passportActivity2.f125e;
                            if (button2 != null) {
                                button2.setEnabled(false);
                            }
                            new Thread(new f4(passportActivity2, q0Var, i13), "cloud-save-create").start();
                        } else {
                            Toast.makeText(passportActivity2, "云存档状态正在加载，请稍候", 0).show();
                        }
                        break;
                    case 3:
                        final PassportActivity passportActivity3 = this.f1366b;
                        int size = passportActivity3.f121a.m().size();
                        int iJ = passportActivity3.f121a.j();
                        if (size != 0) {
                            new AlertDialog.Builder(passportActivity3).setTitle("清除所有玩家数据").setMessage("确定清除可操作的本地玩家存档和引导进度？\n\n将跳过 " + iJ + " 个云存档；通行证记录会保留。").setPositiveButton("清除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i16) {
                                    int i17 = i14;
                                    final PassportActivity passportActivity6 = passportActivity3;
                                    switch (i17) {
                                        case 0:
                                            int i18 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i19 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i114 = i19;
                                                    int i115 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i114) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i116 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i115 + " skippedCloud=" + i116);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i117 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i117++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i115 + " skippedCloud=" + i117);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i117 + " 个云存档";
                                                        default:
                                                            int i118 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i115++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i115 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i115);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i110 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i111 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i114 = i111;
                                                    int i115 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i114) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i116 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i115 + " skippedCloud=" + i116);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i117 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i117++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i115 + " skippedCloud=" + i117);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i117 + " 个云存档";
                                                        default:
                                                            int i118 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i115++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i115 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i115);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i112 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i113 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i114 = i113;
                                                    int i115 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i114) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i116 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i115 + " skippedCloud=" + i116);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i117 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i117++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i115 + " skippedCloud=" + i117);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i117 + " 个云存档";
                                                        default:
                                                            int i118 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i115++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i115 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i115);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity3, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 4:
                        final PassportActivity passportActivity4 = this.f1366b;
                        if (passportActivity4.f121a.m().size() != 0) {
                            new AlertDialog.Builder(passportActivity4).setTitle("修复臣服魂魄").setMessage("扫描本机全部本地存档：把「觉醒臣服」历史上被错发成神将卡的奖励回收，并按配置补发对应数量的魂魄。\n\n如果该神将因为这张卡已经到手（可能已经上阵或培养过），会连同技能、上阵/副将绑定一起删除，无法撤销。\n\n已经按正确方式领取过的存档不会被重复补发。云存档请先下载到本机再修复。").setPositiveButton("开始修复", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i16) {
                                    int i17 = i13;
                                    final PassportActivity passportActivity6 = passportActivity4;
                                    switch (i17) {
                                        case 0:
                                            int i18 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i19 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i114 = i19;
                                                    int i115 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i114) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i116 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i115 + " skippedCloud=" + i116);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i117 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i117++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i115 + " skippedCloud=" + i117);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i117 + " 个云存档";
                                                        default:
                                                            int i118 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i115++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i115 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i115);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i110 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i111 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i114 = i111;
                                                    int i115 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i114) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i116 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i115 + " skippedCloud=" + i116);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i117 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i117++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i115 + " skippedCloud=" + i117);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i117 + " 个云存档";
                                                        default:
                                                            int i118 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i115++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i115 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i115);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i112 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i113 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i114 = i113;
                                                    int i115 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i114) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i116 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i115 + " skippedCloud=" + i116);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i117 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i117++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i115 + " skippedCloud=" + i117);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i117 + " 个云存档";
                                                        default:
                                                            int i118 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i115++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i115 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i115);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity4, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 5:
                        final PassportActivity passportActivity5 = this.f1366b;
                        int size2 = passportActivity5.f121a.m().size();
                        int iJ2 = passportActivity5.f121a.j();
                        if (size2 != 0) {
                            final int i16 = 2;
                            new AlertDialog.Builder(passportActivity5).setTitle("清除所有通行证").setMessage("确定删除可操作的本地通行证？\n\n将跳过 " + iJ2 + " 个云存档；本地删除不可撤销。").setPositiveButton("全部删除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i17) {
                                    int i18 = i16;
                                    final PassportActivity passportActivity6 = passportActivity5;
                                    switch (i18) {
                                        case 0:
                                            int i19 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i110 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i114 = i110;
                                                    int i115 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i114) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i116 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i115 + " skippedCloud=" + i116);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i117 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i117++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i115 + " skippedCloud=" + i117);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i117 + " 个云存档";
                                                        default:
                                                            int i118 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i115++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i115 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i115);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i111 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i112 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i114 = i112;
                                                    int i115 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i114) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i116 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i116++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i115 + " skippedCloud=" + i116);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i116 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i117 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i117++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i115++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i115 + " skippedCloud=" + i117);
                                                            return "已处理 " + i115 + " 个本地存档，跳过 " + i117 + " 个云存档";
                                                        default:
                                                            int i118 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i115++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i115 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i115);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i113 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i114 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i115 = i114;
                                                    int i116 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i115) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i117 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i117++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i116++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i116 + " skippedCloud=" + i117);
                                                            return "已处理 " + i116 + " 个本地存档，跳过 " + i117 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i118 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i118++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i116++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i116 + " skippedCloud=" + i118);
                                                            return "已处理 " + i116 + " 个本地存档，跳过 " + i118 + " 个云存档";
                                                        default:
                                                            int i119 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i116++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i116 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i116);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity5, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 6:
                        PassportActivity passportActivity6 = this.f1366b;
                        if (!passportActivity6.f130j.y().isLoggedIn()) {
                            Toast.makeText(passportActivity6, "请先登录爱发电", 0).show();
                        } else {
                            Toast.makeText(passportActivity6, "正在收集并加密全部存档...", 0).show();
                            new Thread(new c4(passportActivity6, i13), "sgscq-save-archive-export").start();
                        }
                        break;
                    default:
                        PassportActivity passportActivity7 = this.f1366b;
                        if (!passportActivity7.f130j.y().isLoggedIn()) {
                            Toast.makeText(passportActivity7, "请先登录爱发电", 0).show();
                        } else {
                            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                            intent.addCategory("android.intent.category.OPENABLE");
                            intent.setType("application/octet-stream");
                            passportActivity7.startActivityForResult(intent, 1004);
                        }
                        break;
                }
            }
        };
        Button button2 = new Button(this);
        button2.setText("清除通行证");
        button2.setTextSize(13.0f);
        button2.setTextColor(p5.D);
        button2.setAllCaps(false);
        button2.setMinHeight(0);
        button2.setMinimumHeight(0);
        button2.setPadding(p5.S0(14, this), 0, p5.S0(14, this), 0);
        float fS0 = p5.S0(8, this);
        int i13 = p5.D;
        int i14 = p5.x;
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(0);
        gradientDrawable2.setCornerRadius(fS0);
        gradientDrawable2.setColor(i14);
        gradientDrawable2.setStroke(p5.S0(1, this), i13);
        p5.i(button2, gradientDrawable2, p5.y0(p5.x, p5.S0(8, this), getResources().getDisplayMetrics().density));
        button2.setOnClickListener(onClickListener);
        final int i15 = 6;
        this.f126f = c("导出全部存档", new View.OnClickListener(this) { // from class: com.sgscq.vpn.s3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PassportActivity f1366b;

            {
                this.f1366b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                final int i16 = 1;
                final int i17 = 0;
                switch (i15) {
                    case 0:
                        int i18 = PassportActivity.f120q;
                        this.f1366b.finish();
                        break;
                    case 1:
                        PassportActivity passportActivity = this.f1366b;
                        m4 m4Var = passportActivity.f121a;
                        String strD = m4Var.d();
                        m4Var.w(strD);
                        Toast.makeText(passportActivity, "已新建本地空号并切换: " + m4.f(strD), 0).show();
                        passportActivity.f();
                        break;
                    case 2:
                        PassportActivity passportActivity2 = this.f1366b;
                        com.sgscq.vpn.cloud.q0 q0Var = passportActivity2.f133m;
                        if (q0Var != null) {
                            Button button3 = passportActivity2.f125e;
                            if (button3 != null) {
                                button3.setEnabled(false);
                            }
                            new Thread(new f4(passportActivity2, q0Var, i16), "cloud-save-create").start();
                        } else {
                            Toast.makeText(passportActivity2, "云存档状态正在加载，请稍候", 0).show();
                        }
                        break;
                    case 3:
                        final PassportActivity passportActivity3 = this.f1366b;
                        int size = passportActivity3.f121a.m().size();
                        int iJ = passportActivity3.f121a.j();
                        if (size != 0) {
                            new AlertDialog.Builder(passportActivity3).setTitle("清除所有玩家数据").setMessage("确定清除可操作的本地玩家存档和引导进度？\n\n将跳过 " + iJ + " 个云存档；通行证记录会保留。").setPositiveButton("清除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i19) {
                                    int i110 = i17;
                                    final PassportActivity passportActivity6 = passportActivity3;
                                    switch (i110) {
                                        case 0:
                                            int i111 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i112 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i115 = i112;
                                                    int i116 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i115) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i117 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i117++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i116++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i116 + " skippedCloud=" + i117);
                                                            return "已处理 " + i116 + " 个本地存档，跳过 " + i117 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i118 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i118++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i116++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i116 + " skippedCloud=" + i118);
                                                            return "已处理 " + i116 + " 个本地存档，跳过 " + i118 + " 个云存档";
                                                        default:
                                                            int i119 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i116++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i116 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i116);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i113 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i114 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i115 = i114;
                                                    int i116 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i115) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i117 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i117++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i116++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i116 + " skippedCloud=" + i117);
                                                            return "已处理 " + i116 + " 个本地存档，跳过 " + i117 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i118 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i118++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i116++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i116 + " skippedCloud=" + i118);
                                                            return "已处理 " + i116 + " 个本地存档，跳过 " + i118 + " 个云存档";
                                                        default:
                                                            int i119 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i116++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i116 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i116);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i115 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i116 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i117 = i116;
                                                    int i118 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i117) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i119 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i119++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i118++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i118 + " skippedCloud=" + i119);
                                                            return "已处理 " + i118 + " 个本地存档，跳过 " + i119 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i1110 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i1110++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i118++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i118 + " skippedCloud=" + i1110);
                                                            return "已处理 " + i118 + " 个本地存档，跳过 " + i1110 + " 个云存档";
                                                        default:
                                                            int i1111 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i118++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i118 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i118);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity3, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 4:
                        final PassportActivity passportActivity4 = this.f1366b;
                        if (passportActivity4.f121a.m().size() != 0) {
                            new AlertDialog.Builder(passportActivity4).setTitle("修复臣服魂魄").setMessage("扫描本机全部本地存档：把「觉醒臣服」历史上被错发成神将卡的奖励回收，并按配置补发对应数量的魂魄。\n\n如果该神将因为这张卡已经到手（可能已经上阵或培养过），会连同技能、上阵/副将绑定一起删除，无法撤销。\n\n已经按正确方式领取过的存档不会被重复补发。云存档请先下载到本机再修复。").setPositiveButton("开始修复", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i19) {
                                    int i110 = i16;
                                    final PassportActivity passportActivity6 = passportActivity4;
                                    switch (i110) {
                                        case 0:
                                            int i111 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i112 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i117 = i112;
                                                    int i118 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i117) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i119 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i119++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i118++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i118 + " skippedCloud=" + i119);
                                                            return "已处理 " + i118 + " 个本地存档，跳过 " + i119 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i1110 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i1110++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i118++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i118 + " skippedCloud=" + i1110);
                                                            return "已处理 " + i118 + " 个本地存档，跳过 " + i1110 + " 个云存档";
                                                        default:
                                                            int i1111 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i118++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i118 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i118);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i113 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i114 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i117 = i114;
                                                    int i118 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i117) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i119 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i119++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i118++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i118 + " skippedCloud=" + i119);
                                                            return "已处理 " + i118 + " 个本地存档，跳过 " + i119 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i1110 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i1110++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i118++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i118 + " skippedCloud=" + i1110);
                                                            return "已处理 " + i118 + " 个本地存档，跳过 " + i1110 + " 个云存档";
                                                        default:
                                                            int i1111 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i118++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i118 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i118);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i115 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i116 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i117 = i116;
                                                    int i118 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i117) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i119 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i119++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i118++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i118 + " skippedCloud=" + i119);
                                                            return "已处理 " + i118 + " 个本地存档，跳过 " + i119 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i1110 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i1110++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i118++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i118 + " skippedCloud=" + i1110);
                                                            return "已处理 " + i118 + " 个本地存档，跳过 " + i1110 + " 个云存档";
                                                        default:
                                                            int i1111 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i118++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i118 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i118);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity4, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 5:
                        final PassportActivity passportActivity5 = this.f1366b;
                        int size2 = passportActivity5.f121a.m().size();
                        int iJ2 = passportActivity5.f121a.j();
                        if (size2 != 0) {
                            final int i19 = 2;
                            new AlertDialog.Builder(passportActivity5).setTitle("清除所有通行证").setMessage("确定删除可操作的本地通行证？\n\n将跳过 " + iJ2 + " 个云存档；本地删除不可撤销。").setPositiveButton("全部删除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i110) {
                                    int i111 = i19;
                                    final PassportActivity passportActivity6 = passportActivity5;
                                    switch (i111) {
                                        case 0:
                                            int i112 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i113 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i117 = i113;
                                                    int i118 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i117) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i119 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i119++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i118++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i118 + " skippedCloud=" + i119);
                                                            return "已处理 " + i118 + " 个本地存档，跳过 " + i119 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i1110 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i1110++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i118++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i118 + " skippedCloud=" + i1110);
                                                            return "已处理 " + i118 + " 个本地存档，跳过 " + i1110 + " 个云存档";
                                                        default:
                                                            int i1111 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i118++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i118 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i118);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i114 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i115 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i117 = i115;
                                                    int i118 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i117) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i119 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i119++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i118++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i118 + " skippedCloud=" + i119);
                                                            return "已处理 " + i118 + " 个本地存档，跳过 " + i119 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i1110 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i1110++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i118++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i118 + " skippedCloud=" + i1110);
                                                            return "已处理 " + i118 + " 个本地存档，跳过 " + i1110 + " 个云存档";
                                                        default:
                                                            int i1111 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i118++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i118 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i118);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i116 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i117 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i118 = i117;
                                                    int i119 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i118) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i1110 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i1110++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i119 + " skippedCloud=" + i1110);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1110 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i1111 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i1111++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i119 + " skippedCloud=" + i1111);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1111 + " 个云存档";
                                                        default:
                                                            int i1112 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i119++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i119 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i119);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity5, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 6:
                        PassportActivity passportActivity6 = this.f1366b;
                        if (!passportActivity6.f130j.y().isLoggedIn()) {
                            Toast.makeText(passportActivity6, "请先登录爱发电", 0).show();
                        } else {
                            Toast.makeText(passportActivity6, "正在收集并加密全部存档...", 0).show();
                            new Thread(new c4(passportActivity6, i16), "sgscq-save-archive-export").start();
                        }
                        break;
                    default:
                        PassportActivity passportActivity7 = this.f1366b;
                        if (!passportActivity7.f130j.y().isLoggedIn()) {
                            Toast.makeText(passportActivity7, "请先登录爱发电", 0).show();
                        } else {
                            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                            intent.addCategory("android.intent.category.OPENABLE");
                            intent.setType("application/octet-stream");
                            passportActivity7.startActivityForResult(intent, 1004);
                        }
                        break;
                }
            }
        });
        final int i16 = 7;
        this.f127g = c("导入存档", new View.OnClickListener(this) { // from class: com.sgscq.vpn.s3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PassportActivity f1366b;

            {
                this.f1366b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                final int i17 = 1;
                final int i18 = 0;
                switch (i16) {
                    case 0:
                        int i19 = PassportActivity.f120q;
                        this.f1366b.finish();
                        break;
                    case 1:
                        PassportActivity passportActivity = this.f1366b;
                        m4 m4Var = passportActivity.f121a;
                        String strD = m4Var.d();
                        m4Var.w(strD);
                        Toast.makeText(passportActivity, "已新建本地空号并切换: " + m4.f(strD), 0).show();
                        passportActivity.f();
                        break;
                    case 2:
                        PassportActivity passportActivity2 = this.f1366b;
                        com.sgscq.vpn.cloud.q0 q0Var = passportActivity2.f133m;
                        if (q0Var != null) {
                            Button button3 = passportActivity2.f125e;
                            if (button3 != null) {
                                button3.setEnabled(false);
                            }
                            new Thread(new f4(passportActivity2, q0Var, i17), "cloud-save-create").start();
                        } else {
                            Toast.makeText(passportActivity2, "云存档状态正在加载，请稍候", 0).show();
                        }
                        break;
                    case 3:
                        final PassportActivity passportActivity3 = this.f1366b;
                        int size = passportActivity3.f121a.m().size();
                        int iJ = passportActivity3.f121a.j();
                        if (size != 0) {
                            new AlertDialog.Builder(passportActivity3).setTitle("清除所有玩家数据").setMessage("确定清除可操作的本地玩家存档和引导进度？\n\n将跳过 " + iJ + " 个云存档；通行证记录会保留。").setPositiveButton("清除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i110) {
                                    int i111 = i18;
                                    final PassportActivity passportActivity6 = passportActivity3;
                                    switch (i111) {
                                        case 0:
                                            int i112 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i113 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i118 = i113;
                                                    int i119 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i118) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i1110 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i1110++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i119 + " skippedCloud=" + i1110);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1110 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i1111 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i1111++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i119 + " skippedCloud=" + i1111);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1111 + " 个云存档";
                                                        default:
                                                            int i1112 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i119++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i119 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i119);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i114 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i115 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i118 = i115;
                                                    int i119 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i118) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i1110 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i1110++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i119 + " skippedCloud=" + i1110);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1110 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i1111 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i1111++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i119 + " skippedCloud=" + i1111);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1111 + " 个云存档";
                                                        default:
                                                            int i1112 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i119++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i119 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i119);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i116 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i117 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i118 = i117;
                                                    int i119 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i118) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i1110 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i1110++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i119 + " skippedCloud=" + i1110);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1110 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i1111 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i1111++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i119 + " skippedCloud=" + i1111);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1111 + " 个云存档";
                                                        default:
                                                            int i1112 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i119++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i119 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i119);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity3, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 4:
                        final PassportActivity passportActivity4 = this.f1366b;
                        if (passportActivity4.f121a.m().size() != 0) {
                            new AlertDialog.Builder(passportActivity4).setTitle("修复臣服魂魄").setMessage("扫描本机全部本地存档：把「觉醒臣服」历史上被错发成神将卡的奖励回收，并按配置补发对应数量的魂魄。\n\n如果该神将因为这张卡已经到手（可能已经上阵或培养过），会连同技能、上阵/副将绑定一起删除，无法撤销。\n\n已经按正确方式领取过的存档不会被重复补发。云存档请先下载到本机再修复。").setPositiveButton("开始修复", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i110) {
                                    int i111 = i17;
                                    final PassportActivity passportActivity6 = passportActivity4;
                                    switch (i111) {
                                        case 0:
                                            int i112 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i113 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i118 = i113;
                                                    int i119 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i118) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i1110 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i1110++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i119 + " skippedCloud=" + i1110);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1110 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i1111 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i1111++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i119 + " skippedCloud=" + i1111);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1111 + " 个云存档";
                                                        default:
                                                            int i1112 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i119++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i119 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i119);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i114 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i115 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i118 = i115;
                                                    int i119 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i118) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i1110 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i1110++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i119 + " skippedCloud=" + i1110);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1110 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i1111 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i1111++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i119 + " skippedCloud=" + i1111);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1111 + " 个云存档";
                                                        default:
                                                            int i1112 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i119++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i119 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i119);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i116 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i117 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i118 = i117;
                                                    int i119 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i118) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i1110 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i1110++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i119 + " skippedCloud=" + i1110);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1110 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i1111 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i1111++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i119 + " skippedCloud=" + i1111);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1111 + " 个云存档";
                                                        default:
                                                            int i1112 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i119++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i119 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i119);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity4, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 5:
                        final PassportActivity passportActivity5 = this.f1366b;
                        int size2 = passportActivity5.f121a.m().size();
                        int iJ2 = passportActivity5.f121a.j();
                        if (size2 != 0) {
                            final int i110 = 2;
                            new AlertDialog.Builder(passportActivity5).setTitle("清除所有通行证").setMessage("确定删除可操作的本地通行证？\n\n将跳过 " + iJ2 + " 个云存档；本地删除不可撤销。").setPositiveButton("全部删除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.g4
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i111) {
                                    int i112 = i110;
                                    final PassportActivity passportActivity6 = passportActivity5;
                                    switch (i112) {
                                        case 0:
                                            int i113 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i114 = 0;
                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i118 = i114;
                                                    int i119 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i118) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i1110 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i1110++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i119 + " skippedCloud=" + i1110);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1110 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i1111 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i1111++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i119 + " skippedCloud=" + i1111);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1111 + " 个云存档";
                                                        default:
                                                            int i1112 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i119++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i119 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i119);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        case 1:
                                            int i115 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i116 = 2;
                                            passportActivity6.g("正在修复臣服魂魄…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i118 = i116;
                                                    int i119 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i118) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i1110 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i1110++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i119 + " skippedCloud=" + i1110);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1110 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i1111 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i1111++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i119++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i119 + " skippedCloud=" + i1111);
                                                            return "已处理 " + i119 + " 个本地存档，跳过 " + i1111 + " 个云存档";
                                                        default:
                                                            int i1112 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i119++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i119 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i119);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                        default:
                                            int i117 = PassportActivity.f120q;
                                            passportActivity6.getClass();
                                            final int i118 = 1;
                                            passportActivity6.g("正在删除本机通行证…", new Callable() { // from class: com.sgscq.vpn.u3
                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    StringBuilder sb;
                                                    int i119 = i118;
                                                    int i1110 = 0;
                                                    PassportActivity passportActivity7 = passportActivity6;
                                                    switch (i119) {
                                                        case 0:
                                                            m4 m4Var2 = passportActivity7.f121a;
                                                            int i1111 = 0;
                                                            for (String str : m4Var2.l()) {
                                                                if (m4Var2.o(str)) {
                                                                    i1111++;
                                                                } else {
                                                                    m4Var2.a(str);
                                                                    i1110++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local player data changed=" + i1110 + " skippedCloud=" + i1111);
                                                            return "已处理 " + i1110 + " 个本地存档，跳过 " + i1111 + " 个云存档";
                                                        case 1:
                                                            m4 m4Var3 = passportActivity7.f121a;
                                                            m4Var3.getClass();
                                                            int i1112 = 0;
                                                            for (String str2 : new ArrayList(m4Var3.l())) {
                                                                if (m4Var3.o(str2)) {
                                                                    i1112++;
                                                                } else {
                                                                    m4Var3.e(str2);
                                                                    i1110++;
                                                                }
                                                            }
                                                            z2.e("SGSCQ_PASSPORT", "Cleared local passports changed=" + i1110 + " skippedCloud=" + i1112);
                                                            return "已处理 " + i1110 + " 个本地存档，跳过 " + i1112 + " 个云存档";
                                                        default:
                                                            int i1113 = PassportActivity.f120q;
                                                            SharedPreferences sharedPreferences = passportActivity7.getSharedPreferences("sgscq_player_v5", 0);
                                                            a7 a7VarV1 = w1.a1(passportActivity7).V1();
                                                            m4 m4Var4 = passportActivity7.f121a;
                                                            m4Var4.getClass();
                                                            ArrayList<String> arrayList = new ArrayList();
                                                            for (String str3 : m4Var4.l()) {
                                                                if (!m4Var4.o(str3)) {
                                                                    arrayList.add(str3);
                                                                }
                                                            }
                                                            int i20 = 0;
                                                            int i21 = 0;
                                                            int i22 = 0;
                                                            int i23 = 0;
                                                            for (String str4 : arrayList) {
                                                                LinkedHashMap linkedHashMapL = y5.l(passportActivity7, sharedPreferences, str4);
                                                                if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                                                                    i20++;
                                                                    com.sgscq.vpn.handler.a0 a0VarU2 = com.sgscq.vpn.cloud.m0.u2(linkedHashMapL, a7VarV1);
                                                                    if (a0VarU2.f745a) {
                                                                        y5.p(passportActivity7, sharedPreferences, str4, linkedHashMapL);
                                                                        i1110++;
                                                                        i21 += a0VarU2.f746b;
                                                                        i22 += a0VarU2.f747c;
                                                                        i23 += a0VarU2.f749e;
                                                                    }
                                                                }
                                                            }
                                                            if (i1110 == 0) {
                                                                sb = new StringBuilder("已扫描 ");
                                                                sb.append(i20);
                                                                sb.append(" 个本地存档，没有需要修复的臣服魂魄");
                                                            } else {
                                                                sb = new StringBuilder("已修复 ");
                                                                sb.append(i1110);
                                                                sb.append("/");
                                                                sb.append(i20);
                                                                sb.append(" 个存档：补发魂魄 ");
                                                                sb.append(i21);
                                                                sb.append("，回收神将卡 ");
                                                                sb.append(i22);
                                                                sb.append("，删除误到手神将 ");
                                                                sb.append(i23);
                                                            }
                                                            return sb.toString();
                                                    }
                                                }
                                            });
                                            break;
                                    }
                                }
                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                        } else {
                            Toast.makeText(passportActivity5, "没有已注册的通行证", 0).show();
                        }
                        break;
                    case 6:
                        PassportActivity passportActivity6 = this.f1366b;
                        if (!passportActivity6.f130j.y().isLoggedIn()) {
                            Toast.makeText(passportActivity6, "请先登录爱发电", 0).show();
                        } else {
                            Toast.makeText(passportActivity6, "正在收集并加密全部存档...", 0).show();
                            new Thread(new c4(passportActivity6, i17), "sgscq-save-archive-export").start();
                        }
                        break;
                    default:
                        PassportActivity passportActivity7 = this.f1366b;
                        if (!passportActivity7.f130j.y().isLoggedIn()) {
                            Toast.makeText(passportActivity7, "请先登录爱发电", 0).show();
                        } else {
                            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                            intent.addCategory("android.intent.category.OPENABLE");
                            intent.setType("application/octet-stream");
                            passportActivity7.startActivityForResult(intent, 1004);
                        }
                        break;
                }
            }
        });
        List listAsList = Arrays.asList(buttonC, this.f125e, buttonC3, button2);
        List listAsList2 = Arrays.asList(buttonC4, this.f126f, this.f127g);
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            a(linearLayout6, (Button) it.next(), zS0);
        }
        if (zS0) {
            Iterator it2 = listAsList2.iterator();
            while (it2.hasNext()) {
                a(linearLayout6, (Button) it2.next(), true);
            }
        }
        linearLayout5.addView(linearLayout6, b(zS0 ? 0 : -1, zS0 ? -1 : -2, 1, 0, 0));
        if (zS0) {
            i4 = -1;
            i5 = -2;
        } else {
            LinearLayout linearLayout7 = new LinearLayout(this);
            linearLayout7.setOrientation(0);
            linearLayout7.setGravity(17);
            Iterator it3 = listAsList2.iterator();
            while (it3.hasNext()) {
                a(linearLayout7, (Button) it3.next(), false);
            }
            i4 = -1;
            i5 = -2;
            linearLayout5.addView(linearLayout7, b(-1, -2, 0, p5.S0(8, this), 0));
        }
        e();
        if (zS0) {
            LinearLayout linearLayout8 = new LinearLayout(this);
            linearLayout8.setOrientation(1);
            linearLayout8.setBackgroundColor(p5.x);
            linearLayout8.addView(frameLayout, b(i4, i5, 0, 0, 0));
            linearLayout8.addView(view, b(i4, p5.S0(1, this), 0, 0, 0));
            linearLayout8.addView(this.f123c, b(i4, 0, 1, 0, 0));
            LinearLayout linearLayout9 = new LinearLayout(this);
            linearLayout9.setOrientation(0);
            linearLayout9.setBackgroundColor(p5.x);
            linearLayout9.addView(linearLayout5, b(p5.S0(184, this), i4, 0, 0, 0));
            View view2 = new View(this);
            view2.setBackgroundColor(p5.C);
            linearLayout9.addView(view2, b(p5.S0(1, this), i4, 0, 0, 0));
            linearLayout9.addView(linearLayout8, b(0, i4, 1, 0, 0));
            View view3 = new View(this);
            view3.setBackgroundColor(p5.C);
            linearLayout9.addView(view3, b(p5.S0(1, this), i4, 0, 0, 0));
            linearLayout9.addView(c5Var, b(c5Var.getPanelWidth(), i4, 0, 0, 0));
            setContentView(linearLayout9);
            button.requestFocus();
            i6 = 0;
        } else {
            int iS1 = p5.S0(120, this);
            int iS2 = p5.S0(64, this);
            FrameLayout frameLayout2 = new FrameLayout(this);
            frameLayout2.setBackgroundColor(p5.x);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
            layoutParams2.bottomMargin = iS2 + iS1;
            frameLayout2.addView(this.f123c, layoutParams2);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams3.gravity = 81;
            layoutParams3.bottomMargin = iS1;
            frameLayout2.addView(linearLayout5, layoutParams3);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, p5.S0(1, this));
            layoutParams4.gravity = 80;
            layoutParams4.bottomMargin = iS1;
            View view4 = new View(this);
            view4.setBackgroundColor(p5.C);
            frameLayout2.addView(view4, layoutParams4);
            FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams5.gravity = 81;
            frameLayout2.addView(c5Var, layoutParams5);
            i6 = 0;
            linearLayout.addView(frameLayout, b(-1, -2, 0, 0, 0));
            linearLayout.addView(view, b(-1, p5.S0(1, this), 0, 0, 0));
            linearLayout.addView(frameLayout2, b(-1, 0, 1, 0, 0));
            setContentView(linearLayout);
        }
        ExecutorService executorService = this.f134n;
        if (!executorService.isShutdown()) {
            try {
                executorService.execute(new c4(this, i6));
            } catch (RejectedExecutionException unused) {
            }
        }
        d();
        f();
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        this.f135o.incrementAndGet();
        this.f134n.shutdown();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        d();
    }
}
