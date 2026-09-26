package com.sgscq.vpn;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b4 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f204a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PassportActivity f205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f206c;

    public /* synthetic */ b4(PassportActivity passportActivity, int i2, int i3) {
        this.f204a = i3;
        this.f205b = passportActivity;
        this.f206c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final String simpleName;
        int i2 = this.f204a;
        final int i3 = this.f206c;
        final PassportActivity passportActivity = this.f205b;
        switch (i2) {
            case 0:
                int i4 = PassportActivity.f120q;
                passportActivity.getClass();
                final ArrayList arrayList = new ArrayList();
                try {
                    for (k4 k4Var : passportActivity.f121a.m()) {
                        arrayList.add(new j4(k4Var, passportActivity.f121a.n(k4Var.f1106a)));
                    }
                    simpleName = null;
                } catch (Exception e2) {
                    String message = e2.getMessage();
                    simpleName = (message == null || message.isEmpty()) ? e2.getClass().getSimpleName() : message;
                }
                passportActivity.runOnUiThread(new Runnable() { // from class: com.sgscq.vpn.e4
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r12v5, types: [com.sgscq.vpn.v3] */
                    /* JADX WARN: Type inference failed for: r5v30, types: [com.sgscq.vpn.v3] */
                    /* JADX WARN: Type inference failed for: r5v40, types: [com.sgscq.vpn.v3] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        int iS0;
                        int i5;
                        final int i6;
                        LinearLayout linearLayout;
                        int i7;
                        int iS1;
                        int i8;
                        int iS2;
                        int i9 = PassportActivity.f120q;
                        PassportActivity passportActivity2 = passportActivity;
                        int i10 = 0;
                        if ((passportActivity2.isFinishing() || passportActivity2.isDestroyed()) ? false : true) {
                            if (i3 != passportActivity2.f135o.get()) {
                                return;
                            }
                            passportActivity2.f122b.removeAllViews();
                            String str = simpleName;
                            if (str != null) {
                                passportActivity2.f124d.setText("读取存档失败：".concat(str));
                            } else {
                                List list = arrayList;
                                if (!list.isEmpty()) {
                                    passportActivity2.f124d.setVisibility(8);
                                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.getDefault());
                                    int i11 = 0;
                                    PassportActivity passportActivity3 = passportActivity2;
                                    while (i10 < list.size()) {
                                        j4 j4Var = (j4) list.get(i10);
                                        LinearLayout linearLayout2 = passportActivity3.f122b;
                                        final k4 k4Var2 = j4Var.f1085a;
                                        boolean zEquals = k4Var2.f1106a.equals(passportActivity3.f121a.k());
                                        LinearLayout linearLayout3 = new LinearLayout(passportActivity3);
                                        boolean zS0 = p5.s0(passportActivity3);
                                        linearLayout3.setOrientation(!zS0 ? 1 : 0);
                                        linearLayout3.setPadding(p5.S0(14, passportActivity3), p5.S0(12, passportActivity3), p5.S0(14, passportActivity3), p5.S0(12, passportActivity3));
                                        GradientDrawable gradientDrawable = new GradientDrawable();
                                        gradientDrawable.setShape(i11);
                                        gradientDrawable.setCornerRadius(p5.S0(10, passportActivity3));
                                        gradientDrawable.setColor(p5.z);
                                        gradientDrawable.setStroke(p5.S0(1, passportActivity3), p5.I);
                                        linearLayout3.setBackground(gradientDrawable);
                                        LinearLayout linearLayout4 = new LinearLayout(passportActivity3);
                                        linearLayout4.setOrientation(1);
                                        LinearLayout linearLayout5 = new LinearLayout(passportActivity3);
                                        linearLayout5.setOrientation(i11);
                                        linearLayout5.setGravity(16);
                                        l4 l4Var = j4Var.f1086b;
                                        String str2 = l4Var.f1144b;
                                        boolean z = l4Var.f1143a;
                                        if (!z) {
                                            String str3 = k4Var2.f1107b;
                                            if (!str3.isEmpty()) {
                                                str2 = str3;
                                            }
                                        }
                                        TextView textView = new TextView(passportActivity3);
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(str2);
                                        sb.append(z ? "" : "（空号）");
                                        textView.setText(sb.toString());
                                        textView.setTextSize(15.0f);
                                        textView.setTextColor(p5.F);
                                        textView.setTypeface(Typeface.DEFAULT_BOLD);
                                        linearLayout5.addView(textView, PassportActivity.b(0, -2, 1, 0, 0));
                                        TextView textView2 = new TextView(passportActivity3);
                                        boolean z2 = k4Var2.f1111f;
                                        textView2.setText(z2 ? "云存档 · 爱发电本人" : "本地存档");
                                        textView2.setTextSize(11.0f);
                                        textView2.setTextColor(z2 ? p5.B : p5.H);
                                        int i12 = i10;
                                        textView2.setPadding(p5.S0(8, passportActivity3), 0, p5.S0(8, passportActivity3), 0);
                                        linearLayout5.addView(textView2, PassportActivity.b(-2, -2, 0, 0, 0));
                                        TextView textView3 = new TextView(passportActivity3);
                                        String strF = m4.f(k4Var2.f1106a);
                                        if (zEquals) {
                                            strF = c.a.i("当前 ", strF);
                                        }
                                        textView3.setText(strF);
                                        textView3.setTextSize(11.0f);
                                        textView3.setTextColor(zEquals ? p5.B : p5.H);
                                        linearLayout5.addView(textView3, PassportActivity.b(-2, -2, 0, 0, 0));
                                        linearLayout4.addView(linearLayout5, PassportActivity.b(-1, -2, 0, 0, p5.S0(4, passportActivity3)));
                                        TextView textView4 = new TextView(passportActivity3);
                                        StringBuilder sb2 = new StringBuilder("等级 ");
                                        sb2.append(l4Var.f1145c);
                                        sb2.append("  ·  VIP ");
                                        sb2.append(l4Var.f1146d);
                                        sb2.append("  ·  战力 ");
                                        sb2.append(l4Var.f1147e);
                                        sb2.append("  ·  统御 ");
                                        sb2.append(l4Var.f1151i);
                                        sb2.append("  ·  元宝 ");
                                        sb2.append(l4Var.f1148f);
                                        String str4 = l4Var.f1149g;
                                        if (!str4.isEmpty()) {
                                            sb2.append("  ·  ");
                                            sb2.append(str4);
                                            sb2.append(" 第");
                                            sb2.append(l4Var.f1150h);
                                            sb2.append("关");
                                        }
                                        textView4.setText(sb2.toString());
                                        textView4.setTextSize(12.0f);
                                        textView4.setTextColor(p5.C);
                                        linearLayout4.addView(textView4, PassportActivity.b(-1, -2, 0, 0, p5.S0(4, passportActivity3)));
                                        TextView textView5 = new TextView(passportActivity3);
                                        long j2 = k4Var2.f1108c;
                                        String str5 = j2 > 0 ? simpleDateFormat.format(new Date(j2)) : "未知";
                                        final PassportActivity passportActivity4 = passportActivity3;
                                        long j3 = k4Var2.f1109d;
                                        textView5.setText("注册: " + str5 + "  ·  最后登录: " + (j3 > 0 ? simpleDateFormat.format(new Date(j3)) : "从未"));
                                        textView5.setTextSize(11.0f);
                                        textView5.setTextColor(p5.G);
                                        if (zS0) {
                                            i5 = 0;
                                            iS0 = 0;
                                        } else {
                                            iS0 = p5.S0(8, passportActivity4);
                                            i5 = 0;
                                        }
                                        linearLayout4.addView(textView5, PassportActivity.b(-1, -2, i5, i5, iS0));
                                        linearLayout3.addView(linearLayout4, PassportActivity.b(zS0 ? i5 : -1, -2, zS0 ? 1 : 0, i5, i5));
                                        LinearLayout linearLayout6 = new LinearLayout(passportActivity4);
                                        linearLayout6.setOrientation(zS0 ? 1 : 0);
                                        linearLayout6.setGravity(zS0 ? 17 : 8388613);
                                        if (zS0) {
                                            i6 = 0;
                                            linearLayout = linearLayout6;
                                        } else {
                                            linearLayout = new LinearLayout(passportActivity4);
                                            i6 = 0;
                                            linearLayout.setOrientation(0);
                                            linearLayout.setGravity(8388613);
                                        }
                                        Button buttonI = passportActivity4.i("切换", p5.B, new View.OnClickListener() { // from class: com.sgscq.vpn.v3
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                StringBuilder sb3;
                                                String str6;
                                                int i13 = i6;
                                                final int i14 = 0;
                                                final k4 k4Var3 = k4Var2;
                                                final PassportActivity passportActivity5 = passportActivity4;
                                                switch (i13) {
                                                    case 0:
                                                        passportActivity5.f121a.w(k4Var3.f1106a);
                                                        Toast.makeText(passportActivity5, "已切换当前存档", 0).show();
                                                        passportActivity5.f();
                                                        break;
                                                    case 1:
                                                        final int i15 = 1;
                                                        if (!(!passportActivity5.f121a.o(k4Var3.f1106a))) {
                                                            Toast.makeText(passportActivity5, "云存档不可清除玩家数据", 0).show();
                                                        } else {
                                                            String strF2 = k4Var3.f1107b;
                                                            if (strF2.isEmpty()) {
                                                                strF2 = m4.f(k4Var3.f1106a);
                                                            }
                                                            new AlertDialog.Builder(passportActivity5).setTitle("清除玩家数据").setMessage("确定清除「" + strF2 + "」的玩家存档和引导进度？\n\n通行证记录会保留，可以重新开始游戏。").setPositiveButton("清除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.w3
                                                                @Override // android.content.DialogInterface.OnClickListener
                                                                public final void onClick(DialogInterface dialogInterface, int i16) {
                                                                    int i17 = i15;
                                                                    final k4 k4Var4 = k4Var3;
                                                                    final PassportActivity passportActivity6 = passportActivity5;
                                                                    switch (i17) {
                                                                        case 0:
                                                                            int i18 = PassportActivity.f120q;
                                                                            passportActivity6.getClass();
                                                                            final int i19 = 0;
                                                                            passportActivity6.g("正在删除本机存档…", new Callable() { // from class: com.sgscq.vpn.y3
                                                                                @Override // java.util.concurrent.Callable
                                                                                public final Object call() {
                                                                                    int i20 = i19;
                                                                                    k4 k4Var5 = k4Var4;
                                                                                    PassportActivity passportActivity7 = passportActivity6;
                                                                                    switch (i20) {
                                                                                        case 0:
                                                                                            passportActivity7.f121a.e(k4Var5.f1106a);
                                                                                            return "已删除通行证";
                                                                                        default:
                                                                                            m4 m4Var = passportActivity7.f121a;
                                                                                            String str7 = k4Var5.f1106a;
                                                                                            m4Var.getClass();
                                                                                            if (str7 == null || str7.isEmpty()) {
                                                                                                return "已清除玩家数据";
                                                                                            }
                                                                                            if (m4Var.o(str7)) {
                                                                                                throw new IllegalStateException("云存档不可清除玩家数据");
                                                                                            }
                                                                                            m4Var.a(str7);
                                                                                            return "已清除玩家数据";
                                                                                    }
                                                                                }
                                                                            });
                                                                            break;
                                                                        default:
                                                                            int i20 = PassportActivity.f120q;
                                                                            passportActivity6.getClass();
                                                                            final int i21 = 1;
                                                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.y3
                                                                                @Override // java.util.concurrent.Callable
                                                                                public final Object call() {
                                                                                    int i22 = i21;
                                                                                    k4 k4Var5 = k4Var4;
                                                                                    PassportActivity passportActivity7 = passportActivity6;
                                                                                    switch (i22) {
                                                                                        case 0:
                                                                                            passportActivity7.f121a.e(k4Var5.f1106a);
                                                                                            return "已删除通行证";
                                                                                        default:
                                                                                            m4 m4Var = passportActivity7.f121a;
                                                                                            String str7 = k4Var5.f1106a;
                                                                                            m4Var.getClass();
                                                                                            if (str7 == null || str7.isEmpty()) {
                                                                                                return "已清除玩家数据";
                                                                                            }
                                                                                            if (m4Var.o(str7)) {
                                                                                                throw new IllegalStateException("云存档不可清除玩家数据");
                                                                                            }
                                                                                            m4Var.a(str7);
                                                                                            return "已清除玩家数据";
                                                                                    }
                                                                                }
                                                                            });
                                                                            break;
                                                                    }
                                                                }
                                                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                                                        }
                                                        break;
                                                    default:
                                                        int i16 = PassportActivity.f120q;
                                                        passportActivity5.getClass();
                                                        String strF3 = k4Var3.f1107b.isEmpty() ? m4.f(k4Var3.f1106a) : k4Var3.f1107b;
                                                        AlertDialog.Builder title = new AlertDialog.Builder(passportActivity5).setTitle("删除通行证");
                                                        if (k4Var3.f1111f) {
                                                            sb3 = new StringBuilder("确定删除「");
                                                            sb3.append(strF3);
                                                            str6 = "」的本机记录？\n\n服务器云角色不会被删除，可由本人重新下载。";
                                                        } else {
                                                            sb3 = new StringBuilder("确定删除「");
                                                            sb3.append(strF3);
                                                            str6 = "」？\n\n该通行证的玩家存档和引导进度也会一并删除，此操作不可撤销。";
                                                        }
                                                        sb3.append(str6);
                                                        title.setMessage(sb3.toString()).setPositiveButton("删除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.w3
                                                            @Override // android.content.DialogInterface.OnClickListener
                                                            public final void onClick(DialogInterface dialogInterface, int i17) {
                                                                int i18 = i14;
                                                                final k4 k4Var4 = k4Var3;
                                                                final PassportActivity passportActivity6 = passportActivity5;
                                                                switch (i18) {
                                                                    case 0:
                                                                        int i19 = PassportActivity.f120q;
                                                                        passportActivity6.getClass();
                                                                        final int i110 = 0;
                                                                        passportActivity6.g("正在删除本机存档…", new Callable() { // from class: com.sgscq.vpn.y3
                                                                            @Override // java.util.concurrent.Callable
                                                                            public final Object call() {
                                                                                int i22 = i110;
                                                                                k4 k4Var5 = k4Var4;
                                                                                PassportActivity passportActivity7 = passportActivity6;
                                                                                switch (i22) {
                                                                                    case 0:
                                                                                        passportActivity7.f121a.e(k4Var5.f1106a);
                                                                                        return "已删除通行证";
                                                                                    default:
                                                                                        m4 m4Var = passportActivity7.f121a;
                                                                                        String str7 = k4Var5.f1106a;
                                                                                        m4Var.getClass();
                                                                                        if (str7 == null || str7.isEmpty()) {
                                                                                            return "已清除玩家数据";
                                                                                        }
                                                                                        if (m4Var.o(str7)) {
                                                                                            throw new IllegalStateException("云存档不可清除玩家数据");
                                                                                        }
                                                                                        m4Var.a(str7);
                                                                                        return "已清除玩家数据";
                                                                                }
                                                                            }
                                                                        });
                                                                        break;
                                                                    default:
                                                                        int i20 = PassportActivity.f120q;
                                                                        passportActivity6.getClass();
                                                                        final int i21 = 1;
                                                                        passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.y3
                                                                            @Override // java.util.concurrent.Callable
                                                                            public final Object call() {
                                                                                int i22 = i21;
                                                                                k4 k4Var5 = k4Var4;
                                                                                PassportActivity passportActivity7 = passportActivity6;
                                                                                switch (i22) {
                                                                                    case 0:
                                                                                        passportActivity7.f121a.e(k4Var5.f1106a);
                                                                                        return "已删除通行证";
                                                                                    default:
                                                                                        m4 m4Var = passportActivity7.f121a;
                                                                                        String str7 = k4Var5.f1106a;
                                                                                        m4Var.getClass();
                                                                                        if (str7 == null || str7.isEmpty()) {
                                                                                            return "已清除玩家数据";
                                                                                        }
                                                                                        if (m4Var.o(str7)) {
                                                                                            throw new IllegalStateException("云存档不可清除玩家数据");
                                                                                        }
                                                                                        m4Var.a(str7);
                                                                                        return "已清除玩家数据";
                                                                                }
                                                                            }
                                                                        });
                                                                        break;
                                                                }
                                                            }
                                                        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                                                        break;
                                                }
                                            }
                                        });
                                        buttonI.setEnabled(!zEquals);
                                        buttonI.setAlpha(zEquals ? 0.45f : 1.0f);
                                        int i13 = zS0 ? -1 : -2;
                                        int iS3 = p5.S0(32, passportActivity4);
                                        int iS4 = p5.S0(32, passportActivity4);
                                        LinearLayout.LayoutParams layoutParamsB = PassportActivity.b(i13, iS3, 0, 0, 0);
                                        if (iS4 != 0) {
                                            layoutParamsB.height = iS4;
                                        }
                                        linearLayout6.addView(buttonI, layoutParamsB);
                                        View view = new View(passportActivity4);
                                        int iS5 = zS0 ? 0 : p5.S0(8, passportActivity4);
                                        if (zS0) {
                                            iS1 = p5.S0(8, passportActivity4);
                                            i7 = 0;
                                        } else {
                                            i7 = 0;
                                            iS1 = 0;
                                        }
                                        linearLayout6.addView(view, PassportActivity.b(iS5, iS1, i7, i7, i7));
                                        final int i14 = 1;
                                        Button buttonI2 = passportActivity4.i("清除数据", p5.C, new View.OnClickListener() { // from class: com.sgscq.vpn.v3
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view2) {
                                                StringBuilder sb3;
                                                String str6;
                                                int i15 = i14;
                                                final int i16 = 0;
                                                final k4 k4Var3 = k4Var2;
                                                final PassportActivity passportActivity5 = passportActivity4;
                                                switch (i15) {
                                                    case 0:
                                                        passportActivity5.f121a.w(k4Var3.f1106a);
                                                        Toast.makeText(passportActivity5, "已切换当前存档", 0).show();
                                                        passportActivity5.f();
                                                        break;
                                                    case 1:
                                                        final int i17 = 1;
                                                        if (!(!passportActivity5.f121a.o(k4Var3.f1106a))) {
                                                            Toast.makeText(passportActivity5, "云存档不可清除玩家数据", 0).show();
                                                        } else {
                                                            String strF2 = k4Var3.f1107b;
                                                            if (strF2.isEmpty()) {
                                                                strF2 = m4.f(k4Var3.f1106a);
                                                            }
                                                            new AlertDialog.Builder(passportActivity5).setTitle("清除玩家数据").setMessage("确定清除「" + strF2 + "」的玩家存档和引导进度？\n\n通行证记录会保留，可以重新开始游戏。").setPositiveButton("清除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.w3
                                                                @Override // android.content.DialogInterface.OnClickListener
                                                                public final void onClick(DialogInterface dialogInterface, int i18) {
                                                                    int i19 = i17;
                                                                    final k4 k4Var4 = k4Var3;
                                                                    final PassportActivity passportActivity6 = passportActivity5;
                                                                    switch (i19) {
                                                                        case 0:
                                                                            int i110 = PassportActivity.f120q;
                                                                            passportActivity6.getClass();
                                                                            final int i111 = 0;
                                                                            passportActivity6.g("正在删除本机存档…", new Callable() { // from class: com.sgscq.vpn.y3
                                                                                @Override // java.util.concurrent.Callable
                                                                                public final Object call() {
                                                                                    int i22 = i111;
                                                                                    k4 k4Var5 = k4Var4;
                                                                                    PassportActivity passportActivity7 = passportActivity6;
                                                                                    switch (i22) {
                                                                                        case 0:
                                                                                            passportActivity7.f121a.e(k4Var5.f1106a);
                                                                                            return "已删除通行证";
                                                                                        default:
                                                                                            m4 m4Var = passportActivity7.f121a;
                                                                                            String str7 = k4Var5.f1106a;
                                                                                            m4Var.getClass();
                                                                                            if (str7 == null || str7.isEmpty()) {
                                                                                                return "已清除玩家数据";
                                                                                            }
                                                                                            if (m4Var.o(str7)) {
                                                                                                throw new IllegalStateException("云存档不可清除玩家数据");
                                                                                            }
                                                                                            m4Var.a(str7);
                                                                                            return "已清除玩家数据";
                                                                                    }
                                                                                }
                                                                            });
                                                                            break;
                                                                        default:
                                                                            int i20 = PassportActivity.f120q;
                                                                            passportActivity6.getClass();
                                                                            final int i21 = 1;
                                                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.y3
                                                                                @Override // java.util.concurrent.Callable
                                                                                public final Object call() {
                                                                                    int i22 = i21;
                                                                                    k4 k4Var5 = k4Var4;
                                                                                    PassportActivity passportActivity7 = passportActivity6;
                                                                                    switch (i22) {
                                                                                        case 0:
                                                                                            passportActivity7.f121a.e(k4Var5.f1106a);
                                                                                            return "已删除通行证";
                                                                                        default:
                                                                                            m4 m4Var = passportActivity7.f121a;
                                                                                            String str7 = k4Var5.f1106a;
                                                                                            m4Var.getClass();
                                                                                            if (str7 == null || str7.isEmpty()) {
                                                                                                return "已清除玩家数据";
                                                                                            }
                                                                                            if (m4Var.o(str7)) {
                                                                                                throw new IllegalStateException("云存档不可清除玩家数据");
                                                                                            }
                                                                                            m4Var.a(str7);
                                                                                            return "已清除玩家数据";
                                                                                    }
                                                                                }
                                                                            });
                                                                            break;
                                                                    }
                                                                }
                                                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                                                        }
                                                        break;
                                                    default:
                                                        int i18 = PassportActivity.f120q;
                                                        passportActivity5.getClass();
                                                        String strF3 = k4Var3.f1107b.isEmpty() ? m4.f(k4Var3.f1106a) : k4Var3.f1107b;
                                                        AlertDialog.Builder title = new AlertDialog.Builder(passportActivity5).setTitle("删除通行证");
                                                        if (k4Var3.f1111f) {
                                                            sb3 = new StringBuilder("确定删除「");
                                                            sb3.append(strF3);
                                                            str6 = "」的本机记录？\n\n服务器云角色不会被删除，可由本人重新下载。";
                                                        } else {
                                                            sb3 = new StringBuilder("确定删除「");
                                                            sb3.append(strF3);
                                                            str6 = "」？\n\n该通行证的玩家存档和引导进度也会一并删除，此操作不可撤销。";
                                                        }
                                                        sb3.append(str6);
                                                        title.setMessage(sb3.toString()).setPositiveButton("删除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.w3
                                                            @Override // android.content.DialogInterface.OnClickListener
                                                            public final void onClick(DialogInterface dialogInterface, int i19) {
                                                                int i110 = i16;
                                                                final k4 k4Var4 = k4Var3;
                                                                final PassportActivity passportActivity6 = passportActivity5;
                                                                switch (i110) {
                                                                    case 0:
                                                                        int i111 = PassportActivity.f120q;
                                                                        passportActivity6.getClass();
                                                                        final int i112 = 0;
                                                                        passportActivity6.g("正在删除本机存档…", new Callable() { // from class: com.sgscq.vpn.y3
                                                                            @Override // java.util.concurrent.Callable
                                                                            public final Object call() {
                                                                                int i22 = i112;
                                                                                k4 k4Var5 = k4Var4;
                                                                                PassportActivity passportActivity7 = passportActivity6;
                                                                                switch (i22) {
                                                                                    case 0:
                                                                                        passportActivity7.f121a.e(k4Var5.f1106a);
                                                                                        return "已删除通行证";
                                                                                    default:
                                                                                        m4 m4Var = passportActivity7.f121a;
                                                                                        String str7 = k4Var5.f1106a;
                                                                                        m4Var.getClass();
                                                                                        if (str7 == null || str7.isEmpty()) {
                                                                                            return "已清除玩家数据";
                                                                                        }
                                                                                        if (m4Var.o(str7)) {
                                                                                            throw new IllegalStateException("云存档不可清除玩家数据");
                                                                                        }
                                                                                        m4Var.a(str7);
                                                                                        return "已清除玩家数据";
                                                                                }
                                                                            }
                                                                        });
                                                                        break;
                                                                    default:
                                                                        int i20 = PassportActivity.f120q;
                                                                        passportActivity6.getClass();
                                                                        final int i21 = 1;
                                                                        passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.y3
                                                                            @Override // java.util.concurrent.Callable
                                                                            public final Object call() {
                                                                                int i22 = i21;
                                                                                k4 k4Var5 = k4Var4;
                                                                                PassportActivity passportActivity7 = passportActivity6;
                                                                                switch (i22) {
                                                                                    case 0:
                                                                                        passportActivity7.f121a.e(k4Var5.f1106a);
                                                                                        return "已删除通行证";
                                                                                    default:
                                                                                        m4 m4Var = passportActivity7.f121a;
                                                                                        String str7 = k4Var5.f1106a;
                                                                                        m4Var.getClass();
                                                                                        if (str7 == null || str7.isEmpty()) {
                                                                                            return "已清除玩家数据";
                                                                                        }
                                                                                        if (m4Var.o(str7)) {
                                                                                            throw new IllegalStateException("云存档不可清除玩家数据");
                                                                                        }
                                                                                        m4Var.a(str7);
                                                                                        return "已清除玩家数据";
                                                                                }
                                                                            }
                                                                        });
                                                                        break;
                                                                }
                                                            }
                                                        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                                                        break;
                                                }
                                            }
                                        });
                                        buttonI2.setEnabled(!z2);
                                        buttonI2.setAlpha(z2 ? 0.45f : 1.0f);
                                        int i15 = zS0 ? -1 : -2;
                                        int iS6 = p5.S0(32, passportActivity4);
                                        int iS7 = p5.S0(32, passportActivity4);
                                        LinearLayout.LayoutParams layoutParamsB2 = PassportActivity.b(i15, iS6, 0, 0, 0);
                                        if (iS7 != 0) {
                                            layoutParamsB2.height = iS7;
                                        }
                                        linearLayout.addView(buttonI2, layoutParamsB2);
                                        View view2 = new View(passportActivity4);
                                        int iS8 = zS0 ? 0 : p5.S0(8, passportActivity4);
                                        if (zS0) {
                                            iS2 = p5.S0(8, passportActivity4);
                                            i8 = 0;
                                        } else {
                                            i8 = 0;
                                            iS2 = 0;
                                        }
                                        linearLayout.addView(view2, PassportActivity.b(iS8, iS2, i8, i8, i8));
                                        final int i16 = 2;
                                        Button buttonI3 = passportActivity4.i("删除", p5.D, new View.OnClickListener() { // from class: com.sgscq.vpn.v3
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view3) {
                                                StringBuilder sb3;
                                                String str6;
                                                int i17 = i16;
                                                final int i18 = 0;
                                                final k4 k4Var3 = k4Var2;
                                                final PassportActivity passportActivity5 = passportActivity4;
                                                switch (i17) {
                                                    case 0:
                                                        passportActivity5.f121a.w(k4Var3.f1106a);
                                                        Toast.makeText(passportActivity5, "已切换当前存档", 0).show();
                                                        passportActivity5.f();
                                                        break;
                                                    case 1:
                                                        final int i19 = 1;
                                                        if (!(!passportActivity5.f121a.o(k4Var3.f1106a))) {
                                                            Toast.makeText(passportActivity5, "云存档不可清除玩家数据", 0).show();
                                                        } else {
                                                            String strF2 = k4Var3.f1107b;
                                                            if (strF2.isEmpty()) {
                                                                strF2 = m4.f(k4Var3.f1106a);
                                                            }
                                                            new AlertDialog.Builder(passportActivity5).setTitle("清除玩家数据").setMessage("确定清除「" + strF2 + "」的玩家存档和引导进度？\n\n通行证记录会保留，可以重新开始游戏。").setPositiveButton("清除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.w3
                                                                @Override // android.content.DialogInterface.OnClickListener
                                                                public final void onClick(DialogInterface dialogInterface, int i110) {
                                                                    int i111 = i19;
                                                                    final k4 k4Var4 = k4Var3;
                                                                    final PassportActivity passportActivity6 = passportActivity5;
                                                                    switch (i111) {
                                                                        case 0:
                                                                            int i112 = PassportActivity.f120q;
                                                                            passportActivity6.getClass();
                                                                            final int i113 = 0;
                                                                            passportActivity6.g("正在删除本机存档…", new Callable() { // from class: com.sgscq.vpn.y3
                                                                                @Override // java.util.concurrent.Callable
                                                                                public final Object call() {
                                                                                    int i22 = i113;
                                                                                    k4 k4Var5 = k4Var4;
                                                                                    PassportActivity passportActivity7 = passportActivity6;
                                                                                    switch (i22) {
                                                                                        case 0:
                                                                                            passportActivity7.f121a.e(k4Var5.f1106a);
                                                                                            return "已删除通行证";
                                                                                        default:
                                                                                            m4 m4Var = passportActivity7.f121a;
                                                                                            String str7 = k4Var5.f1106a;
                                                                                            m4Var.getClass();
                                                                                            if (str7 == null || str7.isEmpty()) {
                                                                                                return "已清除玩家数据";
                                                                                            }
                                                                                            if (m4Var.o(str7)) {
                                                                                                throw new IllegalStateException("云存档不可清除玩家数据");
                                                                                            }
                                                                                            m4Var.a(str7);
                                                                                            return "已清除玩家数据";
                                                                                    }
                                                                                }
                                                                            });
                                                                            break;
                                                                        default:
                                                                            int i20 = PassportActivity.f120q;
                                                                            passportActivity6.getClass();
                                                                            final int i21 = 1;
                                                                            passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.y3
                                                                                @Override // java.util.concurrent.Callable
                                                                                public final Object call() {
                                                                                    int i22 = i21;
                                                                                    k4 k4Var5 = k4Var4;
                                                                                    PassportActivity passportActivity7 = passportActivity6;
                                                                                    switch (i22) {
                                                                                        case 0:
                                                                                            passportActivity7.f121a.e(k4Var5.f1106a);
                                                                                            return "已删除通行证";
                                                                                        default:
                                                                                            m4 m4Var = passportActivity7.f121a;
                                                                                            String str7 = k4Var5.f1106a;
                                                                                            m4Var.getClass();
                                                                                            if (str7 == null || str7.isEmpty()) {
                                                                                                return "已清除玩家数据";
                                                                                            }
                                                                                            if (m4Var.o(str7)) {
                                                                                                throw new IllegalStateException("云存档不可清除玩家数据");
                                                                                            }
                                                                                            m4Var.a(str7);
                                                                                            return "已清除玩家数据";
                                                                                    }
                                                                                }
                                                                            });
                                                                            break;
                                                                    }
                                                                }
                                                            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                                                        }
                                                        break;
                                                    default:
                                                        int i110 = PassportActivity.f120q;
                                                        passportActivity5.getClass();
                                                        String strF3 = k4Var3.f1107b.isEmpty() ? m4.f(k4Var3.f1106a) : k4Var3.f1107b;
                                                        AlertDialog.Builder title = new AlertDialog.Builder(passportActivity5).setTitle("删除通行证");
                                                        if (k4Var3.f1111f) {
                                                            sb3 = new StringBuilder("确定删除「");
                                                            sb3.append(strF3);
                                                            str6 = "」的本机记录？\n\n服务器云角色不会被删除，可由本人重新下载。";
                                                        } else {
                                                            sb3 = new StringBuilder("确定删除「");
                                                            sb3.append(strF3);
                                                            str6 = "」？\n\n该通行证的玩家存档和引导进度也会一并删除，此操作不可撤销。";
                                                        }
                                                        sb3.append(str6);
                                                        title.setMessage(sb3.toString()).setPositiveButton("删除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.w3
                                                            @Override // android.content.DialogInterface.OnClickListener
                                                            public final void onClick(DialogInterface dialogInterface, int i111) {
                                                                int i112 = i18;
                                                                final k4 k4Var4 = k4Var3;
                                                                final PassportActivity passportActivity6 = passportActivity5;
                                                                switch (i112) {
                                                                    case 0:
                                                                        int i113 = PassportActivity.f120q;
                                                                        passportActivity6.getClass();
                                                                        final int i114 = 0;
                                                                        passportActivity6.g("正在删除本机存档…", new Callable() { // from class: com.sgscq.vpn.y3
                                                                            @Override // java.util.concurrent.Callable
                                                                            public final Object call() {
                                                                                int i22 = i114;
                                                                                k4 k4Var5 = k4Var4;
                                                                                PassportActivity passportActivity7 = passportActivity6;
                                                                                switch (i22) {
                                                                                    case 0:
                                                                                        passportActivity7.f121a.e(k4Var5.f1106a);
                                                                                        return "已删除通行证";
                                                                                    default:
                                                                                        m4 m4Var = passportActivity7.f121a;
                                                                                        String str7 = k4Var5.f1106a;
                                                                                        m4Var.getClass();
                                                                                        if (str7 == null || str7.isEmpty()) {
                                                                                            return "已清除玩家数据";
                                                                                        }
                                                                                        if (m4Var.o(str7)) {
                                                                                            throw new IllegalStateException("云存档不可清除玩家数据");
                                                                                        }
                                                                                        m4Var.a(str7);
                                                                                        return "已清除玩家数据";
                                                                                }
                                                                            }
                                                                        });
                                                                        break;
                                                                    default:
                                                                        int i20 = PassportActivity.f120q;
                                                                        passportActivity6.getClass();
                                                                        final int i21 = 1;
                                                                        passportActivity6.g("正在清除本机玩家数据…", new Callable() { // from class: com.sgscq.vpn.y3
                                                                            @Override // java.util.concurrent.Callable
                                                                            public final Object call() {
                                                                                int i22 = i21;
                                                                                k4 k4Var5 = k4Var4;
                                                                                PassportActivity passportActivity7 = passportActivity6;
                                                                                switch (i22) {
                                                                                    case 0:
                                                                                        passportActivity7.f121a.e(k4Var5.f1106a);
                                                                                        return "已删除通行证";
                                                                                    default:
                                                                                        m4 m4Var = passportActivity7.f121a;
                                                                                        String str7 = k4Var5.f1106a;
                                                                                        m4Var.getClass();
                                                                                        if (str7 == null || str7.isEmpty()) {
                                                                                            return "已清除玩家数据";
                                                                                        }
                                                                                        if (m4Var.o(str7)) {
                                                                                            throw new IllegalStateException("云存档不可清除玩家数据");
                                                                                        }
                                                                                        m4Var.a(str7);
                                                                                        return "已清除玩家数据";
                                                                                }
                                                                            }
                                                                        });
                                                                        break;
                                                                }
                                                            }
                                                        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                                                        break;
                                                }
                                            }
                                        });
                                        int i17 = zS0 ? -1 : -2;
                                        int iS9 = p5.S0(32, passportActivity4);
                                        int iS10 = p5.S0(32, passportActivity4);
                                        LinearLayout.LayoutParams layoutParamsB3 = PassportActivity.b(i17, iS9, 0, 0, 0);
                                        if (iS10 != 0) {
                                            layoutParamsB3.height = iS10;
                                        }
                                        linearLayout.addView(buttonI3, layoutParamsB3);
                                        if (zS0) {
                                            linearLayout3.addView(linearLayout6, PassportActivity.b(p5.S0(86, passportActivity4), -2, 0, 0, 0));
                                        } else {
                                            LinearLayout linearLayout7 = new LinearLayout(passportActivity4);
                                            linearLayout7.setOrientation(1);
                                            linearLayout7.addView(linearLayout6, PassportActivity.b(-1, p5.S0(32, passportActivity4), 0, 0, 0));
                                            linearLayout7.addView(linearLayout, PassportActivity.b(-1, p5.S0(32, passportActivity4), 0, p5.S0(8, passportActivity4), 0));
                                            linearLayout3.addView(linearLayout7, PassportActivity.b(-1, -2, 0, p5.S0(8, passportActivity4), 0));
                                        }
                                        linearLayout2.addView(linearLayout3);
                                        if (i12 < list.size() - 1) {
                                            View view3 = new View(passportActivity4);
                                            view3.setBackgroundColor(p5.I);
                                            passportActivity4.f122b.addView(view3, PassportActivity.b(-1, p5.S0(1, passportActivity4), 0, p5.S0(4, passportActivity4), p5.S0(4, passportActivity4)));
                                            i11 = 0;
                                        } else {
                                            i11 = 0;
                                        }
                                        i10 = i12 + 1;
                                        passportActivity3 = passportActivity4;
                                    }
                                    return;
                                }
                                passportActivity2.f124d.setText("暂无存档\n\n点击新建空号后，从新手流程重新开始");
                            }
                            passportActivity2.f124d.setVisibility(0);
                        }
                    }
                });
                break;
            default:
                int i5 = PassportActivity.f120q;
                passportActivity.getClass();
                Toast.makeText(passportActivity, "已导入 " + i3 + " 个本地存档", 1).show();
                passportActivity.f();
                break;
        }
    }
}
