package com.sgscq.vpn.handler;

import com.sgscq.vpn.a7;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.w1;
import java.math.BigInteger;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class y0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set f1038a = Collections.unmodifiableSet(new LinkedHashSet(Arrays.asList("1", "3", "4", "6", "7", "8", "9", "12", "13", "14", "15", "17", "18", "20", "21", "22", "23", "24", "25", "26", "28", "29", "30", "31", "32", "33", "35", "36", "37", "38", "40", "41")));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Set f1039b = Collections.unmodifiableSet(new LinkedHashSet(Arrays.asList("34")));

    public static void a(Map map, AbstractCollection abstractCollection, String str, ArrayList arrayList) {
        Iterator it;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        Object obj = map.get(str);
        LinkedHashMap linkedHashMap = obj instanceof Map ? new LinkedHashMap((Map) obj) : new LinkedHashMap();
        ArrayList arrayListH = h(linkedHashMap.get("del"));
        ArrayList arrayListH2 = h(linkedHashMap.get("upd"));
        ArrayList arrayListH3 = h(linkedHashMap.get("add"));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Map map2 = (Map) it2.next();
            if (map2 != null) {
                String strJ = c.a.j(map2, "id", "", "pk_id");
                int i2 = 0;
                it = it2;
                while (true) {
                    if (i2 >= arrayListH2.size()) {
                        arrayListH2.add(map2);
                        break;
                    }
                    Object obj2 = arrayListH2.get(i2);
                    if (obj2 instanceof Map) {
                        String strJ2 = c.a.j((Map) obj2, "id", "", "pk_id");
                        if (!strJ.isEmpty() && strJ.equals(strJ2)) {
                            arrayListH2.set(i2, map2);
                            break;
                        }
                    }
                    i2++;
                }
            } else {
                it = it2;
            }
            it2 = it;
        }
        linkedHashMap.put("del", arrayListH);
        linkedHashMap.put("upd", arrayListH2);
        linkedHashMap.put("add", arrayListH3);
        map.put(str, linkedHashMap);
        if (abstractCollection.contains(str)) {
            return;
        }
        abstractCollection.add(str);
    }

    public static ArrayList b(LinkedHashMap linkedHashMap) {
        Object obj = linkedHashMap.get("surrender_list");
        ArrayList arrayList = new ArrayList(obj instanceof List ? (List) obj : new ArrayList());
        Object obj2 = linkedHashMap.get("evolution_surrender_list");
        if (obj2 instanceof List) {
            arrayList.addAll((List) obj2);
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:108:0x023c  */
    /* JADX WARN: Code duplicated, block: B:122:0x0289  */
    /* JADX WARN: Code duplicated, block: B:124:0x028c  */
    /* JADX WARN: Code duplicated, block: B:125:0x0296  */
    /* JADX WARN: Code duplicated, block: B:131:0x02a5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:132:0x02a7 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:135:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:138:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:139:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:142:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:145:0x0328  */
    /* JADX WARN: Code duplicated, block: B:146:0x032c  */
    /* JADX WARN: Code duplicated, block: B:161:0x0332 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:19:0x004a  */
    public static j c(List list, Map map) {
        int i2;
        Iterator it;
        boolean z;
        String str;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        String str2;
        boolean zF;
        Set set;
        String str3;
        j jVar = new j();
        if (map != null && list != null && !list.isEmpty()) {
            Object obj = map.get("surrender_progress");
            Map linkedHashMap3 = obj instanceof Map ? (Map) obj : new LinkedHashMap();
            LinkedHashMap linkedHashMap4 = new LinkedHashMap();
            int size = list.size();
            int i5 = 0;
            while (i5 < size) {
                Iterator it2 = list.iterator();
                boolean z4 = false;
                while (it2.hasNext()) {
                    Map map2 = (Map) it2.next();
                    Set set2 = f1038a;
                    String str4 = "surrender_type";
                    String str5 = "surrender_id";
                    if (map2 == null) {
                        i2 = size;
                        it = it2;
                        z = false;
                    } else {
                        Object obj2 = map2.get("surrender_tasks");
                        if (obj2 instanceof List) {
                            List list2 = (List) obj2;
                            if (list2.isEmpty()) {
                                i2 = size;
                            } else {
                                a7 a7VarV1 = w1.a1(null).V1();
                                Iterator it3 = list2.iterator();
                                while (true) {
                                    if (it3.hasNext()) {
                                        Object next = it3.next();
                                        i2 = size;
                                        if (next instanceof Map) {
                                            Map map3 = (Map) next;
                                            String strValueOf = String.valueOf(map3.get("surrender_id"));
                                            Object obj3 = map3.get("surrender_type");
                                            it = it2;
                                            if ((((Set) a7VarV1.f191b).contains(strValueOf)) || "34".equals(String.valueOf(obj3)) || set2.contains(String.valueOf(obj3))) {
                                                size = i2;
                                                it2 = it;
                                            }
                                        }
                                        z = false;
                                    } else {
                                        i2 = size;
                                        it = it2;
                                        z = true;
                                    }
                                }
                            }
                            it = it2;
                            z = false;
                        } else {
                            i2 = size;
                            it = it2;
                            z = false;
                        }
                    }
                    if (z) {
                        String strValueOf2 = String.valueOf(map2.getOrDefault("general_id", ""));
                        if (strValueOf2.isEmpty() || !d0.P(strValueOf2, map)) {
                            i5 = i5;
                            z4 = z4;
                        } else {
                            LinkedHashMap linkedHashMapO = d0.o(map, map2, linkedHashMap3);
                            Iterator it4 = b(linkedHashMapO).iterator();
                            boolean z5 = false;
                            while (true) {
                                i5 = i5;
                                if (!it4.hasNext()) {
                                    break;
                                }
                                it4 = it4;
                                Map map4 = (Map) it4.next();
                                str4 = str4;
                                String strValueOf3 = String.valueOf(map4.getOrDefault(str4, ""));
                                if (set2.contains(strValueOf3)) {
                                    set = set2;
                                    if (!f1039b.contains(strValueOf3) && e(map4.get("surrender_status"))) {
                                        String strValueOf4 = String.valueOf(map4.getOrDefault(str5, ""));
                                        int i6 = (int) i(map4.get("progress_total"));
                                        if (!strValueOf4.isEmpty() && i6 > 0) {
                                            str3 = str5;
                                            if (i(linkedHashMap3.get(strValueOf4)) >= i6) {
                                                str5 = str3;
                                                set2 = set;
                                            } else {
                                                linkedHashMap3.put(strValueOf4, Integer.valueOf(i6));
                                                str5 = str3;
                                                set2 = set;
                                                z5 = true;
                                            }
                                        }
                                    }
                                } else {
                                    set = set2;
                                }
                                str3 = str5;
                                str5 = str3;
                                set2 = set;
                            }
                            if (z5) {
                                map.put("surrender_progress", linkedHashMap3);
                            }
                            ArrayList arrayListB = b(linkedHashMapO);
                            b0 b0Var = (b0) jVar.f883c;
                            ArrayList arrayListL = l(map, arrayListB, b0Var, linkedHashMap3);
                            String str6 = "all_status";
                            boolean zE = e(linkedHashMapO.get("all_status"));
                            Object obj4 = linkedHashMapO.get("evolution_surrender_list");
                            boolean z6 = z4;
                            List arrayList = obj4 instanceof List ? (List) obj4 : new ArrayList();
                            boolean z7 = !arrayList.isEmpty();
                            if (z7) {
                                if (arrayList.isEmpty()) {
                                    str = "all_status";
                                    zF = false;
                                } else {
                                    Iterator it5 = arrayList.iterator();
                                    int i7 = 0;
                                    while (it5.hasNext()) {
                                        String str7 = str6;
                                        if (e(((Map) it5.next()).get("surrender_status"))) {
                                            i7++;
                                        }
                                        str6 = str7;
                                    }
                                    str = str6;
                                    zF = f(i7, arrayList.size());
                                }
                                z2 = zF;
                                boolean zQ = d0.Q(strValueOf2, linkedHashMap3);
                                boolean zN = d0.N(strValueOf2, linkedHashMap3);
                                if (zE || zQ) {
                                    i3 = 0;
                                } else {
                                    linkedHashMap3.put("claimed_".concat(strValueOf2), "1");
                                    Object obj5 = linkedHashMapO.get("surrender_list");
                                    List arrayList2 = obj5 instanceof List ? (List) obj5 : new ArrayList();
                                    Object obj6 = map2.get("rewards");
                                    g(b0Var, d0.J(map, map2, arrayList2, obj6 instanceof List ? (List) obj6 : new ArrayList()));
                                    i3 = 1;
                                }
                                if (z2 || zN) {
                                    z3 = false;
                                } else {
                                    Object obj7 = map2.get("evolution_rewards");
                                    if ((obj7 instanceof List ? (List) obj7 : new ArrayList()).isEmpty()) {
                                        z3 = false;
                                    } else {
                                        linkedHashMap3.put("claimed_evolution_".concat(strValueOf2), "1");
                                        linkedHashMap3.put("evolution_soul_granted_".concat(strValueOf2), "1");
                                        Object obj8 = map2.get("evolution_rewards");
                                        g(b0Var, d0.J(map, map2, arrayList, obj8 instanceof List ? (List) obj8 : new ArrayList()));
                                        z3 = true;
                                        i3 = 1;
                                    }
                                }
                                if (i3 != 0) {
                                    map.put("surrender_progress", linkedHashMap3);
                                    jVar.f881a = true;
                                    jVar.f882b = true;
                                    z4 = true;
                                } else {
                                    z4 = z6;
                                }
                                if (arrayListL.isEmpty() || i3 != 0) {
                                    if (zE || (z7 && !z2)) {
                                        i4 = 0;
                                    } else {
                                        i4 = 1;
                                    }
                                    if (arrayListL.isEmpty()) {
                                        linkedHashMap = linkedHashMapO;
                                        arrayListL = n(linkedHashMap.get("complete_list"));
                                    } else {
                                        linkedHashMap = linkedHashMapO;
                                    }
                                    linkedHashMap2 = new LinkedHashMap();
                                    linkedHashMap2.put("general_id", strValueOf2);
                                    linkedHashMap2.put("complete_list", arrayListL);
                                    linkedHashMap2.put("item_id", linkedHashMap.get("item_id"));
                                    str2 = str;
                                    linkedHashMap2.put(str2, Integer.valueOf(i4));
                                    linkedHashMap2.put("surrender_dialog", strValueOf2.concat("02"));
                                    linkedHashMap2.put("is_receive", Integer.valueOf(i3));
                                    if (z3) {
                                        linkedHashMap2.put("item_id", linkedHashMap.get("evolution_item_id"));
                                        linkedHashMap2.put("complete_list", n(linkedHashMap.get("evolution_complete_list")));
                                        linkedHashMap2.put(str2, Integer.valueOf(e(linkedHashMap.get("evolution_all_status")) ? 1 : 0));
                                    }
                                    linkedHashMap4 = linkedHashMap4;
                                    linkedHashMap4.put(strValueOf2, linkedHashMap2);
                                    if (b0Var.f771h > 0) {
                                        jVar.f882b = true;
                                    }
                                } else {
                                    linkedHashMap4 = linkedHashMap4;
                                }
                            } else {
                                linkedHashMap4 = linkedHashMap4;
                                str = "all_status";
                            }
                            boolean zQ2 = d0.Q(strValueOf2, linkedHashMap3);
                            boolean zN2 = d0.N(strValueOf2, linkedHashMap3);
                            if (zE) {
                                i3 = 0;
                            } else {
                                i3 = 0;
                            }
                            if (z2) {
                                z3 = false;
                            } else {
                                z3 = false;
                            }
                            if (i3 != 0) {
                                map.put("surrender_progress", linkedHashMap3);
                                jVar.f881a = true;
                                jVar.f882b = true;
                                z4 = true;
                            } else {
                                z4 = z6;
                            }
                            if (arrayListL.isEmpty()) {
                                if (zE) {
                                    i4 = 0;
                                } else {
                                    i4 = 0;
                                }
                                if (arrayListL.isEmpty()) {
                                    linkedHashMap = linkedHashMapO;
                                    arrayListL = n(linkedHashMap.get("complete_list"));
                                } else {
                                    linkedHashMap = linkedHashMapO;
                                }
                                linkedHashMap2 = new LinkedHashMap();
                                linkedHashMap2.put("general_id", strValueOf2);
                                linkedHashMap2.put("complete_list", arrayListL);
                                linkedHashMap2.put("item_id", linkedHashMap.get("item_id"));
                                str2 = str;
                                linkedHashMap2.put(str2, Integer.valueOf(i4));
                                linkedHashMap2.put("surrender_dialog", strValueOf2.concat("02"));
                                linkedHashMap2.put("is_receive", Integer.valueOf(i3));
                                if (z3) {
                                    linkedHashMap2.put("item_id", linkedHashMap.get("evolution_item_id"));
                                    linkedHashMap2.put("complete_list", n(linkedHashMap.get("evolution_complete_list")));
                                    linkedHashMap2.put(str2, Integer.valueOf(e(linkedHashMap.get("evolution_all_status")) ? 1 : 0));
                                }
                                linkedHashMap4 = linkedHashMap4;
                                linkedHashMap4.put(strValueOf2, linkedHashMap2);
                                if (b0Var.f771h > 0) {
                                    jVar.f882b = true;
                                }
                            } else {
                                if (zE) {
                                    i4 = 0;
                                } else {
                                    i4 = 0;
                                }
                                if (arrayListL.isEmpty()) {
                                    linkedHashMap = linkedHashMapO;
                                    arrayListL = n(linkedHashMap.get("complete_list"));
                                } else {
                                    linkedHashMap = linkedHashMapO;
                                }
                                linkedHashMap2 = new LinkedHashMap();
                                linkedHashMap2.put("general_id", strValueOf2);
                                linkedHashMap2.put("complete_list", arrayListL);
                                linkedHashMap2.put("item_id", linkedHashMap.get("item_id"));
                                str2 = str;
                                linkedHashMap2.put(str2, Integer.valueOf(i4));
                                linkedHashMap2.put("surrender_dialog", strValueOf2.concat("02"));
                                linkedHashMap2.put("is_receive", Integer.valueOf(i3));
                                if (z3) {
                                    linkedHashMap2.put("item_id", linkedHashMap.get("evolution_item_id"));
                                    linkedHashMap2.put("complete_list", n(linkedHashMap.get("evolution_complete_list")));
                                    linkedHashMap2.put(str2, Integer.valueOf(e(linkedHashMap.get("evolution_all_status")) ? 1 : 0));
                                }
                                linkedHashMap4 = linkedHashMap4;
                                linkedHashMap4.put(strValueOf2, linkedHashMap2);
                                if (b0Var.f771h > 0) {
                                    jVar.f882b = true;
                                }
                            }
                        }
                    } else {
                        i5 = i5;
                        z4 = z4;
                    }
                    size = i2;
                    it2 = it;
                    i5 = i5;
                }
                int i8 = size;
                int i9 = i5;
                if (!z4) {
                    break;
                }
                i5 = i9 + 1;
                size = i8;
            }
            if (!linkedHashMap4.isEmpty()) {
                jVar.f884d = p5.z0("general_list", linkedHashMap4, new Object[0]);
            }
        }
        return jVar;
    }

    public static void d(Map map, ArrayList arrayList, String str, int i2, Set set) {
        boolean z;
        Object obj;
        if (arrayList.isEmpty() || i2 <= 0) {
            return;
        }
        Object obj2 = map.get("surrender_progress");
        Map linkedHashMap = obj2 instanceof Map ? (Map) obj2 : new LinkedHashMap();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = arrayList.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            Map map2 = (Map) it.next();
            Object obj3 = map2 == null ? null : map2.get("surrender_tasks");
            if (obj3 instanceof List) {
                for (Object obj4 : (List) obj3) {
                    if (obj4 instanceof Map) {
                        Map map3 = (Map) obj4;
                        if (c.a.B(map3, "surrender_type", "", str)) {
                            if ("38".equals(str)) {
                                if (set == null || set.isEmpty()) {
                                    z = false;
                                } else {
                                    Iterator it2 = Arrays.asList("limit_first", "limit_second", "limit_third").iterator();
                                    while (true) {
                                        if (it2.hasNext()) {
                                            String strValueOf = String.valueOf(map3.getOrDefault((String) it2.next(), ""));
                                            if (strValueOf.isEmpty() || "0".equals(strValueOf) || !set.contains(strValueOf)) {
                                            }
                                        } else {
                                            Object obj5 = map3.get("source");
                                            if (obj5 instanceof List) {
                                                Iterator it3 = ((List) obj5).iterator();
                                                while (true) {
                                                    if (it3.hasNext()) {
                                                        Object next = it3.next();
                                                        if ((next instanceof Map) && (obj = ((Map) next).get("param_value")) != null && set.contains(String.valueOf(obj))) {
                                                        }
                                                    }
                                                }
                                            }
                                            z = false;
                                        }
                                        z = true;
                                    }
                                }
                                if (!z) {
                                }
                            }
                            String strValueOf2 = String.valueOf(map3.getOrDefault("surrender_id", ""));
                            if (!strValueOf2.isEmpty() && linkedHashSet.add(strValueOf2)) {
                                linkedHashMap.put(strValueOf2, Integer.valueOf((int) Math.min(2147483647L, i(linkedHashMap.get(strValueOf2)) + ((long) i2))));
                                z2 = true;
                            }
                        }
                    }
                }
            }
        }
        if (z2) {
            map.put("surrender_progress", linkedHashMap);
        }
    }

    public static boolean e(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).intValue() == 1;
        }
        return "1".equals(String.valueOf(obj)) || Boolean.TRUE.equals(obj);
    }

    public static boolean f(int i2, int i3) {
        if (i3 <= 0) {
            return false;
        }
        if (i3 == 5) {
            i3 = 4;
        }
        return i2 >= i3;
    }

    public static void g(b0 b0Var, b0 b0Var2) {
        b0Var.f764a.addAll(b0Var2.f764a);
        b0Var.f765b.addAll(b0Var2.f765b);
        b0Var.f766c.addAll(b0Var2.f766c);
        b0Var.f767d.addAll(b0Var2.f767d);
        b0Var.f768e.addAll(b0Var2.f768e);
        b0Var.f769f.addAll(b0Var2.f769f);
        b0Var.f770g.addAll(b0Var2.f770g);
        b0Var.f771h += b0Var2.f771h;
        b0Var.f772i = b0Var2.f772i | b0Var.f772i;
    }

    public static ArrayList h(Object obj) {
        return obj instanceof List ? new ArrayList((List) obj) : new ArrayList();
    }

    public static long i(Object obj) {
        if (obj instanceof Number) {
            return Math.min(2147483647L, Math.max(0L, ((Number) obj).longValue()));
        }
        try {
            BigInteger bigInteger = new BigInteger(String.valueOf(obj).trim());
            if (bigInteger.signum() <= 0) {
                return 0L;
            }
            return bigInteger.min(BigInteger.valueOf(2147483647L)).longValue();
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    public static void j(List list, Map map, Map map2) {
        if (list.isEmpty() || map2 == null || map2.isEmpty()) {
            return;
        }
        Object obj = map.get("surrender_progress");
        Map linkedHashMap = obj instanceof Map ? (Map) obj : new LinkedHashMap();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = list.iterator();
        boolean z = false;
        while (it.hasNext()) {
            Map map3 = (Map) it.next();
            Object obj2 = map3 == null ? null : map3.get("surrender_tasks");
            if (obj2 instanceof List) {
                for (Object obj3 : (List) obj2) {
                    if (obj3 instanceof Map) {
                        Map map4 = (Map) obj3;
                        if (c.a.B(map4, "surrender_type", "", "18")) {
                            String strValueOf = String.valueOf(map4.getOrDefault("surrender_id", ""));
                            if (!strValueOf.isEmpty() && linkedHashSet.add(strValueOf)) {
                                Iterator it2 = Arrays.asList("limit_first", "limit_second", "limit_third").iterator();
                                int iMax = 0;
                                while (it2.hasNext()) {
                                    String strValueOf2 = String.valueOf(map4.getOrDefault((String) it2.next(), ""));
                                    if (!strValueOf2.isEmpty() && !"0".equals(strValueOf2)) {
                                        iMax = Math.max(iMax, (int) i(map2.get(strValueOf2)));
                                    }
                                }
                                if (iMax > 0) {
                                    linkedHashMap.put(strValueOf, Integer.valueOf((int) Math.min(2147483647L, i(linkedHashMap.get(strValueOf)) + ((long) iMax))));
                                    z = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        if (z) {
            map.put("surrender_progress", linkedHashMap);
        }
    }

    public static int k(int i2, int i3) {
        long jMax = Math.max(0L, i3) + Math.max(0L, i2);
        if (jMax >= 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) jMax;
    }

    public static ArrayList l(Map map, List list, b0 b0Var, Map map2) {
        ArrayList arrayList = new ArrayList();
        if (map != null && list != null && b0Var != null) {
            Iterator it = list.iterator();
            int iK = 0;
            while (it.hasNext()) {
                Map map3 = (Map) it.next();
                if (map3 != null && e(map3.get("surrender_status"))) {
                    String strValueOf = String.valueOf(map3.getOrDefault("surrender_id", ""));
                    String strConcat = "govern_claimed_".concat(strValueOf);
                    if (!strValueOf.isEmpty() && !e(map2.get(strConcat))) {
                        map2.put(strConcat, "1");
                        arrayList.add(strValueOf);
                        iK = k(iK, (int) i(map3.get("govern_value")));
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return arrayList;
            }
            map.put("surrender_progress", map2);
            if (iK > 0) {
                int i2 = (int) i(map.get("govern"));
                int iK2 = k(i2, iK);
                map.put("govern", Integer.valueOf(iK2));
                b0Var.f771h = k(b0Var.f771h, iK2 - i2);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:77:0x01c1  */
    public static void m(Map map, List list, String str, String str2, int i2, long j2, String str3) {
        Iterator it;
        LinkedHashSet linkedHashSet;
        int i3;
        Iterator it2;
        int iK;
        int i4;
        int i5;
        int i6 = i2;
        if (list == null || list.isEmpty() || j2 <= 0 || str3 == null || str3.isEmpty()) {
            return;
        }
        String str4 = "surrender_rank_duration";
        Object obj = map.get("surrender_rank_duration");
        Map linkedHashMap = obj instanceof Map ? (Map) obj : new LinkedHashMap();
        String str5 = "surrender_progress";
        Object obj2 = map.get("surrender_progress");
        Map linkedHashMap2 = obj2 instanceof Map ? (Map) obj2 : new LinkedHashMap();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        Iterator it3 = list.iterator();
        int i7 = 0;
        int i8 = 0;
        while (it3.hasNext()) {
            Map map2 = (Map) it3.next();
            Object obj3 = map2 == null ? null : map2.get("surrender_tasks");
            if (obj3 instanceof List) {
                Iterator it4 = ((List) obj3).iterator();
                while (it4.hasNext()) {
                    Object next = it4.next();
                    if (next instanceof Map) {
                        Map map3 = (Map) next;
                        String strValueOf = String.valueOf(map3.getOrDefault("surrender_type", ""));
                        boolean zEquals = str.equals(strValueOf);
                        it = it3;
                        boolean zEquals2 = str2.equals(strValueOf);
                        if (zEquals || zEquals2) {
                            String strValueOf2 = String.valueOf(map3.getOrDefault("surrender_id", ""));
                            if (strValueOf2.isEmpty() || !linkedHashSet2.add(strValueOf2)) {
                                linkedHashSet = linkedHashSet2;
                            } else {
                                linkedHashSet = linkedHashSet2;
                                Object obj4 = linkedHashMap.get(strValueOf2);
                                LinkedHashMap linkedHashMap3 = obj4 instanceof Map ? new LinkedHashMap((Map) obj4) : new LinkedHashMap();
                                if (!str3.equals(String.valueOf(linkedHashMap3.getOrDefault("checkpoint", "")))) {
                                    i3 = i8;
                                    it2 = it4;
                                    int i9 = (int) i(linkedHashMap3.get("current"));
                                    int i10 = (int) i(linkedHashMap3.get("total"));
                                    str5 = str5;
                                    Map map4 = linkedHashMap2;
                                    int i11 = (int) i(linkedHashMap3.get("remainder_seconds"));
                                    str4 = str4;
                                    Map map5 = linkedHashMap;
                                    if (i6 > 0 && i6 <= Math.max(1, (int) i(map3.get("limit_first")))) {
                                        long j3 = ((long) i11) + j2;
                                        int iMin = (int) Math.min(2147483647L, j3 / 3600);
                                        int i12 = (int) (j3 % 3600);
                                        iK = k(i9, iMin);
                                        i10 = k(i10, iMin);
                                        i4 = i12;
                                    } else {
                                        iK = 0;
                                        i4 = zEquals ? 0 : i11;
                                    }
                                    c.a.s(iK, linkedHashMap3, "current", i10, "total", i4, "remainder_seconds");
                                    linkedHashMap3.put("checkpoint", str3);
                                    linkedHashMap = map5;
                                    linkedHashMap.put(strValueOf2, linkedHashMap3);
                                    int i13 = (int) i(map3.get("limit_second"));
                                    if (i13 <= 0) {
                                        i5 = 1;
                                        i13 = Math.max(1, (int) i(map3.get("progress_num")));
                                    } else {
                                        i5 = 1;
                                    }
                                    i7 = i5;
                                    if (!zEquals) {
                                        iK = i10;
                                    }
                                    if (iK >= i13) {
                                        int iMax = Math.max(i7, (int) i(map3.get("progress_num")));
                                        linkedHashMap2 = map4;
                                        if (i(linkedHashMap2.get(strValueOf2)) < iMax) {
                                            linkedHashMap2.put(strValueOf2, Integer.valueOf(iMax));
                                            i8 = i7;
                                        }
                                    } else {
                                        linkedHashMap2 = map4;
                                    }
                                    i8 = i3;
                                }
                            }
                        } else {
                            linkedHashSet = linkedHashSet2;
                        }
                        it3 = it;
                        i6 = i2;
                        linkedHashSet2 = linkedHashSet;
                        it4 = it2;
                        str5 = str5;
                        str4 = str4;
                    } else {
                        linkedHashSet = linkedHashSet2;
                        it = it3;
                    }
                    i3 = i8;
                    it2 = it4;
                    i8 = i3;
                    it3 = it;
                    i6 = i2;
                    linkedHashSet2 = linkedHashSet;
                    it4 = it2;
                    str5 = str5;
                    str4 = str4;
                }
                i6 = i2;
            }
        }
        String str6 = str4;
        String str7 = str5;
        if (i7 != 0) {
            map.put(str6, linkedHashMap);
        }
        if (i8 != 0) {
            map.put(str7, linkedHashMap2);
        }
    }

    public static ArrayList n(Object obj) {
        ArrayList arrayList = new ArrayList();
        if (!(obj instanceof List)) {
            return arrayList;
        }
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(it.next()));
        }
        return arrayList;
    }
}
