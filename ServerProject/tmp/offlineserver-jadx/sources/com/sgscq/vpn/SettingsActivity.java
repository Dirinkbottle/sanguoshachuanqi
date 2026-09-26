package com.sgscq.vpn;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import com.sgscq.vpn.cloud.CloudSessionStore$SessionData;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class SettingsActivity extends Activity {
    public static final /* synthetic */ int Y = 0;
    public TextView A;
    public Switch B;
    public com.sgscq.vpn.cloud.d0 C;
    public Button D;
    public Switch E;
    public RadioButton F;
    public RadioButton G;
    public RadioButton H;
    public EditText I;
    public EditText J;
    public TextView K;
    public Button L;
    public boolean M;
    public Switch N;
    public AutoCompleteTextView O;
    public TextView P;
    public Button Q;
    public boolean R;
    public TextView S;
    public TextView T;
    public TextView U;
    public Switch V;
    public Button[] W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SharedPreferences f137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LinearLayout f138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public EditText f139c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public EditText f140d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public EditText f141e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public EditText f142f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public EditText f143g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public EditText f144h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ScrollView f145i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public LinearLayout f146j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public h f147k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f148l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public com.sgscq.vpn.cloud.q0 f149m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public m.e f150n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TextView f151o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Button f152p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Button f153q;
    public Button r;
    public Button s;
    public ProgressBar t;
    public TextView u;
    public b0 x;
    public TextView y;
    public h z;
    public final Handler v = new Handler(Looper.getMainLooper());
    public final o6 w = new o6(this);
    public int X = 3;

    public static String b(com.sgscq.vpn.config.f fVar) {
        StringBuilder sbB = a.b0.b("已启用 ", fVar.f570b.toUpperCase(Locale.ROOT), " · ");
        sbB.append(fVar.f571c);
        sbB.append(":");
        sbB.append(fVar.f572d);
        return sbB.toString();
    }

    public static String j(Exception exc) {
        if (exc instanceof com.sgscq.vpn.cloud.a0) {
            com.sgscq.vpn.cloud.a0 a0Var = (com.sgscq.vpn.cloud.a0) exc;
            if (a0Var.f269c > 0) {
                return a0Var.getMessage() + "（" + a0Var.f269c + " 秒后可重试）";
            }
        }
        String message = exc == null ? "未知错误" : exc.getMessage();
        return (message == null || message.isEmpty()) ? "云服务请求失败" : message;
    }

    public static String k(String str) {
        String strTrim = str == null ? "" : str.trim();
        int iLastIndexOf = strTrim.lastIndexOf(183);
        return iLastIndexOf >= 0 ? strTrim.substring(iLastIndexOf + 1).trim() : strTrim;
    }

    public final void A() {
        if (this.W == null) {
            return;
        }
        int i2 = 1;
        while (i2 <= 3) {
            Button button = this.W[i2 - 1];
            if (button != null) {
                button.setTextColor(i2 == this.X ? p5.B : p5.C);
            }
            i2++;
        }
    }

    public final boolean B() {
        boolean z;
        int i2;
        int iMax;
        int iMax2;
        synchronized (com.sgscq.vpn.cloud.m0.class) {
            z = com.sgscq.vpn.cloud.m0.f413a;
            i2 = com.sgscq.vpn.cloud.m0.f414b;
            int i3 = com.sgscq.vpn.cloud.m0.f415c;
            int i4 = com.sgscq.vpn.cloud.m0.f416d;
            iMax = Math.max(0, i3);
            iMax2 = Math.max(0, i4);
        }
        if (!z) {
            return false;
        }
        x(i2, iMax, iMax2);
        return true;
    }

    public final GradientDrawable C(int i2, int i3, int i4) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(i2);
        gradientDrawable.setStroke(p5.S0(1, this), i3);
        gradientDrawable.setColor(i4);
        return gradientDrawable;
    }

    public final boolean D() {
        c.i iVarB;
        String strK = k(this.O.getText().toString());
        try {
            q.e.a(this);
            synchronized (q.e.f1906a) {
                iVarB = q.e.b(strK);
            }
            this.R = true;
            this.O.setText((CharSequence) iVarB.f48c, false);
            this.N.setChecked(true);
            this.R = false;
            J("已启用 · " + ((String) iVarB.f48c), p5.B);
            Toast.makeText(this, "APP DNS 已保存并启用", 0).show();
            return true;
        } catch (IllegalArgumentException e2) {
            J(e2.getMessage(), p5.D);
            this.O.requestFocus();
            Toast.makeText(this, e2.getMessage(), 0).show();
            return false;
        }
    }

    public final void E(int i2, final boolean z) {
        String str;
        p5.h1(i2, this, z);
        final p7 p7VarH = p7.h(this);
        Context context = p7VarH.f1297e;
        if (context != null) {
            final int iE0 = p5.E0(i2);
            p5.h1(iE0, context, z);
            p7.u.submit(new Runnable() { // from class: com.sgscq.vpn.i7
                @Override // java.lang.Runnable
                public final void run() {
                    String str2;
                    p7 p7Var = p7VarH;
                    boolean z2 = z;
                    int i3 = iE0;
                    if (p7Var.f1297e == null) {
                        return;
                    }
                    int iE1 = p5.E0(i3);
                    p5.h1(iE1, p7Var.f1297e, z2);
                    p7Var.e();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    List arrayList = z2 ? new ArrayList(m1.b(iE1)) : Collections.emptyList();
                    synchronized (p7Var.f1293a) {
                        p7Var.c(arrayList);
                        p7Var.s();
                    }
                    StringBuilder sb = new StringBuilder("elite garrison applied enabled=");
                    sb.append(z2);
                    sb.append(" level=");
                    sb.append(iE1);
                    sb.append(" elites=");
                    sb.append(arrayList.size());
                    if (z2) {
                        str2 = " ranks=" + p7Var.f(arrayList);
                    } else {
                        str2 = "";
                    }
                    sb.append(str2);
                    sb.append(" took ");
                    sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
                    sb.append("ms");
                    z2.e("SGSCQ_ROSTER", sb.toString());
                }
            });
        }
        if (z) {
            str = "已启用菁英对手 L" + p5.E0(i2) + "，天梯驻守更新中";
        } else {
            str = "已关闭菁英对手，天梯驻守更新中";
        }
        Toast.makeText(this, str, 0).show();
    }

    public final boolean F() {
        String str;
        com.sgscq.vpn.config.f fVarD;
        if (this.H.isChecked()) {
            str = "socks5";
        } else {
            str = this.G.isChecked() ? "https" : "http";
        }
        String string = this.I.getText().toString();
        String string2 = this.J.getText().toString();
        try {
            q.o.a(this);
            synchronized (q.o.f1929a) {
                fVarD = q.o.d(str, string, string2);
            }
            this.M = true;
            this.E.setChecked(true);
            this.M = false;
            L(b(fVarD), p5.B);
            Toast.makeText(this, "手动代理已保存并启用", 0).show();
            return true;
        } catch (IllegalArgumentException e2) {
            L(e2.getMessage(), p5.D);
            (string.trim().isEmpty() ? this.I : this.J).requestFocus();
            Toast.makeText(this, e2.getMessage(), 0).show();
            return false;
        }
    }

    public final TextView G(String str, float f2) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(f2);
        textView.setTextColor(p5.C);
        textView.setAllCaps(true);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        return textView;
    }

    public final void H(String str) {
        m();
        I(false, false, false, false);
        TextView textView = this.f151o;
        if (textView != null) {
            textView.setText(str);
            this.f151o.setTextColor(p5.C);
        }
    }

    public final void I(boolean z, boolean z2, boolean z3, boolean z4) {
        Button button = this.f152p;
        if (button != null) {
            button.setEnabled(z);
        }
        Button button2 = this.f153q;
        if (button2 != null) {
            button2.setEnabled(z2);
        }
        Button button3 = this.r;
        if (button3 != null) {
            button3.setEnabled(z3);
        }
        Button button4 = this.s;
        if (button4 != null) {
            button4.setEnabled(z4);
        }
    }

    public final void J(String str, int i2) {
        TextView textView = this.P;
        if (textView == null) {
            return;
        }
        textView.setText(str);
        this.P.setTextColor(i2);
    }

    public final void K(Exception exc) {
        runOnUiThread(new m6(this, exc, 1));
    }

    public final void L(String str, int i2) {
        TextView textView = this.K;
        if (textView == null) {
            return;
        }
        textView.setText(str);
        this.K.setTextColor(i2);
    }

    public final Button M(String str, int i2, View.OnClickListener onClickListener) {
        Button button = new Button(this);
        button.setText(str);
        button.setTextSize(12.0f);
        button.setTextColor(i2);
        button.setAllCaps(false);
        button.setMinHeight(0);
        button.setMinimumHeight(0);
        button.setPadding(p5.s0(this) ? p5.S0(12, this) : p5.S0(14, this), 0, p5.s0(this) ? p5.S0(12, this) : p5.S0(14, this), 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(p5.S0(8, this));
        gradientDrawable.setStroke(p5.S0(1, this), i2);
        gradientDrawable.setColor(p5.x);
        p5.i(button, gradientDrawable, p5.y0(p5.x, p5.S0(8, this), getResources().getDisplayMetrics().density));
        button.setOnClickListener(onClickListener);
        return button;
    }

    public final void N() {
        if (this.S == null) {
            return;
        }
        File file = new File(new File(getFilesDir(), "hd"), "hd_image.zip");
        if (file.exists()) {
            this.S.setText("正在统计...");
            new Thread(new a6(this, file, file.length())).start();
        } else {
            this.S.setText("未导入");
            this.S.setTextColor(p5.G);
        }
    }

    public final void O() {
        boolean z;
        if (this.U == null) {
            return;
        }
        boolean z2 = false;
        if (p5.q0(this)) {
            try {
                NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
                z = notificationManager == null || notificationManager.areNotificationsEnabled();
            } catch (RuntimeException unused) {
            }
            if (z) {
                z2 = true;
            }
        }
        this.U.setText(z2 ? "通知权限：已开启，充值到账与 VPN 状态提醒可正常收到" : "通知权限：未开启，通知会被系统丢弃（充值到账提醒、VPN 状态提醒收不到）");
        this.U.setTextColor(z2 ? p5.B : p5.D);
    }

    public final LinearLayout P(LinearLayout linearLayout, boolean z) {
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        int iS0 = p5.S0(z ? 14 : 18, this);
        int iS1 = z ? p5.S0(12, this) : p5.S0(16, this);
        linearLayout2.setPadding(iS0, iS1, iS0, iS1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(p5.S0(12, this));
        gradientDrawable.setColor(p5.z);
        linearLayout2.setBackground(gradientDrawable);
        linearLayout2.addView(linearLayout);
        return linearLayout2;
    }

    public final LinearLayout Q(final EditText editText, GradientDrawable gradientDrawable, GradientDrawable gradientDrawable2) {
        final LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setFocusable(true);
        linearLayout.setFocusableInTouchMode(false);
        linearLayout.setClickable(true);
        linearLayout.setDescendantFocusability(393216);
        linearLayout.setBackground(gradientDrawable);
        linearLayout.setOnFocusChangeListener(new f1(gradientDrawable2, gradientDrawable, 2));
        editText.setFocusable(true);
        editText.setFocusableInTouchMode(true);
        linearLayout.setOnKeyListener(new View.OnKeyListener() { // from class: com.sgscq.vpn.h1
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i2, KeyEvent keyEvent) {
                if (keyEvent.getAction() != 0 || (i2 != 23 && i2 != 66)) {
                    return false;
                }
                p5.a(editText, linearLayout);
                return true;
            }
        });
        linearLayout.setOnClickListener(new i1(editText, linearLayout, 0));
        editText.setOnTouchListener(new View.OnTouchListener() { // from class: com.sgscq.vpn.j1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                p5.a(editText, linearLayout);
                return false;
            }
        });
        editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sgscq.vpn.k1
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                if (z) {
                    return;
                }
                linearLayout.setDescendantFocusability(393216);
            }
        });
        linearLayout.addView(editText, new LinearLayout.LayoutParams(-1, -2));
        return linearLayout;
    }

    public final View a() {
        View view = new View(this);
        view.setBackgroundColor(p5.C);
        return view;
    }

    public final void c(String str, int i2, String str2) {
        int i3 = 0;
        boolean z = i2 < 0;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setPadding(p5.S0(14, this), p5.S0(12, this), p5.S0(14, this), p5.S0(12, this));
        linearLayout.setBackground(C(p5.S0(10, this), p5.I, p5.y));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding(0, 0, p5.S0(10, this), 0);
        TextView textView = new TextView(this);
        StringBuilder sb = new StringBuilder();
        sb.append(z ? "● " : "");
        sb.append(str);
        textView.setText(sb.toString());
        textView.setTextSize(14.0f);
        textView.setTextColor(z ? p5.B : p5.F);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        linearLayout2.addView(textView);
        TextView textView2 = new TextView(this);
        textView2.setText(str2);
        textView2.setTextSize(12.0f);
        textView2.setTextColor(p5.G);
        linearLayout2.addView(textView2);
        linearLayout.addView(linearLayout2, p5.x0(0, -2, 1, 0, 0));
        if (z) {
            TextView textView3 = new TextView(this);
            textView3.setText("默认");
            textView3.setTextSize(11.0f);
            textView3.setTextColor(p5.H);
            linearLayout.addView(textView3);
        } else {
            linearLayout.addView(M("删除", p5.D, new h6(this, i2, i3)), p5.x0(-2, p5.S0(p5.s0(this) ? 36 : 44, this), 0, 0, 0));
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.bottomMargin = p5.S0(10, this);
        this.f138b.addView(linearLayout, layoutParams);
    }

    public final LinearLayout d(float f2, int i2, int i3) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.addView(G("爱发电权益", f2), p5.x0(-1, -2, 0, 0, 0));
        linearLayout.addView(a(), p5.w0(p5.S0(28, this), p5.S0(2, this), p5.S0(1, this)));
        TextView textView = new TextView(this);
        this.f148l = textView;
        textView.setTextSize(p5.s0(this) ? 12.0f : 13.0f);
        this.f148l.setTextColor(p5.G);
        this.f148l.setPadding(0, p5.S0(8, this), 0, p5.S0(10, this));
        linearLayout.addView(this.f148l, p5.x0(-1, -2, 0, 0, 0));
        C(p5.S0(8, this), p5.I, p5.y);
        p5.y0(p5.y, p5.S0(8, this), getResources().getDisplayMetrics().density);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        Button buttonH = c.a.h(this, 19, "登录", p5.B);
        Button buttonH2 = c.a.h(this, 20, "刷新", p5.C);
        Button buttonH3 = c.a.h(this, 21, "解绑", p5.D);
        linearLayout2.addView(buttonH, new LinearLayout.LayoutParams(0, i2, 1.0f));
        linearLayout2.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(8, this), 0));
        linearLayout2.addView(buttonH2, new LinearLayout.LayoutParams(0, i2, 1.0f));
        linearLayout2.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(8, this), 0));
        linearLayout2.addView(buttonH3, new LinearLayout.LayoutParams(0, i2, 1.0f));
        linearLayout.addView(linearLayout2, p5.x0(-1, -2, 0, 0, p5.S0(8, this)));
        TextView textView2 = new TextView(this);
        textView2.setText("本地保存权益结果，用于单机福利判断。");
        textView2.setTextSize(11.0f);
        textView2.setTextColor(p5.H);
        textView2.setGravity(17);
        linearLayout.addView(textView2, p5.x0(-1, -2, 0, 0, p5.S0(14, this)));
        TextView textViewG = G("云端角色", f2);
        textViewG.setTextColor(p5.B);
        linearLayout.addView(textViewG, p5.x0(-1, -2, 0, 0, 0));
        TextView textView3 = new TextView(this);
        this.f151o = textView3;
        textView3.setTextSize(p5.s0(this) ? 12.0f : 13.0f);
        this.f151o.setTextColor(p5.G);
        this.f151o.setPadding(0, p5.S0(8, this), 0, p5.S0(10, this));
        linearLayout.addView(this.f151o, p5.x0(-1, -2, 0, 0, 0));
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(0);
        linearLayout3.setGravity(16);
        Switch r4 = new Switch(this);
        this.B = r4;
        r4.setContentDescription("自动上传云存档");
        this.B.setMinHeight(i2);
        TextView textView4 = new TextView(this);
        textView4.setText("自动上传云存档");
        textView4.setTextSize(12.0f);
        textView4.setTextColor(p5.C);
        textView4.setPadding(p5.S0(8, this), 0, p5.S0(8, this), 0);
        linearLayout3.addView(this.B, p5.x0(-2, i2, 0, 0, 0));
        linearLayout3.addView(textView4, p5.x0(-2, i2, 1, 0, 0));
        Button buttonH4 = c.a.h(this, 25, "删除云存档", p5.D);
        this.D = buttonH4;
        linearLayout3.addView(buttonH4, p5.x0(-2, i2, 0, 0, p5.S0(8, this)));
        LinearLayout linearLayout4 = new LinearLayout(this);
        linearLayout4.setOrientation(0);
        linearLayout4.setGravity(16);
        this.f152p = c.a.h(this, 26, "上传", p5.B);
        this.f153q = c.a.h(this, 27, "下载", p5.C);
        this.r = c.a.h(this, 28, "同步云对手", p5.C);
        this.s = c.a.h(this, 29, "禁用云对手", p5.D);
        linearLayout4.addView(this.f152p, new LinearLayout.LayoutParams(0, i2, 1.0f));
        linearLayout4.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(8, this), 0));
        linearLayout4.addView(this.f153q, new LinearLayout.LayoutParams(0, i2, 1.0f));
        linearLayout4.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(8, this), 0));
        linearLayout4.addView(this.r, new LinearLayout.LayoutParams(0, i2, 1.0f));
        linearLayout4.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(8, this), 0));
        linearLayout4.addView(this.s, new LinearLayout.LayoutParams(0, i2, 1.0f));
        linearLayout.addView(linearLayout4, p5.x0(-1, -2, 0, 0, p5.S0(8, this)));
        linearLayout.addView(linearLayout3, p5.x0(-1, -2, 0, 0, p5.S0(8, this)));
        this.B.setOnCheckedChangeListener(new j6(this, 4));
        ProgressBar progressBar = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
        this.t = progressBar;
        progressBar.setMax(100);
        this.t.setVisibility(8);
        linearLayout.addView(this.t, p5.x0(-1, p5.S0(8, this), 0, 0, p5.S0(4, this)));
        TextView textView5 = new TextView(this);
        this.u = textView5;
        textView5.setTextSize(p5.s0(this) ? 11.0f : 12.0f);
        this.u.setTextColor(p5.C);
        this.u.setGravity(17);
        this.u.setVisibility(8);
        linearLayout.addView(this.u, p5.x0(-1, -2, 0, 0, p5.S0(8, this)));
        TextView textView6 = new TextView(this);
        textView6.setText("上传和下载只处理本人云存档，并按所选方向直接替换；自动上传仅在游玩本人云存档且本地有变化时定时上传（默认关闭）；删除云存档会同时删除本地该云护照进度，之后可新建新云存档。");
        textView6.setTextSize(11.0f);
        textView6.setTextColor(p5.H);
        textView6.setGravity(17);
        linearLayout.addView(textView6, p5.x0(-1, -2, 0, 0, i3));
        return linearLayout;
    }

    public final LinearLayout e(float f2, int i2, int i3) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.addView(G("B 站粉丝福利", f2), p5.x0(-1, -2, 0, 0, 0));
        linearLayout.addView(a(), p5.w0(p5.S0(28, this), p5.S0(2, this), p5.S0(1, this)));
        TextView textView = new TextView(this);
        this.y = textView;
        textView.setTextSize(p5.s0(this) ? 12.0f : 13.0f);
        this.y.setTextColor(p5.G);
        this.y.setPadding(0, p5.S0(8, this), 0, p5.S0(10, this));
        linearLayout.addView(this.y, p5.x0(-1, -2, 0, 0, 0));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        Button buttonH = c.a.h(this, 15, "关注", p5.B);
        Button buttonH2 = c.a.h(this, 16, "绑定", p5.B);
        Button buttonH3 = c.a.h(this, 17, "刷新", p5.C);
        Button buttonH4 = c.a.h(this, 18, "解绑", p5.D);
        linearLayout2.addView(buttonH, new LinearLayout.LayoutParams(0, i2, 1.0f));
        linearLayout2.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(8, this), 0));
        linearLayout2.addView(buttonH2, new LinearLayout.LayoutParams(0, i2, 1.0f));
        linearLayout2.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(8, this), 0));
        linearLayout2.addView(buttonH3, new LinearLayout.LayoutParams(0, i2, 1.0f));
        linearLayout2.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(8, this), 0));
        linearLayout2.addView(buttonH4, new LinearLayout.LayoutParams(0, i2, 1.0f));
        linearLayout.addView(linearLayout2, p5.x0(-1, -2, 0, 0, p5.S0(8, this)));
        TextView textView2 = new TextView(this);
        textView2.setText("关注UP主有福利哦！（关注后1天生效，请耐心等待）");
        textView2.setTextSize(11.0f);
        textView2.setTextColor(p5.H);
        textView2.setGravity(17);
        linearLayout.addView(textView2, p5.x0(-1, -2, 0, 0, i3));
        u();
        return linearLayout;
    }

    public final LinearLayout f(float f2, int i2, int i3) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.addView(G("抖音粉丝福利", f2), p5.x0(-1, -2, 0, 0, 0));
        linearLayout.addView(a(), p5.w0(p5.S0(28, this), p5.S0(2, this), p5.S0(1, this)));
        TextView textView = new TextView(this);
        this.A = textView;
        textView.setTextSize(p5.s0(this) ? 12.0f : 13.0f);
        this.A.setTextColor(p5.G);
        this.A.setPadding(0, p5.S0(8, this), 0, p5.S0(10, this));
        linearLayout.addView(this.A, p5.x0(-1, -2, 0, 0, 0));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        Button buttonH = c.a.h(this, 11, "关注", p5.B);
        Button buttonH2 = c.a.h(this, 12, "登录", p5.B);
        Button buttonH3 = c.a.h(this, 13, "刷新", p5.C);
        Button buttonH4 = c.a.h(this, 14, "解绑", p5.D);
        linearLayout2.addView(buttonH, new LinearLayout.LayoutParams(0, i2, 1.0f));
        linearLayout2.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(6, this), 0));
        linearLayout2.addView(buttonH2, new LinearLayout.LayoutParams(0, i2, 1.0f));
        linearLayout2.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(6, this), 0));
        linearLayout2.addView(buttonH3, new LinearLayout.LayoutParams(0, i2, 1.0f));
        linearLayout2.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(6, this), 0));
        linearLayout2.addView(buttonH4, new LinearLayout.LayoutParams(0, i2, 1.0f));
        linearLayout.addView(linearLayout2, p5.x0(-1, -2, 0, 0, p5.S0(8, this)));
        TextView textView2 = new TextView(this);
        textView2.setText("关注抖音号 2107174701 有福利哦！（关注后自动刷新可能稍有延迟）");
        textView2.setTextSize(11.0f);
        textView2.setTextColor(p5.H);
        textView2.setGravity(17);
        linearLayout.addView(textView2, p5.x0(-1, -2, 0, 0, i3));
        w();
        return linearLayout;
    }

    public final LinearLayout g(float f2, int i2, int i3) {
        LinearLayout linearLayout = new LinearLayout(this);
        int i4 = 1;
        linearLayout.setOrientation(1);
        linearLayout.addView(G("天梯菁英对手", f2), p5.x0(-1, -2, 0, 0, 0));
        int i5 = 2;
        linearLayout.addView(a(), p5.w0(p5.S0(28, this), p5.S0(2, this), p5.S0(1, this)));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        TextView textView = new TextView(this);
        textView.setText("启用菁英对手");
        textView.setTextSize(p5.s0(this) ? 12.0f : 13.0f);
        textView.setTextColor(p5.F);
        linearLayout2.addView(textView, p5.x0(0, -2, 1, 0, 0));
        Switch r7 = new Switch(this);
        this.V = r7;
        r7.setContentDescription("启用菁英对手");
        this.V.setMinHeight(i2);
        linearLayout2.addView(this.V, p5.x0(-2, i2, 0, 0, 0));
        linearLayout.addView(linearLayout2, p5.x0(-1, -2, 0, p5.S0(6, this), p5.S0(6, this)));
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(0);
        linearLayout3.setGravity(16);
        this.W = new Button[3];
        for (int i6 = 1; i6 <= 3; i6++) {
            Button buttonM = M(a.b0.a("L", i6), p5.C, new h6(this, i6, i4));
            this.W[i6 - 1] = buttonM;
            linearLayout3.addView(buttonM, new LinearLayout.LayoutParams(0, i2, 1.0f));
            if (i6 < 3) {
                linearLayout3.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(8, this), 0));
            }
        }
        linearLayout.addView(linearLayout3, p5.x0(-1, -2, 0, 0, p5.S0(4, this)));
        TextView textView2 = new TextView(this);
        textView2.setText("L1 10重10锻+技能2阶 · L2 10重11锻+技能5阶 · L3 10重11锻+技能5阶+觉醒+练脉（仅主力生效）。\n关闭时天梯无菁英对手；切换后立即生效，真人名次不受影响。");
        textView2.setTextSize(11.0f);
        textView2.setTextColor(p5.H);
        textView2.setGravity(17);
        linearLayout.addView(textView2, p5.x0(-1, -2, 0, p5.S0(4, this), i3));
        this.X = p5.E0(getApplicationContext().getSharedPreferences("sgscq_config_v2", 0).getInt("elite_opponent_level", 3));
        this.V.setChecked(getApplicationContext().getSharedPreferences("sgscq_config_v2", 0).getBoolean("elite_opponent_enabled", false));
        A();
        this.V.setOnCheckedChangeListener(new j6(this, i5));
        return linearLayout;
    }

    public final LinearLayout h(float f2, int i2, int i3) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.addView(G("高清立绘资源", f2), p5.x0(-1, -2, 0, 0, 0));
        linearLayout.addView(a(), p5.w0(p5.S0(28, this), p5.S0(2, this), p5.S0(1, this)));
        TextView textView = new TextView(this);
        this.S = textView;
        textView.setTextSize(p5.s0(this) ? 12.0f : 13.0f);
        this.S.setTextColor(p5.G);
        this.S.setPadding(0, p5.S0(8, this), 0, p5.S0(10, this));
        linearLayout.addView(this.S, p5.x0(-1, -2, 0, 0, 0));
        linearLayout.addView(c.a.h(this, 3, "选择资源包", p5.B), p5.x0(-1, i2, 0, 0, p5.S0(8, this)));
        TextView textView2 = new TextView(this);
        textView2.setText("导入高清武将立绘 ZIP（hd_image.zip）。导入后进入游戏查看武将详情即可显示高清立绘，未覆盖的武将自动使用默认图。");
        textView2.setTextSize(11.0f);
        textView2.setTextColor(p5.H);
        textView2.setGravity(17);
        linearLayout.addView(textView2, p5.x0(-1, -2, 0, 0, i3));
        N();
        return linearLayout;
    }

    public final LinearLayout i(float f2, int i2, int i3) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.addView(G("后台保活", f2), p5.x0(-1, -2, 0, 0, 0));
        linearLayout.addView(a(), p5.w0(p5.S0(28, this), p5.S0(2, this), p5.S0(1, this)));
        TextView textView = new TextView(this);
        this.T = textView;
        textView.setTextSize(p5.s0(this) ? 12.0f : 13.0f);
        this.T.setTextColor(p5.G);
        this.T.setPadding(0, p5.S0(8, this), 0, p5.S0(10, this));
        linearLayout.addView(this.T, p5.x0(-1, -2, 0, 0, 0));
        TextView textView2 = new TextView(this);
        this.U = textView2;
        textView2.setTextSize(p5.s0(this) ? 12.0f : 13.0f);
        this.U.setTextColor(p5.G);
        this.U.setPadding(0, 0, 0, p5.S0(10, this));
        linearLayout.addView(this.U, p5.x0(-1, -2, 0, 0, 0));
        linearLayout.addView(c.a.h(this, 22, "查看保活设置", p5.B), p5.x0(-1, i2, 0, 0, p5.S0(8, this)));
        linearLayout.addView(c.a.h(this, 23, "通知权限设置", p5.B), p5.x0(-1, i2, 0, 0, p5.S0(8, this)));
        linearLayout.addView(c.a.h(this, 24, "自启动/后台管理", p5.B), p5.x0(-1, i2, 0, 0, p5.S0(8, this)));
        TextView textView3 = new TextView(this);
        textView3.setText("系统会在后台待机几分钟后清理应用，VPN 随之中断。请允许忽略电池优化、开启通知权限，并在厂商的应用启动管理里允许自启动、关联启动、后台活动。");
        textView3.setTextSize(11.0f);
        textView3.setTextColor(p5.H);
        textView3.setGravity(17);
        linearLayout.addView(textView3, p5.x0(-1, -2, 0, 0, i3));
        if (this.T != null) {
            boolean zK0 = p5.k0(this);
            this.T.setText(zK0 ? "电池优化：已豁免，系统不会因省电清理本应用" : "电池优化：未豁免，系统可能在后台清理本应用");
            this.T.setTextColor(zK0 ? p5.B : p5.D);
        }
        O();
        return linearLayout;
    }

    public final void l(Intent intent) {
        String str;
        if (intent == null || this.f147k == null) {
            return;
        }
        Uri data = intent.getData();
        this.f147k.getClass();
        if (h.g(data)) {
            TextView textView = this.f148l;
            if (textView != null) {
                textView.setText("正在完成爱发电登录...");
            }
            h hVar = this.f147k;
            p6 p6Var = new p6(this, 5);
            hVar.getClass();
            if (h.g(data)) {
                String queryParameter = data.getQueryParameter("error");
                if (queryParameter != null && !queryParameter.isEmpty()) {
                    p6Var.a(queryParameter);
                    return;
                }
                String queryParameter2 = data.getQueryParameter("code");
                if (queryParameter2 == null || queryParameter2.isEmpty()) {
                    str = "爱发电回调缺少 code";
                } else {
                    String queryParameter3 = data.getQueryParameter("state");
                    String string = hVar.f721c.getString("oauth_state", "");
                    if (string.isEmpty() || queryParameter3 == null || string.equals(queryParameter3)) {
                        int i2 = 0;
                        new Thread(new c(new a(hVar, queryParameter2, i2), this, p6Var, i2), "AfdianAuth").start();
                        return;
                    }
                    str = "爱发电登录状态校验失败";
                }
                p6Var.a(str);
            }
        }
    }

    public final void m() {
        ProgressBar progressBar = this.t;
        if (progressBar != null) {
            progressBar.setVisibility(8);
            this.t.setIndeterminate(false);
        }
        TextView textView = this.u;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    public final HashSet n() {
        HashSet hashSet = new HashSet();
        try {
            String strA = o0.a(this, "resources.json");
            if (strA != null && !strA.isEmpty()) {
                JSONArray jSONArray = new JSONArray(strA);
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject != null) {
                        String strOptString = jSONObjectOptJSONObject.optString("hd_url", "");
                        if (!strOptString.isEmpty() && !"0".equals(strOptString)) {
                            hashSet.add(strOptString);
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        return hashSet;
    }

    public final void o() {
        int i2;
        int i3;
        String str;
        int i4;
        String strB;
        this.f139c.setText(this.f137a.getString("player_name", "玩家"));
        this.f140d.setText(this.f137a.getString("resource_coin", String.valueOf(0)));
        this.f141e.setText(this.f137a.getString("resource_gold", String.valueOf(0)));
        this.f142f.setText(this.f137a.getString("resource_power", String.valueOf(150)));
        this.f143g.setText(this.f137a.getString("resource_energy", String.valueOf(12)));
        try {
            i2 = Integer.parseInt(this.f137a.getString("resource_vip_level", "0"));
            if (i2 < 0) {
                i2 = 0;
            } else if (i2 > 15) {
                i2 = 15;
            }
        } catch (NumberFormatException unused) {
        }
        this.f144h.setText(String.valueOf(i2));
        if (this.E != null) {
            q.o.a(this);
            String string = this.f137a.getString("service_proxy_type", "http");
            String string2 = this.f137a.getString("service_proxy_host", "");
            String string3 = this.f137a.getString("service_proxy_port", "");
            com.sgscq.vpn.config.f fVar = q.o.f1930b;
            this.M = true;
            this.I.setText(string2);
            this.J.setText(string3);
            this.H.setChecked("socks5".equalsIgnoreCase(string));
            this.G.setChecked("https".equalsIgnoreCase(string));
            this.F.setChecked((this.H.isChecked() || this.G.isChecked()) ? false : true);
            this.E.setChecked(fVar.f569a);
            this.M = false;
            if (fVar.f569a) {
                strB = b(fVar);
                i4 = p5.B;
            } else if (this.f137a.getBoolean("service_proxy_enabled", false)) {
                i4 = p5.D;
                strB = "配置无效，手动代理未启用";
            } else {
                i4 = p5.G;
                strB = "未启用，当前使用默认连接";
            }
            L(strB, i4);
        }
        if (this.N != null) {
            q.e.a(this);
            c.i iVar = q.e.f1907b;
            this.R = true;
            this.O.setText((CharSequence) iVar.f48c, false);
            this.N.setChecked(iVar.f47b);
            this.R = false;
            if (iVar.f47b) {
                str = "已启用 · " + ((String) iVar.f48c);
                i3 = p5.B;
            } else if (this.f137a.getBoolean("app_dns_enabled", false)) {
                i3 = p5.D;
                str = "配置无效，APP DNS 未启用";
            } else {
                i3 = p5.G;
                str = "未启用，当前使用系统 DNS";
            }
            J(str, i3);
        }
        s();
        t();
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        Uri data;
        super.onActivityResult(i2, i3, intent);
        if (i2 != 1002 || i3 != -1 || intent == null || (data = intent.getData()) == null) {
            return;
        }
        TextView textView = this.S;
        if (textView != null) {
            textView.setText("正在导入...");
        }
        Toast.makeText(this, "正在导入高清图资源，请稍候...", 0).show();
        new Thread(new d(this, data, 17)).start();
    }

    /* JADX WARN: Code duplicated, block: B:90:0x0493 A[PHI: r2
      0x0493: PHI (r2v161 java.lang.Object) = 
      (r2v157 java.lang.Object)
      (r2v158 java.lang.Object)
      (r2v159 java.lang.Object)
      (r2v160 java.lang.Object)
      (r2v165 java.lang.Object)
     binds: [B:140:?, B:87:0x048e, B:83:0x0481, B:79:0x0474, B:141:?] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        Object obj;
        byte b2;
        super.onCreate(bundle);
        p5.e0(this);
        p5.l(this);
        if (c7.d(this).e()) {
            Toast.makeText(this, "本机时间异常，设置界面已禁用", 1).show();
            finish();
            return;
        }
        this.f137a = getSharedPreferences("sgscq_config_v2", 0);
        getSharedPreferences("sgscq_player_v5", 0);
        this.f147k = new h(0, this);
        this.f149m = new com.sgscq.vpn.cloud.q0(this);
        this.f150n = new m.e(5, this);
        this.x = new b0(this);
        this.z = new h(1, this);
        ScrollView scrollView = new ScrollView(this);
        this.f145i = scrollView;
        scrollView.setFillViewport(true);
        this.f145i.setDescendantFocusability(262144);
        this.f145i.setBackgroundColor(p5.x);
        LinearLayout linearLayout = new LinearLayout(this);
        this.f146j = linearLayout;
        linearLayout.setOrientation(1);
        this.f146j.setPadding(p5.S0(14, this), p5.S0(20, this), p5.S0(14, this), p5.S0(20, this));
        this.f146j.setBackgroundColor(p5.x);
        boolean zS0 = p5.s0(this);
        float f2 = zS0 ? 11.0f : 12.0f;
        int iS0 = zS0 ? p5.S0(10, this) : p5.S0(12, this);
        int iS1 = zS0 ? p5.S0(8, this) : p5.S0(10, this);
        float f3 = zS0 ? 13.0f : 14.0f;
        int iS2 = zS0 ? p5.S0(16, this) : p5.S0(24, this);
        int iS3 = zS0 ? p5.S0(12, this) : p5.S0(16, this);
        int iS4 = zS0 ? p5.S0(12, this) : p5.S0(20, this);
        float f4 = zS0 ? 11.0f : 12.0f;
        int iS5 = p5.S0(zS0 ? 40 : 48, this);
        int iS6 = zS0 ? p5.S0(8, this) : p5.S0(10, this);
        int iS7 = zS0 ? p5.S0(6, this) : p5.S0(8, this);
        float f5 = zS0 ? 12.0f : 13.0f;
        GradientDrawable gradientDrawableC = C(p5.S0(8, this), p5.I, p5.y);
        GradientDrawable gradientDrawableY0 = p5.y0(p5.y, p5.S0(8, this), getResources().getDisplayMetrics().density);
        int iY = p5.Y(this);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout2.setPadding(p5.S0(12, this), p5.S0(8, this) + iY, p5.S0(16, this), p5.S0(8, this));
        linearLayout2.setBackgroundColor(p5.A);
        Button button = new Button(this);
        button.setText("← 返回");
        button.setTextSize(14.0f);
        button.setTextColor(p5.B);
        button.setAllCaps(false);
        button.setMinHeight(0);
        button.setMinimumHeight(0);
        button.setPadding(p5.S0(12, this), 0, p5.S0(12, this), 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(p5.S0(8, this));
        gradientDrawable.setColor(p5.A);
        int i2 = iS3;
        p5.i(button, gradientDrawable, p5.y0(p5.A, p5.S0(8, this), getResources().getDisplayMetrics().density));
        button.setOnClickListener(new g6(this, 0));
        linearLayout2.addView(button, p5.x0(-2, iS5, 0, 0, 0));
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(1);
        linearLayout3.setGravity(16);
        TextView textView = new TextView(this);
        textView.setText("设置");
        textView.setTextSize(18.0f);
        textView.setTextColor(p5.B);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setIncludeFontPadding(false);
        linearLayout3.addView(textView, p5.x0(-2, -2, 0, 0, 0));
        TextView textView2 = new TextView(this);
        textView2.setText("当前版本 1.0.1.14067 (23)");
        textView2.setTextSize(zS0 ? 10.0f : 11.0f);
        textView2.setTextColor(p5.C);
        textView2.setSingleLine(true);
        textView2.setIncludeFontPadding(false);
        linearLayout3.addView(textView2, p5.x0(-2, -2, 0, p5.S0(2, this), 0));
        linearLayout2.addView(linearLayout3, p5.x0(0, -2, 1, 0, 0));
        View view = new View(this);
        view.setBackgroundColor(p5.C);
        LinearLayout linearLayout4 = new LinearLayout(this);
        linearLayout4.setOrientation(1);
        linearLayout4.addView(G("初始身份", f2), p5.x0(-1, -2, 0, 0, 0));
        linearLayout4.addView(a(), p5.w0(p5.S0(28, this), p5.S0(2, this), p5.S0(1, this)));
        LinearLayout linearLayout5 = new LinearLayout(this);
        linearLayout5.setOrientation(0);
        linearLayout5.setGravity(16);
        TextView textView3 = new TextView(this);
        textView3.setText("姓名");
        textView3.setTextSize(f4);
        textView3.setTextColor(p5.G);
        linearLayout5.addView(textView3, p5.x0(-2, -2, 0, 0, 0));
        EditText editTextP = p("输入姓名", false, iS0, iS1, f3);
        this.f139c = editTextP;
        linearLayout5.addView(Q(editTextP, gradientDrawableC, gradientDrawableY0), p5.x0(0, -2, 2, 0, 0));
        linearLayout5.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(6, this), 0));
        TextView textView4 = new TextView(this);
        textView4.setText("VIP");
        textView4.setTextSize(f4);
        textView4.setTextColor(p5.G);
        linearLayout5.addView(textView4, p5.x0(-2, -2, 0, 0, 0));
        EditText editTextP2 = p("0-15", true, p5.S0(zS0 ? 6 : 8, this), iS1, f3);
        this.f144h = editTextP2;
        editTextP2.setInputType(2);
        linearLayout5.addView(Q(this.f144h, gradientDrawableC, gradientDrawableY0), p5.x0(0, iS5, 1, 0, 0));
        linearLayout5.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(6, this), 0));
        linearLayout5.addView(c.a.h(this, 1, "保存", p5.B), p5.x0(-2, iS5, 0, 0, 0));
        linearLayout4.addView(linearLayout5, p5.x0(-1, -2, 0, 0, iS2));
        LinearLayout linearLayout6 = new LinearLayout(this);
        linearLayout6.setOrientation(1);
        linearLayout6.addView(G("初始资源 (新角色生效)", f2), p5.x0(-1, -2, 0, 0, 0));
        linearLayout6.addView(a(), p5.w0(p5.S0(28, this), p5.S0(2, this), p5.S0(1, this)));
        LinearLayout linearLayout7 = new LinearLayout(this);
        linearLayout7.setOrientation(0);
        linearLayout7.setGravity(16);
        float f6 = f3;
        Object obj2 = "coin";
        LinearLayout linearLayout8 = linearLayout6;
        String[][] strArr = {new String[]{"银两", "0", "coin"}, new String[]{"元宝", "0", "gold"}, new String[]{"体力", "150", "power"}, new String[]{"精力", "12", "energy"}};
        int i3 = 0;
        while (i3 < 4) {
            String[] strArr2 = strArr[i3];
            TextView textView5 = new TextView(this);
            textView5.setText(strArr2[0]);
            textView5.setTextSize(12.0f);
            textView5.setTextColor(p5.G);
            linearLayout7.addView(textView5, p5.x0(-2, -2, 0, 0, 0));
            Object obj3 = obj2;
            LinearLayout linearLayout9 = linearLayout7;
            String[][] strArr3 = strArr;
            LinearLayout linearLayout10 = linearLayout8;
            float f7 = f2;
            int i4 = i3;
            EditText editTextP3 = p(strArr2[1], true, iS6, iS7, f5);
            editTextP3.setBackground(null);
            linearLayout9.addView(Q(editTextP3, gradientDrawableC, gradientDrawableY0), p5.x0(0, p5.S0(zS0 ? 32 : 40, this), 1, 0, 0));
            if (i4 < 3) {
                linearLayout9.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(8, this), 0));
            }
            String str = strArr2[2];
            str.getClass();
            switch (str.hashCode()) {
                case -1298713976:
                    obj = obj3;
                    if (!str.equals("energy")) {
                        b2 = -1;
                    } else {
                        b2 = 0;
                    }
                    break;
                case 3059345:
                    obj = obj3;
                    if (!str.equals(obj)) {
                        b2 = -1;
                    } else {
                        b2 = 1;
                    }
                    break;
                case 3178592:
                    if (!str.equals("gold")) {
                        obj = obj3;
                        b2 = -1;
                    } else {
                        b2 = 2;
                        obj = obj3;
                    }
                    break;
                case 106858757:
                    if (!str.equals("power")) {
                        obj = obj3;
                        b2 = -1;
                    } else {
                        b2 = 3;
                        obj = obj3;
                    }
                    break;
                default:
                    obj = obj3;
                    b2 = -1;
                    break;
            }
            if (b2 == 0) {
                this.f143g = editTextP3;
            } else if (b2 == 1) {
                this.f140d = editTextP3;
            } else if (b2 == 2) {
                this.f141e = editTextP3;
            } else if (b2 == 3) {
                this.f142f = editTextP3;
            }
            i3 = i4 + 1;
            linearLayout7 = linearLayout9;
            f2 = f7;
            linearLayout8 = linearLayout10;
            strArr = strArr3;
            obj2 = obj;
        }
        ViewGroup viewGroup = linearLayout8;
        float f8 = f2;
        viewGroup.addView(linearLayout7, p5.x0(-1, -2, 0, 0, p5.S0(12, this)));
        Button button2 = new Button(this);
        button2.setText("保存资源设置");
        button2.setTextSize(14.0f);
        button2.setTextColor(p5.B);
        button2.setAllCaps(false);
        button2.setMinHeight(0);
        button2.setMinimumHeight(0);
        button2.setPadding(p5.S0(12, this), 0, p5.S0(12, this), 0);
        p5.i(button2, C(p5.S0(8, this), p5.C, p5.x), p5.y0(p5.x, p5.S0(8, this), getResources().getDisplayMetrics().density));
        button2.setOnClickListener(new i1(this, linearLayout4, 2));
        viewGroup.addView(button2, p5.x0(-1, iS5, 0, 0, iS2));
        LinearLayout linearLayout11 = new LinearLayout(this);
        linearLayout11.setOrientation(1);
        linearLayout11.addView(G("服务代理", f8), p5.x0(-1, -2, 0, 0, 0));
        linearLayout11.addView(a(), p5.w0(p5.S0(28, this), p5.S0(2, this), p5.S0(1, this)));
        LinearLayout linearLayout12 = new LinearLayout(this);
        linearLayout12.setOrientation(0);
        linearLayout12.setGravity(16);
        TextView textView6 = new TextView(this);
        textView6.setText("使用手动代理（仅自有在线服务）");
        textView6.setTextSize(p5.s0(this) ? 12.0f : 13.0f);
        textView6.setTextColor(p5.F);
        linearLayout12.addView(textView6, p5.x0(0, -2, 1, 0, 0));
        Switch r1 = new Switch(this);
        this.E = r1;
        r1.setContentDescription("使用手动服务代理");
        this.E.setMinHeight(iS5);
        linearLayout12.addView(this.E, p5.x0(-2, iS5, 0, 0, 0));
        linearLayout11.addView(linearLayout12, p5.x0(-1, -2, 0, p5.S0(6, this), p5.S0(6, this)));
        RadioGroup radioGroup = new RadioGroup(this);
        radioGroup.setOrientation(0);
        radioGroup.setGravity(16);
        this.F = q("HTTP");
        this.G = q("HTTPS");
        this.H = q("SOCKS5");
        this.F.setId(View.generateViewId());
        this.G.setId(View.generateViewId());
        this.H.setId(View.generateViewId());
        radioGroup.addView(this.F, new RadioGroup.LayoutParams(0, iS5, 1.0f));
        radioGroup.addView(this.G, new RadioGroup.LayoutParams(0, iS5, 1.0f));
        radioGroup.addView(this.H, new RadioGroup.LayoutParams(0, iS5, 1.0f));
        linearLayout11.addView(radioGroup, p5.x0(-1, -2, 0, 0, p5.S0(8, this)));
        GradientDrawable gradientDrawableC2 = C(p5.S0(8, this), p5.I, p5.y);
        GradientDrawable gradientDrawableY1 = p5.y0(p5.y, p5.S0(8, this), getResources().getDisplayMetrics().density);
        LinearLayout linearLayout13 = new LinearLayout(this);
        linearLayout13.setOrientation(0);
        linearLayout13.setGravity(16);
        TextView textView7 = new TextView(this);
        textView7.setText("地址");
        textView7.setTextSize(p5.s0(this) ? 11.0f : 12.0f);
        textView7.setTextColor(p5.G);
        linearLayout13.addView(textView7, p5.x0(-2, -2, 0, 0, 0));
        EditText editTextP4 = p("例如 proxy.example.com", false, iS0, iS1, f6);
        this.I = editTextP4;
        editTextP4.setSingleLine(true);
        this.I.setImeOptions(5);
        linearLayout13.addView(Q(this.I, gradientDrawableC2, gradientDrawableY1), p5.x0(0, iS5, 3, 0, 0));
        linearLayout13.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(8, this), 0));
        TextView textView8 = new TextView(this);
        textView8.setText("端口");
        textView8.setTextSize(p5.s0(this) ? 11.0f : 12.0f);
        textView8.setTextColor(p5.G);
        linearLayout13.addView(textView8, p5.x0(-2, -2, 0, 0, 0));
        EditText editTextP5 = p("8080", true, iS0, iS1, f6);
        this.J = editTextP5;
        editTextP5.setInputType(2);
        this.J.setSingleLine(true);
        this.J.setImeOptions(6);
        linearLayout13.addView(Q(this.J, gradientDrawableC2, gradientDrawableY1), p5.x0(0, iS5, 1, 0, 0));
        linearLayout11.addView(linearLayout13, p5.x0(-1, -2, 0, 0, p5.S0(10, this)));
        LinearLayout linearLayout14 = new LinearLayout(this);
        linearLayout14.setOrientation(0);
        linearLayout14.setGravity(16);
        Button buttonH = c.a.h(this, 4, "保存并启用", p5.B);
        this.L = c.a.h(this, 5, "测试连接", p5.C);
        Button buttonH2 = c.a.h(this, 6, "恢复默认", p5.D);
        linearLayout14.addView(buttonH, new LinearLayout.LayoutParams(0, iS5, 1.0f));
        linearLayout14.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(8, this), 0));
        linearLayout14.addView(this.L, new LinearLayout.LayoutParams(0, iS5, 1.0f));
        linearLayout14.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(8, this), 0));
        linearLayout14.addView(buttonH2, new LinearLayout.LayoutParams(0, iS5, 1.0f));
        linearLayout11.addView(linearLayout14, p5.x0(-1, -2, 0, 0, p5.S0(8, this)));
        TextView textView9 = new TextView(this);
        this.K = textView9;
        textView9.setTextSize(p5.s0(this) ? 11.0f : 12.0f);
        this.K.setTextColor(p5.G);
        this.K.setGravity(17);
        this.K.setText("未启用，当前使用默认连接");
        linearLayout11.addView(this.K, p5.x0(-1, -2, 0, 0, p5.S0(6, this)));
        TextView textView10 = new TextView(this);
        textView10.setText("仅用于云服务、爱发电登录和限时数据；不影响游戏本地 VPN 流量。手动代理失败时不会自动绕过。暂不支持代理账号密码。");
        textView10.setTextSize(11.0f);
        textView10.setTextColor(p5.H);
        textView10.setGravity(17);
        linearLayout11.addView(textView10, p5.x0(-1, -2, 0, 0, p5.S0(18, this)));
        linearLayout11.addView(G("APP 专用 DNS", f8), p5.x0(-1, -2, 0, 0, 0));
        linearLayout11.addView(a(), p5.w0(p5.S0(28, this), p5.S0(2, this), p5.S0(1, this)));
        LinearLayout linearLayout15 = new LinearLayout(this);
        linearLayout15.setOrientation(0);
        linearLayout15.setGravity(16);
        TextView textView11 = new TextView(this);
        textView11.setText("使用 APP 专用 DNS（仅自有在线服务）");
        textView11.setTextSize(p5.s0(this) ? 12.0f : 13.0f);
        textView11.setTextColor(p5.F);
        linearLayout15.addView(textView11, p5.x0(0, -2, 1, 0, 0));
        Switch r2 = new Switch(this);
        this.N = r2;
        r2.setContentDescription("使用 APP 专用 DNS");
        this.N.setMinHeight(iS5);
        linearLayout15.addView(this.N, p5.x0(-2, iS5, 0, 0, 0));
        linearLayout11.addView(linearLayout15, p5.x0(-1, -2, 0, p5.S0(6, this), p5.S0(6, this)));
        AutoCompleteTextView autoCompleteTextView = new AutoCompleteTextView(this);
        this.O = autoCompleteTextView;
        autoCompleteTextView.setTextSize(f6);
        this.O.setTextColor(p5.F);
        this.O.setHintTextColor(p5.H);
        this.O.setHint("选择或输入 DNS IP");
        this.O.setPadding(iS0, iS1, iS0, iS1);
        this.O.setSingleLine(true);
        this.O.setImeOptions(6);
        this.O.setInputType(1);
        this.O.setBackground(null);
        final String[] strArr4 = {"114DNS · 114.114.114.114", "阿里 DNS · 223.5.5.5", "百度 DNS · 180.76.76.76"};
        this.O.setAdapter(new ArrayAdapter(this, android.R.layout.simple_dropdown_item_1line, strArr4));
        this.O.setThreshold(0);
        this.O.setOnClickListener(new g6(this, 7));
        this.O.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.sgscq.vpn.i6
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i5, long j2) {
                this.f1061a.O.setText((CharSequence) SettingsActivity.k(strArr4[i5]), false);
            }
        });
        linearLayout11.addView(Q(this.O, gradientDrawableC2, gradientDrawableY1), p5.x0(-1, iS5, 0, 0, p5.S0(10, this)));
        LinearLayout linearLayout16 = new LinearLayout(this);
        linearLayout16.setOrientation(0);
        linearLayout16.setGravity(16);
        Button buttonH3 = c.a.h(this, 8, "保存并启用", p5.B);
        this.Q = c.a.h(this, 9, "测试 DNS", p5.C);
        Button buttonH4 = c.a.h(this, 10, "恢复默认", p5.D);
        linearLayout16.addView(buttonH3, new LinearLayout.LayoutParams(0, iS5, 1.0f));
        linearLayout16.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(8, this), 0));
        linearLayout16.addView(this.Q, new LinearLayout.LayoutParams(0, iS5, 1.0f));
        linearLayout16.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(8, this), 0));
        linearLayout16.addView(buttonH4, new LinearLayout.LayoutParams(0, iS5, 1.0f));
        linearLayout11.addView(linearLayout16, p5.x0(-1, -2, 0, 0, p5.S0(8, this)));
        TextView textView12 = new TextView(this);
        this.P = textView12;
        textView12.setTextSize(p5.s0(this) ? 11.0f : 12.0f);
        this.P.setTextColor(p5.G);
        this.P.setGravity(17);
        this.P.setText("未启用，当前使用系统 DNS");
        linearLayout11.addView(this.P, p5.x0(-1, -2, 0, 0, p5.S0(6, this)));
        TextView textView13 = new TextView(this);
        textView13.setText("仅解析 *.sgscq.com 和 *.ifdian.net；不修改系统 DNS，也不影响其它 APP 或游戏 VPN 流量。手动代理启用时优先使用代理。");
        textView13.setTextSize(11.0f);
        textView13.setTextColor(p5.H);
        textView13.setGravity(17);
        linearLayout11.addView(textView13, p5.x0(-1, -2, 0, 0, iS2));
        this.E.setOnCheckedChangeListener(new j6(this, 0));
        this.N.setOnCheckedChangeListener(new j6(this, 1));
        LinearLayout linearLayoutD = d(f8, iS5, iS2);
        LinearLayout linearLayoutE = e(f8, iS5, iS2);
        LinearLayout linearLayoutF = f(f8, iS5, iS2);
        LinearLayout linearLayout17 = new LinearLayout(this);
        linearLayout17.setOrientation(1);
        linearLayout17.addView(G("服务器设置", f8), p5.x0(-1, -2, 0, 0, 0));
        linearLayout17.addView(a(), p5.w0(p5.S0(28, this), p5.S0(2, this), p5.S0(1, this)));
        LinearLayout linearLayout18 = new LinearLayout(this);
        this.f138b = linearLayout18;
        linearLayout18.setOrientation(1);
        linearLayout17.addView(this.f138b, p5.x0(-1, -2, 0, 0, p5.S0(4, this)));
        Button button3 = new Button(this);
        button3.setText("+ 添加服务器");
        button3.setTextSize(14.0f);
        button3.setTextColor(p5.B);
        button3.setAllCaps(false);
        button3.setMinHeight(0);
        button3.setMinimumHeight(0);
        button3.setPadding(p5.S0(12, this), 0, p5.S0(12, this), 0);
        p5.i(button3, C(p5.S0(8, this), p5.C, p5.x), p5.y0(p5.x, p5.S0(8, this), getResources().getDisplayMetrics().density));
        button3.setOnClickListener(new g6(this, 2));
        linearLayout17.addView(button3, p5.x0(-1, iS5, 0, 0, p5.S0(16, this)));
        TextView textView14 = new TextView(this);
        textView14.setText("添加的服务器将在游戏登录时的服务器列表中显示。");
        textView14.setTextSize(12.0f);
        textView14.setTextColor(p5.H);
        textView14.setGravity(17);
        linearLayout17.addView(textView14, p5.x0(-1, -2, 0, 0, 0));
        LinearLayout linearLayoutH = h(f8, iS5, iS2);
        LinearLayout linearLayoutI = i(f8, iS5, iS2);
        LinearLayout linearLayoutG = g(f8, iS5, iS2);
        c5 c5Var = new c5(this);
        this.f146j.setPadding(i2, iS4, i2, iS4);
        if (zS0) {
            this.f146j.addView(P(linearLayoutD, zS0), p5.x0(-1, -2, 0, 0, p5.S0(10, this)));
            this.f146j.addView(P(linearLayoutE, zS0), p5.x0(-1, -2, 0, 0, p5.S0(10, this)));
            this.f146j.addView(P(linearLayoutF, zS0), p5.x0(-1, -2, 0, 0, p5.S0(10, this)));
            this.f146j.addView(P(linearLayoutH, zS0), p5.x0(-1, -2, 0, 0, p5.S0(10, this)));
            this.f146j.addView(P(linearLayoutG, zS0), p5.x0(-1, -2, 0, 0, p5.S0(10, this)));
            this.f146j.addView(P(linearLayoutI, zS0), p5.x0(-1, -2, 0, 0, p5.S0(10, this)));
            this.f146j.addView(P(linearLayout11, zS0), p5.x0(-1, -2, 0, 0, 0));
            this.f145i.addView(this.f146j);
            LinearLayout linearLayout19 = new LinearLayout(this);
            linearLayout19.setOrientation(1);
            linearLayout19.setBackgroundColor(p5.x);
            linearLayout19.addView(linearLayout2);
            linearLayout19.addView(view, p5.x0(-1, p5.S0(1, this), 0, 0, 0));
            linearLayout19.addView(this.f145i, p5.x0(-1, 0, 1, 0, 0));
            int panelWidth = c5Var.getPanelWidth();
            View view2 = new View(this);
            view2.setBackgroundColor(p5.C);
            LinearLayout linearLayout20 = new LinearLayout(this);
            linearLayout20.setOrientation(0);
            linearLayout20.setBackgroundColor(p5.x);
            linearLayout20.addView(linearLayout19, new LinearLayout.LayoutParams(0, -1, 1.0f));
            linearLayout20.addView(view2, new LinearLayout.LayoutParams(p5.S0(1, this), -1));
            linearLayout20.addView(c5Var, new LinearLayout.LayoutParams(panelWidth, -1));
            setContentView(linearLayout20);
            button.requestFocus();
        } else {
            this.f146j.addView(P(linearLayoutD, zS0), p5.x0(-1, -2, 0, p5.S0(12, this), 0));
            this.f146j.addView(P(linearLayoutE, zS0), p5.x0(-1, -2, 0, p5.S0(12, this), 0));
            this.f146j.addView(P(linearLayoutF, zS0), p5.x0(-1, -2, 0, p5.S0(12, this), 0));
            this.f146j.addView(P(linearLayoutH, zS0), p5.x0(-1, -2, 0, p5.S0(12, this), 0));
            this.f146j.addView(P(linearLayoutG, zS0), p5.x0(-1, -2, 0, p5.S0(12, this), 0));
            this.f146j.addView(P(linearLayoutI, zS0), p5.x0(-1, -2, 0, p5.S0(12, this), 0));
            this.f146j.addView(P(linearLayout11, zS0), p5.x0(-1, -2, 0, 0, 0));
            this.f145i.addView(this.f146j);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 81;
            int iS8 = p5.S0(120, this);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
            layoutParams2.bottomMargin = iS8;
            FrameLayout frameLayout = new FrameLayout(this);
            frameLayout.setBackgroundColor(p5.x);
            frameLayout.addView(this.f145i, layoutParams2);
            View view3 = new View(this);
            view3.setBackgroundColor(p5.C);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, p5.S0(1, this));
            layoutParams3.gravity = 80;
            layoutParams3.bottomMargin = iS8;
            frameLayout.addView(view3, layoutParams3);
            frameLayout.addView(c5Var, layoutParams);
            LinearLayout linearLayout21 = new LinearLayout(this);
            linearLayout21.setOrientation(1);
            linearLayout21.setBackgroundColor(p5.x);
            linearLayout21.addView(linearLayout2);
            linearLayout21.addView(view, p5.x0(-1, p5.S0(1, this), 0, 0, 0));
            linearLayout21.addView(frameLayout, p5.x0(-1, 0, 1, 0, 0));
            setContentView(linearLayout21);
        }
        o();
        l(getIntent());
    }

    @Override // android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        l(intent);
    }

    @Override // android.app.Activity
    public final void onPause() {
        this.v.removeCallbacks(this.w);
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (i2 != 1101) {
            return;
        }
        boolean z = iArr != null && iArr.length > 0 && iArr[0] == 0;
        O();
        Toast.makeText(this, z ? "通知权限已开启" : "通知权限被拒绝，可在系统设置里手动打开", 0).show();
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        Handler handler = this.v;
        o6 o6Var = this.w;
        handler.removeCallbacks(o6Var);
        o6Var.run();
    }

    public final EditText p(String str, boolean z, int i2, int i3, float f2) {
        EditText editText = new EditText(this);
        editText.setTextSize(f2);
        editText.setTextColor(p5.F);
        editText.setHintTextColor(p5.H);
        editText.setHint(str);
        editText.setPadding(i2, i3, i2, i3);
        editText.setSingleLine();
        if (z) {
            editText.setInputType(2);
        }
        editText.setImeOptions(6);
        editText.setBackground(null);
        return editText;
    }

    public final RadioButton q(String str) {
        RadioButton radioButton = new RadioButton(this);
        radioButton.setText(str);
        radioButton.setTextSize(p5.s0(this) ? 12.0f : 13.0f);
        radioButton.setTextColor(p5.F);
        radioButton.setGravity(16);
        radioButton.setMinHeight(p5.S0(48, this));
        radioButton.setContentDescription("代理协议 ".concat(str));
        return radioButton;
    }

    public final void r(boolean z) {
        m.e eVar;
        com.sgscq.vpn.cloud.d0 d0Var;
        if (this.f147k == null || (eVar = this.f150n) == null) {
            return;
        }
        CloudSessionStore$SessionData cloudSessionStore$SessionDataY = eVar.y();
        if (cloudSessionStore$SessionDataY.isLoggedIn() && (d0Var = this.C) != null) {
            String str = d0Var.f310b;
            if (str.isEmpty()) {
                return;
            }
            String str2 = d0Var.f311c;
            if (str2.isEmpty()) {
                return;
            }
            try {
                SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("sgscq_cloud_auto_sync_v1", 0);
                String strJ = com.sgscq.vpn.cloud.b0.j(cloudSessionStore$SessionDataY.afdianUserId, str, str2);
                if (!strJ.isEmpty()) {
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    if (z) {
                        editorEdit.putBoolean("enabled_".concat(strJ), true).putLong("next_sync_at_".concat(strJ), TimeUnit.MINUTES.toMillis(10L) + Math.max(0L, System.currentTimeMillis()));
                    } else {
                        editorEdit.remove("enabled_".concat(strJ)).remove("next_sync_at_".concat(strJ));
                    }
                    editorEdit.apply();
                }
                Toast.makeText(this, z ? "已开启自动上传：游玩云存档时本地有变化将定时上传" : "已关闭自动上传", 0).show();
            } catch (Exception e2) {
                Toast.makeText(this, j(e2), 1).show();
            }
        }
    }

    public final void s() {
        this.f138b.removeAllViews();
        try {
            JSONArray jSONArray = new JSONArray(this.f137a.getString("custom_servers", "[]"));
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                c(jSONObject.getString("name"), i2, jSONObject.getString("host") + ":" + jSONObject.getInt("port"));
            }
        } catch (Exception unused) {
        }
        if (this.f138b.getChildCount() == 0) {
            TextView textView = new TextView(this);
            textView.setText("暂无自定义服务器");
            textView.setTextSize(13.0f);
            textView.setTextColor(p5.H);
            textView.setGravity(17);
            textView.setPadding(0, p5.S0(20, this), 0, p5.S0(16, this));
            this.f138b.addView(textView);
        }
    }

    public final void t() {
        h hVar;
        String str;
        if (this.f148l == null || (hVar = this.f147k) == null) {
            return;
        }
        f fVarJ = hVar.j();
        if (!this.f147k.h()) {
            this.f148l.setText("未配置爱发电登录");
            this.f148l.setTextColor(p5.C);
            return;
        }
        TextView textView = this.f148l;
        if (fVarJ.f665c) {
            String str2 = fVarJ.f664b;
            String strTrim = (str2 == null || str2.trim().isEmpty()) ? fVarJ.f663a : fVarJ.f664b.trim();
            int iMax = 0;
            if (fVarJ.f666d && !fVarJ.f667e) {
                iMax = Math.max(0, fVarJ.f668f);
            }
            str = strTrim + " · LV" + iMax;
        } else {
            str = "未登录爱发电";
        }
        textView.setText(str);
        this.f148l.setTextColor(fVarJ.f666d ? p5.B : p5.G);
    }

    public final void u() {
        b0 b0Var;
        if (this.y == null || (b0Var = this.x) == null) {
            return;
        }
        z zVarB = b0Var.b();
        this.y.setText(zVarB.a());
        this.y.setTextColor(zVarB.f1582b && zVarB.f1583c && (System.currentTimeMillis() > zVarB.f1585e ? 1 : (System.currentTimeMillis() == zVarB.f1585e ? 0 : -1)) <= 0 ? p5.B : p5.G);
    }

    public final void v() {
        if (this.f151o == null || this.f149m == null || this.f147k == null || this.f150n == null || B()) {
            return;
        }
        boolean z = this.f147k.j().f665c;
        boolean zIsLoggedIn = this.f150n.y().isLoggedIn();
        if (!z || !zIsLoggedIn) {
            z(this.f149m.b());
        } else {
            H("正在读取云端角色状态...");
            new Thread(new f6(this, 0), "sgscq-cloud-status").start();
        }
    }

    public final void w() {
        h hVar;
        if (this.A == null || (hVar = this.z) == null) {
            return;
        }
        d1 d1VarL = hVar.l();
        this.A.setText(d1VarL.a());
        this.A.setTextColor(d1VarL.f618b && d1VarL.f619c && (System.currentTimeMillis() > d1VarL.f621e ? 1 : (System.currentTimeMillis() == d1VarL.f621e ? 0 : -1)) <= 0 ? p5.B : p5.G);
    }

    public final void x(int i2, int i3, int i4) {
        String strValueOf;
        String string;
        StringBuilder sb;
        ProgressBar progressBar = this.t;
        if (progressBar == null || this.u == null) {
            return;
        }
        progressBar.setVisibility(0);
        this.u.setVisibility(0);
        boolean z = i4 > 0;
        this.t.setIndeterminate(!z);
        if (z) {
            this.t.setMax(i4);
            this.t.setProgress(Math.min(i3, i4));
        }
        if (i4 > 0) {
            strValueOf = i3 + "/" + i4;
        } else {
            strValueOf = String.valueOf(i3);
        }
        if (i2 == 0) {
            throw null;
        }
        int i5 = i2 - 1;
        if (i5 != 1) {
            if (i5 == 2) {
                sb = new StringBuilder("正在校验其他玩家阵容：");
            } else if (i5 != 3) {
                sb = i5 != 4 ? new StringBuilder("正在下载其他玩家阵容：") : new StringBuilder("其他玩家阵容同步完成：");
            } else {
                sb = new StringBuilder("正在应用其他玩家阵容：");
            }
            sb.append(strValueOf);
            string = sb.toString();
        } else {
            string = "其他玩家阵容已是最新";
        }
        I(false, false, false, false);
        this.u.setText(string);
        TextView textView = this.f151o;
        if (textView != null) {
            textView.setText(string);
            this.f151o.setTextColor(p5.C);
        }
    }

    public final void y() {
        if (this.s == null) {
            return;
        }
        boolean z = p7.h(this).r;
        this.s.setText(z ? "禁用云对手" : "启用云对手");
        this.s.setTextColor(z ? p5.D : p5.B);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:90:0x0149  */
    public final void z(com.sgscq.vpn.cloud.d0 d0Var) {
        com.sgscq.vpn.cloud.e0 e0Var;
        boolean z;
        TextView textView;
        int i2;
        boolean z2;
        if (this.f151o == null || this.f147k == null || this.f150n == null) {
            return;
        }
        this.C = d0Var;
        if (B()) {
            return;
        }
        String strK = new m4(this).k();
        boolean z3 = this.f147k.j().f665c;
        boolean zIsLoggedIn = this.f150n.y().isLoggedIn();
        int i3 = 3;
        if (!z3) {
            e0Var = new com.sgscq.vpn.cloud.e0(1);
        } else if (!zIsLoggedIn) {
            e0Var = new com.sgscq.vpn.cloud.e0(2);
        } else if (d0Var == null || d0Var.f310b.isEmpty()) {
            e0Var = new com.sgscq.vpn.cloud.e0(3);
        } else {
            boolean zEquals = d0Var.f311c.equals(strK);
            int i4 = (d0Var.f317i + 59) / 60;
            int i5 = (d0Var.f318j + 59) / 60;
            e0Var = new com.sgscq.vpn.cloud.e0(zEquals ? 4 : 5);
        }
        CloudSessionStore$SessionData cloudSessionStore$SessionDataY = this.f150n.y();
        boolean z4 = this.f147k.j().f665c && cloudSessionStore$SessionDataY.isLoggedIn();
        if (z4) {
            com.sgscq.vpn.cloud.q0 q0Var = this.f149m;
            CloudSessionStore$SessionData cloudSessionStore$SessionDataY2 = q0Var.f463b.y();
            if (cloudSessionStore$SessionDataY2.isLoggedIn() && !q0Var.f466e.h(cloudSessionStore$SessionDataY2.afdianUserId).isEmpty()) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        boolean z5 = z4 && !d0Var.f310b.isEmpty();
        boolean z6 = cloudSessionStore$SessionDataY.isLoggedIn() && d0Var.a(cloudSessionStore$SessionDataY.afdianUserId, strK);
        I(z, z5, z6 && d0Var.a(cloudSessionStore$SessionDataY.afdianUserId, strK), true);
        boolean z7 = z4 && !d0Var.f310b.isEmpty();
        Button button = this.D;
        if (button != null) {
            button.setEnabled(z7);
        }
        String str = "";
        if (this.B != null) {
            boolean zIsEmpty = d0Var.f310b.isEmpty();
            String str2 = d0Var.f311c;
            boolean z8 = (zIsEmpty || str2.isEmpty()) ? false : true;
            this.B.setEnabled(z8);
            SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("sgscq_cloud_auto_sync_v1", 0);
            if (z8) {
                String strJ = com.sgscq.vpn.cloud.b0.j(cloudSessionStore$SessionDataY.afdianUserId, d0Var.f310b, str2);
                String strConcat = strJ.isEmpty() ? "" : "enabled_".concat(strJ);
                if (!strConcat.isEmpty() && sharedPreferences.getBoolean(strConcat, false)) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            this.B.setOnCheckedChangeListener(null);
            this.B.setChecked(z2);
            this.B.setOnCheckedChangeListener(new j6(this, i3));
        }
        y();
        int i6 = e0Var.f323a;
        int iC = a.b0.c(i6);
        if (iC == 0) {
            this.f151o.setText("登录爱发电后可使用云端角色同步");
            this.f151o.setTextColor(p5.G);
            return;
        }
        if (iC == 1) {
            this.f151o.setText("请重新登录爱发电以启用云端角色同步");
            textView = this.f151o;
            i2 = p5.C;
        } else {
            if (iC != 2) {
                boolean z9 = i6 == 4;
                String strF = d0Var.f314f.isEmpty() ? m4.f(d0Var.f311c) : d0Var.f314f;
                TextView textView2 = this.f151o;
                StringBuilder sbB = a.b0.b("云端角色 ", strF, "（等级 ");
                sbB.append(d0Var.f315g);
                sbB.append("，战力 ");
                sbB.append(Math.round(d0Var.f316h));
                sbB.append("，版本 ");
                sbB.append(d0Var.f312d);
                sbB.append("）；最后同步：");
                long j2 = d0Var.f319k;
                sbB.append(j2 <= 0 ? "尚未同步" : new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.getDefault()).format(new Date(j2)));
                sbB.append(z9 ? "，当前已选中" : "，当前未选中");
                if (z9 && !z6) {
                    str = "；请先手动上传或下载以启用云对手";
                }
                sbB.append(str);
                textView2.setText(sbB.toString());
                this.f151o.setTextColor(z9 ? p5.B : p5.C);
                return;
            }
            this.f151o.setText(z ? "尚未绑定服务器云存档，点击上传将绑定本人云存档" : "请先在存档管理中新建本人云存档");
            textView = this.f151o;
            i2 = p5.G;
        }
        textView.setTextColor(i2);
    }
}
