package com.sgscq.vpn;

import android.content.Context;
import android.content.SharedPreferences;
import com.sgscq.vpn.cloud.CloudSessionStore$SessionData;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.zip.CRC32;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class m4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f1194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SharedPreferences f1195c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SharedPreferences f1196d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c.e f1197e;

    public m4(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f1193a = applicationContext;
        this.f1194b = context.getSharedPreferences("sgscq_passport_v4", 0);
        this.f1195c = context.getSharedPreferences("sgscq_player_v5", 0);
        this.f1196d = context.getSharedPreferences("sgscq_guide_v2", 0);
        this.f1197e = new c.e(5, applicationContext);
    }

    public static void b(Object obj, ArrayList arrayList) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                if (obj2 instanceof Map) {
                    arrayList.add((Map) obj2);
                }
            }
        }
    }

    public static String c(String str) {
        CRC32 crc32 = new CRC32();
        byte[] bytes = String.valueOf(str).getBytes(StandardCharsets.UTF_8);
        crc32.update(bytes, 0, bytes.length);
        return String.format(Locale.US, "%08X", Long.valueOf(crc32.getValue()));
    }

    public static String f(String str) {
        if (str == null || str.isEmpty()) {
            return "00000000";
        }
        if ((str.startsWith("local-") && str.length() > 6) || (str.startsWith("local_") && str.length() > 6)) {
            str = str.substring(6);
        }
        return c(str);
    }

    public static int i(Map map, String... strArr) {
        int i2;
        long jRound;
        for (String str : strArr) {
            Object obj = map.get(str);
            if (obj != null) {
                if (obj instanceof Number) {
                    jRound = Math.round(((Number) obj).doubleValue());
                } else {
                    try {
                        String strTrim = String.valueOf(obj).trim();
                        if (!strTrim.isEmpty()) {
                            jRound = Math.round(Double.parseDouble(strTrim));
                        }
                    } catch (Exception unused) {
                    }
                    i2 = 0;
                }
                i2 = (int) jRound;
            } else {
                i2 = 0;
            }
            if (i2 > 0) {
                return i2;
            }
        }
        return 0;
    }

    public static int s(LinkedHashMap linkedHashMap) {
        String[] strArr = {"user_level", "level", "player_level", "roleLevel", "role_level"};
        for (int i2 = 0; i2 < 5; i2++) {
            Object obj = linkedHashMap.get(strArr[i2]);
            if (obj instanceof Number) {
                return Math.max(1, ((Number) obj).intValue());
            }
            if (obj != null) {
                try {
                    return Math.max(1, Integer.parseInt(String.valueOf(obj)));
                } catch (Exception unused) {
                    continue;
                }
            }
        }
        return 1;
    }

    public static int x(LinkedHashMap linkedHashMap) {
        Object obj = linkedHashMap.get("TeamGeneral");
        ArrayList<Map> arrayList = new ArrayList();
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                if (obj2 instanceof Map) {
                    arrayList.add((Map) obj2);
                }
            }
        } else if (obj instanceof Map) {
            Map map = (Map) obj;
            b(map.get("add"), arrayList);
            b(map.get("upd"), arrayList);
        }
        HashSet hashSet = new HashSet();
        int i2 = 0;
        for (Map map2 : arrayList) {
            if (hashSet.add(String.valueOf(map2.getOrDefault("pk_id", map2.getOrDefault("team_general_id", Integer.valueOf(map2.hashCode())))))) {
                i2 += i(map2, "general_fighting", "fighting", "fight_point", "fightPoint");
            }
        }
        return i2;
    }

    public final void a(String str) {
        y5.a(this.f1195c, str);
        SharedPreferences sharedPreferences = this.f1196d;
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        Map<String, ?> all = sharedPreferences.getAll();
        String strA = com.sgscq.vpn.handler.l.a("guide_", str, "_");
        for (String str2 : all.keySet()) {
            if (str2.startsWith(strA)) {
                editorEdit.remove(str2);
            }
        }
        editorEdit.apply();
        z2.e("SGSCQ_PASSPORT", "Cleared player data for: " + str);
    }

    public final String d() {
        String string = UUID.randomUUID().toString();
        String strI = c.a.i("local-", string);
        u(strI, "存档 " + c(string));
        r(strI);
        return strI;
    }

    public final void e(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        ArrayList arrayListL = l();
        arrayListL.remove(str);
        SharedPreferences sharedPreferences = this.f1194b;
        sharedPreferences.edit().putString("passport_list", p5.s1(arrayListL)).apply();
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.remove("passport_" + str + "_username");
        editorEdit.remove("passport_" + str + "_created_at");
        editorEdit.remove("passport_" + str + "_last_login");
        editorEdit.remove("passport_" + str + "_status");
        if (str.equals(sharedPreferences.getString("current_passport_guid", ""))) {
            editorEdit.remove("current_passport_guid");
        }
        editorEdit.apply();
        a(str);
        this.f1197e.w(str);
        z2.e("SGSCQ_PASSPORT", "Deleted passport: ".concat(str));
    }

    public final void g(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (!p(str)) {
            u(str, "");
        }
        r(str);
    }

    public final String h(String str) {
        String strB = c.e.b(str);
        if (strB.isEmpty()) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : l()) {
            com.sgscq.vpn.cloud.n0 n0VarZ = this.f1197e.Z(str2);
            if (n0VarZ.f432a && strB.equals(n0VarZ.f434c)) {
                arrayList.add(str2);
            }
        }
        if (arrayList.isEmpty()) {
            return "";
        }
        if (arrayList.size() <= 1) {
            return (String) arrayList.get(0);
        }
        throw new IllegalStateException("当前账号存在多个本地云存档");
    }

    public final int j() {
        Iterator it = l().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (o((String) it.next())) {
                i2++;
            }
        }
        return i2;
    }

    public final String k() {
        SharedPreferences sharedPreferences = this.f1194b;
        String string = sharedPreferences.getString("current_passport_guid", "");
        if (!string.isEmpty() && !this.f1197e.X(string)) {
            return "";
        }
        if (string.isEmpty() || q(string)) {
            return string;
        }
        sharedPreferences.edit().remove("current_passport_guid").commit();
        z2.e("SGSCQ_PASSPORT", "Cleared unsupported legacy current passport: ".concat(string));
        return "";
    }

    public final ArrayList l() {
        try {
            ArrayList arrayListT1 = p5.t1(this.f1194b.getString("passport_list", "[]"));
            ArrayList arrayList = new ArrayList();
            Iterator it = arrayListT1.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList2.add(String.valueOf(it2.next()));
            }
            return arrayList2;
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    public final ArrayList m() {
        ArrayList<String> arrayListL = l();
        ArrayList arrayList = new ArrayList();
        for (String str : arrayListL) {
            if (q(str)) {
                c.e eVar = this.f1197e;
                if (eVar.X(str)) {
                    String strA = com.sgscq.vpn.handler.l.a("passport_", str, "_username");
                    SharedPreferences sharedPreferences = this.f1194b;
                    arrayList.add(new k4(str, sharedPreferences.getString(strA, ""), sharedPreferences.getLong(com.sgscq.vpn.handler.l.a("passport_", str, "_created_at"), 0L), sharedPreferences.getLong(com.sgscq.vpn.handler.l.a("passport_", str, "_last_login"), 0L), sharedPreferences.getString("passport_" + str + "_status", "active"), eVar.Z(str).f432a));
                }
            }
        }
        Collections.sort(arrayList, new n.b(2));
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00da  */
    public final l4 n(String str) {
        int i2;
        int i3;
        String strSubstring;
        String string = "";
        LinkedHashMap linkedHashMapL = y5.l(this.f1193a, this.f1195c, str);
        if (linkedHashMapL == null || linkedHashMapL.isEmpty()) {
            return new l4(false, "空号", 1, 0, 0, 0, "", 0, 0);
        }
        if (h5.s0(linkedHashMapL)) {
            z2.g("SGSCQ_PASSPORT", "Unsupported settings max-level save: " + str);
            return new l4(false, "存档不支持", 1, 0, 0, 0, "", 0, 0);
        }
        try {
            JSONObject jSONObject = new JSONObject(p5.s1(linkedHashMapL));
            String strOptString = jSONObject.optString("user_nickname", "");
            if (strOptString.isEmpty()) {
                strOptString = jSONObject.optString("nickname", "玩家");
            }
            String str2 = strOptString;
            int iS = s(linkedHashMapL);
            int iOptInt = jSONObject.optInt("user_vip_level", jSONObject.optInt("vipLevel", jSONObject.optInt("vip_level", 0)));
            int iX = x(linkedHashMapL);
            boolean z = true;
            int i4 = iX <= 0 ? i(linkedHashMapL, "fight_point", "user_fighting", "fighting", "fightPoint") : iX;
            int iOptInt2 = jSONObject.optInt("user_gold", jSONObject.optInt("gold", 0));
            String strOptString2 = jSONObject.optString("user_map_step", "");
            if (strOptString2.isEmpty() || "0".equals(strOptString2)) {
                i2 = 0;
            } else {
                try {
                    if (strOptString2.startsWith("500")) {
                        strSubstring = strOptString2.substring(3);
                    } else if (strOptString2.startsWith("5")) {
                        strSubstring = strOptString2.substring(1);
                    } else {
                        i2 = 0;
                    }
                    i2 = Integer.parseInt(strSubstring);
                } catch (Exception unused) {
                }
            }
            String strOptString3 = jSONObject.optString("user_elite_map_step", "0");
            if ("0".equals(strOptString3) || strOptString3.isEmpty()) {
                z = false;
            }
            String strOptString4 = jSONObject.optString("user_position_step", "0");
            if (strOptString4.length() >= 6) {
                try {
                    i3 = Integer.parseInt(strOptString4.substring(3, 6));
                } catch (Exception unused2) {
                    i3 = 0;
                }
            } else {
                i3 = 0;
            }
            int iOptInt3 = i3 <= 0 ? jSONObject.optInt("user_position_step", 0) : i3;
            int iOptInt4 = jSONObject.optInt("govern", jSONObject.optInt("user_govern", jSONObject.optInt("user_ability", 0)));
            if (i2 > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(z ? "精英" : "第");
                sb.append(i2);
                sb.append("章");
                string = sb.toString();
            }
            return new l4(true, str2, iS, iOptInt, i4, iOptInt2, string, iOptInt3, iOptInt4);
        } catch (Exception unused3) {
            return new l4(false, "存档异常", 1, 0, 0, 0, "", 0, 0);
        }
    }

    public final boolean o(String str) {
        return this.f1197e.Z(str).f432a;
    }

    public final boolean p(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        return l().contains(str);
    }

    public final boolean q(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        SharedPreferences sharedPreferences = this.f1195c;
        byte[] bArr = y5.f1568a;
        boolean z = !str.isEmpty() && sharedPreferences.contains(y5.j(str));
        LinkedHashMap linkedHashMapL = z ? y5.l(this.f1193a, this.f1195c, str) : null;
        if (!((z && linkedHashMapL == null) ? false : true)) {
            return false;
        }
        int i2 = this.f1194b.getInt("passport_" + str + "_save_schema", 0);
        com.sgscq.vpn.cloud.n0 n0VarZ = this.f1197e.Z(str);
        boolean z2 = !n0VarZ.f432a || this.f1197e.X(str);
        if (n0VarZ.f433b && z && z2 && h5.q0(linkedHashMapL)) {
            CloudSessionStore$SessionData cloudSessionStore$SessionDataY = new m.e(5, this.f1193a).y();
            String str2 = cloudSessionStore$SessionDataY.isLoggedIn() ? cloudSessionStore$SessionDataY.afdianUserId : "";
            if (!str2.isEmpty()) {
                try {
                    linkedHashMapL.put("_afdian_owner_token", n0VarZ.f434c);
                    y5.p(this.f1193a, this.f1195c, str, linkedHashMapL);
                    c.e eVar = this.f1197e;
                    synchronized (eVar) {
                        com.sgscq.vpn.cloud.n0 n0VarZ2 = eVar.Z(str);
                        if (!n0VarZ2.f433b || !c.e.T(n0VarZ2.f434c, str2)) {
                            throw new IllegalStateException("旧云存档归属不匹配");
                        }
                        synchronized (eVar) {
                            eVar.a0(str, 7, c.e.b(str2));
                        }
                        n0VarZ = this.f1197e.Z(str);
                    }
                    n0VarZ = this.f1197e.Z(str);
                } catch (Exception unused) {
                    z2.g("SGSCQ_PASSPORT", "Failed to promote legacy cloud passport: ".concat(str));
                    return false;
                }
            }
        }
        if (n0VarZ.f432a && z) {
            z2 = z2 && n0VarZ.f434c.equals(String.valueOf(linkedHashMapL.getOrDefault("_afdian_owner_token", "")));
        }
        boolean z3 = n0VarZ.f432a;
        if (z3 && !z2) {
            return false;
        }
        if (z) {
            if (z3) {
                return h5.q0(linkedHashMapL);
            }
            if (!h5.l0(linkedHashMapL) || h5.M0(linkedHashMapL) < 0 || h5.M0(linkedHashMapL) > 7) {
                return false;
            }
        } else if (z3) {
            if (i2 != 7) {
                return false;
            }
        } else if (i2 <= 0 || i2 > 7) {
            return false;
        }
        return true;
    }

    public final void r(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        this.f1194b.edit().putInt("passport_" + str + "_save_schema", 7).commit();
    }

    public final void t(String str, String str2) {
        if (str == null || str.isEmpty()) {
            return;
        }
        u(str, str2);
        r(str);
        w(str);
    }

    public final void u(String str, String str2) {
        if (str == null || str.isEmpty()) {
            return;
        }
        ArrayList arrayListL = l();
        boolean zContains = arrayListL.contains(str);
        SharedPreferences sharedPreferences = this.f1194b;
        if (!zContains) {
            arrayListL.add(str);
            sharedPreferences.edit().putString("passport_list", p5.s1(arrayListL)).commit();
            z2.e("SGSCQ_PASSPORT", "Registered passport: " + str + " user=" + str2);
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        if (str2 != null && !str2.isEmpty()) {
            editorEdit.putString("passport_" + str + "_username", str2);
        }
        if (!sharedPreferences.contains("passport_" + str + "_created_at")) {
            editorEdit.putLong(com.sgscq.vpn.handler.l.a("passport_", str, "_created_at"), System.currentTimeMillis());
        }
        editorEdit.putLong(com.sgscq.vpn.handler.l.a("passport_", str, "_last_login"), System.currentTimeMillis());
        editorEdit.commit();
    }

    public final String v() {
        String strD;
        StringBuilder sb;
        String strK = k();
        if (!strK.isEmpty()) {
            return strK;
        }
        ArrayList arrayListM = m();
        if (arrayListM.isEmpty()) {
            strD = d();
            w(strD);
            sb = new StringBuilder("Auto-created new passport: ");
        } else {
            strD = ((k4) arrayListM.get(0)).f1106a;
            w(strD);
            sb = new StringBuilder("Auto-selected existing passport: ");
        }
        sb.append(strD);
        z2.e("SGSCQ_PASSPORT", sb.toString());
        return strD;
    }

    public final void w(String str) {
        SharedPreferences sharedPreferences = this.f1194b;
        if (str == null || str.isEmpty()) {
            sharedPreferences.edit().remove("current_passport_guid").commit();
            return;
        }
        if (!p(str)) {
            u(str, "");
        }
        if (!this.f1197e.X(str)) {
            sharedPreferences.edit().remove("current_passport_guid").commit();
            z2.g("SGSCQ_PASSPORT", "Rejected cloud passport owned by another Afdian account: ".concat(str));
            return;
        }
        boolean zQ = q(str);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        if (!zQ) {
            editorEdit.remove("current_passport_guid").commit();
            z2.g("SGSCQ_PASSPORT", "Rejected unsupported legacy passport: ".concat(str));
            return;
        }
        z2.e("SGSCQ_PASSPORT", "Current passport: " + str + " saved=" + editorEdit.putString("current_passport_guid", str).commit());
    }
}
