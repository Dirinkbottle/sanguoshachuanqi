package com.sgscq.vpn;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Handler;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.net.InetAddress;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g6 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f716a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SettingsActivity f717b;

    public /* synthetic */ g6(SettingsActivity settingsActivity, int i2) {
        this.f716a = i2;
        this.f717b = settingsActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2;
        int i3 = 3;
        int i4 = 20;
        final int i5 = 2;
        final int i6 = 1;
        final int i7 = 0;
        switch (this.f716a) {
            case 0:
                int i8 = SettingsActivity.Y;
                this.f717b.finish();
                return;
            case 1:
                SettingsActivity settingsActivity = this.f717b;
                String strTrim = settingsActivity.f139c.getText().toString().trim();
                if (strTrim.isEmpty()) {
                    strTrim = "我";
                }
                try {
                    i2 = Integer.parseInt(settingsActivity.f144h.getText().toString().trim());
                    if (i2 < 0) {
                        i2 = 0;
                    } else if (i2 > 15) {
                        i2 = 15;
                    }
                } catch (NumberFormatException unused) {
                }
                settingsActivity.f137a.edit().putString("player_name", strTrim).putString("resource_vip_level", String.valueOf(i2)).apply();
                Toast.makeText(settingsActivity, "已保存: " + strTrim + " VIP" + i2, 0).show();
                return;
            case 2:
                int i9 = SettingsActivity.Y;
                final SettingsActivity settingsActivity2 = this.f717b;
                settingsActivity2.getClass();
                AlertDialog.Builder builder = new AlertDialog.Builder(settingsActivity2);
                builder.setTitle("添加服务器");
                LinearLayout linearLayout = new LinearLayout(settingsActivity2);
                linearLayout.setOrientation(1);
                linearLayout.setPadding(p5.S0(24, settingsActivity2), p5.S0(20, settingsActivity2), p5.S0(24, settingsActivity2), p5.S0(12, settingsActivity2));
                boolean zS0 = p5.s0(settingsActivity2);
                float f2 = zS0 ? 13.0f : 14.0f;
                int iS0 = zS0 ? p5.S0(10, settingsActivity2) : p5.S0(12, settingsActivity2);
                int iS1 = zS0 ? p5.S0(8, settingsActivity2) : p5.S0(10, settingsActivity2);
                float f3 = settingsActivity2.getResources().getDisplayMetrics().density;
                GradientDrawable gradientDrawableC = settingsActivity2.C(p5.S0(8, settingsActivity2), p5.I, p5.y);
                GradientDrawable gradientDrawableY0 = p5.y0(p5.y, p5.S0(8, settingsActivity2), f3);
                final EditText editTextP = settingsActivity2.p("服务器名称", false, iS0, iS1, f2);
                editTextP.setTextColor(p5.F);
                editTextP.setHintTextColor(p5.H);
                linearLayout.addView(settingsActivity2.Q(editTextP, gradientDrawableC, gradientDrawableY0), p5.x0(-1, -2, 0, 0, p5.S0(12, settingsActivity2)));
                final EditText editTextP2 = settingsActivity2.p("IP 或域名", false, iS0, iS1, f2);
                editTextP2.setText("127.0.0.1");
                editTextP2.setTextColor(p5.F);
                editTextP2.setHintTextColor(p5.H);
                linearLayout.addView(settingsActivity2.Q(editTextP2, gradientDrawableC, gradientDrawableY0), p5.x0(-1, -2, 0, 0, p5.S0(12, settingsActivity2)));
                final EditText editTextP3 = settingsActivity2.p("端口", true, iS0, iS1, f2);
                editTextP3.setText("8080");
                editTextP3.setTextColor(p5.F);
                editTextP3.setHintTextColor(p5.H);
                linearLayout.addView(settingsActivity2.Q(editTextP3, gradientDrawableC, gradientDrawableY0), p5.x0(-1, -2, 0, 0, p5.S0(12, settingsActivity2)));
                builder.setView(linearLayout);
                builder.setPositiveButton("添加", (DialogInterface.OnClickListener) null);
                builder.setNegativeButton("取消", (DialogInterface.OnClickListener) null);
                final AlertDialog alertDialogCreate = builder.create();
                alertDialogCreate.show();
                alertDialogCreate.getWindow().setBackgroundDrawable(new ColorDrawable(p5.y));
                alertDialogCreate.getButton(-1).setTextColor(p5.B);
                alertDialogCreate.getButton(-2).setTextColor(p5.G);
                TextView textView = (TextView) alertDialogCreate.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setTextColor(p5.F);
                }
                alertDialogCreate.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.sgscq.vpn.k6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        String str;
                        int i10 = SettingsActivity.Y;
                        SettingsActivity settingsActivity3 = settingsActivity2;
                        settingsActivity3.getClass();
                        String strTrim2 = editTextP.getText().toString().trim();
                        String strTrim3 = editTextP2.getText().toString().trim();
                        String strTrim4 = editTextP3.getText().toString().trim();
                        if (strTrim2.isEmpty() || strTrim3.isEmpty() || strTrim4.isEmpty()) {
                            str = "请填写完整信息";
                        } else {
                            try {
                                int i11 = Integer.parseInt(strTrim4);
                                try {
                                    JSONArray jSONArray = new JSONArray(settingsActivity3.f137a.getString("custom_servers", "[]"));
                                    JSONObject jSONObject = new JSONObject();
                                    jSONObject.put("name", strTrim2);
                                    jSONObject.put("host", strTrim3);
                                    jSONObject.put("port", i11);
                                    jSONObject.put("status", 1);
                                    jSONArray.put(jSONObject);
                                    settingsActivity3.f137a.edit().putString("custom_servers", jSONArray.toString()).apply();
                                    Toast.makeText(settingsActivity3, "已添加: ".concat(strTrim2), 0).show();
                                } catch (Exception unused2) {
                                    Toast.makeText(settingsActivity3, "添加失败", 0).show();
                                }
                                settingsActivity3.s();
                                alertDialogCreate.dismiss();
                                return;
                            } catch (Exception unused3) {
                                str = "端口格式错误";
                            }
                        }
                        Toast.makeText(settingsActivity3, str, 0).show();
                    }
                });
                return;
            case 3:
                int i10 = SettingsActivity.Y;
                SettingsActivity settingsActivity3 = this.f717b;
                settingsActivity3.getClass();
                Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                intent.addCategory("android.intent.category.OPENABLE");
                intent.setType("application/zip");
                settingsActivity3.startActivityForResult(intent, 1002);
                return;
            case 4:
                int i11 = SettingsActivity.Y;
                this.f717b.F();
                return;
            case 5:
                int i12 = SettingsActivity.Y;
                SettingsActivity settingsActivity4 = this.f717b;
                try {
                    com.sgscq.vpn.config.f fVarB = com.sgscq.vpn.config.f.b(settingsActivity4.H.isChecked() ? "socks5" : settingsActivity4.G.isChecked() ? "https" : "http", settingsActivity4.I.getText().toString(), settingsActivity4.J.getText().toString());
                    settingsActivity4.L.setEnabled(false);
                    settingsActivity4.L("正在测试连接…", p5.C);
                    new Thread(new d(settingsActivity4, fVarB, i4), "ServiceProxyTest").start();
                    return;
                } catch (IllegalArgumentException e2) {
                    settingsActivity4.L(e2.getMessage(), p5.D);
                    Toast.makeText(settingsActivity4, e2.getMessage(), 0).show();
                    return;
                }
            case 6:
                int i13 = SettingsActivity.Y;
                final SettingsActivity settingsActivity5 = this.f717b;
                settingsActivity5.getClass();
                new AlertDialog.Builder(settingsActivity5).setTitle("恢复默认连接").setMessage("将关闭并清空手动代理配置，继续使用当前内置连接策略。").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("恢复默认", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.n6
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i14) {
                        switch (i6) {
                            case 0:
                                SettingsActivity settingsActivity6 = settingsActivity5;
                                int i15 = SettingsActivity.Y;
                                settingsActivity6.getClass();
                                q.e.a(settingsActivity6);
                                synchronized (q.e.f1906a) {
                                    if (q.e.f1908c == null) {
                                        throw new IllegalStateException("DNS 配置尚未初始化");
                                    }
                                    q.e.f1908c.c();
                                    q.e.f1907b = new c.i(false, "114.114.114.114", c.i.d("114.114.114.114"));
                                }
                                settingsActivity6.R = true;
                                settingsActivity6.N.setChecked(false);
                                settingsActivity6.O.setText((CharSequence) "114.114.114.114", false);
                                settingsActivity6.R = false;
                                settingsActivity6.J("已恢复默认，当前使用系统 DNS", p5.G);
                                Toast.makeText(settingsActivity6, "APP DNS 已恢复默认", 0).show();
                                return;
                            case 1:
                                SettingsActivity settingsActivity7 = settingsActivity5;
                                int i16 = SettingsActivity.Y;
                                settingsActivity7.getClass();
                                q.o.a(settingsActivity7);
                                synchronized (q.o.f1929a) {
                                    if (q.o.f1931c == null) {
                                        throw new IllegalStateException("代理配置尚未初始化");
                                    }
                                    q.i.h();
                                    q.o.f1931c.c();
                                    q.o.f1930b = com.sgscq.vpn.config.f.a();
                                }
                                settingsActivity7.M = true;
                                settingsActivity7.E.setChecked(false);
                                settingsActivity7.F.setChecked(true);
                                settingsActivity7.I.setText("");
                                settingsActivity7.J.setText("");
                                settingsActivity7.M = false;
                                settingsActivity7.L("已恢复默认连接", p5.G);
                                Toast.makeText(settingsActivity7, "已恢复默认连接", 0).show();
                                return;
                            default:
                                int i17 = SettingsActivity.Y;
                                SettingsActivity settingsActivity8 = settingsActivity5;
                                settingsActivity8.H("正在删除本人云存档...");
                                new Thread(new f6(settingsActivity8, 4), "sgscq-cloud-delete").start();
                                return;
                        }
                    }
                }).show();
                return;
            case 7:
                this.f717b.O.showDropDown();
                return;
            case 8:
                int i14 = SettingsActivity.Y;
                this.f717b.D();
                return;
            case 9:
                int i15 = SettingsActivity.Y;
                SettingsActivity settingsActivity6 = this.f717b;
                settingsActivity6.getClass();
                try {
                    InetAddress inetAddressD = c.i.d(SettingsActivity.k(settingsActivity6.O.getText().toString()));
                    c.i iVar = new c.i(true, inetAddressD.getHostAddress(), inetAddressD);
                    settingsActivity6.Q.setEnabled(false);
                    settingsActivity6.J("正在测试 DNS…", p5.C);
                    new Thread(new d(settingsActivity6, iVar, 19), "AppDnsTest").start();
                    return;
                } catch (IllegalArgumentException e3) {
                    settingsActivity6.J(e3.getMessage(), p5.D);
                    Toast.makeText(settingsActivity6, e3.getMessage(), 0).show();
                    return;
                }
            case 10:
                int i16 = SettingsActivity.Y;
                final SettingsActivity settingsActivity7 = this.f717b;
                settingsActivity7.getClass();
                new AlertDialog.Builder(settingsActivity7).setTitle("恢复默认 DNS").setMessage("将关闭 APP 专用 DNS，并恢复为默认地址 114.114.114.114。").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("恢复默认", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.n6
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i17) {
                        switch (i7) {
                            case 0:
                                SettingsActivity settingsActivity8 = settingsActivity7;
                                int i18 = SettingsActivity.Y;
                                settingsActivity8.getClass();
                                q.e.a(settingsActivity8);
                                synchronized (q.e.f1906a) {
                                    if (q.e.f1908c == null) {
                                        throw new IllegalStateException("DNS 配置尚未初始化");
                                    }
                                    q.e.f1908c.c();
                                    q.e.f1907b = new c.i(false, "114.114.114.114", c.i.d("114.114.114.114"));
                                }
                                settingsActivity8.R = true;
                                settingsActivity8.N.setChecked(false);
                                settingsActivity8.O.setText((CharSequence) "114.114.114.114", false);
                                settingsActivity8.R = false;
                                settingsActivity8.J("已恢复默认，当前使用系统 DNS", p5.G);
                                Toast.makeText(settingsActivity8, "APP DNS 已恢复默认", 0).show();
                                return;
                            case 1:
                                SettingsActivity settingsActivity9 = settingsActivity7;
                                int i19 = SettingsActivity.Y;
                                settingsActivity9.getClass();
                                q.o.a(settingsActivity9);
                                synchronized (q.o.f1929a) {
                                    if (q.o.f1931c == null) {
                                        throw new IllegalStateException("代理配置尚未初始化");
                                    }
                                    q.i.h();
                                    q.o.f1931c.c();
                                    q.o.f1930b = com.sgscq.vpn.config.f.a();
                                }
                                settingsActivity9.M = true;
                                settingsActivity9.E.setChecked(false);
                                settingsActivity9.F.setChecked(true);
                                settingsActivity9.I.setText("");
                                settingsActivity9.J.setText("");
                                settingsActivity9.M = false;
                                settingsActivity9.L("已恢复默认连接", p5.G);
                                Toast.makeText(settingsActivity9, "已恢复默认连接", 0).show();
                                return;
                            default:
                                int i110 = SettingsActivity.Y;
                                SettingsActivity settingsActivity10 = settingsActivity7;
                                settingsActivity10.H("正在删除本人云存档...");
                                new Thread(new f6(settingsActivity10, 4), "sgscq-cloud-delete").start();
                                return;
                        }
                    }
                }).show();
                return;
            case 11:
                int i17 = SettingsActivity.Y;
                SettingsActivity settingsActivity8 = this.f717b;
                settingsActivity8.getClass();
                p5.I0(settingsActivity8, "抖音", "https://www.douyin.com/user/MS4wLjABAAAA-TXptUA8uZONQJpjl8c_l6seYJUw7Az1_GZ74zENB7w");
                return;
            case 12:
                final SettingsActivity settingsActivity9 = this.f717b;
                d1 d1VarL = settingsActivity9.z.l();
                final EditText editText = new EditText(settingsActivity9);
                editText.setInputType(1);
                editText.setSingleLine(true);
                editText.setHint("抖音号 / UID / 主页链接");
                String str = d1VarL.f617a;
                if (str != null && !str.isEmpty()) {
                    editText.setText(d1VarL.f617a);
                    editText.setSelection(d1VarL.f617a.length());
                }
                new AlertDialog.Builder(settingsActivity9).setTitle("绑定抖音").setMessage("请先关注抖音号 2107174701，然后填写您的抖音号、UID 或抖音主页链接。").setView(editText).setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.z5
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i18) {
                        int i19 = i6;
                        EditText editText2 = editText;
                        SettingsActivity settingsActivity10 = settingsActivity9;
                        switch (i19) {
                            case 0:
                                int i20 = SettingsActivity.Y;
                                settingsActivity10.getClass();
                                String strTrim2 = editText2.getText().toString().trim();
                                int i21 = b0.f194c;
                                if (!(strTrim2 != null && strTrim2.trim().matches("\\d{1,20}"))) {
                                    Toast.makeText(settingsActivity10, "请输入纯数字 UID", 0).show();
                                } else {
                                    TextView textView2 = settingsActivity10.y;
                                    if (textView2 != null) {
                                        textView2.setText("正在校验 B 站关注状态...");
                                    }
                                    b0 b0Var = settingsActivity10.x;
                                    p6 p6Var = new p6(settingsActivity10, 0);
                                    b0Var.getClass();
                                    String strTrim3 = strTrim2 == null ? "" : strTrim2.trim();
                                    if (!(strTrim3 != null && strTrim3.trim().matches("\\d{1,20}"))) {
                                        p6Var.a("请输入有效的 B 站 UID（纯数字）");
                                    } else {
                                        z zVar = new z();
                                        zVar.f1581a = strTrim3;
                                        zVar.f1582b = true;
                                        zVar.f1583c = false;
                                        zVar.f1584d = 0L;
                                        zVar.f1585e = 0L;
                                        zVar.f1586f = "";
                                        zVar.f1587g = "";
                                        zVar.f1588h = 0;
                                        zVar.f1589i = 0L;
                                        zVar.f1590j = b0Var.c(zVar);
                                        b0Var.g(zVar);
                                        b0.f(settingsActivity10, p6Var, new w(b0Var, 2));
                                    }
                                }
                                break;
                            default:
                                int i22 = SettingsActivity.Y;
                                settingsActivity10.getClass();
                                String strO = h.o(editText2.getText().toString());
                                if (!(strO != null && strO.trim().matches("[A-Za-z0-9._-]{1,128}"))) {
                                    Toast.makeText(settingsActivity10, "请输入有效的抖音号、UID 或主页链接", 0).show();
                                } else {
                                    TextView textView3 = settingsActivity10.A;
                                    if (textView3 != null) {
                                        textView3.setText("正在校验抖音关注状态...");
                                    }
                                    h hVar = settingsActivity10.z;
                                    p6 p6Var2 = new p6(settingsActivity10, 2);
                                    hVar.getClass();
                                    String strO2 = h.o(strO);
                                    if (!(strO2 != null && strO2.trim().matches("[A-Za-z0-9._-]{1,128}"))) {
                                        p6Var2.a("请输入有效的抖音号、UID 或主页链接");
                                    } else {
                                        d1 d1Var = new d1();
                                        d1Var.f617a = strO2;
                                        d1Var.f618b = true;
                                        d1Var.f619c = false;
                                        d1Var.f620d = 0L;
                                        d1Var.f621e = 0L;
                                        d1Var.f623g = hVar.n(d1Var);
                                        hVar.t(d1Var);
                                        new Thread(new c((Object) new b1(hVar, 1), p6Var2, (Activity) settingsActivity10, 2), "DouyinAuth").start();
                                    }
                                }
                                break;
                        }
                    }
                }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                return;
            case 13:
                SettingsActivity settingsActivity10 = this.f717b;
                TextView textView2 = settingsActivity10.A;
                if (textView2 != null) {
                    textView2.setText("正在刷新抖音关注状态...");
                }
                h hVar = settingsActivity10.z;
                p6 p6Var = new p6(settingsActivity10, 3);
                d1 d1VarL2 = hVar.l();
                if (!d1VarL2.f618b || d1VarL2.f617a.isEmpty()) {
                    p6Var.a("未绑定抖音号");
                    return;
                } else {
                    new Thread(new c((Object) new b1(hVar, i7), p6Var, (Activity) settingsActivity10, i5), "DouyinAuth").start();
                    return;
                }
            case 14:
                SettingsActivity settingsActivity11 = this.f717b;
                z0.e(settingsActivity11, "unbind", "douyin", settingsActivity11.f147k.j(), settingsActivity11.x.b(), settingsActivity11.z.l());
                settingsActivity11.z.c();
                Toast.makeText(settingsActivity11, "已解绑抖音", 0).show();
                settingsActivity11.w();
                return;
            case 15:
                int i18 = SettingsActivity.Y;
                SettingsActivity settingsActivity12 = this.f717b;
                settingsActivity12.getClass();
                p5.I0(settingsActivity12, "B站", "https://space.bilibili.com/" + p5.S()[3]);
                return;
            case 16:
                final SettingsActivity settingsActivity13 = this.f717b;
                z zVarB = settingsActivity13.x.b();
                final EditText editText2 = new EditText(settingsActivity13);
                editText2.setInputType(2);
                editText2.setHint("纯数字 UID");
                String str2 = zVarB.f1581a;
                if (str2 != null && !str2.isEmpty()) {
                    editText2.setText(zVarB.f1581a);
                    editText2.setSelection(zVarB.f1581a.length());
                }
                new AlertDialog.Builder(settingsActivity13).setTitle("绑定 B 站 UID").setMessage("打开 B 站 → 我的 → 头像下方一长串数字即您的 UID。\n\n绑定后将自动校验是否关注 UP。").setView(editText2).setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.z5
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i19) {
                        int i110 = i7;
                        EditText editText3 = editText2;
                        SettingsActivity settingsActivity14 = settingsActivity13;
                        switch (i110) {
                            case 0:
                                int i20 = SettingsActivity.Y;
                                settingsActivity14.getClass();
                                String strTrim2 = editText3.getText().toString().trim();
                                int i21 = b0.f194c;
                                if (!(strTrim2 != null && strTrim2.trim().matches("\\d{1,20}"))) {
                                    Toast.makeText(settingsActivity14, "请输入纯数字 UID", 0).show();
                                } else {
                                    TextView textView3 = settingsActivity14.y;
                                    if (textView3 != null) {
                                        textView3.setText("正在校验 B 站关注状态...");
                                    }
                                    b0 b0Var = settingsActivity14.x;
                                    p6 p6Var2 = new p6(settingsActivity14, 0);
                                    b0Var.getClass();
                                    String strTrim3 = strTrim2 == null ? "" : strTrim2.trim();
                                    if (!(strTrim3 != null && strTrim3.trim().matches("\\d{1,20}"))) {
                                        p6Var2.a("请输入有效的 B 站 UID（纯数字）");
                                    } else {
                                        z zVar = new z();
                                        zVar.f1581a = strTrim3;
                                        zVar.f1582b = true;
                                        zVar.f1583c = false;
                                        zVar.f1584d = 0L;
                                        zVar.f1585e = 0L;
                                        zVar.f1586f = "";
                                        zVar.f1587g = "";
                                        zVar.f1588h = 0;
                                        zVar.f1589i = 0L;
                                        zVar.f1590j = b0Var.c(zVar);
                                        b0Var.g(zVar);
                                        b0.f(settingsActivity14, p6Var2, new w(b0Var, 2));
                                    }
                                }
                                break;
                            default:
                                int i22 = SettingsActivity.Y;
                                settingsActivity14.getClass();
                                String strO = h.o(editText3.getText().toString());
                                if (!(strO != null && strO.trim().matches("[A-Za-z0-9._-]{1,128}"))) {
                                    Toast.makeText(settingsActivity14, "请输入有效的抖音号、UID 或主页链接", 0).show();
                                } else {
                                    TextView textView4 = settingsActivity14.A;
                                    if (textView4 != null) {
                                        textView4.setText("正在校验抖音关注状态...");
                                    }
                                    h hVar2 = settingsActivity14.z;
                                    p6 p6Var3 = new p6(settingsActivity14, 2);
                                    hVar2.getClass();
                                    String strO2 = h.o(strO);
                                    if (!(strO2 != null && strO2.trim().matches("[A-Za-z0-9._-]{1,128}"))) {
                                        p6Var3.a("请输入有效的抖音号、UID 或主页链接");
                                    } else {
                                        d1 d1Var = new d1();
                                        d1Var.f617a = strO2;
                                        d1Var.f618b = true;
                                        d1Var.f619c = false;
                                        d1Var.f620d = 0L;
                                        d1Var.f621e = 0L;
                                        d1Var.f623g = hVar2.n(d1Var);
                                        hVar2.t(d1Var);
                                        new Thread(new c((Object) new b1(hVar2, 1), p6Var3, (Activity) settingsActivity14, 2), "DouyinAuth").start();
                                    }
                                }
                                break;
                        }
                    }
                }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                return;
            case 17:
                SettingsActivity settingsActivity14 = this.f717b;
                TextView textView3 = settingsActivity14.y;
                if (textView3 != null) {
                    textView3.setText("正在刷新 B 站关注状态...");
                }
                b0 b0Var = settingsActivity14.x;
                p6 p6Var2 = new p6(settingsActivity14, 1);
                z zVarB2 = b0Var.b();
                if (!zVarB2.f1582b || zVarB2.f1581a.isEmpty()) {
                    p6Var2.a("未绑定 B 站 UID");
                    return;
                } else {
                    b0.f(settingsActivity14, p6Var2, new w(b0Var, i6));
                    return;
                }
            case 18:
                SettingsActivity settingsActivity15 = this.f717b;
                z0.e(settingsActivity15, "unbind", "bilibili", settingsActivity15.f147k.j(), settingsActivity15.x.b(), settingsActivity15.z.l());
                settingsActivity15.x.f196b.edit().clear().apply();
                Toast.makeText(settingsActivity15, "已解绑 B 站", 0).show();
                settingsActivity15.u();
                return;
            case 19:
                int i19 = SettingsActivity.Y;
                SettingsActivity settingsActivity16 = this.f717b;
                settingsActivity16.getClass();
                try {
                    settingsActivity16.f147k.p(settingsActivity16);
                    return;
                } catch (Exception e4) {
                    Toast.makeText(settingsActivity16, e4.getMessage(), 1).show();
                    settingsActivity16.t();
                    return;
                }
            case 20:
                SettingsActivity settingsActivity17 = this.f717b;
                settingsActivity17.f148l.setText("正在刷新爱发电权益...");
                h hVar2 = settingsActivity17.f147k;
                p6 p6Var3 = new p6(settingsActivity17, 4);
                f fVarJ = hVar2.j();
                if (!fVarJ.f665c || fVarJ.f663a.isEmpty()) {
                    p6Var3.a("请先登录爱发电");
                    return;
                } else {
                    new Thread(new c(new a(hVar2, fVarJ, i6), settingsActivity17, p6Var3, i7), "AfdianAuth").start();
                    return;
                }
            case 21:
                SettingsActivity settingsActivity18 = this.f717b;
                z0.e(settingsActivity18, "unbind", "afdian", settingsActivity18.f147k.j(), settingsActivity18.x.b(), settingsActivity18.z.l());
                settingsActivity18.f147k.c();
                Toast.makeText(settingsActivity18, "已解绑爱发电", 0).show();
                settingsActivity18.t();
                settingsActivity18.v();
                return;
            case 22:
                int i20 = SettingsActivity.Y;
                SettingsActivity settingsActivity19 = this.f717b;
                settingsActivity19.getClass();
                p5.m1(settingsActivity19);
                return;
            case 23:
                int i21 = SettingsActivity.Y;
                SettingsActivity settingsActivity20 = this.f717b;
                settingsActivity20.getClass();
                if (p5.q0(settingsActivity20)) {
                    Toast.makeText(settingsActivity20, "通知权限已开启", 0).show();
                    return;
                } else {
                    if (p5.Z0(settingsActivity20, 1101)) {
                        return;
                    }
                    try {
                        settingsActivity20.startActivity(p5.g(settingsActivity20));
                        return;
                    } catch (RuntimeException unused2) {
                        Toast.makeText(settingsActivity20, "打不开系统通知设置", 0).show();
                        return;
                    }
                }
            case 24:
                int i22 = SettingsActivity.Y;
                SettingsActivity settingsActivity21 = this.f717b;
                settingsActivity21.getClass();
                String[][] strArr = {new String[]{"com.hihonor.systemmanager", "com.hihonor.systemmanager.startupmgr.ui.StartupNormalAppListActivity"}, new String[]{"com.huawei.systemmanager", "com.huawei.systemmanager.startupmgr.ui.StartupNormalAppListActivity"}, new String[]{"com.hihonor.systemmanager", "com.hihonor.systemmanager.mainscreen.MainScreenActivity"}, new String[]{"com.huawei.systemmanager", "com.huawei.systemmanager.mainscreen.MainScreenActivity"}};
                int i23 = 0;
                while (true) {
                    if (i23 < 4) {
                        String[] strArr2 = strArr[i23];
                        try {
                            Intent component = new Intent().setComponent(new ComponentName(strArr2[0], strArr2[1]));
                            if (component.resolveActivity(settingsActivity21.getPackageManager()) != null) {
                                settingsActivity21.startActivity(component);
                            }
                        } catch (RuntimeException e5) {
                            z2.g("KeepAlive", "打开厂商启动管理失败(" + strArr2[0] + "): " + e5.getClass().getSimpleName());
                        }
                        i23++;
                    } else {
                        i6 = 0;
                    }
                }
                if (i6 == 0) {
                    try {
                        settingsActivity21.startActivity(new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + settingsActivity21.getPackageName())));
                        return;
                    } catch (RuntimeException e6) {
                        z2.g("KeepAlive", "打不开应用详情页: ".concat(e6.getClass().getSimpleName()));
                        return;
                    }
                }
                return;
            case 25:
                int i24 = SettingsActivity.Y;
                final SettingsActivity settingsActivity22 = this.f717b;
                settingsActivity22.getClass();
                new AlertDialog.Builder(settingsActivity22).setTitle("删除云存档").setMessage("将删除云端存档，并同时删除本地该云护照的进度；删除后可新建新的云存档（服务器保留 7 天，误删可联系管理员恢复）。继续？").setPositiveButton("删除", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.n6
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i110) {
                        switch (i5) {
                            case 0:
                                SettingsActivity settingsActivity23 = settingsActivity22;
                                int i111 = SettingsActivity.Y;
                                settingsActivity23.getClass();
                                q.e.a(settingsActivity23);
                                synchronized (q.e.f1906a) {
                                    if (q.e.f1908c == null) {
                                        throw new IllegalStateException("DNS 配置尚未初始化");
                                    }
                                    q.e.f1908c.c();
                                    q.e.f1907b = new c.i(false, "114.114.114.114", c.i.d("114.114.114.114"));
                                }
                                settingsActivity23.R = true;
                                settingsActivity23.N.setChecked(false);
                                settingsActivity23.O.setText((CharSequence) "114.114.114.114", false);
                                settingsActivity23.R = false;
                                settingsActivity23.J("已恢复默认，当前使用系统 DNS", p5.G);
                                Toast.makeText(settingsActivity23, "APP DNS 已恢复默认", 0).show();
                                return;
                            case 1:
                                SettingsActivity settingsActivity24 = settingsActivity22;
                                int i112 = SettingsActivity.Y;
                                settingsActivity24.getClass();
                                q.o.a(settingsActivity24);
                                synchronized (q.o.f1929a) {
                                    if (q.o.f1931c == null) {
                                        throw new IllegalStateException("代理配置尚未初始化");
                                    }
                                    q.i.h();
                                    q.o.f1931c.c();
                                    q.o.f1930b = com.sgscq.vpn.config.f.a();
                                }
                                settingsActivity24.M = true;
                                settingsActivity24.E.setChecked(false);
                                settingsActivity24.F.setChecked(true);
                                settingsActivity24.I.setText("");
                                settingsActivity24.J.setText("");
                                settingsActivity24.M = false;
                                settingsActivity24.L("已恢复默认连接", p5.G);
                                Toast.makeText(settingsActivity24, "已恢复默认连接", 0).show();
                                return;
                            default:
                                int i113 = SettingsActivity.Y;
                                SettingsActivity settingsActivity110 = settingsActivity22;
                                settingsActivity110.H("正在删除本人云存档...");
                                new Thread(new f6(settingsActivity110, 4), "sgscq-cloud-delete").start();
                                return;
                        }
                    }
                }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                return;
            case 26:
                int i25 = SettingsActivity.Y;
                SettingsActivity settingsActivity23 = this.f717b;
                settingsActivity23.H("正在上传本人云存档...");
                new Thread(new f6(settingsActivity23, i6), "sgscq-cloud-upload").start();
                return;
            case 27:
                int i26 = SettingsActivity.Y;
                SettingsActivity settingsActivity24 = this.f717b;
                settingsActivity24.H("正在获取云端历史节点...");
                new Thread(new f6(settingsActivity24, i5), "sgscq-cloud-versions").start();
                return;
            case 28:
                int i27 = SettingsActivity.Y;
                SettingsActivity settingsActivity25 = this.f717b;
                settingsActivity25.getClass();
                synchronized (com.sgscq.vpn.cloud.m0.class) {
                    com.sgscq.vpn.cloud.m0.f413a = true;
                    com.sgscq.vpn.cloud.m0.f414b = 1;
                    com.sgscq.vpn.cloud.m0.f415c = 0;
                    com.sgscq.vpn.cloud.m0.f416d = 0;
                }
                settingsActivity25.H("正在同步云对手...");
                settingsActivity25.runOnUiThread(new d6(settingsActivity25, i6, i7, i7));
                Handler handler = settingsActivity25.v;
                o6 o6Var = settingsActivity25.w;
                handler.removeCallbacks(o6Var);
                handler.postDelayed(o6Var, 250L);
                new Thread(new f6(settingsActivity25, i3), "sgscq-cloud-opponent-sync").start();
                return;
            default:
                SettingsActivity settingsActivity26 = this.f717b;
                int i28 = SettingsActivity.Y;
                settingsActivity26.getClass();
                p7 p7VarH = p7.h(settingsActivity26);
                boolean z = !p7VarH.r;
                p7VarH.e();
                synchronized (p7VarH.f1293a) {
                    try {
                        p7VarH.r = z;
                        c.e eVar = p7VarH.f1302j;
                        if (eVar != null) {
                            SharedPreferences.Editor editorEdit = ((SharedPreferences) eVar.f38a).edit();
                            String str3 = (String) eVar.f39b;
                            editorEdit.putBoolean("enabled_" + (str3 == null ? "" : str3.trim().toLowerCase()), z).apply();
                        }
                        p7VarH.p(z ? p7VarH.f1303k : Collections.emptyList());
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                settingsActivity26.y();
                Toast.makeText(settingsActivity26, z ? "已启用云对手" : "已禁用云对手，缓存仍保留", 0).show();
                return;
        }
    }
}
