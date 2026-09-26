package com.sgscq.vpn.cloud;

import com.google.gson.reflect.TypeToken;
import com.sgscq.vpn.p5;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f443c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f444d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Map f445e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map f446f;

    public o0(String str, int i2, String str2, long j2, Map map, Map map2) {
        this.f441a = str;
        this.f442b = i2;
        this.f443c = str2;
        this.f444d = j2;
        this.f445e = map;
        this.f446f = map2;
    }

    public static long a(LinkedHashMap linkedHashMap) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(linkedHashMap);
        long j2 = 0;
        while (!arrayDeque.isEmpty()) {
            Object objRemoveLast = arrayDeque.removeLast();
            j2++;
            if (objRemoveLast instanceof Map) {
                arrayDeque.addAll(((Map) objRemoveLast).values());
            } else if (objRemoveLast instanceof Iterable) {
                Iterator it = ((Iterable) objRemoveLast).iterator();
                while (it.hasNext()) {
                    arrayDeque.add(it.next());
                }
            }
        }
        return j2;
    }

    public static o0 b(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("云存档为空");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArr));
        try {
            byte[] bArr2 = new byte[8192];
            int i2 = 0;
            while (true) {
                int i3 = gZIPInputStream.read(bArr2);
                if (i3 == -1) {
                    gZIPInputStream.close();
                    Map linkedHashMap = (Map) new a.o().e(new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8), new TypeToken<Map<String, Object>>() { // from class: com.sgscq.vpn.cloud.CloudSavePackage$1
                    }.getType());
                    if (linkedHashMap == null) {
                        linkedHashMap = new LinkedHashMap();
                    }
                    if (((int) d(linkedHashMap.get("schema_version"))) != 2) {
                        throw new IllegalArgumentException("不支持的云存档格式");
                    }
                    Object obj = linkedHashMap.get("player");
                    Object obj2 = linkedHashMap.get("guide");
                    if (!(obj instanceof Map) || !(obj2 instanceof Map)) {
                        throw new IllegalArgumentException("云存档模块不完整");
                    }
                    String strE = e(linkedHashMap.get("passport_uid"));
                    String strE2 = e(linkedHashMap.get("afdian_owner_token"));
                    Map map = (Map) obj;
                    Map map2 = (Map) obj2;
                    f(strE, strE2, map, map2);
                    e(linkedHashMap.get("cloud_character_id"));
                    d(linkedHashMap.get("base_revision"));
                    return new o0(strE, (int) d(linkedHashMap.get("save_data_version")), strE2, d(linkedHashMap.get("exported_at")), map, map2);
                }
                i2 += i3;
                if (i2 > 16777216) {
                    throw new IllegalArgumentException("云存档解压后过大");
                }
                byteArrayOutputStream.write(bArr2, 0, i3);
            }
        } catch (Throwable th) {
            try {
                gZIPInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static byte[] c(String str, String str2, int i2, String str3, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, long j2) throws IOException {
        f(str, str3, linkedHashMap, linkedHashMap2);
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.put("schema_version", 2);
        linkedHashMap3.put("save_data_version", 7);
        linkedHashMap3.put("afdian_owner_token", str3);
        linkedHashMap3.put("passport_uid", str);
        if (str2 == null) {
            str2 = "";
        }
        linkedHashMap3.put("cloud_character_id", str2);
        linkedHashMap3.put("base_revision", Integer.valueOf(Math.max(0, i2)));
        linkedHashMap3.put("exported_at", Long.valueOf(j2));
        linkedHashMap3.put("player", linkedHashMap);
        linkedHashMap3.put("guide", linkedHashMap2);
        byte[] bytes = p5.s1(linkedHashMap3).getBytes(StandardCharsets.UTF_8);
        int length = bytes.length;
        if (length > 16777216) {
            throw new IllegalArgumentException(String.format(Locale.US, "云存档过大（%.1f MB，上限 %d MB），无法上传到云端", Double.valueOf(((double) length) / 1048576.0d), 16));
        }
        long jA = a(linkedHashMap2) + a(linkedHashMap);
        if (jA > 1000000) {
            throw new IllegalArgumentException("云存档条目过多（" + jA + " 条，上限 1000000），无法上传到云端");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        try {
            gZIPOutputStream.write(bytes);
            gZIPOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th) {
            try {
                gZIPOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static long d(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        try {
            return Long.parseLong(e(obj));
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static String e(Object obj) {
        return obj == null ? "" : String.valueOf(obj);
    }

    public static void f(String str, String str2, Map map, Map map2) {
        if (str.trim().isEmpty() || str.length() > 160) {
            throw new IllegalArgumentException("无效的角色 UID");
        }
        if (map == null || map.isEmpty()) {
            throw new IllegalArgumentException("角色存档为空");
        }
        String strE = e(str2);
        if (strE.isEmpty() || !strE.equals(e(map.get("_afdian_owner_token")))) {
            throw new IllegalArgumentException("云存档归属不一致");
        }
        String strA = com.sgscq.vpn.handler.l.a("guide_", str, "_");
        String strConcat = "_".concat(str);
        if (map2 != null) {
            for (String str3 : map2.keySet()) {
                boolean z = str3.startsWith("freshman_step_") || str3.startsWith("server_step_") || str3.startsWith("guide_step_");
                if (!str3.startsWith(strA) && (!z || !str3.endsWith(strConcat))) {
                    throw new IllegalArgumentException("引导数据包含其他角色");
                }
            }
        }
    }
}
