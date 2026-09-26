package com.sgscq.vpn.handler;

import com.sgscq.vpn.c7;
import com.sgscq.vpn.p5;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public abstract class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f885a = Collections.unmodifiableList(Arrays.asList("9331026", "9341019", "9351004", "9351005", "9351015", "9351016", "9351017", "9351022", "9351023", "9351024", "9351027"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map f886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map f887c;

    static {
        LinkedHashMap linkedHashMapR = c.a.r("9331026", "331026", "9341019", "341019");
        linkedHashMapR.put("9351004", "351004");
        linkedHashMapR.put("9351005", "351005");
        linkedHashMapR.put("9351015", "351015");
        linkedHashMapR.put("9351016", "351016");
        linkedHashMapR.put("9351017", "351017");
        linkedHashMapR.put("9351022", "351022");
        linkedHashMapR.put("9351023", "351023");
        linkedHashMapR.put("9351024", "351024");
        linkedHashMapR.put("9351027", "351027");
        f886b = Collections.unmodifiableMap(linkedHashMapR);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String[] strArr = {"792321", "792248", "792218", "792143", "792325", "792246", "792141", "792220", "792247", "792182", "792179", "792219"};
        String[] strArr2 = {"792322", "792326", "792327", "792251", "792140"};
        String[] strArr3 = {"792178", "792216", "792250", "792252", "792142", "792147", "792221", "792300", "792185", "792249", "792187", "792148", "792298", "792186", "792181", "792146", "792313", "792309", "792191", "792188", "792192", "792302"};
        for (int i2 = 0; i2 < 12; i2++) {
            linkedHashMap.put(strArr[i2], 210);
        }
        for (int i3 = 0; i3 < 5; i3++) {
            linkedHashMap.put(strArr2[i3], 200);
        }
        for (int i4 = 0; i4 < 22; i4++) {
            linkedHashMap.put(strArr3[i4], 190);
        }
        linkedHashMap.put("792253", 180);
        linkedHashMap.put("792144", 180);
        f887c = Collections.unmodifiableMap(linkedHashMap);
    }

    public static ArrayList a(String str) {
        final byte[] bytes = l.a("sgscq-guild-shop:", str, ":").getBytes(StandardCharsets.US_ASCII);
        ArrayList arrayList = new ArrayList(f885a);
        final int i2 = 0;
        arrayList.sort(new Comparator() { // from class: com.sgscq.vpn.handler.i0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int i3 = i2;
                byte[] bArr = bytes;
                switch (i3) {
                    case 0:
                        return j0.c(j0.d("skill:" + ((String) obj), bArr), j0.d("skill:" + ((String) obj2), bArr));
                    default:
                        return j0.c(j0.d("soul:" + ((String) obj), bArr), j0.d("soul:" + ((String) obj2), bArr));
                }
            }
        });
        Map map = f887c;
        ArrayList arrayList2 = new ArrayList(map.keySet());
        final int i3 = 1;
        arrayList2.sort(new Comparator() { // from class: com.sgscq.vpn.handler.i0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int i4 = i3;
                byte[] bArr = bytes;
                switch (i4) {
                    case 0:
                        return j0.c(j0.d("skill:" + ((String) obj), bArr), j0.d("skill:" + ((String) obj2), bArr));
                    default:
                        return j0.c(j0.d("soul:" + ((String) obj), bArr), j0.d("soul:" + ((String) obj2), bArr));
                }
            }
        });
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList.subList(0, 2).iterator();
        while (it.hasNext()) {
            arrayList3.add(p5.z0("item_id", (String) it.next(), "item_num", 1, "donate", 25000, "exchange_num", 1, "kind", "skill"));
        }
        for (String str2 : arrayList2.subList(0, 3)) {
            int i4 = ((d("quantity:" + str2, bytes)[0] & 255) % 3) + 1;
            arrayList3.add(p5.z0("item_id", str2, "item_num", Integer.valueOf(i4), "donate", Integer.valueOf(((Integer) map.get(str2)).intValue() * i4), "exchange_num", 1, "kind", "soul"));
        }
        arrayList3.add(p5.z0("item_id", "791684", "item_num", 1, "donate", 120, "exchange_num", 30, "kind", "combo"));
        return arrayList3;
    }

    public static String b() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.ROOT);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+08:00"));
        return simpleDateFormat.format(new Date(c7.f()));
    }

    public static int c(byte[] bArr, byte[] bArr2) {
        for (int i2 = 0; i2 < Math.min(bArr.length, bArr2.length); i2++) {
            int i3 = bArr[i2] & 255;
            int i4 = bArr2[i2] & 255;
            if (i3 != i4) {
                return i3 < i4 ? -1 : 1;
            }
        }
        return Integer.compare(bArr.length, bArr2.length);
    }

    public static byte[] d(String str, byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            return messageDigest.digest(str.getBytes(StandardCharsets.US_ASCII));
        } catch (Exception e2) {
            throw new IllegalStateException("SHA-256 unavailable", e2);
        }
    }

    public static int e(String str, Map map) {
        if (c.a.A(map, "union_goods_exchange_day", str)) {
            return g(map.get("union_goods_exchange_mask"));
        }
        return 0;
    }

    public static ArrayList f(Map map) {
        int i2;
        String strB = b();
        int iE = e(strB, map);
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        while (true) {
            boolean z = true;
            if (i3 >= 6) {
                break;
            }
            Map map2 = (Map) a(strB).get(i3);
            if (i3 == 5) {
                i2 = (iE >> 5) & 31;
            } else {
                i2 = (iE & (1 << i3)) == 0 ? 0 : 1;
            }
            int i4 = i2;
            int iG = g(map2.get("exchange_num"));
            int iG2 = g(map2.get("donate"));
            i3++;
            Integer numValueOf = Integer.valueOf(i3);
            Object[] objArr = new Object[16];
            objArr[0] = "item_id";
            objArr[1] = map2.get("item_id");
            objArr[2] = "item_num";
            objArr[3] = map2.get("item_num");
            objArr[4] = "num";
            objArr[5] = map2.get("item_num");
            objArr[6] = "kind";
            objArr[7] = map2.get("kind");
            objArr[8] = "donate";
            objArr[9] = Integer.valueOf(iG2);
            objArr[10] = "exchange_num";
            objArr[11] = Integer.valueOf(iG);
            objArr[12] = "exchanged_num";
            objArr[13] = Integer.valueOf(i4);
            objArr[14] = "can_exchange";
            if (i4 >= iG) {
                z = false;
            }
            objArr[15] = Boolean.valueOf(z);
            arrayList.add(p5.z0("pk_id", numValueOf, objArr));
        }
        Map map3 = (Map) a(strB).get(5);
        int i5 = (iE >> 5) & 31;
        int iG3 = g(map3.get("exchange_num"));
        int iG4 = g(map3.get("donate"));
        Object[] objArr2 = new Object[16];
        objArr2[0] = "item_id";
        objArr2[1] = map3.get("item_id");
        objArr2[2] = "item_num";
        objArr2[3] = map3.get("item_num");
        objArr2[4] = "num";
        objArr2[5] = map3.get("item_num");
        objArr2[6] = "kind";
        objArr2[7] = "combo_all";
        objArr2[8] = "donate";
        objArr2[9] = Integer.valueOf(iG4);
        objArr2[10] = "exchange_num";
        objArr2[11] = Integer.valueOf(iG3);
        objArr2[12] = "exchanged_num";
        objArr2[13] = Integer.valueOf(i5);
        objArr2[14] = "can_exchange";
        objArr2[15] = Boolean.valueOf(i5 < iG3);
        arrayList.add(p5.z0("pk_id", 7, objArr2));
        return arrayList;
    }

    public static int g(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        try {
            return Integer.parseInt(String.valueOf(obj));
        } catch (Exception unused) {
            return 0;
        }
    }
}
