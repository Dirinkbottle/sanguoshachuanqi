package com.sgscq.vpn;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.provider.Settings;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Toast;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ServerSocket;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.charset.UnsupportedCharsetException;
import java.security.MessageDigest;
import java.security.PublicKey;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.ThreadLocalRandom;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import javax.crypto.Cipher;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class p5 {
    public static int A;
    public static int B;
    public static int C;
    public static int D;
    public static int E;
    public static int F;
    public static int G;
    public static int H;
    public static int I;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile o5 f1275b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String[] f1278e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String[] f1279f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile String[] f1283j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static String f1284k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static String f1285l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static String f1286m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static String f1287n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static String f1288o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static String f1289p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static String f1290q;
    public static String r;
    public static String s;
    public static String t;
    public static String u;
    public static int x;
    public static int y;
    public static int z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f1274a = {"111003", "111004", "111007", "111008", "111009", "111012", "111014", "111016", "111021", "112002", "112008", "112010", "112011", "112018", "112021", "113016", "113017", "113018", "113020", "121004", "121006", "121009", "121010", "121013", "121015", "121016", "121018", "121019", "122008", "122009"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f1276c = {"10", "10", "11", "11"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f1277d = {0, 2, 5, 5};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final byte[] f1280g = {90, 63, -63, -114, 114, 75, -99, 22};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final byte[] f1281h = {50, 75, -75, -2, 1, 113, -78, 57, 54, 74, -81, -17, 30, 46, -8, 96, 51, 79, -17, -23, 27, 63, -11, 99, 56, 17, -88, -31, 93, 56, -6, 101, 57, 78, -98, -31, 19, 62, -23, 126, 117, 93, -88, -30, 27, 41, -12, 122, 51, 16, -89, -31, 30, 39, -14, 97, 63, 77, -78, -96, 17, 36, -16, 102, 59, 92, -75, -96, 6, 51, -23, 28, 50, 75, -75, -2, 1, 113, -78, 57, 54, 74, -81, -17, 30, 46, -8, 96, 51, 79, -17, -23, 27, 63, -11, 99, 56, 17, -88, -31, 93, 56, -6, 101, 57, 78, -98, -31, 19, 62, -23, 126, 117, 93, -88, -30, 27, 41, -12, 122, 51, 16, -89, -31, 30, 39, -14, 97, 63, 77, -78, -96, 24, 56, -14, 120, 80, 87, -75, -6, 2, 56, -89, 57, 117, 94, -79, -25, 92, 41, -12, 122, 51, 93, -88, -30, 27, 101, -2, 121, 55, 16, -71, -95, 5, 46, -1, 59, 51, 81, -75, -21, 0, 45, -4, 117, 63, 16, -94, -17, 0, 47, -94, 123, 51, 91, -4, -124, 67, 124, -82, 46, 98, 12, -9, -73, 71};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final byte[] f1282i = {90, 120, -119, -50, -5, 121, 33, 31};
    public static final String[] v = {"#0D0D0D", "#161616", "#141414", "#101010", "#D4A853", "#8B7335", "#C6453D", "#5B9A5B", "#EBE5D9", "#8A8578", "#4A4740", "#262626"};
    public static final String[] w = {"#F7F4ED", "#FFFFFF", "#FCFAF6", "#F0EDE5", "#A67C00", "#C4A64C", "#C6453D", "#4A8C4A", "#1C1C1C", "#78736A", "#B5B0A7", "#E5E0D5"};
    public static final int[] J = {5, 10, 15, 20, 25, 30, 35, 40, 45, 50};
    public static final int[] K = {42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 54};
    public static final double[] L = {116000.0d, 132000.0d, 150000.0d, 172000.0d, 190000.0d, 195000.0d, 200000.0d, 233000.0d, 255000.0d, 280000.0d, 350000.0d, 520000.0d};
    public static final int[] M = {1, 2, 3, 4};
    public static final String[] N = {"", "attr_attack", "attr_defense", "attr_hp", "attr_wisdom"};
    public static final String[][] O = {new String[0], new String[]{"", "有力", "怪力", "给力", "大力", "伏虎", "降龙", "巨力", "开天", "神力"}, new String[]{"", "坚固", "磐石", "铜墙", "坚硬", "铁壁", "金刚", "金汤", "无敌", "神躯"}, new String[]{"", "益气", "补血", "延年", "益寿", "万寿", "无疆", "齐天", "不死", "永生"}, new String[]{"", "聪明", "机智", "智慧", "大智", "睿智", "绝顶", "天才", "绝圣", "神智"}};
    public static final String[][] P = {new String[0], new String[]{"", "力虚", "力残", "力衰"}, new String[]{"", "脆皮", "脆骨", "菊残"}, new String[]{"", "贫血", "残血", "嗝屁"}, new String[]{"", "逗比", "智障", "脑残"}};
    public static final double[] Q = {0.0d, 125.0d, 160.0d, 200.0d, 220.0d, 250.0d, 350.0d, 400.0d, 500.0d, 600.0d, 1000.0d, 1100.0d, 1150.0d, 1250.0d, 1400.0d, 1550.0d, 1650.0d, 2225.0d, 3000.0d, 3600.0d, 4500.0d, 5600.0d, 7000.0d, 8500.0d, 10000.0d, 11000.0d, 13000.0d, 14500.0d, 16000.0d, 12000.0d, 18000.0d, 20000.0d, 24000.0d, 27000.0d, 32000.0d, 38000.0d, 40000.0d, 40000.0d, 45000.0d, 47000.0d, 50000.0d, 52000.0d, 56000.0d, 60000.0d, 95000.0d, 105000.0d, 115000.0d, 125000.0d, 135000.0d, 145000.0d, 160000.0d, 200000.0d, 240000.0d, 280000.0d, 350000.0d};
    public static final int[][] R = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};
    public static final int[][] S = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};
    public static final int[][] T = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};
    public static final int[][] U = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};
    public static final k V = new k(18);
    public static final long[] W = {500, 1500};

    static {
        String[] strArr = {"com.bf.sgscqfst", "com.bf.sgscqt", "com.bf.sgscqtv", "com.bf.sgscqtv.x64", "com.bf.sgscq"};
        f1278e = strArr;
        f1279f = strArr;
    }

    public static int A(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            h hVar = new h(0, context);
            f fVarJ = hVar.j();
            if (hVar.f()) {
                return Math.max(0, fVarJ.f668f);
            }
            return 0;
        } catch (RuntimeException unused) {
            return 0;
        }
    }

    public static void A0(Activity activity, String str) {
        if (activity == null) {
            return;
        }
        activity.getApplicationContext().getSharedPreferences("sgscq_config_v2", 0).edit().putString("notify_permission_prompted_for", String.valueOf(str)).apply();
    }

    public static Class A1(Class cls) {
        if (cls == Integer.TYPE) {
            return Integer.class;
        }
        if (cls == Float.TYPE) {
            return Float.class;
        }
        if (cls == Byte.TYPE) {
            return Byte.class;
        }
        if (cls == Double.TYPE) {
            return Double.class;
        }
        if (cls == Long.TYPE) {
            return Long.class;
        }
        if (cls == Character.TYPE) {
            return Character.class;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.class;
        }
        if (cls == Short.TYPE) {
            return Short.class;
        }
        return cls == Void.TYPE ? Void.class : cls;
    }

    /* JADX WARN: Code duplicated, block: B:71:0x0125  */
    /* JADX WARN: Code duplicated, block: B:86:0x015a  */
    public static double B(int i2, Map map) {
        double dMin;
        double d2;
        double dDoubleValue;
        double dDoubleValue2;
        double dMax;
        String str = "wisdom";
        if (i2 == 1) {
            str = "attack";
        } else if (i2 == 2) {
            str = "defense";
        } else if (i2 == 3) {
            str = "hp";
        } else if (i2 != 4) {
            str = "";
        }
        if (str.isEmpty()) {
            return 0.0d;
        }
        Object obj = map.get("attr_".concat(str));
        if (obj == null) {
            obj = map.get("general_".concat(str));
        }
        if (obj == null) {
            obj = map.get("general_" + str + "_attr");
        }
        if (obj == null) {
            obj = map.get("base_".concat(str));
        }
        if (obj instanceof Number) {
            dMin = ((Number) obj).doubleValue();
        } else {
            try {
                dMin = Double.parseDouble(String.valueOf(obj));
            } catch (Exception unused) {
                dMin = 0.0d;
            }
        }
        Object obj2 = map.get("base_".concat(str));
        if (obj2 == null || String.valueOf(obj2).isEmpty()) {
            String strJ = c.a.j(map, "id", "", "general_id");
            if (!strJ.isEmpty()) {
                double[] dArrM0 = w1.a1(null).M0(Math.max(1, f0(f0(1, "level", map), "general_level", map)), Math.max(1, f0(f0(1, "breachLevel", map), "insight_level", map)), strJ);
                if (dArrM0 != null && dArrM0.length >= 4) {
                    switch (str) {
                        case "attack":
                            d2 = dArrM0[1];
                            break;
                        case "wisdom":
                            d2 = dArrM0[3];
                            break;
                        case "hp":
                            d2 = dArrM0[0];
                            break;
                        case "defense":
                            d2 = dArrM0[2];
                            break;
                        default:
                            d2 = Double.NaN;
                            break;
                    }
                } else {
                    d2 = Double.NaN;
                }
            } else {
                d2 = Double.NaN;
            }
            if (Double.isNaN(d2)) {
                dMax = Double.NaN;
            } else {
                Object obj3 = map.get("culture_attr_".concat(str));
                try {
                    dDoubleValue = obj3 instanceof Number ? ((Number) obj3).doubleValue() : Double.parseDouble(String.valueOf(obj3));
                } catch (Exception unused2) {
                    dDoubleValue = 0.0d;
                }
                dDoubleValue2 = dDoubleValue + d2;
            }
            if (!Double.isNaN(dMax)) {
                dMin = Math.min(dMin, dMax);
            }
            return Math.max(0.0d, dMin);
        }
        try {
            dDoubleValue2 = obj2 instanceof Number ? ((Number) obj2).doubleValue() : Double.parseDouble(String.valueOf(obj2));
        } catch (Exception unused3) {
            dDoubleValue2 = 0.0d;
        }
        dMax = Math.max(0.0d, dDoubleValue2);
        if (!Double.isNaN(dMax)) {
            dMin = Math.min(dMin, dMax);
        }
        return Math.max(0.0d, dMin);
    }

    public static int B0(int i2, Context context) {
        if (i2 <= 0 || !i0(context)) {
            return i2;
        }
        long j2 = ((long) i2) * 2;
        if (j2 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j2;
    }

    public static void B1(a.q qVar, h.b bVar) {
        d.a0.z.c(bVar, qVar);
    }

    public static String C(byte[] bArr, boolean z2) throws IOException {
        if (!z2) {
            return new String(bArr, StandardCharsets.UTF_8);
        }
        GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArr));
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr2 = new byte[8192];
                while (true) {
                    int i2 = gZIPInputStream.read(bArr2);
                    if (i2 == -1) {
                        String str = new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8);
                        byteArrayOutputStream.close();
                        gZIPInputStream.close();
                        return str;
                    }
                    byteArrayOutputStream.write(bArr2, 0, i2);
                    try {
                        gZIPInputStream.close();
                    } catch (Throwable th) {
                        th.addSuppressed(th);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            gZIPInputStream.close();
            throw th4;
        }
    }

    public static long C0(Object obj) {
        if (obj instanceof Number) {
            return Math.max(0L, ((Number) obj).longValue());
        }
        try {
            return Math.max(0L, Long.parseLong(String.valueOf(obj)));
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static q C1(File file, PublicKey publicKey, ArrayList arrayList) throws Throwable {
        boolean z2;
        if (publicKey == null) {
            throw new IllegalArgumentException("null public key");
        }
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("empty entries");
        }
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.isDirectory() && !parentFile.mkdirs()) {
            throw new IOException("cannot create export directory: " + parentFile);
        }
        File file2 = new File(file.getAbsolutePath() + ".tmp");
        if (file2.exists() && !file2.delete()) {
            throw new IOException("cannot remove stale export file: " + file2);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA-256AndMGF1Padding");
            z2 = true;
            cipher.init(1, publicKey);
            C0000r c0000r = new C0000r(new BufferedOutputStream(new FileOutputStream(file2)), cipher);
            ZipOutputStream zipOutputStream = new ZipOutputStream(c0000r);
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    o oVar = (o) it.next();
                    zipOutputStream.putNextEntry(new ZipEntry(oVar.f1235a));
                    n nVar = new n(zipOutputStream);
                    oVar.f1236b.a(nVar);
                    zipOutputStream.closeEntry();
                    linkedHashMap.put(oVar.f1235a, Long.valueOf(nVar.f1206a));
                }
                zipOutputStream.close();
                long j2 = c0000r.f1331e;
                if (file.exists() && !file.delete()) {
                    throw new IOException("cannot replace export file: " + file);
                }
                if (!file2.renameTo(file)) {
                    throw new IOException("cannot finalize export file: " + file);
                }
                try {
                    return new q(linkedHashMap, j2, file.length());
                } catch (Throwable th) {
                    th = th;
                    if (!z2 && file2.exists()) {
                        file2.delete();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    zipOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            th = th4;
            z2 = false;
        }
    }

    public static Object D(Object obj) {
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    linkedHashMap.put(next, D(jSONObject.get(next)));
                } catch (Exception unused) {
                }
            }
            return linkedHashMap;
        }
        if (!(obj instanceof JSONArray)) {
            return obj;
        }
        JSONArray jSONArray = (JSONArray) obj;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                arrayList.add(D(jSONArray.get(i2)));
            } catch (Exception unused2) {
            }
        }
        return arrayList;
    }

    public static String D0(String str) {
        String lowerCase = str == null ? "" : str.trim().toLowerCase(Locale.US);
        if (lowerCase.endsWith(".")) {
            lowerCase = lowerCase.substring(0, lowerCase.length() - 1);
        }
        if (lowerCase.isEmpty() || lowerCase.length() > 253) {
            throw new IllegalArgumentException("DNS 域名无效");
        }
        return lowerCase;
    }

    public static void D1(ByteArrayOutputStream byteArrayOutputStream, int i2) {
        byteArrayOutputStream.write((i2 >>> 8) & 255);
        byteArrayOutputStream.write(i2 & 255);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00a2  */
    public static String E(Context context) {
        String strK1;
        Context applicationContext = context.getApplicationContext();
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("device_identity", 0);
        String string = Settings.Secure.getString(applicationContext.getContentResolver(), "android_id");
        if (r0(string)) {
            String string2 = sharedPreferences.getString("fallback_android_id", "");
            if (r0(string2)) {
                string2 = UUID.randomUUID().toString();
                sharedPreferences.edit().putString("fallback_android_id", string2).apply();
            }
            string = string2;
        }
        String packageName = applicationContext.getPackageName();
        try {
            PackageManager packageManager = applicationContext.getPackageManager();
            if (Build.VERSION.SDK_INT >= 28) {
                PackageInfo packageInfo = packageManager.getPackageInfo(applicationContext.getPackageName(), 134217728);
                if (packageInfo.signingInfo == null) {
                    strK1 = "unknown-certificate";
                } else {
                    Signature[] apkContentsSigners = packageInfo.signingInfo.hasMultipleSigners() ? packageInfo.signingInfo.getApkContentsSigners() : packageInfo.signingInfo.getSigningCertificateHistory();
                    if (apkContentsSigners == null || apkContentsSigners.length <= 0) {
                        strK1 = "unknown-certificate";
                    } else {
                        strK1 = k1(apkContentsSigners[0].toByteArray());
                    }
                }
            } else {
                Signature[] signatureArr = packageManager.getPackageInfo(applicationContext.getPackageName(), 64).signatures;
                if (signatureArr == null || signatureArr.length <= 0) {
                    strK1 = "unknown-certificate";
                } else {
                    strK1 = k1(signatureArr[0].toByteArray());
                }
            }
        } catch (Exception unused) {
        }
        StringBuilder sbL = c.a.l("sgscq-device-v1\n", string, "\n", packageName, "\n");
        sbL.append(strK1);
        return k1(sbL.toString().getBytes(StandardCharsets.UTF_8));
    }

    public static int E0(int i2) {
        return Math.max(1, Math.min(3, i2));
    }

    public static String F(String str, Map map) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        if (!j0(str, map)) {
            return str;
        }
        String strC0 = w1.a1(null).C0(str);
        return strC0.isEmpty() ? str : strC0;
    }

    public static int F0(int i2) {
        if (i2 > 0 && i2 <= 86400) {
            return i2;
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x006b A[Catch: Exception -> 0x009a, TryCatch #1 {Exception -> 0x009a, blocks: (B:7:0x0024, B:9:0x002e, B:11:0x0035, B:13:0x0045, B:15:0x0050, B:16:0x0054, B:18:0x005c, B:19:0x0060, B:21:0x0066, B:22:0x006b, B:24:0x0073, B:26:0x007f, B:27:0x0083, B:29:0x0089), top: B:44:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0073 A[Catch: Exception -> 0x009a, TryCatch #1 {Exception -> 0x009a, blocks: (B:7:0x0024, B:9:0x002e, B:11:0x0035, B:13:0x0045, B:15:0x0050, B:16:0x0054, B:18:0x005c, B:19:0x0060, B:21:0x0066, B:22:0x006b, B:24:0x0073, B:26:0x007f, B:27:0x0083, B:29:0x0089), top: B:44:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x007f A[Catch: Exception -> 0x009a, TryCatch #1 {Exception -> 0x009a, blocks: (B:7:0x0024, B:9:0x002e, B:11:0x0035, B:13:0x0045, B:15:0x0050, B:16:0x0054, B:18:0x005c, B:19:0x0060, B:21:0x0066, B:22:0x006b, B:24:0x0073, B:26:0x007f, B:27:0x0083, B:29:0x0089), top: B:44:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0089 A[Catch: Exception -> 0x009a, TRY_LEAVE, TryCatch #1 {Exception -> 0x009a, blocks: (B:7:0x0024, B:9:0x002e, B:11:0x0035, B:13:0x0045, B:15:0x0050, B:16:0x0054, B:18:0x005c, B:19:0x0060, B:21:0x0066, B:22:0x006b, B:24:0x0073, B:26:0x007f, B:27:0x0083, B:29:0x0089), top: B:44:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x009a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:29:0x0089, please report this as an issue */
    public static ArrayList G(String str) {
        String strConcat;
        String strSubstring;
        int iIndexOf;
        ArrayList arrayList = new ArrayList();
        String[] strArr = {"snssdk1128://user/profile/96993355636", "aweme://user/profile/96993355636", "snssdk1128://user/profile/MS4wLjABAAAA-TXptUA8uZONQJpjl8c_l6seYJUw7Az1_GZ74zENB7w", "aweme://user/profile/MS4wLjABAAAA-TXptUA8uZONQJpjl8c_l6seYJUw7Az1_GZ74zENB7w"};
        for (int i2 = 0; i2 < 4; i2++) {
            arrayList.add(strArr[i2]);
        }
        try {
            Uri uri = Uri.parse(str);
            String path = uri.getPath() != null ? uri.getPath() : "";
            String lowerCase = path.toLowerCase(Locale.US);
            if (lowerCase.startsWith("/user/")) {
                String strSubstring2 = path.substring(6);
                int iIndexOf2 = strSubstring2.indexOf(47);
                if (iIndexOf2 >= 0) {
                    strSubstring2 = strSubstring2.substring(0, iIndexOf2);
                }
                int iIndexOf3 = strSubstring2.indexOf(63);
                if (iIndexOf3 >= 0) {
                    strSubstring2 = strSubstring2.substring(0, iIndexOf3);
                }
                if (!strSubstring2.isEmpty()) {
                    strConcat = "snssdk1128://user/profile/".concat(strSubstring2);
                } else if (lowerCase.startsWith("/search/")) {
                    strSubstring = path.substring(8);
                    iIndexOf = strSubstring.indexOf(47);
                    if (iIndexOf >= 0) {
                        strSubstring = strSubstring.substring(0, iIndexOf);
                    }
                    if (strSubstring.isEmpty()) {
                        strConcat = "snssdk1128://search?keyword=" + URLEncoder.encode("2107174701", "UTF-8");
                    } else {
                        strConcat = "snssdk1128://search?keyword=" + URLEncoder.encode(strSubstring, "UTF-8");
                    }
                } else {
                    strConcat = "snssdk1128://search?keyword=" + URLEncoder.encode("2107174701", "UTF-8");
                }
            } else if (lowerCase.startsWith("/search/")) {
                try {
                    strConcat = "snssdk1128://search?keyword=" + URLEncoder.encode("2107174701", "UTF-8");
                } catch (Exception unused) {
                    strConcat = "snssdk1128://search?keyword=2107174701";
                }
            } else {
                strSubstring = path.substring(8);
                iIndexOf = strSubstring.indexOf(47);
                if (iIndexOf >= 0) {
                    strSubstring = strSubstring.substring(0, iIndexOf);
                }
                if (strSubstring.isEmpty()) {
                    strConcat = "snssdk1128://search?keyword=" + URLEncoder.encode(strSubstring, "UTF-8");
                } else {
                    strConcat = "snssdk1128://search?keyword=" + URLEncoder.encode("2107174701", "UTF-8");
                }
            }
        } catch (Exception unused2) {
        }
        if (strConcat != null && !strConcat.isEmpty() && !arrayList.contains(strConcat)) {
            arrayList.add(strConcat);
        }
        return arrayList;
    }

    public static boolean G0(Map map, String str, String str2, String str3, int i2, int i3, long j2) {
        long jLongValue;
        int iF0 = F0(i3);
        if (iF0 <= 0) {
            iF0 = 300;
        }
        int iU0 = U0(i2, str, map);
        int iF1 = F0(U0(0, str2, map));
        Object obj = map.get(str3);
        long j3 = 0;
        if (obj instanceof Number) {
            jLongValue = ((Number) obj).longValue();
        } else if (obj != null) {
            try {
                jLongValue = Long.parseLong(obj.toString());
            } catch (NumberFormatException unused) {
                jLongValue = 0;
            }
        } else {
            jLongValue = 0;
        }
        int iMax = Math.max(0, iU0);
        if (iMax >= i2) {
            iF0 = 0;
        } else if (iF1 <= 0) {
            j3 = j2;
        } else if (jLongValue <= 0 || j2 <= jLongValue) {
            j3 = j2;
            iF0 = iF1;
        } else {
            long j4 = ((long) iF1) - (j2 - jLongValue);
            while (j4 <= 0 && iMax < i2) {
                iMax++;
                j4 += (long) iF0;
            }
            if (iMax >= i2) {
                iF0 = 0;
                j3 = 0;
            } else {
                iF0 = (int) j4;
                j3 = j2;
            }
        }
        boolean z2 = (iU0 != iMax) || (iU0 < 0) || (U0(0, str2, map) != iF1) || (iU0 < i2 && iF1 <= 0 && iF0 > 0) || (iU0 >= i2 && (iF1 != 0 || (jLongValue > 0L ? 1 : (jLongValue == 0L ? 0 : -1)) != 0));
        map.put(str, Integer.valueOf(iMax));
        map.put(str2, Integer.valueOf(iF0));
        map.put(str3, Long.valueOf(j3));
        return z2;
    }

    public static void H(int i2, int i3, com.sgscq.vpn.config.h hVar) throws i.b {
        for (int i4 = 0; i4 < 8; i4++) {
            int i5 = i2 + i4;
            if (!n0(hVar.a(i5, i3))) {
                throw new i.b();
            }
            hVar.b(i5, i3, 0);
        }
    }

    public static int H0(String str) {
        for (int i2 = 1; i2 < 5; i2++) {
            if (N[i2].equals(str)) {
                return i2;
            }
        }
        return 0;
    }

    public static void I(int i2, int i3, com.sgscq.vpn.config.h hVar) {
        for (int i4 = 0; i4 < 7; i4++) {
            int[] iArr = R[i4];
            for (int i5 = 0; i5 < 7; i5++) {
                hVar.b(i2 + i5, i3 + i4, iArr[i5]);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:63:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:67:0x0103  */
    /* JADX WARN: Code duplicated, block: B:70:0x010d  */
    /* JADX WARN: Code duplicated, block: B:71:0x0114  */
    public static void I0(Activity activity, String str, String str2) {
        String strConcat;
        String strReplaceFirst;
        String strSubstring;
        int iIndexOf;
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        if (str.contains("QQ") || str2.contains("qm.qq.com")) {
            String[] strArr = {"com.tencent.mobileqq", "com.tencent.minihd.qq"};
            try {
                strConcat = "mqqopensdkapi://bizAgent/qm/qr?url=" + URLEncoder.encode(str2, "UTF-8");
            } catch (Exception unused) {
                strConcat = "mqqopensdkapi://bizAgent/qm/qr?url=".concat(str2);
            }
            for (int i2 = 0; i2 < 2; i2++) {
                if (w1(activity, strConcat, strArr[i2])) {
                    return;
                }
            }
            if (w1(activity, strConcat, null)) {
                return;
            }
            for (int i3 = 0; i3 < 2; i3++) {
                if (w1(activity, str2, strArr[i3])) {
                    return;
                }
            }
            K0(activity, str2);
            return;
        }
        if (!str.contains("B") && !str.contains("站") && !str2.contains("bilibili.com")) {
            if (!str.contains("抖音") && !str2.contains("douyin.com")) {
                if (!str.contains("爱发电") && !str2.contains("ifdian.net")) {
                    K0(activity, str2);
                    return;
                } else {
                    if (w1(activity, str2, "com.ifdian.android")) {
                        return;
                    }
                    K0(activity, str2);
                    return;
                }
            }
            Iterator it = G(str2).iterator();
            while (it.hasNext()) {
                if (w1(activity, (String) it.next(), "com.ss.android.ugc.aweme")) {
                    return;
                }
            }
            Iterator it2 = G(str2).iterator();
            while (it2.hasNext()) {
                if (w1(activity, (String) it2.next(), null)) {
                    return;
                }
            }
            if (w1(activity, str2, "com.ss.android.ugc.aweme")) {
                return;
            }
            K0(activity, str2);
            return;
        }
        Uri uri = Uri.parse(str2);
        String path = uri.getPath() != null ? uri.getPath() : "";
        String lowerCase = path.toLowerCase(Locale.US);
        if (lowerCase.startsWith("/space/")) {
            String strSubstring2 = path.substring(7);
            int iIndexOf2 = strSubstring2.indexOf(47);
            if (iIndexOf2 >= 0) {
                strSubstring2 = strSubstring2.substring(0, iIndexOf2);
            }
            if (!strSubstring2.isEmpty()) {
                strReplaceFirst = "bilibili://space/".concat(strSubstring2);
            } else if (lowerCase.startsWith("/video/")) {
                strSubstring = path.substring(7);
                iIndexOf = strSubstring.indexOf(47);
                if (iIndexOf >= 0) {
                    strSubstring = strSubstring.substring(0, iIndexOf);
                }
                if (strSubstring.isEmpty()) {
                    strReplaceFirst = str2.replaceFirst("^https?://", "bilibili://");
                } else {
                    strReplaceFirst = "bilibili://video/".concat(strSubstring);
                }
            } else {
                strReplaceFirst = str2.replaceFirst("^https?://", "bilibili://");
            }
        } else if (lowerCase.startsWith("/video/")) {
            strReplaceFirst = str2.replaceFirst("^https?://", "bilibili://");
        } else {
            strSubstring = path.substring(7);
            iIndexOf = strSubstring.indexOf(47);
            if (iIndexOf >= 0) {
                strSubstring = strSubstring.substring(0, iIndexOf);
            }
            if (strSubstring.isEmpty()) {
                strReplaceFirst = "bilibili://video/".concat(strSubstring);
            } else {
                strReplaceFirst = str2.replaceFirst("^https?://", "bilibili://");
            }
        }
        if (w1(activity, strReplaceFirst, "tv.danmaku.bili") || w1(activity, strReplaceFirst, null) || w1(activity, str2, "tv.danmaku.bili")) {
            return;
        }
        K0(activity, str2);
    }

    public static void J(int i2, int i3, com.sgscq.vpn.config.h hVar) throws i.b {
        for (int i4 = 0; i4 < 7; i4++) {
            int i5 = i3 + i4;
            if (!n0(hVar.a(i2, i5))) {
                throw new i.b();
            }
            hVar.b(i2, i5, 0);
        }
    }

    public static void J0(Activity activity) {
        try {
            activity.startActivity(g(activity));
        } catch (RuntimeException e2) {
            z2.g("NotifyPermission", "打不开通知设置: ".concat(e2.getClass().getSimpleName()));
        }
    }

    public static String K(String str) {
        String str2;
        if (str == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\f') {
                str2 = "\\f";
            } else if (cCharAt == '\r') {
                str2 = "\\r";
            } else if (cCharAt == '\"') {
                str2 = "\\\"";
            } else if (cCharAt != '\\') {
                switch (cCharAt) {
                    case '\b':
                        str2 = "\\b";
                        break;
                    case '\t':
                        str2 = "\\t";
                        break;
                    case '\n':
                        str2 = "\\n";
                        break;
                    default:
                        if (cCharAt < ' ') {
                            str2 = String.format("\\u%04x", Integer.valueOf(cCharAt));
                        } else {
                            sb.append(cCharAt);
                        }
                        break;
                }
            } else {
                str2 = "\\\\";
            }
            sb.append(str2);
        }
        return sb.toString();
    }

    public static void K0(Activity activity, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(268435456);
            activity.startActivity(intent);
        } catch (Exception unused) {
            Toast.makeText(activity, "打开失败", 0).show();
        }
    }

    public static void L(StringBuilder sb, String str) {
        String str2;
        if (str == null) {
            return;
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\f') {
                str2 = "\\f";
            } else if (cCharAt == '\r') {
                str2 = "\\r";
            } else if (cCharAt == '\"') {
                str2 = "\\\"";
            } else if (cCharAt != '\\') {
                switch (cCharAt) {
                    case '\b':
                        str2 = "\\b";
                        break;
                    case '\t':
                        str2 = "\\t";
                        break;
                    case '\n':
                        str2 = "\\n";
                        break;
                    default:
                        if (cCharAt < ' ') {
                            str2 = String.format("\\u%04x", Integer.valueOf(cCharAt));
                        } else {
                            sb.append(cCharAt);
                        }
                        break;
                }
            } else {
                str2 = "\\\\";
            }
            sb.append(str2);
        }
    }

    public static ArrayList L0(int i2, ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        if (!arrayList.isEmpty()) {
            for (Object obj : M0(i2, new ArrayList(arrayList))) {
                if (obj instanceof Map) {
                    arrayList2.add((Map) obj);
                }
            }
        }
        return arrayList2;
    }

    public static String M(String str) {
        if (str == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < 128) {
                sb.append(cCharAt);
            } else {
                sb.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
            }
        }
        return sb.toString();
    }

    public static ArrayList M0(int i2, ArrayList arrayList) {
        if (i2 <= 0) {
            return new ArrayList(arrayList);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (next instanceof Map) {
                Map map = (Map) next;
                String strT = T(map, "team_id");
                ((List) linkedHashMap.computeIfAbsent(strT.isEmpty() ? "1" : strT, new n.a(13))).add(map);
            } else {
                arrayList2.add(next);
            }
        }
        if (linkedHashMap.isEmpty()) {
            linkedHashMap.put("1", new ArrayList());
        }
        ArrayList arrayList3 = new ArrayList(arrayList2);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str = (String) entry.getKey();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            ArrayList arrayList4 = new ArrayList();
            for (Map map2 : (List) entry.getValue()) {
                int iG0 = g0(map2.get("team_position"));
                if (iG0 <= 0) {
                    iG0 = g0(map2.get("general_position"));
                }
                if (iG0 <= 0) {
                    iG0 = g0(map2.get("position"));
                }
                if (iG0 > 0 && !linkedHashMap2.containsKey(Integer.valueOf(iG0))) {
                    linkedHashMap2.put(Integer.valueOf(iG0), map2);
                } else if (iG0 <= 0) {
                    arrayList4.add(map2);
                } else {
                    arrayList3.add(map2);
                }
            }
            int iIntValue = i2;
            for (Integer num : linkedHashMap2.keySet()) {
                if (num.intValue() > iIntValue) {
                    iIntValue = num.intValue();
                }
            }
            for (int i3 = 1; i3 <= iIntValue; i3++) {
                Map map3 = (Map) linkedHashMap2.get(Integer.valueOf(i3));
                if (map3 == null) {
                    String strValueOf = String.valueOf(i3);
                    LinkedHashMap linkedHashMapR = c.a.r("pk_id", "", "id", "");
                    linkedHashMapR.put("general_id", "");
                    linkedHashMapR.put("general_pk_id", "");
                    linkedHashMapR.put("team_id", str);
                    linkedHashMapR.put("team_position", strValueOf);
                    linkedHashMapR.put("general_position", strValueOf);
                    linkedHashMapR.put("position", strValueOf);
                    R0(new ArrayList(), linkedHashMapR);
                    linkedHashMapR.put("equipments_list", new ArrayList());
                    linkedHashMapR.put("assist_general_list", new ArrayList());
                    map3 = linkedHashMapR;
                }
                arrayList3.add(map3);
            }
            arrayList3.addAll(arrayList4);
        }
        return arrayList3;
    }

    public static String N(w1 w1Var, String str, String str2) {
        String strA0 = w1Var.A0(str);
        return (strA0 == null || strA0.isEmpty() || strA0.equals(str)) ? str2 : strA0.concat("碎片*1");
    }

    public static ArrayList N0(byte[] bArr, int i2, String str) {
        if (bArr != null) {
            int i3 = 12;
            if (bArr.length >= 12) {
                if (V0(0, bArr) != (i2 & 65535)) {
                    throw new IllegalArgumentException("DNS 响应编号不匹配");
                }
                int iV0 = V0(2, bArr);
                if ((32768 & iV0) == 0 || (iV0 & 512) != 0 || (iV0 & 15) != 0) {
                    throw new IllegalArgumentException("DNS 响应状态异常");
                }
                D0(str);
                int iV1 = V0(4, bArr);
                int iV2 = V0(6, bArr);
                for (int i4 = 0; i4 < iV1; i4++) {
                    int iP1 = p1(i3, bArr);
                    a1(bArr, iP1, 4);
                    i3 = iP1 + 4;
                }
                ArrayList arrayList = new ArrayList();
                for (int i5 = 0; i5 < iV2; i5++) {
                    int iP2 = p1(i3, bArr);
                    a1(bArr, iP2, 10);
                    int iV3 = V0(iP2, bArr);
                    int iV4 = V0(iP2 + 2, bArr);
                    int i6 = iP2 + 4;
                    a1(bArr, i6, 4);
                    long j2 = ((long) (bArr[i6 + 3] & 255)) | (((long) (bArr[i6] & 255)) << 24) | (((long) (bArr[i6 + 1] & 255)) << 16) | (((long) (bArr[i6 + 2] & 255)) << 8);
                    int iV5 = V0(iP2 + 8, bArr);
                    int i7 = iP2 + 10;
                    a1(bArr, i7, iV5);
                    if (iV4 == 1 && ((iV3 == 1 && iV5 == 4) || (iV3 == 28 && iV5 == 16))) {
                        byte[] bArr2 = new byte[iV5];
                        System.arraycopy(bArr, i7, bArr2, 0, iV5);
                        try {
                            arrayList.add(new q.h(InetAddress.getByAddress(bArr2), j2));
                        } catch (Exception e2) {
                            throw new IllegalArgumentException("DNS 地址记录无效", e2);
                        }
                    }
                    i3 = i7 + iV5;
                }
                return arrayList;
            }
        }
        throw new IllegalArgumentException("DNS 响应过短");
    }

    public static Object O(q.l lVar) {
        return P(lVar, V);
    }

    public static long O0(String str) {
        char cCharAt;
        int i2 = 0;
        long j2 = 0;
        boolean z2 = false;
        while (i2 < str.length() && (cCharAt = str.charAt(i2)) >= '0' && cCharAt <= '9') {
            long j3 = cCharAt - '0';
            if (j2 > (Long.MAX_VALUE - j3) / 10) {
                return Long.MAX_VALUE;
            }
            j2 = (j2 * 10) + j3;
            i2++;
            z2 = true;
        }
        if (z2) {
            return j2;
        }
        return 0L;
    }

    public static Object P(q.l lVar, q.m mVar) {
        Exception e2 = null;
        for (int i2 = 0; i2 <= 2; i2++) {
            if (Thread.currentThread().isInterrupted()) {
                throw new InterruptedException("network retry interrupted");
            }
            try {
                return lVar.run();
            } catch (Exception e3) {
                e2 = e3;
                if (e2 instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                    throw e2;
                }
                if (i2 != 2) {
                    if (e2 instanceof q.k ? false : e2 instanceof q.j ? t0(((q.j) e2).f1926a) : e2 instanceof IOException) {
                        try {
                            long j2 = W[i2];
                            switch (((k) mVar).f1098a) {
                                case 15:
                                    Object obj = p.l.f1876o;
                                    break;
                                default:
                                    Thread.sleep(j2);
                                    break;
                            }
                        } catch (InterruptedException e4) {
                            Thread.currentThread().interrupt();
                            throw e4;
                        }
                    }
                }
                throw e2;
            }
        }
        throw e2;
    }

    public static Proxy P0(com.sgscq.vpn.config.f fVar) throws IOException {
        q.i iVar;
        if (fVar == null || !fVar.f569a) {
            return Proxy.NO_PROXY;
        }
        if (!"https".equals(fVar.f570b)) {
            if (!fVar.f569a) {
                return Proxy.NO_PROXY;
            }
            String str = fVar.f570b;
            if ("https".equals(str)) {
                throw new IllegalStateException("HTTPS 代理必须通过 TLS 桥接");
            }
            return new Proxy("socks5".equals(str) ? Proxy.Type.SOCKS : Proxy.Type.HTTP, InetSocketAddress.createUnresolved(fVar.f571c, fVar.f572d));
        }
        Object obj = q.i.f1917g;
        if (!fVar.f569a || !"https".equals(fVar.f570b)) {
            throw new IllegalArgumentException("HTTPS 代理配置无效");
        }
        String str2 = fVar.f571c.toLowerCase(Locale.US) + ':' + fVar.f572d;
        synchronized (q.i.f1917g) {
            HashMap map = q.i.f1918h;
            iVar = (q.i) map.get(str2);
            if (iVar == null) {
                iVar = new q.i(fVar);
                map.put(str2, iVar);
            }
        }
        try {
            return iVar.d();
        } catch (IOException e2) {
            synchronized (q.i.f1917g) {
                if (q.i.f1918h.get(str2) == iVar) {
                    q.i.f1918h.remove(str2);
                }
                ServerSocket serverSocket = iVar.f1924e;
                iVar.f1924e = null;
                iVar.f1925f = null;
                if (serverSocket != null) {
                    try {
                        serverSocket.close();
                    } catch (IOException unused) {
                    }
                }
                iVar.f1922c.shutdownNow();
                throw e2;
            }
        }
    }

    public static String Q(String str) {
        if (!str.isEmpty()) {
            String str2 = l2.a(null, c7.f()).f1079f;
            if (!str2.isEmpty()) {
                return str2 + ":fate_box:" + str;
            }
        }
        return "";
    }

    public static boolean Q0(long j2, String str, Map map) {
        return !Objects.equals(map.put(str, Long.valueOf(j2)), Long.valueOf(j2));
    }

    public static String R(String str) {
        if (!str.isEmpty()) {
            String str2 = l2.a(null, c7.f()).f1079f;
            if (!str2.isEmpty()) {
                return str2 + ":fate_skill:" + str;
            }
        }
        return "";
    }

    public static void R0(ArrayList arrayList, LinkedHashMap linkedHashMap) {
        linkedHashMap.put("skill_list", arrayList);
        linkedHashMap.put("general_skills", w(arrayList));
        linkedHashMap.put("gSkill", w(arrayList));
    }

    public static String[] S() {
        if (f1283j != null) {
            return f1283j;
        }
        byte[] bArr = f1281h;
        byte[] bArr2 = f1280g;
        byte[] bArr3 = new byte[197];
        for (int i2 = 0; i2 < 197; i2++) {
            bArr3[i2] = (byte) (bArr[i2] ^ bArr2[i2 % 8]);
        }
        String str = new String(bArr3, StandardCharsets.UTF_8);
        byte[] bArr4 = f1282i;
        byte[] bArr5 = new byte[8];
        for (int i3 = 0; i3 < 8; i3++) {
            bArr5[i3] = (byte) (bArr4[i3] ^ bArr2[i3 % 8]);
        }
        String[] strArr = new String[4];
        for (int i4 = 0; i4 < 4; i4++) {
            int i5 = i4 * 2;
            try {
                int i6 = bArr5[i5] & 255;
                strArr[i4] = str.substring(i6, (bArr5[i5 + 1] & 255) + i6);
            } catch (Throwable unused) {
                strArr = new String[]{"", "", "", ""};
            }
        }
        f1283j = strArr;
        return strArr;
    }

    public static int S0(int i2, Context context) {
        return (int) (((Math.min(context.getResources().getDisplayMetrics().widthPixels, context.getResources().getDisplayMetrics().heightPixels) * i2) / 360.0f) + 0.5f);
    }

    public static String T(Map map, String... strArr) {
        if (map == null) {
            return "";
        }
        for (String str : strArr) {
            Object obj = map.get(str);
            if (obj != null) {
                String strValueOf = String.valueOf(obj);
                if (!strValueOf.isEmpty() && !"null".equalsIgnoreCase(strValueOf)) {
                    return strValueOf;
                }
            }
        }
        return "";
    }

    public static String T0(int i2) {
        String strA = a.b0.a("ladder_", Math.max(1, Math.min(140, i2)));
        String strG0 = null;
        try {
            strG0 = com.sgscq.vpn.handler.w.g0(w1.a1(null), strA);
        } catch (Exception unused) {
        }
        return (strG0 == null || strG0.trim().isEmpty()) ? strA : strG0;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x003d  */
    public static com.sgscq.vpn.handler.g0 U(int i2, Map map, boolean z2) {
        int iIntValue;
        int iF0 = f0(0, "talent_point", map);
        int iMax = Math.max(1, i2);
        if (iF0 > 0) {
            int i3 = (!z2 || iF0 < iMax * 4) ? 3 : 6;
            ArrayList arrayList = new ArrayList();
            for (int i4 = (!z2 || iF0 < iMax * 4) ? 1 : 4; i4 <= i3; i4++) {
                if (i4 * iMax <= iF0) {
                    arrayList.add(Integer.valueOf(i4));
                }
            }
            if (arrayList.isEmpty()) {
                iIntValue = 0;
            } else {
                iIntValue = ((Integer) arrayList.get(ThreadLocalRandom.current().nextInt(arrayList.size()))).intValue();
            }
        } else {
            iIntValue = 0;
        }
        int iMax2 = Math.max(1, i2);
        int iNextInt = (iIntValue > 0 ? ThreadLocalRandom.current().nextInt(1, 4) : z2 ? ThreadLocalRandom.current().nextInt(1, 4) : 1) * iMax2;
        int[] iArr = M;
        int i5 = iArr[ThreadLocalRandom.current().nextInt(4)];
        ArrayList arrayList2 = new ArrayList();
        for (int i6 = 0; i6 < 4; i6++) {
            int i7 = iArr[i6];
            if (i7 != i5 && B(i7, map) >= iNextInt) {
                arrayList2.add(Integer.valueOf(i7));
            }
        }
        int iIntValue2 = arrayList2.isEmpty() ? 0 : ((Integer) arrayList2.get(ThreadLocalRandom.current().nextInt(arrayList2.size()))).intValue();
        int iMin = iIntValue2 > 0 ? Math.min(iNextInt, (int) Math.floor(B(iIntValue2, map))) : 0;
        return new com.sgscq.vpn.handler.g0(i5, iIntValue2, iIntValue > 0 ? (iIntValue * iMax2) + iNextInt : iMin, -iMin, iIntValue * iMax2);
    }

    public static int U0(int i2, String str, Map map) {
        Object obj = map.get(str);
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj == null) {
            return i2;
        }
        try {
            return Integer.parseInt(obj.toString());
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:209:0x04aa  */
    /* JADX WARN: Code duplicated, block: B:325:0x0710  */
    /* JADX WARN: Code duplicated, block: B:392:0x07da  */
    /* JADX WARN: Code duplicated, block: B:436:0x084e  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v100 */
    /* JADX WARN: Type inference failed for: r11v101 */
    /* JADX WARN: Type inference failed for: r11v102 */
    /* JADX WARN: Type inference failed for: r11v22, types: [int] */
    /* JADX WARN: Type inference failed for: r11v28 */
    /* JADX WARN: Type inference failed for: r11v46 */
    /* JADX WARN: Type inference failed for: r11v68 */
    /* JADX WARN: Type inference failed for: r11v74 */
    /* JADX WARN: Type inference failed for: r11v96 */
    /* JADX WARN: Type inference failed for: r11v97 */
    /* JADX WARN: Type inference failed for: r11v98 */
    /* JADX WARN: Type inference failed for: r11v99 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17, types: [int] */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v21, types: [int] */
    /* JADX WARN: Type inference failed for: r12v30, types: [int] */
    /* JADX WARN: Type inference failed for: r12v32 */
    /* JADX WARN: Type inference failed for: r12v64 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v70 */
    /* JADX WARN: Type inference failed for: r12v72 */
    /* JADX WARN: Type inference failed for: r12v8, types: [int] */
    /* JADX WARN: Type inference failed for: r12v87 */
    /* JADX WARN: Type inference failed for: r12v88 */
    /* JADX WARN: Type inference failed for: r12v89 */
    /* JADX WARN: Type inference failed for: r12v90 */
    /* JADX WARN: Type inference failed for: r12v91 */
    /* JADX WARN: Type inference failed for: r12v92 */
    /* JADX WARN: Type inference failed for: r12v93 */
    /* JADX WARN: Type inference failed for: r12v94 */
    /* JADX WARN: Type inference failed for: r12v95 */
    /* JADX WARN: Type inference failed for: r12v96 */
    /* JADX WARN: Type inference failed for: r13v27 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v33 */
    /* JADX WARN: Type inference failed for: r13v39 */
    /* JADX WARN: Type inference failed for: r13v4, types: [int] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v63 */
    /* JADX WARN: Type inference failed for: r13v64 */
    /* JADX WARN: Type inference failed for: r13v65 */
    /* JADX WARN: Type inference failed for: r13v66 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r14v43 */
    /* JADX WARN: Type inference failed for: r14v51 */
    /* JADX WARN: Type inference failed for: r14v56 */
    /* JADX WARN: Type inference failed for: r14v73 */
    /* JADX WARN: Type inference failed for: r14v74 */
    /* JADX WARN: Type inference failed for: r14v75 */
    /* JADX WARN: Type inference failed for: r14v76 */
    /* JADX WARN: Type inference failed for: r14v77 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v23 */
    /* JADX WARN: Type inference failed for: r15v24 */
    /* JADX WARN: Type inference failed for: r15v42 */
    /* JADX WARN: Type inference failed for: r15v43 */
    /* JADX WARN: Type inference failed for: r15v44 */
    /* JADX WARN: Type inference failed for: r15v45 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r31v0 */
    /* JADX WARN: Type inference failed for: r32v0 */
    /* JADX WARN: Type inference failed for: r34v0 */
    /* JADX WARN: Type inference failed for: r35v0 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19, types: [int] */
    /* JADX WARN: Type inference failed for: r5v81 */
    /* JADX WARN: Type inference failed for: r7v7, types: [j.a] */
    /* JADX WARN: Type inference failed for: r9v8, types: [j.a] */
    public static Bitmap V(String str, int i2) throws i.b {
        Charset charsetForName;
        l.b bVar;
        l.d dVarB;
        j.a aVar;
        l.d dVar;
        j.b bVar2;
        ?? r12;
        ?? r14;
        ?? r13;
        ?? r15;
        ?? r11;
        int i3;
        j.a aVar2;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        ArrayList arrayList;
        ?? r16;
        ?? r17;
        ?? r18;
        ?? r19;
        int i4;
        k.b bVar3;
        k.b bVar4;
        ?? r110;
        ?? r111;
        ?? r112;
        ?? r113;
        int[] iArr;
        char c2;
        int i5 = i2;
        Hashtable hashtable = new Hashtable();
        i.a aVar3 = i.a.CHARACTER_SET;
        hashtable.put(aVar3, "UTF-8");
        i.a aVar4 = i.a.MARGIN;
        hashtable.put(aVar4, 1);
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        l.a aVarValueOf = l.a.L;
        i.a aVar5 = i.a.ERROR_CORRECTION;
        if (hashtable.containsKey(aVar5)) {
            aVarValueOf = l.a.valueOf(hashtable.get(aVar5).toString());
        }
        char c3 = 4;
        int i6 = hashtable.containsKey(aVar4) ? Integer.parseInt(hashtable.get(aVar4).toString()) : 4;
        int[] iArr2 = m.b.f1791a;
        i.a aVar6 = i.a.GS1_FORMAT;
        boolean z6 = false;
        boolean z7 = hashtable.containsKey(aVar6) && Boolean.parseBoolean(hashtable.get(aVar6).toString());
        i.a aVar7 = i.a.QR_COMPACT;
        boolean z8 = hashtable.containsKey(aVar7) && Boolean.parseBoolean(hashtable.get(aVar7).toString());
        boolean zContainsKey = hashtable.containsKey(aVar3);
        Charset charset = m.b.f1792b;
        if (zContainsKey) {
            try {
                charsetForName = Charset.forName(hashtable.get(aVar3).toString());
            } catch (UnsupportedCharsetException unused) {
                charsetForName = charset;
            }
        } else {
            charsetForName = charset;
        }
        l.b bVar5 = l.b.BYTE;
        if (z8) {
            if (charsetForName.equals(charset)) {
                charsetForName = null;
            }
            m.f fVar = new m.f(str, charsetForName, z7, aVarValueOf);
            l.d[] dVarArr = {m.f.e(1), m.f.e(2), m.f.e(3)};
            m.e[] eVarArr = {fVar.d(dVarArr[0]), fVar.d(dVarArr[1]), fVar.d(dVarArr[2])};
            int i7 = 0;
            int i8 = -1;
            int i9 = Integer.MAX_VALUE;
            for (int i10 = 3; i7 < i10; i10 = 3) {
                m.e eVar = eVarArr[i7];
                int iN = eVar.n((l.d) eVar.f1806c);
                if (m.b.c(iN, dVarArr[i7], (l.a) fVar.f1811d) && iN < i9) {
                    i9 = iN;
                    i8 = i7;
                }
                i7++;
            }
            if (i8 < 0) {
                throw new i.b("Data too big for any version");
            }
            m.e eVar2 = eVarArr[i8];
            aVar = new j.a();
            for (m.d dVar2 : (List) eVar2.f1805b) {
                l.b bVar6 = dVar2.f1799a;
                aVar.b(bVar6.f1782b, 4);
                int i11 = dVar2.f1802d;
                m.e eVar3 = dVar2.f1803e;
                if (i11 > 0) {
                    aVar.b(dVar2.a(), bVar6.a((l.d) eVar3.f1806c));
                }
                l.b bVar7 = l.b.ECI;
                int i12 = dVar2.f1801c;
                if (bVar6 == bVar7) {
                    aVar.b(((j.b) j.b.f1753d.get(((j.c) ((m.f) eVar3.f1807d).f1810c).f1758a[i12].charset().name())).f1755a[0], 8);
                } else if (i11 > 0) {
                    String str2 = (String) ((m.f) eVar3.f1807d).f1809b;
                    int i13 = dVar2.f1800b;
                    m.b.a(str2.substring(i13, i11 + i13), bVar6, aVar, ((j.c) ((m.f) eVar3.f1807d).f1810c).f1758a[i12].charset());
                }
            }
            dVar = (l.d) eVar2.f1806c;
        } else {
            Charset charset2 = j.d.f1761b;
            if (charset2 == null || !charset2.equals(charsetForName) || !m.b.b(str)) {
                boolean z9 = false;
                boolean z10 = false;
                int i14 = 0;
                while (true) {
                    if (i14 < str.length()) {
                        char cCharAt = str.charAt(i14);
                        if (cCharAt >= '0' && cCharAt <= '9') {
                            z10 = true;
                        } else if ((cCharAt < '`' ? m.b.f1791a[cCharAt] : -1) != -1) {
                            z9 = true;
                        }
                        i14++;
                    } else {
                        if (z9) {
                            bVar = l.b.ALPHANUMERIC;
                            break;
                        }
                        if (z10) {
                            bVar = l.b.NUMERIC;
                            break;
                        }
                    }
                    bVar = bVar5;
                    break;
                }
            }
            bVar = l.b.KANJI;
            ?? aVar8 = new j.a();
            if (bVar == bVar5 && zContainsKey && (bVar2 = (j.b) j.b.f1753d.get(charsetForName.name())) != null) {
                aVar8.b(7, 4);
                aVar8.b(bVar2.f1755a[0], 8);
            }
            if (z7) {
                aVar8.b(5, 4);
            }
            aVar8.b(bVar.f1782b, 4);
            ?? aVar9 = new j.a();
            m.b.a(str, bVar, aVar9, charsetForName);
            i.a aVar10 = i.a.QR_VERSION;
            if (hashtable.containsKey(aVar10)) {
                l.d dVarB2 = l.d.b(Integer.parseInt(hashtable.get(aVar10).toString()));
                if (!m.b.c(bVar.a(dVarB2) + aVar8.f1751b + aVar9.f1751b, dVarB2, aVarValueOf)) {
                    throw new i.b("Data too big for requested version");
                }
                dVarB = dVarB2;
            } else {
                int iA = bVar.a(l.d.b(1)) + aVar8.f1751b + aVar9.f1751b;
                int i15 = 1;
                while (true) {
                    if (i15 > 40) {
                        throw new i.b("Data too big");
                    }
                    l.d dVarB3 = l.d.b(i15);
                    if (m.b.c(iA, dVarB3, aVarValueOf)) {
                        int iA2 = bVar.a(dVarB3) + aVar8.f1751b + aVar9.f1751b;
                        int i16 = 1;
                        while (true) {
                            if (i16 > 40) {
                                throw new i.b("Data too big");
                            }
                            dVarB = l.d.b(i16);
                            if (m.b.c(iA2, dVarB, aVarValueOf)) {
                                break;
                            }
                            i16++;
                            aVarValueOf = aVarValueOf;
                            i5 = i5;
                            z6 = false;
                            c3 = c3;
                            hashtable = hashtable;
                            i6 = i6;
                        }
                    } else {
                        i15++;
                        aVarValueOf = aVarValueOf;
                        i5 = i5;
                        z6 = false;
                        c3 = c3;
                        hashtable = hashtable;
                        i6 = i6;
                    }
                }
            }
            aVar = new j.a();
            int i17 = aVar8.f1751b;
            aVar.c(aVar.f1751b + i17);
            for (?? r114 = z6; r114 < i17; r114++) {
                aVar.a(aVar8.d(r114));
            }
            int length = bVar == bVar5 ? (aVar9.f1751b + 7) / 8 : str.length();
            int iA3 = bVar.a(dVarB);
            int i18 = 1 << iA3;
            if (length >= i18) {
                StringBuilder sb = new StringBuilder();
                sb.append(length);
                sb.append(" is bigger than ");
                sb.append(i18 - 1);
                throw new i.b(sb.toString());
            }
            aVar.b(length, iA3);
            int i19 = aVar9.f1751b;
            aVar.c(aVar.f1751b + i19);
            for (?? r5 = z6; r5 < i19; r5++) {
                aVar.a(aVar9.d(r5));
            }
            dVar = dVarB;
        }
        com.sgscq.vpn.handler.d1 d1Var = dVar.f1787b[aVarValueOf.ordinal()];
        l.c[] cVarArr = (l.c[]) d1Var.f808b;
        int length2 = cVarArr.length;
        boolean z11 = z6;
        ?? r115 = z11;
        ?? r116 = z11;
        while (r116 < length2) {
            int i20 = r115 + cVarArr[r116].f1783a;
            r116++;
            r115 = i20;
        }
        int i21 = r115 * d1Var.f807a;
        int i22 = dVar.f1788c;
        int i23 = i22 - i21;
        int i24 = i23 * 8;
        if (aVar.f1751b > i24) {
            throw new i.b("data bits cannot fit in the QR Code" + aVar.f1751b + " > " + i24);
        }
        for (?? r117 = z6; r117 < c3 && aVar.f1751b < i24; r117++) {
            aVar.a(z6);
        }
        int i25 = aVar.f1751b & 7;
        if (i25 > 0) {
            while (i25 < 8) {
                aVar.a(z6);
                i25++;
            }
        }
        int i26 = i23 - ((aVar.f1751b + 7) / 8);
        for (?? r118 = z6; r118 < i26; r118++) {
            aVar.b((r118 & 1) == 0 ? 236 : 17, 8);
        }
        if (aVar.f1751b != i24) {
            throw new i.b("Bits size does not equal capacity");
        }
        l.c[] cVarArr2 = (l.c[]) d1Var.f808b;
        int length3 = cVarArr2.length;
        boolean z12 = z6;
        ?? r119 = z12;
        while (r12 < length3) {
            r12 = z12;
            int i27 = cVarArr2[r12].f1783a;
            r12++;
            r119 = (r119 == true ? 1 : 0) + i27;
        }
        r12 = z12;
        if ((aVar.f1751b + 7) / 8 != i23) {
            throw new i.b("Number of bits and data bytes does not match");
        }
        ArrayList arrayList2 = new ArrayList(r119 == true ? 1 : 0);
        boolean z13 = z6;
        boolean z14 = z13;
        boolean z15 = z14;
        ?? r120 = z15;
        while (r11 < r13) {
            int[] iArr3 = new int[1];
            int[] iArr4 = new int[1];
            if (r11 >= r13) {
                r11 = z13;
                r15 = z14;
                r13 = r119;
                r14 = z15;
                throw new i.b("Block ID too large");
            }
            int i28 = i22 % (r13 == true ? 1 : 0);
            int i29 = i6;
            int i30 = (r13 == true ? 1 : 0) - i28;
            int i31 = i22 / (r13 == true ? 1 : 0);
            int i32 = i31 + 1;
            int i33 = i23 / (r13 == true ? 1 : 0);
            int i34 = i33 + 1;
            l.a aVar11 = aVarValueOf;
            int i35 = i31 - i33;
            Hashtable hashtable2 = hashtable;
            int i36 = i32 - i34;
            if (i35 != i36) {
                r11 = z13;
                r15 = z14;
                r13 = r119;
                r14 = z15;
                throw new i.b("EC bytes mismatch");
            }
            l.d dVar3 = dVar;
            if (r13 != i30 + i28) {
                r11 = z13;
                r15 = z14;
                r13 = r119;
                r14 = z15;
                throw new i.b("RS blocks mismatch");
            }
            if (i22 != ((i34 + i36) * i28) + ((i33 + i35) * i30)) {
                r11 = z13;
                r15 = z14;
                r13 = r119;
                r14 = z15;
                throw new i.b("Total bytes mismatch");
            }
            if (r11 < i30) {
                r11 = z13;
                r15 = z14;
                r13 = r119;
                r14 = z15;
                iArr3[0] = i33;
                iArr4[0] = i35;
            } else {
                r11 = z13;
                r15 = z14;
                r13 = r119;
                r14 = z15;
                iArr3[0] = i34;
                iArr4[0] = i36;
            }
            int i37 = iArr3[0];
            byte[] bArr = new byte[i37];
            int i38 = (r14 == true ? 1 : 0) * 8;
            int i39 = 0;
            ?? r121 = r13;
            while (i39 < i37) {
                int i40 = i22;
                ?? r26 = r121;
                int i41 = 0;
                int i42 = 0;
                for (int i43 = 8; i41 < i43; i43 = 8) {
                    if (aVar.d(i38)) {
                        i42 = (1 << (7 - i41)) | i42;
                    }
                    i38++;
                    i41++;
                }
                bArr[i39 + 0] = (byte) i42;
                i39++;
                r121 = r26 == true ? 1 : 0;
                i22 = i40;
            }
            int i44 = i22;
            ?? r27 = r121;
            int i45 = iArr4[0];
            int i46 = i37 + i45;
            int[] iArr5 = new int[i46];
            for (int i47 = 0; i47 < i37; i47++) {
                iArr5[i47] = bArr[i47] & 255;
            }
            k.a aVar12 = k.a.f1762g;
            ArrayList arrayList3 = new ArrayList();
            j.a aVar13 = aVar;
            arrayList3.add(new k.b(aVar12, new int[]{1}));
            if (i45 == 0) {
                throw new IllegalArgumentException("No error correction bytes");
            }
            int i48 = i46 - i45;
            if (i48 <= 0) {
                throw new IllegalArgumentException("No data bytes provided");
            }
            if (i45 >= arrayList3.size()) {
                k.b bVar8 = (k.b) arrayList3.get(arrayList3.size() - 1);
                int size = arrayList3.size();
                while (size <= i45) {
                    boolean z16 = r113 == true ? 1 : 0;
                    int i49 = aVar12.f1763a[(size - 1) + aVar12.f1768f];
                    boolean z17 = r111 == true ? 1 : 0;
                    int[] iArr6 = {1, i49};
                    if (iArr6[0] == 0) {
                        iArr = iArr3;
                        int i50 = 1;
                        while (i50 < 2 && iArr6[i50] == 0) {
                            r113 = r11;
                            r112 = r15;
                            r111 = r14;
                            r110 = r120;
                            i50++;
                        }
                        if (i50 == 2) {
                            r113 = r11;
                            r112 = r15;
                            r111 = r14;
                            r110 = r120;
                            r113 = r11;
                            r112 = r15;
                            r111 = r14;
                            r110 = r120;
                            c2 = 0;
                            iArr6 = new int[]{0};
                        } else {
                            r113 = r11;
                            r112 = r15;
                            r111 = r14;
                            r110 = r120;
                            r113 = r11;
                            r112 = r15;
                            r111 = r14;
                            r110 = r120;
                            c2 = 0;
                            int i51 = 2 - i50;
                            int[] iArr7 = new int[i51];
                            System.arraycopy(iArr6, i50, iArr7, 0, i51);
                            iArr6 = iArr7;
                        }
                    } else {
                        r113 = r11;
                        r112 = r15;
                        r111 = r14;
                        r110 = r120;
                        iArr = iArr3;
                        c2 = 0;
                    }
                    bVar8.getClass();
                    k.a aVar14 = bVar8.f1769a;
                    if (!aVar14.equals(aVar12)) {
                        throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
                    }
                    if (bVar8.b()) {
                        bVar8 = aVar14.f1765c;
                    } else if (iArr6[c2] == 0) {
                        bVar8 = aVar14.f1765c;
                    } else {
                        int[] iArr8 = bVar8.f1770b;
                        int length4 = iArr8.length;
                        int length5 = iArr6.length;
                        int[] iArr9 = new int[(length4 + length5) - 1];
                        int i52 = 0;
                        while (i52 < length4) {
                            int i53 = length4;
                            int i54 = iArr8[i52];
                            int[] iArr10 = iArr8;
                            int i55 = 0;
                            while (i55 < length5) {
                                int i56 = i52 + i55;
                                iArr9[i56] = iArr9[i56] ^ aVar14.a(i54, iArr6[i55]);
                                i55++;
                                length5 = length5;
                            }
                            i52++;
                            length4 = i53;
                            iArr8 = iArr10;
                        }
                        bVar8 = new k.b(aVar14, iArr9);
                    }
                    arrayList3.add(bVar8);
                    size++;
                    r111 = z17 ? 1 : 0;
                    r113 = z16 ? 1 : 0;
                    iArr3 = iArr;
                    r110 = r110 == true ? 1 : 0;
                    r112 = r112 == true ? 1 : 0;
                    arrayList2 = arrayList2;
                }
                r113 = r11;
                r112 = r15;
                r111 = r14;
                r110 = r120;
                arrayList = arrayList2;
                r19 = r113;
                r18 = r112;
                r17 = r111;
                r16 = r110;
            } else {
                arrayList = arrayList2;
                r19 = r11;
                r18 = r15;
                r17 = r14;
                r16 = r120;
            }
            int[] iArr11 = iArr3;
            ?? r32 = r19;
            ?? r35 = r18;
            ?? r31 = r17;
            ?? r34 = r16;
            k.b bVar9 = (k.b) arrayList3.get(i45);
            int[] iArr12 = new int[i48];
            System.arraycopy(iArr5, 0, iArr12, 0, i48);
            if (i48 == 0) {
                throw new IllegalArgumentException();
            }
            if (i48 > 1 && iArr12[0] == 0) {
                int i57 = 1;
                while (i57 < i48 && iArr12[i57] == 0) {
                    i57++;
                }
                if (i57 == i48) {
                    iArr12 = new int[]{0};
                } else {
                    int i58 = i48 - i57;
                    int[] iArr13 = new int[i58];
                    System.arraycopy(iArr12, i57, iArr13, 0, i58);
                    iArr12 = iArr13;
                }
            }
            if (i45 < 0) {
                throw new IllegalArgumentException();
            }
            int length6 = iArr12.length;
            int[] iArr14 = new int[i45 + length6];
            for (int i59 = 0; i59 < length6; i59++) {
                iArr14[i59] = aVar12.a(iArr12[i59], 1);
            }
            k.b bVar10 = new k.b(aVar12, iArr14);
            if (!aVar12.equals(bVar9.f1769a)) {
                throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
            }
            if (bVar9.b()) {
                throw new IllegalArgumentException("Divide by 0");
            }
            int[] iArr15 = bVar9.f1770b;
            int i60 = iArr15[(iArr15.length - 1) - (iArr15.length - 1)];
            if (i60 == 0) {
                throw new ArithmeticException();
            }
            int i61 = aVar12.f1763a[(aVar12.f1766d - aVar12.f1764b[i60]) - 1];
            k.b bVar11 = aVar12.f1765c;
            k.b bVarA = bVar11;
            for (int i62 = -1; bVar10.f1770b.length + i62 >= iArr15.length + i62 && !bVar10.b(); i62 = -1) {
                int[] iArr16 = bVar10.f1770b;
                int length7 = (iArr16.length + i62) - (iArr15.length + i62);
                k.b bVar12 = bVar11;
                int iA4 = aVar12.a(iArr16[(iArr16.length + i62) - (iArr16.length + i62)], i61);
                if (length7 < 0) {
                    throw new IllegalArgumentException();
                }
                k.a aVar15 = bVar9.f1769a;
                if (iA4 == 0) {
                    bVar3 = aVar15.f1765c;
                    i4 = i61;
                } else {
                    int length8 = iArr15.length;
                    int[] iArr17 = new int[length7 + length8];
                    int i63 = 0;
                    while (true) {
                        i4 = i61;
                        if (i63 >= length8) {
                            break;
                        }
                        iArr17[i63] = aVar15.a(iArr15[i63], iA4);
                        i63++;
                        i61 = i4;
                    }
                    bVar3 = new k.b(aVar15, iArr17);
                }
                if (length7 < 0) {
                    throw new IllegalArgumentException();
                }
                if (iA4 == 0) {
                    bVar4 = bVar12;
                } else {
                    int[] iArr18 = new int[length7 + 1];
                    iArr18[0] = iA4;
                    bVar4 = new k.b(aVar12, iArr18);
                }
                bVarA = bVarA.a(bVar4);
                bVar10 = bVar10.a(bVar3);
                bVar11 = bVar12;
                bVar9 = bVar9;
                i61 = i4;
            }
            int[] iArr19 = new k.b[]{bVarA, bVar10}[1].f1770b;
            int length9 = i45 - iArr19.length;
            for (int i64 = 0; i64 < length9; i64++) {
                iArr5[i48 + i64] = 0;
            }
            System.arraycopy(iArr19, 0, iArr5, i48 + length9, iArr19.length);
            byte[] bArr2 = new byte[i45];
            for (int i65 = 0; i65 < i45; i65++) {
                bArr2[i65] = (byte) iArr5[i37 + i65];
            }
            m.a aVar16 = new m.a(bArr, bArr2);
            ArrayList arrayList4 = arrayList;
            arrayList4.add(aVar16);
            int iMax = Math.max(r35 == true ? 1 : 0, i37);
            int iMax2 = Math.max(r34 == true ? 1 : 0, i45);
            int i66 = (r31 == true ? 1 : 0) + iArr11[0];
            int i67 = (r32 == true ? 1 : 0) + 1;
            arrayList2 = arrayList4;
            i6 = i29;
            hashtable = hashtable2;
            dVar = dVar3;
            r13 = r27 == true ? 1 : 0;
            i22 = i44;
            aVarValueOf = aVar11;
            aVar = aVar13;
            i23 = i23;
            r11 = i67;
            r15 = iMax;
            r14 = i66;
            r120 = iMax2;
        }
        r11 = z13;
        r15 = z14;
        r13 = r119;
        r14 = z15;
        l.d dVar4 = dVar;
        Hashtable hashtable3 = hashtable;
        int i68 = i6;
        ArrayList arrayList5 = arrayList2;
        l.a aVar17 = aVarValueOf;
        int i69 = i22;
        int i70 = i23;
        int i71 = r15 == true ? 1 : 0;
        int i72 = r120 == true ? 1 : 0;
        if (i70 != r14) {
            throw new i.b("Data bytes does not match offset");
        }
        j.a aVar18 = new j.a();
        for (int i73 = 0; i73 < i71; i73++) {
            Iterator it = arrayList5.iterator();
            while (it.hasNext()) {
                byte[] bArr3 = ((m.a) it.next()).f1789a;
                if (i73 < bArr3.length) {
                    aVar18.b(bArr3[i73], 8);
                }
            }
        }
        for (int i74 = 0; i74 < i72; i74++) {
            Iterator it2 = arrayList5.iterator();
            while (it2.hasNext()) {
                byte[] bArr4 = ((m.a) it2.next()).f1790b;
                if (i74 < bArr4.length) {
                    aVar18.b(bArr4[i74], 8);
                }
            }
        }
        if (i69 != (aVar18.f1751b + 7) / 8) {
            throw new i.b("Interleaving error: " + i69 + " and " + ((aVar18.f1751b + 7) / 8) + " differ.");
        }
        int i75 = (dVar4.f1786a * 4) + 17;
        com.sgscq.vpn.config.h hVar = new com.sgscq.vpn.config.h(i75, i75);
        i.a aVar19 = i.a.QR_MASK_PATTERN;
        if (hashtable3.containsKey(aVar19)) {
            i3 = Integer.parseInt(hashtable3.get(aVar19).toString());
            if (!(i3 >= 0 && i3 < 8)) {
                i3 = -1;
            }
        } else {
            i3 = -1;
        }
        int i76 = hVar.f579d;
        int i77 = hVar.f578c;
        if (i3 == -1) {
            i3 = -1;
            int i78 = 0;
            int i79 = Integer.MAX_VALUE;
            while (i78 < 8) {
                l.a aVar20 = aVar17;
                p(aVar18, aVar20, dVar4, i78, hVar);
                int i80 = 0;
                int iK = k(hVar, false) + k(hVar, true);
                byte[][] bArr5 = (byte[][]) hVar.f577b;
                int i81 = 0;
                int i82 = 0;
                while (i81 < i76 - 1) {
                    byte[] bArr6 = bArr5[i81];
                    int i83 = i82;
                    int i84 = i80;
                    while (i84 < i77 - 1) {
                        byte b2 = bArr6[i84];
                        int i85 = i84 + 1;
                        int i86 = i3;
                        if (b2 == bArr6[i85]) {
                            byte[] bArr7 = bArr5[i81 + 1];
                            if (b2 == bArr7[i84] && b2 == bArr7[i85]) {
                                i83++;
                            }
                        }
                        i3 = i86;
                        i84 = i85;
                    }
                    i81++;
                    i82 = i83;
                    i80 = 0;
                }
                int i87 = i3;
                int i88 = (i82 * 3) + iK;
                int i89 = 0;
                int i90 = 0;
                while (i89 < i76) {
                    int i91 = i90;
                    int i92 = 0;
                    while (i92 < i77) {
                        byte[] bArr8 = bArr5[i89];
                        int i93 = i92 + 6;
                        if (i93 < i77) {
                            aVar2 = aVar18;
                            byte b3 = 1;
                            if (bArr8[i92] == 1 && bArr8[i92 + 1] == 0 && bArr8[i92 + 2] == 1 && bArr8[i92 + 3] == 1 && bArr8[i92 + 4] == 1 && bArr8[i92 + 5] == 0 && bArr8[i93] == 1) {
                                int i94 = i92 - 4;
                                if (i94 < 0 || bArr8.length < i92) {
                                    z4 = false;
                                    break;
                                }
                                while (true) {
                                    if (i94 >= i92) {
                                        z4 = true;
                                        break;
                                    }
                                    if (bArr8[i94] == b3) {
                                        z4 = false;
                                        break;
                                    }
                                    i94++;
                                    b3 = 1;
                                }
                                if (z4) {
                                    i91++;
                                } else {
                                    int i95 = i92 + 7;
                                    int i96 = i92 + 11;
                                    if (i95 < 0 || bArr8.length < i96) {
                                        z5 = false;
                                        break;
                                    }
                                    while (true) {
                                        if (i95 >= i96) {
                                            z5 = true;
                                            break;
                                        }
                                        byte[] bArr9 = bArr8;
                                        if (bArr8[i95] == 1) {
                                            z5 = false;
                                            break;
                                        }
                                        i95++;
                                        bArr8 = bArr9;
                                    }
                                    if (z5) {
                                        i91++;
                                    }
                                }
                            }
                        } else {
                            aVar2 = aVar18;
                        }
                        int i97 = i89 + 6;
                        if (i97 < i76 && bArr5[i89][i92] == 1 && bArr5[i89 + 1][i92] == 0 && bArr5[i89 + 2][i92] == 1 && bArr5[i89 + 3][i92] == 1 && bArr5[i89 + 4][i92] == 1 && bArr5[i89 + 5][i92] == 0 && bArr5[i97][i92] == 1) {
                            int i98 = i89 - 4;
                            if (i98 < 0 || bArr5.length < i89) {
                                z2 = false;
                                break;
                            }
                            while (true) {
                                if (i98 >= i89) {
                                    z2 = true;
                                    break;
                                }
                                if (bArr5[i98][i92] == 1) {
                                    z2 = false;
                                    break;
                                }
                                i98++;
                            }
                            if (z2) {
                                i91++;
                            } else {
                                int i99 = i89 + 7;
                                int i100 = i89 + 11;
                                if (i99 < 0 || bArr5.length < i100) {
                                    z3 = false;
                                    break;
                                }
                                while (true) {
                                    if (i99 >= i100) {
                                        z3 = true;
                                        break;
                                    }
                                    if (bArr5[i99][i92] == 1) {
                                        z3 = false;
                                        break;
                                    }
                                    i99++;
                                }
                                if (z3) {
                                    i91++;
                                }
                            }
                        }
                        i92++;
                        aVar18 = aVar2;
                    }
                    i89++;
                    i90 = i91;
                }
                j.a aVar21 = aVar18;
                int i101 = (i90 * 40) + i88;
                int i102 = 0;
                int i103 = 0;
                while (i102 < i76) {
                    byte[] bArr10 = bArr5[i102];
                    int i104 = i103;
                    for (int i105 = 0; i105 < i77; i105++) {
                        if (bArr10[i105] == 1) {
                            i104++;
                        }
                    }
                    i102++;
                    i103 = i104;
                }
                int i106 = i76 * i77;
                int iAbs = (((Math.abs((i103 * 2) - i106) * 10) / i106) * 10) + i101;
                if (iAbs < i79) {
                    i3 = i78;
                    i79 = iAbs;
                } else {
                    i3 = i87;
                }
                i78++;
                aVar17 = aVar20;
                aVar18 = aVar21;
            }
        }
        p(aVar18, aVar17, dVar4, i3, hVar);
        int i107 = i68 * 2;
        int i108 = i77 + i107;
        int i109 = i107 + i76;
        int iMax3 = Math.max(512, i108);
        int iMax4 = Math.max(512, i109);
        int iMin = Math.min(iMax3 / i108, iMax4 / i109);
        int i110 = (iMax3 - (i77 * iMin)) / 2;
        int i111 = (iMax4 - (i76 * iMin)) / 2;
        if (iMax3 < 1 || iMax4 < 1) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        int i112 = (iMax3 + 31) / 32;
        int[] iArr20 = new int[i112 * iMax4];
        int i113 = i111;
        int i114 = 0;
        while (i114 < i76) {
            int i115 = i110;
            int i116 = 0;
            while (i116 < i77) {
                if (hVar.a(i116, i114) == 1) {
                    if (i113 < 0 || i115 < 0) {
                        throw new IllegalArgumentException("Left and top must be nonnegative");
                    }
                    if (iMin < 1 || iMin < 1) {
                        throw new IllegalArgumentException("Height and width must be at least 1");
                    }
                    int i117 = iMin + i115;
                    int i118 = iMin + i113;
                    if (i118 > iMax4 || i117 > iMax3) {
                        throw new IllegalArgumentException("The region must fit inside the matrix");
                    }
                    int i119 = i113;
                    while (i119 < i118) {
                        int i120 = i112 * i119;
                        int i121 = i76;
                        for (int i122 = i115; i122 < i117; i122++) {
                            int i123 = (i122 / 32) + i120;
                            iArr20[i123] = iArr20[i123] | (1 << (i122 & 31));
                        }
                        i119++;
                        i76 = i121;
                    }
                }
                i116++;
                i115 += iMin;
                i76 = i76;
            }
            i114++;
            i113 += iMin;
        }
        int i124 = 512;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(512, 512, Bitmap.Config.RGB_565);
        int i125 = B;
        int i126 = y;
        int i127 = 0;
        while (i127 < i124) {
            int i128 = 0;
            while (i128 < i124) {
                bitmapCreateBitmap.setPixel(i128, i127, ((iArr20[(i128 / 32) + (i127 * i112)] >>> (i128 & 31)) & 1) != 0 ? i125 : i126);
                i128++;
                i124 = 512;
            }
            i127++;
            i124 = 512;
        }
        if (i2 == i124) {
            return bitmapCreateBitmap;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateBitmap, i2, i2, true);
        bitmapCreateBitmap.recycle();
        return bitmapCreateScaledBitmap;
    }

    public static int V0(int i2, byte[] bArr) {
        a1(bArr, i2, 2);
        return (bArr[i2 + 1] & 255) | ((bArr[i2] & 255) << 8);
    }

    public static void W(List list) {
        Iterator it = list.iterator();
        if (it.hasNext()) {
            c.a.v(it.next());
            throw null;
        }
    }

    public static String W0(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[8192];
            while (true) {
                int i2 = fileInputStream.read(bArr);
                if (i2 == -1) {
                    return new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8);
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            }
        } finally {
            fileInputStream.close();
        }
    }

    public static String X(Context context) {
        return o0.a(context, "magic_buffs.json");
    }

    public static void X0(int i2, String str, Map map) {
        Map linkedHashMap;
        String str2;
        if (i2 <= 0) {
            return;
        }
        Object obj = map.get("consumable_stats");
        if (obj instanceof Map) {
            linkedHashMap = (Map) obj;
        } else {
            linkedHashMap = new LinkedHashMap();
            map.put("consumable_stats", linkedHashMap);
        }
        if (!"600007".equals(str)) {
            str2 = "600008".equals(str) ? "red_tea_used" : "baozi_used";
            Y0(map);
        }
        linkedHashMap.put(str2, Long.valueOf(C0(linkedHashMap.get(str2)) + ((long) i2)));
        Y0(map);
    }

    public static int Y(Activity activity) {
        int identifier;
        if (!(activity.getPackageManager().hasSystemFeature("android.software.leanback") || (activity.getResources().getConfiguration().uiMode & 15) == 4) && (identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android")) > 0) {
            return activity.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static boolean Y0(Map map) {
        Map linkedHashMap;
        Object obj = map.get("consumable_stats");
        if (obj instanceof Map) {
            linkedHashMap = (Map) obj;
        } else {
            linkedHashMap = new LinkedHashMap();
            map.put("consumable_stats", linkedHashMap);
        }
        long jU0 = u0("600007", map);
        long jC0 = C0(linkedHashMap.get("baozi_used"));
        long jU1 = u0("600008", map);
        long jC1 = C0(linkedHashMap.get("red_tea_used"));
        return Q0(u0("600029", map), "yellow_wine_current", linkedHashMap) | Q0(jC0, "baozi_used", linkedHashMap) | Q0(jU0, "baozi_current", linkedHashMap) | false | Q0(jU0 + jC0, "baozi_total", linkedHashMap) | Q0(jU1, "red_tea_current", linkedHashMap) | Q0(jC1, "red_tea_used", linkedHashMap) | Q0(jU1 + jC1, "red_tea_total", linkedHashMap) | Q0(u0("600028", map), "peach_current", linkedHashMap);
    }

    public static SimpleDateFormat Z(int i2, int i3) {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        if (i2 == 0) {
            str = "EEEE, MMMM d, yyyy";
        } else if (i2 == 1) {
            str = "MMMM d, yyyy";
        } else if (i2 == 2) {
            str = "MMM d, yyyy";
        } else {
            if (i2 != 3) {
                throw new IllegalArgumentException(a.b0.a("Unknown DateFormat style: ", i2));
            }
            str = "M/d/yy";
        }
        sb.append(str);
        sb.append(" ");
        if (i3 == 0 || i3 == 1) {
            str2 = "h:mm:ss a z";
        } else if (i3 == 2) {
            str2 = "h:mm:ss a";
        } else {
            if (i3 != 3) {
                throw new IllegalArgumentException(a.b0.a("Unknown DateFormat style: ", i3));
            }
            str2 = "h:mm a";
        }
        sb.append(str2);
        return new SimpleDateFormat(sb.toString(), Locale.US);
    }

    public static boolean Z0(Activity activity, int i2) {
        if (activity == null || activity.isFinishing() || Build.VERSION.SDK_INT < 33) {
            return false;
        }
        try {
            activity.requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, i2);
            return true;
        } catch (RuntimeException e2) {
            z2.g("NotifyPermission", "申请通知权限失败: ".concat(e2.getClass().getSimpleName()));
            return false;
        }
    }

    public static void a(EditText editText, ViewGroup viewGroup) {
        viewGroup.setDescendantFocusability(262144);
        editText.requestFocus();
        ((InputMethodManager) editText.getContext().getSystemService("input_method")).showSoftInput(editText, 0);
    }

    public static boolean a0(w1 w1Var, String str) {
        double[] dArrM0 = w1Var.M0(1, 1, str);
        return dArrM0 != null && dArrM0.length > 4;
    }

    public static void a1(byte[] bArr, int i2, int i3) {
        if (i2 < 0 || i3 < 0 || i2 > bArr.length - i3) {
            throw new IllegalArgumentException("DNS 响应越界");
        }
    }

    public static void b(long j2, Map map) {
        map.put("user_coin", Long.valueOf(x(map) + j2));
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0039  */
    /* JADX WARN: Code duplicated, block: B:16:0x0041  */
    public static LinkedHashMap b0(Map map, LinkedHashMap linkedHashMap, boolean z2) {
        ArrayList arrayList;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(map);
        String strT = T(linkedHashMap2, "general_pk_id", "pk_id");
        if (z2) {
            if ((strT.isEmpty() || "0".equals(strT) || "null".equalsIgnoreCase(strT)) ? false : true) {
                arrayList = w((List) linkedHashMap.get(strT));
            } else if (!linkedHashMap2.containsKey("skill_list")) {
                arrayList = new ArrayList();
            }
            R0(arrayList, linkedHashMap2);
        } else if (!linkedHashMap2.containsKey("skill_list")) {
            arrayList = new ArrayList();
            R0(arrayList, linkedHashMap2);
        }
        return linkedHashMap2;
    }

    public static p1 b1(w1 w1Var, String str, String str2, String str3, String str4) {
        Map mapD0 = d0(w1Var, str);
        if (mapD0 != null) {
            return new p1(r1("legacy_item_id", str2, mapD0), r1("legacy_name", str3, mapD0), r1("legacy_desc", str4, mapD0));
        }
        p1 p1VarD1 = d1(w1Var, str, str3, str4);
        String str5 = p1VarD1.f1263a;
        return (str5 == null || str5.isEmpty()) ? new p1(str2, str3, str4) : p1VarD1;
    }

    public static void c(int i2, String str, Map map) {
        if (map == null || i2 <= 0) {
            return;
        }
        if ("600026".equals(str) || "600002".equals(str)) {
            b(i2, map);
        } else if (p0(str)) {
            map.put("user_gold", Integer.valueOf(w1.l2(String.valueOf(map.get("user_gold")), 0) + i2));
        }
    }

    public static ArrayList c0(List list, Map map) {
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMapO1 = o1(map);
        boolean z2 = map.containsKey("Skill");
        if (list == null) {
            return arrayList;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(b0((Map) it.next(), linkedHashMapO1, z2));
        }
        return arrayList;
    }

    public static p1 c1(w1 w1Var, String str, List list, String str2, String str3, String str4) {
        int i2;
        List listAsList;
        if (str == null || str.isEmpty()) {
            return new p1(str2, str3, str4);
        }
        ArrayList arrayList = new ArrayList();
        if (w1Var.f1506n == null) {
            w1Var.R1();
        }
        Iterator it = w1Var.f1506n.iterator();
        while (true) {
            i2 = 1;
            if (!it.hasNext()) {
                break;
            }
            String str5 = (String) it.next();
            Map mapC1 = w1Var.c1(str5);
            if (mapC1 != null && c.a.f(mapC1, "item_type", "0", 0) == 1) {
                Object obj = mapC1.get("effect_value");
                int iE = -1;
                if (obj instanceof Map) {
                    Object obj2 = ((Map) obj).get("add_list");
                    if (obj2 instanceof List) {
                        listAsList = (List) obj2;
                    } else if (obj2 instanceof Map) {
                        listAsList = Arrays.asList(obj2);
                    }
                    if (listAsList.size() == 1 && (listAsList.get(0) instanceof Map)) {
                        Map map = (Map) listAsList.get(0);
                        if (c.a.A(map, "id", str)) {
                            iE = c.a.e(map, "type", -1);
                        }
                    }
                }
                int iIndexOf = list.indexOf(Integer.valueOf(iE));
                if (iIndexOf >= 0) {
                    arrayList.add(new o1(str5, iIndexOf));
                }
            }
        }
        if (arrayList.isEmpty()) {
            return new p1(str2, str3, str4);
        }
        arrayList.sort(Comparator.comparingInt(new n1(i2)).thenComparing(new n.a(3)));
        return new p1(((o1) arrayList.get(0)).f1239a, str3, str4);
    }

    public static void d(String str, ArrayList arrayList) {
        w1 w1VarA1;
        Map mapJ0;
        if (str == null || str.isEmpty() || "0".equals(str) || arrayList.contains(str) || (mapJ0 = (w1VarA1 = w1.a1(null)).J0(str)) == null || !w1.p1("1", mapJ0) || !a0(w1VarA1, str)) {
            return;
        }
        arrayList.add(str);
    }

    public static Map d0(w1 w1Var, String str) {
        Map mapF0;
        if (w1Var == null || str == null || str.isEmpty() || (mapF0 = w1Var.F0(str)) == null || !Boolean.TRUE.equals(mapF0.get("display_indexed"))) {
            return null;
        }
        return mapF0;
    }

    public static p1 d1(w1 w1Var, String str, String str2, String str3) {
        int i2;
        int i3;
        Map mapC1;
        if (w1Var == null || str == null || str.isEmpty()) {
            return new p1("", str2, str3);
        }
        String strA0 = w1Var.A0(str);
        if (strA0 == null || strA0.isEmpty() || strA0.equals(str)) {
            return new p1("", str2, str3);
        }
        ArrayList arrayList = new ArrayList();
        if (w1Var.f1506n == null) {
            w1Var.R1();
        }
        Iterator it = w1Var.f1506n.iterator();
        while (true) {
            i2 = 2;
            i3 = 0;
            if (!it.hasNext()) {
                break;
            }
            String str4 = (String) it.next();
            if ((str4 != null && str4.length() == 7 && (str4.startsWith("620") || str4.startsWith("630"))) && (mapC1 = w1Var.c1(str4)) != null && c.a.f(mapC1, "item_type", "0", 0) == 2) {
                String strD1 = w1Var.d1(str4);
                String strY0 = w1Var.Y0(String.valueOf(mapC1.getOrDefault("desc", "")));
                if ((((strD1 != null && strD1.contains(strA0)) || strY0.contains(strA0)) ? 1 : 0) != 0) {
                    arrayList.add(new p1(str4, strD1, strY0));
                }
            }
        }
        if (arrayList.isEmpty()) {
            return new p1("", str2, str3);
        }
        arrayList.sort(Comparator.comparingInt(new n1(i3)).thenComparing(new n.a(i2)));
        return (p1) arrayList.get(0);
    }

    public static void e(Map map, int i2, int i3, long j2) {
        long jValueOf;
        int iMax = Math.max(0, i2);
        map.put("user_energy", Integer.valueOf(iMax));
        if (iMax >= i3) {
            map.put("user_energy_date", 0);
            jValueOf = 0L;
        } else {
            int iF0 = F0(U0(0, "user_energy_date", map));
            if (iF0 <= 0 && (iF0 = F0(1800)) <= 0) {
                iF0 = 300;
            }
            map.put("user_energy_date", Integer.valueOf(iF0));
            jValueOf = Long.valueOf(j2);
        }
        map.put("user_energy_recover_updated_at", jValueOf);
    }

    public static void e0(Context context) {
        String[] strArr = (context.getResources().getConfiguration().uiMode & 48) == 32 ? v : w;
        String str = strArr[0];
        f1284k = strArr[1];
        f1285l = strArr[2];
        f1286m = strArr[3];
        f1287n = strArr[4];
        f1288o = strArr[5];
        f1289p = strArr[6];
        f1290q = strArr[7];
        r = strArr[8];
        s = strArr[9];
        t = strArr[10];
        u = strArr[11];
        x = Color.parseColor(str);
        y = Color.parseColor(f1284k);
        z = Color.parseColor(f1285l);
        A = Color.parseColor(f1286m);
        B = Color.parseColor(f1287n);
        C = Color.parseColor(f1288o);
        D = Color.parseColor(f1289p);
        E = Color.parseColor(f1290q);
        F = Color.parseColor(r);
        G = Color.parseColor(s);
        H = Color.parseColor(t);
        I = Color.parseColor(u);
    }

    public static LinkedHashMap e1(int i2, int i3, String str) {
        return z0("pk_id", "", "id", str, "item_id", str, "num", Integer.valueOf(i2), "item_num", Integer.valueOf(i2), "item_type", Integer.valueOf(i3), "type", 5, "is_new", Boolean.TRUE);
    }

    public static void f(Map map, int i2, int i3, int i4, long j2) {
        long jValueOf;
        int iMax = Math.max(0, i2);
        map.put("user_power", Integer.valueOf(iMax));
        if (iMax >= i3) {
            map.put("user_power_date", 0);
            jValueOf = 0L;
        } else {
            int iF0 = F0(U0(0, "user_power_date", map));
            if (iF0 <= 0 && (iF0 = F0(i4)) <= 0) {
                iF0 = 300;
            }
            map.put("user_power_date", Integer.valueOf(iF0));
            jValueOf = Long.valueOf(j2);
        }
        map.put("user_power_recover_updated_at", jValueOf);
    }

    public static int f0(int i2, String str, Map map) {
        return c.a.e(map, str, i2);
    }

    public static int f1(int i2) {
        if (i2 <= 10) {
            return 1000;
        }
        if (i2 <= 100) {
            return 500;
        }
        return i2 <= 1000 ? 200 : 100;
    }

    public static Intent g(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            return new Intent("android.settings.APP_NOTIFICATION_SETTINGS").putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
        }
        return new Intent("android.settings.APPLICATION_DETAILS_SETTINGS").setData(Uri.parse("package:" + context.getPackageName()));
    }

    public static int g0(Object obj) {
        if (obj == null) {
            return 0;
        }
        try {
            return (int) Double.parseDouble(String.valueOf(obj));
        } catch (Exception unused) {
            return 0;
        }
    }

    public static List g1(w1 w1Var, List list) {
        if (list == null || list.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Map mapK1 = w1Var.k1(str);
            boolean z2 = false;
            if (mapK1 != null) {
                int iE = c.a.e(mapK1, "grade", 0);
                int iE2 = c.a.e(mapK1, "is_open", 1);
                if (iE == 1 && iE2 == 1) {
                    z2 = true;
                }
            }
            if (z2) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public static void h(Map map, boolean z2) {
        if (!z2 || map == null) {
            return;
        }
        Object obj = map.get("init");
        if (obj instanceof Map) {
            ((Map) obj).put("skipRounds", 1);
        }
    }

    public static boolean h0(String str) {
        return ("600026".equals(str) || "600002".equals(str)) || p0(str);
    }

    public static void h1(int i2, Context context, boolean z2) {
        if (context == null) {
            return;
        }
        context.getApplicationContext().getSharedPreferences("sgscq_config_v2", 0).edit().putBoolean("elite_opponent_enabled", z2).putInt("elite_opponent_level", E0(i2)).apply();
    }

    public static void i(Button button, GradientDrawable gradientDrawable, GradientDrawable gradientDrawable2) {
        button.setFocusable(true);
        button.setBackground(gradientDrawable);
        button.setOnFocusChangeListener(new f1(gradientDrawable2, gradientDrawable, 1));
    }

    public static boolean i0(Context context) {
        if (context == null) {
            return false;
        }
        try {
            return new h(0, context).d(6);
        } catch (RuntimeException unused) {
            return false;
        }
    }

    public static String i1(int i2) {
        List listN = n();
        return (String) listN.get(Math.floorMod(i2, listN.size()));
    }

    public static void j(LinearLayout linearLayout, GradientDrawable gradientDrawable, GradientDrawable gradientDrawable2) {
        linearLayout.setFocusable(true);
        linearLayout.setFocusableInTouchMode(false);
        linearLayout.setClickable(true);
        linearLayout.setBackground(gradientDrawable);
        linearLayout.setOnFocusChangeListener(new f1(gradientDrawable2, gradientDrawable, 0));
        linearLayout.setOnKeyListener(new g1());
    }

    public static boolean j0(String str, Map map) {
        if (map != null && str != null && !str.isEmpty()) {
            for (Map map2 : w1.f0("EvolutionInfo", map)) {
                if (c.a.B(map2, "general_id", "", str) && o0(map2.get("status"))) {
                    return true;
                }
            }
            for (Map map3 : w1.f0("General", map)) {
                if (c.a.C(map3, "id", "", "general_id", str) && o0(map3.get("evolution_image_status"))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String j1(int i2) {
        ArrayList arrayListZ1 = z1(false);
        if (arrayListZ1.isEmpty()) {
            arrayListZ1 = z1(true);
        }
        if (arrayListZ1.isEmpty()) {
            arrayListZ1 = z();
        }
        if (arrayListZ1.isEmpty()) {
            w1 w1VarA1 = w1.a1(null);
            ArrayList arrayList = new ArrayList();
            for (String str : w1VarA1.i0()) {
                if (w1VarA1.J0(str) != null && a0(w1VarA1, str)) {
                    arrayList.add(str);
                }
            }
            Collections.sort(arrayList);
            arrayListZ1 = arrayList;
        }
        if (arrayListZ1.isEmpty() && w1.a1(null).i0().isEmpty()) {
            arrayListZ1 = new ArrayList();
            Collections.addAll(arrayListZ1, f1274a);
        }
        return arrayListZ1.isEmpty() ? "" : (String) arrayListZ1.get(Math.floorMod(i2, arrayListZ1.size()));
    }

    public static int k(com.sgscq.vpn.config.h hVar, boolean z2) {
        int i2 = hVar.f579d;
        int i3 = hVar.f578c;
        int i4 = z2 ? i2 : i3;
        if (z2) {
            i2 = i3;
        }
        byte[][] bArr = (byte[][]) hVar.f577b;
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            byte b2 = -1;
            int i7 = 0;
            for (int i8 = 0; i8 < i2; i8++) {
                byte b3 = z2 ? bArr[i6][i8] : bArr[i8][i6];
                if (b3 == b2) {
                    i7++;
                } else {
                    if (i7 >= 5) {
                        i5 += (i7 - 5) + 3;
                    }
                    i7 = 1;
                    b2 = b3;
                }
            }
            if (i7 >= 5) {
                i5 = (i7 - 5) + 3 + i5;
            }
        }
        return i5;
    }

    public static boolean k0(Context context) {
        if (context == null) {
            return true;
        }
        try {
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            return powerManager != null && powerManager.isIgnoringBatteryOptimizations(context.getPackageName());
        } catch (RuntimeException unused) {
            return true;
        }
    }

    public static String k1(byte[] bArr) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(bArr);
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            for (byte b2 : bArrDigest) {
                sb.append(String.format(Locale.US, "%02x", Integer.valueOf(b2 & 255)));
            }
            return sb.toString();
        } catch (Exception e2) {
            throw new IllegalStateException("SHA-256 unavailable", e2);
        }
    }

    public static void l(Activity activity) {
        boolean z2 = activity.getPackageManager().hasSystemFeature("android.software.leanback") || (activity.getResources().getConfiguration().uiMode & 15) == 4;
        Window window = activity.getWindow();
        if (z2) {
            window.addFlags(1024);
            return;
        }
        window.clearFlags(1024);
        window.setStatusBarColor(x);
        if ((activity.getResources().getConfiguration().uiMode & 48) == 32) {
            return;
        }
        window.getDecorView().setSystemUiVisibility(8192);
    }

    public static boolean l0(w1 w1Var, String str) {
        Map mapJ0 = w1Var.J0(str);
        String strT0 = w1Var.T0(str);
        return (mapJ0 == null || !a0(w1Var, str) || strT0 == null || strT0.isEmpty() || "0".equals(strT0) || w1Var.k1(strT0) == null) ? false : true;
    }

    public static void l1(Context context, String str) {
        if (context == null || str == null || str.trim().isEmpty()) {
            return;
        }
        new Handler(Looper.getMainLooper()).post(new d(context.getApplicationContext(), str, 16));
    }

    public static String m(Object[] objArr) {
        StringBuilder sb = new StringBuilder("[");
        for (int i2 = 0; i2 < objArr.length; i2++) {
            if (i2 > 0) {
                sb.append(",");
            }
            sb.append(s1(objArr[i2]));
        }
        sb.append("]");
        return sb.toString();
    }

    public static boolean m0(Map map) {
        return map != null && c.a.e(map, "grade", 0) == 1;
    }

    public static void m1(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        new AlertDialog.Builder(activity).setTitle("后台保活设置").setMessage("系统会在后台待机几分钟后清理掉本应用，VPN 会随之中断（这是厂商省电策略，不是应用崩溃）。按下面两步放开限制后可以稳定后台运行：\n\n1. 点「去放开限制」，在系统弹框里选择允许，把本应用加入电池优化白名单。\n\n2. 荣耀 MagicOS（其它品牌路径类似）：设置 → 应用 → 应用启动管理 → 找到「三传续命」→ 关闭「自动管理」→ 打开「允许自启动」「允许关联启动」「允许后台活动」三个开关。\n（设置页「后台保活」里的「自启动/后台管理」可以直接跳到这一页；找不到时在桌面下拉搜索「应用启动管理」。）\n\n3. 另外几项能进一步降低被清理的概率：\n· 最近任务里给「三传续命」加锁（下拉卡片点锁图标）\n· 设置 → 电池 → 更多电池设置 → 打开「休眠时始终保持网络连接」\n· 关闭「省电模式 / 超级省电」\n· 不要关闭「智慧运存」（荣耀工程师建议保持开启）\n\n游戏过程中若再次看到本对话框，说明系统又清理过一次，请检查上面两项是否被系统重置。").setPositiveButton("去放开限制", new z1(activity, 0)).setNegativeButton("稍后", new z1(activity, 1)).show();
    }

    public static List n() {
        w1 w1VarA1 = w1.a1(null);
        ArrayList arrayListI0 = w1VarA1.i0();
        ArrayList arrayListK0 = w1VarA1.k0();
        w1VarA1.T(true);
        ArrayList arrayList = w1VarA1.v;
        o5 o5Var = f1275b;
        if (o5Var != null && o5.a(o5Var, w1VarA1, arrayListI0, arrayListK0, arrayList)) {
            return o5Var.f1256h;
        }
        synchronized (p5.class) {
            o5 o5Var2 = f1275b;
            if (o5Var2 != null && o5.a(o5Var2, w1VarA1, arrayListI0, arrayListK0, arrayList)) {
                return o5Var2.f1256h;
            }
            List listUnmodifiableList = Collections.unmodifiableList(new ArrayList(o()));
            f1275b = new o5(w1VarA1, arrayListI0, arrayListK0, arrayList, listUnmodifiableList);
            return listUnmodifiableList;
        }
    }

    public static boolean n0(int i2) {
        return i2 == -1;
    }

    public static int n1(Map map) {
        int iG0 = g0(map.get("skill_position"));
        if (iG0 <= 0) {
            iG0 = g0(map.get("position"));
        }
        return iG0 <= 0 ? g0(map.get("pos")) : iG0;
    }

    public static ArrayList o() {
        ArrayList arrayListY1 = y1(false);
        if (arrayListY1.isEmpty()) {
            arrayListY1 = y1(true);
        }
        if (arrayListY1.isEmpty()) {
            arrayListY1 = z();
        }
        if (arrayListY1.isEmpty()) {
            w1 w1VarA1 = w1.a1(null);
            ArrayList arrayList = new ArrayList();
            for (String str : w1VarA1.i0()) {
                if (l0(w1VarA1, str)) {
                    arrayList.add(str);
                }
            }
            Collections.sort(arrayList);
            arrayListY1 = arrayList;
        }
        if (!arrayListY1.isEmpty() || !w1.a1(null).i0().isEmpty()) {
            return arrayListY1;
        }
        ArrayList arrayList2 = new ArrayList();
        Collections.addAll(arrayList2, f1274a);
        return arrayList2;
    }

    public static boolean o0(Object obj) {
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue() != 0.0d;
        }
        String strTrim = obj == null ? "" : String.valueOf(obj).trim();
        return "1".equals(strTrim) || "true".equalsIgnoreCase(strTrim);
    }

    public static LinkedHashMap o1(Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (map != null && map.containsKey("Skill")) {
            for (Map map2 : w1.f0("Skill", map)) {
                String strT = T(map2, "general_pk_id");
                if (((strT.isEmpty() || "0".equals(strT) || "null".equalsIgnoreCase(strT)) ? false : true) && n1(map2) > 0) {
                    ((List) linkedHashMap.computeIfAbsent(strT, new n.a(11))).add(new LinkedHashMap(map2));
                }
            }
            Comparator comparatorThenComparing = Comparator.comparingInt(new n1(2)).thenComparing(new n.a(12));
            Iterator it = linkedHashMap.values().iterator();
            while (it.hasNext()) {
                ((List) it.next()).sort(comparatorThenComparing);
            }
        }
        return linkedHashMap;
    }

    /* JADX WARN: Code duplicated, block: B:108:0x0229  */
    /* JADX WARN: Code duplicated, block: B:110:0x022c  */
    public static void p(j.a aVar, l.a aVar2, l.d dVar, int i2, com.sgscq.vpn.config.h hVar) throws i.b {
        boolean zD;
        int i3;
        int i4;
        boolean z2;
        int i5;
        int i6;
        int i7;
        int i8 = 0;
        for (byte[] bArr : (byte[][]) hVar.f577b) {
            Arrays.fill(bArr, (byte) -1);
        }
        int length = R[0].length;
        I(0, 0, hVar);
        int i9 = hVar.f578c;
        int i10 = i9 - length;
        I(i10, 0, hVar);
        I(0, i10, hVar);
        H(0, 7, hVar);
        int i11 = i9 - 8;
        H(i11, 7, hVar);
        H(0, i11, hVar);
        J(7, 0, hVar);
        int i12 = hVar.f579d;
        int i13 = i12 - 7;
        J(i13 - 1, 0, hVar);
        J(7, i13, hVar);
        int i14 = i12 - 8;
        if (hVar.a(8, i14) == 0) {
            throw new i.b();
        }
        hVar.b(8, i14, 1);
        int i15 = 5;
        int i16 = dVar.f1786a;
        if (i16 >= 2) {
            int[] iArr = T[i16 - 1];
            int length2 = iArr.length;
            int i17 = 0;
            while (i8 < length2) {
                int i18 = iArr[i8];
                if (i18 >= 0) {
                    int length3 = iArr.length;
                    while (i17 < length3) {
                        int i19 = iArr[i17];
                        if (i19 >= 0 && n0(hVar.a(i19, i18))) {
                            int i20 = i19 - 2;
                            int i21 = i18 - 2;
                            int i22 = 0;
                            while (i22 < i15) {
                                int[] iArr2 = S[i22];
                                int i23 = length2;
                                int i24 = 0;
                                while (i24 < i15) {
                                    hVar.b(i20 + i24, i21 + i22, iArr2[i24]);
                                    i24++;
                                    i15 = 5;
                                    i18 = i18;
                                    length3 = length3;
                                }
                                i22++;
                                i15 = 5;
                                length2 = i23;
                            }
                        }
                        i17++;
                        i15 = 5;
                        iArr = iArr;
                        length2 = length2;
                        i18 = i18;
                        length3 = length3;
                    }
                }
                i8++;
                i17 = 0;
                i15 = 5;
                iArr = iArr;
                length2 = length2;
            }
        }
        int i25 = 8;
        while (i25 < i11) {
            int i26 = i25 + 1;
            int i27 = i26 % 2;
            if (n0(hVar.a(i25, 6))) {
                hVar.b(i25, 6, i27);
            }
            if (n0(hVar.a(6, i25))) {
                hVar.b(6, i25, i27);
            }
            i25 = i26;
        }
        j.a aVar3 = new j.a();
        if (!(i2 >= 0 && i2 < 8)) {
            throw new i.b("Invalid mask pattern");
        }
        int i28 = (aVar2.f1773a << 3) | i2;
        aVar3.b(i28, 5);
        aVar3.b(r(i28, 1335), 10);
        j.a aVar4 = new j.a();
        aVar4.b(21522, 15);
        if (aVar3.f1751b != aVar4.f1751b) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i29 = 0;
        while (true) {
            int[] iArr3 = aVar3.f1750a;
            if (i29 >= iArr3.length) {
                break;
            }
            iArr3[i29] = iArr3[i29] ^ aVar4.f1750a[i29];
            i29++;
        }
        if (aVar3.f1751b != 15) {
            throw new i.b("should not happen but we got: " + aVar3.f1751b);
        }
        int i30 = 0;
        while (true) {
            int i31 = aVar3.f1751b;
            if (i30 >= i31) {
                break;
            }
            boolean zD2 = aVar3.d((i31 - 1) - i30);
            int[] iArr4 = U[i30];
            hVar.c(zD2, iArr4[0], iArr4[1]);
            int i32 = 8;
            if (i30 < 8) {
                i7 = 8;
                i32 = (i9 - i30) - 1;
            } else {
                i7 = (i30 - 8) + i13;
            }
            hVar.c(zD2, i32, i7);
            i30++;
        }
        if (i16 >= 7) {
            j.a aVar5 = new j.a();
            aVar5.b(i16, 6);
            aVar5.b(r(i16, 7973), 12);
            if (aVar5.f1751b != 18) {
                throw new i.b("should not happen but we got: " + aVar5.f1751b);
            }
            int i33 = 17;
            for (int i34 = 0; i34 < 6; i34++) {
                for (int i35 = 0; i35 < 3; i35++) {
                    boolean zD3 = aVar5.d(i33);
                    i33--;
                    int i36 = (i12 - 11) + i35;
                    hVar.c(zD3, i34, i36);
                    hVar.c(zD3, i36, i34);
                }
            }
        }
        int i37 = i9 - 1;
        int i38 = i12 - 1;
        int i39 = -1;
        int i40 = 0;
        while (i37 > 0) {
            if (i37 == 6) {
                i37--;
            }
            while (i38 >= 0 && i38 < i12) {
                for (int i41 = 0; i41 < 2; i41++) {
                    int i42 = i37 - i41;
                    if (n0(hVar.a(i42, i38))) {
                        if (i40 < aVar.f1751b) {
                            zD = aVar.d(i40);
                            i40++;
                        } else {
                            zD = false;
                        }
                        if (i2 != -1) {
                            switch (i2) {
                                case 0:
                                    i3 = i38 + i42;
                                    z2 = true;
                                    i4 = i3 & 1;
                                    if (i4 != 0) {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        zD = !zD;
                                    }
                                    break;
                                case 1:
                                    i3 = i38;
                                    z2 = true;
                                    i4 = i3 & 1;
                                    if (i4 != 0) {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        zD = !zD;
                                    }
                                    break;
                                case 2:
                                    i4 = i42 % 3;
                                    z2 = true;
                                    if (i4 != 0) {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        zD = !zD;
                                    }
                                    break;
                                case 3:
                                    i4 = (i38 + i42) % 3;
                                    z2 = true;
                                    if (i4 != 0) {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        zD = !zD;
                                    }
                                    break;
                                case 4:
                                    i3 = (i38 / 2) + (i42 / 3);
                                    z2 = true;
                                    i4 = i3 & 1;
                                    if (i4 != 0) {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        zD = !zD;
                                    }
                                    break;
                                case 5:
                                    int i43 = i38 * i42;
                                    i4 = (i43 % 3) + (i43 & 1);
                                    z2 = true;
                                    if (i4 != 0) {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        zD = !zD;
                                    }
                                    break;
                                case 6:
                                    int i44 = i38 * i42;
                                    i5 = i44 & 1;
                                    i6 = i44 % 3;
                                    i3 = i6 + i5;
                                    z2 = true;
                                    i4 = i3 & 1;
                                    if (i4 != 0) {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        zD = !zD;
                                    }
                                    break;
                                case 7:
                                    i6 = (i38 * i42) % 3;
                                    i5 = (i38 + i42) & 1;
                                    i3 = i6 + i5;
                                    z2 = true;
                                    i4 = i3 & 1;
                                    if (i4 != 0) {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        zD = !zD;
                                    }
                                    break;
                                default:
                                    throw new IllegalArgumentException(a.b0.a("Invalid mask pattern: ", i2));
                            }
                        }
                        hVar.c(zD, i42, i38);
                    }
                }
                i38 += i39;
            }
            i39 = -i39;
            i38 += i39;
            i37 -= 2;
        }
        if (i40 == aVar.f1751b) {
            return;
        }
        throw new i.b("Not all bits consumed: " + i40 + '/' + aVar.f1751b);
    }

    public static boolean p0(String str) {
        return "600027".equals(str) || "600034".equals(str);
    }

    public static int p1(int i2, byte[] bArr) {
        boolean[] zArr = new boolean[bArr.length];
        int i3 = -1;
        int i4 = 0;
        while (true) {
            a1(bArr, i2, 1);
            if (zArr[i2] || (i4 = i4 + 1) > bArr.length) {
                break;
            }
            zArr[i2] = true;
            int i5 = bArr[i2] & 255;
            if (i5 == 0) {
                return i3 >= 0 ? i3 : i2 + 1;
            }
            int i6 = i5 & 192;
            if (i6 == 192) {
                a1(bArr, i2, 2);
                int i7 = ((i5 & 63) << 8) | (bArr[i2 + 1] & 255);
                if (i7 >= bArr.length) {
                    throw new IllegalArgumentException("DNS 名称压缩指针越界");
                }
                if (i3 < 0) {
                    i3 = i2 + 2;
                }
                i2 = i7;
            } else {
                if (i6 != 0 || i5 > 63) {
                    throw new IllegalArgumentException("DNS 名称标签无效");
                }
                a1(bArr, i2 + 1, i5);
                i2 += i5 + 1;
            }
        }
        throw new IllegalArgumentException("DNS 名称压缩指针循环");
    }

    public static byte[] q(int i2, int i3, String str) {
        String strD0 = D0(str);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(64);
        D1(byteArrayOutputStream, i2);
        D1(byteArrayOutputStream, 256);
        D1(byteArrayOutputStream, 1);
        D1(byteArrayOutputStream, 0);
        D1(byteArrayOutputStream, 0);
        D1(byteArrayOutputStream, 0);
        for (String str2 : strD0.split("\\.")) {
            byte[] bytes = str2.getBytes(StandardCharsets.US_ASCII);
            if (bytes.length == 0 || bytes.length > 63) {
                throw new IllegalArgumentException("DNS 域名标签无效");
            }
            byteArrayOutputStream.write(bytes.length);
            byteArrayOutputStream.write(bytes, 0, bytes.length);
        }
        byteArrayOutputStream.write(0);
        D1(byteArrayOutputStream, i3);
        D1(byteArrayOutputStream, 1);
        return byteArrayOutputStream.toByteArray();
    }

    public static boolean q0(Context context) {
        if (context == null || Build.VERSION.SDK_INT < 33) {
            return true;
        }
        try {
            return context.checkSelfPermission("android.permission.POST_NOTIFICATIONS") == 0;
        } catch (RuntimeException unused) {
            return true;
        }
    }

    public static double q1(int i2, int i3, int i4) {
        double d2 = Q[Math.max(1, Math.min(54, i2))];
        double dT = t(i2);
        if (i4 <= 1 || d2 == dT) {
            return d2;
        }
        return Math.pow(dT / d2, (((double) Math.max(1, Math.min(i4, i3))) - 1.0d) / (((double) i4) - 1.0d)) * d2;
    }

    public static int r(int i2, int i3) {
        if (i3 == 0) {
            throw new IllegalArgumentException("0 polynomial");
        }
        int iNumberOfLeadingZeros = 32 - Integer.numberOfLeadingZeros(i3);
        int iNumberOfLeadingZeros2 = i2 << (iNumberOfLeadingZeros - 1);
        while (32 - Integer.numberOfLeadingZeros(iNumberOfLeadingZeros2) >= iNumberOfLeadingZeros) {
            iNumberOfLeadingZeros2 ^= i3 << ((32 - Integer.numberOfLeadingZeros(iNumberOfLeadingZeros2)) - iNumberOfLeadingZeros);
        }
        return iNumberOfLeadingZeros2;
    }

    public static boolean r0(String str) {
        if (str == null || str.trim().isEmpty()) {
            return true;
        }
        String lowerCase = str.trim().toLowerCase(Locale.US);
        return "9774d56d682e549c".equals(lowerCase) || lowerCase.matches("0+");
    }

    public static String r1(String str, String str2, Map map) {
        Object obj = map.get(str);
        String strValueOf = obj == null ? "" : String.valueOf(obj);
        return strValueOf.isEmpty() ? str2 : strValueOf;
    }

    public static double s(double d2, double d3) {
        if (d2 <= 0.0d || d2 == 1.0d || d3 <= 0.0d) {
            return 1.0d;
        }
        return Math.log(d3) / Math.log(d2);
    }

    public static boolean s0(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    public static String s1(Object obj) {
        if (obj == null) {
            return "null";
        }
        if (obj instanceof String) {
            return "\"" + K((String) obj) + "\"";
        }
        if (obj instanceof Boolean) {
            return obj.toString();
        }
        if (obj instanceof Number) {
            if ((obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Short) || (obj instanceof Byte)) {
                return obj.toString();
            }
            double dDoubleValue = ((Number) obj).doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                return "0";
            }
            return (dDoubleValue != Math.floor(dDoubleValue) || Math.abs(dDoubleValue) >= 9.223372036854776E18d) ? Double.toString(dDoubleValue) : String.valueOf((long) dDoubleValue);
        }
        boolean z2 = true;
        if (obj instanceof Map) {
            StringBuilder sb = new StringBuilder("{");
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                if (!z2) {
                    sb.append(",");
                }
                sb.append("\"");
                sb.append(K(entry.getKey().toString()));
                sb.append("\":");
                sb.append(s1(entry.getValue()));
                z2 = false;
            }
            sb.append("}");
            return sb.toString();
        }
        if (!(obj instanceof Collection)) {
            if (obj instanceof Object[]) {
                return m((Object[]) obj);
            }
            if ((obj instanceof JSONObject) || (obj instanceof JSONArray)) {
                return obj.toString();
            }
            return "\"" + K(obj.toString()) + "\"";
        }
        StringBuilder sb2 = new StringBuilder("[");
        for (Object obj2 : (Collection) obj) {
            if (!z2) {
                sb2.append(",");
            }
            sb2.append(s1(obj2));
            z2 = false;
        }
        sb2.append("]");
        return sb2.toString();
    }

    public static double t(int i2) {
        int iMax = Math.max(1, Math.min(54, i2));
        if (iMax == 54) {
            return 520000.0d;
        }
        double[] dArr = Q;
        return Math.max(dArr[iMax], dArr[iMax + 1]);
    }

    public static boolean t0(int i2) {
        return i2 == 408 || i2 == 502 || i2 == 503 || i2 == 504;
    }

    public static ArrayList t1(String str) {
        if (str == null || str.isEmpty()) {
            return new ArrayList();
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                arrayList.add(D(jSONArray.get(i2)));
            }
            return arrayList;
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    public static double u(int i2) {
        int iMax = Math.max(1, Math.min(54, i2));
        double[] dArr = L;
        if (iMax < 42) {
            return Math.pow(1.1155076459653468d, iMax - 42) * dArr[0];
        }
        for (int i3 = 0; i3 < 12; i3++) {
            int[] iArr = K;
            int i4 = iArr[i3];
            if (iMax == i4) {
                return dArr[i3];
            }
            if (iMax < i4) {
                int i5 = i3 - 1;
                int i6 = iArr[i5];
                double d2 = ((double) (iMax - i6)) / ((double) (i4 - i6));
                double d3 = dArr[i5];
                return Math.pow(dArr[i3] / d3, d2) * d3;
            }
        }
        return dArr[11];
    }

    public static long u0(String str, Map map) {
        long jC0 = 0;
        for (Map map2 : w1.f0("Item", map)) {
            if (c.a.C(map2, "id", "", "item_id", str)) {
                jC0 += C0(map2.get(map2.containsKey("item_num") ? "item_num" : "num"));
            }
        }
        return jC0;
    }

    public static LinkedHashMap u1(String str) {
        if (str == null || str.isEmpty()) {
            return new LinkedHashMap();
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                linkedHashMap.put(next, D(jSONObject.get(next)));
            }
            return linkedHashMap;
        } catch (Exception unused) {
            return new LinkedHashMap();
        }
    }

    public static void v(boolean z2) {
        if (!z2) {
            throw new IllegalArgumentException();
        }
    }

    public static ArrayList v0(Object... objArr) {
        return new ArrayList(Arrays.asList(objArr));
    }

    public static int v1(int i2, int i3, String str, Map map) {
        int iMax = Math.max(1, i2);
        int iB0 = com.sgscq.vpn.cloud.m0.b0(str, map);
        int iX1 = 0;
        for (int i4 = 0; i4 < iMax; i4++) {
            iX1 += x1(iB0 + i4, i3, str, map);
        }
        return iX1;
    }

    public static ArrayList w(List list) {
        ArrayList arrayList = new ArrayList();
        if (list == null) {
            return arrayList;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new LinkedHashMap((Map) it.next()));
        }
        return arrayList;
    }

    public static LinearLayout.LayoutParams w0(int i2, int i3, int i4) {
        LinearLayout.LayoutParams layoutParamsX0 = x0(i2, 0, 0, 0, i3);
        if (i4 != 0) {
            layoutParamsX0.height = i4;
        }
        return layoutParamsX0;
    }

    public static boolean w1(Activity activity, String str, String str2) {
        if (str != null && !str.isEmpty()) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                intent.addFlags(268435456);
                if (str2 != null && !str2.isEmpty()) {
                    intent.setPackage(str2);
                }
                activity.startActivity(intent);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static long x(Map map) {
        if (map == null) {
            return 0L;
        }
        Object obj = map.get("user_coin");
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        if (obj == null) {
            return 0L;
        }
        try {
            try {
                return Long.parseLong(obj.toString());
            } catch (NumberFormatException unused) {
                return (long) Double.parseDouble(obj.toString());
            }
        } catch (NumberFormatException unused2) {
            return 0L;
        }
    }

    public static LinearLayout.LayoutParams x0(int i2, int i3, int i4, int i5, int i6) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i3, i4);
        if (i5 != 0) {
            layoutParams.topMargin = i5;
        }
        if (i6 != 0) {
            layoutParams.bottomMargin = i6;
        }
        return layoutParams;
    }

    public static int x1(int i2, int i3, String str, Map map) {
        int iIntValue;
        if (com.sgscq.vpn.cloud.m0.o1(str)) {
            return J[Math.max(0, Math.min(i2, 9))];
        }
        if ("600028".equals(str) || "600029".equals(str) || "600018".equals(str)) {
            return 50;
        }
        if ("600100".equals(str)) {
            return 350;
        }
        if (!"600030".equals(str)) {
            return Math.max(0, i3);
        }
        Object obj = map == null ? null : map.get("cd_item_price");
        if (obj instanceof Number) {
            iIntValue = ((Number) obj).intValue();
        } else if (obj == null) {
            iIntValue = i3;
        } else {
            try {
                iIntValue = Integer.parseInt(String.valueOf(obj));
            } catch (NumberFormatException unused) {
                iIntValue = i3;
            }
        }
        return iIntValue > 0 ? iIntValue : Math.max(0, i3);
    }

    public static int y(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            strTrim = "0";
        }
        String[] strArrSplit = strTrim.split("\\.");
        String[] strArrSplit2 = "1.0.1.14067".split("\\.");
        int iMax = Math.max(strArrSplit.length, strArrSplit2.length);
        int i2 = 0;
        while (i2 < iMax) {
            int iCompare = Long.compare(i2 < strArrSplit.length ? O0(strArrSplit[i2]) : 0L, i2 < strArrSplit2.length ? O0(strArrSplit2[i2]) : 0L);
            if (iCompare != 0) {
                return iCompare;
            }
            i2++;
        }
        return 0;
    }

    public static GradientDrawable y0(int i2, float f2, float f3) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(f2);
        gradientDrawable.setStroke((int) ((f3 * 2.0f) + 0.5f), B);
        gradientDrawable.setColor(i2);
        return gradientDrawable;
    }

    public static ArrayList y1(boolean z2) {
        ArrayList arrayList = new ArrayList();
        for (String str : z1(z2)) {
            String strT0 = w1.a1(null).T0(str);
            if (strT0 != null && !strT0.isEmpty() && !"0".equals(strT0) && w1.a1(null).k1(strT0) != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public static ArrayList z() {
        w1 w1VarA1 = w1.a1(null);
        ArrayList arrayList = new ArrayList();
        ArrayList<String> arrayList2 = new ArrayList();
        Collections.addAll(arrayList2, f1274a);
        for (String str : arrayList2) {
            if (l0(w1VarA1, str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public static LinkedHashMap z0(String str, Object obj, Object... objArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(str, obj);
        for (int i2 = 0; i2 < objArr.length; i2 += 2) {
            linkedHashMap.put((String) objArr[i2], objArr[i2 + 1]);
        }
        return linkedHashMap;
    }

    public static ArrayList z1(boolean z2) {
        w1 w1VarA1 = w1.a1(null);
        ArrayList arrayList = new ArrayList();
        if (z2) {
            Iterator it = w1VarA1.i0().iterator();
            while (it.hasNext()) {
                d((String) it.next(), arrayList);
            }
        } else {
            w1VarA1.T(true);
            Iterator it2 = w1VarA1.v.iterator();
            while (it2.hasNext()) {
                d(String.valueOf(((Map) it2.next()).getOrDefault("general_id", "")), arrayList);
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }
}
