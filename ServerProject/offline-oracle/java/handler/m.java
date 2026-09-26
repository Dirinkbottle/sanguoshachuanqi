package com.sgscq.vpn.handler;

import com.sgscq.vpn.c7;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.r2;
import com.sgscq.vpn.w1;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f924a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LinkedHashMap f925b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Random f926c;

    static {
        String[] strArr = {"311009", "311016", "312002", "321009", "321013", "321016", "321018", "322009", "341006", "341007", "342002", "342007", "351009", "351019", "351020"};
        f924a = strArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i2 = 0; i2 < 15; i2++) {
            String str = strArr[i2];
            linkedHashMap.put(str, str + "01");
        }
        f925b = linkedHashMap;
        f926c = new Random();
    }

    public static void a(List list, Map map) {
        String strValueOf = String.valueOf(map.getOrDefault("pk_id", ""));
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (c.a.B((Map) list.get(i2), "pk_id", "", strValueOf)) {
                list.set(i2, map);
                return;
            }
        }
        list.add(map);
    }

    public static void b(Object obj, ArrayList arrayList) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                if (obj2 instanceof Map) {
                    a(arrayList, (Map) obj2);
                }
            }
        }
    }

    public static double c(double d2) {
        return Math.max(0.0d, Math.min(0.999999d, d2));
    }

    public static List d(String str, Map map) {
        Object obj = map.get(str);
        if (obj instanceof Map) {
            Object obj2 = ((Map) obj).get("add");
            if (obj2 instanceof List) {
                return (List) obj2;
            }
        }
        ArrayList arrayList = new ArrayList();
        map.put(str, p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", arrayList));
        return arrayList;
    }

    public static Map e(String str, Object obj, int i2) {
        if (!(obj instanceof List)) {
            return null;
        }
        for (Object obj2 : (List) obj) {
            if (obj2 instanceof Map) {
                Map map = (Map) obj2;
                if (c.a.B(map, "pk_id", "", str) && h(map) > i2) {
                    return map;
                }
            }
        }
        return null;
    }

    public static boolean f(Map map) {
        boolean z;
        Iterator it = i("MagicalEqu", map).iterator();
        do {
            z = false;
            if (!it.hasNext()) {
                break;
            }
            z = true;
        } while (g(0, "is_open", (Map) it.next()) != 1);
        return z;
    }

    public static int g(int i2, String str, Map map) {
        return map == null ? i2 : w1.l2(String.valueOf(map.getOrDefault(str, Integer.valueOf(i2))), i2);
    }

    public static int h(Map map) {
        return g(g(g(g(g(0, "skill_piece_num", map), "equipment_piece_num", map), "general_soul_num", map), "item_num", map), "num", map);
    }

    public static ArrayList i(String str, Map map) {
        ArrayList arrayList = new ArrayList();
        Object obj = map.get(str);
        if (!(obj instanceof Map)) {
            if (obj instanceof List) {
            }
            return arrayList;
        }
        Map map2 = (Map) obj;
        b(map2.get("add"), arrayList);
        b(map2.get("upd"), arrayList);
        obj = map2.get("update_list");
        b(obj, arrayList);
        return arrayList;
    }

    public static int j(String str, Map map) {
        String strConcat = "next_pk_".concat(str);
        int iF = c.a.f(map, strConcat, "0", 0);
        Iterator it = i(str, map).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            int iF2 = c.a.f((Map) it.next(), "pk_id", "0", 0);
            if (iF2 > i2) {
                i2 = iF2;
            }
        }
        int iMax = Math.max(iF, i2 + 1);
        map.put(strConcat, Integer.valueOf(iMax + 1));
        return iMax;
    }

    public static com.sgscq.vpn.cloud.a k(String str, int i2) {
        return new com.sgscq.vpn.cloud.a(str, a.b0.a("meeting_t", i2), a.b0.a("meeting_", i2));
    }

    public static Map l(String str, Map map, Map map2) {
        Map map3;
        String strValueOf = String.valueOf(map2.getOrDefault("pk_id", ""));
        Iterator it = d(str, map).iterator();
        do {
            if (!it.hasNext()) {
                map3 = null;
                break;
            }
            map3 = (Map) it.next();
        } while (!c.a.B(map3, "pk_id", "", strValueOf));
        if (map3 == null) {
            return map2;
        }
        if (map3 != map2) {
            map3.putAll(map2);
        }
        Object obj = map.get(str);
        if (obj instanceof Map) {
            Map map4 = (Map) obj;
            Object obj2 = map4.get("upd");
            if (obj2 instanceof List) {
                ((List) obj2).removeIf(new r2(strValueOf, 2));
            }
            Object obj3 = map4.get("update_list");
            if (obj3 instanceof List) {
                ((List) obj3).removeIf(new r2(strValueOf, 2));
            }
        }
        return map3;
    }

    public static j m(Map map) {
        if (f(map)) {
            return j.d();
        }
        if (map != null) {
            Object obj = map.get("Item");
            if (obj instanceof Map) {
                Map map2 = (Map) obj;
                List arrayList = map2.get("del") instanceof List ? (List) map2.get("del") : new ArrayList();
                String[] strArr = {"add", "upd", "update_list"};
                boolean z = false;
                for (int i2 = 0; i2 < 3; i2++) {
                    Object obj2 = map2.get(strArr[i2]);
                    if (obj2 instanceof List) {
                        Iterator it = ((List) obj2).iterator();
                        while (it.hasNext()) {
                            Object next = it.next();
                            if (next instanceof Map) {
                                Map map3 = (Map) next;
                                if (c.a.C(map3, "id", "", "item_id", "600087")) {
                                    String strValueOf = String.valueOf(map3.getOrDefault("pk_id", ""));
                                    it.remove();
                                    if (!strValueOf.isEmpty() && !arrayList.contains(strValueOf)) {
                                        arrayList.add(strValueOf);
                                    }
                                    z = true;
                                }
                            }
                        }
                    }
                }
                if (z) {
                    map2.put("del", arrayList);
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    linkedHashSet.add("Item");
                    return new j(false, true, new ArrayList(), linkedHashSet);
                }
            }
        }
        return j.d();
    }

    /* JADX WARN: Code duplicated, block: B:41:0x004b  */
    /* JADX WARN: Code duplicated, block: B:47:0x0056  */
    /* JADX WARN: Code duplicated, block: B:48:0x0059  */
    public static int n(Map map, int i2, int i3, int i4, boolean z) {
        int i5;
        if (i2 == 1 && i4 == 7) {
            if (z) {
                i5 = 50;
            } else {
                i5 = 0;
            }
        } else if ((i3 == 1 && i2 == 1 && i4 == 1) || ((i3 == 2 && i2 == 2 && i4 == 2) || (i3 == 3 && i2 == 1 && i4 == 3))) {
            i5 = 25;
        } else if (i3 == 4 && i2 == 2 && i4 == 4) {
            i5 = 20;
        } else if (i3 == 5 && i2 == 3 && i4 == 5) {
            i5 = 60;
        } else if (i3 != 6 && i3 != 7) {
            i5 = 0;
        } else if (i2 != 1) {
            if ((i2 == 2 || !(i4 == 2 || i4 == 4)) && !(i2 == 3 && i4 == 5)) {
                i5 = 0;
            } else {
                i5 = 13;
            }
        } else if (i4 == 1 || i4 == 3) {
            i5 = 13;
        } else if (i4 == 6) {
            i5 = 2;
        } else if (i2 == 2) {
            i5 = 0;
        } else {
            i5 = 0;
        }
        return Math.max(0, i5 - g(0, c.a.c(i4), map));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x017b  */
    /* JADX WARN: Code duplicated, block: B:104:0x01b1 A[LOOP:1: B:103:0x01af->B:104:0x01b1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:109:0x01e7 A[LOOP:2: B:107:0x01e3->B:109:0x01e7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:111:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:112:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:114:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:115:0x0200  */
    /* JADX WARN: Code duplicated, block: B:118:0x0205  */
    /* JADX WARN: Code duplicated, block: B:119:0x0209  */
    /* JADX WARN: Code duplicated, block: B:124:0x0223  */
    /* JADX WARN: Code duplicated, block: B:126:0x022d A[LOOP:3: B:125:0x022b->B:126:0x022d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:128:0x0239 A[PHI: r2
      0x0239: PHI (r2v54 int) = (r2v4 int), (r2v5 int) binds: [B:127:0x0237, B:319:0x0239] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:129:0x023c  */
    /* JADX WARN: Code duplicated, block: B:131:0x024c  */
    /* JADX WARN: Code duplicated, block: B:133:0x0254  */
    /* JADX WARN: Code duplicated, block: B:134:0x0259  */
    /* JADX WARN: Code duplicated, block: B:137:0x0272  */
    /* JADX WARN: Code duplicated, block: B:141:0x027f  */
    /* JADX WARN: Code duplicated, block: B:144:0x028c  */
    /* JADX WARN: Code duplicated, block: B:146:0x0299  */
    /* JADX WARN: Code duplicated, block: B:148:0x029d  */
    /* JADX WARN: Code duplicated, block: B:149:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:151:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:153:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:155:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:156:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:158:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:160:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:162:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:163:0x02da  */
    /* JADX WARN: Code duplicated, block: B:165:0x02de  */
    /* JADX WARN: Code duplicated, block: B:166:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:168:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:170:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:172:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:174:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:176:0x0300  */
    /* JADX WARN: Code duplicated, block: B:177:0x0306  */
    /* JADX WARN: Code duplicated, block: B:178:0x0309  */
    /* JADX WARN: Code duplicated, block: B:180:0x030c  */
    /* JADX WARN: Code duplicated, block: B:182:0x0315  */
    /* JADX WARN: Code duplicated, block: B:183:0x0318  */
    /* JADX WARN: Code duplicated, block: B:185:0x0321  */
    /* JADX WARN: Code duplicated, block: B:186:0x0324  */
    /* JADX WARN: Code duplicated, block: B:188:0x0331  */
    /* JADX WARN: Code duplicated, block: B:190:0x0334  */
    /* JADX WARN: Code duplicated, block: B:191:0x0348  */
    /* JADX WARN: Code duplicated, block: B:193:0x0363  */
    /* JADX WARN: Code duplicated, block: B:194:0x0369  */
    /* JADX WARN: Code duplicated, block: B:196:0x0371  */
    /* JADX WARN: Code duplicated, block: B:197:0x0377  */
    /* JADX WARN: Code duplicated, block: B:199:0x037f  */
    /* JADX WARN: Code duplicated, block: B:200:0x0383  */
    /* JADX WARN: Code duplicated, block: B:202:0x038b  */
    /* JADX WARN: Code duplicated, block: B:203:0x0391  */
    /* JADX WARN: Code duplicated, block: B:205:0x0399  */
    /* JADX WARN: Code duplicated, block: B:206:0x039f  */
    /* JADX WARN: Code duplicated, block: B:208:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:209:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:211:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:212:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:214:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:215:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:217:0x03d0  */
    /* JADX WARN: Code duplicated, block: B:218:0x03d5  */
    /* JADX WARN: Code duplicated, block: B:220:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:221:0x03e2  */
    /* JADX WARN: Code duplicated, block: B:223:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:224:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:226:0x03f7  */
    /* JADX WARN: Code duplicated, block: B:227:0x03fc  */
    /* JADX WARN: Code duplicated, block: B:229:0x0404  */
    /* JADX WARN: Code duplicated, block: B:230:0x0409  */
    /* JADX WARN: Code duplicated, block: B:232:0x0411  */
    /* JADX WARN: Code duplicated, block: B:233:0x0416  */
    /* JADX WARN: Code duplicated, block: B:235:0x041e  */
    /* JADX WARN: Code duplicated, block: B:241:0x0447  */
    /* JADX WARN: Code duplicated, block: B:244:0x0453  */
    /* JADX WARN: Code duplicated, block: B:246:0x045b  */
    /* JADX WARN: Code duplicated, block: B:247:0x045e  */
    /* JADX WARN: Code duplicated, block: B:250:0x0468  */
    /* JADX WARN: Code duplicated, block: B:254:0x049c  */
    /* JADX WARN: Code duplicated, block: B:257:0x04ac  */
    /* JADX WARN: Code duplicated, block: B:260:0x04d8 A[LOOP:4: B:255:0x04a6->B:260:0x04d8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:263:0x0517  */
    /* JADX WARN: Code duplicated, block: B:266:0x052f  */
    /* JADX WARN: Code duplicated, block: B:307:0x06b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:312:0x01f3 A[EDGE_INSN: B:312:0x01f3->B:110:0x01f3 BREAK  A[LOOP:2: B:107:0x01e3->B:109:0x01e7], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:314:0x04e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:315:0x04c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:316:0x0551 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:317:0x053d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:318:? A[LOOP:5: B:264:0x0529->B:318:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:319:0x0239 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:320:0x0264 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:64:0x010d  */
    /* JADX WARN: Code duplicated, block: B:65:0x0112  */
    /* JADX WARN: Code duplicated, block: B:74:0x0120  */
    /* JADX WARN: Code duplicated, block: B:76:0x0123  */
    /* JADX WARN: Code duplicated, block: B:77:0x0125  */
    /* JADX WARN: Code duplicated, block: B:79:0x0128  */
    /* JADX WARN: Code duplicated, block: B:81:0x012b  */
    /* JADX WARN: Code duplicated, block: B:82:0x012d  */
    /* JADX WARN: Code duplicated, block: B:83:0x012f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:85:0x0132 A[DONT_INVERT, PHI: r15
      0x0132: PHI (r15v9 char) = (r15v8 char), (r15v11 char) binds: [B:78:0x0126, B:81:0x012b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:87:0x0135 A[DONT_INVERT, PHI: r15
      0x0135: PHI (r15v7 int) = (r15v6 int), (r15v12 int) binds: [B:73:0x011e, B:76:0x0123] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:89:0x0138  */
    /* JADX WARN: Code duplicated, block: B:90:0x013a  */
    /* JADX WARN: Code duplicated, block: B:94:0x0149  */
    /* JADX WARN: Code duplicated, block: B:96:0x016a  */
    /* JADX WARN: Code duplicated, block: B:98:0x0172  */
    /* JADX WARN: Instruction removed from duplicated block: B:124:0x0223, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:241:0x0447, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:250:0x0468, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    public static j o(Map map, int i2, int i3) {
        double dNextDouble;
        double dNextDouble2;
        boolean z;
        int i4;
        int i5;
        boolean z2;
        char c2;
        String str;
        Object obj;
        int i6;
        j jVar;
        String str2;
        int i7;
        Map mapQ;
        int iG;
        int[] iArrD;
        int length;
        int i8;
        int iN;
        String str3;
        int i9;
        int i10;
        double dMin;
        int i11;
        int iN2;
        double dC;
        int[] iArrD2;
        int length2;
        int i12;
        int i13;
        int i14;
        int iN3;
        int i15;
        int i16;
        i iVar;
        double dC2;
        int i17;
        int i18;
        String str4;
        String str5;
        String strValueOf;
        Object obj2;
        k kVar;
        String str6;
        int i19;
        int i20;
        String str7;
        String str8;
        boolean zEquals;
        int i21;
        boolean z3;
        String str9;
        String str10;
        String str11;
        Iterator it;
        Map mapZ0;
        Map mapZ1;
        Map map2;
        String strValueOf2;
        String str12;
        j jVar2;
        String str13;
        Iterator it2;
        Map map3;
        String str14;
        String str15;
        int i22;
        int iIntValue;
        int iIntValue2;
        boolean z4;
        boolean z5;
        TimeZone timeZone = TimeZone.getTimeZone("Asia/Shanghai");
        Locale locale = Locale.US;
        Calendar calendar = Calendar.getInstance(timeZone, locale);
        calendar.setTimeInMillis(c7.g() * 1000);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", locale);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai"));
        int i23 = calendar.get(7);
        int i24 = i23 != 1 ? i23 - 1 : 7;
        String str16 = simpleDateFormat.format(calendar.getTime());
        boolean zF = f(map);
        j jVarM = m(map);
        int i25 = 0;
        int i26 = 0;
        while (i26 < Math.max(i25, i3)) {
            Random random = f926c;
            synchronized (random) {
                dNextDouble = random.nextDouble();
                dNextDouble2 = random.nextDouble();
            }
            if (i2 == 0) {
                jVar2 = j.d();
                i16 = i24;
                str3 = str16;
                z3 = zF;
                i6 = i26;
            } else {
                Object obj3 = map.get("dungeon_stars");
                Map mapU1 = obj3 instanceof Map ? (Map) obj3 : obj3 instanceof String ? p5.u1((String) obj3) : null;
                if (mapU1 == null) {
                    z = false;
                } else {
                    Object obj4 = mapU1.get("501003");
                    if (obj4 instanceof Number) {
                        iIntValue = ((Number) obj4).intValue();
                    } else if (obj4 instanceof String) {
                        try {
                            iIntValue = Integer.parseInt(((String) obj4).trim());
                        } catch (NumberFormatException unused) {
                            iIntValue = 0;
                        }
                    } else {
                        iIntValue = 0;
                    }
                    if (iIntValue <= 0) {
                        Object obj5 = mapU1.get("501003".concat("01"));
                        if (obj5 instanceof Number) {
                            iIntValue2 = ((Number) obj5).intValue();
                        } else if (obj5 instanceof String) {
                            try {
                                iIntValue2 = Integer.parseInt(((String) obj5).trim());
                            } catch (NumberFormatException unused2) {
                                iIntValue2 = 0;
                            }
                        } else {
                            iIntValue2 = 0;
                        }
                        if (iIntValue2 <= 0) {
                            z = false;
                        }
                    }
                    z = true;
                }
                if (z) {
                    i5 = 1;
                } else {
                    Object obj6 = map.get("user_map_step");
                    String strTrim = obj6 == null ? "" : String.valueOf(obj6).trim();
                    if (strTrim.length() >= 6 && strTrim.startsWith("500")) {
                        strTrim = strTrim.substring(3, 6);
                    }
                    i4 = 1;
                    if (w1.l2(strTrim, 0) > 1) {
                        i5 = 1;
                    } else {
                        i5 = 0;
                    }
                    if (i5 != 0) {
                        if ((i2 != i4 && zF) || i24 == 6 || i24 == 7) {
                            z2 = true;
                        } else if (i24 == i4) {
                            if (i2 == i4) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                        } else if (i24 == 3) {
                            i4 = 1;
                            if (i2 == i4) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                        } else {
                            c2 = 2;
                            if (i24 == 2) {
                                if (i2 == c2) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                            } else if (i24 == 4) {
                                c2 = 2;
                                if (i2 == c2) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                            } else if (i24 == 5 || i2 != 3) {
                                z2 = false;
                            } else {
                                z2 = true;
                            }
                        }
                        if (z2) {
                            str = "daily_adventure_state";
                            obj = map.get("daily_adventure_state");
                            i6 = i26;
                            jVar = jVarM;
                            str2 = "";
                            if (obj instanceof Map) {
                                mapQ = (Map) obj;
                                if (c.a.A(mapQ, "date", str16)) {
                                    i7 = 3;
                                    if (g(0, "schema_version", mapQ) != 3) {
                                    }
                                } else {
                                    i7 = 3;
                                }
                                mapQ = c.a.q("date", str16);
                                mapQ.put("schema_version", Integer.valueOf(i7));
                                mapQ.put("total_count", 0);
                                mapQ.put("PVE_count", 0);
                                mapQ.put("LADDER_count", 0);
                                mapQ.put("PVP_count", 0);
                                mapQ.put("PVE_battle_count", 0);
                                mapQ.put("LADDER_battle_count", 0);
                                mapQ.put("PVP_battle_count", 0);
                                for (int i27 : a.b0.d(7)) {
                                    mapQ.put(c.a.c(i27), 0);
                                }
                                mapQ.put("weekend_god_skill_count", 0);
                                map.put("daily_adventure_state", mapQ);
                            } else {
                                i7 = 3;
                                mapQ = c.a.q("date", str16);
                                mapQ.put("schema_version", Integer.valueOf(i7));
                                mapQ.put("total_count", 0);
                                mapQ.put("PVE_count", 0);
                                mapQ.put("LADDER_count", 0);
                                mapQ.put("PVP_count", 0);
                                mapQ.put("PVE_battle_count", 0);
                                mapQ.put("LADDER_battle_count", 0);
                                mapQ.put("PVP_battle_count", 0);
                                while (i22 < r12) {
                                    mapQ.put(c.a.c(i27), 0);
                                }
                                mapQ.put("weekend_god_skill_count", 0);
                                map.put("daily_adventure_state", mapQ);
                            }
                            String strConcat = l.c(i2).concat("_battle_count");
                            iG = g(0, strConcat, mapQ);
                            mapQ.put(strConcat, Integer.valueOf(iG + 1));
                            iArrD = a.b0.d(7);
                            length = iArrD.length;
                            i8 = 0;
                            iN = 0;
                            while (true) {
                                str3 = str16;
                                if (i8 < length) {
                                    break;
                                }
                                iN += n(mapQ, i2, i24, iArrD[i8], zF);
                                i8++;
                                str16 = str3;
                            }
                            if (iN > 0) {
                                if (i2 == 1) {
                                    i9 = 50;
                                } else {
                                    i9 = 66;
                                }
                                i10 = i9 - iG;
                                if (i10 <= 0) {
                                    dMin = 1.0d;
                                } else {
                                    dMin = Math.min(1.0d, ((double) iN) / ((double) i10));
                                }
                                if (dNextDouble >= Math.max(0.25d, dMin)) {
                                    i16 = i24;
                                    jVar2 = j.d();
                                } else {
                                    iN2 = 0;
                                    for (int i28 : a.b0.d(7)) {
                                        iN2 += n(mapQ, i2, i24, i28, zF);
                                    }
                                    if (iN2 <= 0) {
                                        i16 = i24;
                                        iVar = null;
                                    } else {
                                        dC = c(dNextDouble2) * ((double) iN2);
                                        iArrD2 = a.b0.d(7);
                                        length2 = iArrD2.length;
                                        i12 = 0;
                                        i13 = 0;
                                        while (true) {
                                            if (i12 >= length2) {
                                                i16 = i24;
                                                iVar = null;
                                            } else {
                                                i14 = iArrD2[i12];
                                                iN3 = n(mapQ, i2, i24, i14, zF);
                                                if (iN3 <= 0) {
                                                    i16 = i24;
                                                } else {
                                                    i15 = i13 + iN3;
                                                    i16 = i24;
                                                    if (dC < i15) {
                                                        iVar = new i(i14, c((dC - ((double) i13)) / ((double) iN3)));
                                                    } else {
                                                        i13 = i15;
                                                    }
                                                }
                                                i12++;
                                                i2 = i2;
                                                i24 = i16;
                                                iArrD2 = iArrD2;
                                            }
                                        }
                                    }
                                    if (iVar == null) {
                                        jVar2 = j.d();
                                    } else {
                                        dC2 = c(iVar.f877b);
                                        i17 = iVar.f876a;
                                        if (i17 == 1) {
                                            if (dC2 < 0.5d) {
                                                str15 = "600007";
                                            } else {
                                                str15 = "600050";
                                            }
                                            kVar = k.a(5, str15, k.c(str15));
                                        } else if (i17 == 2) {
                                            if (dC2 < 0.5d) {
                                                str7 = "600008";
                                            } else {
                                                str7 = "600051";
                                            }
                                            kVar = k.a(6, str7, k.c(str7));
                                        } else {
                                            i18 = 100;
                                            if (i17 == 3) {
                                                if (dC2 < 0.3333333333333333d) {
                                                    i20 = 200;
                                                } else if (dC2 < 0.6666666666666666d) {
                                                    kVar = k.e(100);
                                                } else {
                                                    i20 = 50;
                                                }
                                                kVar = k.e(i20);
                                            } else if (i17 == 4) {
                                                if (dC2 < 0.3333333333333333d) {
                                                    i19 = 5;
                                                } else if (dC2 < 0.6666666666666666d) {
                                                    kVar = k.d(10);
                                                } else {
                                                    i19 = 20;
                                                }
                                                kVar = k.d(i19);
                                            } else if (i17 == 5) {
                                                if (dC2 < 0.34d) {
                                                    str6 = "791487";
                                                } else if (dC2 < 0.67d) {
                                                    str6 = "791488";
                                                } else {
                                                    str6 = "791489";
                                                }
                                                kVar = k.a(1, str6, k.c(str6));
                                            } else if (i17 == 7) {
                                                kVar = k.b("600087", 10, 39, "itemname600087", k("141002", 117));
                                            } else {
                                                str4 = f924a[(int) Math.floor(c(dC2) * ((double) 15))];
                                                if ("311009".equals(str4)) {
                                                    str5 = "111009";
                                                    i18 = 98;
                                                } else if ("311016".equals(str4)) {
                                                    str5 = "111016";
                                                    i18 = 99;
                                                } else if ("312002".equals(str4)) {
                                                    str5 = "112002";
                                                } else if ("321009".equals(str4)) {
                                                    str5 = "121009";
                                                    i18 = 101;
                                                } else if ("321016".equals(str4)) {
                                                    str5 = "121016";
                                                    i18 = 102;
                                                } else if ("321018".equals(str4)) {
                                                    str5 = "121018";
                                                    i18 = 103;
                                                } else if ("322009".equals(str4)) {
                                                    str5 = "122009";
                                                    i18 = 104;
                                                } else if ("341007".equals(str4)) {
                                                    str5 = "141007";
                                                    i18 = 105;
                                                } else if ("341006".equals(str4)) {
                                                    str5 = "141006";
                                                    i18 = 106;
                                                } else if ("342007".equals(str4)) {
                                                    str5 = "142007";
                                                    i18 = 107;
                                                } else if ("321013".equals(str4)) {
                                                    str5 = "121013";
                                                    i18 = 108;
                                                } else if ("342002".equals(str4)) {
                                                    str5 = "142002";
                                                    i18 = 109;
                                                } else if ("351009".equals(str4)) {
                                                    str5 = "122023";
                                                    i18 = 75;
                                                } else if ("351019".equals(str4)) {
                                                    str5 = "122008";
                                                    i18 = 78;
                                                } else {
                                                    if ("351020".equals(str4)) {
                                                        throw new IllegalArgumentException(c.a.i("Missing daily adventure presentation for skill ", str4));
                                                    }
                                                    str5 = "121019";
                                                    i18 = 79;
                                                }
                                                com.sgscq.vpn.cloud.a aVarK = k(str5, i18);
                                                String str17 = aVarK.f264a;
                                                String str18 = aVarK.f265b;
                                                String str19 = aVarK.f266c;
                                                strValueOf = (String) f925b.get(str4);
                                                if (strValueOf != null || strValueOf.isEmpty()) {
                                                    Map mapK1 = w1.a1(null).k1(str4);
                                                    obj2 = mapK1 != null ? mapK1.get("name") : null;
                                                    if (obj2 == null) {
                                                        strValueOf = str2;
                                                    } else {
                                                        strValueOf = String.valueOf(obj2);
                                                    }
                                                    if (strValueOf.isEmpty()) {
                                                        strValueOf = str4 + "01";
                                                    }
                                                }
                                                kVar = new k(str4, 1, 21, 8, "SkillPiece", str17, str18, str19, strValueOf);
                                            }
                                        }
                                        str8 = kVar.f895e;
                                        zEquals = "SkillPiece".equals(str8);
                                        i21 = kVar.f892b;
                                        if (zEquals) {
                                            str13 = kVar.f891a;
                                            it2 = i("SkillPiece", map).iterator();
                                            while (true) {
                                                if (it2.hasNext()) {
                                                    z3 = zF;
                                                    str9 = str8;
                                                    str10 = str;
                                                    List listD = d("SkillPiece", map);
                                                    mapZ1 = p5.z0("pk_id", String.valueOf(j("SkillPiece", map)), "id", str13, "skill_id", str13, "num", Integer.valueOf(i21), "skill_piece_num", Integer.valueOf(i21));
                                                    listD.add(mapZ1);
                                                    break;
                                                }
                                                z3 = zF;
                                                map3 = (Map) it2.next();
                                                str9 = str8;
                                                str10 = str;
                                                str14 = str2;
                                                if (c.a.C(map3, "id", str14, "skill_id", str13)) {
                                                    mapZ1 = l("SkillPiece", map, map3);
                                                    int iG2 = g(g(0, "skill_piece_num", map3), "num", map3) + i21;
                                                    c.a.t(iG2, mapZ1, "num", iG2, "skill_piece_num");
                                                    break;
                                                }
                                                str2 = str14;
                                                str8 = str9;
                                                zF = z3;
                                                str = str10;
                                            }
                                            p("SkillPiece", map, mapZ1);
                                        } else {
                                            z3 = zF;
                                            str9 = str8;
                                            str10 = str;
                                            str11 = kVar.f891a;
                                            it = i("Item", map).iterator();
                                            while (true) {
                                                if (it.hasNext()) {
                                                    List listD2 = d("Item", map);
                                                    String strValueOf3 = String.valueOf(j("Item", map));
                                                    Integer numValueOf = Integer.valueOf(i21);
                                                    Integer numValueOf2 = Integer.valueOf(i21);
                                                    int i29 = kVar.f893c;
                                                    mapZ0 = p5.z0("pk_id", strValueOf3, "id", str11, "item_id", str11, "num", numValueOf, "item_num", numValueOf2, "item_type", Integer.valueOf(i29), "type", Integer.valueOf(i29));
                                                    listD2.add(mapZ0);
                                                    break;
                                                }
                                                map2 = (Map) it.next();
                                                if (c.a.C(map2, "id", str2, "item_id", str11)) {
                                                    mapZ0 = l("Item", map, map2);
                                                    int iG3 = g(g(0, "num", map2), "item_num", map2) + i21;
                                                    c.a.t(iG3, mapZ0, "num", iG3, "item_num");
                                                    break;
                                                }
                                            }
                                            mapZ1 = mapZ0;
                                            p("Item", map, mapZ1);
                                        }
                                        mapQ.put("total_count", Integer.valueOf(g(0, "total_count", mapQ) + 1));
                                        String strConcat2 = l.c(i2).concat("_count");
                                        mapQ.put(strConcat2, Integer.valueOf(g(0, strConcat2, mapQ) + 1));
                                        String strC = c.a.c(i17);
                                        mapQ.put(strC, Integer.valueOf(g(0, strC, mapQ) + 1));
                                        mapQ.put("weekend_god_skill_count", Integer.valueOf(g(0, "god_skill_count", mapQ)));
                                        mapQ.put("last_source", l.c(i2));
                                        strValueOf2 = kVar.f891a;
                                        mapQ.put("last_reward_id", strValueOf2);
                                        int i30 = kVar.f894d;
                                        mapQ.put("last_event_type", String.valueOf(i30));
                                        map.put(str10, mapQ);
                                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                                        str12 = str9;
                                        linkedHashSet.add(str12);
                                        Map[] mapArr = new Map[1];
                                        if ("Item".equals(str12) && mapZ1.get("pk_id") != null) {
                                            strValueOf2 = String.valueOf(mapZ1.get("pk_id"));
                                        }
                                        mapArr[0] = p5.z0("type", String.valueOf(i30), "num", String.valueOf(i21), "info", p5.z0("card", kVar.f896f, "icon", kVar.f891a, "pk_id", strValueOf2, "num", String.valueOf(i21), "title", kVar.f897g, "talking", kVar.f898h, "name", kVar.f899i));
                                        jVar2 = new j(true, true, p5.v0(mapArr), linkedHashSet);
                                        i25 = 0;
                                    }
                                }
                            } else {
                                i16 = i24;
                                jVar2 = j.d();
                            }
                        } else {
                            i16 = i24;
                            str3 = str16;
                            jVar = jVarM;
                            jVar2 = j.d();
                            i6 = i26;
                        }
                        i25 = 0;
                        z3 = zF;
                    } else {
                        i16 = i24;
                        str3 = str16;
                        jVar = jVarM;
                        jVar2 = j.d();
                        i6 = i26;
                        i25 = 0;
                        z3 = zF;
                    }
                    jVarM = jVar;
                }
                i4 = i5;
                if (i5 != 0) {
                    if (i2 != i4) {
                        if (i24 == i4) {
                            if (i2 == i4) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                        } else if (i24 == 3) {
                            i4 = 1;
                            if (i2 == i4) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                        } else {
                            c2 = 2;
                            if (i24 == 2) {
                                if (i2 == c2) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                            } else if (i24 == 4) {
                                c2 = 2;
                                if (i2 == c2) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                            } else {
                                if (i24 == 5) {
                                }
                                z2 = false;
                            }
                        }
                    } else if (i24 == i4) {
                        if (i2 == i4) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    } else if (i24 == 3) {
                        i4 = 1;
                        if (i2 == i4) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    } else {
                        c2 = 2;
                        if (i24 == 2) {
                            if (i2 == c2) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                        } else if (i24 == 4) {
                            c2 = 2;
                            if (i2 == c2) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                        } else {
                            if (i24 == 5) {
                            }
                            z2 = false;
                        }
                    }
                    if (z2) {
                        i16 = i24;
                        str3 = str16;
                        jVar = jVarM;
                        jVar2 = j.d();
                        i6 = i26;
                    } else {
                        str = "daily_adventure_state";
                        obj = map.get("daily_adventure_state");
                        i6 = i26;
                        jVar = jVarM;
                        str2 = "";
                        if (obj instanceof Map) {
                            mapQ = (Map) obj;
                            if (c.a.A(mapQ, "date", str16)) {
                                i7 = 3;
                                if (g(0, "schema_version", mapQ) != 3) {
                                }
                            } else {
                                i7 = 3;
                            }
                            mapQ = c.a.q("date", str16);
                            mapQ.put("schema_version", Integer.valueOf(i7));
                            mapQ.put("total_count", 0);
                            mapQ.put("PVE_count", 0);
                            mapQ.put("LADDER_count", 0);
                            mapQ.put("PVP_count", 0);
                            mapQ.put("PVE_battle_count", 0);
                            mapQ.put("LADDER_battle_count", 0);
                            mapQ.put("PVP_battle_count", 0);
                            while (i22 < r12) {
                                mapQ.put(c.a.c(i27), 0);
                            }
                            mapQ.put("weekend_god_skill_count", 0);
                            map.put("daily_adventure_state", mapQ);
                        } else {
                            i7 = 3;
                            mapQ = c.a.q("date", str16);
                            mapQ.put("schema_version", Integer.valueOf(i7));
                            mapQ.put("total_count", 0);
                            mapQ.put("PVE_count", 0);
                            mapQ.put("LADDER_count", 0);
                            mapQ.put("PVP_count", 0);
                            mapQ.put("PVE_battle_count", 0);
                            mapQ.put("LADDER_battle_count", 0);
                            mapQ.put("PVP_battle_count", 0);
                            while (i22 < r12) {
                                mapQ.put(c.a.c(i27), 0);
                            }
                            mapQ.put("weekend_god_skill_count", 0);
                            map.put("daily_adventure_state", mapQ);
                        }
                        String strConcat3 = l.c(i2).concat("_battle_count");
                        iG = g(0, strConcat3, mapQ);
                        mapQ.put(strConcat3, Integer.valueOf(iG + 1));
                        iArrD = a.b0.d(7);
                        length = iArrD.length;
                        i8 = 0;
                        iN = 0;
                        while (true) {
                            str3 = str16;
                            if (i8 < length) {
                                break;
                                break;
                            }
                            iN += n(mapQ, i2, i24, iArrD[i8], zF);
                            i8++;
                            str16 = str3;
                        }
                        if (iN > 0) {
                            if (i2 == 1) {
                                i9 = 50;
                            } else {
                                i9 = 66;
                            }
                            i10 = i9 - iG;
                            if (i10 <= 0) {
                                dMin = 1.0d;
                            } else {
                                dMin = Math.min(1.0d, ((double) iN) / ((double) i10));
                            }
                            if (dNextDouble >= Math.max(0.25d, dMin)) {
                                i16 = i24;
                                jVar2 = j.d();
                            } else {
                                iN2 = 0;
                                while (i11 < r5) {
                                    iN2 += n(mapQ, i2, i24, i28, zF);
                                }
                                if (iN2 <= 0) {
                                    i16 = i24;
                                    iVar = null;
                                } else {
                                    dC = c(dNextDouble2) * ((double) iN2);
                                    iArrD2 = a.b0.d(7);
                                    length2 = iArrD2.length;
                                    i12 = 0;
                                    i13 = 0;
                                    while (true) {
                                        if (i12 >= length2) {
                                            i16 = i24;
                                            iVar = null;
                                        } else {
                                            i14 = iArrD2[i12];
                                            iN3 = n(mapQ, i2, i24, i14, zF);
                                            if (iN3 <= 0) {
                                                i16 = i24;
                                            } else {
                                                i15 = i13 + iN3;
                                                i16 = i24;
                                                if (dC < i15) {
                                                    iVar = new i(i14, c((dC - ((double) i13)) / ((double) iN3)));
                                                } else {
                                                    i13 = i15;
                                                }
                                            }
                                            i12++;
                                            i2 = i2;
                                            i24 = i16;
                                            iArrD2 = iArrD2;
                                        }
                                    }
                                }
                                if (iVar == null) {
                                    jVar2 = j.d();
                                } else {
                                    dC2 = c(iVar.f877b);
                                    i17 = iVar.f876a;
                                    if (i17 == 1) {
                                        if (dC2 < 0.5d) {
                                            str15 = "600007";
                                        } else {
                                            str15 = "600050";
                                        }
                                        kVar = k.a(5, str15, k.c(str15));
                                    } else if (i17 == 2) {
                                        if (dC2 < 0.5d) {
                                            str7 = "600008";
                                        } else {
                                            str7 = "600051";
                                        }
                                        kVar = k.a(6, str7, k.c(str7));
                                    } else {
                                        i18 = 100;
                                        if (i17 == 3) {
                                            if (dC2 < 0.3333333333333333d) {
                                                i20 = 200;
                                            } else if (dC2 < 0.6666666666666666d) {
                                                kVar = k.e(100);
                                            } else {
                                                i20 = 50;
                                            }
                                            kVar = k.e(i20);
                                        } else if (i17 == 4) {
                                            if (dC2 < 0.3333333333333333d) {
                                                i19 = 5;
                                            } else if (dC2 < 0.6666666666666666d) {
                                                kVar = k.d(10);
                                            } else {
                                                i19 = 20;
                                            }
                                            kVar = k.d(i19);
                                        } else if (i17 == 5) {
                                            if (dC2 < 0.34d) {
                                                str6 = "791487";
                                            } else if (dC2 < 0.67d) {
                                                str6 = "791488";
                                            } else {
                                                str6 = "791489";
                                            }
                                            kVar = k.a(1, str6, k.c(str6));
                                        } else if (i17 == 7) {
                                            kVar = k.b("600087", 10, 39, "itemname600087", k("141002", 117));
                                        } else {
                                            str4 = f924a[(int) Math.floor(c(dC2) * ((double) 15))];
                                            if ("311009".equals(str4)) {
                                                str5 = "111009";
                                                i18 = 98;
                                            } else if ("311016".equals(str4)) {
                                                str5 = "111016";
                                                i18 = 99;
                                            } else if ("312002".equals(str4)) {
                                                str5 = "112002";
                                            } else if ("321009".equals(str4)) {
                                                str5 = "121009";
                                                i18 = 101;
                                            } else if ("321016".equals(str4)) {
                                                str5 = "121016";
                                                i18 = 102;
                                            } else if ("321018".equals(str4)) {
                                                str5 = "121018";
                                                i18 = 103;
                                            } else if ("322009".equals(str4)) {
                                                str5 = "122009";
                                                i18 = 104;
                                            } else if ("341007".equals(str4)) {
                                                str5 = "141007";
                                                i18 = 105;
                                            } else if ("341006".equals(str4)) {
                                                str5 = "141006";
                                                i18 = 106;
                                            } else if ("342007".equals(str4)) {
                                                str5 = "142007";
                                                i18 = 107;
                                            } else if ("321013".equals(str4)) {
                                                str5 = "121013";
                                                i18 = 108;
                                            } else if ("342002".equals(str4)) {
                                                str5 = "142002";
                                                i18 = 109;
                                            } else if ("351009".equals(str4)) {
                                                str5 = "122023";
                                                i18 = 75;
                                            } else if ("351019".equals(str4)) {
                                                str5 = "122008";
                                                i18 = 78;
                                            } else {
                                                if ("351020".equals(str4)) {
                                                    throw new IllegalArgumentException(c.a.i("Missing daily adventure presentation for skill ", str4));
                                                }
                                                str5 = "121019";
                                                i18 = 79;
                                            }
                                            com.sgscq.vpn.cloud.a aVarK2 = k(str5, i18);
                                            String str110 = aVarK2.f264a;
                                            String str111 = aVarK2.f265b;
                                            String str112 = aVarK2.f266c;
                                            strValueOf = (String) f925b.get(str4);
                                            if (strValueOf != null) {
                                                Map mapK2 = w1.a1(null).k1(str4);
                                                if (mapK2 != null) {
                                                }
                                                if (obj2 == null) {
                                                    strValueOf = str2;
                                                } else {
                                                    strValueOf = String.valueOf(obj2);
                                                }
                                                if (strValueOf.isEmpty()) {
                                                    strValueOf = str4 + "01";
                                                }
                                            } else {
                                                Map mapK3 = w1.a1(null).k1(str4);
                                                if (mapK3 != null) {
                                                }
                                                if (obj2 == null) {
                                                    strValueOf = str2;
                                                } else {
                                                    strValueOf = String.valueOf(obj2);
                                                }
                                                if (strValueOf.isEmpty()) {
                                                    strValueOf = str4 + "01";
                                                }
                                            }
                                            kVar = new k(str4, 1, 21, 8, "SkillPiece", str110, str111, str112, strValueOf);
                                        }
                                    }
                                    str8 = kVar.f895e;
                                    zEquals = "SkillPiece".equals(str8);
                                    i21 = kVar.f892b;
                                    if (zEquals) {
                                        str13 = kVar.f891a;
                                        it2 = i("SkillPiece", map).iterator();
                                        while (true) {
                                            if (it2.hasNext()) {
                                                z3 = zF;
                                                str9 = str8;
                                                str10 = str;
                                                List listD3 = d("SkillPiece", map);
                                                mapZ1 = p5.z0("pk_id", String.valueOf(j("SkillPiece", map)), "id", str13, "skill_id", str13, "num", Integer.valueOf(i21), "skill_piece_num", Integer.valueOf(i21));
                                                listD3.add(mapZ1);
                                                break;
                                            }
                                            z3 = zF;
                                            map3 = (Map) it2.next();
                                            str9 = str8;
                                            str10 = str;
                                            str14 = str2;
                                            if (c.a.C(map3, "id", str14, "skill_id", str13)) {
                                                mapZ1 = l("SkillPiece", map, map3);
                                                int iG4 = g(g(0, "skill_piece_num", map3), "num", map3) + i21;
                                                c.a.t(iG4, mapZ1, "num", iG4, "skill_piece_num");
                                                break;
                                            }
                                            str2 = str14;
                                            str8 = str9;
                                            zF = z3;
                                            str = str10;
                                        }
                                        p("SkillPiece", map, mapZ1);
                                    } else {
                                        z3 = zF;
                                        str9 = str8;
                                        str10 = str;
                                        str11 = kVar.f891a;
                                        it = i("Item", map).iterator();
                                        while (true) {
                                            if (it.hasNext()) {
                                                List listD4 = d("Item", map);
                                                String strValueOf4 = String.valueOf(j("Item", map));
                                                Integer numValueOf3 = Integer.valueOf(i21);
                                                Integer numValueOf4 = Integer.valueOf(i21);
                                                int i210 = kVar.f893c;
                                                mapZ0 = p5.z0("pk_id", strValueOf4, "id", str11, "item_id", str11, "num", numValueOf3, "item_num", numValueOf4, "item_type", Integer.valueOf(i210), "type", Integer.valueOf(i210));
                                                listD4.add(mapZ0);
                                                break;
                                            }
                                            map2 = (Map) it.next();
                                            if (c.a.C(map2, "id", str2, "item_id", str11)) {
                                                mapZ0 = l("Item", map, map2);
                                                int iG5 = g(g(0, "num", map2), "item_num", map2) + i21;
                                                c.a.t(iG5, mapZ0, "num", iG5, "item_num");
                                                break;
                                            }
                                        }
                                        mapZ1 = mapZ0;
                                        p("Item", map, mapZ1);
                                    }
                                    mapQ.put("total_count", Integer.valueOf(g(0, "total_count", mapQ) + 1));
                                    String strConcat4 = l.c(i2).concat("_count");
                                    mapQ.put(strConcat4, Integer.valueOf(g(0, strConcat4, mapQ) + 1));
                                    String strC2 = c.a.c(i17);
                                    mapQ.put(strC2, Integer.valueOf(g(0, strC2, mapQ) + 1));
                                    mapQ.put("weekend_god_skill_count", Integer.valueOf(g(0, "god_skill_count", mapQ)));
                                    mapQ.put("last_source", l.c(i2));
                                    strValueOf2 = kVar.f891a;
                                    mapQ.put("last_reward_id", strValueOf2);
                                    int i31 = kVar.f894d;
                                    mapQ.put("last_event_type", String.valueOf(i31));
                                    map.put(str10, mapQ);
                                    LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                                    str12 = str9;
                                    linkedHashSet2.add(str12);
                                    Map[] mapArr2 = new Map[1];
                                    if ("Item".equals(str12)) {
                                        strValueOf2 = String.valueOf(mapZ1.get("pk_id"));
                                    }
                                    mapArr2[0] = p5.z0("type", String.valueOf(i31), "num", String.valueOf(i21), "info", p5.z0("card", kVar.f896f, "icon", kVar.f891a, "pk_id", strValueOf2, "num", String.valueOf(i21), "title", kVar.f897g, "talking", kVar.f898h, "name", kVar.f899i));
                                    jVar2 = new j(true, true, p5.v0(mapArr2), linkedHashSet2);
                                    i25 = 0;
                                }
                            }
                        } else {
                            i16 = i24;
                            jVar2 = j.d();
                        }
                    }
                    i25 = 0;
                    z3 = zF;
                } else {
                    i16 = i24;
                    str3 = str16;
                    jVar = jVarM;
                    jVar2 = j.d();
                    i6 = i26;
                    i25 = 0;
                    z3 = zF;
                }
                jVarM = jVar;
            }
            if (!jVarM.f882b) {
                jVarM = jVar2;
            } else if (jVar2.f882b) {
                ArrayList arrayList = new ArrayList((List) jVarM.f883c);
                arrayList.addAll((List) jVar2.f883c);
                LinkedHashSet linkedHashSet3 = new LinkedHashSet((Set) jVarM.f884d);
                linkedHashSet3.addAll((Set) jVar2.f884d);
                if (jVarM.f881a || jVar2.f881a) {
                    z4 = true;
                    z5 = 1;
                } else {
                    z4 = true;
                    z5 = i25;
                }
                jVarM = new j(z5, z4, arrayList, linkedHashSet3);
            }
            i26 = i6 + 1;
            str16 = str3;
            i24 = i16;
            zF = z3;
        }
        return jVarM;
    }

    public static void p(String str, Map map, Map map2) {
        Object obj = map.get(str);
        if (obj instanceof Map) {
            Map map3 = (Map) obj;
            Object obj2 = map3.get("upd");
            List arrayList = obj2 instanceof List ? (List) obj2 : new ArrayList();
            a(arrayList, map2);
            map3.put("upd", arrayList);
            if (map3.containsKey("del")) {
                return;
            }
            map3.put("del", new ArrayList());
        }
    }
}
