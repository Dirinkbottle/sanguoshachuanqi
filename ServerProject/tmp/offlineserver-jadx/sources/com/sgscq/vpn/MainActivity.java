package com.sgscq.vpn;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends Activity {
    public static final /* synthetic */ int F = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e3 f103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextView f104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Button f106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Button f107e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TextView f108f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public LinearLayout f109g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public LinearLayout f110h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List f111i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f112j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Button f113k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f114l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final f3 f116n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public a7 f117o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f119q;
    public boolean r;
    public volatile boolean s;
    public boolean u;
    public boolean v;
    public int w;
    public int x;
    public float y;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Handler f115m = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final AtomicBoolean f118p = new AtomicBoolean(false);
    public final g3 t = new g3(this);
    public final GradientDrawable z = new GradientDrawable();
    public final GradientDrawable A = new GradientDrawable();
    public final GradientDrawable B = new GradientDrawable();
    public final GradientDrawable C = new GradientDrawable();
    public final GradientDrawable D = new GradientDrawable();
    public final GradientDrawable E = new GradientDrawable();

    public static class BootReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
                z2.e("BootReceiver", "Boot completed, VPN will start on user action");
            }
        }
    }

    public MainActivity() {
        int i2 = 0;
        this.f103a = new e3(this, i2);
        this.f116n = new f3(this, i2);
    }

    public final void a(boolean z) {
        Button button;
        int i2;
        int i3 = 0;
        if (!this.u) {
            this.f105c.setText("○");
            this.f105c.setTextColor(p5.H);
            this.f104b.setText("正在检查本地存档…");
            this.f104b.setTextColor(p5.G);
            this.f106d.setText("请稍候");
            this.f106d.setEnabled(false);
            this.f107e.setEnabled(false);
            this.f107e.setTextColor(p5.G);
            return;
        }
        int i4 = 1;
        this.f106d.setEnabled(!this.v);
        if (z) {
            this.f105c.setText("●");
            this.f105c.setTextColor(p5.E);
            String str = a1.f174d ? "DNS 已启动 ✓" : "DNS 未启动 ✗";
            this.f104b.setText("VPN 运行中 · " + str + "\n三国杀传奇单机版");
            this.f104b.setTextColor(p5.F);
            this.f106d.setText("断开 VPN");
            this.f106d.setTextColor(Color.parseColor("#FFFFFF"));
            this.z.setColor(p5.D);
            this.C.setColor(p5.D);
            this.f106d.setOnClickListener(new h3(this, i3));
            this.f107e.setEnabled(true);
            button = this.f107e;
            i2 = p5.B;
        } else {
            this.f105c.setText("○");
            this.f105c.setTextColor(p5.H);
            this.f104b.setText("VPN 未启动\n点击连接开始游戏");
            this.f104b.setTextColor(p5.G);
            this.f106d.setText("连接 VPN");
            this.f106d.setTextColor(p5.x);
            this.z.setColor(p5.B);
            this.C.setColor(p5.B);
            this.f106d.setOnClickListener(new h3(this, i4));
            this.f107e.setEnabled(false);
            button = this.f107e;
            i2 = p5.G;
        }
        button.setTextColor(i2);
    }

    public final void b() {
        LinearLayout linearLayout = this.f110h;
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        ArrayList<n3> arrayList = new ArrayList();
        PackageManager packageManager = getPackageManager();
        String[] strArr = p5.f1278e;
        for (int i2 = 0; i2 < 5; i2++) {
            String str = strArr[i2];
            try {
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 0);
                arrayList.add(new n3(str, packageManager.getApplicationLabel(applicationInfo).toString(), packageManager.getApplicationIcon(applicationInfo)));
            } catch (Exception unused) {
            }
        }
        if (arrayList.isEmpty()) {
            TextView textView = new TextView(this);
            textView.setText("未找到已安装的游戏");
            textView.setTextSize(12.0f);
            textView.setTextColor(p5.H);
            textView.setGravity(17);
            this.f110h.addView(textView, p5.x0(-1, -2, 0, 0, 0));
            return;
        }
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(this);
        horizontalScrollView.setHorizontalScrollBarEnabled(false);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setPadding(p5.S0(4, this), 0, p5.S0(4, this), 0);
        int iS0 = p5.S0(56, this);
        int iS1 = p5.S0(10, this);
        for (final n3 n3Var : arrayList) {
            LinearLayout linearLayout3 = new LinearLayout(this);
            int i3 = 1;
            linearLayout3.setOrientation(1);
            linearLayout3.setGravity(17);
            linearLayout3.setPadding(iS1, p5.S0(6, this), iS1, p5.S0(6, this));
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(p5.S0(10, this));
            gradientDrawable.setColor(p5.y);
            linearLayout3.setBackground(gradientDrawable);
            ImageView imageView = new ImageView(this);
            imageView.setImageDrawable(n3Var.f1219c);
            linearLayout3.addView(imageView, new LinearLayout.LayoutParams(iS0, iS0));
            TextView textView2 = new TextView(this);
            textView2.setText(n3Var.f1218b);
            textView2.setTextSize(10);
            textView2.setTextColor(p5.G);
            textView2.setGravity(17);
            textView2.setMaxWidth(p5.S0(80, this));
            textView2.setEllipsize(TextUtils.TruncateAt.END);
            textView2.setSingleLine(true);
            linearLayout3.addView(textView2, p5.x0(-2, -2, 0, p5.S0(2, this), 0));
            String str2 = n3Var.f1217a;
            if (SgscqVpnService.f155m) {
                linearLayout3.setOnClickListener(new i1(this, str2, i3));
            } else {
                linearLayout3.setAlpha(0.4f);
                linearLayout3.setOnClickListener(new h3(this, 6));
            }
            linearLayout3.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.sgscq.vpn.i3
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    int i4 = MainActivity.F;
                    MainActivity mainActivity = this.f1053a;
                    mainActivity.getClass();
                    AlertDialog.Builder title = new AlertDialog.Builder(mainActivity).setTitle("打开游戏设置");
                    StringBuilder sb = new StringBuilder("打开「");
                    n3 n3Var2 = n3Var;
                    sb.append(n3Var2.f1218b);
                    sb.append("」的系统应用详情？可在页面中点击“强行停止”。");
                    title.setMessage(sb.toString()).setPositiveButton("打开", new u0(mainActivity, n3Var2, 1)).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                    return true;
                }
            });
            p5.j(linearLayout3, gradientDrawable, p5.y0(p5.y, p5.S0(10, this), getResources().getDisplayMetrics().density));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.rightMargin = p5.S0(8, this);
            linearLayout2.addView(linearLayout3, layoutParams);
        }
        horizontalScrollView.addView(linearLayout2, new LinearLayout.LayoutParams(-2, -2));
        this.f110h.addView(horizontalScrollView, new LinearLayout.LayoutParams(-1, -2));
    }

    public final String c(Bitmap bitmap) {
        if (bitmap == null) {
            return "";
        }
        try {
            int iMax = Math.max(1, this.x);
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, iMax, iMax, true);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
            if (bitmapCreateScaledBitmap != bitmap) {
                bitmapCreateScaledBitmap.recycle();
            }
            return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
        } catch (Exception unused) {
            return "";
        }
    }

    public final PublicKey d() throws IOException {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(getAssets().open("encrypted/public_key.pem"), StandardCharsets.UTF_8));
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(sb.toString(), 0)));
                }
                if (!line.startsWith("-----")) {
                    sb.append(line.trim());
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    public final void e(String str) {
        if (this.f108f == null) {
            return;
        }
        String str2 = new SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(new Date());
        String string = this.f108f.getText() != null ? this.f108f.getText().toString() : "";
        this.f108f.setText(str2 + "  " + str + "\n" + string);
        String[] strArrSplit = this.f108f.getText().toString().split("\n");
        if (strArrSplit.length > 12) {
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < 12; i2++) {
                sb.append(strArrSplit[i2]);
                sb.append("\n");
            }
            this.f108f.setText(sb.toString().trim());
        }
    }

    public final void f() {
        boolean z;
        boolean z2 = false;
        boolean z3 = getSharedPreferences("sgscq_config_v2", 0).getBoolean("vpn_was_running", false);
        boolean z4 = SgscqVpnService.f155m;
        if (!p5.k0(this) && (z4 || z3)) {
            z = z3 && !z4 ? true : !"1.0.1.14067".equals(getApplicationContext().getSharedPreferences("sgscq_config_v2", 0).getString("keepalive_prompted_for", ""));
        } else {
            z = false;
        }
        if (z) {
            if (z3 && !z4) {
                z2 = true;
            }
            if (z2) {
                e("检测到 VPN 被系统清理，建议按提示放开后台限制");
            }
            p5.m1(this);
        }
    }

    public final Button g(String str, h3 h3Var) {
        Button button = new Button(this);
        button.setText(str);
        button.setTextSize(14.0f);
        button.setAllCaps(false);
        button.setMinHeight(0);
        button.setMinimumHeight(0);
        button.setPadding(p5.S0(12, this), 0, p5.S0(12, this), 0);
        button.setOnClickListener(h3Var);
        return button;
    }

    public final void h() throws Exception {
        int i2;
        ArrayList<o3> arrayList = new ArrayList();
        String strSubstring = "afdian/top100.json";
        while (true) {
            i2 = 1;
            if (!strSubstring.startsWith("/")) {
                break;
            } else {
                strSubstring = strSubstring.substring(1);
            }
        }
        String[] strArr = {"https://api.sgscq.com/api/v1/public/supporters/top100"};
        Exception e2 = null;
        for (int i3 = 0; i3 < 1; i3++) {
            try {
                JSONArray jSONArrayOptJSONArray = ((JSONObject) p5.O(new j(strArr[i3], i2))).optJSONArray("supporters");
                if (jSONArrayOptJSONArray == null) {
                    throw new Exception("supporters response missing supporters");
                }
                for (int i4 = 0; i4 < jSONArrayOptJSONArray.length(); i4++) {
                    JSONObject jSONObject = jSONArrayOptJSONArray.getJSONObject(i4);
                    String strOptString = jSONObject.optString("display_name", jSONObject.optString("name", ""));
                    String strOptString2 = jSONObject.optString("user_id", "");
                    String strOptString3 = jSONObject.optString("avatar", jSONObject.optString("avatar_key", ""));
                    double dOptDouble = jSONObject.optDouble("amount", 0.0d);
                    if (!strOptString.isEmpty() || !strOptString2.isEmpty()) {
                        arrayList.add(new o3(strOptString.isEmpty() ? strOptString2 : strOptString, strOptString3, strOptString2, dOptDouble));
                    }
                }
                for (o3 o3Var : arrayList) {
                    String str = o3Var.f1243b;
                    if (str != null && !str.isEmpty() && o3Var.f1247f == null) {
                        try {
                            Bitmap bitmap = (Bitmap) p5.O(new y0(o3Var, i2));
                            if (bitmap != null) {
                                o3Var.f1247f = bitmap;
                                o3Var.f1246e = c(bitmap);
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
                this.f111i = arrayList;
                runOnUiThread(new d(this, arrayList, 10));
                return;
            } catch (Exception e3) {
                e2 = e3;
            }
        }
        if (e2 == null) {
            throw new Exception("赞助快照不可用");
        }
    }

    public final void i() {
        int width;
        this.f109g.removeAllViews();
        List list = this.f111i;
        int i2 = -1;
        int i3 = 17;
        int i4 = -2;
        int i5 = 0;
        if (list == null || list.isEmpty()) {
            TextView textView = new TextView(this);
            textView.setText("暂无赞助记录\n成为第一位支持者吧！");
            textView.setTextSize(10.0f);
            textView.setTextColor(p5.G);
            textView.setGravity(17);
            this.f109g.addView(textView, p5.x0(-1, -2, 0, 0, 0));
            return;
        }
        int i6 = this.w;
        int iS0 = p5.S0(8, this);
        LinearLayout linearLayout = this.f109g;
        if (linearLayout == null) {
            width = 0;
        } else {
            width = linearLayout.getWidth();
            if (width > 0) {
                this.f112j = width;
            } else {
                width = Math.max(0, this.f112j);
            }
        }
        int i7 = 1;
        int iMax = width <= 0 ? 1 : Math.max(1, (Math.max(0, iS0) + width) / (Math.max(0, iS0) + Math.max(1, i6)));
        int i8 = this.x;
        if (width == 0) {
            this.f109g.post(new f3(this, 12));
        }
        LinearLayout linearLayout2 = null;
        int i9 = 0;
        while (i9 < this.f111i.size()) {
            if (i9 % iMax == 0) {
                linearLayout2 = new LinearLayout(this);
                linearLayout2.setOrientation(i5);
                linearLayout2.setGravity(i3);
                this.f109g.addView(linearLayout2, p5.x0(i2, i4, i5, p5.S0(3, this), i5));
            }
            o3 o3Var = (o3) this.f111i.get(i9);
            LinearLayout linearLayout3 = new LinearLayout(this);
            linearLayout3.setOrientation(i7);
            linearLayout3.setGravity(i3);
            linearLayout3.setPadding(p5.S0(6, this), p5.S0(6, this), p5.S0(6, this), p5.S0(6, this));
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(i5);
            gradientDrawable.setCornerRadius(p5.S0(10, this));
            gradientDrawable.setColor(p5.y);
            linearLayout3.setBackground(gradientDrawable);
            ImageView imageView = new ImageView(this);
            Bitmap bitmap = o3Var.f1247f;
            String str = o3Var.f1242a;
            if (bitmap != null) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i8, i8, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                Paint paint = new Paint(i7);
                float f2 = i8 / 2.0f;
                canvas.drawCircle(f2, f2, f2, paint);
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                canvas.drawBitmap(Bitmap.createScaledBitmap(bitmap, i8, i8, true), 0.0f, 0.0f, paint);
                imageView.setImageBitmap(bitmapCreateBitmap);
            } else {
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i8, i8, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
                Paint paint2 = new Paint(i7);
                paint2.setColor(new int[]{-1499549, -6543440, -12627531, -16537100, -16738680, -11751600, -26624, -8825528, -10453621, -769226}[Math.abs(str.hashCode()) % 10]);
                float f3 = i8;
                float f4 = f3 / 2.0f;
                canvas2.drawCircle(f4, f4, f4, paint2);
                Paint paint3 = new Paint(1);
                paint3.setColor(-1);
                paint3.setTextSize(f3 * 0.5f);
                paint3.setTextAlign(Paint.Align.CENTER);
                canvas2.drawText(str.isEmpty() ? "?" : str.substring(0, 1), f4, f4 - ((paint3.ascent() + paint3.descent()) / 2.0f), paint3);
                imageView.setImageBitmap(bitmapCreateBitmap2);
            }
            linearLayout3.addView(imageView, new LinearLayout.LayoutParams(i8, i8));
            TextView textView2 = new TextView(this);
            textView2.setText(str);
            textView2.setTextSize(this.y);
            textView2.setTextColor(p5.G);
            textView2.setGravity(17);
            textView2.setMaxWidth(i6 - p5.S0(6, this));
            textView2.setSingleLine(false);
            textView2.setBreakStrategy(0);
            textView2.setHyphenationFrequency(0);
            linearLayout3.addView(textView2, p5.x0(-2, -2, 0, p5.S0(1, this), 0));
            p5.j(linearLayout3, gradientDrawable, p5.y0(p5.y, p5.S0(10, this), getResources().getDisplayMetrics().density));
            LinearLayout.LayoutParams layoutParamsX0 = p5.x0(i6, -2, 0, 0, 0);
            layoutParamsX0.leftMargin = p5.S0(4, this);
            layoutParamsX0.rightMargin = p5.S0(4, this);
            linearLayout2.addView(linearLayout3, layoutParamsX0);
            i9++;
            i7 = 1;
            i2 = -1;
            i3 = 17;
            i4 = -2;
            i5 = 0;
        }
    }

    public final void j() {
        p.l lVar;
        this.f115m.removeCallbacks(this.f116n);
        if (!this.s || (lVar = p.l.f1877p) == null) {
            n();
            l();
            return;
        }
        try {
            if (c7.f254i) {
                m();
                return;
            }
            w1 w1VarA1 = w1.a1(this);
            long jF = c7.f();
            List listD = p.d.b(this).d(jF);
            List<Map> listG1 = w1VarA1.g1(jF / 1000);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map map : listG1) {
                linkedHashMap.put(String.valueOf(map.get("general_id")), map);
            }
            if (listD.isEmpty()) {
                if (!lVar.i(jF, new f3(this, 3))) {
                    m();
                    return;
                }
                this.f114l.setText("正在加载限时武将…");
                this.f114l.setContentDescription("正在加载限时武将");
                this.f114l.setOnClickListener(null);
                this.f114l.setClickable(false);
                this.f114l.setFocusable(false);
                return;
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM-dd HH:mm", Locale.getDefault());
            ArrayList arrayList = new ArrayList(2);
            for (Iterator it = listD.iterator(); it.hasNext(); it = it) {
                p.a aVar = (p.a) it.next();
                Map map2 = (Map) linkedHashMap.get(aVar.f1858c);
                if (map2 == null) {
                    lVar.f1889l = true;
                    m();
                    return;
                }
                arrayList.add((aVar.a(jF) ? "★当前：" : "下一个：") + map2.get("general_name") + "  战力:" + map2.get("fighting") + "  开放:" + simpleDateFormat.format(new Date(aVar.f1860e)));
            }
            if (arrayList.size() == 1) {
                arrayList.add(lVar.i(jF, new f3(this, 4)) ? "下一个：正在加载…" : "下一个：等待服务端更新（自动重试）");
                l();
            }
            this.f114l.setOnClickListener(null);
            this.f114l.setClickable(false);
            this.f114l.setFocusable(false);
            this.f114l.setContentDescription(null);
            this.f114l.setText(((String) arrayList.get(0)) + "\n" + ((String) arrayList.get(1)));
        } catch (Exception e2) {
            Log.e("SGSCQ_UI", "[LimitedSchedule] 加载限时列表失败: " + e2.getMessage(), e2);
            lVar.f1889l = true;
            m();
        }
    }

    public final void k() {
        try {
            List list = this.f111i;
            if (list != null && !list.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                for (o3 o3Var : this.f111i) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("name", o3Var.f1242a);
                    String str = o3Var.f1243b;
                    String str2 = "";
                    if (str == null) {
                        str = "";
                    }
                    jSONObject.put("avatar", str);
                    String str3 = o3Var.f1244c;
                    if (str3 == null) {
                        str3 = "";
                    }
                    jSONObject.put("userId", str3);
                    jSONObject.put("total", o3Var.f1245d);
                    String str4 = o3Var.f1246e;
                    if (str4 == null || str4.isEmpty()) {
                        o3Var.f1246e = c(o3Var.f1247f);
                    }
                    String str5 = o3Var.f1246e;
                    if (str5 != null) {
                        str2 = str5;
                    }
                    jSONObject.put("avatarImage", str2);
                    jSONArray.put(jSONObject);
                }
                getSharedPreferences("sgscq_config_v2", 0).edit().putString("sponsor_cache_v2", jSONArray.toString()).putLong("sponsor_cache_v2_time", System.currentTimeMillis()).apply();
            }
        } catch (Exception unused) {
        }
    }

    public final void l() {
        Handler handler = this.f115m;
        f3 f3Var = this.f116n;
        handler.removeCallbacks(f3Var);
        handler.postDelayed(f3Var, 60000L);
    }

    public final void m() {
        this.f114l.setText("限时功能已禁用");
        this.f114l.setContentDescription("限时功能已禁用，点击重试");
        this.f114l.setClickable(true);
        this.f114l.setFocusable(true);
        this.f114l.setOnClickListener(new h3(this, 7));
    }

    public final void n() {
        this.f114l.setText("正在加载限时武将…");
        this.f114l.setContentDescription("正在加载限时武将");
        this.f114l.setOnClickListener(null);
        this.f114l.setClickable(false);
        this.f114l.setFocusable(false);
    }

    public final void o() {
        sendBroadcast(new Intent("com.sgscq.vpn.debug".concat(".STOP")).setPackage("com.sgscq.vpn.debug"));
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
        }
        z2.f();
        e("日志缓冲区已初始化");
        getSharedPreferences("sgscq_config_v2", 0).edit().putBoolean("vpn_was_running", true).apply();
        Intent intent = new Intent(this, (Class<?>) SgscqVpnService.class);
        if (Build.VERSION.SDK_INT < 26 || "STOP".equals(intent.getAction())) {
            startService(intent);
        } else {
            startForegroundService(intent);
        }
        a(true);
        b();
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        String str;
        super.onActivityResult(i2, i3, intent);
        if (i3 == -1) {
            o();
            str = "VPN 已连接";
        } else {
            a(false);
            this.f104b.setText("需要 VPN 权限");
            str = "VPN 权限被拒绝";
        }
        e(str);
    }

    /* JADX WARN: Code duplicated, block: B:110:0x0864  */
    /* JADX WARN: Code duplicated, block: B:119:0x0886  */
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        ViewGroup.LayoutParams layoutParams;
        View view;
        boolean z;
        int i2;
        boolean z2;
        Bitmap bitmapDecodeByteArray;
        super.onCreate(bundle);
        p5.e0(this);
        p5.l(this);
        int i3 = 1;
        c7.d(this).k(new e3(this, i3));
        r3.k();
        new Thread(new f3(this, i3), "LimitedInit").start();
        if (!getSharedPreferences("sgscq_config_v2", 0).getBoolean("disclaimer_accepted", false)) {
            AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setTitle("免责声明").setMessage("本应用仅供学习与研究使用，严禁用于商业用途。\n\n• 本应用不提供任何游戏官方服务\n• 所有功能均为技术研究与学习目的\n• 请在下载后 24 小时内删除本应用\n• 使用本应用所产生的一切后果由用户自行承担\n\n继续使用即表示您已阅读并同意上述声明。").setCancelable(false).setPositiveButton("我已阅读并同意", new k3(this, 0)).setNegativeButton("不同意", new k3(this, 1)).create();
            alertDialogCreate.show();
            alertDialogCreate.getButton(-1).setTextColor(p5.B);
            alertDialogCreate.getButton(-2).setTextColor(p5.G);
            TextView textView = (TextView) alertDialogCreate.findViewById(android.R.id.title);
            if (textView != null) {
                textView.setTextColor(p5.F);
            }
            TextView textView2 = (TextView) alertDialogCreate.findViewById(android.R.id.message);
            if (textView2 != null) {
                textView2.setTextColor(p5.G);
            }
            alertDialogCreate.getWindow().setBackgroundDrawable(new ColorDrawable(p5.y));
        }
        SharedPreferences sharedPreferences = getSharedPreferences("sgscq_meta", 0);
        sharedPreferences.edit().putInt("launch_count", sharedPreferences.getInt("launch_count", 0) + 1).apply();
        this.z.setShape(0);
        this.z.setCornerRadius(p5.S0(12, this));
        this.A.setShape(0);
        this.A.setCornerRadius(p5.S0(10, this));
        this.A.setColor(p5.y);
        this.B.setShape(0);
        this.B.setCornerRadius(p5.S0(10, this));
        this.B.setColor(p5.y);
        this.C.setShape(0);
        this.C.setCornerRadius(p5.S0(12, this));
        this.C.setStroke(p5.S0(2, this), p5.B);
        this.D.setShape(0);
        this.D.setCornerRadius(p5.S0(10, this));
        this.D.setStroke(p5.S0(2, this), p5.B);
        this.D.setColor(p5.y);
        this.E.setShape(0);
        this.E.setCornerRadius(p5.S0(10, this));
        this.E.setStroke(p5.S0(2, this), p5.B);
        this.E.setColor(p5.y);
        ScrollView scrollView = new ScrollView(this);
        scrollView.setFillViewport(true);
        scrollView.setDescendantFocusability(262144);
        scrollView.setBackgroundColor(p5.x);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(p5.x);
        boolean zS0 = p5.s0(this);
        int i4 = getResources().getDisplayMetrics().widthPixels;
        int i5 = getResources().getDisplayMetrics().heightPixels;
        float f2 = getResources().getDisplayMetrics().density;
        int i6 = zS0 ? 22 : 28;
        int i7 = zS0 ? 11 : 12;
        int i8 = zS0 ? 10 : 11;
        int i9 = zS0 ? 16 : 18;
        int iS0 = zS0 ? p5.S0(8, this) : p5.S0(16, this);
        int iS1 = zS0 ? p5.S0(8, this) : p5.S0(12, this);
        int iS2 = zS0 ? p5.S0(44, this) : p5.S0(52, this);
        int iS3 = p5.S0(zS0 ? 40 : 48, this);
        int iS4 = zS0 ? p5.S0(6, this) : p5.S0(12, this);
        int iS5 = zS0 ? p5.S0(6, this) : p5.S0(12, this);
        int iS6 = zS0 ? p5.S0(80, this) : p5.S0(100, this);
        int iS7 = (zS0 ? p5.S0(12, this) : p5.S0(24, this)) + p5.Y(this);
        int iS8 = zS0 ? p5.S0(16, this) : p5.S0(24, this);
        this.w = p5.S0(zS0 ? 56 : 72, this);
        this.x = p5.S0(zS0 ? 36 : 44, this);
        this.y = zS0 ? 10.0f : 11.0f;
        TextView textView3 = new TextView(this);
        textView3.setText("三传续命");
        textView3.setTextSize(i6);
        textView3.setTextColor(p5.F);
        textView3.setTypeface(Typeface.DEFAULT_BOLD);
        textView3.setGravity(17);
        int i10 = iS8;
        linearLayout.addView(textView3, p5.x0(-1, -2, 0, 0, 0));
        TextView textView4 = new TextView(this);
        textView4.setText("三国杀传奇 · 单机服务器 | v1.0.1.14067 Build: 09-23 11:19");
        textView4.setTextSize(i7);
        textView4.setTextColor(p5.G);
        textView4.setGravity(17);
        linearLayout.addView(textView4, p5.x0(-1, -2, 0, 0, p5.S0(8, this)));
        TextView textView5 = new TextView(this);
        textView5.setText("目前还不完善，肯定会有各种问题哦（先在存档管理新建空号）");
        textView5.setTextSize(i8);
        textView5.setTextColor(p5.H);
        textView5.setGravity(17);
        linearLayout.addView(textView5, p5.x0(-1, -2, 0, 0, p5.S0(4, this)));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout2.setPadding(p5.S0(16, this), p5.S0(12, this), p5.S0(16, this), p5.S0(12, this));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(p5.S0(12, this));
        gradientDrawable.setStroke(p5.S0(1, this), p5.I);
        gradientDrawable.setColor(p5.y);
        linearLayout2.setBackground(gradientDrawable);
        linearLayout.addView(linearLayout2, p5.x0(-1, -2, 0, 0, p5.S0(12, this)));
        TextView textView6 = new TextView(this);
        this.f105c = textView6;
        textView6.setTextSize(14.0f);
        this.f105c.setPadding(0, 0, p5.S0(8, this), 0);
        linearLayout2.addView(this.f105c);
        TextView textView7 = new TextView(this);
        this.f104b = textView7;
        textView7.setTextSize(13.0f);
        linearLayout2.addView(this.f104b, p5.x0(-1, -2, 0, 0, 0));
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(0);
        linearLayout.addView(linearLayout3, p5.x0(-1, iS2, 0, 0, iS0));
        Button button = new Button(this);
        this.f106d = button;
        button.setTextSize(i9);
        this.f106d.setAllCaps(false);
        this.f106d.setTypeface(Typeface.DEFAULT_BOLD);
        this.f106d.setMinHeight(0);
        this.f106d.setMinimumHeight(0);
        this.f106d.setPadding(0, 0, 0, 0);
        p5.i(this.f106d, this.z, this.C);
        linearLayout3.addView(this.f106d, new LinearLayout.LayoutParams(0, -1, 1.0f));
        linearLayout3.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(8, this), 0));
        Button button2 = new Button(this);
        this.f107e = button2;
        button2.setTextSize(12.0f);
        this.f107e.setAllCaps(false);
        this.f107e.setTypeface(Typeface.DEFAULT_BOLD);
        this.f107e.setText("分析数据导出");
        this.f107e.setTextColor(p5.G);
        this.f107e.setEnabled(false);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(0);
        gradientDrawable2.setCornerRadius(p5.S0(12, this));
        gradientDrawable2.setColor(p5.y);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        gradientDrawable3.setShape(0);
        gradientDrawable3.setCornerRadius(p5.S0(12, this));
        gradientDrawable3.setStroke(p5.S0(2, this), p5.B);
        gradientDrawable3.setColor(p5.y);
        p5.i(this.f107e, gradientDrawable2, gradientDrawable3);
        this.f107e.setOnClickListener(new h3(this, 2));
        linearLayout3.addView(this.f107e, new LinearLayout.LayoutParams(0, -1, 1.0f));
        LinearLayout linearLayout4 = new LinearLayout(this);
        this.f110h = linearLayout4;
        linearLayout4.setOrientation(1);
        this.f110h.setPadding(0, p5.S0(4, this), 0, p5.S0(4, this));
        linearLayout.addView(this.f110h, p5.x0(-1, -2, 0, 0, p5.S0(8, this)));
        b();
        this.f114l = new TextView(this);
        GradientDrawable gradientDrawable4 = new GradientDrawable();
        gradientDrawable4.setShape(0);
        gradientDrawable4.setCornerRadius(p5.S0(10, this));
        gradientDrawable4.setColor(p5.y);
        this.f114l.setTextColor(p5.F);
        this.f114l.setTextSize(16.0f);
        this.f114l.setGravity(16);
        this.f114l.setMinLines(4);
        this.f114l.setBackground(gradientDrawable4);
        this.f114l.setPadding(p5.S0(12, this), p5.S0(8, this), p5.S0(12, this), p5.S0(8, this));
        linearLayout.addView(this.f114l, p5.x0(-1, -2, 0, 0, p5.S0(8, this)));
        j();
        LinearLayout linearLayout5 = new LinearLayout(this);
        linearLayout5.setOrientation(0);
        linearLayout.addView(linearLayout5, p5.x0(-1, -2, 0, 0, iS1));
        Button buttonG = g("存档管理", new h3(this, 3));
        buttonG.setTextColor(p5.B);
        p5.i(buttonG, this.A, this.D);
        linearLayout5.addView(buttonG, p5.x0(0, iS3, 1, 0, 0));
        linearLayout5.addView(new View(this), new LinearLayout.LayoutParams(p5.S0(8, this), 0));
        Button buttonG2 = g("游戏设置", new h3(this, 4));
        this.f113k = buttonG2;
        buttonG2.setTextColor(p5.G);
        p5.i(this.f113k, this.B, this.E);
        linearLayout5.addView(this.f113k, p5.x0(0, iS3, 1, 0, 0));
        p();
        c5 c5Var = new c5(this);
        LinearLayout linearLayout6 = new LinearLayout(this);
        linearLayout6.setOrientation(1);
        linearLayout6.setBackgroundColor(p5.x);
        LinearLayout linearLayout7 = new LinearLayout(this);
        linearLayout7.setOrientation(0);
        h3 h3Var = new h3(this, 5);
        Button button3 = new Button(this);
        button3.setText("检查更新");
        button3.setTextSize(14.0f);
        button3.setTextColor(p5.B);
        button3.setAllCaps(false);
        button3.setMinHeight(0);
        button3.setMinimumHeight(0);
        button3.setPadding(p5.S0(12, this), 0, p5.S0(12, this), 0);
        button3.setOnClickListener(h3Var);
        button3.setTextColor(p5.G);
        button3.setTextSize(14.0f);
        GradientDrawable gradientDrawable5 = new GradientDrawable();
        gradientDrawable5.setShape(0);
        gradientDrawable5.setCornerRadius(p5.S0(10, this));
        gradientDrawable5.setColor(p5.x);
        p5.i(button3, gradientDrawable5, p5.y0(p5.x, p5.S0(10, this), getResources().getDisplayMetrics().density));
        linearLayout7.addView(button3, p5.x0(0, iS3, 1, 0, 0));
        linearLayout6.addView(linearLayout7, p5.x0(-1, -2, 0, 0, iS4));
        TextView textView8 = new TextView(this);
        textView8.setText("爱发电感谢");
        textView8.setTextSize(12.0f);
        textView8.setTextColor(p5.C);
        textView8.setAllCaps(true);
        linearLayout6.addView(textView8, p5.x0(-1, -2, 0, 0, 0));
        View view2 = new View(this);
        view2.setBackgroundColor(p5.C);
        linearLayout6.addView(view2, p5.w0(p5.S0(32, this), p5.S0(4, this), p5.S0(2, this)));
        LinearLayout linearLayout8 = new LinearLayout(this);
        this.f109g = linearLayout8;
        linearLayout8.setOrientation(1);
        this.f109g.setGravity(17);
        linearLayout6.addView(this.f109g, p5.x0(-1, -2, 0, 0, iS5));
        TextView textView9 = new TextView(this);
        textView9.setText("暂无赞助记录\n成为第一位支持者吧！");
        textView9.setTextSize(12.0f);
        textView9.setTextColor(p5.G);
        textView9.setGravity(17);
        this.f109g.addView(textView9, p5.x0(-1, -2, 0, 0, 0));
        TextView textView10 = new TextView(this);
        this.f108f = textView10;
        textView10.setTextSize(11.0f);
        this.f108f.setTextColor(p5.H);
        this.f108f.setBackgroundColor(p5.y);
        this.f108f.setPadding(p5.S0(12, this), p5.S0(10, this), p5.S0(12, this), p5.S0(10, this));
        this.f108f.setTypeface(Typeface.MONOSPACE);
        this.f108f.setFocusable(false);
        GradientDrawable gradientDrawable6 = new GradientDrawable();
        gradientDrawable6.setShape(0);
        gradientDrawable6.setCornerRadius(p5.S0(8, this));
        gradientDrawable6.setColor(p5.y);
        this.f108f.setBackground(gradientDrawable6);
        linearLayout6.addView(this.f108f, p5.x0(-1, iS6, 0, 0, p5.S0(8, this)));
        if (zS0) {
            LinearLayout linearLayout9 = new LinearLayout(this);
            linearLayout9.setOrientation(1);
            linearLayout9.setBackgroundColor(p5.x);
            linearLayout9.setPadding(p5.S0(16, this), iS7, p5.S0(16, this), i10);
            while (linearLayout.getChildCount() > 0) {
                View childAt = linearLayout.getChildAt(0);
                linearLayout.removeViewAt(0);
                linearLayout9.addView(childAt);
            }
            while (linearLayout6.getChildCount() > 0) {
                View childAt2 = linearLayout6.getChildAt(0);
                linearLayout6.removeViewAt(0);
                linearLayout9.addView(childAt2);
            }
            ScrollView scrollView2 = new ScrollView(this);
            scrollView2.setFillViewport(true);
            scrollView2.setDescendantFocusability(262144);
            scrollView2.setBackgroundColor(p5.x);
            scrollView2.addView(linearLayout9);
            int panelWidth = c5Var.getPanelWidth();
            View view3 = new View(this);
            view3.setBackgroundColor(p5.C);
            LinearLayout linearLayout10 = new LinearLayout(this);
            linearLayout10.setOrientation(0);
            linearLayout10.setBackgroundColor(p5.x);
            linearLayout10.addView(scrollView2, new LinearLayout.LayoutParams(0, -1, 1.0f));
            linearLayout10.addView(view3, new LinearLayout.LayoutParams(p5.S0(1, this), -1));
            linearLayout10.addView(c5Var, new LinearLayout.LayoutParams(panelWidth, -1));
            layoutParams = new ViewGroup.LayoutParams(-1, -1);
            view = linearLayout10;
        } else {
            linearLayout.setPadding(p5.S0(16, this), iS7, p5.S0(16, this), i10);
            while (linearLayout6.getChildCount() > 0) {
                View childAt3 = linearLayout6.getChildAt(0);
                linearLayout6.removeViewAt(0);
                linearLayout.addView(childAt3);
            }
            scrollView.addView(linearLayout);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams2.gravity = 81;
            int iS9 = p5.S0(120, this);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
            layoutParams3.bottomMargin = iS9;
            FrameLayout frameLayout = new FrameLayout(this);
            frameLayout.setBackgroundColor(p5.x);
            frameLayout.addView(scrollView, layoutParams3);
            View view4 = new View(this);
            view4.setBackgroundColor(p5.C);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, p5.S0(1, this));
            layoutParams4.gravity = 80;
            layoutParams4.bottomMargin = iS9;
            frameLayout.addView(view4, layoutParams4);
            frameLayout.addView(c5Var, layoutParams2);
            layoutParams = new ViewGroup.LayoutParams(-1, -1);
            view = frameLayout;
        }
        setContentView(view, layoutParams);
        a(SgscqVpnService.f155m);
        b();
        try {
            String string = getSharedPreferences("sgscq_config_v2", 0).getString("sponsor_cache_v2", null);
            if (string == null || string.isEmpty()) {
                z = false;
            } else {
                JSONArray jSONArray = new JSONArray(string);
                ArrayList arrayList = new ArrayList();
                for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i11);
                    o3 o3Var = new o3(jSONObject.getString("name"), jSONObject.optString("avatar", ""), jSONObject.optString("userId", ""), jSONObject.optDouble("total", 0.0d));
                    String strOptString = jSONObject.optString("avatarImage", "");
                    o3Var.f1246e = strOptString;
                    if (strOptString == null || strOptString.isEmpty()) {
                        bitmapDecodeByteArray = null;
                    } else {
                        try {
                            byte[] bArrDecode = Base64.decode(strOptString, 0);
                            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                        } catch (Exception unused) {
                            bitmapDecodeByteArray = null;
                        }
                    }
                    o3Var.f1247f = bitmapDecodeByteArray;
                    arrayList.add(o3Var);
                }
                if (arrayList.isEmpty()) {
                    z = false;
                } else {
                    this.f111i = arrayList;
                    i();
                    z = true;
                }
            }
        } catch (Exception unused2) {
        }
        if (!z) {
            new Thread(new f3(this, 11)).start();
        } else if (!(System.currentTimeMillis() - getSharedPreferences("sgscq_config_v2", 0).getLong("sponsor_cache_v2_time", 0L) < 7200000)) {
            new Thread(new f3(this, 11)).start();
        }
        b0 b0Var = new b0(this);
        z zVarB = b0Var.b();
        if (zVarB.f1582b && !zVarB.f1581a.isEmpty()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = zVarB.f1584d;
            if (j2 <= 0 || jCurrentTimeMillis - j2 >= 604800000) {
                b0.f(this, null, new w(b0Var, 0));
            }
        }
        this.f106d.requestFocus();
        a7 a7Var = new a7(this);
        this.f117o = a7Var;
        int i12 = 0;
        new Thread(new d7(a7Var, new f3(this, 2), i12), "cloud-version-policy").start();
        a7 a7Var2 = this.f117o;
        a7Var2.getClass();
        new Thread(new j3(a7Var2, true, true ? 1 : 0)).start();
        g3 g3Var = this.t;
        Object obj = x6.f1537a;
        if (g3Var == null) {
            i2 = 1;
        } else {
            Context applicationContext = getApplicationContext();
            synchronized (x6.f1537a) {
                if (x6.f1541e == 3) {
                    z2 = false;
                    i12 = 1;
                    i2 = 1;
                } else {
                    ArrayList arrayList2 = x6.f1540d;
                    if (!arrayList2.contains(g3Var)) {
                        arrayList2.add(g3Var);
                    }
                    i2 = 1;
                    if (x6.f1541e == 1) {
                        x6.f1541e = 2;
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                }
            }
            if (i12 != 0) {
                x6.f1538b.post(new b(g3Var, 7));
            } else if (z2) {
                x6.f1539c.execute(new b(applicationContext, 8));
            }
        }
        e3 e3Var = this.f103a;
        o.j.f1842k = e3Var;
        if (e3Var != null) {
            o.j jVar = o.j.f1841j;
            e3Var.c(jVar == null ? i2 : jVar.f1849g);
        }
        SgscqVpnService.f156n = new e3(this, 2);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        if (o.j.f1842k == this.f103a) {
            o.j.f1842k = null;
        }
        this.f115m.removeCallbacks(this.f116n);
        g3 g3Var = this.t;
        if (g3Var == null) {
            Object obj = x6.f1537a;
        } else {
            synchronized (x6.f1537a) {
                x6.f1540d.remove(g3Var);
            }
        }
        SgscqVpnService.f156n = null;
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onPause() {
        n0.f1210d = false;
        n0.d(this);
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (i2 != 1101) {
            return;
        }
        boolean z = false;
        if (iArr != null && iArr.length > 0 && iArr[0] == 0) {
            z = true;
        }
        e(z ? "通知权限已开启" : "通知权限被拒绝，可在设置页手动打开");
        if (z) {
            f();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        n0.f1210d = true;
        n0.d(this);
        Handler handler = n0.f1213g;
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
            n0.f1213g = handler;
        }
        i0 i0Var = n0.f1214h;
        handler.removeCallbacks(i0Var);
        handler.postDelayed(i0Var, 60000L);
        if (!this.f119q) {
            this.f119q = true;
            if (n0.p(this)) {
                e("检测到上次运行异常退出，点「导出」可一并导出崩溃日志（crash_log.txt）");
            }
        }
        if (!this.r) {
            this.r = true;
            if (p5.q0(this) ? false : !"1.0.1.14067".equals(getApplicationContext().getSharedPreferences("sgscq_config_v2", 0).getString("notify_permission_prompted_for", ""))) {
                e("通知权限未开启，充值到账提醒和 VPN 状态通知都收不到");
                if (!isFinishing()) {
                    new AlertDialog.Builder(this).setTitle("开启通知权限").setMessage("本应用的通知被系统关掉了，会带来两个问题：\n\n1. 充值到账、订单状态这类提醒收不到；\n2. VPN 前台服务的状态通知不显示，部分机型会把没有通知的前台服务当成异常清理，游戏过程中 VPN 会断。\n\n点「去允许」在系统弹框里选择允许即可。如果之前选过「不允许」，系统不会再弹，请点「打开通知设置」在里面手动打开。").setPositiveButton("去允许", new DialogInterface.OnClickListener() { // from class: com.sgscq.vpn.p3

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ String f1269b = "1.0.1.14067";

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ int f1270c = 1101;

                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            String str = this.f1269b;
                            Activity activity = this;
                            p5.A0(activity, str);
                            if (p5.Z0(activity, this.f1270c)) {
                                return;
                            }
                            p5.J0(activity);
                        }
                    }).setNeutralButton("打开通知设置", new z1(this, 2)).setNegativeButton("稍后", new z1(this, 3)).show();
                }
            } else {
                f();
            }
        }
        j();
        a(SgscqVpnService.f155m);
        b();
    }

    public final void p() {
        c7 c7VarD = c7.d(this);
        boolean zE = c7VarD.e();
        Button button = this.f113k;
        if (button != null) {
            button.setEnabled(!zE);
            this.f113k.setAlpha(zE ? 0.45f : 1.0f);
        }
        if (zE) {
            e(c7VarD.j());
        }
        if (this.f114l != null) {
            j();
        }
    }
}
