package com.sgscq.vpn.handler;

import com.sgscq.vpn.a7;
import com.sgscq.vpn.c7;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.w1;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ThreadLocalRandom;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final com.sgscq.vpn.config.h[][] f780b = {new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("790212", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("790211", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("790212", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("790211", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("790212", 5), new com.sgscq.vpn.config.h("790211", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791465", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791465", 5)}};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final com.sgscq.vpn.config.h[][] f781c = {new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("790204", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791766", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791767", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791768", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791769", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791770", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791771", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791475", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791476", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791477", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791478", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791479", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791480", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791481", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791482", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791483", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791484", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791485", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791486", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791487", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791488", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791470", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791471", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791472", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791473", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791474", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791480", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791481", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791475", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791476", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791477", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791478", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791479", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791480", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791481", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791475", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791476", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791477", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791478", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791479", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791480", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791481", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791481", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791481", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791481", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791481", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791481", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791481", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791481", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791481", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791481", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791481", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791481", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791481", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("791481", 5)}, new com.sgscq.vpn.config.h[]{new com.sgscq.vpn.config.h("790336", 5)}};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f782d = {660, 1020};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f783e = {28, 288, 2888, 8888, 28888};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b[] f784f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final b[] f785g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final b[] f786h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final b[] f787i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a[] f788j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k0 f789a;

    static {
        b bVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new b(5, 1, "790387"));
        arrayList.add(new b(10, 1, "792720"));
        arrayList.add(new b(15, 1, "792720"));
        arrayList.add(new b(20, 1, "792720"));
        arrayList.add(new b(22, 1, "792721"));
        arrayList.add(new b(24, 1, "792721"));
        arrayList.add(new b(26, 1, "792721"));
        int i2 = 27;
        while (i2 <= 120) {
            if (i2 >= 45 && i2 <= 49) {
                bVar = new b(i2, 1, 4, 1, "361001");
            } else if (i2 == 50) {
                bVar = new b(i2, 1, "791473");
            } else if (i2 == 95) {
                bVar = new b(i2, 1, 8, 1, "211003", "9211003");
            } else if (i2 == 100) {
                bVar = new b(i2, 1, "792723");
            } else {
                bVar = i2 == 120 ? new b(i2, 1, "792710") : new b(i2, 1, "600013");
            }
            arrayList.add(bVar);
            i2++;
        }
        f784f = (b[]) arrayList.toArray(new b[0]);
        f785g = new b[]{new b(21, 45, 6, 2, "121006"), new b(14, 60, 6, 3, "121006"), new b(26, 75, 6, 2, "121006"), new b(22, 90, 6, 3, "121006")};
        f786h = new b[]{new b(1, 4, "791759"), new b(5, 4, "791760"), new b(10, 4, "791761"), new b(13, 4, "791762"), new b(16, 4, "791763"), new b(18, 4, "791764"), new b(20, 4, "791765")};
        f787i = new b[]{new b(3, 1, 1, 5, "121006", "790363"), new b(4, 6, 6, 5, "121006"), new b(5, 1, 4, 5, "351019", "790285"), new b(6, 10, 6, 5, "121006"), new b(7, 1, 3, 5, "211003", "791675"), new b(8, 1, 3, 5, "221005", "791423"), new b(9, 14, 6, 5, "121006"), new b(10, 1, 1, 5, "121008", "790365")};
        f788j = new a[]{new a()};
    }

    public c(k0 k0Var) {
        this.f789a = k0Var;
    }

    public static LinkedHashMap A(int i2, int i3, String str, Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("type", Integer.valueOf(i2));
        linkedHashMap.put("id", str);
        linkedHashMap.put("item_type", Integer.valueOf(i2));
        linkedHashMap.put("item_id", str);
        Object orDefault = str;
        if (map != null) {
            orDefault = map.getOrDefault("pk_id", str);
        }
        linkedHashMap.put("pk_id", orDefault);
        Object obj = 1;
        linkedHashMap.put("level", map != null ? map.getOrDefault("level", obj) : 1);
        linkedHashMap.put("num", Integer.valueOf(i3));
        linkedHashMap.put("item_num", Integer.valueOf(i3));
        linkedHashMap.put("is_new", Boolean.TRUE);
        return linkedHashMap;
    }

    public static int B(Map map) {
        int iMin = Math.min(T(map.get("activity_continuous_signin_days")), 7);
        int i2 = 1;
        while (i2 <= iMin) {
            Boolean bool = Boolean.TRUE;
            boolean zEquals = bool.equals(map.get(k(i2)));
            boolean z = i2 == 1 || bool.equals(map.get(k(i2 + (-1))));
            if (!zEquals && z) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int C(Map map) {
        int iMin = Math.min(T(map.get("activity_cumulative_login_days")), 56);
        for (int i2 = 1; i2 <= iMin; i2++) {
            if (!Boolean.TRUE.equals(map.get("activity_received_cumulative_login_day_" + i2))) {
                return i2;
            }
        }
        return -1;
    }

    public static int D(Map map) {
        int iMin = Math.min(T(map.get("activity_daily_check_days")), 7);
        int i2 = 1;
        while (i2 <= iMin) {
            Boolean bool = Boolean.TRUE;
            boolean zEquals = bool.equals(map.get(n(i2)));
            boolean z = i2 == 1 || bool.equals(map.get(n(i2 + (-1))));
            if (!zEquals && z) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int E(long j2, Map map) {
        long jU = U(map.get("user_register_time"));
        if (jU <= 0 || jU > 9223372036854775L) {
            return 0;
        }
        long j3 = jU * 1000;
        if (j2 < j3) {
            return 0;
        }
        long j4 = j3 + 86400000;
        if (j2 >= j4) {
            return 0;
        }
        return (int) Math.min(86400L, ((j4 - j2) + 999) / 1000);
    }

    public static ArrayList F(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            arrayList2.add(p5.z0("style", p5.z0("style_id", Integer.valueOf(T(map.getOrDefault("type", 1))), "style_desc", String.valueOf(map.get("item_id")), "style_name", ""), "data", S(p5.v0(map))));
        }
        return arrayList2;
    }

    public static String G(String str, String str2, Map map) {
        Object obj;
        if (map == null || (obj = map.get(str)) == null) {
            return str2;
        }
        String strValueOf = String.valueOf(obj);
        return (strValueOf.isEmpty() || "null".equals(strValueOf)) ? str2 : strValueOf;
    }

    public static ArrayList H(long j2, Map map) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(I(map, "level_general", 1, 9, 86400, f784f));
        int iE = E(j2, map);
        if (iE > 0) {
            arrayList.add(I(map, "finish_dungeon", 129, 10, iE, f785g));
            arrayList.add(I(map, "collect_god", 9, 11, iE, f786h));
        }
        int iQ = Q(j2, map);
        if (iQ > 0) {
            arrayList.add(I(map, "opening_recharge_gifts", 8, 12, iQ, f787i));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static LinkedHashMap I(Map map, String str, int i2, int i3, int i4, b[] bVarArr) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (b bVar : bVarArr) {
            boolean zEquals = Boolean.TRUE.equals(map.get(K(str, bVar.f758a)));
            int i5 = bVar.f758a;
            if (!zEquals && J(bVar.f763f, map) >= i5) {
                z = true;
            }
            String str2 = bVar.f759b;
            int i6 = bVar.f762e;
            int iJ = j(str2, i6);
            int i7 = bVar.f761d;
            Object objZ0 = p5.z0("pk_id", str2, "id", str2, "item_id", str2, "num", Integer.valueOf(i7), "item_num", Integer.valueOf(i7), "type", Integer.valueOf(i6), "item_type", Integer.valueOf(iJ));
            if (i2 == 129) {
                objZ0 = F(p5.v0(objZ0));
            }
            arrayList.add(p5.z0("object", objZ0, "status", p5.z0("condition", Integer.valueOf(i5), "is_received", Boolean.valueOf(zEquals))));
        }
        return p5.z0("activity_type", Integer.valueOf(i2), "type", Integer.valueOf(i2), "can_receive", Boolean.valueOf(z), "instance_id", str, "instance_bg", "new", "home_sort", Integer.valueOf(i3), "left_time", Integer.valueOf(i4), "instance_countdown", Integer.valueOf(i4), "instance_interval", 86400, "reward_list", arrayList);
    }

    public static int J(int i2, Map map) {
        if (i2 == 1) {
            return T(map.getOrDefault("user_level", 1));
        }
        if (i2 == 2) {
            Object obj = map.get("user_map_step");
            String strTrim = String.valueOf(obj != null ? obj : "").trim();
            if (strTrim.startsWith("500") && strTrim.length() >= 6) {
                strTrim = strTrim.substring(3, 6);
            }
            return T(strTrim);
        }
        if (i2 == 3) {
            Object obj2 = map.get("user_elite_map_step");
            String strTrim2 = String.valueOf(obj2 != null ? obj2 : "").trim();
            if (strTrim2.startsWith("105") && strTrim2.length() >= 5) {
                strTrim2 = strTrim2.substring(3, 5);
            }
            return T(strTrim2);
        }
        if (i2 != 4) {
            if (i2 == 5) {
                return Math.max(T(map.get("user_vip_level")), Math.max(T(map.get("vip_level")), T(map.get("vipLevel"))));
            }
            return 0;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        w1 w1VarA1 = w1.a1(null);
        for (Map map2 : w1.f0("General", map)) {
            String strTrim3 = String.valueOf(map2.getOrDefault("general_id", map2.getOrDefault("id", map2.getOrDefault("generalId", "")))).trim();
            if (!strTrim3.isEmpty() && !"0".equals(strTrim3)) {
                Map mapJ0 = w1VarA1.J0(strTrim3);
                if ((mapJ0 == null ? 0 : c.a.e(mapJ0, "grade", 0)) == 1) {
                    linkedHashSet.add(strTrim3);
                }
            }
        }
        return linkedHashSet.size();
    }

    public static String K(String str, int i2) {
        return "activity_received_" + str + "_" + i2;
    }

    public static String L(String str) {
        StringBuilder sbB;
        if ("month_signin".equals(str) || "daily_check".equals(str)) {
            sbB = a.b0.b("activity_received_instance_", str, "_");
            str = c7.b();
        } else {
            sbB = new StringBuilder("activity_received_instance_");
        }
        sbB.append(str);
        return sbB.toString();
    }

    public static void M(Map map) {
        String strB = c7.b();
        String strValueOf = String.valueOf(map.getOrDefault("activity_continuous_signin_last_day", ""));
        int iT = T(map.get("activity_continuous_signin_days"));
        boolean z = false;
        int i2 = 1;
        if (!strB.equals(strValueOf)) {
            if (!strValueOf.isEmpty()) {
                z = p(strValueOf, strB) != 1 || iT >= 7;
                int iMax = z ? 1 : Math.max(1, iT) + 1;
                if (z) {
                    while (i2 <= 7) {
                        map.remove(k(i2));
                        i2++;
                    }
                }
                i2 = iMax;
            }
            map.put("activity_continuous_signin_last_day", strB);
            map.put("activity_continuous_signin_days", Integer.valueOf(i2));
            return;
        }
        if (iT >= 7) {
            int i3 = 1;
            while (true) {
                if (i3 > 7) {
                    int iT2 = T(map.get("activity_cumulative_login_days"));
                    if (iT2 > 7 && (iT2 - 1) % 7 == 0) {
                        z = true;
                        break;
                    } else {
                        break;
                        break;
                    }
                }
                if (!Boolean.TRUE.equals(map.get(k(i3)))) {
                    break;
                } else {
                    i3++;
                }
            }
        }
        if (z) {
            for (int i4 = 1; i4 <= 7; i4++) {
                map.remove(k(i4));
            }
            map.put("activity_continuous_signin_last_day", strB);
            map.put("activity_continuous_signin_days", 1);
        }
    }

    public static void N(Map map) {
        String strB = c7.b();
        if (c.a.B(map, "activity_cumulative_login_last_day", "", strB)) {
            return;
        }
        int iT = T(map.get("activity_cumulative_login_days"));
        map.put("activity_cumulative_login_last_day", strB);
        map.put("activity_cumulative_login_days", Integer.valueOf(Math.max(1, iT + 1)));
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0104 A[PHI: r2
      0x0104: PHI (r2v4 boolean) = (r2v2 boolean), (r2v6 boolean) binds: [B:63:0x0101, B:57:0x00f3] A[DONT_GENERATE, DONT_INLINE]] */
    public static void O(Map map) {
        boolean z;
        boolean z2;
        int iMax = 1;
        int i2 = 1;
        while (true) {
            z = false;
            if (i2 > 7) {
                z2 = false;
                break;
            } else {
                if (Boolean.TRUE.equals(map.get(n(i2)))) {
                    z2 = true;
                    break;
                }
                i2++;
            }
        }
        if (!z2) {
            ArrayList arrayListM = m(map);
            int i3 = 0;
            while (i3 < arrayListM.size() && i3 < 7) {
                i3++;
                map.put(n(i3), Boolean.TRUE);
            }
            if (!arrayListM.isEmpty()) {
                map.put("activity_daily_check_days", Integer.valueOf(Math.min(arrayListM.size(), 7)));
            }
        }
        String strB = c7.b();
        String strValueOf = String.valueOf(map.getOrDefault("activity_daily_check_last_day", ""));
        int iT = T(map.get("activity_daily_check_days"));
        if (strB.equals(strValueOf)) {
            if (iT >= 7) {
                int i4 = 1;
                while (true) {
                    if (i4 > 7) {
                        z = true;
                        break;
                    } else if (!Boolean.TRUE.equals(map.get(n(i4)))) {
                        break;
                    } else {
                        i4++;
                    }
                }
                if (z) {
                    ArrayList arrayListM2 = m(map);
                    if (strB.equals(arrayListM2.isEmpty() ? "" : (String) arrayListM2.get(arrayListM2.size() - 1))) {
                        return;
                    }
                    h(map);
                    map.put("activity_daily_check_last_day", strB);
                    map.put("activity_daily_check_days", 1);
                    return;
                }
                return;
            }
            return;
        }
        if (strValueOf.isEmpty()) {
            ArrayList arrayListM3 = m(map);
            String str = arrayListM3.isEmpty() ? "" : (String) arrayListM3.get(arrayListM3.size() - 1);
            if (!str.isEmpty()) {
                long jP = p(str, strB);
                if (jP > 1 || (jP == 1 && iT >= 7)) {
                    z = true;
                }
                if (jP == 0) {
                    iMax = Math.max(1, iT);
                } else if (!z) {
                    iMax = 1 + Math.max(1, iT);
                }
            }
        } else {
            z = p(strValueOf, strB) != 1 || iT >= 7;
            if (!z) {
                iMax = 1 + Math.max(1, iT);
            }
        }
        if (z) {
            h(map);
        }
        map.put("activity_daily_check_last_day", strB);
        map.put("activity_daily_check_days", Integer.valueOf(iMax));
    }

    public static boolean P(Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        O(map);
        M(map);
        N(map);
        return !linkedHashMap.equals(map);
    }

    public static int Q(long j2, Map map) {
        long jU = U(map.get("user_register_time"));
        if (jU > 0 && jU <= 9223372036854775L) {
            long j3 = jU * 1000;
            if (j2 < j3) {
                return 0;
            }
            long jV = V(j3);
            Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("GMT+08:00"), Locale.US);
            calendar.setTimeInMillis(jV);
            calendar.add(5, 1);
            long timeInMillis = calendar.getTimeInMillis();
            if (timeInMillis > jV && j2 < timeInMillis) {
                return (int) Math.min(86400L, ((timeInMillis - j2) + 999) / 1000);
            }
        }
        return 0;
    }

    public static void R(LinkedHashMap linkedHashMap, Map map) {
        if (map == null) {
            return;
        }
        linkedHashMap.put(String.valueOf(map.getOrDefault("pk_id", map.getOrDefault("general_id", map.getOrDefault("skill_id", map.getOrDefault("equipment_id", Integer.valueOf(linkedHashMap.size())))))), map);
    }

    public static ArrayList S(ArrayList arrayList) {
        Object objSubstring;
        String strValueOf;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            int iT = T(map.getOrDefault("type", 1));
            Object orDefault = map.getOrDefault("id", map.get("item_id"));
            int iT2 = T(map.getOrDefault("item_type", Integer.valueOf(iT)));
            boolean z = iT2 == 15 || (iT == 8 && String.valueOf(orDefault).startsWith("92"));
            if (z) {
                strValueOf = String.valueOf(orDefault);
                if (strValueOf.length() == 7 && strValueOf.startsWith("9")) {
                    objSubstring = strValueOf;
                    objSubstring = strValueOf;
                    objSubstring = strValueOf.substring(1);
                }
            } else {
                objSubstring = orDefault;
            }
            objSubstring = strValueOf;
            objSubstring = strValueOf;
            objSubstring = strValueOf;
            Integer numValueOf = Integer.valueOf(iT);
            Object[] objArr = new Object[14];
            objArr[0] = "id";
            objArr[1] = objSubstring;
            objArr[2] = "item_type";
            if (z) {
                iT = iT2;
            }
            objArr[3] = Integer.valueOf(iT);
            objArr[4] = "item_id";
            objArr[5] = map.getOrDefault("item_id", orDefault);
            objArr[6] = "pk_id";
            objArr[7] = map.get("pk_id");
            objArr[8] = "level";
            objArr[9] = map.getOrDefault("level", 1);
            objArr[10] = "num";
            objArr[11] = map.get("num");
            objArr[12] = "item_num";
            objArr[13] = map.get("item_num");
            arrayList2.add(p5.z0("type", numValueOf, objArr));
        }
        return arrayList2;
    }

    public static int T(Object obj) {
        if (obj == null) {
            obj = "0";
        }
        return w1.l2(String.valueOf(obj), 0);
    }

    public static long U(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        if (obj == null) {
            obj = "0";
        }
        try {
            return Long.parseLong(String.valueOf(obj));
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    public static long V(long j2) {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("GMT+08:00"), Locale.US);
        calendar.setTimeInMillis(j2);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public static LinkedHashMap W() {
        return p5.z0("error_code", 0, "ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success");
    }

    public static Map a(int i2, String str, Map map) {
        w1.k(i2, str, map);
        for (Map map2 : w1.f0("GeneralSoul", map)) {
            if (c.a.A(map2, "general_id", str)) {
                return map2;
            }
        }
        return p5.z0("pk_id", str, "id", str, "general_id", str, "num", Integer.valueOf(i2), "card_type", 1);
    }

    public static Map b(int i2, int i3, String str, Map map) {
        int iJ = j(str, i3);
        String str2 = "Item";
        List listF0 = w1.f0("Item", map);
        Iterator it = listF0.iterator();
        while (true) {
            String str3 = str2;
            if (!it.hasNext()) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                c.a.x(str3, map, linkedHashMap, "pk_id", "id", str);
                linkedHashMap.put("item_id", str);
                linkedHashMap.put("num", Integer.valueOf(Math.max(1, i2)));
                linkedHashMap.put("item_num", Integer.valueOf(Math.max(1, i2)));
                linkedHashMap.put("total_num", Integer.valueOf(Math.max(1, i2)));
                linkedHashMap.put("item_type", Integer.valueOf(iJ));
                linkedHashMap.put("type", String.valueOf(i3));
                linkedHashMap.put("is_new", Boolean.TRUE);
                listF0.add(linkedHashMap);
                map.put(str3, p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", listF0));
                return linkedHashMap;
            }
            Map map2 = (Map) it.next();
            Iterator it2 = it;
            if (c.a.C(map2, "id", "", "item_id", str)) {
                int iMax = Math.max(1, i2) + x(map2);
                map2.put("num", Integer.valueOf(iMax));
                map2.put("item_num", Integer.valueOf(iMax));
                map2.put("total_num", Integer.valueOf(iMax));
                map2.put("item_type", Integer.valueOf(iJ));
                map2.put("type", String.valueOf(i3));
                map.put(str3, p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", listF0));
                return map2;
            }
            str2 = str3;
            it = it2;
        }
    }

    public static void c(String str, ArrayList arrayList, ArrayList arrayList2, LinkedHashMap linkedHashMap) {
        if (arrayList2.isEmpty()) {
            return;
        }
        linkedHashMap.put(str, p5.z0("del", new ArrayList(), "upd", arrayList2, "add", new ArrayList()));
        arrayList.add(str);
    }

    public static Map d(LinkedHashMap linkedHashMap, Map map) {
        Object obj = linkedHashMap.get("push");
        LinkedHashMap linkedHashMap2 = obj instanceof Map ? new LinkedHashMap((Map) obj) : new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        for (Map map2 : new ArrayList(e(c7.f(), map))) {
            if (T(map2.get("activity_type")) != 129) {
                arrayList.add(map2);
            }
        }
        linkedHashMap2.put("party", arrayList);
        linkedHashMap2.putAll(g(map, c7.f(), c7.f254i));
        linkedHashMap.put("push", linkedHashMap2);
        return linkedHashMap;
    }

    public static ArrayList e(long j2, Map map) {
        if (c7.f254i) {
            return H(j2, map);
        }
        P(map);
        ArrayList arrayList = new ArrayList();
        arrayList.add(o(map, null));
        arrayList.add(l(map));
        arrayList.addAll(H(j2, map));
        return arrayList;
    }

    public static LinkedHashMap g(Map map, long j2, boolean z) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("gamble", z(map, j2, z));
        linkedHashMap.put("timing_power", s(map, j2, z));
        return linkedHashMap;
    }

    public static void h(Map map) {
        for (int i2 = 1; i2 <= 7; i2++) {
            map.remove(n(i2));
        }
        for (String str : new ArrayList(map.keySet())) {
            if (str.startsWith("activity_received_instance_daily_check_")) {
                map.remove(str);
            }
        }
    }

    public static String[] i(LinkedHashMap linkedHashMap) {
        String[] strArrSplit = String.valueOf(linkedHashMap.getOrDefault("cmn_modules", "")).split(",");
        ArrayList arrayList = new ArrayList();
        for (String str : strArrSplit) {
            String strTrim = str.trim();
            if (!strTrim.isEmpty()) {
                arrayList.add(strTrim);
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static int j(String str, int i2) {
        int iT;
        if (str != null && !str.isEmpty()) {
            Map mapC1 = w1.a1(null).c1(str);
            if (mapC1 != null && (iT = T(mapC1.get("item_type"))) > 0) {
                return iT;
            }
            if (("791490".equals(str) || "791491".equals(str) || (!str.startsWith("71") && !str.startsWith("72") && !str.startsWith("79"))) ? false : true) {
                return 1;
            }
            if (str.startsWith("92")) {
                return 15;
            }
        }
        return i2;
    }

    public static String k(int i2) {
        return a.b0.a("activity_received_continuous_signin_day_", i2);
    }

    public static LinkedHashMap l(Map map) {
        M(map);
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < 7) {
            int i3 = i2 + 1;
            boolean zEquals = Boolean.TRUE.equals(map.get(k(i3)));
            com.sgscq.vpn.config.h[] hVarArr = f780b[i2];
            ArrayList arrayList2 = new ArrayList();
            for (com.sgscq.vpn.config.h hVar : hVarArr) {
                String str = (String) hVar.f577b;
                int i4 = hVar.f579d;
                int iJ = j(str, i4);
                String str2 = (String) hVar.f577b;
                int i5 = hVar.f578c;
                arrayList2.add(p5.z0("pk_id", str2, "id", str2, "item_id", str2, "num", Integer.valueOf(i5), "item_num", Integer.valueOf(i5), "type", Integer.valueOf(i4), "item_type", Integer.valueOf(iJ)));
            }
            arrayList.add(p5.z0("object", F(arrayList2), "status", p5.z0("condition", Integer.valueOf(i3), "is_received", Boolean.valueOf(zEquals))));
            i2 = i3;
        }
        Object[] objArr = new Object[18];
        objArr[0] = "type";
        objArr[1] = 103;
        objArr[2] = "can_receive";
        objArr[3] = Boolean.valueOf(B(map) > 0);
        objArr[4] = "instance_id";
        objArr[5] = "continuous_signin";
        objArr[6] = "instance_bg";
        objArr[7] = "new";
        objArr[8] = "home_sort";
        objArr[9] = 7;
        objArr[10] = "left_time";
        objArr[11] = 86400;
        objArr[12] = "instance_countdown";
        objArr[13] = 86400;
        objArr[14] = "instance_interval";
        objArr[15] = 86400;
        objArr[16] = "reward_list";
        objArr[17] = arrayList;
        return p5.z0("activity_type", 103, objArr);
    }

    public static ArrayList m(Map map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (str.startsWith("activity_received_instance_daily_check_") && Boolean.TRUE.equals(entry.getValue())) {
                String strSubstring = str.substring(39);
                if (strSubstring.length() == 8) {
                    arrayList.add(strSubstring);
                }
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static String n(int i2) {
        return a.b0.a("activity_received_daily_check_day_", i2);
    }

    public static LinkedHashMap o(Map map, Map map2) {
        O(map);
        if (map2 == null) {
            map2 = p5.z0("pk_id", "791661", "id", "791661", "item_id", "791661", "num", 1, "item_num", 1, "type", 5, "item_type", Integer.valueOf(j("791661", 5)));
        }
        Object[] objArr = new Object[18];
        objArr[0] = "type";
        objArr[1] = 117;
        objArr[2] = "can_receive";
        objArr[3] = Boolean.valueOf(D(map) > 0);
        objArr[4] = "instance_id";
        objArr[5] = "daily_check";
        objArr[6] = "instance_bg";
        objArr[7] = "meiriqiandao2";
        objArr[8] = "home_sort";
        objArr[9] = 6;
        objArr[10] = "left_time";
        objArr[11] = 86400;
        objArr[12] = "instance_countdown";
        objArr[13] = 86400;
        objArr[14] = "instance_interval";
        objArr[15] = 86400;
        objArr[16] = "reward_list";
        ArrayList arrayList = new ArrayList();
        for (int i2 = 1; i2 <= 7; i2++) {
            arrayList.add(p5.z0("object", F(p5.v0(map2)), "status", p5.z0("condition", Integer.valueOf(i2), "is_received", Boolean.valueOf(Boolean.TRUE.equals(map.get(n(i2)))))));
        }
        objArr[17] = arrayList;
        return p5.z0("activity_type", 117, objArr);
    }

    public static long p(String str, String str2) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+08:00"));
            simpleDateFormat.setLenient(false);
            return (simpleDateFormat.parse(str2).getTime() - simpleDateFormat.parse(str).getTime()) / 86400000;
        } catch (NullPointerException | ParseException unused) {
            return Long.MAX_VALUE;
        }
    }

    public static Map q(LinkedHashMap linkedHashMap, Map map) {
        return linkedHashMap.get("delta_data") instanceof Map ? (Map) linkedHashMap.get("delta_data") : map;
    }

    public static LinkedHashMap r(String str) {
        return p5.z0("error_code", -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", str);
    }

    public static ArrayList s(Map map, long j2, boolean z) {
        int iCeil;
        ArrayList arrayList = new ArrayList();
        long jV = V(j2);
        for (int i2 = 0; i2 < 2; i2++) {
            long j3 = (((long) f782d[i2]) * 60000) + jV;
            long j4 = 7200000 + j3;
            int i3 = 120;
            if (j2 < j3) {
                iCeil = (int) Math.ceil((j3 - j2) / 60000.0d);
            } else if (j2 < j4) {
                iCeil = (int) Math.ceil((j3 - j2) / 60000.0d);
                if (iCeil >= 0) {
                    iCeil = -1;
                    i3 = 121;
                }
            } else {
                iCeil = 0;
                i3 = 0;
            }
            Boolean bool = Boolean.TRUE;
            StringBuilder sb = new StringBuilder("activity_feast_received_");
            sb.append(c7.c(j2));
            sb.append("_");
            sb.append(i2);
            arrayList.add(p5.z0("instance_id", "daily_feast_" + c7.c(j2) + "_" + i2, "offset", Integer.valueOf(iCeil), "length", Integer.valueOf(i3), "can_receive", Boolean.valueOf((z || j2 >= j4 || bool.equals(map.get(sb.toString()))) ? false : true)));
        }
        return arrayList;
    }

    public static Map t(Map map) {
        for (Map map2 : w1.f0("Item", map)) {
            if (c.a.A(map2, "item_id", "600013") || c.a.A(map2, "id", "600013")) {
                return map2;
            }
        }
        return null;
    }

    public static Map u(String str, String str2, String str3, Map map) {
        for (Map map2 : w1.f0(str, map)) {
            if (c.a.B(map2, str2, "", str3)) {
                return map2;
            }
        }
        return null;
    }

    public static boolean w(String str) {
        return "activity.receive".equals(str) || "activity.receivePower".equals(str) || "activity.gamble".equals(str) || "activity.exchange".equals(str);
    }

    public static int x(Map map) {
        return T(map.getOrDefault("num", map.getOrDefault("total_num", 0)));
    }

    public static LinkedHashMap y(ArrayList arrayList, ArrayList arrayList2) {
        return p5.z0("Item", p5.z0("del", arrayList, "upd", arrayList2, "add", new ArrayList()), new Object[0]);
    }

    public static LinkedHashMap z(Map map, long j2, boolean z) {
        int iMin;
        long jU = U(map.get("user_register_time"));
        int iMax = 0;
        int iMax2 = Math.max(0, Math.min(5, T(map.get("activity_money_growth_stage"))));
        long timeInMillis = 0;
        long jV = jU > 0 ? V(jU * 1000) : 0L;
        if (jV > 0) {
            Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("GMT+08:00"), Locale.US);
            calendar.setTimeInMillis(jV);
            calendar.add(5, 3);
            timeInMillis = calendar.getTimeInMillis();
        }
        boolean z2 = jV > 0 && j2 >= jU * 1000 && j2 < timeInMillis;
        if (z2) {
            iMin = Math.min(3, ((int) ((j2 - jV) / 86400000)) + 1);
        } else {
            iMin = (jV <= 0 || j2 < timeInMillis) ? 0 : 3;
        }
        int iMin2 = z2 ? (int) Math.min(2147483647L, ((timeInMillis - j2) + 999) / 1000) : 0;
        boolean z3 = !z && z2 && iMax2 < 5;
        int i2 = (!z2 || iMax2 >= 5) ? 0 : f783e[iMax2];
        String str = "money_growth_" + (jV > 0 ? c7.c(jV) : "inactive") + "_" + iMax2;
        Object[] objArr = new Object[10];
        objArr[0] = "left_time";
        objArr[1] = Integer.valueOf(iMin2);
        objArr[2] = "need_gold";
        objArr[3] = Integer.valueOf(i2);
        objArr[4] = "left_chance";
        if (!z && z2 && iMax2 < 5) {
            iMax = Math.max(1, 4 - Math.max(0, iMax2));
        }
        objArr[5] = Integer.valueOf(iMax);
        objArr[6] = "activity_day";
        objArr[7] = Integer.valueOf(iMin);
        objArr[8] = "can_receive";
        objArr[9] = Boolean.valueOf(z3);
        return p5.z0("instance_id", str, objArr);
    }

    public final LinkedHashMap f(String str, Map map, Map map2, String... strArr) {
        k0 k0Var = this.f789a;
        return p5.u1(k0Var.f904d.j(map, k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), "user_gold", map2), k0Var.i(k0Var.b(), "user_energy", map2), k0Var.i(k0Var.d(), "user_power", map2), k0Var.j(k0Var.a(), map2), str, map2), strArr));
    }

    /* JADX WARN: Code duplicated, block: B:125:0x0573  */
    /* JADX WARN: Code duplicated, block: B:135:0x059d  */
    /* JADX WARN: Code duplicated, block: B:138:0x05af  */
    /* JADX WARN: Code duplicated, block: B:143:0x05bf  */
    /* JADX WARN: Code duplicated, block: B:145:0x05c5  */
    /* JADX WARN: Code duplicated, block: B:149:0x05cf  */
    /* JADX WARN: Code duplicated, block: B:151:0x05d3  */
    /* JADX WARN: Code duplicated, block: B:157:0x05e7  */
    /* JADX WARN: Code duplicated, block: B:159:0x05ed  */
    /* JADX WARN: Code duplicated, block: B:160:0x05f0  */
    /* JADX WARN: Code duplicated, block: B:162:0x05f6  */
    /* JADX WARN: Code duplicated, block: B:163:0x05f9  */
    /* JADX WARN: Code duplicated, block: B:165:0x05ff  */
    /* JADX WARN: Code duplicated, block: B:166:0x0602  */
    /* JADX WARN: Code duplicated, block: B:168:0x0608  */
    /* JADX WARN: Code duplicated, block: B:170:0x0611  */
    /* JADX WARN: Code duplicated, block: B:173:0x0628  */
    /* JADX WARN: Code duplicated, block: B:175:0x0642  */
    /* JADX WARN: Code duplicated, block: B:181:0x0660 A[PHI: r35
      0x0660: PHI (r35v6 java.lang.String) = (r35v0 java.lang.String), (r35v4 java.lang.String), (r35v5 java.lang.String), (r35v7 java.lang.String) binds: [B:180:0x065e, B:156:0x05e3, B:155:0x05df, B:142:0x05bb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:183:0x0674  */
    /* JADX WARN: Code duplicated, block: B:186:0x06b4  */
    /* JADX WARN: Code duplicated, block: B:188:0x06d3  */
    /* JADX WARN: Code duplicated, block: B:189:0x0742  */
    /* JADX WARN: Code duplicated, block: B:191:0x074a  */
    /* JADX WARN: Code duplicated, block: B:193:0x0765  */
    /* JADX WARN: Code duplicated, block: B:195:0x076b  */
    /* JADX WARN: Code duplicated, block: B:196:0x076d  */
    /* JADX WARN: Code duplicated, block: B:199:0x0774  */
    /* JADX WARN: Code duplicated, block: B:200:0x0792  */
    /* JADX WARN: Code duplicated, block: B:202:0x07b4  */
    /* JADX WARN: Code duplicated, block: B:204:0x07d3  */
    /* JADX WARN: Code duplicated, block: B:206:0x07e8  */
    /* JADX WARN: Code duplicated, block: B:208:0x0891  */
    /* JADX WARN: Code duplicated, block: B:210:0x08a2  */
    /* JADX WARN: Code duplicated, block: B:214:0x095b A[LOOP:6: B:212:0x0955->B:214:0x095b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:216:0x0973  */
    /* JADX WARN: Code duplicated, block: B:219:0x098c  */
    /* JADX WARN: Code duplicated, block: B:224:0x09f8 A[LOOP:7: B:222:0x09f2->B:224:0x09f8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:227:0x0a6e  */
    /* JADX WARN: Code duplicated, block: B:228:0x0a8d  */
    /* JADX WARN: Code duplicated, block: B:231:0x0aa0  */
    /* JADX WARN: Code duplicated, block: B:234:0x0ae7  */
    /* JADX WARN: Code duplicated, block: B:235:0x0b08  */
    /* JADX WARN: Code duplicated, block: B:237:0x0b20  */
    /* JADX WARN: Code duplicated, block: B:238:0x0b33  */
    /* JADX WARN: Code duplicated, block: B:240:0x0b3d  */
    /* JADX WARN: Code duplicated, block: B:242:0x0b4f  */
    /* JADX WARN: Code duplicated, block: B:244:0x0b57  */
    /* JADX WARN: Code duplicated, block: B:245:0x0b70  */
    /* JADX WARN: Code duplicated, block: B:248:0x0b9d A[LOOP:8: B:248:0x0b9d->B:250:0x0bac, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:250:0x0bac A[LOOP:8: B:248:0x0b9d->B:250:0x0bac, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:252:0x0bcf  */
    /* JADX WARN: Code duplicated, block: B:254:0x0bfe  */
    /* JADX WARN: Code duplicated, block: B:256:0x0c04  */
    /* JADX WARN: Code duplicated, block: B:257:0x0c07  */
    /* JADX WARN: Code duplicated, block: B:258:0x0c1a  */
    /* JADX WARN: Code duplicated, block: B:260:0x0c24  */
    /* JADX WARN: Code duplicated, block: B:263:0x0c2b  */
    /* JADX WARN: Code duplicated, block: B:264:0x0c38  */
    /* JADX WARN: Code duplicated, block: B:266:0x0c42  */
    /* JADX WARN: Code duplicated, block: B:268:0x0c4a A[PHI: r28
      0x0c4a: PHI (r28v5 java.lang.Object) = (r28v2 java.lang.Object), (r28v2 java.lang.Object), (r28v7 java.lang.Object) binds: [B:267:0x0c48, B:261:0x0c28, B:256:0x0c04] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:269:0x0c4f  */
    /* JADX WARN: Code duplicated, block: B:271:0x0c5d  */
    /* JADX WARN: Code duplicated, block: B:275:0x0c78  */
    /* JADX WARN: Code duplicated, block: B:277:0x0c86  */
    /* JADX WARN: Code duplicated, block: B:279:0x0c8e  */
    /* JADX WARN: Code duplicated, block: B:282:0x0cac  */
    /* JADX WARN: Code duplicated, block: B:283:0x0cb3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:284:0x0cb5  */
    /* JADX WARN: Code duplicated, block: B:286:0x0cbe  */
    /* JADX WARN: Code duplicated, block: B:288:0x0cc9  */
    /* JADX WARN: Code duplicated, block: B:292:0x0cda  */
    /* JADX WARN: Code duplicated, block: B:296:0x0cef A[LOOP:9: B:295:0x0ced->B:296:0x0cef, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:300:0x0d1f  */
    /* JADX WARN: Code duplicated, block: B:302:0x0d22  */
    /* JADX WARN: Code duplicated, block: B:303:0x0d2b  */
    /* JADX WARN: Code duplicated, block: B:307:0x0da0  */
    /* JADX WARN: Code duplicated, block: B:310:0x0dba  */
    /* JADX WARN: Code duplicated, block: B:312:0x0e29  */
    /* JADX WARN: Code duplicated, block: B:314:0x0e2f  */
    /* JADX WARN: Code duplicated, block: B:315:0x0e3c  */
    /* JADX WARN: Code duplicated, block: B:317:0x0e42  */
    /* JADX WARN: Code duplicated, block: B:318:0x0e48  */
    /* JADX WARN: Code duplicated, block: B:320:0x0e54  */
    /* JADX WARN: Code duplicated, block: B:323:0x0e61  */
    /* JADX WARN: Code duplicated, block: B:325:0x0e8b A[LOOP:12: B:324:0x0e89->B:325:0x0e8b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:329:0x0f26  */
    /* JADX WARN: Code duplicated, block: B:32:0x011a  */
    /* JADX WARN: Code duplicated, block: B:330:0x0f28  */
    /* JADX WARN: Code duplicated, block: B:332:0x0f75  */
    /* JADX WARN: Code duplicated, block: B:370:0x064f A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:372:0x09d7 A[EDGE_INSN: B:372:0x09d7->B:221:0x09d7 BREAK  A[LOOP:5: B:184:0x06a2->B:220:0x09c0], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:378:0x0bb2 A[EDGE_INSN: B:378:0x0bb2->B:251:0x0bb2 BREAK  A[LOOP:8: B:248:0x0b9d->B:250:0x0bac], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x027c  */
    /* JADX WARN: Code duplicated, block: B:61:0x0288  */
    /* JADX WARN: Instruction removed from duplicated block: B:323:0x0e61, please report this as an issue */
    public final byte[] v(String str, Map map) {
        String str2;
        boolean z;
        String str3;
        CharSequence charSequence;
        Map map2;
        String str4;
        Object obj;
        String strL;
        String str5;
        Object obj2;
        String str6;
        Object obj3;
        String str7;
        int i2;
        int iC;
        String strA;
        int iB;
        int i3;
        String str8;
        Boolean bool;
        com.sgscq.vpn.config.h[][] hVarArr;
        String str9;
        com.sgscq.vpn.config.h hVar;
        com.sgscq.vpn.config.h[] hVarArr2;
        ArrayList arrayList;
        int length;
        int i4;
        String str10;
        String str11;
        ArrayList arrayList2;
        int i5;
        String str12;
        LinkedHashMap linkedHashMapZ0;
        ArrayList arrayList3;
        int i6;
        boolean z2;
        com.sgscq.vpn.config.h[] hVarArr3;
        ArrayList arrayList4;
        int length2;
        int i7;
        int i8;
        Object obj4;
        Object obj5;
        LinkedHashMap linkedHashMapR;
        Map mapZ0;
        Object obj6;
        int iL2;
        LinkedHashMap linkedHashMapR2;
        int iD;
        boolean z3;
        b[] bVarArr;
        b[] bVarArr2;
        ArrayList arrayList5;
        int length3;
        int i9;
        String str13;
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        LinkedHashMap linkedHashMap3;
        LinkedHashMap linkedHashMap4;
        LinkedHashMap linkedHashMap5;
        LinkedHashMap linkedHashMap6;
        ArrayList arrayList6;
        Iterator it;
        Map map3;
        LinkedHashMap linkedHashMap7;
        LinkedHashMap linkedHashMap8;
        LinkedHashMap linkedHashMap9;
        String str14;
        String str15;
        String str16;
        String str17;
        Map map4;
        String str18;
        Iterator it2;
        ArrayList arrayList7;
        ArrayList arrayList8;
        LinkedHashMap linkedHashMap10;
        ArrayList arrayList9;
        Object obj7;
        Object obj8;
        String str19;
        ArrayList arrayList10;
        Map map5;
        int iE;
        long j2;
        long j3;
        LinkedHashMap linkedHashMap11;
        StringBuilder sb;
        Iterator it3;
        Map map6;
        b bVar;
        int i10;
        String str20;
        String str21;
        String str22;
        int i11;
        String str23;
        String str24;
        boolean zEquals;
        int i12;
        LinkedHashMap linkedHashMap12;
        LinkedHashMap linkedHashMap13;
        String str25;
        Map map7;
        String str26;
        String str27;
        ArrayList arrayList11;
        LinkedHashMap linkedHashMap14;
        LinkedHashMap linkedHashMap15;
        LinkedHashMap linkedHashMap16;
        w1 w1VarA1;
        ArrayList arrayList12;
        String str28;
        int i13;
        String str29;
        Object objB;
        ArrayList arrayList13;
        Map map8;
        Map map9;
        String str30;
        String str31;
        String str32;
        String str33;
        Iterator it4;
        boolean z4;
        Map mapH;
        b bVar2;
        LinkedHashMap linkedHashMapF;
        a aVar;
        LinkedHashMap linkedHashMapY;
        String str34;
        boolean z5;
        String str35;
        LinkedHashMap linkedHashMapR3;
        LinkedHashMap linkedHashMapG;
        String str36;
        String str37;
        LinkedHashMap linkedHashMapG2;
        this = this;
        if (!w(str)) {
            return null;
        }
        String strE = this.f789a.e(map);
        Map mapW0 = this.f789a.f904d.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        int i14 = 2;
        if ("activity.receivePower".equals(str)) {
            long jF = c7.f();
            if (c7.f254i) {
                linkedHashMapR = r("网络时间未同步，每日盛宴暂不可用");
                linkedHashMapG2 = g(mapW0, jF, true);
            } else {
                long jV = V(jF);
                int i15 = 0;
                while (true) {
                    if (i15 >= i14) {
                        i15 = -1;
                        break;
                    }
                    long j4 = (((long) f782d[i15]) * 60000) + jV;
                    long j5 = j4 + 7200000;
                    if (jF >= j4 && jF < j5) {
                        break;
                    }
                    i15++;
                    i14 = 2;
                }
                if (i15 < 0) {
                    str37 = "盛宴正在准备中";
                } else {
                    String str38 = "activity_feast_received_" + c7.c(jF) + "_" + i15;
                    Boolean bool2 = Boolean.TRUE;
                    if (bool2.equals(mapW0.get(str38))) {
                        str37 = "本时段盛宴已领取";
                    } else {
                        String str39 = "daily_feast_" + c7.c(jF) + "_" + i15;
                        mapW0.put(str38, bool2);
                        mapW0.put("user_power", Integer.valueOf(T(mapW0.get("user_power")) + 50));
                        mapW0.put("activity_last_power_instance", str39);
                        mapW0.put("activity_receive_power_count", Integer.valueOf(T(mapW0.get("activity_receive_power_count")) + 1));
                        LinkedHashMap linkedHashMapW = W();
                        l.b(linkedHashMapW, "instance_id", str39, 50, "receive_power");
                        linkedHashMapW.put("user_power", mapW0.get("user_power"));
                        linkedHashMapW.put("timing_power", s(mapW0, jF, false));
                        linkedHashMapW.put("cmn_modules", "Player");
                        linkedHashMapR = linkedHashMapW;
                    }
                    if (Boolean.TRUE.equals(linkedHashMapR.get("result"))) {
                        this.f789a.f904d.S0(strE, mapW0);
                    }
                    LinkedHashMap linkedHashMapF2 = this.f(strE, mapW0, mapW0, i(linkedHashMapR));
                    d(linkedHashMapF2, mapW0);
                    linkedHashMapR.put("cmn", linkedHashMapF2);
                }
                linkedHashMapR = r(str37);
                linkedHashMapG2 = g(mapW0, jF, false);
            }
            linkedHashMapR.putAll(linkedHashMapG2);
            if (Boolean.TRUE.equals(linkedHashMapR.get("result"))) {
                this.f789a.f904d.S0(strE, mapW0);
            }
            LinkedHashMap linkedHashMapF3 = this.f(strE, mapW0, mapW0, i(linkedHashMapR));
            d(linkedHashMapF3, mapW0);
            linkedHashMapR.put("cmn", linkedHashMapF3);
        } else {
            String str40 = "id";
            if ("activity.gamble".equals(str)) {
                long jF2 = c7.f();
                boolean z6 = c7.f254i;
                int iNextInt = ThreadLocalRandom.current().nextInt(150, 211);
                LinkedHashMap linkedHashMapZ = z(mapW0, jF2, z6);
                String strValueOf = String.valueOf(linkedHashMapZ.get("instance_id"));
                if (z6) {
                    linkedHashMapR3 = r("网络时间未同步，钱生钱暂不可用");
                    linkedHashMapG = g(mapW0, jF2, true);
                } else {
                    if (!strValueOf.equals(G("instance_id", "", map))) {
                        str35 = "活动实例已过期";
                    } else if (T(linkedHashMapZ.get("left_time")) <= 0) {
                        str35 = "钱生钱活动已结束";
                    } else {
                        if (T(mapW0.get("activity_money_growth_stage")) >= 5) {
                            str35 = "钱生钱次数已用完";
                        } else {
                            int iT = T(linkedHashMapZ.get("need_gold"));
                            int iT2 = T(mapW0.get("user_gold"));
                            if (iT <= 0 || iT2 < iT) {
                                z5 = false;
                                str35 = "元宝不足";
                                linkedHashMapR3 = r(str35);
                                linkedHashMapG = g(mapW0, jF2, z5);
                            } else {
                                int iMax = (Math.max(150, Math.min(210, iNextInt)) * iT) / 100;
                                int iMax2 = Math.max(0, Math.min(5, T(mapW0.get("activity_money_growth_stage"))));
                                mapW0.put("user_gold", Integer.valueOf((iT2 - iT) + iMax));
                                mapW0.put("activity_money_growth_stage", Integer.valueOf(iMax2 + 1));
                                mapW0.put("activity_last_gamble_instance", strValueOf);
                                mapW0.put("activity_gamble_count", Integer.valueOf(T(mapW0.get("activity_gamble_count")) + 1));
                                LinkedHashMap linkedHashMapW2 = W();
                                linkedHashMapW2.put("instance_id", strValueOf);
                                linkedHashMapW2.put("consume_gold", Integer.valueOf(iT));
                                linkedHashMapW2.put("reward_gold", Integer.valueOf(iMax));
                                linkedHashMapW2.put("user_gold", mapW0.get("user_gold"));
                                linkedHashMapW2.put("add_list", p5.z0("type", 0, "id", "gold", "num", Integer.valueOf(iMax - iT)));
                                linkedHashMapW2.put("gamble", z(mapW0, jF2, false));
                                linkedHashMapW2.put("cmn_modules", "Player");
                                linkedHashMapR = linkedHashMapW2;
                            }
                        }
                        if (Boolean.TRUE.equals(linkedHashMapR.get("result"))) {
                            this = this;
                            str36 = strE;
                            this.f789a.f904d.S0(str36, mapW0);
                        } else {
                            this = this;
                            str36 = strE;
                        }
                        LinkedHashMap linkedHashMapF4 = this.f(str36, q(linkedHashMapR, mapW0), mapW0, i(linkedHashMapR));
                        d(linkedHashMapF4, mapW0);
                        linkedHashMapR.put("cmn", linkedHashMapF4);
                    }
                    z5 = false;
                    linkedHashMapR3 = r(str35);
                    linkedHashMapG = g(mapW0, jF2, z5);
                }
                linkedHashMapR3.putAll(linkedHashMapG);
                linkedHashMapR = linkedHashMapR3;
                if (Boolean.TRUE.equals(linkedHashMapR.get("result"))) {
                    this = this;
                    str36 = strE;
                    this.f789a.f904d.S0(str36, mapW0);
                } else {
                    this = this;
                    str36 = strE;
                }
                LinkedHashMap linkedHashMapF5 = this.f(str36, q(linkedHashMapR, mapW0), mapW0, i(linkedHashMapR));
                d(linkedHashMapF5, mapW0);
                linkedHashMapR.put("cmn", linkedHashMapF5);
            } else {
                boolean zEquals2 = "activity.exchange".equals(str);
                String str41 = "add";
                String str42 = "upd";
                Object obj9 = "";
                String str43 = "del";
                Object obj10 = "cmn";
                String str44 = "1";
                Object obj11 = "delta_data";
                if (zEquals2) {
                    String strG = G("exchange_id", "default", map);
                    int iMax3 = Math.max(1, T(G("num", "1", map)));
                    a[] aVarArr = f788j;
                    int length4 = aVarArr.length;
                    int i16 = 0;
                    while (true) {
                        if (i16 >= length4) {
                            aVar = null;
                            break;
                        }
                        aVar = aVarArr[i16];
                        aVar.getClass();
                        a[] aVarArr2 = aVarArr;
                        if ("double11_1".equals(strG)) {
                            break;
                        }
                        i16++;
                        aVarArr = aVarArr2;
                    }
                    if (aVar == null) {
                        str34 = "兑换配置不存在";
                    } else {
                        int iT3 = T(mapW0.get("activity_exchange_count_".concat(strG))) + iMax3;
                        if (iT3 > 99) {
                            str34 = "兑换次数不足";
                        } else {
                            int i17 = iMax3 * 5;
                            Map mapT = t(mapW0);
                            int iX = mapT == null ? 0 : x(mapT);
                            if (iX < i17) {
                                linkedHashMapY = null;
                            } else {
                                int i18 = iX - i17;
                                mapT.put("num", Integer.valueOf(i18));
                                mapT.put("item_num", Integer.valueOf(i18));
                                mapT.put("total_num", Integer.valueOf(i18));
                                mapT.put("id", "600013");
                                mapT.put("item_id", "600013");
                                List listF0 = w1.f0("Item", mapW0);
                                ArrayList arrayList14 = new ArrayList();
                                ArrayList arrayList15 = new ArrayList();
                                if (i18 <= 0) {
                                    arrayList14.add(String.valueOf(mapT.get("pk_id")));
                                    listF0.remove(mapT);
                                } else {
                                    arrayList15.add(mapT);
                                }
                                mapW0.put("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", listF0));
                                linkedHashMapY = y(arrayList14, arrayList15);
                            }
                            if (linkedHashMapY == null) {
                                str34 = "材料不足";
                            } else {
                                mapW0.put("activity_last_exchange_id", strG);
                                mapW0.put("activity_exchange_count", Integer.valueOf(T(mapW0.get("activity_exchange_count")) + iMax3));
                                mapW0.put("activity_exchange_count_".concat(strG), Integer.valueOf(iT3));
                                int i19 = iMax3 * 1;
                                Map mapB = b(i19, 1, "600001", mapW0);
                                ArrayList arrayListV0 = p5.v0(w1.A2(i19, mapB));
                                LinkedHashMap linkedHashMapW3 = W();
                                linkedHashMapW3.put("exchange_id", strG);
                                linkedHashMapW3.put("num", Integer.valueOf(iMax3));
                                linkedHashMapW3.put("add_list", S(arrayListV0));
                                linkedHashMapW3.put("reward_list", S(arrayListV0));
                                linkedHashMapW3.put("item_list", S(arrayListV0));
                                Object[] objArr = new Object[6];
                                objArr[0] = "exchange_num";
                                objArr[1] = Integer.valueOf(iT3);
                                objArr[2] = "max_num";
                                objArr[3] = 99;
                                objArr[4] = "item_list";
                                Map[] mapArr = new Map[1];
                                Object[] objArr2 = new Object[6];
                                objArr2[0] = "id";
                                objArr2[1] = "600013";
                                objArr2[2] = "need_num";
                                objArr2[3] = 5;
                                objArr2[4] = "total_num";
                                Map mapT2 = t(mapW0);
                                objArr2[5] = Integer.valueOf(mapT2 == null ? 0 : x(mapT2));
                                mapArr[0] = p5.z0("type", 1, objArr2);
                                objArr[5] = p5.v0(mapArr);
                                linkedHashMapW3.put("exchange_info", p5.z0("exchange_id", strG, objArr));
                                linkedHashMapW3.put("cmn_modules", "Item");
                                Map map10 = (Map) linkedHashMapY.get("Item");
                                ArrayList arrayList16 = new ArrayList((List) map10.get("del"));
                                ArrayList arrayList17 = new ArrayList((List) map10.get("upd"));
                                arrayList17.add(mapB);
                                linkedHashMapW3.put(obj11, y(arrayList16, arrayList17));
                                linkedHashMapR = linkedHashMapW3;
                            }
                            this.f789a.f904d.S0(strE, mapW0);
                            linkedHashMapF = f(strE, q(linkedHashMapR, mapW0), mapW0, i(linkedHashMapR));
                        }
                    }
                    linkedHashMapR = r(str34);
                    this.f789a.f904d.S0(strE, mapW0);
                    linkedHashMapF = f(strE, q(linkedHashMapR, mapW0), mapW0, i(linkedHashMapR));
                } else {
                    ArrayList arrayList18 = new ArrayList();
                    Object obj12 = "num";
                    try {
                        a7 a7VarV1 = w1.a1(this.f789a.f901a).V1();
                        if (a7VarV1 != null) {
                            Iterator it5 = a7VarV1.a().iterator();
                            while (it5.hasNext()) {
                                Map mapB2 = a7VarV1.b((String) it5.next());
                                if (mapB2 != null) {
                                    arrayList18.add(mapB2);
                                }
                            }
                        }
                    } catch (RuntimeException unused) {
                    }
                    long jF3 = c7.f();
                    ArrayList arrayList19 = arrayList18;
                    String strG2 = G("instance_id", "default", map);
                    if (c7.f254i) {
                        if ("month_signin".equals(strG2) || "daily_check".equals(strG2) || "continuous_signin".equals(strG2) || "cumulative_login_yuanbao".equals(strG2)) {
                            linkedHashMapR2 = r("网络时间未同步，签到活动暂不可用");
                            linkedHashMapR2.put("activity_list", e(jF3, mapW0));
                        } else {
                            str2 = "opening_recharge_gifts";
                            if ("level_general".equals(strG2)) {
                                z = true;
                            } else {
                                z = true;
                            }
                            str3 = "奖励暂不可领取";
                            if (!z) {
                                charSequence = ",";
                                map2 = mapW0;
                                str4 = strE;
                                obj = "reward_list";
                                P(map2);
                                strL = L(strG2);
                                str5 = "activity_received_cumulative_login_day_";
                                if ("daily_check".equals(strG2)) {
                                    iD = D(map2);
                                    if (iD <= 0) {
                                        obj2 = "cmn_modules";
                                        linkedHashMapR2 = r("奖励暂不可领取");
                                    } else {
                                        obj2 = "cmn_modules";
                                        obj3 = "Item";
                                        i2 = iD;
                                        strL = n(iD);
                                        str7 = "cumulative_login_yuanbao";
                                        str6 = "continuous_signin";
                                        i3 = -1;
                                        str8 = strL;
                                        iB = -1;
                                        bool = Boolean.TRUE;
                                        if (bool.equals(map2.get(str8))) {
                                            linkedHashMapR2 = r("奖励已领取");
                                        } else {
                                            map2.put("activity_last_receive_instance", strG2);
                                            map2.put(str8, bool);
                                            if (i2 > 0) {
                                                map2.put(L("daily_check"), bool);
                                            }
                                            map2.put("activity_receive_count", Integer.valueOf(T(map2.get("activity_receive_count")) + 1));
                                            hVarArr = f781c;
                                            if (iB > 0) {
                                                hVarArr2 = f780b[iB - 1];
                                            } else {
                                                if (i3 > 0) {
                                                    hVarArr2 = hVarArr[i3 - 1];
                                                } else {
                                                    com.sgscq.vpn.config.h[] hVarArr4 = new com.sgscq.vpn.config.h[1];
                                                    str9 = "month_signin";
                                                    if (str9.equals(strG2)) {
                                                        hVar = new com.sgscq.vpn.config.h("791661", 5);
                                                    } else {
                                                        hVar = new com.sgscq.vpn.config.h("791661", 5);
                                                    }
                                                    hVarArr4[0] = hVar;
                                                    hVarArr2 = hVarArr4;
                                                }
                                                arrayList = new ArrayList();
                                                length = hVarArr2.length;
                                                i4 = 0;
                                                while (i4 < length) {
                                                    int i20 = length;
                                                    com.sgscq.vpn.config.h hVar2 = hVarArr2[i4];
                                                    arrayList.add(b(hVar2.f578c, hVar2.f579d, (String) hVar2.f577b, map2));
                                                    i4++;
                                                    length = i20;
                                                    str5 = str5;
                                                    str7 = str7;
                                                }
                                                str10 = str7;
                                                str11 = str5;
                                                arrayList2 = new ArrayList();
                                                i5 = 0;
                                                while (i5 < arrayList.size()) {
                                                    if (i5 < hVarArr2.length) {
                                                        iL2 = hVarArr2[i5].f578c;
                                                        obj6 = obj12;
                                                    } else {
                                                        obj6 = obj12;
                                                        iL2 = w1.l2(String.valueOf(((Map) arrayList.get(i5)).getOrDefault(obj6, 1)), 1);
                                                    }
                                                    arrayList2.add(w1.A2(iL2, (Map) arrayList.get(i5)));
                                                    i5++;
                                                    obj12 = obj6;
                                                    hVarArr2 = hVarArr2;
                                                }
                                                LinkedHashMap linkedHashMapW4 = W();
                                                linkedHashMapW4.put("instance_id", strG2);
                                                linkedHashMapW4.put("add_list", S(arrayList2));
                                                linkedHashMapW4.put(obj, S(arrayList2));
                                                Map[] mapArr2 = new Map[1];
                                                str12 = "activity_type";
                                                if (str9.equals(strG2)) {
                                                    mapZ0 = (Map) arrayList2.get(0);
                                                    boolean zEquals3 = Boolean.TRUE.equals(map2.get(L("month_signin")));
                                                    if (mapZ0 == null) {
                                                        mapZ0 = p5.z0("pk_id", "791661", "id", "791661", "item_id", "791661", "num", 1, "item_num", 1, "item_type", 5);
                                                    }
                                                    linkedHashMapZ0 = p5.z0("activity_type", 15, "type", 15, "can_receive", Boolean.valueOf(!zEquals3), "instance_id", "month_signin", "home_sort", 8, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(p5.v0(mapZ0)), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals3)))));
                                                } else if ("daily_check".equals(strG2)) {
                                                    linkedHashMapZ0 = o(map2, (Map) arrayList2.get(0));
                                                } else if (str6.equals(strG2)) {
                                                    linkedHashMapZ0 = l(map2);
                                                } else if (str10.equals(strG2)) {
                                                    N(map2);
                                                    arrayList3 = new ArrayList();
                                                    i6 = 0;
                                                    while (i6 < 56) {
                                                        int i21 = i6 + 1;
                                                        String str45 = str11;
                                                        boolean zEquals4 = Boolean.TRUE.equals(map2.get(str45 + i21));
                                                        hVarArr3 = hVarArr[i6];
                                                        arrayList4 = new ArrayList();
                                                        length2 = hVarArr3.length;
                                                        i7 = 0;
                                                        while (i7 < length2) {
                                                            int i22 = length2;
                                                            com.sgscq.vpn.config.h hVar3 = hVarArr3[i7];
                                                            com.sgscq.vpn.config.h[] hVarArr5 = hVarArr3;
                                                            String str46 = (String) hVar3.f577b;
                                                            String str47 = str12;
                                                            int i23 = hVar3.f579d;
                                                            int iJ = j(str46, i23);
                                                            Object obj13 = obj;
                                                            String str48 = (String) hVar3.f577b;
                                                            int i24 = hVar3.f578c;
                                                            arrayList4.add(p5.z0("pk_id", str48, "id", str48, "item_id", str48, "num", Integer.valueOf(i24), "item_num", Integer.valueOf(i24), "type", Integer.valueOf(i23), "item_type", Integer.valueOf(iJ)));
                                                            i7++;
                                                            length2 = i22;
                                                            hVarArr3 = hVarArr5;
                                                            str12 = str47;
                                                            obj = obj13;
                                                        }
                                                        arrayList3.add(p5.z0("object", F(arrayList4), "status", p5.z0("condition", Integer.valueOf(i21), "is_received", Boolean.valueOf(zEquals4))));
                                                        i6 = i21;
                                                        str11 = str45;
                                                        obj = obj;
                                                    }
                                                    Object obj14 = obj;
                                                    String str49 = str12;
                                                    Object[] objArr3 = new Object[18];
                                                    objArr3[0] = "type";
                                                    objArr3[1] = 102;
                                                    objArr3[2] = "can_receive";
                                                    if (C(map2) > 0) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    objArr3[3] = Boolean.valueOf(z2);
                                                    objArr3[4] = "instance_id";
                                                    objArr3[5] = str10;
                                                    objArr3[6] = "instance_bg";
                                                    objArr3[7] = "new";
                                                    objArr3[8] = "home_sort";
                                                    objArr3[9] = 8;
                                                    objArr3[10] = "left_time";
                                                    objArr3[11] = 86400;
                                                    objArr3[12] = "instance_countdown";
                                                    objArr3[13] = 86400;
                                                    objArr3[14] = "instance_interval";
                                                    objArr3[15] = 86400;
                                                    objArr3[16] = obj14;
                                                    objArr3[17] = arrayList3;
                                                    linkedHashMapZ0 = p5.z0(str49, 102, objArr3);
                                                } else {
                                                    boolean zEquals5 = Boolean.TRUE.equals(map2.get(L(strG2)));
                                                    linkedHashMapZ0 = p5.z0("activity_type", 1, "can_receive", Boolean.valueOf(!zEquals5), "instance_id", strG2, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(arrayList2), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals5)))));
                                                }
                                                i8 = 0;
                                                mapArr2[0] = linkedHashMapZ0;
                                                linkedHashMapW4.put("party", p5.v0(mapArr2));
                                                linkedHashMapW4.put(r10, e(jF3, map2));
                                                obj4 = obj2;
                                                linkedHashMapW4.put(obj4, obj3);
                                                obj5 = obj11;
                                                linkedHashMapW4.put(obj5, y(new ArrayList(), arrayList));
                                                linkedHashMapR = linkedHashMapW4;
                                            }
                                            hVarArr = hVarArr;
                                            str9 = "month_signin";
                                            arrayList = new ArrayList();
                                            length = hVarArr2.length;
                                            i4 = 0;
                                            while (i4 < length) {
                                                int i25 = length;
                                                com.sgscq.vpn.config.h hVar4 = hVarArr2[i4];
                                                arrayList.add(b(hVar4.f578c, hVar4.f579d, (String) hVar4.f577b, map2));
                                                i4++;
                                                length = i25;
                                                str5 = str5;
                                                str7 = str7;
                                            }
                                            str10 = str7;
                                            str11 = str5;
                                            arrayList2 = new ArrayList();
                                            i5 = 0;
                                            while (i5 < arrayList.size()) {
                                                if (i5 < hVarArr2.length) {
                                                    iL2 = hVarArr2[i5].f578c;
                                                    obj6 = obj12;
                                                } else {
                                                    obj6 = obj12;
                                                    iL2 = w1.l2(String.valueOf(((Map) arrayList.get(i5)).getOrDefault(obj6, 1)), 1);
                                                }
                                                arrayList2.add(w1.A2(iL2, (Map) arrayList.get(i5)));
                                                i5++;
                                                obj12 = obj6;
                                                hVarArr2 = hVarArr2;
                                            }
                                            LinkedHashMap linkedHashMapW5 = W();
                                            linkedHashMapW5.put("instance_id", strG2);
                                            linkedHashMapW5.put("add_list", S(arrayList2));
                                            linkedHashMapW5.put(obj, S(arrayList2));
                                            Map[] mapArr3 = new Map[1];
                                            str12 = "activity_type";
                                            if (str9.equals(strG2)) {
                                                mapZ0 = (Map) arrayList2.get(0);
                                                boolean zEquals6 = Boolean.TRUE.equals(map2.get(L("month_signin")));
                                                if (mapZ0 == null) {
                                                    mapZ0 = p5.z0("pk_id", "791661", "id", "791661", "item_id", "791661", "num", 1, "item_num", 1, "item_type", 5);
                                                }
                                                linkedHashMapZ0 = p5.z0("activity_type", 15, "type", 15, "can_receive", Boolean.valueOf(!zEquals6), "instance_id", "month_signin", "home_sort", 8, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(p5.v0(mapZ0)), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals6)))));
                                            } else if ("daily_check".equals(strG2)) {
                                                linkedHashMapZ0 = o(map2, (Map) arrayList2.get(0));
                                            } else if (str6.equals(strG2)) {
                                                linkedHashMapZ0 = l(map2);
                                            } else if (str10.equals(strG2)) {
                                                N(map2);
                                                arrayList3 = new ArrayList();
                                                i6 = 0;
                                                while (i6 < 56) {
                                                    int i26 = i6 + 1;
                                                    String str410 = str11;
                                                    boolean zEquals7 = Boolean.TRUE.equals(map2.get(str410 + i26));
                                                    hVarArr3 = hVarArr[i6];
                                                    arrayList4 = new ArrayList();
                                                    length2 = hVarArr3.length;
                                                    i7 = 0;
                                                    while (i7 < length2) {
                                                        int i27 = length2;
                                                        com.sgscq.vpn.config.h hVar5 = hVarArr3[i7];
                                                        com.sgscq.vpn.config.h[] hVarArr6 = hVarArr3;
                                                        String str411 = (String) hVar5.f577b;
                                                        String str412 = str12;
                                                        int i28 = hVar5.f579d;
                                                        int iJ2 = j(str411, i28);
                                                        Object obj15 = obj;
                                                        String str413 = (String) hVar5.f577b;
                                                        int i29 = hVar5.f578c;
                                                        arrayList4.add(p5.z0("pk_id", str413, "id", str413, "item_id", str413, "num", Integer.valueOf(i29), "item_num", Integer.valueOf(i29), "type", Integer.valueOf(i28), "item_type", Integer.valueOf(iJ2)));
                                                        i7++;
                                                        length2 = i27;
                                                        hVarArr3 = hVarArr6;
                                                        str12 = str412;
                                                        obj = obj15;
                                                    }
                                                    arrayList3.add(p5.z0("object", F(arrayList4), "status", p5.z0("condition", Integer.valueOf(i26), "is_received", Boolean.valueOf(zEquals7))));
                                                    i6 = i26;
                                                    str11 = str410;
                                                    obj = obj;
                                                }
                                                Object obj16 = obj;
                                                String str414 = str12;
                                                Object[] objArr4 = new Object[18];
                                                objArr4[0] = "type";
                                                objArr4[1] = 102;
                                                objArr4[2] = "can_receive";
                                                if (C(map2) > 0) {
                                                    z2 = true;
                                                } else {
                                                    z2 = false;
                                                }
                                                objArr4[3] = Boolean.valueOf(z2);
                                                objArr4[4] = "instance_id";
                                                objArr4[5] = str10;
                                                objArr4[6] = "instance_bg";
                                                objArr4[7] = "new";
                                                objArr4[8] = "home_sort";
                                                objArr4[9] = 8;
                                                objArr4[10] = "left_time";
                                                objArr4[11] = 86400;
                                                objArr4[12] = "instance_countdown";
                                                objArr4[13] = 86400;
                                                objArr4[14] = "instance_interval";
                                                objArr4[15] = 86400;
                                                objArr4[16] = obj16;
                                                objArr4[17] = arrayList3;
                                                linkedHashMapZ0 = p5.z0(str414, 102, objArr4);
                                            } else {
                                                boolean zEquals8 = Boolean.TRUE.equals(map2.get(L(strG2)));
                                                linkedHashMapZ0 = p5.z0("activity_type", 1, "can_receive", Boolean.valueOf(!zEquals8), "instance_id", strG2, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(arrayList2), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals8)))));
                                            }
                                            i8 = 0;
                                            mapArr3[0] = linkedHashMapZ0;
                                            linkedHashMapW5.put("party", p5.v0(mapArr3));
                                            linkedHashMapW5.put(r10, e(jF3, map2));
                                            obj4 = obj2;
                                            linkedHashMapW5.put(obj4, obj3);
                                            obj5 = obj11;
                                            linkedHashMapW5.put(obj5, y(new ArrayList(), arrayList));
                                            linkedHashMapR = linkedHashMapW5;
                                        }
                                    }
                                } else {
                                    obj2 = "cmn_modules";
                                    str6 = "continuous_signin";
                                    if (str6.equals(strG2)) {
                                        iB = B(map2);
                                        if (iB <= 0) {
                                            linkedHashMapR2 = r("奖励暂不可领取");
                                        } else {
                                            strA = k(iB);
                                            i3 = -1;
                                            obj3 = "Item";
                                            str7 = "cumulative_login_yuanbao";
                                            i2 = -1;
                                            str8 = strA;
                                            bool = Boolean.TRUE;
                                            if (bool.equals(map2.get(str8))) {
                                                linkedHashMapR2 = r("奖励已领取");
                                            } else {
                                                map2.put("activity_last_receive_instance", strG2);
                                                map2.put(str8, bool);
                                                if (i2 > 0) {
                                                    map2.put(L("daily_check"), bool);
                                                }
                                                map2.put("activity_receive_count", Integer.valueOf(T(map2.get("activity_receive_count")) + 1));
                                                hVarArr = f781c;
                                                if (iB > 0) {
                                                    hVarArr2 = f780b[iB - 1];
                                                } else {
                                                    if (i3 > 0) {
                                                        hVarArr2 = hVarArr[i3 - 1];
                                                    } else {
                                                        com.sgscq.vpn.config.h[] hVarArr7 = new com.sgscq.vpn.config.h[1];
                                                        str9 = "month_signin";
                                                        if (str9.equals(strG2)) {
                                                            hVar = new com.sgscq.vpn.config.h("791661", 5);
                                                        } else {
                                                            hVar = new com.sgscq.vpn.config.h("791661", 5);
                                                        }
                                                        hVarArr7[0] = hVar;
                                                        hVarArr2 = hVarArr7;
                                                    }
                                                    arrayList = new ArrayList();
                                                    length = hVarArr2.length;
                                                    i4 = 0;
                                                    while (i4 < length) {
                                                        int i210 = length;
                                                        com.sgscq.vpn.config.h hVar6 = hVarArr2[i4];
                                                        arrayList.add(b(hVar6.f578c, hVar6.f579d, (String) hVar6.f577b, map2));
                                                        i4++;
                                                        length = i210;
                                                        str5 = str5;
                                                        str7 = str7;
                                                    }
                                                    str10 = str7;
                                                    str11 = str5;
                                                    arrayList2 = new ArrayList();
                                                    i5 = 0;
                                                    while (i5 < arrayList.size()) {
                                                        if (i5 < hVarArr2.length) {
                                                            iL2 = hVarArr2[i5].f578c;
                                                            obj6 = obj12;
                                                        } else {
                                                            obj6 = obj12;
                                                            iL2 = w1.l2(String.valueOf(((Map) arrayList.get(i5)).getOrDefault(obj6, 1)), 1);
                                                        }
                                                        arrayList2.add(w1.A2(iL2, (Map) arrayList.get(i5)));
                                                        i5++;
                                                        obj12 = obj6;
                                                        hVarArr2 = hVarArr2;
                                                    }
                                                    LinkedHashMap linkedHashMapW6 = W();
                                                    linkedHashMapW6.put("instance_id", strG2);
                                                    linkedHashMapW6.put("add_list", S(arrayList2));
                                                    linkedHashMapW6.put(obj, S(arrayList2));
                                                    Map[] mapArr4 = new Map[1];
                                                    str12 = "activity_type";
                                                    if (str9.equals(strG2)) {
                                                        mapZ0 = (Map) arrayList2.get(0);
                                                        boolean zEquals9 = Boolean.TRUE.equals(map2.get(L("month_signin")));
                                                        if (mapZ0 == null) {
                                                            mapZ0 = p5.z0("pk_id", "791661", "id", "791661", "item_id", "791661", "num", 1, "item_num", 1, "item_type", 5);
                                                        }
                                                        linkedHashMapZ0 = p5.z0("activity_type", 15, "type", 15, "can_receive", Boolean.valueOf(!zEquals9), "instance_id", "month_signin", "home_sort", 8, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(p5.v0(mapZ0)), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals9)))));
                                                    } else if ("daily_check".equals(strG2)) {
                                                        linkedHashMapZ0 = o(map2, (Map) arrayList2.get(0));
                                                    } else if (str6.equals(strG2)) {
                                                        linkedHashMapZ0 = l(map2);
                                                    } else if (str10.equals(strG2)) {
                                                        N(map2);
                                                        arrayList3 = new ArrayList();
                                                        i6 = 0;
                                                        while (i6 < 56) {
                                                            int i211 = i6 + 1;
                                                            String str415 = str11;
                                                            boolean zEquals10 = Boolean.TRUE.equals(map2.get(str415 + i211));
                                                            hVarArr3 = hVarArr[i6];
                                                            arrayList4 = new ArrayList();
                                                            length2 = hVarArr3.length;
                                                            i7 = 0;
                                                            while (i7 < length2) {
                                                                int i212 = length2;
                                                                com.sgscq.vpn.config.h hVar7 = hVarArr3[i7];
                                                                com.sgscq.vpn.config.h[] hVarArr8 = hVarArr3;
                                                                String str416 = (String) hVar7.f577b;
                                                                String str417 = str12;
                                                                int i213 = hVar7.f579d;
                                                                int iJ3 = j(str416, i213);
                                                                Object obj17 = obj;
                                                                String str418 = (String) hVar7.f577b;
                                                                int i214 = hVar7.f578c;
                                                                arrayList4.add(p5.z0("pk_id", str418, "id", str418, "item_id", str418, "num", Integer.valueOf(i214), "item_num", Integer.valueOf(i214), "type", Integer.valueOf(i213), "item_type", Integer.valueOf(iJ3)));
                                                                i7++;
                                                                length2 = i212;
                                                                hVarArr3 = hVarArr8;
                                                                str12 = str417;
                                                                obj = obj17;
                                                            }
                                                            arrayList3.add(p5.z0("object", F(arrayList4), "status", p5.z0("condition", Integer.valueOf(i211), "is_received", Boolean.valueOf(zEquals10))));
                                                            i6 = i211;
                                                            str11 = str415;
                                                            obj = obj;
                                                        }
                                                        Object obj18 = obj;
                                                        String str419 = str12;
                                                        Object[] objArr5 = new Object[18];
                                                        objArr5[0] = "type";
                                                        objArr5[1] = 102;
                                                        objArr5[2] = "can_receive";
                                                        if (C(map2) > 0) {
                                                            z2 = true;
                                                        } else {
                                                            z2 = false;
                                                        }
                                                        objArr5[3] = Boolean.valueOf(z2);
                                                        objArr5[4] = "instance_id";
                                                        objArr5[5] = str10;
                                                        objArr5[6] = "instance_bg";
                                                        objArr5[7] = "new";
                                                        objArr5[8] = "home_sort";
                                                        objArr5[9] = 8;
                                                        objArr5[10] = "left_time";
                                                        objArr5[11] = 86400;
                                                        objArr5[12] = "instance_countdown";
                                                        objArr5[13] = 86400;
                                                        objArr5[14] = "instance_interval";
                                                        objArr5[15] = 86400;
                                                        objArr5[16] = obj18;
                                                        objArr5[17] = arrayList3;
                                                        linkedHashMapZ0 = p5.z0(str419, 102, objArr5);
                                                    } else {
                                                        boolean zEquals11 = Boolean.TRUE.equals(map2.get(L(strG2)));
                                                        linkedHashMapZ0 = p5.z0("activity_type", 1, "can_receive", Boolean.valueOf(!zEquals11), "instance_id", strG2, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(arrayList2), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals11)))));
                                                    }
                                                    i8 = 0;
                                                    mapArr4[0] = linkedHashMapZ0;
                                                    linkedHashMapW6.put("party", p5.v0(mapArr4));
                                                    linkedHashMapW6.put(r10, e(jF3, map2));
                                                    obj4 = obj2;
                                                    linkedHashMapW6.put(obj4, obj3);
                                                    obj5 = obj11;
                                                    linkedHashMapW6.put(obj5, y(new ArrayList(), arrayList));
                                                    linkedHashMapR = linkedHashMapW6;
                                                }
                                                hVarArr = hVarArr;
                                                str9 = "month_signin";
                                                arrayList = new ArrayList();
                                                length = hVarArr2.length;
                                                i4 = 0;
                                                while (i4 < length) {
                                                    int i215 = length;
                                                    com.sgscq.vpn.config.h hVar8 = hVarArr2[i4];
                                                    arrayList.add(b(hVar8.f578c, hVar8.f579d, (String) hVar8.f577b, map2));
                                                    i4++;
                                                    length = i215;
                                                    str5 = str5;
                                                    str7 = str7;
                                                }
                                                str10 = str7;
                                                str11 = str5;
                                                arrayList2 = new ArrayList();
                                                i5 = 0;
                                                while (i5 < arrayList.size()) {
                                                    if (i5 < hVarArr2.length) {
                                                        iL2 = hVarArr2[i5].f578c;
                                                        obj6 = obj12;
                                                    } else {
                                                        obj6 = obj12;
                                                        iL2 = w1.l2(String.valueOf(((Map) arrayList.get(i5)).getOrDefault(obj6, 1)), 1);
                                                    }
                                                    arrayList2.add(w1.A2(iL2, (Map) arrayList.get(i5)));
                                                    i5++;
                                                    obj12 = obj6;
                                                    hVarArr2 = hVarArr2;
                                                }
                                                LinkedHashMap linkedHashMapW7 = W();
                                                linkedHashMapW7.put("instance_id", strG2);
                                                linkedHashMapW7.put("add_list", S(arrayList2));
                                                linkedHashMapW7.put(obj, S(arrayList2));
                                                Map[] mapArr5 = new Map[1];
                                                str12 = "activity_type";
                                                if (str9.equals(strG2)) {
                                                    mapZ0 = (Map) arrayList2.get(0);
                                                    boolean zEquals12 = Boolean.TRUE.equals(map2.get(L("month_signin")));
                                                    if (mapZ0 == null) {
                                                        mapZ0 = p5.z0("pk_id", "791661", "id", "791661", "item_id", "791661", "num", 1, "item_num", 1, "item_type", 5);
                                                    }
                                                    linkedHashMapZ0 = p5.z0("activity_type", 15, "type", 15, "can_receive", Boolean.valueOf(!zEquals12), "instance_id", "month_signin", "home_sort", 8, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(p5.v0(mapZ0)), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals12)))));
                                                } else if ("daily_check".equals(strG2)) {
                                                    linkedHashMapZ0 = o(map2, (Map) arrayList2.get(0));
                                                } else if (str6.equals(strG2)) {
                                                    linkedHashMapZ0 = l(map2);
                                                } else if (str10.equals(strG2)) {
                                                    N(map2);
                                                    arrayList3 = new ArrayList();
                                                    i6 = 0;
                                                    while (i6 < 56) {
                                                        int i216 = i6 + 1;
                                                        String str4110 = str11;
                                                        boolean zEquals13 = Boolean.TRUE.equals(map2.get(str4110 + i216));
                                                        hVarArr3 = hVarArr[i6];
                                                        arrayList4 = new ArrayList();
                                                        length2 = hVarArr3.length;
                                                        i7 = 0;
                                                        while (i7 < length2) {
                                                            int i217 = length2;
                                                            com.sgscq.vpn.config.h hVar9 = hVarArr3[i7];
                                                            com.sgscq.vpn.config.h[] hVarArr9 = hVarArr3;
                                                            String str4111 = (String) hVar9.f577b;
                                                            String str4112 = str12;
                                                            int i218 = hVar9.f579d;
                                                            int iJ4 = j(str4111, i218);
                                                            Object obj19 = obj;
                                                            String str4113 = (String) hVar9.f577b;
                                                            int i219 = hVar9.f578c;
                                                            arrayList4.add(p5.z0("pk_id", str4113, "id", str4113, "item_id", str4113, "num", Integer.valueOf(i219), "item_num", Integer.valueOf(i219), "type", Integer.valueOf(i218), "item_type", Integer.valueOf(iJ4)));
                                                            i7++;
                                                            length2 = i217;
                                                            hVarArr3 = hVarArr9;
                                                            str12 = str4112;
                                                            obj = obj19;
                                                        }
                                                        arrayList3.add(p5.z0("object", F(arrayList4), "status", p5.z0("condition", Integer.valueOf(i216), "is_received", Boolean.valueOf(zEquals13))));
                                                        i6 = i216;
                                                        str11 = str4110;
                                                        obj = obj;
                                                    }
                                                    Object obj110 = obj;
                                                    String str4114 = str12;
                                                    Object[] objArr6 = new Object[18];
                                                    objArr6[0] = "type";
                                                    objArr6[1] = 102;
                                                    objArr6[2] = "can_receive";
                                                    if (C(map2) > 0) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    objArr6[3] = Boolean.valueOf(z2);
                                                    objArr6[4] = "instance_id";
                                                    objArr6[5] = str10;
                                                    objArr6[6] = "instance_bg";
                                                    objArr6[7] = "new";
                                                    objArr6[8] = "home_sort";
                                                    objArr6[9] = 8;
                                                    objArr6[10] = "left_time";
                                                    objArr6[11] = 86400;
                                                    objArr6[12] = "instance_countdown";
                                                    objArr6[13] = 86400;
                                                    objArr6[14] = "instance_interval";
                                                    objArr6[15] = 86400;
                                                    objArr6[16] = obj110;
                                                    objArr6[17] = arrayList3;
                                                    linkedHashMapZ0 = p5.z0(str4114, 102, objArr6);
                                                } else {
                                                    boolean zEquals14 = Boolean.TRUE.equals(map2.get(L(strG2)));
                                                    linkedHashMapZ0 = p5.z0("activity_type", 1, "can_receive", Boolean.valueOf(!zEquals14), "instance_id", strG2, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(arrayList2), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals14)))));
                                                }
                                                i8 = 0;
                                                mapArr5[0] = linkedHashMapZ0;
                                                linkedHashMapW7.put("party", p5.v0(mapArr5));
                                                linkedHashMapW7.put(r10, e(jF3, map2));
                                                obj4 = obj2;
                                                linkedHashMapW7.put(obj4, obj3);
                                                obj5 = obj11;
                                                linkedHashMapW7.put(obj5, y(new ArrayList(), arrayList));
                                                linkedHashMapR = linkedHashMapW7;
                                            }
                                        }
                                    } else {
                                        obj3 = "Item";
                                        str7 = "cumulative_login_yuanbao";
                                        if (str7.equals(strG2)) {
                                            iC = C(map2);
                                            if (iC <= 0) {
                                                linkedHashMapR2 = r("奖励暂不可领取");
                                            } else {
                                                strA = a.b0.a("activity_received_cumulative_login_day_", iC);
                                                iB = -1;
                                                i3 = iC;
                                                i2 = -1;
                                                str8 = strA;
                                                bool = Boolean.TRUE;
                                                if (bool.equals(map2.get(str8))) {
                                                    linkedHashMapR2 = r("奖励已领取");
                                                } else {
                                                    map2.put("activity_last_receive_instance", strG2);
                                                    map2.put(str8, bool);
                                                    if (i2 > 0) {
                                                        map2.put(L("daily_check"), bool);
                                                    }
                                                    map2.put("activity_receive_count", Integer.valueOf(T(map2.get("activity_receive_count")) + 1));
                                                    hVarArr = f781c;
                                                    if (iB > 0) {
                                                        hVarArr2 = f780b[iB - 1];
                                                    } else {
                                                        if (i3 > 0) {
                                                            hVarArr2 = hVarArr[i3 - 1];
                                                        } else {
                                                            com.sgscq.vpn.config.h[] hVarArr10 = new com.sgscq.vpn.config.h[1];
                                                            str9 = "month_signin";
                                                            if (str9.equals(strG2)) {
                                                                hVar = new com.sgscq.vpn.config.h("791661", 5);
                                                            } else {
                                                                hVar = new com.sgscq.vpn.config.h("791661", 5);
                                                            }
                                                            hVarArr10[0] = hVar;
                                                            hVarArr2 = hVarArr10;
                                                        }
                                                        arrayList = new ArrayList();
                                                        length = hVarArr2.length;
                                                        i4 = 0;
                                                        while (i4 < length) {
                                                            int i2110 = length;
                                                            com.sgscq.vpn.config.h hVar10 = hVarArr2[i4];
                                                            arrayList.add(b(hVar10.f578c, hVar10.f579d, (String) hVar10.f577b, map2));
                                                            i4++;
                                                            length = i2110;
                                                            str5 = str5;
                                                            str7 = str7;
                                                        }
                                                        str10 = str7;
                                                        str11 = str5;
                                                        arrayList2 = new ArrayList();
                                                        i5 = 0;
                                                        while (i5 < arrayList.size()) {
                                                            if (i5 < hVarArr2.length) {
                                                                iL2 = hVarArr2[i5].f578c;
                                                                obj6 = obj12;
                                                            } else {
                                                                obj6 = obj12;
                                                                iL2 = w1.l2(String.valueOf(((Map) arrayList.get(i5)).getOrDefault(obj6, 1)), 1);
                                                            }
                                                            arrayList2.add(w1.A2(iL2, (Map) arrayList.get(i5)));
                                                            i5++;
                                                            obj12 = obj6;
                                                            hVarArr2 = hVarArr2;
                                                        }
                                                        LinkedHashMap linkedHashMapW8 = W();
                                                        linkedHashMapW8.put("instance_id", strG2);
                                                        linkedHashMapW8.put("add_list", S(arrayList2));
                                                        linkedHashMapW8.put(obj, S(arrayList2));
                                                        Map[] mapArr6 = new Map[1];
                                                        str12 = "activity_type";
                                                        if (str9.equals(strG2)) {
                                                            mapZ0 = (Map) arrayList2.get(0);
                                                            boolean zEquals15 = Boolean.TRUE.equals(map2.get(L("month_signin")));
                                                            if (mapZ0 == null) {
                                                                mapZ0 = p5.z0("pk_id", "791661", "id", "791661", "item_id", "791661", "num", 1, "item_num", 1, "item_type", 5);
                                                            }
                                                            linkedHashMapZ0 = p5.z0("activity_type", 15, "type", 15, "can_receive", Boolean.valueOf(!zEquals15), "instance_id", "month_signin", "home_sort", 8, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(p5.v0(mapZ0)), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals15)))));
                                                        } else if ("daily_check".equals(strG2)) {
                                                            linkedHashMapZ0 = o(map2, (Map) arrayList2.get(0));
                                                        } else if (str6.equals(strG2)) {
                                                            linkedHashMapZ0 = l(map2);
                                                        } else if (str10.equals(strG2)) {
                                                            N(map2);
                                                            arrayList3 = new ArrayList();
                                                            i6 = 0;
                                                            while (i6 < 56) {
                                                                int i2111 = i6 + 1;
                                                                String str4115 = str11;
                                                                boolean zEquals16 = Boolean.TRUE.equals(map2.get(str4115 + i2111));
                                                                hVarArr3 = hVarArr[i6];
                                                                arrayList4 = new ArrayList();
                                                                length2 = hVarArr3.length;
                                                                i7 = 0;
                                                                while (i7 < length2) {
                                                                    int i2112 = length2;
                                                                    com.sgscq.vpn.config.h hVar11 = hVarArr3[i7];
                                                                    com.sgscq.vpn.config.h[] hVarArr11 = hVarArr3;
                                                                    String str4116 = (String) hVar11.f577b;
                                                                    String str4117 = str12;
                                                                    int i2113 = hVar11.f579d;
                                                                    int iJ5 = j(str4116, i2113);
                                                                    Object obj111 = obj;
                                                                    String str4118 = (String) hVar11.f577b;
                                                                    int i2114 = hVar11.f578c;
                                                                    arrayList4.add(p5.z0("pk_id", str4118, "id", str4118, "item_id", str4118, "num", Integer.valueOf(i2114), "item_num", Integer.valueOf(i2114), "type", Integer.valueOf(i2113), "item_type", Integer.valueOf(iJ5)));
                                                                    i7++;
                                                                    length2 = i2112;
                                                                    hVarArr3 = hVarArr11;
                                                                    str12 = str4117;
                                                                    obj = obj111;
                                                                }
                                                                arrayList3.add(p5.z0("object", F(arrayList4), "status", p5.z0("condition", Integer.valueOf(i2111), "is_received", Boolean.valueOf(zEquals16))));
                                                                i6 = i2111;
                                                                str11 = str4115;
                                                                obj = obj;
                                                            }
                                                            Object obj112 = obj;
                                                            String str4119 = str12;
                                                            Object[] objArr7 = new Object[18];
                                                            objArr7[0] = "type";
                                                            objArr7[1] = 102;
                                                            objArr7[2] = "can_receive";
                                                            if (C(map2) > 0) {
                                                                z2 = true;
                                                            } else {
                                                                z2 = false;
                                                            }
                                                            objArr7[3] = Boolean.valueOf(z2);
                                                            objArr7[4] = "instance_id";
                                                            objArr7[5] = str10;
                                                            objArr7[6] = "instance_bg";
                                                            objArr7[7] = "new";
                                                            objArr7[8] = "home_sort";
                                                            objArr7[9] = 8;
                                                            objArr7[10] = "left_time";
                                                            objArr7[11] = 86400;
                                                            objArr7[12] = "instance_countdown";
                                                            objArr7[13] = 86400;
                                                            objArr7[14] = "instance_interval";
                                                            objArr7[15] = 86400;
                                                            objArr7[16] = obj112;
                                                            objArr7[17] = arrayList3;
                                                            linkedHashMapZ0 = p5.z0(str4119, 102, objArr7);
                                                        } else {
                                                            boolean zEquals17 = Boolean.TRUE.equals(map2.get(L(strG2)));
                                                            linkedHashMapZ0 = p5.z0("activity_type", 1, "can_receive", Boolean.valueOf(!zEquals17), "instance_id", strG2, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(arrayList2), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals17)))));
                                                        }
                                                        i8 = 0;
                                                        mapArr6[0] = linkedHashMapZ0;
                                                        linkedHashMapW8.put("party", p5.v0(mapArr6));
                                                        linkedHashMapW8.put(r10, e(jF3, map2));
                                                        obj4 = obj2;
                                                        linkedHashMapW8.put(obj4, obj3);
                                                        obj5 = obj11;
                                                        linkedHashMapW8.put(obj5, y(new ArrayList(), arrayList));
                                                        linkedHashMapR = linkedHashMapW8;
                                                    }
                                                    hVarArr = hVarArr;
                                                    str9 = "month_signin";
                                                    arrayList = new ArrayList();
                                                    length = hVarArr2.length;
                                                    i4 = 0;
                                                    while (i4 < length) {
                                                        int i2115 = length;
                                                        com.sgscq.vpn.config.h hVar12 = hVarArr2[i4];
                                                        arrayList.add(b(hVar12.f578c, hVar12.f579d, (String) hVar12.f577b, map2));
                                                        i4++;
                                                        length = i2115;
                                                        str5 = str5;
                                                        str7 = str7;
                                                    }
                                                    str10 = str7;
                                                    str11 = str5;
                                                    arrayList2 = new ArrayList();
                                                    i5 = 0;
                                                    while (i5 < arrayList.size()) {
                                                        if (i5 < hVarArr2.length) {
                                                            iL2 = hVarArr2[i5].f578c;
                                                            obj6 = obj12;
                                                        } else {
                                                            obj6 = obj12;
                                                            iL2 = w1.l2(String.valueOf(((Map) arrayList.get(i5)).getOrDefault(obj6, 1)), 1);
                                                        }
                                                        arrayList2.add(w1.A2(iL2, (Map) arrayList.get(i5)));
                                                        i5++;
                                                        obj12 = obj6;
                                                        hVarArr2 = hVarArr2;
                                                    }
                                                    LinkedHashMap linkedHashMapW9 = W();
                                                    linkedHashMapW9.put("instance_id", strG2);
                                                    linkedHashMapW9.put("add_list", S(arrayList2));
                                                    linkedHashMapW9.put(obj, S(arrayList2));
                                                    Map[] mapArr7 = new Map[1];
                                                    str12 = "activity_type";
                                                    if (str9.equals(strG2)) {
                                                        mapZ0 = (Map) arrayList2.get(0);
                                                        boolean zEquals18 = Boolean.TRUE.equals(map2.get(L("month_signin")));
                                                        if (mapZ0 == null) {
                                                            mapZ0 = p5.z0("pk_id", "791661", "id", "791661", "item_id", "791661", "num", 1, "item_num", 1, "item_type", 5);
                                                        }
                                                        linkedHashMapZ0 = p5.z0("activity_type", 15, "type", 15, "can_receive", Boolean.valueOf(!zEquals18), "instance_id", "month_signin", "home_sort", 8, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(p5.v0(mapZ0)), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals18)))));
                                                    } else if ("daily_check".equals(strG2)) {
                                                        linkedHashMapZ0 = o(map2, (Map) arrayList2.get(0));
                                                    } else if (str6.equals(strG2)) {
                                                        linkedHashMapZ0 = l(map2);
                                                    } else if (str10.equals(strG2)) {
                                                        N(map2);
                                                        arrayList3 = new ArrayList();
                                                        i6 = 0;
                                                        while (i6 < 56) {
                                                            int i2116 = i6 + 1;
                                                            String str41110 = str11;
                                                            boolean zEquals19 = Boolean.TRUE.equals(map2.get(str41110 + i2116));
                                                            hVarArr3 = hVarArr[i6];
                                                            arrayList4 = new ArrayList();
                                                            length2 = hVarArr3.length;
                                                            i7 = 0;
                                                            while (i7 < length2) {
                                                                int i2117 = length2;
                                                                com.sgscq.vpn.config.h hVar13 = hVarArr3[i7];
                                                                com.sgscq.vpn.config.h[] hVarArr12 = hVarArr3;
                                                                String str41111 = (String) hVar13.f577b;
                                                                String str41112 = str12;
                                                                int i2118 = hVar13.f579d;
                                                                int iJ6 = j(str41111, i2118);
                                                                Object obj113 = obj;
                                                                String str41113 = (String) hVar13.f577b;
                                                                int i2119 = hVar13.f578c;
                                                                arrayList4.add(p5.z0("pk_id", str41113, "id", str41113, "item_id", str41113, "num", Integer.valueOf(i2119), "item_num", Integer.valueOf(i2119), "type", Integer.valueOf(i2118), "item_type", Integer.valueOf(iJ6)));
                                                                i7++;
                                                                length2 = i2117;
                                                                hVarArr3 = hVarArr12;
                                                                str12 = str41112;
                                                                obj = obj113;
                                                            }
                                                            arrayList3.add(p5.z0("object", F(arrayList4), "status", p5.z0("condition", Integer.valueOf(i2116), "is_received", Boolean.valueOf(zEquals19))));
                                                            i6 = i2116;
                                                            str11 = str41110;
                                                            obj = obj;
                                                        }
                                                        Object obj114 = obj;
                                                        String str41114 = str12;
                                                        Object[] objArr8 = new Object[18];
                                                        objArr8[0] = "type";
                                                        objArr8[1] = 102;
                                                        objArr8[2] = "can_receive";
                                                        if (C(map2) > 0) {
                                                            z2 = true;
                                                        } else {
                                                            z2 = false;
                                                        }
                                                        objArr8[3] = Boolean.valueOf(z2);
                                                        objArr8[4] = "instance_id";
                                                        objArr8[5] = str10;
                                                        objArr8[6] = "instance_bg";
                                                        objArr8[7] = "new";
                                                        objArr8[8] = "home_sort";
                                                        objArr8[9] = 8;
                                                        objArr8[10] = "left_time";
                                                        objArr8[11] = 86400;
                                                        objArr8[12] = "instance_countdown";
                                                        objArr8[13] = 86400;
                                                        objArr8[14] = "instance_interval";
                                                        objArr8[15] = 86400;
                                                        objArr8[16] = obj114;
                                                        objArr8[17] = arrayList3;
                                                        linkedHashMapZ0 = p5.z0(str41114, 102, objArr8);
                                                    } else {
                                                        boolean zEquals110 = Boolean.TRUE.equals(map2.get(L(strG2)));
                                                        linkedHashMapZ0 = p5.z0("activity_type", 1, "can_receive", Boolean.valueOf(!zEquals110), "instance_id", strG2, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(arrayList2), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals110)))));
                                                    }
                                                    i8 = 0;
                                                    mapArr7[0] = linkedHashMapZ0;
                                                    linkedHashMapW9.put("party", p5.v0(mapArr7));
                                                    linkedHashMapW9.put(r10, e(jF3, map2));
                                                    obj4 = obj2;
                                                    linkedHashMapW9.put(obj4, obj3);
                                                    obj5 = obj11;
                                                    linkedHashMapW9.put(obj5, y(new ArrayList(), arrayList));
                                                    linkedHashMapR = linkedHashMapW9;
                                                }
                                            }
                                        } else {
                                            i2 = -1;
                                            i3 = -1;
                                            str8 = strL;
                                            iB = -1;
                                            bool = Boolean.TRUE;
                                            if (bool.equals(map2.get(str8))) {
                                                linkedHashMapR2 = r("奖励已领取");
                                            } else {
                                                map2.put("activity_last_receive_instance", strG2);
                                                map2.put(str8, bool);
                                                if (i2 > 0) {
                                                    map2.put(L("daily_check"), bool);
                                                }
                                                map2.put("activity_receive_count", Integer.valueOf(T(map2.get("activity_receive_count")) + 1));
                                                hVarArr = f781c;
                                                if (iB > 0) {
                                                    hVarArr2 = f780b[iB - 1];
                                                } else {
                                                    if (i3 > 0) {
                                                        hVarArr2 = hVarArr[i3 - 1];
                                                    } else {
                                                        com.sgscq.vpn.config.h[] hVarArr13 = new com.sgscq.vpn.config.h[1];
                                                        str9 = "month_signin";
                                                        if (str9.equals(strG2)) {
                                                            hVar = new com.sgscq.vpn.config.h("791661", 5);
                                                        } else {
                                                            hVar = new com.sgscq.vpn.config.h("791661", 5);
                                                        }
                                                        hVarArr13[0] = hVar;
                                                        hVarArr2 = hVarArr13;
                                                    }
                                                    arrayList = new ArrayList();
                                                    length = hVarArr2.length;
                                                    i4 = 0;
                                                    while (i4 < length) {
                                                        int i21110 = length;
                                                        com.sgscq.vpn.config.h hVar14 = hVarArr2[i4];
                                                        arrayList.add(b(hVar14.f578c, hVar14.f579d, (String) hVar14.f577b, map2));
                                                        i4++;
                                                        length = i21110;
                                                        str5 = str5;
                                                        str7 = str7;
                                                    }
                                                    str10 = str7;
                                                    str11 = str5;
                                                    arrayList2 = new ArrayList();
                                                    i5 = 0;
                                                    while (i5 < arrayList.size()) {
                                                        if (i5 < hVarArr2.length) {
                                                            iL2 = hVarArr2[i5].f578c;
                                                            obj6 = obj12;
                                                        } else {
                                                            obj6 = obj12;
                                                            iL2 = w1.l2(String.valueOf(((Map) arrayList.get(i5)).getOrDefault(obj6, 1)), 1);
                                                        }
                                                        arrayList2.add(w1.A2(iL2, (Map) arrayList.get(i5)));
                                                        i5++;
                                                        obj12 = obj6;
                                                        hVarArr2 = hVarArr2;
                                                    }
                                                    LinkedHashMap linkedHashMapW10 = W();
                                                    linkedHashMapW10.put("instance_id", strG2);
                                                    linkedHashMapW10.put("add_list", S(arrayList2));
                                                    linkedHashMapW10.put(obj, S(arrayList2));
                                                    Map[] mapArr8 = new Map[1];
                                                    str12 = "activity_type";
                                                    if (str9.equals(strG2)) {
                                                        mapZ0 = (Map) arrayList2.get(0);
                                                        boolean zEquals111 = Boolean.TRUE.equals(map2.get(L("month_signin")));
                                                        if (mapZ0 == null) {
                                                            mapZ0 = p5.z0("pk_id", "791661", "id", "791661", "item_id", "791661", "num", 1, "item_num", 1, "item_type", 5);
                                                        }
                                                        linkedHashMapZ0 = p5.z0("activity_type", 15, "type", 15, "can_receive", Boolean.valueOf(!zEquals111), "instance_id", "month_signin", "home_sort", 8, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(p5.v0(mapZ0)), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals111)))));
                                                    } else if ("daily_check".equals(strG2)) {
                                                        linkedHashMapZ0 = o(map2, (Map) arrayList2.get(0));
                                                    } else if (str6.equals(strG2)) {
                                                        linkedHashMapZ0 = l(map2);
                                                    } else if (str10.equals(strG2)) {
                                                        N(map2);
                                                        arrayList3 = new ArrayList();
                                                        i6 = 0;
                                                        while (i6 < 56) {
                                                            int i21111 = i6 + 1;
                                                            String str41115 = str11;
                                                            boolean zEquals112 = Boolean.TRUE.equals(map2.get(str41115 + i21111));
                                                            hVarArr3 = hVarArr[i6];
                                                            arrayList4 = new ArrayList();
                                                            length2 = hVarArr3.length;
                                                            i7 = 0;
                                                            while (i7 < length2) {
                                                                int i21112 = length2;
                                                                com.sgscq.vpn.config.h hVar15 = hVarArr3[i7];
                                                                com.sgscq.vpn.config.h[] hVarArr14 = hVarArr3;
                                                                String str41116 = (String) hVar15.f577b;
                                                                String str41117 = str12;
                                                                int i21113 = hVar15.f579d;
                                                                int iJ7 = j(str41116, i21113);
                                                                Object obj115 = obj;
                                                                String str41118 = (String) hVar15.f577b;
                                                                int i21114 = hVar15.f578c;
                                                                arrayList4.add(p5.z0("pk_id", str41118, "id", str41118, "item_id", str41118, "num", Integer.valueOf(i21114), "item_num", Integer.valueOf(i21114), "type", Integer.valueOf(i21113), "item_type", Integer.valueOf(iJ7)));
                                                                i7++;
                                                                length2 = i21112;
                                                                hVarArr3 = hVarArr14;
                                                                str12 = str41117;
                                                                obj = obj115;
                                                            }
                                                            arrayList3.add(p5.z0("object", F(arrayList4), "status", p5.z0("condition", Integer.valueOf(i21111), "is_received", Boolean.valueOf(zEquals112))));
                                                            i6 = i21111;
                                                            str11 = str41115;
                                                            obj = obj;
                                                        }
                                                        Object obj116 = obj;
                                                        String str41119 = str12;
                                                        Object[] objArr9 = new Object[18];
                                                        objArr9[0] = "type";
                                                        objArr9[1] = 102;
                                                        objArr9[2] = "can_receive";
                                                        if (C(map2) > 0) {
                                                            z2 = true;
                                                        } else {
                                                            z2 = false;
                                                        }
                                                        objArr9[3] = Boolean.valueOf(z2);
                                                        objArr9[4] = "instance_id";
                                                        objArr9[5] = str10;
                                                        objArr9[6] = "instance_bg";
                                                        objArr9[7] = "new";
                                                        objArr9[8] = "home_sort";
                                                        objArr9[9] = 8;
                                                        objArr9[10] = "left_time";
                                                        objArr9[11] = 86400;
                                                        objArr9[12] = "instance_countdown";
                                                        objArr9[13] = 86400;
                                                        objArr9[14] = "instance_interval";
                                                        objArr9[15] = 86400;
                                                        objArr9[16] = obj116;
                                                        objArr9[17] = arrayList3;
                                                        linkedHashMapZ0 = p5.z0(str41119, 102, objArr9);
                                                    } else {
                                                        boolean zEquals113 = Boolean.TRUE.equals(map2.get(L(strG2)));
                                                        linkedHashMapZ0 = p5.z0("activity_type", 1, "can_receive", Boolean.valueOf(!zEquals113), "instance_id", strG2, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(arrayList2), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals113)))));
                                                    }
                                                    i8 = 0;
                                                    mapArr8[0] = linkedHashMapZ0;
                                                    linkedHashMapW10.put("party", p5.v0(mapArr8));
                                                    linkedHashMapW10.put(r10, e(jF3, map2));
                                                    obj4 = obj2;
                                                    linkedHashMapW10.put(obj4, obj3);
                                                    obj5 = obj11;
                                                    linkedHashMapW10.put(obj5, y(new ArrayList(), arrayList));
                                                    linkedHashMapR = linkedHashMapW10;
                                                }
                                                hVarArr = hVarArr;
                                                str9 = "month_signin";
                                                arrayList = new ArrayList();
                                                length = hVarArr2.length;
                                                i4 = 0;
                                                while (i4 < length) {
                                                    int i21115 = length;
                                                    com.sgscq.vpn.config.h hVar16 = hVarArr2[i4];
                                                    arrayList.add(b(hVar16.f578c, hVar16.f579d, (String) hVar16.f577b, map2));
                                                    i4++;
                                                    length = i21115;
                                                    str5 = str5;
                                                    str7 = str7;
                                                }
                                                str10 = str7;
                                                str11 = str5;
                                                arrayList2 = new ArrayList();
                                                i5 = 0;
                                                while (i5 < arrayList.size()) {
                                                    if (i5 < hVarArr2.length) {
                                                        iL2 = hVarArr2[i5].f578c;
                                                        obj6 = obj12;
                                                    } else {
                                                        obj6 = obj12;
                                                        iL2 = w1.l2(String.valueOf(((Map) arrayList.get(i5)).getOrDefault(obj6, 1)), 1);
                                                    }
                                                    arrayList2.add(w1.A2(iL2, (Map) arrayList.get(i5)));
                                                    i5++;
                                                    obj12 = obj6;
                                                    hVarArr2 = hVarArr2;
                                                }
                                                LinkedHashMap linkedHashMapW11 = W();
                                                linkedHashMapW11.put("instance_id", strG2);
                                                linkedHashMapW11.put("add_list", S(arrayList2));
                                                linkedHashMapW11.put(obj, S(arrayList2));
                                                Map[] mapArr9 = new Map[1];
                                                str12 = "activity_type";
                                                if (str9.equals(strG2)) {
                                                    mapZ0 = (Map) arrayList2.get(0);
                                                    boolean zEquals114 = Boolean.TRUE.equals(map2.get(L("month_signin")));
                                                    if (mapZ0 == null) {
                                                        mapZ0 = p5.z0("pk_id", "791661", "id", "791661", "item_id", "791661", "num", 1, "item_num", 1, "item_type", 5);
                                                    }
                                                    linkedHashMapZ0 = p5.z0("activity_type", 15, "type", 15, "can_receive", Boolean.valueOf(!zEquals114), "instance_id", "month_signin", "home_sort", 8, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(p5.v0(mapZ0)), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals114)))));
                                                } else if ("daily_check".equals(strG2)) {
                                                    linkedHashMapZ0 = o(map2, (Map) arrayList2.get(0));
                                                } else if (str6.equals(strG2)) {
                                                    linkedHashMapZ0 = l(map2);
                                                } else if (str10.equals(strG2)) {
                                                    N(map2);
                                                    arrayList3 = new ArrayList();
                                                    i6 = 0;
                                                    while (i6 < 56) {
                                                        int i21116 = i6 + 1;
                                                        String str411110 = str11;
                                                        boolean zEquals115 = Boolean.TRUE.equals(map2.get(str411110 + i21116));
                                                        hVarArr3 = hVarArr[i6];
                                                        arrayList4 = new ArrayList();
                                                        length2 = hVarArr3.length;
                                                        i7 = 0;
                                                        while (i7 < length2) {
                                                            int i21117 = length2;
                                                            com.sgscq.vpn.config.h hVar17 = hVarArr3[i7];
                                                            com.sgscq.vpn.config.h[] hVarArr15 = hVarArr3;
                                                            String str411111 = (String) hVar17.f577b;
                                                            String str411112 = str12;
                                                            int i21118 = hVar17.f579d;
                                                            int iJ8 = j(str411111, i21118);
                                                            Object obj117 = obj;
                                                            String str411113 = (String) hVar17.f577b;
                                                            int i21119 = hVar17.f578c;
                                                            arrayList4.add(p5.z0("pk_id", str411113, "id", str411113, "item_id", str411113, "num", Integer.valueOf(i21119), "item_num", Integer.valueOf(i21119), "type", Integer.valueOf(i21118), "item_type", Integer.valueOf(iJ8)));
                                                            i7++;
                                                            length2 = i21117;
                                                            hVarArr3 = hVarArr15;
                                                            str12 = str411112;
                                                            obj = obj117;
                                                        }
                                                        arrayList3.add(p5.z0("object", F(arrayList4), "status", p5.z0("condition", Integer.valueOf(i21116), "is_received", Boolean.valueOf(zEquals115))));
                                                        i6 = i21116;
                                                        str11 = str411110;
                                                        obj = obj;
                                                    }
                                                    Object obj118 = obj;
                                                    String str411114 = str12;
                                                    Object[] objArr10 = new Object[18];
                                                    objArr10[0] = "type";
                                                    objArr10[1] = 102;
                                                    objArr10[2] = "can_receive";
                                                    if (C(map2) > 0) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    objArr10[3] = Boolean.valueOf(z2);
                                                    objArr10[4] = "instance_id";
                                                    objArr10[5] = str10;
                                                    objArr10[6] = "instance_bg";
                                                    objArr10[7] = "new";
                                                    objArr10[8] = "home_sort";
                                                    objArr10[9] = 8;
                                                    objArr10[10] = "left_time";
                                                    objArr10[11] = 86400;
                                                    objArr10[12] = "instance_countdown";
                                                    objArr10[13] = 86400;
                                                    objArr10[14] = "instance_interval";
                                                    objArr10[15] = 86400;
                                                    objArr10[16] = obj118;
                                                    objArr10[17] = arrayList3;
                                                    linkedHashMapZ0 = p5.z0(str411114, 102, objArr10);
                                                } else {
                                                    boolean zEquals116 = Boolean.TRUE.equals(map2.get(L(strG2)));
                                                    linkedHashMapZ0 = p5.z0("activity_type", 1, "can_receive", Boolean.valueOf(!zEquals116), "instance_id", strG2, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(arrayList2), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals116)))));
                                                }
                                                i8 = 0;
                                                mapArr9[0] = linkedHashMapZ0;
                                                linkedHashMapW11.put("party", p5.v0(mapArr9));
                                                linkedHashMapW11.put(r10, e(jF3, map2));
                                                obj4 = obj2;
                                                linkedHashMapW11.put(obj4, obj3);
                                                obj5 = obj11;
                                                linkedHashMapW11.put(obj5, y(new ArrayList(), arrayList));
                                                linkedHashMapR = linkedHashMapW11;
                                            }
                                        }
                                    }
                                }
                            } else if ("opening_recharge_gifts".equals(strG2)) {
                                if ("finish_dungeon".equals(strG2)) {
                                    z3 = true;
                                } else {
                                    z3 = true;
                                }
                                if (z3) {
                                    if ("level_general".equals(strG2)) {
                                        bVarArr2 = f784f;
                                    } else if ("finish_dungeon".equals(strG2)) {
                                        bVarArr2 = f785g;
                                    } else if ("collect_god".equals(strG2)) {
                                        bVarArr2 = f786h;
                                    } else {
                                        if ("opening_recharge_gifts".equals(strG2)) {
                                            bVarArr2 = f787i;
                                        } else {
                                            bVarArr = new b[0];
                                        }
                                        arrayList5 = new ArrayList();
                                        length3 = bVarArr.length;
                                        i9 = 0;
                                        while (i9 < length3) {
                                            int i30 = length3;
                                            bVar2 = bVarArr[i9];
                                            b[] bVarArr3 = bVarArr;
                                            String str50 = str43;
                                            if (Boolean.TRUE.equals(mapW0.get(K(strG2, bVar2.f758a)))) {
                                            }
                                            i9++;
                                            length3 = i30;
                                            bVarArr = bVarArr3;
                                            str43 = str50;
                                        }
                                        str13 = str43;
                                        if (arrayList5.isEmpty()) {
                                            linkedHashMapR2 = r(str3);
                                            linkedHashMapR2.put("activity_list", e(jF3, mapW0));
                                        } else {
                                            linkedHashMap = new LinkedHashMap();
                                            linkedHashMap2 = new LinkedHashMap();
                                            linkedHashMap3 = new LinkedHashMap();
                                            linkedHashMap4 = new LinkedHashMap();
                                            linkedHashMap5 = new LinkedHashMap();
                                            linkedHashMap6 = new LinkedHashMap();
                                            arrayList6 = new ArrayList();
                                            it = arrayList5.iterator();
                                            map3 = mapW0;
                                            while (true) {
                                                linkedHashMap7 = linkedHashMap;
                                                linkedHashMap8 = linkedHashMap6;
                                                linkedHashMap9 = linkedHashMap4;
                                                if (it.hasNext()) {
                                                    break;
                                                    break;
                                                }
                                                map6 = mapW0;
                                                bVar = (b) it.next();
                                                i10 = bVar.f762e;
                                                str20 = str42;
                                                str21 = bVar.f760c;
                                                str22 = str41;
                                                i11 = bVar.f761d;
                                                str23 = str44;
                                                str24 = str40;
                                                if (i10 == 6) {
                                                    Map mapA = a(i11, str21, map3);
                                                    linkedHashMap5.put(String.valueOf(mapA.get("pk_id")), mapA);
                                                    String str51 = bVar.f760c;
                                                    arrayList6.add(p5.z0("pk_id", mapA.getOrDefault("pk_id", str51), "id", str51, "item_id", str51, "general_id", str51, "num", Integer.valueOf(i11), "item_num", Integer.valueOf(i11), "item_type", 6, "type", 6, "card_type", mapA.getOrDefault("card_type", 1), "is_new", Boolean.TRUE));
                                                    linkedHashMap12 = linkedHashMap2;
                                                    linkedHashMap13 = linkedHashMap5;
                                                    linkedHashMap16 = linkedHashMap7;
                                                    linkedHashMap8 = linkedHashMap8;
                                                    str25 = str13;
                                                    map7 = map6;
                                                    str42 = str20;
                                                    str26 = str22;
                                                    str27 = str24;
                                                    arrayList11 = arrayList6;
                                                    linkedHashMap14 = linkedHashMap3;
                                                    linkedHashMap15 = linkedHashMap9;
                                                } else {
                                                    zEquals = str2.equals(strG2);
                                                    i12 = bVar.f762e;
                                                    if (zEquals) {
                                                        w1VarA1 = w1.a1(null);
                                                        arrayList12 = new ArrayList();
                                                        str28 = bVar.f759b;
                                                        arrayList11 = arrayList6;
                                                        if (i12 == 1) {
                                                            if (u("General", "general_id", str28, map3) != null) {
                                                                z4 = true;
                                                            } else {
                                                                z4 = false;
                                                            }
                                                            mapH = w1VarA1.h(str28, map3);
                                                            if (mapH == null) {
                                                                objB = A(i12, i11, str28, null);
                                                                linkedHashMap12 = linkedHashMap2;
                                                                linkedHashMap13 = linkedHashMap5;
                                                                linkedHashMap8 = linkedHashMap8;
                                                                str25 = str13;
                                                                linkedHashMap15 = linkedHashMap9;
                                                                map7 = map6;
                                                                str42 = str20;
                                                                str26 = str22;
                                                                str27 = str24;
                                                                linkedHashMap14 = linkedHashMap3;
                                                            } else {
                                                                R(linkedHashMap2, mapH);
                                                                Object obj20 = obj9;
                                                                R(linkedHashMap3, u("Skill", "pk_id", String.valueOf(mapH.getOrDefault("pk_id", obj20)), map3));
                                                                w1.b2("general_id", str28, arrayList12, map3);
                                                                w1.b2("skill_id", w1VarA1.T0(str28), arrayList12, map3);
                                                                if (z4) {
                                                                    R(linkedHashMap5, a(18, str28, map3));
                                                                }
                                                                linkedHashMap12 = linkedHashMap2;
                                                                linkedHashMap13 = linkedHashMap5;
                                                                i13 = i11;
                                                                obj9 = obj20;
                                                                map9 = mapH;
                                                                str33 = str13;
                                                                str31 = str20;
                                                                str32 = str22;
                                                                str30 = str23;
                                                            }
                                                            arrayList11.add(objB);
                                                            linkedHashMap16 = linkedHashMap7;
                                                        } else {
                                                            linkedHashMap13 = linkedHashMap5;
                                                            linkedHashMap12 = linkedHashMap2;
                                                            i13 = i11;
                                                            if (i12 == 4) {
                                                                w1 w1VarA2 = w1.a1(null);
                                                                List listF1 = w1.f0("Skill", map3);
                                                                LinkedHashMap linkedHashMap17 = new LinkedHashMap();
                                                                c.a.x("Skill", map3, linkedHashMap17, "pk_id", "general_pk_id", "0");
                                                                linkedHashMap17.put("skill_id", str28);
                                                                linkedHashMap17.put(str24, str28);
                                                                linkedHashMap17.put("skill_code", str28);
                                                                linkedHashMap17.put("card_type", "4");
                                                                str30 = str23;
                                                                linkedHashMap17.put("level", str30);
                                                                linkedHashMap17.put("skill_level", str30);
                                                                linkedHashMap17.put("position", "0");
                                                                linkedHashMap17.put("pos", "0");
                                                                linkedHashMap17.put("skill_position", "0");
                                                                linkedHashMap17.put("get_time", String.valueOf(c7.g()));
                                                                linkedHashMap17.put("is_natural", Boolean.FALSE);
                                                                linkedHashMap17.put("is_new", Boolean.TRUE);
                                                                linkedHashMap17.put("exp", "0");
                                                                linkedHashMap17.put("extra_level", "0");
                                                                linkedHashMap17.put("advanced_level", "0");
                                                                w1VarA2.S(str28, linkedHashMap17);
                                                                listF1.add(linkedHashMap17);
                                                                ArrayList arrayList20 = new ArrayList();
                                                                str31 = str20;
                                                                str32 = str22;
                                                                Object[] objArr11 = {str31, new ArrayList(), str32, listF1};
                                                                str33 = str13;
                                                                map3.put("Skill", p5.z0(str33, arrayList20, objArr11));
                                                                R(linkedHashMap3, linkedHashMap17);
                                                                w1.b2("skill_id", str28, arrayList12, map3);
                                                                map9 = linkedHashMap17;
                                                            } else {
                                                                str29 = str13;
                                                                str26 = str22;
                                                                str27 = str24;
                                                                linkedHashMap14 = linkedHashMap3;
                                                                if (i12 == 3) {
                                                                    w1 w1VarA3 = w1.a1(null);
                                                                    i12 = i12;
                                                                    List listF2 = w1.f0("Equipment", map3);
                                                                    LinkedHashMap linkedHashMap18 = new LinkedHashMap();
                                                                    c.a.x("Equipment", map3, linkedHashMap18, "pk_id", "equipment_id", str28);
                                                                    linkedHashMap18.put("equip_id", str28);
                                                                    linkedHashMap18.put(str27, str28);
                                                                    linkedHashMap18.put("eid", str28);
                                                                    linkedHashMap18.put("level", 1);
                                                                    linkedHashMap18.put("equipment_level", 1);
                                                                    linkedHashMap18.put("refine_level", 1);
                                                                    linkedHashMap18.put("refine_exp", 0);
                                                                    linkedHashMap18.put("general_pk_id", null);
                                                                    linkedHashMap18.put("general_id", null);
                                                                    linkedHashMap18.put("user_general_id", null);
                                                                    linkedHashMap18.put("is_wear", "0");
                                                                    linkedHashMap18.put("wear", "0");
                                                                    linkedHashMap18.put("bore_list", new ArrayList());
                                                                    linkedHashMap18.put("get_time", Long.valueOf(c7.g()));
                                                                    linkedHashMap18.put("is_new", Boolean.TRUE);
                                                                    w1VarA3.R(str28, linkedHashMap18);
                                                                    listF2.add(linkedHashMap18);
                                                                    str42 = str20;
                                                                    str25 = str29;
                                                                    map7 = map6;
                                                                    map7.put("Equipment", p5.z0(str25, new ArrayList(), str42, new ArrayList(), str26, listF2));
                                                                    linkedHashMap15 = linkedHashMap9;
                                                                    R(linkedHashMap15, linkedHashMap18);
                                                                    arrayList13 = arrayList12;
                                                                    w1.b2("equipment_id", str28, arrayList13, map7);
                                                                    map8 = map7;
                                                                    map9 = linkedHashMap18;
                                                                    it4 = arrayList13.iterator();
                                                                    while (it4.hasNext()) {
                                                                        R(linkedHashMap8, (Map) it4.next());
                                                                    }
                                                                    objB = A(i12, i13, str28, map9);
                                                                    map3 = map8;
                                                                } else {
                                                                    str25 = str29;
                                                                    str42 = str20;
                                                                    linkedHashMap15 = linkedHashMap9;
                                                                    map7 = map6;
                                                                    objB = b(i13, i12, str21, map3);
                                                                }
                                                            }
                                                            arrayList11.add(objB);
                                                            linkedHashMap16 = linkedHashMap7;
                                                        }
                                                        str26 = str32;
                                                        str42 = str31;
                                                        linkedHashMap14 = linkedHashMap3;
                                                        str25 = str33;
                                                        str23 = str30;
                                                        linkedHashMap15 = linkedHashMap9;
                                                        map7 = map6;
                                                        str27 = str24;
                                                        map8 = map3;
                                                        arrayList13 = arrayList12;
                                                        it4 = arrayList13.iterator();
                                                        while (it4.hasNext()) {
                                                            R(linkedHashMap8, (Map) it4.next());
                                                        }
                                                        objB = A(i12, i13, str28, map9);
                                                        map3 = map8;
                                                        arrayList11.add(objB);
                                                        linkedHashMap16 = linkedHashMap7;
                                                    } else {
                                                        linkedHashMap12 = linkedHashMap2;
                                                        linkedHashMap13 = linkedHashMap5;
                                                        linkedHashMap8 = linkedHashMap8;
                                                        str25 = str13;
                                                        map7 = map6;
                                                        str42 = str20;
                                                        str26 = str22;
                                                        str27 = str24;
                                                        arrayList11 = arrayList6;
                                                        linkedHashMap14 = linkedHashMap3;
                                                        linkedHashMap15 = linkedHashMap9;
                                                        Map mapB3 = b(i11, i12, str21, map3);
                                                        linkedHashMap16 = linkedHashMap7;
                                                        linkedHashMap16.put(String.valueOf(mapB3.get("pk_id")), mapB3);
                                                        arrayList11.add(w1.A2(i11, mapB3));
                                                    }
                                                }
                                                linkedHashMap4 = linkedHashMap15;
                                                mapW0 = map7;
                                                linkedHashMap6 = linkedHashMap8;
                                                linkedHashMap = linkedHashMap16;
                                                arrayList6 = arrayList11;
                                                str41 = str26;
                                                linkedHashMap3 = linkedHashMap14;
                                                str44 = str23;
                                                str2 = str2;
                                                linkedHashMap5 = linkedHashMap13;
                                                str40 = str27;
                                                str13 = str25;
                                                strG2 = strG2;
                                                linkedHashMap2 = linkedHashMap12;
                                            }
                                            str14 = strG2;
                                            LinkedHashMap linkedHashMap19 = linkedHashMap2;
                                            LinkedHashMap linkedHashMap20 = linkedHashMap5;
                                            str15 = str41;
                                            str16 = str2;
                                            str17 = str13;
                                            ArrayList arrayList21 = arrayList6;
                                            LinkedHashMap linkedHashMap21 = linkedHashMap3;
                                            map4 = mapW0;
                                            str18 = str42;
                                            it2 = arrayList5.iterator();
                                            while (it2.hasNext()) {
                                                map3.put(K(str14, ((b) it2.next()).f758a), Boolean.TRUE);
                                            }
                                            map3.put("activity_last_receive_instance", str14);
                                            map3.put("activity_receive_count", Integer.valueOf(T(map3.get("activity_receive_count")) + 1));
                                            arrayList7 = new ArrayList(linkedHashMap7.values());
                                            ArrayList arrayList22 = new ArrayList(linkedHashMap19.values());
                                            ArrayList arrayList23 = new ArrayList(linkedHashMap21.values());
                                            ArrayList arrayList24 = new ArrayList(linkedHashMap9.values());
                                            arrayList8 = new ArrayList(linkedHashMap20.values());
                                            ArrayList arrayList25 = new ArrayList(linkedHashMap8.values());
                                            linkedHashMap10 = new LinkedHashMap();
                                            arrayList9 = new ArrayList();
                                            if (!arrayList7.isEmpty()) {
                                                linkedHashMap10.put("Item", p5.z0(str17, new ArrayList(), str18, arrayList7, str15, new ArrayList()));
                                                arrayList9.add("Item");
                                            }
                                            c("General", arrayList9, arrayList22, linkedHashMap10);
                                            c("Skill", arrayList9, arrayList23, linkedHashMap10);
                                            c("Equipment", arrayList9, arrayList24, linkedHashMap10);
                                            if (!arrayList8.isEmpty()) {
                                                linkedHashMap10.put("GeneralSoul", p5.z0(str17, new ArrayList(), str18, arrayList8, str15, new ArrayList()));
                                                arrayList9.add("GeneralSoul");
                                            }
                                            c("Atlas", arrayList9, arrayList25, linkedHashMap10);
                                            linkedHashMapR2 = W();
                                            linkedHashMapR2.put("instance_id", str14);
                                            linkedHashMapR2.put("add_list", S(arrayList21));
                                            linkedHashMapR2.put("reward_list", S(arrayList21));
                                            Map[] mapArr10 = new Map[1];
                                            if ("level_general".equals(str14)) {
                                                obj8 = obj10;
                                                str19 = strE;
                                                arrayList10 = arrayList19;
                                                obj7 = obj11;
                                                linkedHashMap11 = I(map4, "level_general", 1, 9, 86400, f784f);
                                                map5 = map4;
                                                j3 = jF3;
                                            } else {
                                                obj7 = obj11;
                                                obj8 = obj10;
                                                str19 = strE;
                                                arrayList10 = arrayList19;
                                                map5 = map4;
                                                iE = E(jF3, map5);
                                                if ("finish_dungeon".equals(str14)) {
                                                    j2 = jF3;
                                                    linkedHashMap11 = I(map5, "finish_dungeon", 129, 10, iE, f785g);
                                                } else {
                                                    j2 = jF3;
                                                    if ("collect_god".equals(str14)) {
                                                        linkedHashMap11 = I(map5, "collect_god", 9, 11, iE, f786h);
                                                    } else if (str16.equals(str14)) {
                                                        j3 = j2;
                                                        linkedHashMap11 = I(map5, "opening_recharge_gifts", 8, 12, Q(j2, map5), f787i);
                                                    } else {
                                                        j3 = j2;
                                                        linkedHashMap11 = new LinkedHashMap();
                                                    }
                                                }
                                                j3 = j2;
                                            }
                                            mapArr10[0] = linkedHashMap11;
                                            linkedHashMapR2.put("party", p5.v0(mapArr10));
                                            linkedHashMapR2.put("activity_list", e(j3, map5));
                                            sb = new StringBuilder();
                                            it3 = arrayList9.iterator();
                                            if (it3.hasNext()) {
                                                while (true) {
                                                    sb.append((CharSequence) it3.next());
                                                    if (it3.hasNext()) {
                                                        break;
                                                        break;
                                                    }
                                                    sb.append((CharSequence) ",");
                                                }
                                            }
                                            linkedHashMapR2.put("cmn_modules", sb.toString());
                                            linkedHashMapR2.put(obj7, linkedHashMap10);
                                            map2 = map5;
                                            obj2 = "cmn_modules";
                                            charSequence = ",";
                                            obj10 = obj8;
                                            str4 = str19;
                                            arrayList19 = arrayList10;
                                            obj11 = obj7;
                                        }
                                    }
                                    bVarArr = bVarArr2;
                                    arrayList5 = new ArrayList();
                                    length3 = bVarArr.length;
                                    i9 = 0;
                                    while (i9 < length3) {
                                        int i31 = length3;
                                        bVar2 = bVarArr[i9];
                                        b[] bVarArr4 = bVarArr;
                                        String str52 = str43;
                                        if (Boolean.TRUE.equals(mapW0.get(K(strG2, bVar2.f758a)))) {
                                        }
                                        i9++;
                                        length3 = i31;
                                        bVarArr = bVarArr4;
                                        str43 = str52;
                                    }
                                    str13 = str43;
                                    if (arrayList5.isEmpty()) {
                                        linkedHashMapR2 = r(str3);
                                        linkedHashMapR2.put("activity_list", e(jF3, mapW0));
                                    } else {
                                        linkedHashMap = new LinkedHashMap();
                                        linkedHashMap2 = new LinkedHashMap();
                                        linkedHashMap3 = new LinkedHashMap();
                                        linkedHashMap4 = new LinkedHashMap();
                                        linkedHashMap5 = new LinkedHashMap();
                                        linkedHashMap6 = new LinkedHashMap();
                                        arrayList6 = new ArrayList();
                                        it = arrayList5.iterator();
                                        map3 = mapW0;
                                        while (true) {
                                            linkedHashMap7 = linkedHashMap;
                                            linkedHashMap8 = linkedHashMap6;
                                            linkedHashMap9 = linkedHashMap4;
                                            if (it.hasNext()) {
                                                break;
                                                break;
                                            }
                                            map6 = mapW0;
                                            bVar = (b) it.next();
                                            i10 = bVar.f762e;
                                            str20 = str42;
                                            str21 = bVar.f760c;
                                            str22 = str41;
                                            i11 = bVar.f761d;
                                            str23 = str44;
                                            str24 = str40;
                                            if (i10 == 6) {
                                                Map mapA2 = a(i11, str21, map3);
                                                linkedHashMap5.put(String.valueOf(mapA2.get("pk_id")), mapA2);
                                                String str53 = bVar.f760c;
                                                arrayList6.add(p5.z0("pk_id", mapA2.getOrDefault("pk_id", str53), "id", str53, "item_id", str53, "general_id", str53, "num", Integer.valueOf(i11), "item_num", Integer.valueOf(i11), "item_type", 6, "type", 6, "card_type", mapA2.getOrDefault("card_type", 1), "is_new", Boolean.TRUE));
                                                linkedHashMap12 = linkedHashMap2;
                                                linkedHashMap13 = linkedHashMap5;
                                                linkedHashMap16 = linkedHashMap7;
                                                linkedHashMap8 = linkedHashMap8;
                                                str25 = str13;
                                                map7 = map6;
                                                str42 = str20;
                                                str26 = str22;
                                                str27 = str24;
                                                arrayList11 = arrayList6;
                                                linkedHashMap14 = linkedHashMap3;
                                                linkedHashMap15 = linkedHashMap9;
                                            } else {
                                                zEquals = str2.equals(strG2);
                                                i12 = bVar.f762e;
                                                if (zEquals) {
                                                    w1VarA1 = w1.a1(null);
                                                    arrayList12 = new ArrayList();
                                                    str28 = bVar.f759b;
                                                    arrayList11 = arrayList6;
                                                    if (i12 == 1) {
                                                        if (u("General", "general_id", str28, map3) != null) {
                                                            z4 = true;
                                                        } else {
                                                            z4 = false;
                                                        }
                                                        mapH = w1VarA1.h(str28, map3);
                                                        if (mapH == null) {
                                                            objB = A(i12, i11, str28, null);
                                                            linkedHashMap12 = linkedHashMap2;
                                                            linkedHashMap13 = linkedHashMap5;
                                                            linkedHashMap8 = linkedHashMap8;
                                                            str25 = str13;
                                                            linkedHashMap15 = linkedHashMap9;
                                                            map7 = map6;
                                                            str42 = str20;
                                                            str26 = str22;
                                                            str27 = str24;
                                                            linkedHashMap14 = linkedHashMap3;
                                                        } else {
                                                            R(linkedHashMap2, mapH);
                                                            Object obj21 = obj9;
                                                            R(linkedHashMap3, u("Skill", "pk_id", String.valueOf(mapH.getOrDefault("pk_id", obj21)), map3));
                                                            w1.b2("general_id", str28, arrayList12, map3);
                                                            w1.b2("skill_id", w1VarA1.T0(str28), arrayList12, map3);
                                                            if (z4) {
                                                                R(linkedHashMap5, a(18, str28, map3));
                                                            }
                                                            linkedHashMap12 = linkedHashMap2;
                                                            linkedHashMap13 = linkedHashMap5;
                                                            i13 = i11;
                                                            obj9 = obj21;
                                                            map9 = mapH;
                                                            str33 = str13;
                                                            str31 = str20;
                                                            str32 = str22;
                                                            str30 = str23;
                                                        }
                                                        arrayList11.add(objB);
                                                        linkedHashMap16 = linkedHashMap7;
                                                    } else {
                                                        linkedHashMap13 = linkedHashMap5;
                                                        linkedHashMap12 = linkedHashMap2;
                                                        i13 = i11;
                                                        if (i12 == 4) {
                                                            w1 w1VarA4 = w1.a1(null);
                                                            List listF3 = w1.f0("Skill", map3);
                                                            LinkedHashMap linkedHashMap110 = new LinkedHashMap();
                                                            c.a.x("Skill", map3, linkedHashMap110, "pk_id", "general_pk_id", "0");
                                                            linkedHashMap110.put("skill_id", str28);
                                                            linkedHashMap110.put(str24, str28);
                                                            linkedHashMap110.put("skill_code", str28);
                                                            linkedHashMap110.put("card_type", "4");
                                                            str30 = str23;
                                                            linkedHashMap110.put("level", str30);
                                                            linkedHashMap110.put("skill_level", str30);
                                                            linkedHashMap110.put("position", "0");
                                                            linkedHashMap110.put("pos", "0");
                                                            linkedHashMap110.put("skill_position", "0");
                                                            linkedHashMap110.put("get_time", String.valueOf(c7.g()));
                                                            linkedHashMap110.put("is_natural", Boolean.FALSE);
                                                            linkedHashMap110.put("is_new", Boolean.TRUE);
                                                            linkedHashMap110.put("exp", "0");
                                                            linkedHashMap110.put("extra_level", "0");
                                                            linkedHashMap110.put("advanced_level", "0");
                                                            w1VarA4.S(str28, linkedHashMap110);
                                                            listF3.add(linkedHashMap110);
                                                            ArrayList arrayList26 = new ArrayList();
                                                            str31 = str20;
                                                            str32 = str22;
                                                            Object[] objArr12 = {str31, new ArrayList(), str32, listF3};
                                                            str33 = str13;
                                                            map3.put("Skill", p5.z0(str33, arrayList26, objArr12));
                                                            R(linkedHashMap3, linkedHashMap110);
                                                            w1.b2("skill_id", str28, arrayList12, map3);
                                                            map9 = linkedHashMap110;
                                                        } else {
                                                            str29 = str13;
                                                            str26 = str22;
                                                            str27 = str24;
                                                            linkedHashMap14 = linkedHashMap3;
                                                            if (i12 == 3) {
                                                                w1 w1VarA5 = w1.a1(null);
                                                                i12 = i12;
                                                                List listF4 = w1.f0("Equipment", map3);
                                                                LinkedHashMap linkedHashMap111 = new LinkedHashMap();
                                                                c.a.x("Equipment", map3, linkedHashMap111, "pk_id", "equipment_id", str28);
                                                                linkedHashMap111.put("equip_id", str28);
                                                                linkedHashMap111.put(str27, str28);
                                                                linkedHashMap111.put("eid", str28);
                                                                linkedHashMap111.put("level", 1);
                                                                linkedHashMap111.put("equipment_level", 1);
                                                                linkedHashMap111.put("refine_level", 1);
                                                                linkedHashMap111.put("refine_exp", 0);
                                                                linkedHashMap111.put("general_pk_id", null);
                                                                linkedHashMap111.put("general_id", null);
                                                                linkedHashMap111.put("user_general_id", null);
                                                                linkedHashMap111.put("is_wear", "0");
                                                                linkedHashMap111.put("wear", "0");
                                                                linkedHashMap111.put("bore_list", new ArrayList());
                                                                linkedHashMap111.put("get_time", Long.valueOf(c7.g()));
                                                                linkedHashMap111.put("is_new", Boolean.TRUE);
                                                                w1VarA5.R(str28, linkedHashMap111);
                                                                listF4.add(linkedHashMap111);
                                                                str42 = str20;
                                                                str25 = str29;
                                                                map7 = map6;
                                                                map7.put("Equipment", p5.z0(str25, new ArrayList(), str42, new ArrayList(), str26, listF4));
                                                                linkedHashMap15 = linkedHashMap9;
                                                                R(linkedHashMap15, linkedHashMap111);
                                                                arrayList13 = arrayList12;
                                                                w1.b2("equipment_id", str28, arrayList13, map7);
                                                                map8 = map7;
                                                                map9 = linkedHashMap111;
                                                                it4 = arrayList13.iterator();
                                                                while (it4.hasNext()) {
                                                                    R(linkedHashMap8, (Map) it4.next());
                                                                }
                                                                objB = A(i12, i13, str28, map9);
                                                                map3 = map8;
                                                            } else {
                                                                str25 = str29;
                                                                str42 = str20;
                                                                linkedHashMap15 = linkedHashMap9;
                                                                map7 = map6;
                                                                objB = b(i13, i12, str21, map3);
                                                            }
                                                        }
                                                        arrayList11.add(objB);
                                                        linkedHashMap16 = linkedHashMap7;
                                                    }
                                                    str26 = str32;
                                                    str42 = str31;
                                                    linkedHashMap14 = linkedHashMap3;
                                                    str25 = str33;
                                                    str23 = str30;
                                                    linkedHashMap15 = linkedHashMap9;
                                                    map7 = map6;
                                                    str27 = str24;
                                                    map8 = map3;
                                                    arrayList13 = arrayList12;
                                                    it4 = arrayList13.iterator();
                                                    while (it4.hasNext()) {
                                                        R(linkedHashMap8, (Map) it4.next());
                                                    }
                                                    objB = A(i12, i13, str28, map9);
                                                    map3 = map8;
                                                    arrayList11.add(objB);
                                                    linkedHashMap16 = linkedHashMap7;
                                                } else {
                                                    linkedHashMap12 = linkedHashMap2;
                                                    linkedHashMap13 = linkedHashMap5;
                                                    linkedHashMap8 = linkedHashMap8;
                                                    str25 = str13;
                                                    map7 = map6;
                                                    str42 = str20;
                                                    str26 = str22;
                                                    str27 = str24;
                                                    arrayList11 = arrayList6;
                                                    linkedHashMap14 = linkedHashMap3;
                                                    linkedHashMap15 = linkedHashMap9;
                                                    Map mapB4 = b(i11, i12, str21, map3);
                                                    linkedHashMap16 = linkedHashMap7;
                                                    linkedHashMap16.put(String.valueOf(mapB4.get("pk_id")), mapB4);
                                                    arrayList11.add(w1.A2(i11, mapB4));
                                                }
                                            }
                                            linkedHashMap4 = linkedHashMap15;
                                            mapW0 = map7;
                                            linkedHashMap6 = linkedHashMap8;
                                            linkedHashMap = linkedHashMap16;
                                            arrayList6 = arrayList11;
                                            str41 = str26;
                                            linkedHashMap3 = linkedHashMap14;
                                            str44 = str23;
                                            str2 = str2;
                                            linkedHashMap5 = linkedHashMap13;
                                            str40 = str27;
                                            str13 = str25;
                                            strG2 = strG2;
                                            linkedHashMap2 = linkedHashMap12;
                                        }
                                        str14 = strG2;
                                        LinkedHashMap linkedHashMap112 = linkedHashMap2;
                                        LinkedHashMap linkedHashMap22 = linkedHashMap5;
                                        str15 = str41;
                                        str16 = str2;
                                        str17 = str13;
                                        ArrayList arrayList27 = arrayList6;
                                        LinkedHashMap linkedHashMap23 = linkedHashMap3;
                                        map4 = mapW0;
                                        str18 = str42;
                                        it2 = arrayList5.iterator();
                                        while (it2.hasNext()) {
                                            map3.put(K(str14, ((b) it2.next()).f758a), Boolean.TRUE);
                                        }
                                        map3.put("activity_last_receive_instance", str14);
                                        map3.put("activity_receive_count", Integer.valueOf(T(map3.get("activity_receive_count")) + 1));
                                        arrayList7 = new ArrayList(linkedHashMap7.values());
                                        ArrayList arrayList28 = new ArrayList(linkedHashMap112.values());
                                        ArrayList arrayList29 = new ArrayList(linkedHashMap23.values());
                                        ArrayList arrayList210 = new ArrayList(linkedHashMap9.values());
                                        arrayList8 = new ArrayList(linkedHashMap22.values());
                                        ArrayList arrayList211 = new ArrayList(linkedHashMap8.values());
                                        linkedHashMap10 = new LinkedHashMap();
                                        arrayList9 = new ArrayList();
                                        if (!arrayList7.isEmpty()) {
                                            linkedHashMap10.put("Item", p5.z0(str17, new ArrayList(), str18, arrayList7, str15, new ArrayList()));
                                            arrayList9.add("Item");
                                        }
                                        c("General", arrayList9, arrayList28, linkedHashMap10);
                                        c("Skill", arrayList9, arrayList29, linkedHashMap10);
                                        c("Equipment", arrayList9, arrayList210, linkedHashMap10);
                                        if (!arrayList8.isEmpty()) {
                                            linkedHashMap10.put("GeneralSoul", p5.z0(str17, new ArrayList(), str18, arrayList8, str15, new ArrayList()));
                                            arrayList9.add("GeneralSoul");
                                        }
                                        c("Atlas", arrayList9, arrayList211, linkedHashMap10);
                                        linkedHashMapR2 = W();
                                        linkedHashMapR2.put("instance_id", str14);
                                        linkedHashMapR2.put("add_list", S(arrayList27));
                                        linkedHashMapR2.put("reward_list", S(arrayList27));
                                        Map[] mapArr11 = new Map[1];
                                        if ("level_general".equals(str14)) {
                                            obj8 = obj10;
                                            str19 = strE;
                                            arrayList10 = arrayList19;
                                            obj7 = obj11;
                                            linkedHashMap11 = I(map4, "level_general", 1, 9, 86400, f784f);
                                            map5 = map4;
                                            j3 = jF3;
                                        } else {
                                            obj7 = obj11;
                                            obj8 = obj10;
                                            str19 = strE;
                                            arrayList10 = arrayList19;
                                            map5 = map4;
                                            iE = E(jF3, map5);
                                            if ("finish_dungeon".equals(str14)) {
                                                j2 = jF3;
                                                linkedHashMap11 = I(map5, "finish_dungeon", 129, 10, iE, f785g);
                                            } else {
                                                j2 = jF3;
                                                if ("collect_god".equals(str14)) {
                                                    linkedHashMap11 = I(map5, "collect_god", 9, 11, iE, f786h);
                                                } else if (str16.equals(str14)) {
                                                    j3 = j2;
                                                    linkedHashMap11 = I(map5, "opening_recharge_gifts", 8, 12, Q(j2, map5), f787i);
                                                } else {
                                                    j3 = j2;
                                                    linkedHashMap11 = new LinkedHashMap();
                                                }
                                            }
                                            j3 = j2;
                                        }
                                        mapArr11[0] = linkedHashMap11;
                                        linkedHashMapR2.put("party", p5.v0(mapArr11));
                                        linkedHashMapR2.put("activity_list", e(j3, map5));
                                        sb = new StringBuilder();
                                        it3 = arrayList9.iterator();
                                        if (it3.hasNext()) {
                                            while (true) {
                                                sb.append((CharSequence) it3.next());
                                                if (it3.hasNext()) {
                                                    break;
                                                    break;
                                                }
                                                sb.append((CharSequence) ",");
                                            }
                                        }
                                        linkedHashMapR2.put("cmn_modules", sb.toString());
                                        linkedHashMapR2.put(obj7, linkedHashMap10);
                                        map2 = map5;
                                        obj2 = "cmn_modules";
                                        charSequence = ",";
                                        obj10 = obj8;
                                        str4 = str19;
                                        arrayList19 = arrayList10;
                                        obj11 = obj7;
                                    }
                                } else {
                                    if ("level_general".equals(strG2)) {
                                        bVarArr2 = f784f;
                                    } else if ("finish_dungeon".equals(strG2)) {
                                        bVarArr2 = f785g;
                                    } else if ("collect_god".equals(strG2)) {
                                        bVarArr2 = f786h;
                                    } else {
                                        if ("opening_recharge_gifts".equals(strG2)) {
                                            bVarArr2 = f787i;
                                        } else {
                                            bVarArr = new b[0];
                                        }
                                        arrayList5 = new ArrayList();
                                        length3 = bVarArr.length;
                                        i9 = 0;
                                        while (i9 < length3) {
                                            int i32 = length3;
                                            bVar2 = bVarArr[i9];
                                            b[] bVarArr5 = bVarArr;
                                            String str54 = str43;
                                            if (Boolean.TRUE.equals(mapW0.get(K(strG2, bVar2.f758a)))) {
                                            }
                                            i9++;
                                            length3 = i32;
                                            bVarArr = bVarArr5;
                                            str43 = str54;
                                        }
                                        str13 = str43;
                                        if (arrayList5.isEmpty()) {
                                            linkedHashMapR2 = r(str3);
                                            linkedHashMapR2.put("activity_list", e(jF3, mapW0));
                                        } else {
                                            linkedHashMap = new LinkedHashMap();
                                            linkedHashMap2 = new LinkedHashMap();
                                            linkedHashMap3 = new LinkedHashMap();
                                            linkedHashMap4 = new LinkedHashMap();
                                            linkedHashMap5 = new LinkedHashMap();
                                            linkedHashMap6 = new LinkedHashMap();
                                            arrayList6 = new ArrayList();
                                            it = arrayList5.iterator();
                                            map3 = mapW0;
                                            while (true) {
                                                linkedHashMap7 = linkedHashMap;
                                                linkedHashMap8 = linkedHashMap6;
                                                linkedHashMap9 = linkedHashMap4;
                                                if (it.hasNext()) {
                                                    break;
                                                    break;
                                                }
                                                map6 = mapW0;
                                                bVar = (b) it.next();
                                                i10 = bVar.f762e;
                                                str20 = str42;
                                                str21 = bVar.f760c;
                                                str22 = str41;
                                                i11 = bVar.f761d;
                                                str23 = str44;
                                                str24 = str40;
                                                if (i10 == 6) {
                                                    Map mapA3 = a(i11, str21, map3);
                                                    linkedHashMap5.put(String.valueOf(mapA3.get("pk_id")), mapA3);
                                                    String str55 = bVar.f760c;
                                                    arrayList6.add(p5.z0("pk_id", mapA3.getOrDefault("pk_id", str55), "id", str55, "item_id", str55, "general_id", str55, "num", Integer.valueOf(i11), "item_num", Integer.valueOf(i11), "item_type", 6, "type", 6, "card_type", mapA3.getOrDefault("card_type", 1), "is_new", Boolean.TRUE));
                                                    linkedHashMap12 = linkedHashMap2;
                                                    linkedHashMap13 = linkedHashMap5;
                                                    linkedHashMap16 = linkedHashMap7;
                                                    linkedHashMap8 = linkedHashMap8;
                                                    str25 = str13;
                                                    map7 = map6;
                                                    str42 = str20;
                                                    str26 = str22;
                                                    str27 = str24;
                                                    arrayList11 = arrayList6;
                                                    linkedHashMap14 = linkedHashMap3;
                                                    linkedHashMap15 = linkedHashMap9;
                                                } else {
                                                    zEquals = str2.equals(strG2);
                                                    i12 = bVar.f762e;
                                                    if (zEquals) {
                                                        w1VarA1 = w1.a1(null);
                                                        arrayList12 = new ArrayList();
                                                        str28 = bVar.f759b;
                                                        arrayList11 = arrayList6;
                                                        if (i12 == 1) {
                                                            if (u("General", "general_id", str28, map3) != null) {
                                                                z4 = true;
                                                            } else {
                                                                z4 = false;
                                                            }
                                                            mapH = w1VarA1.h(str28, map3);
                                                            if (mapH == null) {
                                                                objB = A(i12, i11, str28, null);
                                                                linkedHashMap12 = linkedHashMap2;
                                                                linkedHashMap13 = linkedHashMap5;
                                                                linkedHashMap8 = linkedHashMap8;
                                                                str25 = str13;
                                                                linkedHashMap15 = linkedHashMap9;
                                                                map7 = map6;
                                                                str42 = str20;
                                                                str26 = str22;
                                                                str27 = str24;
                                                                linkedHashMap14 = linkedHashMap3;
                                                            } else {
                                                                R(linkedHashMap2, mapH);
                                                                Object obj22 = obj9;
                                                                R(linkedHashMap3, u("Skill", "pk_id", String.valueOf(mapH.getOrDefault("pk_id", obj22)), map3));
                                                                w1.b2("general_id", str28, arrayList12, map3);
                                                                w1.b2("skill_id", w1VarA1.T0(str28), arrayList12, map3);
                                                                if (z4) {
                                                                    R(linkedHashMap5, a(18, str28, map3));
                                                                }
                                                                linkedHashMap12 = linkedHashMap2;
                                                                linkedHashMap13 = linkedHashMap5;
                                                                i13 = i11;
                                                                obj9 = obj22;
                                                                map9 = mapH;
                                                                str33 = str13;
                                                                str31 = str20;
                                                                str32 = str22;
                                                                str30 = str23;
                                                            }
                                                            arrayList11.add(objB);
                                                            linkedHashMap16 = linkedHashMap7;
                                                        } else {
                                                            linkedHashMap13 = linkedHashMap5;
                                                            linkedHashMap12 = linkedHashMap2;
                                                            i13 = i11;
                                                            if (i12 == 4) {
                                                                w1 w1VarA6 = w1.a1(null);
                                                                List listF5 = w1.f0("Skill", map3);
                                                                LinkedHashMap linkedHashMap113 = new LinkedHashMap();
                                                                c.a.x("Skill", map3, linkedHashMap113, "pk_id", "general_pk_id", "0");
                                                                linkedHashMap113.put("skill_id", str28);
                                                                linkedHashMap113.put(str24, str28);
                                                                linkedHashMap113.put("skill_code", str28);
                                                                linkedHashMap113.put("card_type", "4");
                                                                str30 = str23;
                                                                linkedHashMap113.put("level", str30);
                                                                linkedHashMap113.put("skill_level", str30);
                                                                linkedHashMap113.put("position", "0");
                                                                linkedHashMap113.put("pos", "0");
                                                                linkedHashMap113.put("skill_position", "0");
                                                                linkedHashMap113.put("get_time", String.valueOf(c7.g()));
                                                                linkedHashMap113.put("is_natural", Boolean.FALSE);
                                                                linkedHashMap113.put("is_new", Boolean.TRUE);
                                                                linkedHashMap113.put("exp", "0");
                                                                linkedHashMap113.put("extra_level", "0");
                                                                linkedHashMap113.put("advanced_level", "0");
                                                                w1VarA6.S(str28, linkedHashMap113);
                                                                listF5.add(linkedHashMap113);
                                                                ArrayList arrayList212 = new ArrayList();
                                                                str31 = str20;
                                                                str32 = str22;
                                                                Object[] objArr13 = {str31, new ArrayList(), str32, listF5};
                                                                str33 = str13;
                                                                map3.put("Skill", p5.z0(str33, arrayList212, objArr13));
                                                                R(linkedHashMap3, linkedHashMap113);
                                                                w1.b2("skill_id", str28, arrayList12, map3);
                                                                map9 = linkedHashMap113;
                                                            } else {
                                                                str29 = str13;
                                                                str26 = str22;
                                                                str27 = str24;
                                                                linkedHashMap14 = linkedHashMap3;
                                                                if (i12 == 3) {
                                                                    w1 w1VarA7 = w1.a1(null);
                                                                    i12 = i12;
                                                                    List listF6 = w1.f0("Equipment", map3);
                                                                    LinkedHashMap linkedHashMap114 = new LinkedHashMap();
                                                                    c.a.x("Equipment", map3, linkedHashMap114, "pk_id", "equipment_id", str28);
                                                                    linkedHashMap114.put("equip_id", str28);
                                                                    linkedHashMap114.put(str27, str28);
                                                                    linkedHashMap114.put("eid", str28);
                                                                    linkedHashMap114.put("level", 1);
                                                                    linkedHashMap114.put("equipment_level", 1);
                                                                    linkedHashMap114.put("refine_level", 1);
                                                                    linkedHashMap114.put("refine_exp", 0);
                                                                    linkedHashMap114.put("general_pk_id", null);
                                                                    linkedHashMap114.put("general_id", null);
                                                                    linkedHashMap114.put("user_general_id", null);
                                                                    linkedHashMap114.put("is_wear", "0");
                                                                    linkedHashMap114.put("wear", "0");
                                                                    linkedHashMap114.put("bore_list", new ArrayList());
                                                                    linkedHashMap114.put("get_time", Long.valueOf(c7.g()));
                                                                    linkedHashMap114.put("is_new", Boolean.TRUE);
                                                                    w1VarA7.R(str28, linkedHashMap114);
                                                                    listF6.add(linkedHashMap114);
                                                                    str42 = str20;
                                                                    str25 = str29;
                                                                    map7 = map6;
                                                                    map7.put("Equipment", p5.z0(str25, new ArrayList(), str42, new ArrayList(), str26, listF6));
                                                                    linkedHashMap15 = linkedHashMap9;
                                                                    R(linkedHashMap15, linkedHashMap114);
                                                                    arrayList13 = arrayList12;
                                                                    w1.b2("equipment_id", str28, arrayList13, map7);
                                                                    map8 = map7;
                                                                    map9 = linkedHashMap114;
                                                                    it4 = arrayList13.iterator();
                                                                    while (it4.hasNext()) {
                                                                        R(linkedHashMap8, (Map) it4.next());
                                                                    }
                                                                    objB = A(i12, i13, str28, map9);
                                                                    map3 = map8;
                                                                } else {
                                                                    str25 = str29;
                                                                    str42 = str20;
                                                                    linkedHashMap15 = linkedHashMap9;
                                                                    map7 = map6;
                                                                    objB = b(i13, i12, str21, map3);
                                                                }
                                                            }
                                                            arrayList11.add(objB);
                                                            linkedHashMap16 = linkedHashMap7;
                                                        }
                                                        str26 = str32;
                                                        str42 = str31;
                                                        linkedHashMap14 = linkedHashMap3;
                                                        str25 = str33;
                                                        str23 = str30;
                                                        linkedHashMap15 = linkedHashMap9;
                                                        map7 = map6;
                                                        str27 = str24;
                                                        map8 = map3;
                                                        arrayList13 = arrayList12;
                                                        it4 = arrayList13.iterator();
                                                        while (it4.hasNext()) {
                                                            R(linkedHashMap8, (Map) it4.next());
                                                        }
                                                        objB = A(i12, i13, str28, map9);
                                                        map3 = map8;
                                                        arrayList11.add(objB);
                                                        linkedHashMap16 = linkedHashMap7;
                                                    } else {
                                                        linkedHashMap12 = linkedHashMap2;
                                                        linkedHashMap13 = linkedHashMap5;
                                                        linkedHashMap8 = linkedHashMap8;
                                                        str25 = str13;
                                                        map7 = map6;
                                                        str42 = str20;
                                                        str26 = str22;
                                                        str27 = str24;
                                                        arrayList11 = arrayList6;
                                                        linkedHashMap14 = linkedHashMap3;
                                                        linkedHashMap15 = linkedHashMap9;
                                                        Map mapB5 = b(i11, i12, str21, map3);
                                                        linkedHashMap16 = linkedHashMap7;
                                                        linkedHashMap16.put(String.valueOf(mapB5.get("pk_id")), mapB5);
                                                        arrayList11.add(w1.A2(i11, mapB5));
                                                    }
                                                }
                                                linkedHashMap4 = linkedHashMap15;
                                                mapW0 = map7;
                                                linkedHashMap6 = linkedHashMap8;
                                                linkedHashMap = linkedHashMap16;
                                                arrayList6 = arrayList11;
                                                str41 = str26;
                                                linkedHashMap3 = linkedHashMap14;
                                                str44 = str23;
                                                str2 = str2;
                                                linkedHashMap5 = linkedHashMap13;
                                                str40 = str27;
                                                str13 = str25;
                                                strG2 = strG2;
                                                linkedHashMap2 = linkedHashMap12;
                                            }
                                            str14 = strG2;
                                            LinkedHashMap linkedHashMap115 = linkedHashMap2;
                                            LinkedHashMap linkedHashMap24 = linkedHashMap5;
                                            str15 = str41;
                                            str16 = str2;
                                            str17 = str13;
                                            ArrayList arrayList213 = arrayList6;
                                            LinkedHashMap linkedHashMap25 = linkedHashMap3;
                                            map4 = mapW0;
                                            str18 = str42;
                                            it2 = arrayList5.iterator();
                                            while (it2.hasNext()) {
                                                map3.put(K(str14, ((b) it2.next()).f758a), Boolean.TRUE);
                                            }
                                            map3.put("activity_last_receive_instance", str14);
                                            map3.put("activity_receive_count", Integer.valueOf(T(map3.get("activity_receive_count")) + 1));
                                            arrayList7 = new ArrayList(linkedHashMap7.values());
                                            ArrayList arrayList214 = new ArrayList(linkedHashMap115.values());
                                            ArrayList arrayList215 = new ArrayList(linkedHashMap25.values());
                                            ArrayList arrayList216 = new ArrayList(linkedHashMap9.values());
                                            arrayList8 = new ArrayList(linkedHashMap24.values());
                                            ArrayList arrayList217 = new ArrayList(linkedHashMap8.values());
                                            linkedHashMap10 = new LinkedHashMap();
                                            arrayList9 = new ArrayList();
                                            if (!arrayList7.isEmpty()) {
                                                linkedHashMap10.put("Item", p5.z0(str17, new ArrayList(), str18, arrayList7, str15, new ArrayList()));
                                                arrayList9.add("Item");
                                            }
                                            c("General", arrayList9, arrayList214, linkedHashMap10);
                                            c("Skill", arrayList9, arrayList215, linkedHashMap10);
                                            c("Equipment", arrayList9, arrayList216, linkedHashMap10);
                                            if (!arrayList8.isEmpty()) {
                                                linkedHashMap10.put("GeneralSoul", p5.z0(str17, new ArrayList(), str18, arrayList8, str15, new ArrayList()));
                                                arrayList9.add("GeneralSoul");
                                            }
                                            c("Atlas", arrayList9, arrayList217, linkedHashMap10);
                                            linkedHashMapR2 = W();
                                            linkedHashMapR2.put("instance_id", str14);
                                            linkedHashMapR2.put("add_list", S(arrayList213));
                                            linkedHashMapR2.put("reward_list", S(arrayList213));
                                            Map[] mapArr12 = new Map[1];
                                            if ("level_general".equals(str14)) {
                                                obj8 = obj10;
                                                str19 = strE;
                                                arrayList10 = arrayList19;
                                                obj7 = obj11;
                                                linkedHashMap11 = I(map4, "level_general", 1, 9, 86400, f784f);
                                                map5 = map4;
                                                j3 = jF3;
                                            } else {
                                                obj7 = obj11;
                                                obj8 = obj10;
                                                str19 = strE;
                                                arrayList10 = arrayList19;
                                                map5 = map4;
                                                iE = E(jF3, map5);
                                                if ("finish_dungeon".equals(str14)) {
                                                    j2 = jF3;
                                                    linkedHashMap11 = I(map5, "finish_dungeon", 129, 10, iE, f785g);
                                                } else {
                                                    j2 = jF3;
                                                    if ("collect_god".equals(str14)) {
                                                        linkedHashMap11 = I(map5, "collect_god", 9, 11, iE, f786h);
                                                    } else if (str16.equals(str14)) {
                                                        j3 = j2;
                                                        linkedHashMap11 = I(map5, "opening_recharge_gifts", 8, 12, Q(j2, map5), f787i);
                                                    } else {
                                                        j3 = j2;
                                                        linkedHashMap11 = new LinkedHashMap();
                                                    }
                                                }
                                                j3 = j2;
                                            }
                                            mapArr12[0] = linkedHashMap11;
                                            linkedHashMapR2.put("party", p5.v0(mapArr12));
                                            linkedHashMapR2.put("activity_list", e(j3, map5));
                                            sb = new StringBuilder();
                                            it3 = arrayList9.iterator();
                                            if (it3.hasNext()) {
                                                while (true) {
                                                    sb.append((CharSequence) it3.next());
                                                    if (it3.hasNext()) {
                                                        break;
                                                        break;
                                                    }
                                                    sb.append((CharSequence) ",");
                                                }
                                            }
                                            linkedHashMapR2.put("cmn_modules", sb.toString());
                                            linkedHashMapR2.put(obj7, linkedHashMap10);
                                            map2 = map5;
                                            obj2 = "cmn_modules";
                                            charSequence = ",";
                                            obj10 = obj8;
                                            str4 = str19;
                                            arrayList19 = arrayList10;
                                            obj11 = obj7;
                                        }
                                    }
                                    bVarArr = bVarArr2;
                                    arrayList5 = new ArrayList();
                                    length3 = bVarArr.length;
                                    i9 = 0;
                                    while (i9 < length3) {
                                        int i33 = length3;
                                        bVar2 = bVarArr[i9];
                                        b[] bVarArr6 = bVarArr;
                                        String str56 = str43;
                                        if (Boolean.TRUE.equals(mapW0.get(K(strG2, bVar2.f758a)))) {
                                        }
                                        i9++;
                                        length3 = i33;
                                        bVarArr = bVarArr6;
                                        str43 = str56;
                                    }
                                    str13 = str43;
                                    if (arrayList5.isEmpty()) {
                                        linkedHashMapR2 = r(str3);
                                        linkedHashMapR2.put("activity_list", e(jF3, mapW0));
                                    } else {
                                        linkedHashMap = new LinkedHashMap();
                                        linkedHashMap2 = new LinkedHashMap();
                                        linkedHashMap3 = new LinkedHashMap();
                                        linkedHashMap4 = new LinkedHashMap();
                                        linkedHashMap5 = new LinkedHashMap();
                                        linkedHashMap6 = new LinkedHashMap();
                                        arrayList6 = new ArrayList();
                                        it = arrayList5.iterator();
                                        map3 = mapW0;
                                        while (true) {
                                            linkedHashMap7 = linkedHashMap;
                                            linkedHashMap8 = linkedHashMap6;
                                            linkedHashMap9 = linkedHashMap4;
                                            if (it.hasNext()) {
                                                break;
                                                break;
                                            }
                                            map6 = mapW0;
                                            bVar = (b) it.next();
                                            i10 = bVar.f762e;
                                            str20 = str42;
                                            str21 = bVar.f760c;
                                            str22 = str41;
                                            i11 = bVar.f761d;
                                            str23 = str44;
                                            str24 = str40;
                                            if (i10 == 6) {
                                                Map mapA4 = a(i11, str21, map3);
                                                linkedHashMap5.put(String.valueOf(mapA4.get("pk_id")), mapA4);
                                                String str57 = bVar.f760c;
                                                arrayList6.add(p5.z0("pk_id", mapA4.getOrDefault("pk_id", str57), "id", str57, "item_id", str57, "general_id", str57, "num", Integer.valueOf(i11), "item_num", Integer.valueOf(i11), "item_type", 6, "type", 6, "card_type", mapA4.getOrDefault("card_type", 1), "is_new", Boolean.TRUE));
                                                linkedHashMap12 = linkedHashMap2;
                                                linkedHashMap13 = linkedHashMap5;
                                                linkedHashMap16 = linkedHashMap7;
                                                linkedHashMap8 = linkedHashMap8;
                                                str25 = str13;
                                                map7 = map6;
                                                str42 = str20;
                                                str26 = str22;
                                                str27 = str24;
                                                arrayList11 = arrayList6;
                                                linkedHashMap14 = linkedHashMap3;
                                                linkedHashMap15 = linkedHashMap9;
                                            } else {
                                                zEquals = str2.equals(strG2);
                                                i12 = bVar.f762e;
                                                if (zEquals) {
                                                    w1VarA1 = w1.a1(null);
                                                    arrayList12 = new ArrayList();
                                                    str28 = bVar.f759b;
                                                    arrayList11 = arrayList6;
                                                    if (i12 == 1) {
                                                        if (u("General", "general_id", str28, map3) != null) {
                                                            z4 = true;
                                                        } else {
                                                            z4 = false;
                                                        }
                                                        mapH = w1VarA1.h(str28, map3);
                                                        if (mapH == null) {
                                                            objB = A(i12, i11, str28, null);
                                                            linkedHashMap12 = linkedHashMap2;
                                                            linkedHashMap13 = linkedHashMap5;
                                                            linkedHashMap8 = linkedHashMap8;
                                                            str25 = str13;
                                                            linkedHashMap15 = linkedHashMap9;
                                                            map7 = map6;
                                                            str42 = str20;
                                                            str26 = str22;
                                                            str27 = str24;
                                                            linkedHashMap14 = linkedHashMap3;
                                                        } else {
                                                            R(linkedHashMap2, mapH);
                                                            Object obj23 = obj9;
                                                            R(linkedHashMap3, u("Skill", "pk_id", String.valueOf(mapH.getOrDefault("pk_id", obj23)), map3));
                                                            w1.b2("general_id", str28, arrayList12, map3);
                                                            w1.b2("skill_id", w1VarA1.T0(str28), arrayList12, map3);
                                                            if (z4) {
                                                                R(linkedHashMap5, a(18, str28, map3));
                                                            }
                                                            linkedHashMap12 = linkedHashMap2;
                                                            linkedHashMap13 = linkedHashMap5;
                                                            i13 = i11;
                                                            obj9 = obj23;
                                                            map9 = mapH;
                                                            str33 = str13;
                                                            str31 = str20;
                                                            str32 = str22;
                                                            str30 = str23;
                                                        }
                                                        arrayList11.add(objB);
                                                        linkedHashMap16 = linkedHashMap7;
                                                    } else {
                                                        linkedHashMap13 = linkedHashMap5;
                                                        linkedHashMap12 = linkedHashMap2;
                                                        i13 = i11;
                                                        if (i12 == 4) {
                                                            w1 w1VarA8 = w1.a1(null);
                                                            List listF7 = w1.f0("Skill", map3);
                                                            LinkedHashMap linkedHashMap116 = new LinkedHashMap();
                                                            c.a.x("Skill", map3, linkedHashMap116, "pk_id", "general_pk_id", "0");
                                                            linkedHashMap116.put("skill_id", str28);
                                                            linkedHashMap116.put(str24, str28);
                                                            linkedHashMap116.put("skill_code", str28);
                                                            linkedHashMap116.put("card_type", "4");
                                                            str30 = str23;
                                                            linkedHashMap116.put("level", str30);
                                                            linkedHashMap116.put("skill_level", str30);
                                                            linkedHashMap116.put("position", "0");
                                                            linkedHashMap116.put("pos", "0");
                                                            linkedHashMap116.put("skill_position", "0");
                                                            linkedHashMap116.put("get_time", String.valueOf(c7.g()));
                                                            linkedHashMap116.put("is_natural", Boolean.FALSE);
                                                            linkedHashMap116.put("is_new", Boolean.TRUE);
                                                            linkedHashMap116.put("exp", "0");
                                                            linkedHashMap116.put("extra_level", "0");
                                                            linkedHashMap116.put("advanced_level", "0");
                                                            w1VarA8.S(str28, linkedHashMap116);
                                                            listF7.add(linkedHashMap116);
                                                            ArrayList arrayList218 = new ArrayList();
                                                            str31 = str20;
                                                            str32 = str22;
                                                            Object[] objArr14 = {str31, new ArrayList(), str32, listF7};
                                                            str33 = str13;
                                                            map3.put("Skill", p5.z0(str33, arrayList218, objArr14));
                                                            R(linkedHashMap3, linkedHashMap116);
                                                            w1.b2("skill_id", str28, arrayList12, map3);
                                                            map9 = linkedHashMap116;
                                                        } else {
                                                            str29 = str13;
                                                            str26 = str22;
                                                            str27 = str24;
                                                            linkedHashMap14 = linkedHashMap3;
                                                            if (i12 == 3) {
                                                                w1 w1VarA9 = w1.a1(null);
                                                                i12 = i12;
                                                                List listF8 = w1.f0("Equipment", map3);
                                                                LinkedHashMap linkedHashMap117 = new LinkedHashMap();
                                                                c.a.x("Equipment", map3, linkedHashMap117, "pk_id", "equipment_id", str28);
                                                                linkedHashMap117.put("equip_id", str28);
                                                                linkedHashMap117.put(str27, str28);
                                                                linkedHashMap117.put("eid", str28);
                                                                linkedHashMap117.put("level", 1);
                                                                linkedHashMap117.put("equipment_level", 1);
                                                                linkedHashMap117.put("refine_level", 1);
                                                                linkedHashMap117.put("refine_exp", 0);
                                                                linkedHashMap117.put("general_pk_id", null);
                                                                linkedHashMap117.put("general_id", null);
                                                                linkedHashMap117.put("user_general_id", null);
                                                                linkedHashMap117.put("is_wear", "0");
                                                                linkedHashMap117.put("wear", "0");
                                                                linkedHashMap117.put("bore_list", new ArrayList());
                                                                linkedHashMap117.put("get_time", Long.valueOf(c7.g()));
                                                                linkedHashMap117.put("is_new", Boolean.TRUE);
                                                                w1VarA9.R(str28, linkedHashMap117);
                                                                listF8.add(linkedHashMap117);
                                                                str42 = str20;
                                                                str25 = str29;
                                                                map7 = map6;
                                                                map7.put("Equipment", p5.z0(str25, new ArrayList(), str42, new ArrayList(), str26, listF8));
                                                                linkedHashMap15 = linkedHashMap9;
                                                                R(linkedHashMap15, linkedHashMap117);
                                                                arrayList13 = arrayList12;
                                                                w1.b2("equipment_id", str28, arrayList13, map7);
                                                                map8 = map7;
                                                                map9 = linkedHashMap117;
                                                                it4 = arrayList13.iterator();
                                                                while (it4.hasNext()) {
                                                                    R(linkedHashMap8, (Map) it4.next());
                                                                }
                                                                objB = A(i12, i13, str28, map9);
                                                                map3 = map8;
                                                            } else {
                                                                str25 = str29;
                                                                str42 = str20;
                                                                linkedHashMap15 = linkedHashMap9;
                                                                map7 = map6;
                                                                objB = b(i13, i12, str21, map3);
                                                            }
                                                        }
                                                        arrayList11.add(objB);
                                                        linkedHashMap16 = linkedHashMap7;
                                                    }
                                                    str26 = str32;
                                                    str42 = str31;
                                                    linkedHashMap14 = linkedHashMap3;
                                                    str25 = str33;
                                                    str23 = str30;
                                                    linkedHashMap15 = linkedHashMap9;
                                                    map7 = map6;
                                                    str27 = str24;
                                                    map8 = map3;
                                                    arrayList13 = arrayList12;
                                                    it4 = arrayList13.iterator();
                                                    while (it4.hasNext()) {
                                                        R(linkedHashMap8, (Map) it4.next());
                                                    }
                                                    objB = A(i12, i13, str28, map9);
                                                    map3 = map8;
                                                    arrayList11.add(objB);
                                                    linkedHashMap16 = linkedHashMap7;
                                                } else {
                                                    linkedHashMap12 = linkedHashMap2;
                                                    linkedHashMap13 = linkedHashMap5;
                                                    linkedHashMap8 = linkedHashMap8;
                                                    str25 = str13;
                                                    map7 = map6;
                                                    str42 = str20;
                                                    str26 = str22;
                                                    str27 = str24;
                                                    arrayList11 = arrayList6;
                                                    linkedHashMap14 = linkedHashMap3;
                                                    linkedHashMap15 = linkedHashMap9;
                                                    Map mapB6 = b(i11, i12, str21, map3);
                                                    linkedHashMap16 = linkedHashMap7;
                                                    linkedHashMap16.put(String.valueOf(mapB6.get("pk_id")), mapB6);
                                                    arrayList11.add(w1.A2(i11, mapB6));
                                                }
                                            }
                                            linkedHashMap4 = linkedHashMap15;
                                            mapW0 = map7;
                                            linkedHashMap6 = linkedHashMap8;
                                            linkedHashMap = linkedHashMap16;
                                            arrayList6 = arrayList11;
                                            str41 = str26;
                                            linkedHashMap3 = linkedHashMap14;
                                            str44 = str23;
                                            str2 = str2;
                                            linkedHashMap5 = linkedHashMap13;
                                            str40 = str27;
                                            str13 = str25;
                                            strG2 = strG2;
                                            linkedHashMap2 = linkedHashMap12;
                                        }
                                        str14 = strG2;
                                        LinkedHashMap linkedHashMap118 = linkedHashMap2;
                                        LinkedHashMap linkedHashMap26 = linkedHashMap5;
                                        str15 = str41;
                                        str16 = str2;
                                        str17 = str13;
                                        ArrayList arrayList219 = arrayList6;
                                        LinkedHashMap linkedHashMap27 = linkedHashMap3;
                                        map4 = mapW0;
                                        str18 = str42;
                                        it2 = arrayList5.iterator();
                                        while (it2.hasNext()) {
                                            map3.put(K(str14, ((b) it2.next()).f758a), Boolean.TRUE);
                                        }
                                        map3.put("activity_last_receive_instance", str14);
                                        map3.put("activity_receive_count", Integer.valueOf(T(map3.get("activity_receive_count")) + 1));
                                        arrayList7 = new ArrayList(linkedHashMap7.values());
                                        ArrayList arrayList2110 = new ArrayList(linkedHashMap118.values());
                                        ArrayList arrayList2111 = new ArrayList(linkedHashMap27.values());
                                        ArrayList arrayList2112 = new ArrayList(linkedHashMap9.values());
                                        arrayList8 = new ArrayList(linkedHashMap26.values());
                                        ArrayList arrayList2113 = new ArrayList(linkedHashMap8.values());
                                        linkedHashMap10 = new LinkedHashMap();
                                        arrayList9 = new ArrayList();
                                        if (!arrayList7.isEmpty()) {
                                            linkedHashMap10.put("Item", p5.z0(str17, new ArrayList(), str18, arrayList7, str15, new ArrayList()));
                                            arrayList9.add("Item");
                                        }
                                        c("General", arrayList9, arrayList2110, linkedHashMap10);
                                        c("Skill", arrayList9, arrayList2111, linkedHashMap10);
                                        c("Equipment", arrayList9, arrayList2112, linkedHashMap10);
                                        if (!arrayList8.isEmpty()) {
                                            linkedHashMap10.put("GeneralSoul", p5.z0(str17, new ArrayList(), str18, arrayList8, str15, new ArrayList()));
                                            arrayList9.add("GeneralSoul");
                                        }
                                        c("Atlas", arrayList9, arrayList2113, linkedHashMap10);
                                        linkedHashMapR2 = W();
                                        linkedHashMapR2.put("instance_id", str14);
                                        linkedHashMapR2.put("add_list", S(arrayList219));
                                        linkedHashMapR2.put("reward_list", S(arrayList219));
                                        Map[] mapArr13 = new Map[1];
                                        if ("level_general".equals(str14)) {
                                            obj8 = obj10;
                                            str19 = strE;
                                            arrayList10 = arrayList19;
                                            obj7 = obj11;
                                            linkedHashMap11 = I(map4, "level_general", 1, 9, 86400, f784f);
                                            map5 = map4;
                                            j3 = jF3;
                                        } else {
                                            obj7 = obj11;
                                            obj8 = obj10;
                                            str19 = strE;
                                            arrayList10 = arrayList19;
                                            map5 = map4;
                                            iE = E(jF3, map5);
                                            if ("finish_dungeon".equals(str14)) {
                                                j2 = jF3;
                                                linkedHashMap11 = I(map5, "finish_dungeon", 129, 10, iE, f785g);
                                            } else {
                                                j2 = jF3;
                                                if ("collect_god".equals(str14)) {
                                                    linkedHashMap11 = I(map5, "collect_god", 9, 11, iE, f786h);
                                                } else if (str16.equals(str14)) {
                                                    j3 = j2;
                                                    linkedHashMap11 = I(map5, "opening_recharge_gifts", 8, 12, Q(j2, map5), f787i);
                                                } else {
                                                    j3 = j2;
                                                    linkedHashMap11 = new LinkedHashMap();
                                                }
                                            }
                                            j3 = j2;
                                        }
                                        mapArr13[0] = linkedHashMap11;
                                        linkedHashMapR2.put("party", p5.v0(mapArr13));
                                        linkedHashMapR2.put("activity_list", e(j3, map5));
                                        sb = new StringBuilder();
                                        it3 = arrayList9.iterator();
                                        if (it3.hasNext()) {
                                            while (true) {
                                                sb.append((CharSequence) it3.next());
                                                if (it3.hasNext()) {
                                                    break;
                                                    break;
                                                }
                                                sb.append((CharSequence) ",");
                                            }
                                        }
                                        linkedHashMapR2.put("cmn_modules", sb.toString());
                                        linkedHashMapR2.put(obj7, linkedHashMap10);
                                        map2 = map5;
                                        obj2 = "cmn_modules";
                                        charSequence = ",";
                                        obj10 = obj8;
                                        str4 = str19;
                                        arrayList19 = arrayList10;
                                        obj11 = obj7;
                                    }
                                }
                            } else {
                                if ("finish_dungeon".equals(strG2)) {
                                    z3 = true;
                                } else {
                                    z3 = true;
                                }
                                if (z3) {
                                    if ("level_general".equals(strG2)) {
                                        bVarArr2 = f784f;
                                    } else if ("finish_dungeon".equals(strG2)) {
                                        bVarArr2 = f785g;
                                    } else if ("collect_god".equals(strG2)) {
                                        bVarArr2 = f786h;
                                    } else {
                                        if ("opening_recharge_gifts".equals(strG2)) {
                                            bVarArr2 = f787i;
                                        } else {
                                            bVarArr = new b[0];
                                        }
                                        arrayList5 = new ArrayList();
                                        length3 = bVarArr.length;
                                        i9 = 0;
                                        while (i9 < length3) {
                                            int i34 = length3;
                                            bVar2 = bVarArr[i9];
                                            b[] bVarArr7 = bVarArr;
                                            String str58 = str43;
                                            if (Boolean.TRUE.equals(mapW0.get(K(strG2, bVar2.f758a)))) {
                                            }
                                            i9++;
                                            length3 = i34;
                                            bVarArr = bVarArr7;
                                            str43 = str58;
                                        }
                                        str13 = str43;
                                        if (arrayList5.isEmpty()) {
                                            linkedHashMapR2 = r(str3);
                                            linkedHashMapR2.put("activity_list", e(jF3, mapW0));
                                        } else {
                                            linkedHashMap = new LinkedHashMap();
                                            linkedHashMap2 = new LinkedHashMap();
                                            linkedHashMap3 = new LinkedHashMap();
                                            linkedHashMap4 = new LinkedHashMap();
                                            linkedHashMap5 = new LinkedHashMap();
                                            linkedHashMap6 = new LinkedHashMap();
                                            arrayList6 = new ArrayList();
                                            it = arrayList5.iterator();
                                            map3 = mapW0;
                                            while (true) {
                                                linkedHashMap7 = linkedHashMap;
                                                linkedHashMap8 = linkedHashMap6;
                                                linkedHashMap9 = linkedHashMap4;
                                                if (it.hasNext()) {
                                                    break;
                                                    break;
                                                }
                                                map6 = mapW0;
                                                bVar = (b) it.next();
                                                i10 = bVar.f762e;
                                                str20 = str42;
                                                str21 = bVar.f760c;
                                                str22 = str41;
                                                i11 = bVar.f761d;
                                                str23 = str44;
                                                str24 = str40;
                                                if (i10 == 6) {
                                                    Map mapA5 = a(i11, str21, map3);
                                                    linkedHashMap5.put(String.valueOf(mapA5.get("pk_id")), mapA5);
                                                    String str59 = bVar.f760c;
                                                    arrayList6.add(p5.z0("pk_id", mapA5.getOrDefault("pk_id", str59), "id", str59, "item_id", str59, "general_id", str59, "num", Integer.valueOf(i11), "item_num", Integer.valueOf(i11), "item_type", 6, "type", 6, "card_type", mapA5.getOrDefault("card_type", 1), "is_new", Boolean.TRUE));
                                                    linkedHashMap12 = linkedHashMap2;
                                                    linkedHashMap13 = linkedHashMap5;
                                                    linkedHashMap16 = linkedHashMap7;
                                                    linkedHashMap8 = linkedHashMap8;
                                                    str25 = str13;
                                                    map7 = map6;
                                                    str42 = str20;
                                                    str26 = str22;
                                                    str27 = str24;
                                                    arrayList11 = arrayList6;
                                                    linkedHashMap14 = linkedHashMap3;
                                                    linkedHashMap15 = linkedHashMap9;
                                                } else {
                                                    zEquals = str2.equals(strG2);
                                                    i12 = bVar.f762e;
                                                    if (zEquals) {
                                                        w1VarA1 = w1.a1(null);
                                                        arrayList12 = new ArrayList();
                                                        str28 = bVar.f759b;
                                                        arrayList11 = arrayList6;
                                                        if (i12 == 1) {
                                                            if (u("General", "general_id", str28, map3) != null) {
                                                                z4 = true;
                                                            } else {
                                                                z4 = false;
                                                            }
                                                            mapH = w1VarA1.h(str28, map3);
                                                            if (mapH == null) {
                                                                objB = A(i12, i11, str28, null);
                                                                linkedHashMap12 = linkedHashMap2;
                                                                linkedHashMap13 = linkedHashMap5;
                                                                linkedHashMap8 = linkedHashMap8;
                                                                str25 = str13;
                                                                linkedHashMap15 = linkedHashMap9;
                                                                map7 = map6;
                                                                str42 = str20;
                                                                str26 = str22;
                                                                str27 = str24;
                                                                linkedHashMap14 = linkedHashMap3;
                                                            } else {
                                                                R(linkedHashMap2, mapH);
                                                                Object obj24 = obj9;
                                                                R(linkedHashMap3, u("Skill", "pk_id", String.valueOf(mapH.getOrDefault("pk_id", obj24)), map3));
                                                                w1.b2("general_id", str28, arrayList12, map3);
                                                                w1.b2("skill_id", w1VarA1.T0(str28), arrayList12, map3);
                                                                if (z4) {
                                                                    R(linkedHashMap5, a(18, str28, map3));
                                                                }
                                                                linkedHashMap12 = linkedHashMap2;
                                                                linkedHashMap13 = linkedHashMap5;
                                                                i13 = i11;
                                                                obj9 = obj24;
                                                                map9 = mapH;
                                                                str33 = str13;
                                                                str31 = str20;
                                                                str32 = str22;
                                                                str30 = str23;
                                                            }
                                                            arrayList11.add(objB);
                                                            linkedHashMap16 = linkedHashMap7;
                                                        } else {
                                                            linkedHashMap13 = linkedHashMap5;
                                                            linkedHashMap12 = linkedHashMap2;
                                                            i13 = i11;
                                                            if (i12 == 4) {
                                                                w1 w1VarA10 = w1.a1(null);
                                                                List listF9 = w1.f0("Skill", map3);
                                                                LinkedHashMap linkedHashMap119 = new LinkedHashMap();
                                                                c.a.x("Skill", map3, linkedHashMap119, "pk_id", "general_pk_id", "0");
                                                                linkedHashMap119.put("skill_id", str28);
                                                                linkedHashMap119.put(str24, str28);
                                                                linkedHashMap119.put("skill_code", str28);
                                                                linkedHashMap119.put("card_type", "4");
                                                                str30 = str23;
                                                                linkedHashMap119.put("level", str30);
                                                                linkedHashMap119.put("skill_level", str30);
                                                                linkedHashMap119.put("position", "0");
                                                                linkedHashMap119.put("pos", "0");
                                                                linkedHashMap119.put("skill_position", "0");
                                                                linkedHashMap119.put("get_time", String.valueOf(c7.g()));
                                                                linkedHashMap119.put("is_natural", Boolean.FALSE);
                                                                linkedHashMap119.put("is_new", Boolean.TRUE);
                                                                linkedHashMap119.put("exp", "0");
                                                                linkedHashMap119.put("extra_level", "0");
                                                                linkedHashMap119.put("advanced_level", "0");
                                                                w1VarA10.S(str28, linkedHashMap119);
                                                                listF9.add(linkedHashMap119);
                                                                ArrayList arrayList2114 = new ArrayList();
                                                                str31 = str20;
                                                                str32 = str22;
                                                                Object[] objArr15 = {str31, new ArrayList(), str32, listF9};
                                                                str33 = str13;
                                                                map3.put("Skill", p5.z0(str33, arrayList2114, objArr15));
                                                                R(linkedHashMap3, linkedHashMap119);
                                                                w1.b2("skill_id", str28, arrayList12, map3);
                                                                map9 = linkedHashMap119;
                                                            } else {
                                                                str29 = str13;
                                                                str26 = str22;
                                                                str27 = str24;
                                                                linkedHashMap14 = linkedHashMap3;
                                                                if (i12 == 3) {
                                                                    w1 w1VarA11 = w1.a1(null);
                                                                    i12 = i12;
                                                                    List listF10 = w1.f0("Equipment", map3);
                                                                    LinkedHashMap linkedHashMap1110 = new LinkedHashMap();
                                                                    c.a.x("Equipment", map3, linkedHashMap1110, "pk_id", "equipment_id", str28);
                                                                    linkedHashMap1110.put("equip_id", str28);
                                                                    linkedHashMap1110.put(str27, str28);
                                                                    linkedHashMap1110.put("eid", str28);
                                                                    linkedHashMap1110.put("level", 1);
                                                                    linkedHashMap1110.put("equipment_level", 1);
                                                                    linkedHashMap1110.put("refine_level", 1);
                                                                    linkedHashMap1110.put("refine_exp", 0);
                                                                    linkedHashMap1110.put("general_pk_id", null);
                                                                    linkedHashMap1110.put("general_id", null);
                                                                    linkedHashMap1110.put("user_general_id", null);
                                                                    linkedHashMap1110.put("is_wear", "0");
                                                                    linkedHashMap1110.put("wear", "0");
                                                                    linkedHashMap1110.put("bore_list", new ArrayList());
                                                                    linkedHashMap1110.put("get_time", Long.valueOf(c7.g()));
                                                                    linkedHashMap1110.put("is_new", Boolean.TRUE);
                                                                    w1VarA11.R(str28, linkedHashMap1110);
                                                                    listF10.add(linkedHashMap1110);
                                                                    str42 = str20;
                                                                    str25 = str29;
                                                                    map7 = map6;
                                                                    map7.put("Equipment", p5.z0(str25, new ArrayList(), str42, new ArrayList(), str26, listF10));
                                                                    linkedHashMap15 = linkedHashMap9;
                                                                    R(linkedHashMap15, linkedHashMap1110);
                                                                    arrayList13 = arrayList12;
                                                                    w1.b2("equipment_id", str28, arrayList13, map7);
                                                                    map8 = map7;
                                                                    map9 = linkedHashMap1110;
                                                                    it4 = arrayList13.iterator();
                                                                    while (it4.hasNext()) {
                                                                        R(linkedHashMap8, (Map) it4.next());
                                                                    }
                                                                    objB = A(i12, i13, str28, map9);
                                                                    map3 = map8;
                                                                } else {
                                                                    str25 = str29;
                                                                    str42 = str20;
                                                                    linkedHashMap15 = linkedHashMap9;
                                                                    map7 = map6;
                                                                    objB = b(i13, i12, str21, map3);
                                                                }
                                                            }
                                                            arrayList11.add(objB);
                                                            linkedHashMap16 = linkedHashMap7;
                                                        }
                                                        str26 = str32;
                                                        str42 = str31;
                                                        linkedHashMap14 = linkedHashMap3;
                                                        str25 = str33;
                                                        str23 = str30;
                                                        linkedHashMap15 = linkedHashMap9;
                                                        map7 = map6;
                                                        str27 = str24;
                                                        map8 = map3;
                                                        arrayList13 = arrayList12;
                                                        it4 = arrayList13.iterator();
                                                        while (it4.hasNext()) {
                                                            R(linkedHashMap8, (Map) it4.next());
                                                        }
                                                        objB = A(i12, i13, str28, map9);
                                                        map3 = map8;
                                                        arrayList11.add(objB);
                                                        linkedHashMap16 = linkedHashMap7;
                                                    } else {
                                                        linkedHashMap12 = linkedHashMap2;
                                                        linkedHashMap13 = linkedHashMap5;
                                                        linkedHashMap8 = linkedHashMap8;
                                                        str25 = str13;
                                                        map7 = map6;
                                                        str42 = str20;
                                                        str26 = str22;
                                                        str27 = str24;
                                                        arrayList11 = arrayList6;
                                                        linkedHashMap14 = linkedHashMap3;
                                                        linkedHashMap15 = linkedHashMap9;
                                                        Map mapB7 = b(i11, i12, str21, map3);
                                                        linkedHashMap16 = linkedHashMap7;
                                                        linkedHashMap16.put(String.valueOf(mapB7.get("pk_id")), mapB7);
                                                        arrayList11.add(w1.A2(i11, mapB7));
                                                    }
                                                }
                                                linkedHashMap4 = linkedHashMap15;
                                                mapW0 = map7;
                                                linkedHashMap6 = linkedHashMap8;
                                                linkedHashMap = linkedHashMap16;
                                                arrayList6 = arrayList11;
                                                str41 = str26;
                                                linkedHashMap3 = linkedHashMap14;
                                                str44 = str23;
                                                str2 = str2;
                                                linkedHashMap5 = linkedHashMap13;
                                                str40 = str27;
                                                str13 = str25;
                                                strG2 = strG2;
                                                linkedHashMap2 = linkedHashMap12;
                                            }
                                            str14 = strG2;
                                            LinkedHashMap linkedHashMap1111 = linkedHashMap2;
                                            LinkedHashMap linkedHashMap28 = linkedHashMap5;
                                            str15 = str41;
                                            str16 = str2;
                                            str17 = str13;
                                            ArrayList arrayList2115 = arrayList6;
                                            LinkedHashMap linkedHashMap29 = linkedHashMap3;
                                            map4 = mapW0;
                                            str18 = str42;
                                            it2 = arrayList5.iterator();
                                            while (it2.hasNext()) {
                                                map3.put(K(str14, ((b) it2.next()).f758a), Boolean.TRUE);
                                            }
                                            map3.put("activity_last_receive_instance", str14);
                                            map3.put("activity_receive_count", Integer.valueOf(T(map3.get("activity_receive_count")) + 1));
                                            arrayList7 = new ArrayList(linkedHashMap7.values());
                                            ArrayList arrayList2116 = new ArrayList(linkedHashMap1111.values());
                                            ArrayList arrayList2117 = new ArrayList(linkedHashMap29.values());
                                            ArrayList arrayList2118 = new ArrayList(linkedHashMap9.values());
                                            arrayList8 = new ArrayList(linkedHashMap28.values());
                                            ArrayList arrayList2119 = new ArrayList(linkedHashMap8.values());
                                            linkedHashMap10 = new LinkedHashMap();
                                            arrayList9 = new ArrayList();
                                            if (!arrayList7.isEmpty()) {
                                                linkedHashMap10.put("Item", p5.z0(str17, new ArrayList(), str18, arrayList7, str15, new ArrayList()));
                                                arrayList9.add("Item");
                                            }
                                            c("General", arrayList9, arrayList2116, linkedHashMap10);
                                            c("Skill", arrayList9, arrayList2117, linkedHashMap10);
                                            c("Equipment", arrayList9, arrayList2118, linkedHashMap10);
                                            if (!arrayList8.isEmpty()) {
                                                linkedHashMap10.put("GeneralSoul", p5.z0(str17, new ArrayList(), str18, arrayList8, str15, new ArrayList()));
                                                arrayList9.add("GeneralSoul");
                                            }
                                            c("Atlas", arrayList9, arrayList2119, linkedHashMap10);
                                            linkedHashMapR2 = W();
                                            linkedHashMapR2.put("instance_id", str14);
                                            linkedHashMapR2.put("add_list", S(arrayList2115));
                                            linkedHashMapR2.put("reward_list", S(arrayList2115));
                                            Map[] mapArr14 = new Map[1];
                                            if ("level_general".equals(str14)) {
                                                obj8 = obj10;
                                                str19 = strE;
                                                arrayList10 = arrayList19;
                                                obj7 = obj11;
                                                linkedHashMap11 = I(map4, "level_general", 1, 9, 86400, f784f);
                                                map5 = map4;
                                                j3 = jF3;
                                            } else {
                                                obj7 = obj11;
                                                obj8 = obj10;
                                                str19 = strE;
                                                arrayList10 = arrayList19;
                                                map5 = map4;
                                                iE = E(jF3, map5);
                                                if ("finish_dungeon".equals(str14)) {
                                                    j2 = jF3;
                                                    linkedHashMap11 = I(map5, "finish_dungeon", 129, 10, iE, f785g);
                                                } else {
                                                    j2 = jF3;
                                                    if ("collect_god".equals(str14)) {
                                                        linkedHashMap11 = I(map5, "collect_god", 9, 11, iE, f786h);
                                                    } else if (str16.equals(str14)) {
                                                        j3 = j2;
                                                        linkedHashMap11 = I(map5, "opening_recharge_gifts", 8, 12, Q(j2, map5), f787i);
                                                    } else {
                                                        j3 = j2;
                                                        linkedHashMap11 = new LinkedHashMap();
                                                    }
                                                }
                                                j3 = j2;
                                            }
                                            mapArr14[0] = linkedHashMap11;
                                            linkedHashMapR2.put("party", p5.v0(mapArr14));
                                            linkedHashMapR2.put("activity_list", e(j3, map5));
                                            sb = new StringBuilder();
                                            it3 = arrayList9.iterator();
                                            if (it3.hasNext()) {
                                                while (true) {
                                                    sb.append((CharSequence) it3.next());
                                                    if (it3.hasNext()) {
                                                        break;
                                                        break;
                                                    }
                                                    sb.append((CharSequence) ",");
                                                }
                                            }
                                            linkedHashMapR2.put("cmn_modules", sb.toString());
                                            linkedHashMapR2.put(obj7, linkedHashMap10);
                                            map2 = map5;
                                            obj2 = "cmn_modules";
                                            charSequence = ",";
                                            obj10 = obj8;
                                            str4 = str19;
                                            arrayList19 = arrayList10;
                                            obj11 = obj7;
                                        }
                                    }
                                    bVarArr = bVarArr2;
                                    arrayList5 = new ArrayList();
                                    length3 = bVarArr.length;
                                    i9 = 0;
                                    while (i9 < length3) {
                                        int i35 = length3;
                                        bVar2 = bVarArr[i9];
                                        b[] bVarArr8 = bVarArr;
                                        String str510 = str43;
                                        if (Boolean.TRUE.equals(mapW0.get(K(strG2, bVar2.f758a)))) {
                                        }
                                        i9++;
                                        length3 = i35;
                                        bVarArr = bVarArr8;
                                        str43 = str510;
                                    }
                                    str13 = str43;
                                    if (arrayList5.isEmpty()) {
                                        linkedHashMapR2 = r(str3);
                                        linkedHashMapR2.put("activity_list", e(jF3, mapW0));
                                    } else {
                                        linkedHashMap = new LinkedHashMap();
                                        linkedHashMap2 = new LinkedHashMap();
                                        linkedHashMap3 = new LinkedHashMap();
                                        linkedHashMap4 = new LinkedHashMap();
                                        linkedHashMap5 = new LinkedHashMap();
                                        linkedHashMap6 = new LinkedHashMap();
                                        arrayList6 = new ArrayList();
                                        it = arrayList5.iterator();
                                        map3 = mapW0;
                                        while (true) {
                                            linkedHashMap7 = linkedHashMap;
                                            linkedHashMap8 = linkedHashMap6;
                                            linkedHashMap9 = linkedHashMap4;
                                            if (it.hasNext()) {
                                                break;
                                                break;
                                            }
                                            map6 = mapW0;
                                            bVar = (b) it.next();
                                            i10 = bVar.f762e;
                                            str20 = str42;
                                            str21 = bVar.f760c;
                                            str22 = str41;
                                            i11 = bVar.f761d;
                                            str23 = str44;
                                            str24 = str40;
                                            if (i10 == 6) {
                                                Map mapA6 = a(i11, str21, map3);
                                                linkedHashMap5.put(String.valueOf(mapA6.get("pk_id")), mapA6);
                                                String str511 = bVar.f760c;
                                                arrayList6.add(p5.z0("pk_id", mapA6.getOrDefault("pk_id", str511), "id", str511, "item_id", str511, "general_id", str511, "num", Integer.valueOf(i11), "item_num", Integer.valueOf(i11), "item_type", 6, "type", 6, "card_type", mapA6.getOrDefault("card_type", 1), "is_new", Boolean.TRUE));
                                                linkedHashMap12 = linkedHashMap2;
                                                linkedHashMap13 = linkedHashMap5;
                                                linkedHashMap16 = linkedHashMap7;
                                                linkedHashMap8 = linkedHashMap8;
                                                str25 = str13;
                                                map7 = map6;
                                                str42 = str20;
                                                str26 = str22;
                                                str27 = str24;
                                                arrayList11 = arrayList6;
                                                linkedHashMap14 = linkedHashMap3;
                                                linkedHashMap15 = linkedHashMap9;
                                            } else {
                                                zEquals = str2.equals(strG2);
                                                i12 = bVar.f762e;
                                                if (zEquals) {
                                                    w1VarA1 = w1.a1(null);
                                                    arrayList12 = new ArrayList();
                                                    str28 = bVar.f759b;
                                                    arrayList11 = arrayList6;
                                                    if (i12 == 1) {
                                                        if (u("General", "general_id", str28, map3) != null) {
                                                            z4 = true;
                                                        } else {
                                                            z4 = false;
                                                        }
                                                        mapH = w1VarA1.h(str28, map3);
                                                        if (mapH == null) {
                                                            objB = A(i12, i11, str28, null);
                                                            linkedHashMap12 = linkedHashMap2;
                                                            linkedHashMap13 = linkedHashMap5;
                                                            linkedHashMap8 = linkedHashMap8;
                                                            str25 = str13;
                                                            linkedHashMap15 = linkedHashMap9;
                                                            map7 = map6;
                                                            str42 = str20;
                                                            str26 = str22;
                                                            str27 = str24;
                                                            linkedHashMap14 = linkedHashMap3;
                                                        } else {
                                                            R(linkedHashMap2, mapH);
                                                            Object obj25 = obj9;
                                                            R(linkedHashMap3, u("Skill", "pk_id", String.valueOf(mapH.getOrDefault("pk_id", obj25)), map3));
                                                            w1.b2("general_id", str28, arrayList12, map3);
                                                            w1.b2("skill_id", w1VarA1.T0(str28), arrayList12, map3);
                                                            if (z4) {
                                                                R(linkedHashMap5, a(18, str28, map3));
                                                            }
                                                            linkedHashMap12 = linkedHashMap2;
                                                            linkedHashMap13 = linkedHashMap5;
                                                            i13 = i11;
                                                            obj9 = obj25;
                                                            map9 = mapH;
                                                            str33 = str13;
                                                            str31 = str20;
                                                            str32 = str22;
                                                            str30 = str23;
                                                        }
                                                        arrayList11.add(objB);
                                                        linkedHashMap16 = linkedHashMap7;
                                                    } else {
                                                        linkedHashMap13 = linkedHashMap5;
                                                        linkedHashMap12 = linkedHashMap2;
                                                        i13 = i11;
                                                        if (i12 == 4) {
                                                            w1 w1VarA12 = w1.a1(null);
                                                            List listF11 = w1.f0("Skill", map3);
                                                            LinkedHashMap linkedHashMap1112 = new LinkedHashMap();
                                                            c.a.x("Skill", map3, linkedHashMap1112, "pk_id", "general_pk_id", "0");
                                                            linkedHashMap1112.put("skill_id", str28);
                                                            linkedHashMap1112.put(str24, str28);
                                                            linkedHashMap1112.put("skill_code", str28);
                                                            linkedHashMap1112.put("card_type", "4");
                                                            str30 = str23;
                                                            linkedHashMap1112.put("level", str30);
                                                            linkedHashMap1112.put("skill_level", str30);
                                                            linkedHashMap1112.put("position", "0");
                                                            linkedHashMap1112.put("pos", "0");
                                                            linkedHashMap1112.put("skill_position", "0");
                                                            linkedHashMap1112.put("get_time", String.valueOf(c7.g()));
                                                            linkedHashMap1112.put("is_natural", Boolean.FALSE);
                                                            linkedHashMap1112.put("is_new", Boolean.TRUE);
                                                            linkedHashMap1112.put("exp", "0");
                                                            linkedHashMap1112.put("extra_level", "0");
                                                            linkedHashMap1112.put("advanced_level", "0");
                                                            w1VarA12.S(str28, linkedHashMap1112);
                                                            listF11.add(linkedHashMap1112);
                                                            ArrayList arrayList21110 = new ArrayList();
                                                            str31 = str20;
                                                            str32 = str22;
                                                            Object[] objArr16 = {str31, new ArrayList(), str32, listF11};
                                                            str33 = str13;
                                                            map3.put("Skill", p5.z0(str33, arrayList21110, objArr16));
                                                            R(linkedHashMap3, linkedHashMap1112);
                                                            w1.b2("skill_id", str28, arrayList12, map3);
                                                            map9 = linkedHashMap1112;
                                                        } else {
                                                            str29 = str13;
                                                            str26 = str22;
                                                            str27 = str24;
                                                            linkedHashMap14 = linkedHashMap3;
                                                            if (i12 == 3) {
                                                                w1 w1VarA13 = w1.a1(null);
                                                                i12 = i12;
                                                                List listF12 = w1.f0("Equipment", map3);
                                                                LinkedHashMap linkedHashMap1113 = new LinkedHashMap();
                                                                c.a.x("Equipment", map3, linkedHashMap1113, "pk_id", "equipment_id", str28);
                                                                linkedHashMap1113.put("equip_id", str28);
                                                                linkedHashMap1113.put(str27, str28);
                                                                linkedHashMap1113.put("eid", str28);
                                                                linkedHashMap1113.put("level", 1);
                                                                linkedHashMap1113.put("equipment_level", 1);
                                                                linkedHashMap1113.put("refine_level", 1);
                                                                linkedHashMap1113.put("refine_exp", 0);
                                                                linkedHashMap1113.put("general_pk_id", null);
                                                                linkedHashMap1113.put("general_id", null);
                                                                linkedHashMap1113.put("user_general_id", null);
                                                                linkedHashMap1113.put("is_wear", "0");
                                                                linkedHashMap1113.put("wear", "0");
                                                                linkedHashMap1113.put("bore_list", new ArrayList());
                                                                linkedHashMap1113.put("get_time", Long.valueOf(c7.g()));
                                                                linkedHashMap1113.put("is_new", Boolean.TRUE);
                                                                w1VarA13.R(str28, linkedHashMap1113);
                                                                listF12.add(linkedHashMap1113);
                                                                str42 = str20;
                                                                str25 = str29;
                                                                map7 = map6;
                                                                map7.put("Equipment", p5.z0(str25, new ArrayList(), str42, new ArrayList(), str26, listF12));
                                                                linkedHashMap15 = linkedHashMap9;
                                                                R(linkedHashMap15, linkedHashMap1113);
                                                                arrayList13 = arrayList12;
                                                                w1.b2("equipment_id", str28, arrayList13, map7);
                                                                map8 = map7;
                                                                map9 = linkedHashMap1113;
                                                                it4 = arrayList13.iterator();
                                                                while (it4.hasNext()) {
                                                                    R(linkedHashMap8, (Map) it4.next());
                                                                }
                                                                objB = A(i12, i13, str28, map9);
                                                                map3 = map8;
                                                            } else {
                                                                str25 = str29;
                                                                str42 = str20;
                                                                linkedHashMap15 = linkedHashMap9;
                                                                map7 = map6;
                                                                objB = b(i13, i12, str21, map3);
                                                            }
                                                        }
                                                        arrayList11.add(objB);
                                                        linkedHashMap16 = linkedHashMap7;
                                                    }
                                                    str26 = str32;
                                                    str42 = str31;
                                                    linkedHashMap14 = linkedHashMap3;
                                                    str25 = str33;
                                                    str23 = str30;
                                                    linkedHashMap15 = linkedHashMap9;
                                                    map7 = map6;
                                                    str27 = str24;
                                                    map8 = map3;
                                                    arrayList13 = arrayList12;
                                                    it4 = arrayList13.iterator();
                                                    while (it4.hasNext()) {
                                                        R(linkedHashMap8, (Map) it4.next());
                                                    }
                                                    objB = A(i12, i13, str28, map9);
                                                    map3 = map8;
                                                    arrayList11.add(objB);
                                                    linkedHashMap16 = linkedHashMap7;
                                                } else {
                                                    linkedHashMap12 = linkedHashMap2;
                                                    linkedHashMap13 = linkedHashMap5;
                                                    linkedHashMap8 = linkedHashMap8;
                                                    str25 = str13;
                                                    map7 = map6;
                                                    str42 = str20;
                                                    str26 = str22;
                                                    str27 = str24;
                                                    arrayList11 = arrayList6;
                                                    linkedHashMap14 = linkedHashMap3;
                                                    linkedHashMap15 = linkedHashMap9;
                                                    Map mapB8 = b(i11, i12, str21, map3);
                                                    linkedHashMap16 = linkedHashMap7;
                                                    linkedHashMap16.put(String.valueOf(mapB8.get("pk_id")), mapB8);
                                                    arrayList11.add(w1.A2(i11, mapB8));
                                                }
                                            }
                                            linkedHashMap4 = linkedHashMap15;
                                            mapW0 = map7;
                                            linkedHashMap6 = linkedHashMap8;
                                            linkedHashMap = linkedHashMap16;
                                            arrayList6 = arrayList11;
                                            str41 = str26;
                                            linkedHashMap3 = linkedHashMap14;
                                            str44 = str23;
                                            str2 = str2;
                                            linkedHashMap5 = linkedHashMap13;
                                            str40 = str27;
                                            str13 = str25;
                                            strG2 = strG2;
                                            linkedHashMap2 = linkedHashMap12;
                                        }
                                        str14 = strG2;
                                        LinkedHashMap linkedHashMap1114 = linkedHashMap2;
                                        LinkedHashMap linkedHashMap210 = linkedHashMap5;
                                        str15 = str41;
                                        str16 = str2;
                                        str17 = str13;
                                        ArrayList arrayList21111 = arrayList6;
                                        LinkedHashMap linkedHashMap211 = linkedHashMap3;
                                        map4 = mapW0;
                                        str18 = str42;
                                        it2 = arrayList5.iterator();
                                        while (it2.hasNext()) {
                                            map3.put(K(str14, ((b) it2.next()).f758a), Boolean.TRUE);
                                        }
                                        map3.put("activity_last_receive_instance", str14);
                                        map3.put("activity_receive_count", Integer.valueOf(T(map3.get("activity_receive_count")) + 1));
                                        arrayList7 = new ArrayList(linkedHashMap7.values());
                                        ArrayList arrayList21112 = new ArrayList(linkedHashMap1114.values());
                                        ArrayList arrayList21113 = new ArrayList(linkedHashMap211.values());
                                        ArrayList arrayList21114 = new ArrayList(linkedHashMap9.values());
                                        arrayList8 = new ArrayList(linkedHashMap210.values());
                                        ArrayList arrayList21115 = new ArrayList(linkedHashMap8.values());
                                        linkedHashMap10 = new LinkedHashMap();
                                        arrayList9 = new ArrayList();
                                        if (!arrayList7.isEmpty()) {
                                            linkedHashMap10.put("Item", p5.z0(str17, new ArrayList(), str18, arrayList7, str15, new ArrayList()));
                                            arrayList9.add("Item");
                                        }
                                        c("General", arrayList9, arrayList21112, linkedHashMap10);
                                        c("Skill", arrayList9, arrayList21113, linkedHashMap10);
                                        c("Equipment", arrayList9, arrayList21114, linkedHashMap10);
                                        if (!arrayList8.isEmpty()) {
                                            linkedHashMap10.put("GeneralSoul", p5.z0(str17, new ArrayList(), str18, arrayList8, str15, new ArrayList()));
                                            arrayList9.add("GeneralSoul");
                                        }
                                        c("Atlas", arrayList9, arrayList21115, linkedHashMap10);
                                        linkedHashMapR2 = W();
                                        linkedHashMapR2.put("instance_id", str14);
                                        linkedHashMapR2.put("add_list", S(arrayList21111));
                                        linkedHashMapR2.put("reward_list", S(arrayList21111));
                                        Map[] mapArr15 = new Map[1];
                                        if ("level_general".equals(str14)) {
                                            obj8 = obj10;
                                            str19 = strE;
                                            arrayList10 = arrayList19;
                                            obj7 = obj11;
                                            linkedHashMap11 = I(map4, "level_general", 1, 9, 86400, f784f);
                                            map5 = map4;
                                            j3 = jF3;
                                        } else {
                                            obj7 = obj11;
                                            obj8 = obj10;
                                            str19 = strE;
                                            arrayList10 = arrayList19;
                                            map5 = map4;
                                            iE = E(jF3, map5);
                                            if ("finish_dungeon".equals(str14)) {
                                                j2 = jF3;
                                                linkedHashMap11 = I(map5, "finish_dungeon", 129, 10, iE, f785g);
                                            } else {
                                                j2 = jF3;
                                                if ("collect_god".equals(str14)) {
                                                    linkedHashMap11 = I(map5, "collect_god", 9, 11, iE, f786h);
                                                } else if (str16.equals(str14)) {
                                                    j3 = j2;
                                                    linkedHashMap11 = I(map5, "opening_recharge_gifts", 8, 12, Q(j2, map5), f787i);
                                                } else {
                                                    j3 = j2;
                                                    linkedHashMap11 = new LinkedHashMap();
                                                }
                                            }
                                            j3 = j2;
                                        }
                                        mapArr15[0] = linkedHashMap11;
                                        linkedHashMapR2.put("party", p5.v0(mapArr15));
                                        linkedHashMapR2.put("activity_list", e(j3, map5));
                                        sb = new StringBuilder();
                                        it3 = arrayList9.iterator();
                                        if (it3.hasNext()) {
                                            while (true) {
                                                sb.append((CharSequence) it3.next());
                                                if (it3.hasNext()) {
                                                    break;
                                                    break;
                                                }
                                                sb.append((CharSequence) ",");
                                            }
                                        }
                                        linkedHashMapR2.put("cmn_modules", sb.toString());
                                        linkedHashMapR2.put(obj7, linkedHashMap10);
                                        map2 = map5;
                                        obj2 = "cmn_modules";
                                        charSequence = ",";
                                        obj10 = obj8;
                                        str4 = str19;
                                        arrayList19 = arrayList10;
                                        obj11 = obj7;
                                    }
                                } else {
                                    if ("level_general".equals(strG2)) {
                                        bVarArr2 = f784f;
                                    } else if ("finish_dungeon".equals(strG2)) {
                                        bVarArr2 = f785g;
                                    } else if ("collect_god".equals(strG2)) {
                                        bVarArr2 = f786h;
                                    } else {
                                        if ("opening_recharge_gifts".equals(strG2)) {
                                            bVarArr2 = f787i;
                                        } else {
                                            bVarArr = new b[0];
                                        }
                                        arrayList5 = new ArrayList();
                                        length3 = bVarArr.length;
                                        i9 = 0;
                                        while (i9 < length3) {
                                            int i36 = length3;
                                            bVar2 = bVarArr[i9];
                                            b[] bVarArr9 = bVarArr;
                                            String str512 = str43;
                                            if (Boolean.TRUE.equals(mapW0.get(K(strG2, bVar2.f758a)))) {
                                            }
                                            i9++;
                                            length3 = i36;
                                            bVarArr = bVarArr9;
                                            str43 = str512;
                                        }
                                        str13 = str43;
                                        if (arrayList5.isEmpty()) {
                                            linkedHashMapR2 = r(str3);
                                            linkedHashMapR2.put("activity_list", e(jF3, mapW0));
                                        } else {
                                            linkedHashMap = new LinkedHashMap();
                                            linkedHashMap2 = new LinkedHashMap();
                                            linkedHashMap3 = new LinkedHashMap();
                                            linkedHashMap4 = new LinkedHashMap();
                                            linkedHashMap5 = new LinkedHashMap();
                                            linkedHashMap6 = new LinkedHashMap();
                                            arrayList6 = new ArrayList();
                                            it = arrayList5.iterator();
                                            map3 = mapW0;
                                            while (true) {
                                                linkedHashMap7 = linkedHashMap;
                                                linkedHashMap8 = linkedHashMap6;
                                                linkedHashMap9 = linkedHashMap4;
                                                if (it.hasNext()) {
                                                    break;
                                                    break;
                                                }
                                                map6 = mapW0;
                                                bVar = (b) it.next();
                                                i10 = bVar.f762e;
                                                str20 = str42;
                                                str21 = bVar.f760c;
                                                str22 = str41;
                                                i11 = bVar.f761d;
                                                str23 = str44;
                                                str24 = str40;
                                                if (i10 == 6) {
                                                    Map mapA7 = a(i11, str21, map3);
                                                    linkedHashMap5.put(String.valueOf(mapA7.get("pk_id")), mapA7);
                                                    String str513 = bVar.f760c;
                                                    arrayList6.add(p5.z0("pk_id", mapA7.getOrDefault("pk_id", str513), "id", str513, "item_id", str513, "general_id", str513, "num", Integer.valueOf(i11), "item_num", Integer.valueOf(i11), "item_type", 6, "type", 6, "card_type", mapA7.getOrDefault("card_type", 1), "is_new", Boolean.TRUE));
                                                    linkedHashMap12 = linkedHashMap2;
                                                    linkedHashMap13 = linkedHashMap5;
                                                    linkedHashMap16 = linkedHashMap7;
                                                    linkedHashMap8 = linkedHashMap8;
                                                    str25 = str13;
                                                    map7 = map6;
                                                    str42 = str20;
                                                    str26 = str22;
                                                    str27 = str24;
                                                    arrayList11 = arrayList6;
                                                    linkedHashMap14 = linkedHashMap3;
                                                    linkedHashMap15 = linkedHashMap9;
                                                } else {
                                                    zEquals = str2.equals(strG2);
                                                    i12 = bVar.f762e;
                                                    if (zEquals) {
                                                        w1VarA1 = w1.a1(null);
                                                        arrayList12 = new ArrayList();
                                                        str28 = bVar.f759b;
                                                        arrayList11 = arrayList6;
                                                        if (i12 == 1) {
                                                            if (u("General", "general_id", str28, map3) != null) {
                                                                z4 = true;
                                                            } else {
                                                                z4 = false;
                                                            }
                                                            mapH = w1VarA1.h(str28, map3);
                                                            if (mapH == null) {
                                                                objB = A(i12, i11, str28, null);
                                                                linkedHashMap12 = linkedHashMap2;
                                                                linkedHashMap13 = linkedHashMap5;
                                                                linkedHashMap8 = linkedHashMap8;
                                                                str25 = str13;
                                                                linkedHashMap15 = linkedHashMap9;
                                                                map7 = map6;
                                                                str42 = str20;
                                                                str26 = str22;
                                                                str27 = str24;
                                                                linkedHashMap14 = linkedHashMap3;
                                                            } else {
                                                                R(linkedHashMap2, mapH);
                                                                Object obj26 = obj9;
                                                                R(linkedHashMap3, u("Skill", "pk_id", String.valueOf(mapH.getOrDefault("pk_id", obj26)), map3));
                                                                w1.b2("general_id", str28, arrayList12, map3);
                                                                w1.b2("skill_id", w1VarA1.T0(str28), arrayList12, map3);
                                                                if (z4) {
                                                                    R(linkedHashMap5, a(18, str28, map3));
                                                                }
                                                                linkedHashMap12 = linkedHashMap2;
                                                                linkedHashMap13 = linkedHashMap5;
                                                                i13 = i11;
                                                                obj9 = obj26;
                                                                map9 = mapH;
                                                                str33 = str13;
                                                                str31 = str20;
                                                                str32 = str22;
                                                                str30 = str23;
                                                            }
                                                            arrayList11.add(objB);
                                                            linkedHashMap16 = linkedHashMap7;
                                                        } else {
                                                            linkedHashMap13 = linkedHashMap5;
                                                            linkedHashMap12 = linkedHashMap2;
                                                            i13 = i11;
                                                            if (i12 == 4) {
                                                                w1 w1VarA14 = w1.a1(null);
                                                                List listF13 = w1.f0("Skill", map3);
                                                                LinkedHashMap linkedHashMap1115 = new LinkedHashMap();
                                                                c.a.x("Skill", map3, linkedHashMap1115, "pk_id", "general_pk_id", "0");
                                                                linkedHashMap1115.put("skill_id", str28);
                                                                linkedHashMap1115.put(str24, str28);
                                                                linkedHashMap1115.put("skill_code", str28);
                                                                linkedHashMap1115.put("card_type", "4");
                                                                str30 = str23;
                                                                linkedHashMap1115.put("level", str30);
                                                                linkedHashMap1115.put("skill_level", str30);
                                                                linkedHashMap1115.put("position", "0");
                                                                linkedHashMap1115.put("pos", "0");
                                                                linkedHashMap1115.put("skill_position", "0");
                                                                linkedHashMap1115.put("get_time", String.valueOf(c7.g()));
                                                                linkedHashMap1115.put("is_natural", Boolean.FALSE);
                                                                linkedHashMap1115.put("is_new", Boolean.TRUE);
                                                                linkedHashMap1115.put("exp", "0");
                                                                linkedHashMap1115.put("extra_level", "0");
                                                                linkedHashMap1115.put("advanced_level", "0");
                                                                w1VarA14.S(str28, linkedHashMap1115);
                                                                listF13.add(linkedHashMap1115);
                                                                ArrayList arrayList21116 = new ArrayList();
                                                                str31 = str20;
                                                                str32 = str22;
                                                                Object[] objArr17 = {str31, new ArrayList(), str32, listF13};
                                                                str33 = str13;
                                                                map3.put("Skill", p5.z0(str33, arrayList21116, objArr17));
                                                                R(linkedHashMap3, linkedHashMap1115);
                                                                w1.b2("skill_id", str28, arrayList12, map3);
                                                                map9 = linkedHashMap1115;
                                                            } else {
                                                                str29 = str13;
                                                                str26 = str22;
                                                                str27 = str24;
                                                                linkedHashMap14 = linkedHashMap3;
                                                                if (i12 == 3) {
                                                                    w1 w1VarA15 = w1.a1(null);
                                                                    i12 = i12;
                                                                    List listF14 = w1.f0("Equipment", map3);
                                                                    LinkedHashMap linkedHashMap1116 = new LinkedHashMap();
                                                                    c.a.x("Equipment", map3, linkedHashMap1116, "pk_id", "equipment_id", str28);
                                                                    linkedHashMap1116.put("equip_id", str28);
                                                                    linkedHashMap1116.put(str27, str28);
                                                                    linkedHashMap1116.put("eid", str28);
                                                                    linkedHashMap1116.put("level", 1);
                                                                    linkedHashMap1116.put("equipment_level", 1);
                                                                    linkedHashMap1116.put("refine_level", 1);
                                                                    linkedHashMap1116.put("refine_exp", 0);
                                                                    linkedHashMap1116.put("general_pk_id", null);
                                                                    linkedHashMap1116.put("general_id", null);
                                                                    linkedHashMap1116.put("user_general_id", null);
                                                                    linkedHashMap1116.put("is_wear", "0");
                                                                    linkedHashMap1116.put("wear", "0");
                                                                    linkedHashMap1116.put("bore_list", new ArrayList());
                                                                    linkedHashMap1116.put("get_time", Long.valueOf(c7.g()));
                                                                    linkedHashMap1116.put("is_new", Boolean.TRUE);
                                                                    w1VarA15.R(str28, linkedHashMap1116);
                                                                    listF14.add(linkedHashMap1116);
                                                                    str42 = str20;
                                                                    str25 = str29;
                                                                    map7 = map6;
                                                                    map7.put("Equipment", p5.z0(str25, new ArrayList(), str42, new ArrayList(), str26, listF14));
                                                                    linkedHashMap15 = linkedHashMap9;
                                                                    R(linkedHashMap15, linkedHashMap1116);
                                                                    arrayList13 = arrayList12;
                                                                    w1.b2("equipment_id", str28, arrayList13, map7);
                                                                    map8 = map7;
                                                                    map9 = linkedHashMap1116;
                                                                    it4 = arrayList13.iterator();
                                                                    while (it4.hasNext()) {
                                                                        R(linkedHashMap8, (Map) it4.next());
                                                                    }
                                                                    objB = A(i12, i13, str28, map9);
                                                                    map3 = map8;
                                                                } else {
                                                                    str25 = str29;
                                                                    str42 = str20;
                                                                    linkedHashMap15 = linkedHashMap9;
                                                                    map7 = map6;
                                                                    objB = b(i13, i12, str21, map3);
                                                                }
                                                            }
                                                            arrayList11.add(objB);
                                                            linkedHashMap16 = linkedHashMap7;
                                                        }
                                                        str26 = str32;
                                                        str42 = str31;
                                                        linkedHashMap14 = linkedHashMap3;
                                                        str25 = str33;
                                                        str23 = str30;
                                                        linkedHashMap15 = linkedHashMap9;
                                                        map7 = map6;
                                                        str27 = str24;
                                                        map8 = map3;
                                                        arrayList13 = arrayList12;
                                                        it4 = arrayList13.iterator();
                                                        while (it4.hasNext()) {
                                                            R(linkedHashMap8, (Map) it4.next());
                                                        }
                                                        objB = A(i12, i13, str28, map9);
                                                        map3 = map8;
                                                        arrayList11.add(objB);
                                                        linkedHashMap16 = linkedHashMap7;
                                                    } else {
                                                        linkedHashMap12 = linkedHashMap2;
                                                        linkedHashMap13 = linkedHashMap5;
                                                        linkedHashMap8 = linkedHashMap8;
                                                        str25 = str13;
                                                        map7 = map6;
                                                        str42 = str20;
                                                        str26 = str22;
                                                        str27 = str24;
                                                        arrayList11 = arrayList6;
                                                        linkedHashMap14 = linkedHashMap3;
                                                        linkedHashMap15 = linkedHashMap9;
                                                        Map mapB9 = b(i11, i12, str21, map3);
                                                        linkedHashMap16 = linkedHashMap7;
                                                        linkedHashMap16.put(String.valueOf(mapB9.get("pk_id")), mapB9);
                                                        arrayList11.add(w1.A2(i11, mapB9));
                                                    }
                                                }
                                                linkedHashMap4 = linkedHashMap15;
                                                mapW0 = map7;
                                                linkedHashMap6 = linkedHashMap8;
                                                linkedHashMap = linkedHashMap16;
                                                arrayList6 = arrayList11;
                                                str41 = str26;
                                                linkedHashMap3 = linkedHashMap14;
                                                str44 = str23;
                                                str2 = str2;
                                                linkedHashMap5 = linkedHashMap13;
                                                str40 = str27;
                                                str13 = str25;
                                                strG2 = strG2;
                                                linkedHashMap2 = linkedHashMap12;
                                            }
                                            str14 = strG2;
                                            LinkedHashMap linkedHashMap1117 = linkedHashMap2;
                                            LinkedHashMap linkedHashMap212 = linkedHashMap5;
                                            str15 = str41;
                                            str16 = str2;
                                            str17 = str13;
                                            ArrayList arrayList21117 = arrayList6;
                                            LinkedHashMap linkedHashMap213 = linkedHashMap3;
                                            map4 = mapW0;
                                            str18 = str42;
                                            it2 = arrayList5.iterator();
                                            while (it2.hasNext()) {
                                                map3.put(K(str14, ((b) it2.next()).f758a), Boolean.TRUE);
                                            }
                                            map3.put("activity_last_receive_instance", str14);
                                            map3.put("activity_receive_count", Integer.valueOf(T(map3.get("activity_receive_count")) + 1));
                                            arrayList7 = new ArrayList(linkedHashMap7.values());
                                            ArrayList arrayList21118 = new ArrayList(linkedHashMap1117.values());
                                            ArrayList arrayList21119 = new ArrayList(linkedHashMap213.values());
                                            ArrayList arrayList211110 = new ArrayList(linkedHashMap9.values());
                                            arrayList8 = new ArrayList(linkedHashMap212.values());
                                            ArrayList arrayList211111 = new ArrayList(linkedHashMap8.values());
                                            linkedHashMap10 = new LinkedHashMap();
                                            arrayList9 = new ArrayList();
                                            if (!arrayList7.isEmpty()) {
                                                linkedHashMap10.put("Item", p5.z0(str17, new ArrayList(), str18, arrayList7, str15, new ArrayList()));
                                                arrayList9.add("Item");
                                            }
                                            c("General", arrayList9, arrayList21118, linkedHashMap10);
                                            c("Skill", arrayList9, arrayList21119, linkedHashMap10);
                                            c("Equipment", arrayList9, arrayList211110, linkedHashMap10);
                                            if (!arrayList8.isEmpty()) {
                                                linkedHashMap10.put("GeneralSoul", p5.z0(str17, new ArrayList(), str18, arrayList8, str15, new ArrayList()));
                                                arrayList9.add("GeneralSoul");
                                            }
                                            c("Atlas", arrayList9, arrayList211111, linkedHashMap10);
                                            linkedHashMapR2 = W();
                                            linkedHashMapR2.put("instance_id", str14);
                                            linkedHashMapR2.put("add_list", S(arrayList21117));
                                            linkedHashMapR2.put("reward_list", S(arrayList21117));
                                            Map[] mapArr16 = new Map[1];
                                            if ("level_general".equals(str14)) {
                                                obj8 = obj10;
                                                str19 = strE;
                                                arrayList10 = arrayList19;
                                                obj7 = obj11;
                                                linkedHashMap11 = I(map4, "level_general", 1, 9, 86400, f784f);
                                                map5 = map4;
                                                j3 = jF3;
                                            } else {
                                                obj7 = obj11;
                                                obj8 = obj10;
                                                str19 = strE;
                                                arrayList10 = arrayList19;
                                                map5 = map4;
                                                iE = E(jF3, map5);
                                                if ("finish_dungeon".equals(str14)) {
                                                    j2 = jF3;
                                                    linkedHashMap11 = I(map5, "finish_dungeon", 129, 10, iE, f785g);
                                                } else {
                                                    j2 = jF3;
                                                    if ("collect_god".equals(str14)) {
                                                        linkedHashMap11 = I(map5, "collect_god", 9, 11, iE, f786h);
                                                    } else if (str16.equals(str14)) {
                                                        j3 = j2;
                                                        linkedHashMap11 = I(map5, "opening_recharge_gifts", 8, 12, Q(j2, map5), f787i);
                                                    } else {
                                                        j3 = j2;
                                                        linkedHashMap11 = new LinkedHashMap();
                                                    }
                                                }
                                                j3 = j2;
                                            }
                                            mapArr16[0] = linkedHashMap11;
                                            linkedHashMapR2.put("party", p5.v0(mapArr16));
                                            linkedHashMapR2.put("activity_list", e(j3, map5));
                                            sb = new StringBuilder();
                                            it3 = arrayList9.iterator();
                                            if (it3.hasNext()) {
                                                while (true) {
                                                    sb.append((CharSequence) it3.next());
                                                    if (it3.hasNext()) {
                                                        break;
                                                        break;
                                                    }
                                                    sb.append((CharSequence) ",");
                                                }
                                            }
                                            linkedHashMapR2.put("cmn_modules", sb.toString());
                                            linkedHashMapR2.put(obj7, linkedHashMap10);
                                            map2 = map5;
                                            obj2 = "cmn_modules";
                                            charSequence = ",";
                                            obj10 = obj8;
                                            str4 = str19;
                                            arrayList19 = arrayList10;
                                            obj11 = obj7;
                                        }
                                    }
                                    bVarArr = bVarArr2;
                                    arrayList5 = new ArrayList();
                                    length3 = bVarArr.length;
                                    i9 = 0;
                                    while (i9 < length3) {
                                        int i37 = length3;
                                        bVar2 = bVarArr[i9];
                                        b[] bVarArr10 = bVarArr;
                                        String str514 = str43;
                                        if (Boolean.TRUE.equals(mapW0.get(K(strG2, bVar2.f758a)))) {
                                        }
                                        i9++;
                                        length3 = i37;
                                        bVarArr = bVarArr10;
                                        str43 = str514;
                                    }
                                    str13 = str43;
                                    if (arrayList5.isEmpty()) {
                                        linkedHashMapR2 = r(str3);
                                        linkedHashMapR2.put("activity_list", e(jF3, mapW0));
                                    } else {
                                        linkedHashMap = new LinkedHashMap();
                                        linkedHashMap2 = new LinkedHashMap();
                                        linkedHashMap3 = new LinkedHashMap();
                                        linkedHashMap4 = new LinkedHashMap();
                                        linkedHashMap5 = new LinkedHashMap();
                                        linkedHashMap6 = new LinkedHashMap();
                                        arrayList6 = new ArrayList();
                                        it = arrayList5.iterator();
                                        map3 = mapW0;
                                        while (true) {
                                            linkedHashMap7 = linkedHashMap;
                                            linkedHashMap8 = linkedHashMap6;
                                            linkedHashMap9 = linkedHashMap4;
                                            if (it.hasNext()) {
                                                break;
                                                break;
                                            }
                                            map6 = mapW0;
                                            bVar = (b) it.next();
                                            i10 = bVar.f762e;
                                            str20 = str42;
                                            str21 = bVar.f760c;
                                            str22 = str41;
                                            i11 = bVar.f761d;
                                            str23 = str44;
                                            str24 = str40;
                                            if (i10 == 6) {
                                                Map mapA8 = a(i11, str21, map3);
                                                linkedHashMap5.put(String.valueOf(mapA8.get("pk_id")), mapA8);
                                                String str515 = bVar.f760c;
                                                arrayList6.add(p5.z0("pk_id", mapA8.getOrDefault("pk_id", str515), "id", str515, "item_id", str515, "general_id", str515, "num", Integer.valueOf(i11), "item_num", Integer.valueOf(i11), "item_type", 6, "type", 6, "card_type", mapA8.getOrDefault("card_type", 1), "is_new", Boolean.TRUE));
                                                linkedHashMap12 = linkedHashMap2;
                                                linkedHashMap13 = linkedHashMap5;
                                                linkedHashMap16 = linkedHashMap7;
                                                linkedHashMap8 = linkedHashMap8;
                                                str25 = str13;
                                                map7 = map6;
                                                str42 = str20;
                                                str26 = str22;
                                                str27 = str24;
                                                arrayList11 = arrayList6;
                                                linkedHashMap14 = linkedHashMap3;
                                                linkedHashMap15 = linkedHashMap9;
                                            } else {
                                                zEquals = str2.equals(strG2);
                                                i12 = bVar.f762e;
                                                if (zEquals) {
                                                    w1VarA1 = w1.a1(null);
                                                    arrayList12 = new ArrayList();
                                                    str28 = bVar.f759b;
                                                    arrayList11 = arrayList6;
                                                    if (i12 == 1) {
                                                        if (u("General", "general_id", str28, map3) != null) {
                                                            z4 = true;
                                                        } else {
                                                            z4 = false;
                                                        }
                                                        mapH = w1VarA1.h(str28, map3);
                                                        if (mapH == null) {
                                                            objB = A(i12, i11, str28, null);
                                                            linkedHashMap12 = linkedHashMap2;
                                                            linkedHashMap13 = linkedHashMap5;
                                                            linkedHashMap8 = linkedHashMap8;
                                                            str25 = str13;
                                                            linkedHashMap15 = linkedHashMap9;
                                                            map7 = map6;
                                                            str42 = str20;
                                                            str26 = str22;
                                                            str27 = str24;
                                                            linkedHashMap14 = linkedHashMap3;
                                                        } else {
                                                            R(linkedHashMap2, mapH);
                                                            Object obj27 = obj9;
                                                            R(linkedHashMap3, u("Skill", "pk_id", String.valueOf(mapH.getOrDefault("pk_id", obj27)), map3));
                                                            w1.b2("general_id", str28, arrayList12, map3);
                                                            w1.b2("skill_id", w1VarA1.T0(str28), arrayList12, map3);
                                                            if (z4) {
                                                                R(linkedHashMap5, a(18, str28, map3));
                                                            }
                                                            linkedHashMap12 = linkedHashMap2;
                                                            linkedHashMap13 = linkedHashMap5;
                                                            i13 = i11;
                                                            obj9 = obj27;
                                                            map9 = mapH;
                                                            str33 = str13;
                                                            str31 = str20;
                                                            str32 = str22;
                                                            str30 = str23;
                                                        }
                                                        arrayList11.add(objB);
                                                        linkedHashMap16 = linkedHashMap7;
                                                    } else {
                                                        linkedHashMap13 = linkedHashMap5;
                                                        linkedHashMap12 = linkedHashMap2;
                                                        i13 = i11;
                                                        if (i12 == 4) {
                                                            w1 w1VarA16 = w1.a1(null);
                                                            List listF15 = w1.f0("Skill", map3);
                                                            LinkedHashMap linkedHashMap1118 = new LinkedHashMap();
                                                            c.a.x("Skill", map3, linkedHashMap1118, "pk_id", "general_pk_id", "0");
                                                            linkedHashMap1118.put("skill_id", str28);
                                                            linkedHashMap1118.put(str24, str28);
                                                            linkedHashMap1118.put("skill_code", str28);
                                                            linkedHashMap1118.put("card_type", "4");
                                                            str30 = str23;
                                                            linkedHashMap1118.put("level", str30);
                                                            linkedHashMap1118.put("skill_level", str30);
                                                            linkedHashMap1118.put("position", "0");
                                                            linkedHashMap1118.put("pos", "0");
                                                            linkedHashMap1118.put("skill_position", "0");
                                                            linkedHashMap1118.put("get_time", String.valueOf(c7.g()));
                                                            linkedHashMap1118.put("is_natural", Boolean.FALSE);
                                                            linkedHashMap1118.put("is_new", Boolean.TRUE);
                                                            linkedHashMap1118.put("exp", "0");
                                                            linkedHashMap1118.put("extra_level", "0");
                                                            linkedHashMap1118.put("advanced_level", "0");
                                                            w1VarA16.S(str28, linkedHashMap1118);
                                                            listF15.add(linkedHashMap1118);
                                                            ArrayList arrayList211112 = new ArrayList();
                                                            str31 = str20;
                                                            str32 = str22;
                                                            Object[] objArr18 = {str31, new ArrayList(), str32, listF15};
                                                            str33 = str13;
                                                            map3.put("Skill", p5.z0(str33, arrayList211112, objArr18));
                                                            R(linkedHashMap3, linkedHashMap1118);
                                                            w1.b2("skill_id", str28, arrayList12, map3);
                                                            map9 = linkedHashMap1118;
                                                        } else {
                                                            str29 = str13;
                                                            str26 = str22;
                                                            str27 = str24;
                                                            linkedHashMap14 = linkedHashMap3;
                                                            if (i12 == 3) {
                                                                w1 w1VarA17 = w1.a1(null);
                                                                i12 = i12;
                                                                List listF16 = w1.f0("Equipment", map3);
                                                                LinkedHashMap linkedHashMap1119 = new LinkedHashMap();
                                                                c.a.x("Equipment", map3, linkedHashMap1119, "pk_id", "equipment_id", str28);
                                                                linkedHashMap1119.put("equip_id", str28);
                                                                linkedHashMap1119.put(str27, str28);
                                                                linkedHashMap1119.put("eid", str28);
                                                                linkedHashMap1119.put("level", 1);
                                                                linkedHashMap1119.put("equipment_level", 1);
                                                                linkedHashMap1119.put("refine_level", 1);
                                                                linkedHashMap1119.put("refine_exp", 0);
                                                                linkedHashMap1119.put("general_pk_id", null);
                                                                linkedHashMap1119.put("general_id", null);
                                                                linkedHashMap1119.put("user_general_id", null);
                                                                linkedHashMap1119.put("is_wear", "0");
                                                                linkedHashMap1119.put("wear", "0");
                                                                linkedHashMap1119.put("bore_list", new ArrayList());
                                                                linkedHashMap1119.put("get_time", Long.valueOf(c7.g()));
                                                                linkedHashMap1119.put("is_new", Boolean.TRUE);
                                                                w1VarA17.R(str28, linkedHashMap1119);
                                                                listF16.add(linkedHashMap1119);
                                                                str42 = str20;
                                                                str25 = str29;
                                                                map7 = map6;
                                                                map7.put("Equipment", p5.z0(str25, new ArrayList(), str42, new ArrayList(), str26, listF16));
                                                                linkedHashMap15 = linkedHashMap9;
                                                                R(linkedHashMap15, linkedHashMap1119);
                                                                arrayList13 = arrayList12;
                                                                w1.b2("equipment_id", str28, arrayList13, map7);
                                                                map8 = map7;
                                                                map9 = linkedHashMap1119;
                                                                it4 = arrayList13.iterator();
                                                                while (it4.hasNext()) {
                                                                    R(linkedHashMap8, (Map) it4.next());
                                                                }
                                                                objB = A(i12, i13, str28, map9);
                                                                map3 = map8;
                                                            } else {
                                                                str25 = str29;
                                                                str42 = str20;
                                                                linkedHashMap15 = linkedHashMap9;
                                                                map7 = map6;
                                                                objB = b(i13, i12, str21, map3);
                                                            }
                                                        }
                                                        arrayList11.add(objB);
                                                        linkedHashMap16 = linkedHashMap7;
                                                    }
                                                    str26 = str32;
                                                    str42 = str31;
                                                    linkedHashMap14 = linkedHashMap3;
                                                    str25 = str33;
                                                    str23 = str30;
                                                    linkedHashMap15 = linkedHashMap9;
                                                    map7 = map6;
                                                    str27 = str24;
                                                    map8 = map3;
                                                    arrayList13 = arrayList12;
                                                    it4 = arrayList13.iterator();
                                                    while (it4.hasNext()) {
                                                        R(linkedHashMap8, (Map) it4.next());
                                                    }
                                                    objB = A(i12, i13, str28, map9);
                                                    map3 = map8;
                                                    arrayList11.add(objB);
                                                    linkedHashMap16 = linkedHashMap7;
                                                } else {
                                                    linkedHashMap12 = linkedHashMap2;
                                                    linkedHashMap13 = linkedHashMap5;
                                                    linkedHashMap8 = linkedHashMap8;
                                                    str25 = str13;
                                                    map7 = map6;
                                                    str42 = str20;
                                                    str26 = str22;
                                                    str27 = str24;
                                                    arrayList11 = arrayList6;
                                                    linkedHashMap14 = linkedHashMap3;
                                                    linkedHashMap15 = linkedHashMap9;
                                                    Map mapB10 = b(i11, i12, str21, map3);
                                                    linkedHashMap16 = linkedHashMap7;
                                                    linkedHashMap16.put(String.valueOf(mapB10.get("pk_id")), mapB10);
                                                    arrayList11.add(w1.A2(i11, mapB10));
                                                }
                                            }
                                            linkedHashMap4 = linkedHashMap15;
                                            mapW0 = map7;
                                            linkedHashMap6 = linkedHashMap8;
                                            linkedHashMap = linkedHashMap16;
                                            arrayList6 = arrayList11;
                                            str41 = str26;
                                            linkedHashMap3 = linkedHashMap14;
                                            str44 = str23;
                                            str2 = str2;
                                            linkedHashMap5 = linkedHashMap13;
                                            str40 = str27;
                                            str13 = str25;
                                            strG2 = strG2;
                                            linkedHashMap2 = linkedHashMap12;
                                        }
                                        str14 = strG2;
                                        LinkedHashMap linkedHashMap11110 = linkedHashMap2;
                                        LinkedHashMap linkedHashMap214 = linkedHashMap5;
                                        str15 = str41;
                                        str16 = str2;
                                        str17 = str13;
                                        ArrayList arrayList211113 = arrayList6;
                                        LinkedHashMap linkedHashMap215 = linkedHashMap3;
                                        map4 = mapW0;
                                        str18 = str42;
                                        it2 = arrayList5.iterator();
                                        while (it2.hasNext()) {
                                            map3.put(K(str14, ((b) it2.next()).f758a), Boolean.TRUE);
                                        }
                                        map3.put("activity_last_receive_instance", str14);
                                        map3.put("activity_receive_count", Integer.valueOf(T(map3.get("activity_receive_count")) + 1));
                                        arrayList7 = new ArrayList(linkedHashMap7.values());
                                        ArrayList arrayList211114 = new ArrayList(linkedHashMap11110.values());
                                        ArrayList arrayList211115 = new ArrayList(linkedHashMap215.values());
                                        ArrayList arrayList211116 = new ArrayList(linkedHashMap9.values());
                                        arrayList8 = new ArrayList(linkedHashMap214.values());
                                        ArrayList arrayList211117 = new ArrayList(linkedHashMap8.values());
                                        linkedHashMap10 = new LinkedHashMap();
                                        arrayList9 = new ArrayList();
                                        if (!arrayList7.isEmpty()) {
                                            linkedHashMap10.put("Item", p5.z0(str17, new ArrayList(), str18, arrayList7, str15, new ArrayList()));
                                            arrayList9.add("Item");
                                        }
                                        c("General", arrayList9, arrayList211114, linkedHashMap10);
                                        c("Skill", arrayList9, arrayList211115, linkedHashMap10);
                                        c("Equipment", arrayList9, arrayList211116, linkedHashMap10);
                                        if (!arrayList8.isEmpty()) {
                                            linkedHashMap10.put("GeneralSoul", p5.z0(str17, new ArrayList(), str18, arrayList8, str15, new ArrayList()));
                                            arrayList9.add("GeneralSoul");
                                        }
                                        c("Atlas", arrayList9, arrayList211117, linkedHashMap10);
                                        linkedHashMapR2 = W();
                                        linkedHashMapR2.put("instance_id", str14);
                                        linkedHashMapR2.put("add_list", S(arrayList211113));
                                        linkedHashMapR2.put("reward_list", S(arrayList211113));
                                        Map[] mapArr17 = new Map[1];
                                        if ("level_general".equals(str14)) {
                                            obj8 = obj10;
                                            str19 = strE;
                                            arrayList10 = arrayList19;
                                            obj7 = obj11;
                                            linkedHashMap11 = I(map4, "level_general", 1, 9, 86400, f784f);
                                            map5 = map4;
                                            j3 = jF3;
                                        } else {
                                            obj7 = obj11;
                                            obj8 = obj10;
                                            str19 = strE;
                                            arrayList10 = arrayList19;
                                            map5 = map4;
                                            iE = E(jF3, map5);
                                            if ("finish_dungeon".equals(str14)) {
                                                j2 = jF3;
                                                linkedHashMap11 = I(map5, "finish_dungeon", 129, 10, iE, f785g);
                                            } else {
                                                j2 = jF3;
                                                if ("collect_god".equals(str14)) {
                                                    linkedHashMap11 = I(map5, "collect_god", 9, 11, iE, f786h);
                                                } else if (str16.equals(str14)) {
                                                    j3 = j2;
                                                    linkedHashMap11 = I(map5, "opening_recharge_gifts", 8, 12, Q(j2, map5), f787i);
                                                } else {
                                                    j3 = j2;
                                                    linkedHashMap11 = new LinkedHashMap();
                                                }
                                            }
                                            j3 = j2;
                                        }
                                        mapArr17[0] = linkedHashMap11;
                                        linkedHashMapR2.put("party", p5.v0(mapArr17));
                                        linkedHashMapR2.put("activity_list", e(j3, map5));
                                        sb = new StringBuilder();
                                        it3 = arrayList9.iterator();
                                        if (it3.hasNext()) {
                                            while (true) {
                                                sb.append((CharSequence) it3.next());
                                                if (it3.hasNext()) {
                                                    break;
                                                    break;
                                                }
                                                sb.append((CharSequence) ",");
                                            }
                                        }
                                        linkedHashMapR2.put("cmn_modules", sb.toString());
                                        linkedHashMapR2.put(obj7, linkedHashMap10);
                                        map2 = map5;
                                        obj2 = "cmn_modules";
                                        charSequence = ",";
                                        obj10 = obj8;
                                        str4 = str19;
                                        arrayList19 = arrayList10;
                                        obj11 = obj7;
                                    }
                                }
                            }
                            i8 = 0;
                            obj5 = obj11;
                            linkedHashMapR = linkedHashMapR2;
                            obj4 = obj2;
                        }
                        charSequence = ",";
                        map2 = mapW0;
                        str4 = strE;
                        obj2 = "cmn_modules";
                        i8 = 0;
                        obj5 = obj11;
                        linkedHashMapR = linkedHashMapR2;
                        obj4 = obj2;
                    } else {
                        str2 = "opening_recharge_gifts";
                        if ("level_general".equals(strG2) || "finish_dungeon".equals(strG2) || "collect_god".equals(strG2) || "opening_recharge_gifts".equals(strG2)) {
                            z = true;
                        } else {
                            z = false;
                        }
                        str3 = "奖励暂不可领取";
                        if (!z) {
                            if ("opening_recharge_gifts".equals(strG2) || Q(jF3, mapW0) > 0) {
                                if ("finish_dungeon".equals(strG2) || "collect_god".equals(strG2)) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if (z3 || E(jF3, mapW0) > 0) {
                                    if ("level_general".equals(strG2)) {
                                        bVarArr2 = f784f;
                                    } else if ("finish_dungeon".equals(strG2)) {
                                        bVarArr2 = f785g;
                                    } else if ("collect_god".equals(strG2)) {
                                        bVarArr2 = f786h;
                                    } else {
                                        if ("opening_recharge_gifts".equals(strG2)) {
                                            bVarArr2 = f787i;
                                        } else {
                                            bVarArr = new b[0];
                                        }
                                        arrayList5 = new ArrayList();
                                        length3 = bVarArr.length;
                                        i9 = 0;
                                        while (i9 < length3) {
                                            int i38 = length3;
                                            bVar2 = bVarArr[i9];
                                            b[] bVarArr11 = bVarArr;
                                            String str516 = str43;
                                            if (Boolean.TRUE.equals(mapW0.get(K(strG2, bVar2.f758a))) && J(bVar2.f763f, mapW0) >= bVar2.f758a) {
                                                arrayList5.add(bVar2);
                                            }
                                            i9++;
                                            length3 = i38;
                                            bVarArr = bVarArr11;
                                            str43 = str516;
                                        }
                                        str13 = str43;
                                        if (arrayList5.isEmpty()) {
                                            linkedHashMap = new LinkedHashMap();
                                            linkedHashMap2 = new LinkedHashMap();
                                            linkedHashMap3 = new LinkedHashMap();
                                            linkedHashMap4 = new LinkedHashMap();
                                            linkedHashMap5 = new LinkedHashMap();
                                            linkedHashMap6 = new LinkedHashMap();
                                            arrayList6 = new ArrayList();
                                            it = arrayList5.iterator();
                                            map3 = mapW0;
                                            while (true) {
                                                linkedHashMap7 = linkedHashMap;
                                                linkedHashMap8 = linkedHashMap6;
                                                linkedHashMap9 = linkedHashMap4;
                                                if (it.hasNext()) {
                                                    break;
                                                }
                                                map6 = mapW0;
                                                bVar = (b) it.next();
                                                i10 = bVar.f762e;
                                                str20 = str42;
                                                str21 = bVar.f760c;
                                                str22 = str41;
                                                i11 = bVar.f761d;
                                                str23 = str44;
                                                str24 = str40;
                                                if (i10 == 6) {
                                                    Map mapA9 = a(i11, str21, map3);
                                                    linkedHashMap5.put(String.valueOf(mapA9.get("pk_id")), mapA9);
                                                    String str517 = bVar.f760c;
                                                    arrayList6.add(p5.z0("pk_id", mapA9.getOrDefault("pk_id", str517), "id", str517, "item_id", str517, "general_id", str517, "num", Integer.valueOf(i11), "item_num", Integer.valueOf(i11), "item_type", 6, "type", 6, "card_type", mapA9.getOrDefault("card_type", 1), "is_new", Boolean.TRUE));
                                                    linkedHashMap12 = linkedHashMap2;
                                                    linkedHashMap13 = linkedHashMap5;
                                                    linkedHashMap16 = linkedHashMap7;
                                                    linkedHashMap8 = linkedHashMap8;
                                                    str25 = str13;
                                                    map7 = map6;
                                                    str42 = str20;
                                                    str26 = str22;
                                                    str27 = str24;
                                                    arrayList11 = arrayList6;
                                                    linkedHashMap14 = linkedHashMap3;
                                                    linkedHashMap15 = linkedHashMap9;
                                                } else {
                                                    zEquals = str2.equals(strG2);
                                                    i12 = bVar.f762e;
                                                    if (zEquals) {
                                                        w1VarA1 = w1.a1(null);
                                                        arrayList12 = new ArrayList();
                                                        str28 = bVar.f759b;
                                                        arrayList11 = arrayList6;
                                                        if (i12 == 1) {
                                                            if (u("General", "general_id", str28, map3) != null) {
                                                                z4 = true;
                                                            } else {
                                                                z4 = false;
                                                            }
                                                            mapH = w1VarA1.h(str28, map3);
                                                            if (mapH == null) {
                                                                objB = A(i12, i11, str28, null);
                                                                linkedHashMap12 = linkedHashMap2;
                                                                linkedHashMap13 = linkedHashMap5;
                                                                linkedHashMap8 = linkedHashMap8;
                                                                str25 = str13;
                                                                linkedHashMap15 = linkedHashMap9;
                                                                map7 = map6;
                                                                str42 = str20;
                                                                str26 = str22;
                                                                str27 = str24;
                                                                linkedHashMap14 = linkedHashMap3;
                                                            } else {
                                                                R(linkedHashMap2, mapH);
                                                                Object obj28 = obj9;
                                                                R(linkedHashMap3, u("Skill", "pk_id", String.valueOf(mapH.getOrDefault("pk_id", obj28)), map3));
                                                                w1.b2("general_id", str28, arrayList12, map3);
                                                                w1.b2("skill_id", w1VarA1.T0(str28), arrayList12, map3);
                                                                if (z4) {
                                                                    R(linkedHashMap5, a(18, str28, map3));
                                                                }
                                                                linkedHashMap12 = linkedHashMap2;
                                                                linkedHashMap13 = linkedHashMap5;
                                                                i13 = i11;
                                                                obj9 = obj28;
                                                                map9 = mapH;
                                                                str33 = str13;
                                                                str31 = str20;
                                                                str32 = str22;
                                                                str30 = str23;
                                                            }
                                                            arrayList11.add(objB);
                                                            linkedHashMap16 = linkedHashMap7;
                                                        } else {
                                                            linkedHashMap13 = linkedHashMap5;
                                                            linkedHashMap12 = linkedHashMap2;
                                                            i13 = i11;
                                                            if (i12 == 4) {
                                                                w1 w1VarA18 = w1.a1(null);
                                                                List listF17 = w1.f0("Skill", map3);
                                                                LinkedHashMap linkedHashMap11111 = new LinkedHashMap();
                                                                c.a.x("Skill", map3, linkedHashMap11111, "pk_id", "general_pk_id", "0");
                                                                linkedHashMap11111.put("skill_id", str28);
                                                                linkedHashMap11111.put(str24, str28);
                                                                linkedHashMap11111.put("skill_code", str28);
                                                                linkedHashMap11111.put("card_type", "4");
                                                                str30 = str23;
                                                                linkedHashMap11111.put("level", str30);
                                                                linkedHashMap11111.put("skill_level", str30);
                                                                linkedHashMap11111.put("position", "0");
                                                                linkedHashMap11111.put("pos", "0");
                                                                linkedHashMap11111.put("skill_position", "0");
                                                                linkedHashMap11111.put("get_time", String.valueOf(c7.g()));
                                                                linkedHashMap11111.put("is_natural", Boolean.FALSE);
                                                                linkedHashMap11111.put("is_new", Boolean.TRUE);
                                                                linkedHashMap11111.put("exp", "0");
                                                                linkedHashMap11111.put("extra_level", "0");
                                                                linkedHashMap11111.put("advanced_level", "0");
                                                                w1VarA18.S(str28, linkedHashMap11111);
                                                                listF17.add(linkedHashMap11111);
                                                                ArrayList arrayList211118 = new ArrayList();
                                                                str31 = str20;
                                                                str32 = str22;
                                                                Object[] objArr19 = {str31, new ArrayList(), str32, listF17};
                                                                str33 = str13;
                                                                map3.put("Skill", p5.z0(str33, arrayList211118, objArr19));
                                                                R(linkedHashMap3, linkedHashMap11111);
                                                                w1.b2("skill_id", str28, arrayList12, map3);
                                                                map9 = linkedHashMap11111;
                                                            } else {
                                                                str29 = str13;
                                                                str26 = str22;
                                                                str27 = str24;
                                                                linkedHashMap14 = linkedHashMap3;
                                                                if (i12 == 3) {
                                                                    w1 w1VarA19 = w1.a1(null);
                                                                    i12 = i12;
                                                                    List listF18 = w1.f0("Equipment", map3);
                                                                    LinkedHashMap linkedHashMap11112 = new LinkedHashMap();
                                                                    c.a.x("Equipment", map3, linkedHashMap11112, "pk_id", "equipment_id", str28);
                                                                    linkedHashMap11112.put("equip_id", str28);
                                                                    linkedHashMap11112.put(str27, str28);
                                                                    linkedHashMap11112.put("eid", str28);
                                                                    linkedHashMap11112.put("level", 1);
                                                                    linkedHashMap11112.put("equipment_level", 1);
                                                                    linkedHashMap11112.put("refine_level", 1);
                                                                    linkedHashMap11112.put("refine_exp", 0);
                                                                    linkedHashMap11112.put("general_pk_id", null);
                                                                    linkedHashMap11112.put("general_id", null);
                                                                    linkedHashMap11112.put("user_general_id", null);
                                                                    linkedHashMap11112.put("is_wear", "0");
                                                                    linkedHashMap11112.put("wear", "0");
                                                                    linkedHashMap11112.put("bore_list", new ArrayList());
                                                                    linkedHashMap11112.put("get_time", Long.valueOf(c7.g()));
                                                                    linkedHashMap11112.put("is_new", Boolean.TRUE);
                                                                    w1VarA19.R(str28, linkedHashMap11112);
                                                                    listF18.add(linkedHashMap11112);
                                                                    str42 = str20;
                                                                    str25 = str29;
                                                                    map7 = map6;
                                                                    map7.put("Equipment", p5.z0(str25, new ArrayList(), str42, new ArrayList(), str26, listF18));
                                                                    linkedHashMap15 = linkedHashMap9;
                                                                    R(linkedHashMap15, linkedHashMap11112);
                                                                    arrayList13 = arrayList12;
                                                                    w1.b2("equipment_id", str28, arrayList13, map7);
                                                                    map8 = map7;
                                                                    map9 = linkedHashMap11112;
                                                                    it4 = arrayList13.iterator();
                                                                    while (it4.hasNext()) {
                                                                        R(linkedHashMap8, (Map) it4.next());
                                                                    }
                                                                    objB = A(i12, i13, str28, map9);
                                                                    map3 = map8;
                                                                } else {
                                                                    str25 = str29;
                                                                    str42 = str20;
                                                                    linkedHashMap15 = linkedHashMap9;
                                                                    map7 = map6;
                                                                    objB = b(i13, i12, str21, map3);
                                                                }
                                                            }
                                                            arrayList11.add(objB);
                                                            linkedHashMap16 = linkedHashMap7;
                                                        }
                                                        str26 = str32;
                                                        str42 = str31;
                                                        linkedHashMap14 = linkedHashMap3;
                                                        str25 = str33;
                                                        str23 = str30;
                                                        linkedHashMap15 = linkedHashMap9;
                                                        map7 = map6;
                                                        str27 = str24;
                                                        map8 = map3;
                                                        arrayList13 = arrayList12;
                                                        it4 = arrayList13.iterator();
                                                        while (it4.hasNext()) {
                                                            R(linkedHashMap8, (Map) it4.next());
                                                        }
                                                        objB = A(i12, i13, str28, map9);
                                                        map3 = map8;
                                                        arrayList11.add(objB);
                                                        linkedHashMap16 = linkedHashMap7;
                                                    } else {
                                                        linkedHashMap12 = linkedHashMap2;
                                                        linkedHashMap13 = linkedHashMap5;
                                                        linkedHashMap8 = linkedHashMap8;
                                                        str25 = str13;
                                                        map7 = map6;
                                                        str42 = str20;
                                                        str26 = str22;
                                                        str27 = str24;
                                                        arrayList11 = arrayList6;
                                                        linkedHashMap14 = linkedHashMap3;
                                                        linkedHashMap15 = linkedHashMap9;
                                                        Map mapB11 = b(i11, i12, str21, map3);
                                                        linkedHashMap16 = linkedHashMap7;
                                                        linkedHashMap16.put(String.valueOf(mapB11.get("pk_id")), mapB11);
                                                        arrayList11.add(w1.A2(i11, mapB11));
                                                    }
                                                }
                                                linkedHashMap4 = linkedHashMap15;
                                                mapW0 = map7;
                                                linkedHashMap6 = linkedHashMap8;
                                                linkedHashMap = linkedHashMap16;
                                                arrayList6 = arrayList11;
                                                str41 = str26;
                                                linkedHashMap3 = linkedHashMap14;
                                                str44 = str23;
                                                str2 = str2;
                                                linkedHashMap5 = linkedHashMap13;
                                                str40 = str27;
                                                str13 = str25;
                                                strG2 = strG2;
                                                linkedHashMap2 = linkedHashMap12;
                                            }
                                            str14 = strG2;
                                            LinkedHashMap linkedHashMap11113 = linkedHashMap2;
                                            LinkedHashMap linkedHashMap216 = linkedHashMap5;
                                            str15 = str41;
                                            str16 = str2;
                                            str17 = str13;
                                            ArrayList arrayList211119 = arrayList6;
                                            LinkedHashMap linkedHashMap217 = linkedHashMap3;
                                            map4 = mapW0;
                                            str18 = str42;
                                            it2 = arrayList5.iterator();
                                            while (it2.hasNext()) {
                                                map3.put(K(str14, ((b) it2.next()).f758a), Boolean.TRUE);
                                            }
                                            map3.put("activity_last_receive_instance", str14);
                                            map3.put("activity_receive_count", Integer.valueOf(T(map3.get("activity_receive_count")) + 1));
                                            arrayList7 = new ArrayList(linkedHashMap7.values());
                                            ArrayList arrayList2111110 = new ArrayList(linkedHashMap11113.values());
                                            ArrayList arrayList2111111 = new ArrayList(linkedHashMap217.values());
                                            ArrayList arrayList2111112 = new ArrayList(linkedHashMap9.values());
                                            arrayList8 = new ArrayList(linkedHashMap216.values());
                                            ArrayList arrayList2111113 = new ArrayList(linkedHashMap8.values());
                                            linkedHashMap10 = new LinkedHashMap();
                                            arrayList9 = new ArrayList();
                                            if (!arrayList7.isEmpty()) {
                                                linkedHashMap10.put("Item", p5.z0(str17, new ArrayList(), str18, arrayList7, str15, new ArrayList()));
                                                arrayList9.add("Item");
                                            }
                                            c("General", arrayList9, arrayList2111110, linkedHashMap10);
                                            c("Skill", arrayList9, arrayList2111111, linkedHashMap10);
                                            c("Equipment", arrayList9, arrayList2111112, linkedHashMap10);
                                            if (!arrayList8.isEmpty()) {
                                                linkedHashMap10.put("GeneralSoul", p5.z0(str17, new ArrayList(), str18, arrayList8, str15, new ArrayList()));
                                                arrayList9.add("GeneralSoul");
                                            }
                                            c("Atlas", arrayList9, arrayList2111113, linkedHashMap10);
                                            linkedHashMapR2 = W();
                                            linkedHashMapR2.put("instance_id", str14);
                                            linkedHashMapR2.put("add_list", S(arrayList211119));
                                            linkedHashMapR2.put("reward_list", S(arrayList211119));
                                            Map[] mapArr18 = new Map[1];
                                            if ("level_general".equals(str14)) {
                                                obj8 = obj10;
                                                str19 = strE;
                                                arrayList10 = arrayList19;
                                                obj7 = obj11;
                                                linkedHashMap11 = I(map4, "level_general", 1, 9, 86400, f784f);
                                                map5 = map4;
                                                j3 = jF3;
                                            } else {
                                                obj7 = obj11;
                                                obj8 = obj10;
                                                str19 = strE;
                                                arrayList10 = arrayList19;
                                                map5 = map4;
                                                iE = E(jF3, map5);
                                                if ("finish_dungeon".equals(str14)) {
                                                    j2 = jF3;
                                                    linkedHashMap11 = I(map5, "finish_dungeon", 129, 10, iE, f785g);
                                                } else {
                                                    j2 = jF3;
                                                    if ("collect_god".equals(str14)) {
                                                        linkedHashMap11 = I(map5, "collect_god", 9, 11, iE, f786h);
                                                    } else if (str16.equals(str14)) {
                                                        j3 = j2;
                                                        linkedHashMap11 = I(map5, "opening_recharge_gifts", 8, 12, Q(j2, map5), f787i);
                                                    } else {
                                                        j3 = j2;
                                                        linkedHashMap11 = new LinkedHashMap();
                                                    }
                                                }
                                                j3 = j2;
                                            }
                                            mapArr18[0] = linkedHashMap11;
                                            linkedHashMapR2.put("party", p5.v0(mapArr18));
                                            linkedHashMapR2.put("activity_list", e(j3, map5));
                                            sb = new StringBuilder();
                                            it3 = arrayList9.iterator();
                                            if (it3.hasNext()) {
                                                while (true) {
                                                    sb.append((CharSequence) it3.next());
                                                    if (it3.hasNext()) {
                                                        break;
                                                    }
                                                    sb.append((CharSequence) ",");
                                                }
                                            }
                                            linkedHashMapR2.put("cmn_modules", sb.toString());
                                            linkedHashMapR2.put(obj7, linkedHashMap10);
                                            map2 = map5;
                                            obj2 = "cmn_modules";
                                            charSequence = ",";
                                            obj10 = obj8;
                                            str4 = str19;
                                            arrayList19 = arrayList10;
                                            obj11 = obj7;
                                        }
                                    }
                                    bVarArr = bVarArr2;
                                    arrayList5 = new ArrayList();
                                    length3 = bVarArr.length;
                                    i9 = 0;
                                    while (i9 < length3) {
                                        int i39 = length3;
                                        bVar2 = bVarArr[i9];
                                        b[] bVarArr12 = bVarArr;
                                        String str518 = str43;
                                        if (Boolean.TRUE.equals(mapW0.get(K(strG2, bVar2.f758a)))) {
                                        }
                                        i9++;
                                        length3 = i39;
                                        bVarArr = bVarArr12;
                                        str43 = str518;
                                    }
                                    str13 = str43;
                                    if (arrayList5.isEmpty()) {
                                        linkedHashMap = new LinkedHashMap();
                                        linkedHashMap2 = new LinkedHashMap();
                                        linkedHashMap3 = new LinkedHashMap();
                                        linkedHashMap4 = new LinkedHashMap();
                                        linkedHashMap5 = new LinkedHashMap();
                                        linkedHashMap6 = new LinkedHashMap();
                                        arrayList6 = new ArrayList();
                                        it = arrayList5.iterator();
                                        map3 = mapW0;
                                        while (true) {
                                            linkedHashMap7 = linkedHashMap;
                                            linkedHashMap8 = linkedHashMap6;
                                            linkedHashMap9 = linkedHashMap4;
                                            if (it.hasNext()) {
                                                break;
                                                break;
                                            }
                                            map6 = mapW0;
                                            bVar = (b) it.next();
                                            i10 = bVar.f762e;
                                            str20 = str42;
                                            str21 = bVar.f760c;
                                            str22 = str41;
                                            i11 = bVar.f761d;
                                            str23 = str44;
                                            str24 = str40;
                                            if (i10 == 6) {
                                                Map mapA10 = a(i11, str21, map3);
                                                linkedHashMap5.put(String.valueOf(mapA10.get("pk_id")), mapA10);
                                                String str519 = bVar.f760c;
                                                arrayList6.add(p5.z0("pk_id", mapA10.getOrDefault("pk_id", str519), "id", str519, "item_id", str519, "general_id", str519, "num", Integer.valueOf(i11), "item_num", Integer.valueOf(i11), "item_type", 6, "type", 6, "card_type", mapA10.getOrDefault("card_type", 1), "is_new", Boolean.TRUE));
                                                linkedHashMap12 = linkedHashMap2;
                                                linkedHashMap13 = linkedHashMap5;
                                                linkedHashMap16 = linkedHashMap7;
                                                linkedHashMap8 = linkedHashMap8;
                                                str25 = str13;
                                                map7 = map6;
                                                str42 = str20;
                                                str26 = str22;
                                                str27 = str24;
                                                arrayList11 = arrayList6;
                                                linkedHashMap14 = linkedHashMap3;
                                                linkedHashMap15 = linkedHashMap9;
                                            } else {
                                                zEquals = str2.equals(strG2);
                                                i12 = bVar.f762e;
                                                if (zEquals) {
                                                    w1VarA1 = w1.a1(null);
                                                    arrayList12 = new ArrayList();
                                                    str28 = bVar.f759b;
                                                    arrayList11 = arrayList6;
                                                    if (i12 == 1) {
                                                        if (u("General", "general_id", str28, map3) != null) {
                                                            z4 = true;
                                                        } else {
                                                            z4 = false;
                                                        }
                                                        mapH = w1VarA1.h(str28, map3);
                                                        if (mapH == null) {
                                                            objB = A(i12, i11, str28, null);
                                                            linkedHashMap12 = linkedHashMap2;
                                                            linkedHashMap13 = linkedHashMap5;
                                                            linkedHashMap8 = linkedHashMap8;
                                                            str25 = str13;
                                                            linkedHashMap15 = linkedHashMap9;
                                                            map7 = map6;
                                                            str42 = str20;
                                                            str26 = str22;
                                                            str27 = str24;
                                                            linkedHashMap14 = linkedHashMap3;
                                                        } else {
                                                            R(linkedHashMap2, mapH);
                                                            Object obj29 = obj9;
                                                            R(linkedHashMap3, u("Skill", "pk_id", String.valueOf(mapH.getOrDefault("pk_id", obj29)), map3));
                                                            w1.b2("general_id", str28, arrayList12, map3);
                                                            w1.b2("skill_id", w1VarA1.T0(str28), arrayList12, map3);
                                                            if (z4) {
                                                                R(linkedHashMap5, a(18, str28, map3));
                                                            }
                                                            linkedHashMap12 = linkedHashMap2;
                                                            linkedHashMap13 = linkedHashMap5;
                                                            i13 = i11;
                                                            obj9 = obj29;
                                                            map9 = mapH;
                                                            str33 = str13;
                                                            str31 = str20;
                                                            str32 = str22;
                                                            str30 = str23;
                                                        }
                                                        arrayList11.add(objB);
                                                        linkedHashMap16 = linkedHashMap7;
                                                    } else {
                                                        linkedHashMap13 = linkedHashMap5;
                                                        linkedHashMap12 = linkedHashMap2;
                                                        i13 = i11;
                                                        if (i12 == 4) {
                                                            w1 w1VarA110 = w1.a1(null);
                                                            List listF19 = w1.f0("Skill", map3);
                                                            LinkedHashMap linkedHashMap11114 = new LinkedHashMap();
                                                            c.a.x("Skill", map3, linkedHashMap11114, "pk_id", "general_pk_id", "0");
                                                            linkedHashMap11114.put("skill_id", str28);
                                                            linkedHashMap11114.put(str24, str28);
                                                            linkedHashMap11114.put("skill_code", str28);
                                                            linkedHashMap11114.put("card_type", "4");
                                                            str30 = str23;
                                                            linkedHashMap11114.put("level", str30);
                                                            linkedHashMap11114.put("skill_level", str30);
                                                            linkedHashMap11114.put("position", "0");
                                                            linkedHashMap11114.put("pos", "0");
                                                            linkedHashMap11114.put("skill_position", "0");
                                                            linkedHashMap11114.put("get_time", String.valueOf(c7.g()));
                                                            linkedHashMap11114.put("is_natural", Boolean.FALSE);
                                                            linkedHashMap11114.put("is_new", Boolean.TRUE);
                                                            linkedHashMap11114.put("exp", "0");
                                                            linkedHashMap11114.put("extra_level", "0");
                                                            linkedHashMap11114.put("advanced_level", "0");
                                                            w1VarA110.S(str28, linkedHashMap11114);
                                                            listF19.add(linkedHashMap11114);
                                                            ArrayList arrayList2111114 = new ArrayList();
                                                            str31 = str20;
                                                            str32 = str22;
                                                            Object[] objArr110 = {str31, new ArrayList(), str32, listF19};
                                                            str33 = str13;
                                                            map3.put("Skill", p5.z0(str33, arrayList2111114, objArr110));
                                                            R(linkedHashMap3, linkedHashMap11114);
                                                            w1.b2("skill_id", str28, arrayList12, map3);
                                                            map9 = linkedHashMap11114;
                                                        } else {
                                                            str29 = str13;
                                                            str26 = str22;
                                                            str27 = str24;
                                                            linkedHashMap14 = linkedHashMap3;
                                                            if (i12 == 3) {
                                                                w1 w1VarA111 = w1.a1(null);
                                                                i12 = i12;
                                                                List listF110 = w1.f0("Equipment", map3);
                                                                LinkedHashMap linkedHashMap11115 = new LinkedHashMap();
                                                                c.a.x("Equipment", map3, linkedHashMap11115, "pk_id", "equipment_id", str28);
                                                                linkedHashMap11115.put("equip_id", str28);
                                                                linkedHashMap11115.put(str27, str28);
                                                                linkedHashMap11115.put("eid", str28);
                                                                linkedHashMap11115.put("level", 1);
                                                                linkedHashMap11115.put("equipment_level", 1);
                                                                linkedHashMap11115.put("refine_level", 1);
                                                                linkedHashMap11115.put("refine_exp", 0);
                                                                linkedHashMap11115.put("general_pk_id", null);
                                                                linkedHashMap11115.put("general_id", null);
                                                                linkedHashMap11115.put("user_general_id", null);
                                                                linkedHashMap11115.put("is_wear", "0");
                                                                linkedHashMap11115.put("wear", "0");
                                                                linkedHashMap11115.put("bore_list", new ArrayList());
                                                                linkedHashMap11115.put("get_time", Long.valueOf(c7.g()));
                                                                linkedHashMap11115.put("is_new", Boolean.TRUE);
                                                                w1VarA111.R(str28, linkedHashMap11115);
                                                                listF110.add(linkedHashMap11115);
                                                                str42 = str20;
                                                                str25 = str29;
                                                                map7 = map6;
                                                                map7.put("Equipment", p5.z0(str25, new ArrayList(), str42, new ArrayList(), str26, listF110));
                                                                linkedHashMap15 = linkedHashMap9;
                                                                R(linkedHashMap15, linkedHashMap11115);
                                                                arrayList13 = arrayList12;
                                                                w1.b2("equipment_id", str28, arrayList13, map7);
                                                                map8 = map7;
                                                                map9 = linkedHashMap11115;
                                                                it4 = arrayList13.iterator();
                                                                while (it4.hasNext()) {
                                                                    R(linkedHashMap8, (Map) it4.next());
                                                                }
                                                                objB = A(i12, i13, str28, map9);
                                                                map3 = map8;
                                                            } else {
                                                                str25 = str29;
                                                                str42 = str20;
                                                                linkedHashMap15 = linkedHashMap9;
                                                                map7 = map6;
                                                                objB = b(i13, i12, str21, map3);
                                                            }
                                                        }
                                                        arrayList11.add(objB);
                                                        linkedHashMap16 = linkedHashMap7;
                                                    }
                                                    str26 = str32;
                                                    str42 = str31;
                                                    linkedHashMap14 = linkedHashMap3;
                                                    str25 = str33;
                                                    str23 = str30;
                                                    linkedHashMap15 = linkedHashMap9;
                                                    map7 = map6;
                                                    str27 = str24;
                                                    map8 = map3;
                                                    arrayList13 = arrayList12;
                                                    it4 = arrayList13.iterator();
                                                    while (it4.hasNext()) {
                                                        R(linkedHashMap8, (Map) it4.next());
                                                    }
                                                    objB = A(i12, i13, str28, map9);
                                                    map3 = map8;
                                                    arrayList11.add(objB);
                                                    linkedHashMap16 = linkedHashMap7;
                                                } else {
                                                    linkedHashMap12 = linkedHashMap2;
                                                    linkedHashMap13 = linkedHashMap5;
                                                    linkedHashMap8 = linkedHashMap8;
                                                    str25 = str13;
                                                    map7 = map6;
                                                    str42 = str20;
                                                    str26 = str22;
                                                    str27 = str24;
                                                    arrayList11 = arrayList6;
                                                    linkedHashMap14 = linkedHashMap3;
                                                    linkedHashMap15 = linkedHashMap9;
                                                    Map mapB12 = b(i11, i12, str21, map3);
                                                    linkedHashMap16 = linkedHashMap7;
                                                    linkedHashMap16.put(String.valueOf(mapB12.get("pk_id")), mapB12);
                                                    arrayList11.add(w1.A2(i11, mapB12));
                                                }
                                            }
                                            linkedHashMap4 = linkedHashMap15;
                                            mapW0 = map7;
                                            linkedHashMap6 = linkedHashMap8;
                                            linkedHashMap = linkedHashMap16;
                                            arrayList6 = arrayList11;
                                            str41 = str26;
                                            linkedHashMap3 = linkedHashMap14;
                                            str44 = str23;
                                            str2 = str2;
                                            linkedHashMap5 = linkedHashMap13;
                                            str40 = str27;
                                            str13 = str25;
                                            strG2 = strG2;
                                            linkedHashMap2 = linkedHashMap12;
                                        }
                                        str14 = strG2;
                                        LinkedHashMap linkedHashMap11116 = linkedHashMap2;
                                        LinkedHashMap linkedHashMap218 = linkedHashMap5;
                                        str15 = str41;
                                        str16 = str2;
                                        str17 = str13;
                                        ArrayList arrayList2111115 = arrayList6;
                                        LinkedHashMap linkedHashMap219 = linkedHashMap3;
                                        map4 = mapW0;
                                        str18 = str42;
                                        it2 = arrayList5.iterator();
                                        while (it2.hasNext()) {
                                            map3.put(K(str14, ((b) it2.next()).f758a), Boolean.TRUE);
                                        }
                                        map3.put("activity_last_receive_instance", str14);
                                        map3.put("activity_receive_count", Integer.valueOf(T(map3.get("activity_receive_count")) + 1));
                                        arrayList7 = new ArrayList(linkedHashMap7.values());
                                        ArrayList arrayList2111116 = new ArrayList(linkedHashMap11116.values());
                                        ArrayList arrayList2111117 = new ArrayList(linkedHashMap219.values());
                                        ArrayList arrayList2111118 = new ArrayList(linkedHashMap9.values());
                                        arrayList8 = new ArrayList(linkedHashMap218.values());
                                        ArrayList arrayList2111119 = new ArrayList(linkedHashMap8.values());
                                        linkedHashMap10 = new LinkedHashMap();
                                        arrayList9 = new ArrayList();
                                        if (!arrayList7.isEmpty()) {
                                            linkedHashMap10.put("Item", p5.z0(str17, new ArrayList(), str18, arrayList7, str15, new ArrayList()));
                                            arrayList9.add("Item");
                                        }
                                        c("General", arrayList9, arrayList2111116, linkedHashMap10);
                                        c("Skill", arrayList9, arrayList2111117, linkedHashMap10);
                                        c("Equipment", arrayList9, arrayList2111118, linkedHashMap10);
                                        if (!arrayList8.isEmpty()) {
                                            linkedHashMap10.put("GeneralSoul", p5.z0(str17, new ArrayList(), str18, arrayList8, str15, new ArrayList()));
                                            arrayList9.add("GeneralSoul");
                                        }
                                        c("Atlas", arrayList9, arrayList2111119, linkedHashMap10);
                                        linkedHashMapR2 = W();
                                        linkedHashMapR2.put("instance_id", str14);
                                        linkedHashMapR2.put("add_list", S(arrayList2111115));
                                        linkedHashMapR2.put("reward_list", S(arrayList2111115));
                                        Map[] mapArr19 = new Map[1];
                                        if ("level_general".equals(str14)) {
                                            obj8 = obj10;
                                            str19 = strE;
                                            arrayList10 = arrayList19;
                                            obj7 = obj11;
                                            linkedHashMap11 = I(map4, "level_general", 1, 9, 86400, f784f);
                                            map5 = map4;
                                            j3 = jF3;
                                        } else {
                                            obj7 = obj11;
                                            obj8 = obj10;
                                            str19 = strE;
                                            arrayList10 = arrayList19;
                                            map5 = map4;
                                            iE = E(jF3, map5);
                                            if ("finish_dungeon".equals(str14)) {
                                                j2 = jF3;
                                                linkedHashMap11 = I(map5, "finish_dungeon", 129, 10, iE, f785g);
                                            } else {
                                                j2 = jF3;
                                                if ("collect_god".equals(str14)) {
                                                    linkedHashMap11 = I(map5, "collect_god", 9, 11, iE, f786h);
                                                } else if (str16.equals(str14)) {
                                                    j3 = j2;
                                                    linkedHashMap11 = I(map5, "opening_recharge_gifts", 8, 12, Q(j2, map5), f787i);
                                                } else {
                                                    j3 = j2;
                                                    linkedHashMap11 = new LinkedHashMap();
                                                }
                                            }
                                            j3 = j2;
                                        }
                                        mapArr19[0] = linkedHashMap11;
                                        linkedHashMapR2.put("party", p5.v0(mapArr19));
                                        linkedHashMapR2.put("activity_list", e(j3, map5));
                                        sb = new StringBuilder();
                                        it3 = arrayList9.iterator();
                                        if (it3.hasNext()) {
                                            while (true) {
                                                sb.append((CharSequence) it3.next());
                                                if (it3.hasNext()) {
                                                    break;
                                                    break;
                                                }
                                                sb.append((CharSequence) ",");
                                            }
                                        }
                                        linkedHashMapR2.put("cmn_modules", sb.toString());
                                        linkedHashMapR2.put(obj7, linkedHashMap10);
                                        map2 = map5;
                                        obj2 = "cmn_modules";
                                        charSequence = ",";
                                        obj10 = obj8;
                                        str4 = str19;
                                        arrayList19 = arrayList10;
                                        obj11 = obj7;
                                    }
                                } else {
                                    str3 = "finish_dungeon".equals(strG2) ? "开服冲关活动已结束" : "集神将活动已结束";
                                }
                            } else {
                                str3 = "充值有礼活动已结束";
                            }
                            linkedHashMapR2 = r(str3);
                            linkedHashMapR2.put("activity_list", e(jF3, mapW0));
                            charSequence = ",";
                            map2 = mapW0;
                            str4 = strE;
                            obj2 = "cmn_modules";
                        } else {
                            charSequence = ",";
                            map2 = mapW0;
                            str4 = strE;
                            obj = "reward_list";
                            P(map2);
                            strL = L(strG2);
                            str5 = "activity_received_cumulative_login_day_";
                            if ("daily_check".equals(strG2)) {
                                iD = D(map2);
                                if (iD <= 0) {
                                    obj2 = "cmn_modules";
                                    linkedHashMapR2 = r("奖励暂不可领取");
                                } else {
                                    obj2 = "cmn_modules";
                                    obj3 = "Item";
                                    i2 = iD;
                                    strL = n(iD);
                                    str7 = "cumulative_login_yuanbao";
                                    str6 = "continuous_signin";
                                    i3 = -1;
                                    str8 = strL;
                                    iB = -1;
                                    bool = Boolean.TRUE;
                                    if (bool.equals(map2.get(str8))) {
                                        linkedHashMapR2 = r("奖励已领取");
                                    } else {
                                        map2.put("activity_last_receive_instance", strG2);
                                        map2.put(str8, bool);
                                        if (i2 > 0) {
                                            map2.put(L("daily_check"), bool);
                                        }
                                        map2.put("activity_receive_count", Integer.valueOf(T(map2.get("activity_receive_count")) + 1));
                                        hVarArr = f781c;
                                        if (iB > 0) {
                                            hVarArr2 = f780b[iB - 1];
                                        } else {
                                            if (i3 > 0) {
                                                hVarArr2 = hVarArr[i3 - 1];
                                            } else {
                                                com.sgscq.vpn.config.h[] hVarArr16 = new com.sgscq.vpn.config.h[1];
                                                str9 = "month_signin";
                                                if (str9.equals(strG2) || "daily_check".equals(strG2)) {
                                                    hVar = new com.sgscq.vpn.config.h("791661", 5);
                                                } else {
                                                    hVar = new com.sgscq.vpn.config.h("600001", 1);
                                                }
                                                hVarArr16[0] = hVar;
                                                hVarArr2 = hVarArr16;
                                            }
                                            arrayList = new ArrayList();
                                            length = hVarArr2.length;
                                            i4 = 0;
                                            while (i4 < length) {
                                                int i211110 = length;
                                                com.sgscq.vpn.config.h hVar18 = hVarArr2[i4];
                                                arrayList.add(b(hVar18.f578c, hVar18.f579d, (String) hVar18.f577b, map2));
                                                i4++;
                                                length = i211110;
                                                str5 = str5;
                                                str7 = str7;
                                            }
                                            str10 = str7;
                                            str11 = str5;
                                            arrayList2 = new ArrayList();
                                            i5 = 0;
                                            while (i5 < arrayList.size()) {
                                                if (i5 < hVarArr2.length) {
                                                    iL2 = hVarArr2[i5].f578c;
                                                    obj6 = obj12;
                                                } else {
                                                    obj6 = obj12;
                                                    iL2 = w1.l2(String.valueOf(((Map) arrayList.get(i5)).getOrDefault(obj6, 1)), 1);
                                                }
                                                arrayList2.add(w1.A2(iL2, (Map) arrayList.get(i5)));
                                                i5++;
                                                obj12 = obj6;
                                                hVarArr2 = hVarArr2;
                                            }
                                            LinkedHashMap linkedHashMapW12 = W();
                                            linkedHashMapW12.put("instance_id", strG2);
                                            linkedHashMapW12.put("add_list", S(arrayList2));
                                            linkedHashMapW12.put(obj, S(arrayList2));
                                            Map[] mapArr20 = new Map[1];
                                            str12 = "activity_type";
                                            if (str9.equals(strG2)) {
                                                mapZ0 = (Map) arrayList2.get(0);
                                                boolean zEquals117 = Boolean.TRUE.equals(map2.get(L("month_signin")));
                                                if (mapZ0 == null) {
                                                    mapZ0 = p5.z0("pk_id", "791661", "id", "791661", "item_id", "791661", "num", 1, "item_num", 1, "item_type", 5);
                                                }
                                                linkedHashMapZ0 = p5.z0("activity_type", 15, "type", 15, "can_receive", Boolean.valueOf(!zEquals117), "instance_id", "month_signin", "home_sort", 8, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(p5.v0(mapZ0)), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals117)))));
                                            } else if ("daily_check".equals(strG2)) {
                                                linkedHashMapZ0 = o(map2, (Map) arrayList2.get(0));
                                            } else if (str6.equals(strG2)) {
                                                linkedHashMapZ0 = l(map2);
                                            } else if (str10.equals(strG2)) {
                                                N(map2);
                                                arrayList3 = new ArrayList();
                                                i6 = 0;
                                                while (i6 < 56) {
                                                    int i211111 = i6 + 1;
                                                    String str411115 = str11;
                                                    boolean zEquals118 = Boolean.TRUE.equals(map2.get(str411115 + i211111));
                                                    hVarArr3 = hVarArr[i6];
                                                    arrayList4 = new ArrayList();
                                                    length2 = hVarArr3.length;
                                                    i7 = 0;
                                                    while (i7 < length2) {
                                                        int i211112 = length2;
                                                        com.sgscq.vpn.config.h hVar19 = hVarArr3[i7];
                                                        com.sgscq.vpn.config.h[] hVarArr17 = hVarArr3;
                                                        String str411116 = (String) hVar19.f577b;
                                                        String str411117 = str12;
                                                        int i211113 = hVar19.f579d;
                                                        int iJ9 = j(str411116, i211113);
                                                        Object obj119 = obj;
                                                        String str411118 = (String) hVar19.f577b;
                                                        int i211114 = hVar19.f578c;
                                                        arrayList4.add(p5.z0("pk_id", str411118, "id", str411118, "item_id", str411118, "num", Integer.valueOf(i211114), "item_num", Integer.valueOf(i211114), "type", Integer.valueOf(i211113), "item_type", Integer.valueOf(iJ9)));
                                                        i7++;
                                                        length2 = i211112;
                                                        hVarArr3 = hVarArr17;
                                                        str12 = str411117;
                                                        obj = obj119;
                                                    }
                                                    arrayList3.add(p5.z0("object", F(arrayList4), "status", p5.z0("condition", Integer.valueOf(i211111), "is_received", Boolean.valueOf(zEquals118))));
                                                    i6 = i211111;
                                                    str11 = str411115;
                                                    obj = obj;
                                                }
                                                Object obj1110 = obj;
                                                String str411119 = str12;
                                                Object[] objArr111 = new Object[18];
                                                objArr111[0] = "type";
                                                objArr111[1] = 102;
                                                objArr111[2] = "can_receive";
                                                if (C(map2) > 0) {
                                                    z2 = true;
                                                } else {
                                                    z2 = false;
                                                }
                                                objArr111[3] = Boolean.valueOf(z2);
                                                objArr111[4] = "instance_id";
                                                objArr111[5] = str10;
                                                objArr111[6] = "instance_bg";
                                                objArr111[7] = "new";
                                                objArr111[8] = "home_sort";
                                                objArr111[9] = 8;
                                                objArr111[10] = "left_time";
                                                objArr111[11] = 86400;
                                                objArr111[12] = "instance_countdown";
                                                objArr111[13] = 86400;
                                                objArr111[14] = "instance_interval";
                                                objArr111[15] = 86400;
                                                objArr111[16] = obj1110;
                                                objArr111[17] = arrayList3;
                                                linkedHashMapZ0 = p5.z0(str411119, 102, objArr111);
                                            } else {
                                                boolean zEquals119 = Boolean.TRUE.equals(map2.get(L(strG2)));
                                                linkedHashMapZ0 = p5.z0("activity_type", 1, "can_receive", Boolean.valueOf(!zEquals119), "instance_id", strG2, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(arrayList2), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals119)))));
                                            }
                                            i8 = 0;
                                            mapArr20[0] = linkedHashMapZ0;
                                            linkedHashMapW12.put("party", p5.v0(mapArr20));
                                            linkedHashMapW12.put(r10, e(jF3, map2));
                                            obj4 = obj2;
                                            linkedHashMapW12.put(obj4, obj3);
                                            obj5 = obj11;
                                            linkedHashMapW12.put(obj5, y(new ArrayList(), arrayList));
                                            linkedHashMapR = linkedHashMapW12;
                                        }
                                        hVarArr = hVarArr;
                                        str9 = "month_signin";
                                        arrayList = new ArrayList();
                                        length = hVarArr2.length;
                                        i4 = 0;
                                        while (i4 < length) {
                                            int i211115 = length;
                                            com.sgscq.vpn.config.h hVar110 = hVarArr2[i4];
                                            arrayList.add(b(hVar110.f578c, hVar110.f579d, (String) hVar110.f577b, map2));
                                            i4++;
                                            length = i211115;
                                            str5 = str5;
                                            str7 = str7;
                                        }
                                        str10 = str7;
                                        str11 = str5;
                                        arrayList2 = new ArrayList();
                                        i5 = 0;
                                        while (i5 < arrayList.size()) {
                                            if (i5 < hVarArr2.length) {
                                                iL2 = hVarArr2[i5].f578c;
                                                obj6 = obj12;
                                            } else {
                                                obj6 = obj12;
                                                iL2 = w1.l2(String.valueOf(((Map) arrayList.get(i5)).getOrDefault(obj6, 1)), 1);
                                            }
                                            arrayList2.add(w1.A2(iL2, (Map) arrayList.get(i5)));
                                            i5++;
                                            obj12 = obj6;
                                            hVarArr2 = hVarArr2;
                                        }
                                        LinkedHashMap linkedHashMapW13 = W();
                                        linkedHashMapW13.put("instance_id", strG2);
                                        linkedHashMapW13.put("add_list", S(arrayList2));
                                        linkedHashMapW13.put(obj, S(arrayList2));
                                        Map[] mapArr21 = new Map[1];
                                        str12 = "activity_type";
                                        if (str9.equals(strG2)) {
                                            mapZ0 = (Map) arrayList2.get(0);
                                            boolean zEquals1110 = Boolean.TRUE.equals(map2.get(L("month_signin")));
                                            if (mapZ0 == null) {
                                                mapZ0 = p5.z0("pk_id", "791661", "id", "791661", "item_id", "791661", "num", 1, "item_num", 1, "item_type", 5);
                                            }
                                            linkedHashMapZ0 = p5.z0("activity_type", 15, "type", 15, "can_receive", Boolean.valueOf(!zEquals1110), "instance_id", "month_signin", "home_sort", 8, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(p5.v0(mapZ0)), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals1110)))));
                                        } else if ("daily_check".equals(strG2)) {
                                            linkedHashMapZ0 = o(map2, (Map) arrayList2.get(0));
                                        } else if (str6.equals(strG2)) {
                                            linkedHashMapZ0 = l(map2);
                                        } else if (str10.equals(strG2)) {
                                            N(map2);
                                            arrayList3 = new ArrayList();
                                            i6 = 0;
                                            while (i6 < 56) {
                                                int i211116 = i6 + 1;
                                                String str4111110 = str11;
                                                boolean zEquals1111 = Boolean.TRUE.equals(map2.get(str4111110 + i211116));
                                                hVarArr3 = hVarArr[i6];
                                                arrayList4 = new ArrayList();
                                                length2 = hVarArr3.length;
                                                i7 = 0;
                                                while (i7 < length2) {
                                                    int i211117 = length2;
                                                    com.sgscq.vpn.config.h hVar111 = hVarArr3[i7];
                                                    com.sgscq.vpn.config.h[] hVarArr18 = hVarArr3;
                                                    String str4111111 = (String) hVar111.f577b;
                                                    String str4111112 = str12;
                                                    int i211118 = hVar111.f579d;
                                                    int iJ10 = j(str4111111, i211118);
                                                    Object obj1111 = obj;
                                                    String str4111113 = (String) hVar111.f577b;
                                                    int i211119 = hVar111.f578c;
                                                    arrayList4.add(p5.z0("pk_id", str4111113, "id", str4111113, "item_id", str4111113, "num", Integer.valueOf(i211119), "item_num", Integer.valueOf(i211119), "type", Integer.valueOf(i211118), "item_type", Integer.valueOf(iJ10)));
                                                    i7++;
                                                    length2 = i211117;
                                                    hVarArr3 = hVarArr18;
                                                    str12 = str4111112;
                                                    obj = obj1111;
                                                }
                                                arrayList3.add(p5.z0("object", F(arrayList4), "status", p5.z0("condition", Integer.valueOf(i211116), "is_received", Boolean.valueOf(zEquals1111))));
                                                i6 = i211116;
                                                str11 = str4111110;
                                                obj = obj;
                                            }
                                            Object obj1112 = obj;
                                            String str4111114 = str12;
                                            Object[] objArr112 = new Object[18];
                                            objArr112[0] = "type";
                                            objArr112[1] = 102;
                                            objArr112[2] = "can_receive";
                                            if (C(map2) > 0) {
                                                z2 = true;
                                            } else {
                                                z2 = false;
                                            }
                                            objArr112[3] = Boolean.valueOf(z2);
                                            objArr112[4] = "instance_id";
                                            objArr112[5] = str10;
                                            objArr112[6] = "instance_bg";
                                            objArr112[7] = "new";
                                            objArr112[8] = "home_sort";
                                            objArr112[9] = 8;
                                            objArr112[10] = "left_time";
                                            objArr112[11] = 86400;
                                            objArr112[12] = "instance_countdown";
                                            objArr112[13] = 86400;
                                            objArr112[14] = "instance_interval";
                                            objArr112[15] = 86400;
                                            objArr112[16] = obj1112;
                                            objArr112[17] = arrayList3;
                                            linkedHashMapZ0 = p5.z0(str4111114, 102, objArr112);
                                        } else {
                                            boolean zEquals1112 = Boolean.TRUE.equals(map2.get(L(strG2)));
                                            linkedHashMapZ0 = p5.z0("activity_type", 1, "can_receive", Boolean.valueOf(!zEquals1112), "instance_id", strG2, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(arrayList2), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals1112)))));
                                        }
                                        i8 = 0;
                                        mapArr21[0] = linkedHashMapZ0;
                                        linkedHashMapW13.put("party", p5.v0(mapArr21));
                                        linkedHashMapW13.put(r10, e(jF3, map2));
                                        obj4 = obj2;
                                        linkedHashMapW13.put(obj4, obj3);
                                        obj5 = obj11;
                                        linkedHashMapW13.put(obj5, y(new ArrayList(), arrayList));
                                        linkedHashMapR = linkedHashMapW13;
                                    }
                                }
                            } else {
                                obj2 = "cmn_modules";
                                str6 = "continuous_signin";
                                if (str6.equals(strG2)) {
                                    iB = B(map2);
                                    if (iB <= 0) {
                                        linkedHashMapR2 = r("奖励暂不可领取");
                                    } else {
                                        strA = k(iB);
                                        i3 = -1;
                                        obj3 = "Item";
                                        str7 = "cumulative_login_yuanbao";
                                        i2 = -1;
                                        str8 = strA;
                                        bool = Boolean.TRUE;
                                        if (bool.equals(map2.get(str8))) {
                                            linkedHashMapR2 = r("奖励已领取");
                                        } else {
                                            map2.put("activity_last_receive_instance", strG2);
                                            map2.put(str8, bool);
                                            if (i2 > 0) {
                                                map2.put(L("daily_check"), bool);
                                            }
                                            map2.put("activity_receive_count", Integer.valueOf(T(map2.get("activity_receive_count")) + 1));
                                            hVarArr = f781c;
                                            if (iB > 0) {
                                                hVarArr2 = f780b[iB - 1];
                                            } else {
                                                if (i3 > 0) {
                                                    hVarArr2 = hVarArr[i3 - 1];
                                                } else {
                                                    com.sgscq.vpn.config.h[] hVarArr19 = new com.sgscq.vpn.config.h[1];
                                                    str9 = "month_signin";
                                                    if (str9.equals(strG2)) {
                                                        hVar = new com.sgscq.vpn.config.h("791661", 5);
                                                    } else {
                                                        hVar = new com.sgscq.vpn.config.h("791661", 5);
                                                    }
                                                    hVarArr19[0] = hVar;
                                                    hVarArr2 = hVarArr19;
                                                }
                                                arrayList = new ArrayList();
                                                length = hVarArr2.length;
                                                i4 = 0;
                                                while (i4 < length) {
                                                    int i2111110 = length;
                                                    com.sgscq.vpn.config.h hVar112 = hVarArr2[i4];
                                                    arrayList.add(b(hVar112.f578c, hVar112.f579d, (String) hVar112.f577b, map2));
                                                    i4++;
                                                    length = i2111110;
                                                    str5 = str5;
                                                    str7 = str7;
                                                }
                                                str10 = str7;
                                                str11 = str5;
                                                arrayList2 = new ArrayList();
                                                i5 = 0;
                                                while (i5 < arrayList.size()) {
                                                    if (i5 < hVarArr2.length) {
                                                        iL2 = hVarArr2[i5].f578c;
                                                        obj6 = obj12;
                                                    } else {
                                                        obj6 = obj12;
                                                        iL2 = w1.l2(String.valueOf(((Map) arrayList.get(i5)).getOrDefault(obj6, 1)), 1);
                                                    }
                                                    arrayList2.add(w1.A2(iL2, (Map) arrayList.get(i5)));
                                                    i5++;
                                                    obj12 = obj6;
                                                    hVarArr2 = hVarArr2;
                                                }
                                                LinkedHashMap linkedHashMapW14 = W();
                                                linkedHashMapW14.put("instance_id", strG2);
                                                linkedHashMapW14.put("add_list", S(arrayList2));
                                                linkedHashMapW14.put(obj, S(arrayList2));
                                                Map[] mapArr22 = new Map[1];
                                                str12 = "activity_type";
                                                if (str9.equals(strG2)) {
                                                    mapZ0 = (Map) arrayList2.get(0);
                                                    boolean zEquals1113 = Boolean.TRUE.equals(map2.get(L("month_signin")));
                                                    if (mapZ0 == null) {
                                                        mapZ0 = p5.z0("pk_id", "791661", "id", "791661", "item_id", "791661", "num", 1, "item_num", 1, "item_type", 5);
                                                    }
                                                    linkedHashMapZ0 = p5.z0("activity_type", 15, "type", 15, "can_receive", Boolean.valueOf(!zEquals1113), "instance_id", "month_signin", "home_sort", 8, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(p5.v0(mapZ0)), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals1113)))));
                                                } else if ("daily_check".equals(strG2)) {
                                                    linkedHashMapZ0 = o(map2, (Map) arrayList2.get(0));
                                                } else if (str6.equals(strG2)) {
                                                    linkedHashMapZ0 = l(map2);
                                                } else if (str10.equals(strG2)) {
                                                    N(map2);
                                                    arrayList3 = new ArrayList();
                                                    i6 = 0;
                                                    while (i6 < 56) {
                                                        int i2111111 = i6 + 1;
                                                        String str4111115 = str11;
                                                        boolean zEquals1114 = Boolean.TRUE.equals(map2.get(str4111115 + i2111111));
                                                        hVarArr3 = hVarArr[i6];
                                                        arrayList4 = new ArrayList();
                                                        length2 = hVarArr3.length;
                                                        i7 = 0;
                                                        while (i7 < length2) {
                                                            int i2111112 = length2;
                                                            com.sgscq.vpn.config.h hVar113 = hVarArr3[i7];
                                                            com.sgscq.vpn.config.h[] hVarArr110 = hVarArr3;
                                                            String str4111116 = (String) hVar113.f577b;
                                                            String str4111117 = str12;
                                                            int i2111113 = hVar113.f579d;
                                                            int iJ11 = j(str4111116, i2111113);
                                                            Object obj1113 = obj;
                                                            String str4111118 = (String) hVar113.f577b;
                                                            int i2111114 = hVar113.f578c;
                                                            arrayList4.add(p5.z0("pk_id", str4111118, "id", str4111118, "item_id", str4111118, "num", Integer.valueOf(i2111114), "item_num", Integer.valueOf(i2111114), "type", Integer.valueOf(i2111113), "item_type", Integer.valueOf(iJ11)));
                                                            i7++;
                                                            length2 = i2111112;
                                                            hVarArr3 = hVarArr110;
                                                            str12 = str4111117;
                                                            obj = obj1113;
                                                        }
                                                        arrayList3.add(p5.z0("object", F(arrayList4), "status", p5.z0("condition", Integer.valueOf(i2111111), "is_received", Boolean.valueOf(zEquals1114))));
                                                        i6 = i2111111;
                                                        str11 = str4111115;
                                                        obj = obj;
                                                    }
                                                    Object obj1114 = obj;
                                                    String str4111119 = str12;
                                                    Object[] objArr113 = new Object[18];
                                                    objArr113[0] = "type";
                                                    objArr113[1] = 102;
                                                    objArr113[2] = "can_receive";
                                                    if (C(map2) > 0) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    objArr113[3] = Boolean.valueOf(z2);
                                                    objArr113[4] = "instance_id";
                                                    objArr113[5] = str10;
                                                    objArr113[6] = "instance_bg";
                                                    objArr113[7] = "new";
                                                    objArr113[8] = "home_sort";
                                                    objArr113[9] = 8;
                                                    objArr113[10] = "left_time";
                                                    objArr113[11] = 86400;
                                                    objArr113[12] = "instance_countdown";
                                                    objArr113[13] = 86400;
                                                    objArr113[14] = "instance_interval";
                                                    objArr113[15] = 86400;
                                                    objArr113[16] = obj1114;
                                                    objArr113[17] = arrayList3;
                                                    linkedHashMapZ0 = p5.z0(str4111119, 102, objArr113);
                                                } else {
                                                    boolean zEquals1115 = Boolean.TRUE.equals(map2.get(L(strG2)));
                                                    linkedHashMapZ0 = p5.z0("activity_type", 1, "can_receive", Boolean.valueOf(!zEquals1115), "instance_id", strG2, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(arrayList2), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals1115)))));
                                                }
                                                i8 = 0;
                                                mapArr22[0] = linkedHashMapZ0;
                                                linkedHashMapW14.put("party", p5.v0(mapArr22));
                                                linkedHashMapW14.put(r10, e(jF3, map2));
                                                obj4 = obj2;
                                                linkedHashMapW14.put(obj4, obj3);
                                                obj5 = obj11;
                                                linkedHashMapW14.put(obj5, y(new ArrayList(), arrayList));
                                                linkedHashMapR = linkedHashMapW14;
                                            }
                                            hVarArr = hVarArr;
                                            str9 = "month_signin";
                                            arrayList = new ArrayList();
                                            length = hVarArr2.length;
                                            i4 = 0;
                                            while (i4 < length) {
                                                int i2111115 = length;
                                                com.sgscq.vpn.config.h hVar114 = hVarArr2[i4];
                                                arrayList.add(b(hVar114.f578c, hVar114.f579d, (String) hVar114.f577b, map2));
                                                i4++;
                                                length = i2111115;
                                                str5 = str5;
                                                str7 = str7;
                                            }
                                            str10 = str7;
                                            str11 = str5;
                                            arrayList2 = new ArrayList();
                                            i5 = 0;
                                            while (i5 < arrayList.size()) {
                                                if (i5 < hVarArr2.length) {
                                                    iL2 = hVarArr2[i5].f578c;
                                                    obj6 = obj12;
                                                } else {
                                                    obj6 = obj12;
                                                    iL2 = w1.l2(String.valueOf(((Map) arrayList.get(i5)).getOrDefault(obj6, 1)), 1);
                                                }
                                                arrayList2.add(w1.A2(iL2, (Map) arrayList.get(i5)));
                                                i5++;
                                                obj12 = obj6;
                                                hVarArr2 = hVarArr2;
                                            }
                                            LinkedHashMap linkedHashMapW15 = W();
                                            linkedHashMapW15.put("instance_id", strG2);
                                            linkedHashMapW15.put("add_list", S(arrayList2));
                                            linkedHashMapW15.put(obj, S(arrayList2));
                                            Map[] mapArr23 = new Map[1];
                                            str12 = "activity_type";
                                            if (str9.equals(strG2)) {
                                                mapZ0 = (Map) arrayList2.get(0);
                                                boolean zEquals1116 = Boolean.TRUE.equals(map2.get(L("month_signin")));
                                                if (mapZ0 == null) {
                                                    mapZ0 = p5.z0("pk_id", "791661", "id", "791661", "item_id", "791661", "num", 1, "item_num", 1, "item_type", 5);
                                                }
                                                linkedHashMapZ0 = p5.z0("activity_type", 15, "type", 15, "can_receive", Boolean.valueOf(!zEquals1116), "instance_id", "month_signin", "home_sort", 8, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(p5.v0(mapZ0)), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals1116)))));
                                            } else if ("daily_check".equals(strG2)) {
                                                linkedHashMapZ0 = o(map2, (Map) arrayList2.get(0));
                                            } else if (str6.equals(strG2)) {
                                                linkedHashMapZ0 = l(map2);
                                            } else if (str10.equals(strG2)) {
                                                N(map2);
                                                arrayList3 = new ArrayList();
                                                i6 = 0;
                                                while (i6 < 56) {
                                                    int i2111116 = i6 + 1;
                                                    String str41111110 = str11;
                                                    boolean zEquals1117 = Boolean.TRUE.equals(map2.get(str41111110 + i2111116));
                                                    hVarArr3 = hVarArr[i6];
                                                    arrayList4 = new ArrayList();
                                                    length2 = hVarArr3.length;
                                                    i7 = 0;
                                                    while (i7 < length2) {
                                                        int i2111117 = length2;
                                                        com.sgscq.vpn.config.h hVar115 = hVarArr3[i7];
                                                        com.sgscq.vpn.config.h[] hVarArr111 = hVarArr3;
                                                        String str41111111 = (String) hVar115.f577b;
                                                        String str41111112 = str12;
                                                        int i2111118 = hVar115.f579d;
                                                        int iJ12 = j(str41111111, i2111118);
                                                        Object obj1115 = obj;
                                                        String str41111113 = (String) hVar115.f577b;
                                                        int i2111119 = hVar115.f578c;
                                                        arrayList4.add(p5.z0("pk_id", str41111113, "id", str41111113, "item_id", str41111113, "num", Integer.valueOf(i2111119), "item_num", Integer.valueOf(i2111119), "type", Integer.valueOf(i2111118), "item_type", Integer.valueOf(iJ12)));
                                                        i7++;
                                                        length2 = i2111117;
                                                        hVarArr3 = hVarArr111;
                                                        str12 = str41111112;
                                                        obj = obj1115;
                                                    }
                                                    arrayList3.add(p5.z0("object", F(arrayList4), "status", p5.z0("condition", Integer.valueOf(i2111116), "is_received", Boolean.valueOf(zEquals1117))));
                                                    i6 = i2111116;
                                                    str11 = str41111110;
                                                    obj = obj;
                                                }
                                                Object obj1116 = obj;
                                                String str41111114 = str12;
                                                Object[] objArr114 = new Object[18];
                                                objArr114[0] = "type";
                                                objArr114[1] = 102;
                                                objArr114[2] = "can_receive";
                                                if (C(map2) > 0) {
                                                    z2 = true;
                                                } else {
                                                    z2 = false;
                                                }
                                                objArr114[3] = Boolean.valueOf(z2);
                                                objArr114[4] = "instance_id";
                                                objArr114[5] = str10;
                                                objArr114[6] = "instance_bg";
                                                objArr114[7] = "new";
                                                objArr114[8] = "home_sort";
                                                objArr114[9] = 8;
                                                objArr114[10] = "left_time";
                                                objArr114[11] = 86400;
                                                objArr114[12] = "instance_countdown";
                                                objArr114[13] = 86400;
                                                objArr114[14] = "instance_interval";
                                                objArr114[15] = 86400;
                                                objArr114[16] = obj1116;
                                                objArr114[17] = arrayList3;
                                                linkedHashMapZ0 = p5.z0(str41111114, 102, objArr114);
                                            } else {
                                                boolean zEquals1118 = Boolean.TRUE.equals(map2.get(L(strG2)));
                                                linkedHashMapZ0 = p5.z0("activity_type", 1, "can_receive", Boolean.valueOf(!zEquals1118), "instance_id", strG2, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(arrayList2), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals1118)))));
                                            }
                                            i8 = 0;
                                            mapArr23[0] = linkedHashMapZ0;
                                            linkedHashMapW15.put("party", p5.v0(mapArr23));
                                            linkedHashMapW15.put(r10, e(jF3, map2));
                                            obj4 = obj2;
                                            linkedHashMapW15.put(obj4, obj3);
                                            obj5 = obj11;
                                            linkedHashMapW15.put(obj5, y(new ArrayList(), arrayList));
                                            linkedHashMapR = linkedHashMapW15;
                                        }
                                    }
                                } else {
                                    obj3 = "Item";
                                    str7 = "cumulative_login_yuanbao";
                                    if (str7.equals(strG2)) {
                                        iC = C(map2);
                                        if (iC <= 0) {
                                            linkedHashMapR2 = r("奖励暂不可领取");
                                        } else {
                                            strA = a.b0.a("activity_received_cumulative_login_day_", iC);
                                            iB = -1;
                                            i3 = iC;
                                            i2 = -1;
                                            str8 = strA;
                                            bool = Boolean.TRUE;
                                            if (bool.equals(map2.get(str8))) {
                                                linkedHashMapR2 = r("奖励已领取");
                                            } else {
                                                map2.put("activity_last_receive_instance", strG2);
                                                map2.put(str8, bool);
                                                if (i2 > 0) {
                                                    map2.put(L("daily_check"), bool);
                                                }
                                                map2.put("activity_receive_count", Integer.valueOf(T(map2.get("activity_receive_count")) + 1));
                                                hVarArr = f781c;
                                                if (iB > 0) {
                                                    hVarArr2 = f780b[iB - 1];
                                                } else {
                                                    if (i3 > 0) {
                                                        hVarArr2 = hVarArr[i3 - 1];
                                                    } else {
                                                        com.sgscq.vpn.config.h[] hVarArr112 = new com.sgscq.vpn.config.h[1];
                                                        str9 = "month_signin";
                                                        if (str9.equals(strG2)) {
                                                            hVar = new com.sgscq.vpn.config.h("791661", 5);
                                                        } else {
                                                            hVar = new com.sgscq.vpn.config.h("791661", 5);
                                                        }
                                                        hVarArr112[0] = hVar;
                                                        hVarArr2 = hVarArr112;
                                                    }
                                                    arrayList = new ArrayList();
                                                    length = hVarArr2.length;
                                                    i4 = 0;
                                                    while (i4 < length) {
                                                        int i21111110 = length;
                                                        com.sgscq.vpn.config.h hVar116 = hVarArr2[i4];
                                                        arrayList.add(b(hVar116.f578c, hVar116.f579d, (String) hVar116.f577b, map2));
                                                        i4++;
                                                        length = i21111110;
                                                        str5 = str5;
                                                        str7 = str7;
                                                    }
                                                    str10 = str7;
                                                    str11 = str5;
                                                    arrayList2 = new ArrayList();
                                                    i5 = 0;
                                                    while (i5 < arrayList.size()) {
                                                        if (i5 < hVarArr2.length) {
                                                            iL2 = hVarArr2[i5].f578c;
                                                            obj6 = obj12;
                                                        } else {
                                                            obj6 = obj12;
                                                            iL2 = w1.l2(String.valueOf(((Map) arrayList.get(i5)).getOrDefault(obj6, 1)), 1);
                                                        }
                                                        arrayList2.add(w1.A2(iL2, (Map) arrayList.get(i5)));
                                                        i5++;
                                                        obj12 = obj6;
                                                        hVarArr2 = hVarArr2;
                                                    }
                                                    LinkedHashMap linkedHashMapW16 = W();
                                                    linkedHashMapW16.put("instance_id", strG2);
                                                    linkedHashMapW16.put("add_list", S(arrayList2));
                                                    linkedHashMapW16.put(obj, S(arrayList2));
                                                    Map[] mapArr24 = new Map[1];
                                                    str12 = "activity_type";
                                                    if (str9.equals(strG2)) {
                                                        mapZ0 = (Map) arrayList2.get(0);
                                                        boolean zEquals1119 = Boolean.TRUE.equals(map2.get(L("month_signin")));
                                                        if (mapZ0 == null) {
                                                            mapZ0 = p5.z0("pk_id", "791661", "id", "791661", "item_id", "791661", "num", 1, "item_num", 1, "item_type", 5);
                                                        }
                                                        linkedHashMapZ0 = p5.z0("activity_type", 15, "type", 15, "can_receive", Boolean.valueOf(!zEquals1119), "instance_id", "month_signin", "home_sort", 8, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(p5.v0(mapZ0)), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals1119)))));
                                                    } else if ("daily_check".equals(strG2)) {
                                                        linkedHashMapZ0 = o(map2, (Map) arrayList2.get(0));
                                                    } else if (str6.equals(strG2)) {
                                                        linkedHashMapZ0 = l(map2);
                                                    } else if (str10.equals(strG2)) {
                                                        N(map2);
                                                        arrayList3 = new ArrayList();
                                                        i6 = 0;
                                                        while (i6 < 56) {
                                                            int i21111111 = i6 + 1;
                                                            String str41111115 = str11;
                                                            boolean zEquals11110 = Boolean.TRUE.equals(map2.get(str41111115 + i21111111));
                                                            hVarArr3 = hVarArr[i6];
                                                            arrayList4 = new ArrayList();
                                                            length2 = hVarArr3.length;
                                                            i7 = 0;
                                                            while (i7 < length2) {
                                                                int i21111112 = length2;
                                                                com.sgscq.vpn.config.h hVar117 = hVarArr3[i7];
                                                                com.sgscq.vpn.config.h[] hVarArr113 = hVarArr3;
                                                                String str41111116 = (String) hVar117.f577b;
                                                                String str41111117 = str12;
                                                                int i21111113 = hVar117.f579d;
                                                                int iJ13 = j(str41111116, i21111113);
                                                                Object obj1117 = obj;
                                                                String str41111118 = (String) hVar117.f577b;
                                                                int i21111114 = hVar117.f578c;
                                                                arrayList4.add(p5.z0("pk_id", str41111118, "id", str41111118, "item_id", str41111118, "num", Integer.valueOf(i21111114), "item_num", Integer.valueOf(i21111114), "type", Integer.valueOf(i21111113), "item_type", Integer.valueOf(iJ13)));
                                                                i7++;
                                                                length2 = i21111112;
                                                                hVarArr3 = hVarArr113;
                                                                str12 = str41111117;
                                                                obj = obj1117;
                                                            }
                                                            arrayList3.add(p5.z0("object", F(arrayList4), "status", p5.z0("condition", Integer.valueOf(i21111111), "is_received", Boolean.valueOf(zEquals11110))));
                                                            i6 = i21111111;
                                                            str11 = str41111115;
                                                            obj = obj;
                                                        }
                                                        Object obj1118 = obj;
                                                        String str41111119 = str12;
                                                        Object[] objArr115 = new Object[18];
                                                        objArr115[0] = "type";
                                                        objArr115[1] = 102;
                                                        objArr115[2] = "can_receive";
                                                        if (C(map2) > 0) {
                                                            z2 = true;
                                                        } else {
                                                            z2 = false;
                                                        }
                                                        objArr115[3] = Boolean.valueOf(z2);
                                                        objArr115[4] = "instance_id";
                                                        objArr115[5] = str10;
                                                        objArr115[6] = "instance_bg";
                                                        objArr115[7] = "new";
                                                        objArr115[8] = "home_sort";
                                                        objArr115[9] = 8;
                                                        objArr115[10] = "left_time";
                                                        objArr115[11] = 86400;
                                                        objArr115[12] = "instance_countdown";
                                                        objArr115[13] = 86400;
                                                        objArr115[14] = "instance_interval";
                                                        objArr115[15] = 86400;
                                                        objArr115[16] = obj1118;
                                                        objArr115[17] = arrayList3;
                                                        linkedHashMapZ0 = p5.z0(str41111119, 102, objArr115);
                                                    } else {
                                                        boolean zEquals11111 = Boolean.TRUE.equals(map2.get(L(strG2)));
                                                        linkedHashMapZ0 = p5.z0("activity_type", 1, "can_receive", Boolean.valueOf(!zEquals11111), "instance_id", strG2, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(arrayList2), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals11111)))));
                                                    }
                                                    i8 = 0;
                                                    mapArr24[0] = linkedHashMapZ0;
                                                    linkedHashMapW16.put("party", p5.v0(mapArr24));
                                                    linkedHashMapW16.put(r10, e(jF3, map2));
                                                    obj4 = obj2;
                                                    linkedHashMapW16.put(obj4, obj3);
                                                    obj5 = obj11;
                                                    linkedHashMapW16.put(obj5, y(new ArrayList(), arrayList));
                                                    linkedHashMapR = linkedHashMapW16;
                                                }
                                                hVarArr = hVarArr;
                                                str9 = "month_signin";
                                                arrayList = new ArrayList();
                                                length = hVarArr2.length;
                                                i4 = 0;
                                                while (i4 < length) {
                                                    int i21111115 = length;
                                                    com.sgscq.vpn.config.h hVar118 = hVarArr2[i4];
                                                    arrayList.add(b(hVar118.f578c, hVar118.f579d, (String) hVar118.f577b, map2));
                                                    i4++;
                                                    length = i21111115;
                                                    str5 = str5;
                                                    str7 = str7;
                                                }
                                                str10 = str7;
                                                str11 = str5;
                                                arrayList2 = new ArrayList();
                                                i5 = 0;
                                                while (i5 < arrayList.size()) {
                                                    if (i5 < hVarArr2.length) {
                                                        iL2 = hVarArr2[i5].f578c;
                                                        obj6 = obj12;
                                                    } else {
                                                        obj6 = obj12;
                                                        iL2 = w1.l2(String.valueOf(((Map) arrayList.get(i5)).getOrDefault(obj6, 1)), 1);
                                                    }
                                                    arrayList2.add(w1.A2(iL2, (Map) arrayList.get(i5)));
                                                    i5++;
                                                    obj12 = obj6;
                                                    hVarArr2 = hVarArr2;
                                                }
                                                LinkedHashMap linkedHashMapW17 = W();
                                                linkedHashMapW17.put("instance_id", strG2);
                                                linkedHashMapW17.put("add_list", S(arrayList2));
                                                linkedHashMapW17.put(obj, S(arrayList2));
                                                Map[] mapArr25 = new Map[1];
                                                str12 = "activity_type";
                                                if (str9.equals(strG2)) {
                                                    mapZ0 = (Map) arrayList2.get(0);
                                                    boolean zEquals11112 = Boolean.TRUE.equals(map2.get(L("month_signin")));
                                                    if (mapZ0 == null) {
                                                        mapZ0 = p5.z0("pk_id", "791661", "id", "791661", "item_id", "791661", "num", 1, "item_num", 1, "item_type", 5);
                                                    }
                                                    linkedHashMapZ0 = p5.z0("activity_type", 15, "type", 15, "can_receive", Boolean.valueOf(!zEquals11112), "instance_id", "month_signin", "home_sort", 8, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(p5.v0(mapZ0)), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals11112)))));
                                                } else if ("daily_check".equals(strG2)) {
                                                    linkedHashMapZ0 = o(map2, (Map) arrayList2.get(0));
                                                } else if (str6.equals(strG2)) {
                                                    linkedHashMapZ0 = l(map2);
                                                } else if (str10.equals(strG2)) {
                                                    N(map2);
                                                    arrayList3 = new ArrayList();
                                                    i6 = 0;
                                                    while (i6 < 56) {
                                                        int i21111116 = i6 + 1;
                                                        String str411111110 = str11;
                                                        boolean zEquals11113 = Boolean.TRUE.equals(map2.get(str411111110 + i21111116));
                                                        hVarArr3 = hVarArr[i6];
                                                        arrayList4 = new ArrayList();
                                                        length2 = hVarArr3.length;
                                                        i7 = 0;
                                                        while (i7 < length2) {
                                                            int i21111117 = length2;
                                                            com.sgscq.vpn.config.h hVar119 = hVarArr3[i7];
                                                            com.sgscq.vpn.config.h[] hVarArr114 = hVarArr3;
                                                            String str411111111 = (String) hVar119.f577b;
                                                            String str411111112 = str12;
                                                            int i21111118 = hVar119.f579d;
                                                            int iJ14 = j(str411111111, i21111118);
                                                            Object obj1119 = obj;
                                                            String str411111113 = (String) hVar119.f577b;
                                                            int i21111119 = hVar119.f578c;
                                                            arrayList4.add(p5.z0("pk_id", str411111113, "id", str411111113, "item_id", str411111113, "num", Integer.valueOf(i21111119), "item_num", Integer.valueOf(i21111119), "type", Integer.valueOf(i21111118), "item_type", Integer.valueOf(iJ14)));
                                                            i7++;
                                                            length2 = i21111117;
                                                            hVarArr3 = hVarArr114;
                                                            str12 = str411111112;
                                                            obj = obj1119;
                                                        }
                                                        arrayList3.add(p5.z0("object", F(arrayList4), "status", p5.z0("condition", Integer.valueOf(i21111116), "is_received", Boolean.valueOf(zEquals11113))));
                                                        i6 = i21111116;
                                                        str11 = str411111110;
                                                        obj = obj;
                                                    }
                                                    Object obj11110 = obj;
                                                    String str411111114 = str12;
                                                    Object[] objArr116 = new Object[18];
                                                    objArr116[0] = "type";
                                                    objArr116[1] = 102;
                                                    objArr116[2] = "can_receive";
                                                    if (C(map2) > 0) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    objArr116[3] = Boolean.valueOf(z2);
                                                    objArr116[4] = "instance_id";
                                                    objArr116[5] = str10;
                                                    objArr116[6] = "instance_bg";
                                                    objArr116[7] = "new";
                                                    objArr116[8] = "home_sort";
                                                    objArr116[9] = 8;
                                                    objArr116[10] = "left_time";
                                                    objArr116[11] = 86400;
                                                    objArr116[12] = "instance_countdown";
                                                    objArr116[13] = 86400;
                                                    objArr116[14] = "instance_interval";
                                                    objArr116[15] = 86400;
                                                    objArr116[16] = obj11110;
                                                    objArr116[17] = arrayList3;
                                                    linkedHashMapZ0 = p5.z0(str411111114, 102, objArr116);
                                                } else {
                                                    boolean zEquals11114 = Boolean.TRUE.equals(map2.get(L(strG2)));
                                                    linkedHashMapZ0 = p5.z0("activity_type", 1, "can_receive", Boolean.valueOf(!zEquals11114), "instance_id", strG2, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(arrayList2), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals11114)))));
                                                }
                                                i8 = 0;
                                                mapArr25[0] = linkedHashMapZ0;
                                                linkedHashMapW17.put("party", p5.v0(mapArr25));
                                                linkedHashMapW17.put(r10, e(jF3, map2));
                                                obj4 = obj2;
                                                linkedHashMapW17.put(obj4, obj3);
                                                obj5 = obj11;
                                                linkedHashMapW17.put(obj5, y(new ArrayList(), arrayList));
                                                linkedHashMapR = linkedHashMapW17;
                                            }
                                        }
                                    } else {
                                        i2 = -1;
                                        i3 = -1;
                                        str8 = strL;
                                        iB = -1;
                                        bool = Boolean.TRUE;
                                        if (bool.equals(map2.get(str8))) {
                                            linkedHashMapR2 = r("奖励已领取");
                                        } else {
                                            map2.put("activity_last_receive_instance", strG2);
                                            map2.put(str8, bool);
                                            if (i2 > 0) {
                                                map2.put(L("daily_check"), bool);
                                            }
                                            map2.put("activity_receive_count", Integer.valueOf(T(map2.get("activity_receive_count")) + 1));
                                            hVarArr = f781c;
                                            if (iB > 0) {
                                                hVarArr2 = f780b[iB - 1];
                                            } else {
                                                if (i3 > 0) {
                                                    hVarArr2 = hVarArr[i3 - 1];
                                                } else {
                                                    com.sgscq.vpn.config.h[] hVarArr115 = new com.sgscq.vpn.config.h[1];
                                                    str9 = "month_signin";
                                                    if (str9.equals(strG2)) {
                                                        hVar = new com.sgscq.vpn.config.h("791661", 5);
                                                    } else {
                                                        hVar = new com.sgscq.vpn.config.h("791661", 5);
                                                    }
                                                    hVarArr115[0] = hVar;
                                                    hVarArr2 = hVarArr115;
                                                }
                                                arrayList = new ArrayList();
                                                length = hVarArr2.length;
                                                i4 = 0;
                                                while (i4 < length) {
                                                    int i211111110 = length;
                                                    com.sgscq.vpn.config.h hVar1110 = hVarArr2[i4];
                                                    arrayList.add(b(hVar1110.f578c, hVar1110.f579d, (String) hVar1110.f577b, map2));
                                                    i4++;
                                                    length = i211111110;
                                                    str5 = str5;
                                                    str7 = str7;
                                                }
                                                str10 = str7;
                                                str11 = str5;
                                                arrayList2 = new ArrayList();
                                                i5 = 0;
                                                while (i5 < arrayList.size()) {
                                                    if (i5 < hVarArr2.length) {
                                                        iL2 = hVarArr2[i5].f578c;
                                                        obj6 = obj12;
                                                    } else {
                                                        obj6 = obj12;
                                                        iL2 = w1.l2(String.valueOf(((Map) arrayList.get(i5)).getOrDefault(obj6, 1)), 1);
                                                    }
                                                    arrayList2.add(w1.A2(iL2, (Map) arrayList.get(i5)));
                                                    i5++;
                                                    obj12 = obj6;
                                                    hVarArr2 = hVarArr2;
                                                }
                                                LinkedHashMap linkedHashMapW18 = W();
                                                linkedHashMapW18.put("instance_id", strG2);
                                                linkedHashMapW18.put("add_list", S(arrayList2));
                                                linkedHashMapW18.put(obj, S(arrayList2));
                                                Map[] mapArr26 = new Map[1];
                                                str12 = "activity_type";
                                                if (str9.equals(strG2)) {
                                                    mapZ0 = (Map) arrayList2.get(0);
                                                    boolean zEquals11115 = Boolean.TRUE.equals(map2.get(L("month_signin")));
                                                    if (mapZ0 == null) {
                                                        mapZ0 = p5.z0("pk_id", "791661", "id", "791661", "item_id", "791661", "num", 1, "item_num", 1, "item_type", 5);
                                                    }
                                                    linkedHashMapZ0 = p5.z0("activity_type", 15, "type", 15, "can_receive", Boolean.valueOf(!zEquals11115), "instance_id", "month_signin", "home_sort", 8, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(p5.v0(mapZ0)), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals11115)))));
                                                } else if ("daily_check".equals(strG2)) {
                                                    linkedHashMapZ0 = o(map2, (Map) arrayList2.get(0));
                                                } else if (str6.equals(strG2)) {
                                                    linkedHashMapZ0 = l(map2);
                                                } else if (str10.equals(strG2)) {
                                                    N(map2);
                                                    arrayList3 = new ArrayList();
                                                    i6 = 0;
                                                    while (i6 < 56) {
                                                        int i211111111 = i6 + 1;
                                                        String str411111115 = str11;
                                                        boolean zEquals11116 = Boolean.TRUE.equals(map2.get(str411111115 + i211111111));
                                                        hVarArr3 = hVarArr[i6];
                                                        arrayList4 = new ArrayList();
                                                        length2 = hVarArr3.length;
                                                        i7 = 0;
                                                        while (i7 < length2) {
                                                            int i211111112 = length2;
                                                            com.sgscq.vpn.config.h hVar1111 = hVarArr3[i7];
                                                            com.sgscq.vpn.config.h[] hVarArr116 = hVarArr3;
                                                            String str411111116 = (String) hVar1111.f577b;
                                                            String str411111117 = str12;
                                                            int i211111113 = hVar1111.f579d;
                                                            int iJ15 = j(str411111116, i211111113);
                                                            Object obj11111 = obj;
                                                            String str411111118 = (String) hVar1111.f577b;
                                                            int i211111114 = hVar1111.f578c;
                                                            arrayList4.add(p5.z0("pk_id", str411111118, "id", str411111118, "item_id", str411111118, "num", Integer.valueOf(i211111114), "item_num", Integer.valueOf(i211111114), "type", Integer.valueOf(i211111113), "item_type", Integer.valueOf(iJ15)));
                                                            i7++;
                                                            length2 = i211111112;
                                                            hVarArr3 = hVarArr116;
                                                            str12 = str411111117;
                                                            obj = obj11111;
                                                        }
                                                        arrayList3.add(p5.z0("object", F(arrayList4), "status", p5.z0("condition", Integer.valueOf(i211111111), "is_received", Boolean.valueOf(zEquals11116))));
                                                        i6 = i211111111;
                                                        str11 = str411111115;
                                                        obj = obj;
                                                    }
                                                    Object obj11112 = obj;
                                                    String str411111119 = str12;
                                                    Object[] objArr117 = new Object[18];
                                                    objArr117[0] = "type";
                                                    objArr117[1] = 102;
                                                    objArr117[2] = "can_receive";
                                                    if (C(map2) > 0) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    objArr117[3] = Boolean.valueOf(z2);
                                                    objArr117[4] = "instance_id";
                                                    objArr117[5] = str10;
                                                    objArr117[6] = "instance_bg";
                                                    objArr117[7] = "new";
                                                    objArr117[8] = "home_sort";
                                                    objArr117[9] = 8;
                                                    objArr117[10] = "left_time";
                                                    objArr117[11] = 86400;
                                                    objArr117[12] = "instance_countdown";
                                                    objArr117[13] = 86400;
                                                    objArr117[14] = "instance_interval";
                                                    objArr117[15] = 86400;
                                                    objArr117[16] = obj11112;
                                                    objArr117[17] = arrayList3;
                                                    linkedHashMapZ0 = p5.z0(str411111119, 102, objArr117);
                                                } else {
                                                    boolean zEquals11117 = Boolean.TRUE.equals(map2.get(L(strG2)));
                                                    linkedHashMapZ0 = p5.z0("activity_type", 1, "can_receive", Boolean.valueOf(!zEquals11117), "instance_id", strG2, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(arrayList2), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals11117)))));
                                                }
                                                i8 = 0;
                                                mapArr26[0] = linkedHashMapZ0;
                                                linkedHashMapW18.put("party", p5.v0(mapArr26));
                                                linkedHashMapW18.put(r10, e(jF3, map2));
                                                obj4 = obj2;
                                                linkedHashMapW18.put(obj4, obj3);
                                                obj5 = obj11;
                                                linkedHashMapW18.put(obj5, y(new ArrayList(), arrayList));
                                                linkedHashMapR = linkedHashMapW18;
                                            }
                                            hVarArr = hVarArr;
                                            str9 = "month_signin";
                                            arrayList = new ArrayList();
                                            length = hVarArr2.length;
                                            i4 = 0;
                                            while (i4 < length) {
                                                int i211111115 = length;
                                                com.sgscq.vpn.config.h hVar1112 = hVarArr2[i4];
                                                arrayList.add(b(hVar1112.f578c, hVar1112.f579d, (String) hVar1112.f577b, map2));
                                                i4++;
                                                length = i211111115;
                                                str5 = str5;
                                                str7 = str7;
                                            }
                                            str10 = str7;
                                            str11 = str5;
                                            arrayList2 = new ArrayList();
                                            i5 = 0;
                                            while (i5 < arrayList.size()) {
                                                if (i5 < hVarArr2.length) {
                                                    iL2 = hVarArr2[i5].f578c;
                                                    obj6 = obj12;
                                                } else {
                                                    obj6 = obj12;
                                                    iL2 = w1.l2(String.valueOf(((Map) arrayList.get(i5)).getOrDefault(obj6, 1)), 1);
                                                }
                                                arrayList2.add(w1.A2(iL2, (Map) arrayList.get(i5)));
                                                i5++;
                                                obj12 = obj6;
                                                hVarArr2 = hVarArr2;
                                            }
                                            LinkedHashMap linkedHashMapW19 = W();
                                            linkedHashMapW19.put("instance_id", strG2);
                                            linkedHashMapW19.put("add_list", S(arrayList2));
                                            linkedHashMapW19.put(obj, S(arrayList2));
                                            Map[] mapArr27 = new Map[1];
                                            str12 = "activity_type";
                                            if (str9.equals(strG2)) {
                                                mapZ0 = (Map) arrayList2.get(0);
                                                boolean zEquals11118 = Boolean.TRUE.equals(map2.get(L("month_signin")));
                                                if (mapZ0 == null) {
                                                    mapZ0 = p5.z0("pk_id", "791661", "id", "791661", "item_id", "791661", "num", 1, "item_num", 1, "item_type", 5);
                                                }
                                                linkedHashMapZ0 = p5.z0("activity_type", 15, "type", 15, "can_receive", Boolean.valueOf(!zEquals11118), "instance_id", "month_signin", "home_sort", 8, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(p5.v0(mapZ0)), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals11118)))));
                                            } else if ("daily_check".equals(strG2)) {
                                                linkedHashMapZ0 = o(map2, (Map) arrayList2.get(0));
                                            } else if (str6.equals(strG2)) {
                                                linkedHashMapZ0 = l(map2);
                                            } else if (str10.equals(strG2)) {
                                                N(map2);
                                                arrayList3 = new ArrayList();
                                                i6 = 0;
                                                while (i6 < 56) {
                                                    int i211111116 = i6 + 1;
                                                    String str4111111110 = str11;
                                                    boolean zEquals11119 = Boolean.TRUE.equals(map2.get(str4111111110 + i211111116));
                                                    hVarArr3 = hVarArr[i6];
                                                    arrayList4 = new ArrayList();
                                                    length2 = hVarArr3.length;
                                                    i7 = 0;
                                                    while (i7 < length2) {
                                                        int i211111117 = length2;
                                                        com.sgscq.vpn.config.h hVar1113 = hVarArr3[i7];
                                                        com.sgscq.vpn.config.h[] hVarArr117 = hVarArr3;
                                                        String str4111111111 = (String) hVar1113.f577b;
                                                        String str4111111112 = str12;
                                                        int i211111118 = hVar1113.f579d;
                                                        int iJ16 = j(str4111111111, i211111118);
                                                        Object obj11113 = obj;
                                                        String str4111111113 = (String) hVar1113.f577b;
                                                        int i211111119 = hVar1113.f578c;
                                                        arrayList4.add(p5.z0("pk_id", str4111111113, "id", str4111111113, "item_id", str4111111113, "num", Integer.valueOf(i211111119), "item_num", Integer.valueOf(i211111119), "type", Integer.valueOf(i211111118), "item_type", Integer.valueOf(iJ16)));
                                                        i7++;
                                                        length2 = i211111117;
                                                        hVarArr3 = hVarArr117;
                                                        str12 = str4111111112;
                                                        obj = obj11113;
                                                    }
                                                    arrayList3.add(p5.z0("object", F(arrayList4), "status", p5.z0("condition", Integer.valueOf(i211111116), "is_received", Boolean.valueOf(zEquals11119))));
                                                    i6 = i211111116;
                                                    str11 = str4111111110;
                                                    obj = obj;
                                                }
                                                Object obj11114 = obj;
                                                String str4111111114 = str12;
                                                Object[] objArr118 = new Object[18];
                                                objArr118[0] = "type";
                                                objArr118[1] = 102;
                                                objArr118[2] = "can_receive";
                                                if (C(map2) > 0) {
                                                    z2 = true;
                                                } else {
                                                    z2 = false;
                                                }
                                                objArr118[3] = Boolean.valueOf(z2);
                                                objArr118[4] = "instance_id";
                                                objArr118[5] = str10;
                                                objArr118[6] = "instance_bg";
                                                objArr118[7] = "new";
                                                objArr118[8] = "home_sort";
                                                objArr118[9] = 8;
                                                objArr118[10] = "left_time";
                                                objArr118[11] = 86400;
                                                objArr118[12] = "instance_countdown";
                                                objArr118[13] = 86400;
                                                objArr118[14] = "instance_interval";
                                                objArr118[15] = 86400;
                                                objArr118[16] = obj11114;
                                                objArr118[17] = arrayList3;
                                                linkedHashMapZ0 = p5.z0(str4111111114, 102, objArr118);
                                            } else {
                                                boolean zEquals111110 = Boolean.TRUE.equals(map2.get(L(strG2)));
                                                linkedHashMapZ0 = p5.z0("activity_type", 1, "can_receive", Boolean.valueOf(!zEquals111110), "instance_id", strG2, "left_time", 86400, "instance_countdown", 86400, "instance_interval", 86400, "reward_list", p5.v0(p5.z0("object", S(arrayList2), "status", p5.z0("condition", 1, "is_received", Boolean.valueOf(zEquals111110)))));
                                            }
                                            i8 = 0;
                                            mapArr27[0] = linkedHashMapZ0;
                                            linkedHashMapW19.put("party", p5.v0(mapArr27));
                                            linkedHashMapW19.put(r10, e(jF3, map2));
                                            obj4 = obj2;
                                            linkedHashMapW19.put(obj4, obj3);
                                            obj5 = obj11;
                                            linkedHashMapW19.put(obj5, y(new ArrayList(), arrayList));
                                            linkedHashMapR = linkedHashMapW19;
                                        }
                                    }
                                }
                            }
                        }
                        i8 = 0;
                        obj5 = obj11;
                        linkedHashMapR = linkedHashMapR2;
                        obj4 = obj2;
                    }
                    if (Boolean.TRUE.equals(linkedHashMapR.get("result"))) {
                        Map mapQ = q(linkedHashMapR, new LinkedHashMap());
                        ArrayList arrayList30 = new ArrayList();
                        String[] strArrI = i(linkedHashMapR);
                        int length5 = strArrI.length;
                        while (i8 < length5) {
                            arrayList30.add(strArrI[i8]);
                            i8++;
                        }
                        j jVarC = y0.c(arrayList19, map2);
                        jVarC.b(linkedHashMapR);
                        jVarC.a(mapQ, arrayList30);
                        if (!mapQ.isEmpty()) {
                            linkedHashMapR.put(obj5, mapQ);
                        }
                        if (!arrayList30.isEmpty()) {
                            StringBuilder sb2 = new StringBuilder();
                            Iterator it6 = arrayList30.iterator();
                            if (it6.hasNext()) {
                                while (true) {
                                    sb2.append((CharSequence) it6.next());
                                    if (!it6.hasNext()) {
                                        break;
                                    }
                                    sb2.append(charSequence);
                                }
                            }
                            linkedHashMapR.put(obj4, sb2.toString());
                        }
                    }
                    if (Boolean.TRUE.equals(linkedHashMapR.get("result"))) {
                        p.e("119", map2);
                    }
                    this = this;
                    String str60 = str4;
                    this.f789a.f904d.S0(str60, map2);
                    linkedHashMapF = this.f(str60, q(linkedHashMapR, map2), map2, i(linkedHashMapR));
                    d(linkedHashMapF, map2);
                }
                linkedHashMapR.put(obj10, linkedHashMapF);
            }
        }
        return this.f789a.n(p5.s1(linkedHashMapR));
    }
}
