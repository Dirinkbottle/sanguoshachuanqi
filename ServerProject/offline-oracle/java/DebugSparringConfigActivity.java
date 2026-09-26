package com.sgscq.vpn;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DebugSparringConfigActivity extends Activity {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final float[] f97f = {0.65f, 1.25f, 1.4f, 1.4f, 0.72f, 0.7f, 1.5f, 1.5f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f98a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DebugSparringConfig$Config f99b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public EditText f100c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TextView f101d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Button f102e;

    public static String d(List list) {
        StringBuilder sb = new StringBuilder();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (sb.length() > 0) {
                sb.append("；");
            }
            sb.append(str);
        }
        return sb.toString();
    }

    public static LinearLayout.LayoutParams f(int i2, int i3, float f2, int i4, int i5) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i3, f2);
        layoutParams.setMargins(i4, 0, i5, 0);
        return layoutParams;
    }

    public static void g(v0 v0Var) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6 = v0Var.f1442a.generalId;
        boolean z = (str6 == null || str6.isEmpty()) ? false : true;
        Button button = v0Var.f1443b;
        DebugSparringConfig$Slot debugSparringConfig$Slot = v0Var.f1442a;
        if (z && (str5 = debugSparringConfig$Slot.generalId) != null && !str5.isEmpty()) {
            throw null;
        }
        button.setText("无");
        Button button2 = v0Var.f1445d;
        String str7 = debugSparringConfig$Slot.cultivateAttr;
        if ("attack".equals(str7)) {
            str = "攻";
        } else if ("defense".equals(str7)) {
            str = "防";
        } else if ("hp".equals(str7)) {
            str = "血";
        } else {
            str = "wisdom".equals(str7) ? "智" : "无";
        }
        button2.setText(str);
        v0Var.f1446e.setEnabled(z && !"none".equals(debugSparringConfig$Slot.cultivateAttr));
        CheckBox checkBox = v0Var.f1446e;
        checkBox.setChecked(checkBox.isEnabled() && debugSparringConfig$Slot.extreme);
        v0Var.f1447f.setEnabled(z);
        Button button3 = v0Var.f1444c;
        if (z) {
            throw null;
        }
        button3.setText("无");
        Button button4 = v0Var.f1447f;
        if (z && (str4 = debugSparringConfig$Slot.skillId) != null && !str4.isEmpty()) {
            throw null;
        }
        button4.setText("无");
        v0Var.f1448g.setEnabled(z);
        v0Var.f1449h.setEnabled(z);
        Button button5 = v0Var.f1448g;
        if (z && (str3 = debugSparringConfig$Slot.deputyGeneralIds.get(0)) != null && !str3.isEmpty()) {
            throw null;
        }
        button5.setText("无");
        Button button6 = v0Var.f1449h;
        if (z && (str2 = debugSparringConfig$Slot.deputyGeneralIds.get(1)) != null && !str2.isEmpty()) {
            throw null;
        }
        button6.setText("无");
        v0Var.f1445d.setEnabled(z);
    }

    public static void k(v0 v0Var, int i2) {
        DebugSparringConfig$Slot debugSparringConfig$Slot;
        String str;
        new HashSet();
        if (v0Var == null || (str = (debugSparringConfig$Slot = v0Var.f1442a).generalId) == null || str.isEmpty()) {
            return;
        }
        if (i2 != -1) {
            throw null;
        }
        String str2 = debugSparringConfig$Slot.skillId;
        if (str2 != null && !str2.isEmpty()) {
            throw null;
        }
        for (int i3 = 0; i3 < debugSparringConfig$Slot.deputyGeneralIds.size(); i3++) {
            if (i3 != i2) {
                debugSparringConfig$Slot.deputyGeneralIds.get(i3);
                throw null;
            }
        }
    }

    public final Button a(String str) {
        Button button = new Button(this);
        button.setText(str);
        button.setTextSize(11.0f);
        button.setTextColor(-1);
        button.setAllCaps(false);
        button.setSingleLine(true);
        button.setEllipsize(TextUtils.TruncateAt.END);
        button.setFocusable(true);
        button.setFocusableInTouchMode(true);
        button.setMinHeight(0);
        button.setMinimumHeight(0);
        button.setPadding(b(5), 0, b(5), 0);
        return button;
    }

    public final int b(int i2) {
        return (int) ((i2 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v24 */
    public final void c(String str) {
        float[] fArr;
        float f2;
        Toast toastMakeText;
        DebugSparringConfig$Config debugSparringConfig$ConfigFromJsonOrNull = DebugSparringConfig$Config.fromJsonOrNull(str);
        int i2 = 0;
        if (debugSparringConfig$ConfigFromJsonOrNull == null) {
            this.f101d.setText("导入失败：JSON 格式无效");
            toastMakeText = Toast.makeText(this, "导入失败：JSON 格式无效", 0);
        } else {
            List<String> listValidate = debugSparringConfig$ConfigFromJsonOrNull.validate(new a.a(this, 3));
            if (listValidate.isEmpty()) {
                DebugSparringConfig$Config debugSparringConfig$ConfigNormalized = debugSparringConfig$ConfigFromJsonOrNull.normalized();
                this.f99b = debugSparringConfig$ConfigNormalized;
                debugSparringConfig$ConfigNormalized.save(getSharedPreferences("sgscq_config_v2", 0));
                ArrayList arrayList = this.f98a;
                arrayList.clear();
                LinearLayout linearLayout = new LinearLayout(this);
                ?? r5 = 1;
                linearLayout.setOrientation(1);
                linearLayout.setPadding(b(14), b(12), b(14), b(12));
                linearLayout.setBackgroundColor(Color.rgb(22, 25, 31));
                LinearLayout linearLayout2 = new LinearLayout(this);
                linearLayout2.setOrientation(0);
                linearLayout2.setGravity(16);
                Button buttonA = a("返回");
                this.f102e = buttonA;
                buttonA.setOnClickListener(new q0(this, 0));
                linearLayout2.addView(this.f102e, f(b(84), b(36), 0.0f, 0, b(8)));
                TextView textView = new TextView(this);
                textView.setText("DEBUG 切磋阵容配置");
                textView.setTextColor(Color.rgb(246, 196, 83));
                textView.setTextSize(20.0f);
                textView.setGravity(16);
                linearLayout2.addView(textView, f(0, b(36), 1.0f, 0, 0));
                int i3 = -1;
                linearLayout.addView(linearLayout2, f(-1, b(36), 0.0f, 0, b(8)));
                this.f102e.post(new b(this, 1 == true ? 1 : 0));
                LinearLayout linearLayout3 = new LinearLayout(this);
                linearLayout3.setOrientation(0);
                linearLayout3.setGravity(16);
                linearLayout3.addView(i("主公等级", 13.0f, -3355444), f(b(72), -1, 0.0f, 0, 0));
                EditText editText = new EditText(this);
                this.f100c = editText;
                editText.setSingleLine(true);
                final int i4 = 2;
                this.f100c.setInputType(2);
                this.f100c.setText(String.valueOf(this.f99b.lordLevel));
                this.f100c.setTextColor(-1);
                this.f100c.setTextSize(14.0f);
                this.f100c.setGravity(17);
                this.f100c.setFocusable(true);
                this.f100c.setFocusableInTouchMode(true);
                linearLayout3.addView(this.f100c, f(b(76), b(42), 0.0f, 0, b(10)));
                linearLayout3.addView(i("武将自动使用该等级允许的上限", 12.0f, -7829368), f(0, -1, 1.0f, 0, b(10)));
                linearLayout3.addView(i("默认缘分装备", 12.0f, Color.rgb(134, 239, 172)), f(b(110), -1, 0.0f, 0, b(10)));
                Button buttonA2 = a("导入配置");
                buttonA2.setOnClickListener(new q0(this, 1));
                linearLayout3.addView(buttonA2, f(b(88), b(42), 0.0f, 0, b(6)));
                Button buttonA3 = a("导出配置");
                buttonA3.setOnClickListener(new q0(this, 2));
                linearLayout3.addView(buttonA3, f(b(88), b(42), 0.0f, 0, b(6)));
                Button buttonA4 = a("保存配置");
                buttonA4.setOnClickListener(new q0(this, 3));
                linearLayout3.addView(buttonA4, f(b(120), b(42), 0.0f, 0, 0));
                linearLayout.addView(linearLayout3, f(-1, b(52), 0.0f, 0, b(8)));
                LinearLayout linearLayout4 = new LinearLayout(this);
                linearLayout4.setOrientation(1);
                LinearLayout linearLayout5 = new LinearLayout(this);
                linearLayout5.setOrientation(0);
                linearLayout5.setGravity(16);
                String[] strArr = {"号位", "主将", "原生天赋", "第2位技能", "修炼", "极限", "副将1(第3位)", "副将2(第4位)"};
                int i5 = 0;
                while (true) {
                    fArr = f97f;
                    f2 = 10.0f;
                    if (i5 >= 8) {
                        break;
                    }
                    TextView textViewI = i(strArr[i5], 10.0f, Color.rgb(246, 196, 83));
                    textViewI.setGravity(17);
                    textViewI.setSingleLine(true);
                    linearLayout5.addView(textViewI, f(0, -1, fArr[i5], 0, b(2)));
                    i5++;
                    i3 = -1;
                    i2 = 0;
                }
                int i6 = i2;
                int i7 = 38;
                linearLayout4.addView(linearLayout5, f(i3, b(38), 0.0f, i6, i6));
                int i8 = 1;
                while (i8 <= 11) {
                    final v0 v0Var = new v0(this.f99b.slots.get(i8 - 1));
                    arrayList.add(v0Var);
                    LinearLayout linearLayout6 = new LinearLayout(this);
                    linearLayout6.setOrientation(0);
                    linearLayout6.setGravity(16);
                    linearLayout6.setBackgroundColor(i8 <= 3 ? Color.rgb(40, i7, 30) : Color.rgb(29, 33, 40));
                    StringBuilder sb = new StringBuilder();
                    sb.append(i8);
                    sb.append(i8 <= 3 ? " 前军" : " 后备");
                    TextView textViewI2 = i(sb.toString(), f2, i8 <= 3 ? Color.rgb(246, 196, 83) : -3355444);
                    textViewI2.setGravity(17);
                    textViewI2.setSingleLine(r5);
                    final int i9 = 0;
                    linearLayout6.addView(textViewI2, f(0, b(46), fArr[0], 0, b(2)));
                    Button buttonA5 = a("无");
                    v0Var.f1443b = buttonA5;
                    buttonA5.setOnClickListener(new View.OnClickListener(this) { // from class: com.sgscq.vpn.r0

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ DebugSparringConfigActivity f1334b;

                        {
                            this.f1334b = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            String str2;
                            int i10 = 0;
                            int i11 = i9;
                            final v0 v0Var2 = v0Var;
                            final DebugSparringConfigActivity debugSparringConfigActivity = this.f1334b;
                            switch (i11) {
                                case 0:
                                    float[] fArr2 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.j(v0Var2, -1);
                                    DebugSparringConfigActivity.k(v0Var2, -1);
                                    String str3 = v0Var2.f1442a.generalId;
                                    ArrayList arrayList2 = new ArrayList();
                                    ArrayList arrayList3 = new ArrayList();
                                    arrayList2.add("");
                                    arrayList3.add("无");
                                    throw null;
                                case 1:
                                    float[] fArr3 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.getClass();
                                    new HashSet();
                                    if (v0Var2 != null && (str2 = v0Var2.f1442a.generalId) != null && !str2.isEmpty()) {
                                        throw null;
                                    }
                                    String str4 = v0Var2.f1442a.skillId;
                                    ArrayList arrayList4 = new ArrayList();
                                    ArrayList arrayList5 = new ArrayList();
                                    arrayList4.add("");
                                    arrayList5.add("无");
                                    throw null;
                                case 2:
                                    float[] fArr4 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.getClass();
                                    List listAsList = Arrays.asList("none", "attack", "defense", "hp", "wisdom");
                                    new AlertDialog.Builder(debugSparringConfigActivity).setTitle("选择修炼目标").setSingleChoiceItems((CharSequence[]) Arrays.asList("无", "攻", "防", "血", "智").toArray(new String[0]), Math.max(0, listAsList.indexOf(v0Var2.f1442a.cultivateAttr)), new u0(new w0() { // from class: com.sgscq.vpn.s0
                                        @Override // com.sgscq.vpn.w0
                                        public final void a(String str5) {
                                            float[] fArr5 = DebugSparringConfigActivity.f97f;
                                            debugSparringConfigActivity.getClass();
                                            v0 v0Var3 = v0Var2;
                                            v0Var3.f1442a.cultivateAttr = str5;
                                            if ("none".equals(str5)) {
                                                v0Var3.f1442a.extreme = false;
                                            }
                                            DebugSparringConfigActivity.g(v0Var3);
                                        }
                                    }, listAsList, i10)).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                                    return;
                                case 3:
                                    float[] fArr5 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.h(v0Var2, 0);
                                    throw null;
                                default:
                                    float[] fArr6 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.h(v0Var2, 1);
                                    throw null;
                            }
                        }
                    });
                    linearLayout6.addView(v0Var.f1443b, f(0, b(42), fArr[r5], 0, b(2)));
                    Button buttonA6 = a("无");
                    v0Var.f1444c = buttonA6;
                    buttonA6.setEnabled(false);
                    linearLayout6.addView(v0Var.f1444c, f(0, b(42), fArr[2], 0, b(2)));
                    Button buttonA7 = a("无");
                    v0Var.f1447f = buttonA7;
                    final int i10 = 1;
                    buttonA7.setOnClickListener(new View.OnClickListener(this) { // from class: com.sgscq.vpn.r0

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ DebugSparringConfigActivity f1334b;

                        {
                            this.f1334b = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            String str2;
                            int i11 = 0;
                            int i12 = i10;
                            final v0 v0Var2 = v0Var;
                            final DebugSparringConfigActivity debugSparringConfigActivity = this.f1334b;
                            switch (i12) {
                                case 0:
                                    float[] fArr2 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.j(v0Var2, -1);
                                    DebugSparringConfigActivity.k(v0Var2, -1);
                                    String str3 = v0Var2.f1442a.generalId;
                                    ArrayList arrayList2 = new ArrayList();
                                    ArrayList arrayList3 = new ArrayList();
                                    arrayList2.add("");
                                    arrayList3.add("无");
                                    throw null;
                                case 1:
                                    float[] fArr3 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.getClass();
                                    new HashSet();
                                    if (v0Var2 != null && (str2 = v0Var2.f1442a.generalId) != null && !str2.isEmpty()) {
                                        throw null;
                                    }
                                    String str4 = v0Var2.f1442a.skillId;
                                    ArrayList arrayList4 = new ArrayList();
                                    ArrayList arrayList5 = new ArrayList();
                                    arrayList4.add("");
                                    arrayList5.add("无");
                                    throw null;
                                case 2:
                                    float[] fArr4 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.getClass();
                                    List listAsList = Arrays.asList("none", "attack", "defense", "hp", "wisdom");
                                    new AlertDialog.Builder(debugSparringConfigActivity).setTitle("选择修炼目标").setSingleChoiceItems((CharSequence[]) Arrays.asList("无", "攻", "防", "血", "智").toArray(new String[0]), Math.max(0, listAsList.indexOf(v0Var2.f1442a.cultivateAttr)), new u0(new w0() { // from class: com.sgscq.vpn.s0
                                        @Override // com.sgscq.vpn.w0
                                        public final void a(String str5) {
                                            float[] fArr5 = DebugSparringConfigActivity.f97f;
                                            debugSparringConfigActivity.getClass();
                                            v0 v0Var3 = v0Var2;
                                            v0Var3.f1442a.cultivateAttr = str5;
                                            if ("none".equals(str5)) {
                                                v0Var3.f1442a.extreme = false;
                                            }
                                            DebugSparringConfigActivity.g(v0Var3);
                                        }
                                    }, listAsList, i11)).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                                    return;
                                case 3:
                                    float[] fArr5 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.h(v0Var2, 0);
                                    throw null;
                                default:
                                    float[] fArr6 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.h(v0Var2, 1);
                                    throw null;
                            }
                        }
                    });
                    linearLayout6.addView(v0Var.f1447f, f(0, b(42), fArr[3], 0, b(2)));
                    Button buttonA8 = a("无");
                    v0Var.f1445d = buttonA8;
                    buttonA8.setOnClickListener(new View.OnClickListener(this) { // from class: com.sgscq.vpn.r0

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ DebugSparringConfigActivity f1334b;

                        {
                            this.f1334b = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            String str2;
                            int i11 = 0;
                            int i12 = i4;
                            final v0 v0Var2 = v0Var;
                            final DebugSparringConfigActivity debugSparringConfigActivity = this.f1334b;
                            switch (i12) {
                                case 0:
                                    float[] fArr2 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.j(v0Var2, -1);
                                    DebugSparringConfigActivity.k(v0Var2, -1);
                                    String str3 = v0Var2.f1442a.generalId;
                                    ArrayList arrayList2 = new ArrayList();
                                    ArrayList arrayList3 = new ArrayList();
                                    arrayList2.add("");
                                    arrayList3.add("无");
                                    throw null;
                                case 1:
                                    float[] fArr3 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.getClass();
                                    new HashSet();
                                    if (v0Var2 != null && (str2 = v0Var2.f1442a.generalId) != null && !str2.isEmpty()) {
                                        throw null;
                                    }
                                    String str4 = v0Var2.f1442a.skillId;
                                    ArrayList arrayList4 = new ArrayList();
                                    ArrayList arrayList5 = new ArrayList();
                                    arrayList4.add("");
                                    arrayList5.add("无");
                                    throw null;
                                case 2:
                                    float[] fArr4 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.getClass();
                                    List listAsList = Arrays.asList("none", "attack", "defense", "hp", "wisdom");
                                    new AlertDialog.Builder(debugSparringConfigActivity).setTitle("选择修炼目标").setSingleChoiceItems((CharSequence[]) Arrays.asList("无", "攻", "防", "血", "智").toArray(new String[0]), Math.max(0, listAsList.indexOf(v0Var2.f1442a.cultivateAttr)), new u0(new w0() { // from class: com.sgscq.vpn.s0
                                        @Override // com.sgscq.vpn.w0
                                        public final void a(String str5) {
                                            float[] fArr5 = DebugSparringConfigActivity.f97f;
                                            debugSparringConfigActivity.getClass();
                                            v0 v0Var3 = v0Var2;
                                            v0Var3.f1442a.cultivateAttr = str5;
                                            if ("none".equals(str5)) {
                                                v0Var3.f1442a.extreme = false;
                                            }
                                            DebugSparringConfigActivity.g(v0Var3);
                                        }
                                    }, listAsList, i11)).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                                    return;
                                case 3:
                                    float[] fArr5 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.h(v0Var2, 0);
                                    throw null;
                                default:
                                    float[] fArr6 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.h(v0Var2, 1);
                                    throw null;
                            }
                        }
                    });
                    linearLayout6.addView(v0Var.f1445d, f(0, b(42), fArr[4], 0, b(2)));
                    CheckBox checkBox = new CheckBox(this);
                    v0Var.f1446e = checkBox;
                    checkBox.setText("极限");
                    v0Var.f1446e.setTextSize(11.0f);
                    v0Var.f1446e.setTextColor(-1);
                    v0Var.f1446e.setFocusable(true);
                    v0Var.f1446e.setFocusableInTouchMode(true);
                    v0Var.f1446e.setOnCheckedChangeListener(new j6(v0Var, 5));
                    linearLayout6.addView(v0Var.f1446e, f(0, b(42), fArr[5], 0, b(2)));
                    Button buttonA9 = a("无");
                    v0Var.f1448g = buttonA9;
                    final int i11 = 3;
                    buttonA9.setOnClickListener(new View.OnClickListener(this) { // from class: com.sgscq.vpn.r0

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ DebugSparringConfigActivity f1334b;

                        {
                            this.f1334b = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            String str2;
                            int i12 = 0;
                            int i13 = i11;
                            final v0 v0Var2 = v0Var;
                            final DebugSparringConfigActivity debugSparringConfigActivity = this.f1334b;
                            switch (i13) {
                                case 0:
                                    float[] fArr2 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.j(v0Var2, -1);
                                    DebugSparringConfigActivity.k(v0Var2, -1);
                                    String str3 = v0Var2.f1442a.generalId;
                                    ArrayList arrayList2 = new ArrayList();
                                    ArrayList arrayList3 = new ArrayList();
                                    arrayList2.add("");
                                    arrayList3.add("无");
                                    throw null;
                                case 1:
                                    float[] fArr3 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.getClass();
                                    new HashSet();
                                    if (v0Var2 != null && (str2 = v0Var2.f1442a.generalId) != null && !str2.isEmpty()) {
                                        throw null;
                                    }
                                    String str4 = v0Var2.f1442a.skillId;
                                    ArrayList arrayList4 = new ArrayList();
                                    ArrayList arrayList5 = new ArrayList();
                                    arrayList4.add("");
                                    arrayList5.add("无");
                                    throw null;
                                case 2:
                                    float[] fArr4 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.getClass();
                                    List listAsList = Arrays.asList("none", "attack", "defense", "hp", "wisdom");
                                    new AlertDialog.Builder(debugSparringConfigActivity).setTitle("选择修炼目标").setSingleChoiceItems((CharSequence[]) Arrays.asList("无", "攻", "防", "血", "智").toArray(new String[0]), Math.max(0, listAsList.indexOf(v0Var2.f1442a.cultivateAttr)), new u0(new w0() { // from class: com.sgscq.vpn.s0
                                        @Override // com.sgscq.vpn.w0
                                        public final void a(String str5) {
                                            float[] fArr5 = DebugSparringConfigActivity.f97f;
                                            debugSparringConfigActivity.getClass();
                                            v0 v0Var3 = v0Var2;
                                            v0Var3.f1442a.cultivateAttr = str5;
                                            if ("none".equals(str5)) {
                                                v0Var3.f1442a.extreme = false;
                                            }
                                            DebugSparringConfigActivity.g(v0Var3);
                                        }
                                    }, listAsList, i12)).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                                    return;
                                case 3:
                                    float[] fArr5 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.h(v0Var2, 0);
                                    throw null;
                                default:
                                    float[] fArr6 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.h(v0Var2, 1);
                                    throw null;
                            }
                        }
                    });
                    linearLayout6.addView(v0Var.f1448g, f(0, b(42), fArr[6], 0, b(2)));
                    Button buttonA10 = a("无");
                    v0Var.f1449h = buttonA10;
                    final int i12 = 4;
                    buttonA10.setOnClickListener(new View.OnClickListener(this) { // from class: com.sgscq.vpn.r0

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ DebugSparringConfigActivity f1334b;

                        {
                            this.f1334b = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            String str2;
                            int i13 = 0;
                            int i14 = i12;
                            final v0 v0Var2 = v0Var;
                            final DebugSparringConfigActivity debugSparringConfigActivity = this.f1334b;
                            switch (i14) {
                                case 0:
                                    float[] fArr2 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.j(v0Var2, -1);
                                    DebugSparringConfigActivity.k(v0Var2, -1);
                                    String str3 = v0Var2.f1442a.generalId;
                                    ArrayList arrayList2 = new ArrayList();
                                    ArrayList arrayList3 = new ArrayList();
                                    arrayList2.add("");
                                    arrayList3.add("无");
                                    throw null;
                                case 1:
                                    float[] fArr3 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.getClass();
                                    new HashSet();
                                    if (v0Var2 != null && (str2 = v0Var2.f1442a.generalId) != null && !str2.isEmpty()) {
                                        throw null;
                                    }
                                    String str4 = v0Var2.f1442a.skillId;
                                    ArrayList arrayList4 = new ArrayList();
                                    ArrayList arrayList5 = new ArrayList();
                                    arrayList4.add("");
                                    arrayList5.add("无");
                                    throw null;
                                case 2:
                                    float[] fArr4 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.getClass();
                                    List listAsList = Arrays.asList("none", "attack", "defense", "hp", "wisdom");
                                    new AlertDialog.Builder(debugSparringConfigActivity).setTitle("选择修炼目标").setSingleChoiceItems((CharSequence[]) Arrays.asList("无", "攻", "防", "血", "智").toArray(new String[0]), Math.max(0, listAsList.indexOf(v0Var2.f1442a.cultivateAttr)), new u0(new w0() { // from class: com.sgscq.vpn.s0
                                        @Override // com.sgscq.vpn.w0
                                        public final void a(String str5) {
                                            float[] fArr5 = DebugSparringConfigActivity.f97f;
                                            debugSparringConfigActivity.getClass();
                                            v0 v0Var3 = v0Var2;
                                            v0Var3.f1442a.cultivateAttr = str5;
                                            if ("none".equals(str5)) {
                                                v0Var3.f1442a.extreme = false;
                                            }
                                            DebugSparringConfigActivity.g(v0Var3);
                                        }
                                    }, listAsList, i13)).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
                                    return;
                                case 3:
                                    float[] fArr5 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.h(v0Var2, 0);
                                    throw null;
                                default:
                                    float[] fArr6 = DebugSparringConfigActivity.f97f;
                                    debugSparringConfigActivity.h(v0Var2, 1);
                                    throw null;
                            }
                        }
                    });
                    linearLayout6.addView(v0Var.f1449h, f(0, b(42), fArr[7], 0, 0));
                    linearLayout4.addView(linearLayout6, f(-1, b(50), 0.0f, 0, b(4)));
                    g(v0Var);
                    i8++;
                    i7 = 38;
                    r5 = 1;
                    f2 = 10.0f;
                }
                ScrollView scrollView = new ScrollView(this);
                scrollView.setFillViewport(true);
                scrollView.setVerticalScrollBarEnabled(false);
                scrollView.addView(linearLayout4, new FrameLayout.LayoutParams(-1, -2));
                linearLayout.addView(scrollView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
                TextView textView2 = new TextView(this);
                this.f101d = textView2;
                textView2.setTextColor(Color.rgb(252, 165, 165));
                this.f101d.setTextSize(12.0f);
                this.f101d.setGravity(16);
                linearLayout.addView(this.f101d, f(-1, b(30), 0.0f, b(8), 0));
                setContentView(linearLayout);
                this.f101d.setTextColor(Color.rgb(134, 239, 172));
                this.f101d.setText("已导入并保存切磋阵容配置");
                toastMakeText = Toast.makeText(this, "导入成功", 0);
            } else {
                this.f101d.setText("导入失败：" + d(listValidate));
                toastMakeText = Toast.makeText(this, "导入失败，请检查阵容冲突", 0);
            }
        }
        toastMakeText.show();
    }

    public final void e(Intent intent, int i2, String str) {
        try {
            startActivityForResult(intent, i2);
        } catch (ActivityNotFoundException unused) {
            this.f101d.setText(str.concat("失败：设备没有可用的文件选择器"));
            Toast.makeText(this, str.concat("失败：没有可用的文件选择器"), 0).show();
        }
    }

    public final void h(v0 v0Var, int i2) {
        j(v0Var, i2);
        k(v0Var, i2);
        v0Var.f1442a.deputyGeneralIds.get(i2);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList.add("");
        arrayList2.add("无");
        throw null;
    }

    public final TextView i(String str, float f2, int i2) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(f2);
        textView.setTextColor(i2);
        textView.setGravity(16);
        return textView;
    }

    public final void j(v0 v0Var, int i2) {
        String str;
        HashSet hashSet = new HashSet();
        for (v0 v0Var2 : this.f98a) {
            DebugSparringConfig$Slot debugSparringConfig$Slot = v0Var2.f1442a;
            String str2 = debugSparringConfig$Slot.generalId;
            if (str2 != null && !str2.isEmpty() && (v0Var2 != v0Var || i2 != -1)) {
                hashSet.add(debugSparringConfig$Slot.generalId);
            }
            for (int i3 = 0; i3 < debugSparringConfig$Slot.deputyGeneralIds.size(); i3++) {
                if ((v0Var2 != v0Var || i3 != i2) && (str = debugSparringConfig$Slot.deputyGeneralIds.get(i3)) != null && !str.isEmpty()) {
                    hashSet.add(str);
                }
            }
        }
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i3 != -1 || intent == null || intent.getData() == null) {
            return;
        }
        Uri data = intent.getData();
        if (i2 == 4101) {
            try {
                OutputStream outputStreamOpenOutputStream = getContentResolver().openOutputStream(data);
                try {
                    if (outputStreamOpenOutputStream == null) {
                        throw new IllegalStateException("无法打开导出文件");
                    }
                    DebugSparringConfig$Config debugSparringConfig$ConfigNormalized = this.f99b.normalized();
                    int iMax = 1;
                    try {
                        iMax = Math.max(1, Integer.parseInt(this.f100c.getText().toString().trim()));
                    } catch (Exception unused) {
                    }
                    debugSparringConfig$ConfigNormalized.lordLevel = iMax;
                    outputStreamOpenOutputStream.write(debugSparringConfig$ConfigNormalized.toJson().getBytes("UTF-8"));
                    outputStreamOpenOutputStream.flush();
                    Toast.makeText(this, "配置已导出", 0).show();
                    outputStreamOpenOutputStream.close();
                    return;
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
                this.f101d.setText("导出失败：" + e2.getMessage());
                Toast.makeText(this, "导出失败", 0).show();
                return;
            }
        }
        if (i2 != 4102) {
            return;
        }
        try {
            InputStream inputStreamOpenInputStream = getContentResolver().openInputStream(data);
            try {
                if (inputStreamOpenInputStream == null) {
                    throw new IllegalStateException("无法打开导入文件");
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[4096];
                while (true) {
                    int i4 = inputStreamOpenInputStream.read(bArr);
                    if (i4 == -1) {
                        c(new String(byteArrayOutputStream.toByteArray(), "UTF-8"));
                        inputStreamOpenInputStream.close();
                        return;
                    }
                    byteArrayOutputStream.write(bArr, 0, i4);
                }
            } catch (Throwable th3) {
                if (inputStreamOpenInputStream != null) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } catch (Exception e3) {
            this.f101d.setText("导入失败：" + e3.getMessage());
            Toast.makeText(this, "导入失败", 0).show();
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        finish();
    }
}
