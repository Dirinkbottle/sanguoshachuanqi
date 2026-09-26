package com.sgscq.vpn;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.view.View;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q0 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1314b;

    public /* synthetic */ q0(Object obj, int i2) {
        this.f1313a = i2;
        this.f1314b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = this.f1313a;
        Object obj = this.f1314b;
        switch (i2) {
            case 0:
                float[] fArr = DebugSparringConfigActivity.f97f;
                ((DebugSparringConfigActivity) obj).finish();
                return;
            case 1:
                DebugSparringConfigActivity debugSparringConfigActivity = (DebugSparringConfigActivity) obj;
                float[] fArr2 = DebugSparringConfigActivity.f97f;
                debugSparringConfigActivity.getClass();
                Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                intent.addCategory("android.intent.category.OPENABLE");
                intent.setType("*/*");
                debugSparringConfigActivity.e(intent, 4102, "导入");
                return;
            case 2:
                DebugSparringConfigActivity debugSparringConfigActivity2 = (DebugSparringConfigActivity) obj;
                float[] fArr3 = DebugSparringConfigActivity.f97f;
                debugSparringConfigActivity2.getClass();
                Intent intent2 = new Intent("android.intent.action.CREATE_DOCUMENT");
                intent2.addCategory("android.intent.category.OPENABLE");
                intent2.setType("application/json");
                ArrayList arrayList = new ArrayList();
                Iterator<DebugSparringConfig$Slot> it = debugSparringConfigActivity2.f99b.slots.iterator();
                while (it.hasNext()) {
                    String str = it.next().generalId;
                    if (str != null && !str.isEmpty()) {
                        throw null;
                    }
                }
                while (arrayList.size() < 3) {
                    arrayList.add("空位");
                }
                StringBuilder sb = new StringBuilder();
                Iterator it2 = arrayList.iterator();
                if (it2.hasNext()) {
                    while (true) {
                        sb.append((CharSequence) it2.next());
                        if (it2.hasNext()) {
                            sb.append((CharSequence) "_");
                        }
                    }
                }
                intent2.putExtra("android.intent.extra.TITLE", sb.toString() + "_切磋阵容.json");
                debugSparringConfigActivity2.e(intent2, 4101, "导出");
                return;
            case 3:
                DebugSparringConfigActivity debugSparringConfigActivity3 = (DebugSparringConfigActivity) obj;
                DebugSparringConfig$Config debugSparringConfig$Config = debugSparringConfigActivity3.f99b;
                int iMax = 1;
                try {
                    iMax = Math.max(1, Integer.parseInt(debugSparringConfigActivity3.f100c.getText().toString().trim()));
                    break;
                } catch (Exception unused) {
                }
                debugSparringConfig$Config.lordLevel = iMax;
                DebugSparringConfig$Config debugSparringConfig$ConfigNormalized = debugSparringConfigActivity3.f99b.normalized();
                debugSparringConfigActivity3.f99b = debugSparringConfig$ConfigNormalized;
                List<String> listValidate = debugSparringConfig$ConfigNormalized.validate(new a.a(debugSparringConfigActivity3, 3));
                if (!listValidate.isEmpty()) {
                    debugSparringConfigActivity3.f101d.setText("无法保存：" + DebugSparringConfigActivity.d(listValidate));
                    return;
                }
                debugSparringConfigActivity3.f99b.save(debugSparringConfigActivity3.getSharedPreferences("sgscq_config_v2", 0));
                Iterator it3 = debugSparringConfigActivity3.f98a.iterator();
                while (it3.hasNext()) {
                    DebugSparringConfigActivity.g((v0) it3.next());
                }
                debugSparringConfigActivity3.f101d.setTextColor(Color.rgb(134, 239, 172));
                debugSparringConfigActivity3.f101d.setText("已保存切磋阵容配置");
                Toast.makeText(debugSparringConfigActivity3, "切磋阵容配置已保存", 0).show();
                return;
            default:
                a7 a7Var = (a7) obj;
                a7Var.getClass();
                Intent intent3 = new Intent("android.intent.action.VIEW", Uri.parse("https://api.sgscq.com/app/update"));
                intent3.addFlags(268435456);
                ((Context) a7Var.f190a).startActivity(intent3);
                return;
        }
    }
}
