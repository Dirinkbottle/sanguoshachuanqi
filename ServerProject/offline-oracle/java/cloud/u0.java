package com.sgscq.vpn.cloud;

import android.content.Context;
import android.content.SharedPreferences;
import com.sgscq.vpn.a5;
import com.sgscq.vpn.k4;
import com.sgscq.vpn.l4;
import com.sgscq.vpn.m4;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.w1;
import com.sgscq.vpn.y5;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes.dex */
public final class u0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a.o f502f = new a.o();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final z f503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m.e f504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m4 f505c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.sgscq.vpn.f0 f506d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c.e f507e;

    public u0(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f503a = new z(applicationContext);
        this.f504b = new m.e(5, applicationContext);
        this.f505c = new m4(applicationContext);
        this.f506d = new com.sgscq.vpn.f0(applicationContext);
        this.f507e = new c.e(5, applicationContext);
    }

    public static long d(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        try {
            return Long.parseLong(h(obj));
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static LinkedHashMap e(Object obj) {
        if (!(obj instanceof Map)) {
            return new LinkedHashMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            linkedHashMap.put(String.valueOf(entry.getKey()), entry.getValue());
        }
        return linkedHashMap;
    }

    public static LinkedHashMap f(String str, String str2, LinkedHashMap linkedHashMap) {
        StringBuilder sb;
        if (linkedHashMap == null || str == null || str2 == null || str.equals(str2)) {
            return linkedHashMap == null ? new LinkedHashMap() : new LinkedHashMap(linkedHashMap);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        String strA = com.sgscq.vpn.handler.l.a("guide_", str, "_");
        String strA2 = com.sgscq.vpn.handler.l.a("guide_", str2, "_");
        String strConcat = "_".concat(str);
        String strConcat2 = "_".concat(str2);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String string = (String) entry.getKey();
            if (string.startsWith(strA)) {
                sb = new StringBuilder();
                sb.append(strA2);
                sb.append(string.substring(strA.length()));
            } else {
                if (string.endsWith(strConcat)) {
                    sb = new StringBuilder();
                    sb.append(string.substring(0, string.length() - strConcat.length()));
                    sb.append(strConcat2);
                }
                linkedHashMap2.put(string, entry.getValue());
            }
            string = sb.toString();
            linkedHashMap2.put(string, entry.getValue());
        }
        return linkedHashMap2;
    }

    public static boolean g(String str) {
        return "cloud".equals(str) || "local_cloud".equals(str);
    }

    public static String h(Object obj) {
        return obj == null ? "" : String.valueOf(obj).trim();
    }

    public final com.sgscq.vpn.d0 a(byte[] bArr) throws IOException {
        double dDoubleValue;
        v vVarV = this.f503a.V("import");
        String str = this.f504b.y().environment;
        String str2 = vVarV.f510c;
        if (str2 == null || !str2.equals(str)) {
            throw new IllegalStateException("存档环境与当前版本不匹配");
        }
        byte[] bArr2 = r0.f485a;
        byte[] bArr3 = vVarV.f508a;
        if (bArr3 == null || bArr3.length != 32) {
            throw new IllegalArgumentException("存档密钥无效");
        }
        byte[] bArr4 = vVarV.f509b;
        if (bArr4 == null || bArr4.length == 0 || bArr4.length > 64) {
            throw new IllegalArgumentException("账号标签无效");
        }
        if (!"debug".equals(str2) && !"release".equals(str2)) {
            throw new IllegalArgumentException("存档环境无效");
        }
        if (bArr != null) {
            int length = bArr.length;
            byte[] bArr5 = r0.f485a;
            if (length >= bArr5.length + 64) {
                DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
                byte[] bArr6 = new byte[bArr5.length];
                dataInputStream.readFully(bArr6);
                if (!Arrays.equals(bArr5, bArr6)) {
                    throw new IllegalArgumentException("不支持的存档格式");
                }
                int unsignedShort = dataInputStream.readUnsignedShort();
                int unsignedShort2 = dataInputStream.readUnsignedShort();
                if (unsignedShort != 1 || unsignedShort2 != 1) {
                    throw new IllegalArgumentException("不支持的存档版本");
                }
                int unsignedShort3 = dataInputStream.readUnsignedShort();
                if (!str2.equals(new String(r0.c(dataInputStream, unsignedShort3, 16), StandardCharsets.US_ASCII))) {
                    throw new IllegalArgumentException("存档环境不匹配");
                }
                r0.c(dataInputStream, 16, 16);
                dataInputStream.readLong();
                int i2 = dataInputStream.readInt();
                if (i2 < 0 || i2 > 200) {
                    throw new IllegalArgumentException("存档条目数量无效");
                }
                int unsignedShort4 = dataInputStream.readUnsignedShort();
                if (unsignedShort4 != bArr4.length) {
                    throw new IllegalArgumentException("存档账号不匹配");
                }
                byte[] bArrC = r0.c(dataInputStream, unsignedShort4, 64);
                if (!(bArrC.length == bArr4.length && MessageDigest.isEqual(bArrC, bArr4))) {
                    throw new IllegalArgumentException("存档账号不匹配");
                }
                int i3 = dataInputStream.readInt();
                int i4 = dataInputStream.readInt();
                int i5 = dataInputStream.readInt();
                if (i3 <= 0 || i3 > 105906176 || i4 != 48 || i5 != i3 + 16) {
                    throw new IllegalArgumentException("存档长度无效");
                }
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, bArr5.length + 2 + 2 + 2 + unsignedShort3 + 16 + 8 + 4 + 2 + unsignedShort4 + 4 + 4 + 4);
                byte[] bArrC2 = r0.c(dataInputStream, 12, 12);
                byte[] bArrC3 = r0.c(dataInputStream, i4, i4);
                byte[] bArrC4 = r0.c(dataInputStream, 12, 12);
                byte[] bArrC5 = r0.c(dataInputStream, i5, i5);
                if (dataInputStream.available() != 0) {
                    throw new IllegalArgumentException("存档尾部数据无效");
                }
                try {
                    byte[] bArrA = r0.a(2, bArr3, bArrC2, bArrC3, bArrCopyOfRange);
                    if (bArrA.length != 32) {
                        throw new IllegalArgumentException("存档密钥无效");
                    }
                    Map map = (Map) f502f.e(new String(r0.b(r0.a(2, bArrA, bArrC4, bArrC5, bArrCopyOfRange)), StandardCharsets.UTF_8), new SaveArchiveManager$1().getType());
                    if (map == null || ((int) d(map.get("schema_version"))) != 1) {
                        throw new IllegalArgumentException("不支持的存档正文版本");
                    }
                    Object obj = map.get("entries");
                    if (!(obj instanceof List)) {
                        throw new IllegalArgumentException("存档条目缺失");
                    }
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : (List) obj) {
                        if (!(obj2 instanceof Map)) {
                            throw new IllegalArgumentException("存档条目无效");
                        }
                        Map map2 = (Map) obj2;
                        LinkedHashMap linkedHashMapE = e(map2.get("player"));
                        LinkedHashMap linkedHashMapE2 = e(map2.get("guide"));
                        String strH = h(map2.get("passport_uid"));
                        if (strH.isEmpty() || linkedHashMapE.isEmpty()) {
                            throw new IllegalArgumentException("存档角色数据不完整");
                        }
                        String strH2 = h(map2.get("nickname"));
                        String strH3 = h(map2.get("source"));
                        long jD = d(map2.get("exported_at"));
                        int iD = (int) d(map2.get("level"));
                        Object obj3 = map2.get("fighting");
                        if (obj3 instanceof Number) {
                            dDoubleValue = ((Number) obj3).doubleValue();
                        } else {
                            try {
                                dDoubleValue = Double.parseDouble(h(obj3));
                            } catch (Exception unused) {
                                dDoubleValue = 0.0d;
                            }
                        }
                        arrayList.add(new s0(strH, strH2, strH3, jD, iD, dDoubleValue, linkedHashMapE, linkedHashMapE2));
                    }
                    if (!arrayList.isEmpty()) {
                        int size = arrayList.size();
                        byte[] bArr7 = r0.f485a;
                        if (size <= 200) {
                            return new com.sgscq.vpn.d0(d(map.get("exported_at")), arrayList);
                        }
                    }
                    throw new IllegalArgumentException("存档条目数量无效");
                } catch (IOException | GeneralSecurityException e2) {
                    throw new IllegalArgumentException("存档校验失败", e2);
                }
            }
        }
        throw new IllegalArgumentException("存档格式无效");
    }

    public final byte[] b() throws NoSuchPaddingException, NoSuchAlgorithmException, IOException, InvalidKeyException, InvalidAlgorithmParameterException {
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMapD;
        long jN;
        CloudSessionStore$SessionData cloudSessionStore$SessionDataY = this.f504b.y();
        if (!cloudSessionStore$SessionDataY.isLoggedIn()) {
            throw new IllegalStateException("请先登录爱发电");
        }
        String str = cloudSessionStore$SessionDataY.afdianUserId;
        ArrayList<s0> arrayList = new ArrayList();
        for (k4 k4Var : this.f505c.m()) {
            com.sgscq.vpn.f0 f0Var = this.f506d;
            String str2 = k4Var.f1106a;
            SharedPreferences sharedPreferences = f0Var.f675b;
            byte[] bArr = y5.f1568a;
            if ((str2 == null || str2.isEmpty() || !sharedPreferences.contains(y5.j(str2))) ? false : true) {
                com.sgscq.vpn.f0 f0Var2 = this.f506d;
                String str3 = k4Var.f1106a;
                f0Var2.getClass();
                if (str3 == null || str3.isEmpty()) {
                    throw new IllegalArgumentException("角色 UID 为空");
                }
                synchronized (a5.a(str3)) {
                    LinkedHashMap linkedHashMapL = y5.l(f0Var2.f674a, f0Var2.f675b, str3);
                    if (linkedHashMapL == null || linkedHashMapL.isEmpty()) {
                        throw new IllegalStateException("本地存档为空");
                    }
                    linkedHashMap = new LinkedHashMap(linkedHashMapL);
                    linkedHashMapD = f0Var2.d(str3);
                    jN = y5.n(f0Var2.f675b, str3);
                }
                l4 l4VarN = this.f505c.n(k4Var.f1106a);
                arrayList.add(new s0(k4Var.f1106a, l4VarN.f1144b, k4Var.f1111f ? "local_cloud" : "local", jN, l4VarN.f1145c, l4VarN.f1147e, linkedHashMap, linkedHashMapD));
            }
        }
        if (this.f503a.s(str) != null) {
            z zVar = this.f503a;
            zVar.getClass();
            o0 o0VarB = o0.b(zVar.n(str, Collections.emptyMap()));
            Map map = o0VarB.f445e;
            String str4 = o0VarB.f441a;
            String strH = h(map.get("user_nickname"));
            if (strH.isEmpty()) {
                strH = "本地角色";
            }
            String str5 = strH;
            long jCurrentTimeMillis = o0VarB.f444d;
            if (jCurrentTimeMillis <= 0) {
                jCurrentTimeMillis = System.currentTimeMillis();
            }
            arrayList.add(new s0(str4, str5, "cloud", jCurrentTimeMillis, (int) d(map.get("user_level")), w1.A(map), map, o0VarB.f446f));
        }
        if (arrayList.isEmpty()) {
            throw new IllegalStateException("没有可导出的存档");
        }
        v vVarV = this.f503a.V("export");
        String str6 = vVarV.f510c;
        String str7 = cloudSessionStore$SessionDataY.environment;
        if (str6 == null || !str6.equals(str7)) {
            throw new IllegalStateException("存档环境与当前版本不匹配");
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("schema_version", 1);
        linkedHashMap2.put("exported_at", Long.valueOf(jCurrentTimeMillis2));
        ArrayList arrayList2 = new ArrayList();
        for (s0 s0Var : arrayList) {
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            linkedHashMap3.put("passport_uid", s0Var.f488a);
            linkedHashMap3.put("nickname", s0Var.f489b);
            linkedHashMap3.put("source", s0Var.f490c);
            linkedHashMap3.put("exported_at", Long.valueOf(s0Var.f491d));
            linkedHashMap3.put("level", Integer.valueOf(s0Var.f492e));
            linkedHashMap3.put("fighting", Double.valueOf(s0Var.f493f));
            linkedHashMap3.put("player", s0Var.f494g);
            linkedHashMap3.put("guide", s0Var.f495h);
            arrayList2.add(linkedHashMap3);
        }
        linkedHashMap2.put("entries", arrayList2);
        byte[] bytes = p5.s1(linkedHashMap2).getBytes(StandardCharsets.UTF_8);
        byte[] bArr2 = vVarV.f508a;
        byte[] bArr3 = vVarV.f509b;
        String str8 = vVarV.f510c;
        int size = arrayList.size();
        byte[] bArr4 = r0.f485a;
        if (bArr2 == null || bArr2.length != 32) {
            throw new IllegalArgumentException("存档密钥无效");
        }
        if (bArr3 == null || bArr3.length == 0 || bArr3.length > 64) {
            throw new IllegalArgumentException("账号标签无效");
        }
        if (!"debug".equals(str8) && !"release".equals(str8)) {
            throw new IllegalArgumentException("存档环境无效");
        }
        if (bytes == null || bytes.length == 0 || bytes.length > 104857600) {
            throw new IllegalArgumentException("存档正文过大或为空");
        }
        if (size < 0 || size > 200) {
            throw new IllegalArgumentException("存档条目数量无效");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        try {
            gZIPOutputStream.write(bytes);
            gZIPOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (byteArray.length > 105906176) {
                throw new IllegalArgumentException("存档压缩内容过大");
            }
            byte[] bArr5 = new byte[32];
            SecureRandom secureRandom = r0.f486b;
            secureRandom.nextBytes(bArr5);
            byte[] bArr6 = new byte[16];
            secureRandom.nextBytes(bArr6);
            byte[] bArr7 = new byte[12];
            secureRandom.nextBytes(bArr7);
            byte[] bArr8 = new byte[12];
            secureRandom.nextBytes(bArr8);
            int length = byteArray.length + 16;
            int length2 = byteArray.length;
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream2);
            dataOutputStream.write(r0.f485a);
            dataOutputStream.writeShort(1);
            dataOutputStream.writeShort(1);
            byte[] bytes2 = str8.getBytes(StandardCharsets.US_ASCII);
            dataOutputStream.writeShort(bytes2.length);
            dataOutputStream.write(bytes2);
            dataOutputStream.write(bArr6);
            dataOutputStream.writeLong(jCurrentTimeMillis2);
            dataOutputStream.writeInt(size);
            dataOutputStream.writeShort(bArr3.length);
            dataOutputStream.write(bArr3);
            dataOutputStream.writeInt(length2);
            dataOutputStream.writeInt(48);
            dataOutputStream.writeInt(length);
            dataOutputStream.flush();
            byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
            byte[] bArrA = r0.a(1, bArr2, bArr7, bArr5, byteArray2);
            byte[] bArrA2 = r0.a(1, bArr5, bArr8, byteArray, byteArray2);
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream(byteArray2.length + 24 + bArrA.length + bArrA2.length);
            byteArrayOutputStream3.write(byteArray2);
            byteArrayOutputStream3.write(bArr7);
            byteArrayOutputStream3.write(bArrA);
            byteArrayOutputStream3.write(bArr8);
            byteArrayOutputStream3.write(bArrA2);
            Arrays.fill(bArr5, (byte) 0);
            return byteArrayOutputStream3.toByteArray();
        } catch (Throwable th) {
            try {
                gZIPOutputStream.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    public final int c(List list) throws Exception {
        s0 s0Var;
        String strD;
        s0 s0Var2;
        boolean z = false;
        if (list == null) {
            return 0;
        }
        CloudSessionStore$SessionData cloudSessionStore$SessionDataY = this.f504b.y();
        if (!cloudSessionStore$SessionDataY.isLoggedIn()) {
            throw new IllegalStateException("请先登录爱发电");
        }
        HashSet hashSet = new HashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            t0 t0Var = (t0) it.next();
            if (t0Var != null && t0Var.f498b && (s0Var2 = t0Var.f497a) != null) {
                s0Var2.f494g.containsKey("_afdian_owner_token");
                if (g(s0Var2.f490c)) {
                    hashSet.add(s0Var2.f488a);
                }
            }
        }
        Iterator it2 = list.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            t0 t0Var2 = (t0) it2.next();
            if (t0Var2 != null && t0Var2.f498b && (s0Var = t0Var2.f497a) != null) {
                m4 m4Var = this.f505c;
                String str = s0Var.f488a;
                boolean zP = m4Var.p(str);
                LinkedHashMap linkedHashMap = s0Var.f494g;
                linkedHashMap.containsKey("_afdian_owner_token");
                String str2 = s0Var.f490c;
                boolean zG = g(str2);
                c.e eVar = this.f507e;
                boolean z2 = eVar.Z(str).f432a;
                boolean z3 = (zG || !(hashSet.contains(str) || z2)) ? z : true;
                if (z3) {
                    strD = m4Var.d();
                    m4Var.w(strD);
                } else {
                    strD = str;
                }
                boolean zContains = hashSet.contains(str);
                linkedHashMap.containsKey("_afdian_owner_token");
                String str3 = (g(str2) || !(zContains || z2)) ? str : strD;
                n0 n0VarZ = eVar.Z(str3);
                LinkedHashMap linkedHashMap2 = s0Var.f495h;
                com.sgscq.vpn.f0 f0Var = this.f506d;
                String str4 = s0Var.f489b;
                if (zG) {
                    try {
                        m4Var.u(str3, str4);
                        m4Var.g(str3);
                        f0Var.e(str3, cloudSessionStore$SessionDataY.afdianUserId, linkedHashMap, linkedHashMap2);
                        m4Var.w(str3);
                    } catch (Exception e2) {
                        if (z3 || !zP) {
                            m4Var.e(str3);
                        }
                        if (zP && n0VarZ.f432a) {
                            String str5 = n0VarZ.f434c;
                            if (!str5.isEmpty()) {
                                eVar.a0(str3, n0VarZ.f435d, str5);
                            }
                        }
                        throw e2;
                    }
                } else {
                    eVar.w(str3);
                    m4Var.t(str3, str4);
                    f0Var.g(str3, linkedHashMap, f(str, str3, linkedHashMap2));
                }
                i2++;
            }
            hashSet = hashSet;
            z = false;
        }
        return i2;
    }
}
