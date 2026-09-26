package com.sgscq.vpn;

import android.content.Context;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class m2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1186a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f1187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1188c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f1189d;

    public m2(Context context) {
        HashSet hashSet = new HashSet();
        this.f1186a = hashSet;
        HashSet hashSet2 = new HashSet();
        this.f1187b = hashSet2;
        HashSet hashSet3 = new HashSet();
        this.f1188c = hashSet3;
        this.f1189d = new HashSet();
        hashSet.add("sgscqtv.bfun.cn");
        hashSet.add("sanguosha.bfun.cn");
        hashSet.add("cdn.bfun.cn");
        hashSet.add("bf.bfun.cn");
        hashSet.add("api.bfun.cn");
        hashSet.add("sdk.bfun.cn");
        hashSet.add("notice.bfun.cn");
        hashSet.add("pay.bfun.cn");
        hashSet.add("bsvr.bfun.cn");
        hashSet.add("bsvr2.bfun.cn");
        hashSet.add("tpsdk.bfun.cn");
        hashSet.add("mgame.bfun.cn");
        hashSet2.add(".bfun.cn");
        hashSet2.add(".woa.com");
        hashSet2.add(".mihoyo.com");
        hashSet2.add(".qq.com");
        hashSet3.add("sanguosha");
        hashSet3.add("sgscq");
        hashSet3.add("bfun");
        hashSet3.add("bianfeng");
        try {
            InputStream inputStreamOpen = context.getAssets().open("rules.json");
            String next = new Scanner(inputStreamOpen, "UTF-8").useDelimiter("\\A").next();
            inputStreamOpen.close();
            e(next);
            z2.e("SGSCQ_RULES", "Loaded custom rules from assets/rules.json");
        } catch (FileNotFoundException unused) {
            z2.e("SGSCQ_RULES", "No assets/rules.json found, using defaults");
        } catch (Exception e2) {
            c.a.u(e2, new StringBuilder("Error loading rules.json: "), "SGSCQ_RULES");
        }
        z2.e("SGSCQ_RULES", "Rules: domains=" + ((Set) this.f1186a).size() + " suffixes=" + ((Set) this.f1187b).size() + " keywords=" + ((Set) this.f1188c).size() + " ips=" + ((Set) this.f1189d).size());
    }

    public final String a() {
        return (String) this.f1187b;
    }

    public final Map b() {
        return (Map) this.f1189d;
    }

    public final boolean c(String str) {
        if (str != null && !str.isEmpty()) {
            String lowerCase = str.toLowerCase();
            if (((Set) this.f1186a).contains(lowerCase)) {
                return true;
            }
            Iterator it = ((Set) this.f1187b).iterator();
            while (it.hasNext()) {
                if (lowerCase.endsWith((String) it.next())) {
                    return true;
                }
            }
            Iterator it2 = ((Set) this.f1188c).iterator();
            while (it2.hasNext()) {
                if (lowerCase.contains((String) it2.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    public final Map d() {
        return (Map) this.f1188c;
    }

    public final void e(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        if (jSONObject.has("domains")) {
            JSONArray jSONArray = jSONObject.getJSONArray("domains");
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                ((Set) this.f1186a).add(jSONArray.getString(i2));
            }
        }
        if (jSONObject.has("suffixes")) {
            JSONArray jSONArray2 = jSONObject.getJSONArray("suffixes");
            for (int i3 = 0; i3 < jSONArray2.length(); i3++) {
                ((Set) this.f1187b).add(jSONArray2.getString(i3));
            }
        }
        if (jSONObject.has("keywords")) {
            JSONArray jSONArray3 = jSONObject.getJSONArray("keywords");
            for (int i4 = 0; i4 < jSONArray3.length(); i4++) {
                ((Set) this.f1188c).add(jSONArray3.getString(i4));
            }
        }
        if (jSONObject.has("ips")) {
            JSONArray jSONArray4 = jSONObject.getJSONArray("ips");
            for (int i5 = 0; i5 < jSONArray4.length(); i5++) {
                ((Set) this.f1189d).add(jSONArray4.getString(i5));
            }
        }
    }

    public final String f() {
        return (String) this.f1186a;
    }

    public m2(String str, String str2, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2) {
        this.f1186a = str;
        this.f1188c = Collections.unmodifiableMap(new LinkedHashMap(linkedHashMap));
        this.f1187b = str2;
        this.f1189d = Collections.unmodifiableMap(new LinkedHashMap(linkedHashMap2));
    }
}
