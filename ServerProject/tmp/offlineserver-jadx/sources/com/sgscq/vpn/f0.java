package com.sgscq.vpn;

import android.content.Context;
import android.content.SharedPreferences;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes.dex */
public final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SharedPreferences f676c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SharedPreferences f677d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SharedPreferences f678e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final m4 f679f;

    public f0(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f674a = applicationContext;
        this.f675b = applicationContext.getSharedPreferences("sgscq_player_v5", 0);
        this.f676c = applicationContext.getSharedPreferences("sgscq_guide_v2", 0);
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("sgscq_cloud_import_journal_v1", 0);
        this.f677d = sharedPreferences;
        this.f678e = applicationContext.getSharedPreferences("sgscq_cloud_import_backups_v1", 0);
        this.f679f = new m4(applicationContext);
        synchronized (this) {
            if (sharedPreferences.contains("pending_import")) {
                try {
                    m();
                } catch (Exception e2) {
                    z2.c("SGSCQ_CLOUD", "云存档导入恢复失败: " + e2.getMessage());
                }
            }
        }
    }

    public static String b(String str, int i2) {
        return "backup_" + str + "_" + i2;
    }

    public static String i(Map map) {
        Object obj = map.get("user_nickname");
        if (obj == null || String.valueOf(obj).isEmpty()) {
            obj = map.get("nickname");
        }
        String strValueOf = obj == null ? "云端角色" : String.valueOf(obj);
        return strValueOf.isEmpty() ? "云端角色" : strValueOf;
    }

    public static boolean j(String str, String str2) {
        if (str == null || str.isEmpty() || str2 == null) {
            return false;
        }
        if (str2.startsWith("guide_" + str + "_")) {
            return true;
        }
        return (str2.startsWith("freshman_step_") || str2.startsWith("server_step_") || str2.startsWith("guide_step_")) && str2.endsWith("_".concat(str));
    }

    public final boolean a(String str, String str2, LinkedHashMap linkedHashMap) {
        boolean z;
        Context context = this.f674a;
        c.e eVar = new c.e(5, context);
        com.sgscq.vpn.cloud.n0 n0VarZ = eVar.Z(str);
        String strB = c.e.b(str2);
        if (!n0VarZ.f432a || strB == null || strB.isEmpty() || !strB.equals(n0VarZ.f434c)) {
            throw new IllegalStateException("云存档归属与当前账号不一致");
        }
        String strValueOf = String.valueOf(linkedHashMap.getOrDefault("_afdian_owner_token", ""));
        if (strValueOf.isEmpty()) {
            linkedHashMap.put("_afdian_owner_token", strB);
            z = true;
        } else {
            if (!strB.equals(strValueOf)) {
                throw new IllegalStateException("云存档归属与当前账号不一致");
            }
            z = false;
        }
        if (z) {
            y5.p(context, this.f675b, str, linkedHashMap);
        }
        eVar.a0(str, 7, strB);
        return z;
    }

    public final LinkedHashMap c(String str) {
        String strJ = y5.j(str);
        SharedPreferences sharedPreferences = this.f675b;
        String string = sharedPreferences.getString(strJ, "");
        LinkedHashMap linkedHashMapQ = c.a.q("passport_uid", str);
        linkedHashMapQ.put("had_player", Boolean.valueOf(!string.isEmpty()));
        linkedHashMapQ.put("player_payload", string);
        linkedHashMapQ.put("player_modified_at", Long.valueOf(y5.n(sharedPreferences, str)));
        linkedHashMapQ.put("guide", d(str));
        return linkedHashMapQ;
    }

    public final LinkedHashMap d(String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ?> entry : this.f676c.getAll().entrySet()) {
            if (j(str, entry.getKey())) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    public final void e(String str, String str2, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2) {
        if (str == null || str.isEmpty() || linkedHashMap == null || linkedHashMap.isEmpty() || str2 == null || str2.trim().isEmpty()) {
            throw new IllegalArgumentException("云存档数据无效");
        }
        c.e eVar = new c.e(5, this.f674a);
        com.sgscq.vpn.cloud.n0 n0VarZ = eVar.Z(str);
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(linkedHashMap);
        linkedHashMap3.put("_afdian_owner_token", c.e.b(str2));
        LinkedHashMap linkedHashMapL = y5.l(this.f674a, this.f675b, str);
        LinkedHashMap linkedHashMapD = d(str);
        synchronized (a5.a(str)) {
            try {
                y5.p(this.f674a, this.f675b, str, linkedHashMap3);
                l(str, linkedHashMap2 == null ? new LinkedHashMap() : new LinkedHashMap(linkedHashMap2));
                synchronized (eVar) {
                    eVar.a0(str, 7, c.e.b(str2));
                }
            } catch (Exception e2) {
                if (linkedHashMapL == null || linkedHashMapL.isEmpty()) {
                    y5.a(this.f675b, str);
                } else {
                    y5.p(this.f674a, this.f675b, str, linkedHashMapL);
                }
                l(str, linkedHashMapD);
                eVar.w(str);
                if (n0VarZ.f432a && !n0VarZ.f434c.isEmpty()) {
                    eVar.a0(str, n0VarZ.f435d, n0VarZ.f434c);
                }
                throw e2;
            }
        }
    }

    public final long f(long j2, String str, String str2, byte[] bArr) {
        long jN;
        com.sgscq.vpn.cloud.o0 o0VarB = com.sgscq.vpn.cloud.o0.b(bArr);
        String strB = c.e.b(str2);
        if (o0VarB.f442b != 7) {
            throw new IllegalArgumentException("云存档版本与当前客户端不一致");
        }
        if (str != null && !str.isEmpty() && !str.equals(o0VarB.f441a)) {
            throw new IllegalArgumentException("云角色 UID 与存档不一致");
        }
        if (strB == null || strB.isEmpty() || !strB.equals(o0VarB.f443c) || !h5.o0(strB, o0VarB.f445e)) {
            throw new IllegalArgumentException("云存档归属与当前账号不一致");
        }
        String str3 = o0VarB.f441a;
        byte[] bArr2 = y5.f1568a;
        synchronized (a5.a(str3)) {
            if (y5.n(this.f675b, str3) != j2) {
                throw new IllegalStateException("本地存档已在同步期间变化，已取消云端覆盖");
            }
            h(o0VarB);
            jN = y5.n(this.f675b, str3);
        }
        return jN;
    }

    public final void g(String str, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2) {
        if (str == null || str.isEmpty() || linkedHashMap == null || linkedHashMap.isEmpty()) {
            throw new IllegalArgumentException("本地存档数据无效");
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(linkedHashMap);
        linkedHashMap3.remove("_afdian_owner_token");
        LinkedHashMap linkedHashMapL = y5.l(this.f674a, this.f675b, str);
        LinkedHashMap linkedHashMapD = d(str);
        synchronized (a5.a(str)) {
            try {
                try {
                    y5.p(this.f674a, this.f675b, str, linkedHashMap3);
                    l(str, new LinkedHashMap(linkedHashMap2));
                } catch (RuntimeException e2) {
                    if (linkedHashMapL == null || linkedHashMapL.isEmpty()) {
                        y5.a(this.f675b, str);
                    } else {
                        y5.p(this.f674a, this.f675b, str, linkedHashMapL);
                    }
                    l(str, linkedHashMapD);
                    throw e2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void h(com.sgscq.vpn.cloud.o0 o0Var) {
        String str = o0Var.f441a;
        c.e eVar = new c.e(5, this.f674a);
        com.sgscq.vpn.cloud.n0 n0VarZ = eVar.Z(str);
        boolean zP = this.f679f.p(str);
        boolean z = n0VarZ.f432a;
        String str2 = n0VarZ.f434c;
        String str3 = o0Var.f443c;
        if (!(!zP || (z && str3 != null && str3.equals(str2)))) {
            throw new IllegalStateException("本机同名云存档属于其他爱发电账号");
        }
        LinkedHashMap linkedHashMapC = c(str);
        linkedHashMapC.put("cloud_owner_token", o0Var.f443c);
        o(linkedHashMapC);
        Boolean bool = Boolean.TRUE;
        if (bool.equals(linkedHashMapC.get("had_player"))) {
            n(linkedHashMapC);
        }
        try {
            y5.p(this.f674a, this.f675b, str, o0Var.f445e);
            l(str, o0Var.f446f);
            linkedHashMapC.put("committed", bool);
            o(linkedHashMapC);
            String strI = i(o0Var.f445e);
            m4 m4Var = this.f679f;
            m4Var.u(str, strI);
            m4Var.g(str);
            eVar.a0(str, 7, o0Var.f443c);
            this.f677d.edit().remove("pending_import").commit();
        } catch (Exception e2) {
            m();
            throw e2;
        }
    }

    public final void k(String str, String str2) {
        if (str.isEmpty()) {
            throw new IllegalStateException("请先选择本地角色");
        }
        byte[] bArr = y5.f1568a;
        synchronized (a5.a(str)) {
            LinkedHashMap linkedHashMapL = y5.l(this.f674a, this.f675b, str);
            if (linkedHashMapL != null && !linkedHashMapL.isEmpty()) {
                a(str, str2, linkedHashMapL);
            }
        }
    }

    public final void l(String str, Map map) {
        String strValueOf;
        SharedPreferences sharedPreferences = this.f676c;
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        for (String str2 : sharedPreferences.getAll().keySet()) {
            if (j(str, str2)) {
                editorEdit.remove(str2);
            }
        }
        for (Map.Entry entry : map.entrySet()) {
            if (!j(str, (String) entry.getKey())) {
                throw new IllegalArgumentException("云存档包含其他角色的引导数据");
            }
            String str3 = (String) entry.getKey();
            Object value = entry.getValue();
            if (value instanceof Boolean) {
                editorEdit.putBoolean(str3, ((Boolean) value).booleanValue());
            } else {
                if (value instanceof String) {
                    strValueOf = (String) value;
                } else if (value instanceof Number) {
                    double dDoubleValue = ((Number) value).doubleValue();
                    long jRound = Math.round(dDoubleValue);
                    double d2 = jRound;
                    if (dDoubleValue == d2 && jRound >= -2147483648L && jRound <= 2147483647L) {
                        editorEdit.putInt(str3, (int) jRound);
                    } else if (dDoubleValue == d2) {
                        editorEdit.putLong(str3, jRound);
                    } else {
                        editorEdit.putFloat(str3, (float) dDoubleValue);
                    }
                } else if (value instanceof Collection) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    Iterator it = ((Collection) value).iterator();
                    while (it.hasNext()) {
                        linkedHashSet.add(String.valueOf(it.next()));
                    }
                    editorEdit.putStringSet(str3, linkedHashSet);
                } else if (value != null) {
                    strValueOf = String.valueOf(value);
                }
                editorEdit.putString(str3, strValueOf);
            }
        }
        if (!editorEdit.commit()) {
            throw new IllegalStateException("引导存档写入失败");
        }
    }

    public final void m() {
        SharedPreferences sharedPreferences = this.f677d;
        String string = sharedPreferences.getString("pending_import", "");
        if (string.isEmpty()) {
            return;
        }
        byte[] bArr = y5.f1570c;
        Context context = this.f674a;
        LinkedHashMap linkedHashMapU1 = p5.u1(y5.c(context, string, bArr));
        String strValueOf = String.valueOf(linkedHashMapU1.getOrDefault("passport_uid", ""));
        if (strValueOf.isEmpty()) {
            throw new IllegalStateException("云存档恢复点缺少角色 UID");
        }
        Boolean bool = Boolean.TRUE;
        boolean zEquals = bool.equals(linkedHashMapU1.get("committed"));
        SharedPreferences sharedPreferences2 = this.f675b;
        if (zEquals) {
            LinkedHashMap linkedHashMapL = y5.l(context, sharedPreferences2, strValueOf);
            if (linkedHashMapL == null || linkedHashMapL.isEmpty()) {
                throw new IllegalStateException("已提交的云存档不存在");
            }
            String strValueOf2 = String.valueOf(linkedHashMapU1.getOrDefault("cloud_owner_token", linkedHashMapL.getOrDefault("_afdian_owner_token", "")));
            if (!strValueOf2.isEmpty()) {
                new c.e(5, context).a0(strValueOf, 7, strValueOf2);
            }
            this.f679f.t(strValueOf, i(linkedHashMapL));
        } else {
            boolean zEquals2 = bool.equals(linkedHashMapU1.get("had_player"));
            String strValueOf3 = String.valueOf(linkedHashMapU1.getOrDefault("player_payload", ""));
            Object obj = linkedHashMapU1.get("player_modified_at");
            long jMax = obj instanceof Number ? Math.max(0L, ((Number) obj).longValue()) : 0L;
            if (!zEquals2 || strValueOf3.isEmpty()) {
                y5.a(sharedPreferences2, strValueOf);
            } else {
                y5.a(sharedPreferences2, strValueOf);
                SharedPreferences.Editor editorPutString = sharedPreferences2.edit().putString(y5.j(strValueOf), strValueOf3);
                if (editorPutString != null && !strValueOf.isEmpty() && jMax > 0) {
                    editorPutString.putLong(y5.o(strValueOf), jMax);
                }
                if (!editorPutString.commit()) {
                    throw new IllegalStateException("本地角色恢复失败");
                }
            }
            Object obj2 = linkedHashMapU1.get("guide");
            l(strValueOf, obj2 instanceof Map ? (Map) obj2 : new LinkedHashMap());
        }
        sharedPreferences.edit().remove("pending_import").commit();
    }

    public final void n(LinkedHashMap linkedHashMap) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        SharedPreferences sharedPreferences;
        String strValueOf = String.valueOf(linkedHashMap.getOrDefault("passport_uid", ""));
        if (strValueOf.isEmpty()) {
            throw new IllegalStateException("本地恢复点缺少角色 UID");
        }
        ArrayList<String> arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            sharedPreferences = this.f678e;
            if (i2 >= 3) {
                break;
            }
            arrayList.add(sharedPreferences.getString(b(strValueOf, i2), ""));
            i2++;
        }
        String strI = y5.i(this.f674a, p5.s1(linkedHashMap), y5.f1570c);
        ArrayList arrayList2 = new ArrayList();
        if (strI != null && !strI.isEmpty()) {
            arrayList2.add(strI);
        }
        for (String str : arrayList) {
            if (str != null && !str.isEmpty() && arrayList2.size() < 3) {
                arrayList2.add(str);
            }
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        for (int i3 = 0; i3 < 3; i3++) {
            if (i3 < arrayList2.size()) {
                editorEdit.putString(b(strValueOf, i3), (String) arrayList2.get(i3));
            } else {
                editorEdit.remove(b(strValueOf, i3));
            }
        }
        if (!editorEdit.commit()) {
            throw new IllegalStateException("无法保存同步前本地存档");
        }
    }

    public final void o(LinkedHashMap linkedHashMap) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (!this.f677d.edit().putString("pending_import", y5.i(this.f674a, p5.s1(linkedHashMap), y5.f1570c)).commit()) {
            throw new IllegalStateException("无法写入云存档导入恢复点");
        }
    }
}
