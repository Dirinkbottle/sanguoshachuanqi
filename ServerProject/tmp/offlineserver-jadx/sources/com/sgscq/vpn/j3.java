package com.sgscq.vpn;

import android.content.Context;
import android.os.Handler;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j3 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f1083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1084c;

    public /* synthetic */ j3(Object obj, boolean z, int i2) {
        this.f1082a = i2;
        this.f1084c = obj;
        this.f1083b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2;
        String str;
        String string;
        int i3 = this.f1082a;
        boolean z = this.f1083b;
        Object obj = this.f1084c;
        switch (i3) {
            case 0:
                MainActivity mainActivity = (MainActivity) obj;
                int i4 = MainActivity.F;
                mainActivity.a(z);
                mainActivity.b();
                break;
            default:
                a7 a7Var = (a7) obj;
                Object obj2 = a7Var.f190a;
                try {
                    JSONObject jSONObject = (JSONObject) p5.O(new y0(a7Var, 4));
                    String string2 = jSONObject.getString("tag_name");
                    String strSubstring = string2.startsWith("v") ? string2.substring(1) : string2;
                    int i5 = 0;
                    String str2 = ((Context) obj2).getPackageManager().getPackageInfo(((Context) obj2).getPackageName(), 0).versionName;
                    String[] strArrSplit = strSubstring.split("\\.");
                    String[] strArrSplit2 = str2.split("\\.");
                    int iMax = Math.max(strArrSplit.length, strArrSplit2.length);
                    int i6 = 0;
                    while (true) {
                        if (i6 < iMax) {
                            int i7 = i6 < strArrSplit.length ? Integer.parseInt(strArrSplit[i6]) : 0;
                            int i8 = i6 < strArrSplit2.length ? Integer.parseInt(strArrSplit2[i6]) : 0;
                            if (i7 != i8) {
                                i2 = i7 - i8;
                            } else {
                                i6++;
                            }
                        } else {
                            i2 = 0;
                        }
                    }
                    if (i2 > 0) {
                        String strOptString = jSONObject.optString("name", string2);
                        String strOptString2 = jSONObject.optString("body", "");
                        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("assets");
                        if (jSONArrayOptJSONArray != null) {
                            while (true) {
                                if (i5 < jSONArrayOptJSONArray.length()) {
                                    JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i5);
                                    if (jSONObject2.getString("name").endsWith(".apk")) {
                                        string = jSONObject2.getString("browser_download_url");
                                    } else {
                                        i5++;
                                    }
                                } else {
                                    string = null;
                                }
                            }
                        } else {
                            string = null;
                        }
                        if (string != null) {
                            ((Handler) a7Var.f191b).post(new z3(a7Var, strOptString, strOptString2, string));
                        } else {
                            str = z ? "已是最新版本" : "未找到APK下载地址";
                        }
                        break;
                    } else if (!z) {
                    }
                    a7Var.c(str);
                } catch (Exception e2) {
                    if (z) {
                        return;
                    }
                    a7Var.c("检查失败: " + e2.getMessage());
                    return;
                }
                break;
        }
    }
}
