package com.sgscq.vpn;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public abstract class y5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f1568a = "sgscq_save_data_v2".getBytes(StandardCharsets.UTF_8);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f1569b = "sgscq_save_data_v1".getBytes(StandardCharsets.UTF_8);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f1570c = "sgscq_player_journal_v1".getBytes(StandardCharsets.UTF_8);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f1571d = "sgscq_crash_report_v1".getBytes(StandardCharsets.UTF_8);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final SecureRandom f1572e = new SecureRandom();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b5 f1573f = new b5();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final b5 f1574g = new b5();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final b5 f1575h = new b5();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final b5 f1576i = new b5();

    public static void a(SharedPreferences sharedPreferences, String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        synchronized (a5.a(str)) {
            sharedPreferences.edit().remove(j(str)).remove("player_enc_".concat(str)).remove("player_".concat(str)).remove(o(str)).commit();
        }
    }

    public static int b(LinkedHashMap linkedHashMap) {
        Object obj = linkedHashMap.get("data_version");
        try {
            double dDoubleValue = obj instanceof Number ? ((Number) obj).doubleValue() : Double.parseDouble(String.valueOf(obj));
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue) || dDoubleValue != Math.rint(dDoubleValue) || dDoubleValue < -2.147483648E9d || dDoubleValue > 2.147483647E9d) {
                return 0;
            }
            return (int) dDoubleValue;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String c(Context context, String str, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        byte[] bArrE;
        if (!str.startsWith("j1:")) {
            throw new IllegalArgumentException("bad auxiliary format");
        }
        String[] strArrSplit = str.split(":", 3);
        if (strArrSplit.length != 3) {
            throw new IllegalArgumentException("bad auxiliary parts");
        }
        int i2 = 1;
        byte[] bArrDecode = Base64.decode(strArrSplit[1], 0);
        byte[] bArrDecode2 = Base64.decode(strArrSplit[2], 0);
        if (bArrDecode.length != 12) {
            throw new IllegalArgumentException("bad auxiliary iv");
        }
        try {
            bArrE = e(bArrDecode, bArrDecode2, (SecretKeySpec) f1575h.a(new f2(i2, context)), bArr);
        } catch (Exception unused) {
            bArrE = e(bArrDecode, bArrDecode2, (SecretKeySpec) f1576i.a(new f2(4, context)), bArr);
        }
        return new String(bArrE, StandardCharsets.UTF_8);
    }

    public static String d(Context context, String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        byte[] bArrE;
        byte[] bArrE2;
        byte[] bArr = f1568a;
        int i2 = 2;
        int i3 = 3;
        if (str.startsWith("v4:")) {
            String[] strArrSplit = str.split(":", 4);
            if (strArrSplit.length != 4) {
                throw new IllegalArgumentException("bad save parts");
            }
            String str2 = new String(Base64.decode(strArrSplit[1], 0), StandardCharsets.UTF_8);
            if (p5.y(str2) > 0) {
                throw new IllegalArgumentException("存档由更高版本客户端创建，请更新续命APP");
            }
            byte[] bArrDecode = Base64.decode(strArrSplit[2], 0);
            byte[] bArrDecode2 = Base64.decode(strArrSplit[3], 0);
            if (bArrDecode.length != 12) {
                throw new IllegalArgumentException("bad save iv");
            }
            byte[] bytes = "sgscq_save_data_v2|".concat(str2).getBytes(StandardCharsets.UTF_8);
            try {
                bArrE2 = e(bArrDecode, bArrDecode2, new SecretKeySpec(g(context, "sgscq_save_data_v2|".concat(str2)), "AES"), bytes);
            } catch (Exception unused) {
                bArrE2 = e(bArrDecode, bArrDecode2, new SecretKeySpec(f(context, "sgscq_save_data_v2|".concat(str2)), "AES"), bytes);
            }
            return p5.C(bArrE2, true);
        }
        if (!str.startsWith("v3:")) {
            throw new IllegalArgumentException("bad save format");
        }
        String[] strArrSplit2 = str.split(":", 3);
        if (strArrSplit2.length != 3) {
            throw new IllegalArgumentException("bad save parts");
        }
        byte[] bArrDecode3 = Base64.decode(strArrSplit2[1], 0);
        byte[] bArrDecode4 = Base64.decode(strArrSplit2[2], 0);
        if (bArrDecode3.length != 12) {
            throw new IllegalArgumentException("bad save iv");
        }
        try {
            bArrE = e(bArrDecode3, bArrDecode4, (SecretKeySpec) f1573f.a(new f2(i3, context)), bArr);
        } catch (Exception unused2) {
            bArrE = e(bArrDecode3, bArrDecode4, (SecretKeySpec) f1574g.a(new f2(i2, context)), bArr);
        }
        return p5.C(bArrE, true);
    }

    public static byte[] e(byte[] bArr, byte[] bArr2, SecretKeySpec secretKeySpec, byte[] bArr3) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(2, secretKeySpec, new GCMParameterSpec(128, bArr));
        cipher.updateAAD(bArr3);
        return cipher.doFinal(bArr2);
    }

    public static byte[] f(Context context, String str) throws NoSuchAlgorithmException, InvalidKeyException {
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(new SecretKeySpec(a2.a(context), "HmacSHA256"));
        return mac.doFinal(str.getBytes(StandardCharsets.UTF_8));
    }

    public static byte[] g(Context context, String str) throws NoSuchAlgorithmException, InvalidKeyException {
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(new SecretKeySpec(a2.c(context), "HmacSHA256"));
        return mac.doFinal(str.getBytes(StandardCharsets.UTF_8));
    }

    public static String h(Context context, String str) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, IOException, InvalidAlgorithmParameterException {
        byte[] bytes = "sgscq_save_data_v2|".concat("1.0.1.14067").getBytes(StandardCharsets.UTF_8);
        byte[] bArr = new byte[12];
        f1572e.nextBytes(bArr);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(1, new SecretKeySpec(g(context, "sgscq_save_data_v2|".concat("1.0.1.14067")), "AES"), new GCMParameterSpec(128, bArr));
        cipher.updateAAD(bytes);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        try {
            gZIPOutputStream.write(str.getBytes(StandardCharsets.UTF_8));
            gZIPOutputStream.close();
            return "v4:" + Base64.encodeToString("1.0.1.14067".getBytes(StandardCharsets.UTF_8), 2) + ":" + Base64.encodeToString(bArr, 2) + ":" + Base64.encodeToString(cipher.doFinal(byteArrayOutputStream.toByteArray()), 2);
        } catch (Throwable th) {
            try {
                gZIPOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static String i(Context context, String str, byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        byte[] bArr2 = new byte[12];
        f1572e.nextBytes(bArr2);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(1, (SecretKeySpec) f1575h.a(new f2(1, context)), new GCMParameterSpec(128, bArr2));
        cipher.updateAAD(bArr);
        return "j1:" + Base64.encodeToString(bArr2, 2) + ":" + Base64.encodeToString(cipher.doFinal(str.getBytes(StandardCharsets.UTF_8)), 2);
    }

    public static String j(String str) {
        return c.a.i("player_v2_enc_", str);
    }

    public static boolean k(String str) {
        return str != null && (str.startsWith("player_v2_enc_") || str.startsWith("player_enc_") || str.startsWith("player_"));
    }

    public static LinkedHashMap l(Context context, SharedPreferences sharedPreferences, String str) {
        String string;
        if (context != null && sharedPreferences != null && str != null && !str.isEmpty() && (string = sharedPreferences.getString(j(str), null)) != null && !string.isEmpty()) {
            try {
                LinkedHashMap linkedHashMapU1 = p5.u1(d(context, string));
                if (linkedHashMapU1.isEmpty()) {
                    return null;
                }
                return linkedHashMapU1;
            } catch (Exception e2) {
                c.a.u(e2, a.b0.b("Failed to decrypt encrypted save uid=", str, ": "), "SGSCQ_SAVE");
            }
        }
        return null;
    }

    public static void m(Context context) {
        LinkedHashMap linkedHashMapL;
        String string;
        byte[] bArrE;
        if (context == null) {
            return;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("sgscq_player_v5", 0);
        ArrayList<String> arrayList = new ArrayList();
        for (String str : sharedPreferences.getAll().keySet()) {
            if (str.startsWith("player_enc_")) {
                arrayList.add(str);
            }
        }
        int i2 = 0;
        for (String str2 : arrayList) {
            String strSubstring = str2.substring(11);
            if (!strSubstring.isEmpty() && (string = sharedPreferences.getString(str2, null)) != null && !string.isEmpty()) {
                byte[] bArr = f1569b;
                boolean zStartsWith = string.startsWith("v2:");
                if (!zStartsWith && !string.startsWith("v1:")) {
                    throw new IllegalArgumentException("bad legacy save format");
                }
                String[] strArrSplit = string.split(":", 3);
                if (strArrSplit.length != 3) {
                    throw new IllegalArgumentException("bad legacy save parts");
                }
                int i3 = 1;
                byte[] bArrDecode = Base64.decode(strArrSplit[1], 0);
                byte[] bArrDecode2 = Base64.decode(strArrSplit[2], 0);
                if (bArrDecode.length != 12) {
                    throw new IllegalArgumentException("bad legacy save iv");
                }
                try {
                    bArrE = e(bArrDecode, bArrDecode2, (SecretKeySpec) f1575h.a(new f2(i3, context)), bArr);
                } catch (Exception unused) {
                    bArrE = e(bArrDecode, bArrDecode2, (SecretKeySpec) f1576i.a(new f2(4, context)), bArr);
                }
                LinkedHashMap linkedHashMapU1 = p5.u1(p5.C(bArrE, zStartsWith));
                if (linkedHashMapU1.isEmpty()) {
                    throw new IllegalStateException("旧存档内容为空 uid=".concat(strSubstring));
                }
                int iB = b(linkedHashMapU1);
                if (iB == 7 || r(linkedHashMapU1)) {
                    LinkedHashMap linkedHashMapL2 = l(context, sharedPreferences, strSubstring);
                    i3 = linkedHashMapL2 != null ? 0 : 1;
                    if (linkedHashMapL2 == null) {
                        p(context, sharedPreferences, strSubstring, linkedHashMapU1);
                    } else {
                        if (r(linkedHashMapL2) || !s(sharedPreferences, strSubstring)) {
                            p(context, sharedPreferences, strSubstring, linkedHashMapL2);
                        }
                        if (linkedHashMapL2 != null || !p5.s1(linkedHashMapU1).equals(p5.s1(linkedHashMapL2))) {
                            throw new IllegalStateException("新存档回读校验失败 uid=".concat(strSubstring));
                        }
                        SharedPreferences.Editor editorRemove = sharedPreferences.edit().remove("player_enc_".concat(strSubstring));
                        if (i3 != 0) {
                            editorRemove.remove(o(strSubstring));
                        }
                        if (!editorRemove.commit()) {
                            throw new IllegalStateException("旧存档清理失败 uid=".concat(strSubstring));
                        }
                        i2++;
                    }
                    linkedHashMapL2 = l(context, sharedPreferences, strSubstring);
                    if (linkedHashMapL2 != null) {
                    }
                    throw new IllegalStateException("新存档回读校验失败 uid=".concat(strSubstring));
                }
                z2.g("SGSCQ_SAVE", "跳过不支持的一次性升级 uid=" + strSubstring + " version=" + iB);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (String str3 : sharedPreferences.getAll().keySet()) {
            if (str3.startsWith("player_v2_enc_")) {
                arrayList2.add(str3);
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            String strSubstring2 = ((String) it.next()).substring(14);
            if (!strSubstring2.isEmpty() && (linkedHashMapL = l(context, sharedPreferences, strSubstring2)) != null) {
                boolean zR = r(linkedHashMapL);
                if (b(linkedHashMapL) == 7 && (zR || !s(sharedPreferences, strSubstring2))) {
                    p(context, sharedPreferences, strSubstring2, linkedHashMapL);
                    LinkedHashMap linkedHashMapL3 = l(context, sharedPreferences, strSubstring2);
                    if (linkedHashMapL3 == null || !p5.s1(linkedHashMapL).equals(p5.s1(linkedHashMapL3))) {
                        throw new IllegalStateException("当前存档回读校验失败 uid=".concat(strSubstring2));
                    }
                    i2++;
                }
            }
        }
        if (i2 > 0) {
            z2.e("SGSCQ_SAVE", "已升级存档角色数=" + i2);
        }
    }

    public static long n(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences == null || str == null || str.isEmpty()) {
            return 0L;
        }
        return Math.max(0L, sharedPreferences.getLong(o(str), 0L));
    }

    public static String o(String str) {
        return c.a.i("player_v2_modified_at_", str);
    }

    public static void p(Context context, SharedPreferences sharedPreferences, String str, Map map) {
        if (context == null || sharedPreferences == null || str == null || str.isEmpty() || map == null) {
            return;
        }
        synchronized (a5.a(str)) {
            String strH = h(context, p5.s1(map));
            if (!sharedPreferences.edit().putString(j(str), strH).putLong(o(str), Math.max(System.currentTimeMillis(), n(sharedPreferences, str) + 1)).remove("player_".concat(str)).commit()) {
                throw new IllegalStateException("player save commit failed");
            }
        }
    }

    public static String q(String str) {
        int i2;
        if (str == null) {
            return "";
        }
        if (str.startsWith("player_v2_enc_")) {
            i2 = 14;
        } else {
            if (!str.startsWith("player_enc_")) {
                return "";
            }
            i2 = 11;
        }
        return str.substring(i2);
    }

    public static boolean r(LinkedHashMap linkedHashMap) {
        if (b(linkedHashMap) != 6) {
            return false;
        }
        linkedHashMap.put("data_version", 7);
        return true;
    }

    public static boolean s(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences == null || str.isEmpty()) {
            return false;
        }
        String string = sharedPreferences.getString(j(str), "");
        if (!string.startsWith("v4:")) {
            return false;
        }
        String[] strArrSplit = string.split(":", 4);
        if (strArrSplit.length != 4) {
            return false;
        }
        try {
            return p5.y(new String(Base64.decode(strArrSplit[1], 0), StandardCharsets.UTF_8)) == 0;
        } catch (Exception unused) {
            return false;
        }
    }
}
