package com.sgscq.vpn;

import android.content.Context;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class n5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w1 f1224a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f1225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f1226c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f1227d = new LinkedHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkedHashMap f1228e = new LinkedHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkedHashSet f1229f = new LinkedHashSet();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f1230g = new ArrayList();

    public n5(Context context) {
        Map mapEmptyMap;
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        this.f1224a = w1.a1(context);
        String strA = o0.a(context, "fates.json");
        if (strA == null || strA.isEmpty()) {
            mapEmptyMap = Collections.emptyMap();
        } else {
            try {
                mapEmptyMap = (Map) new a.o().e(strA, new TypeToken<Map<String, Map<String, Object>>>() { // from class: com.sgscq.vpn.RobotFormationPlanner$1
                }.getType());
                if (mapEmptyMap == null) {
                    mapEmptyMap = Collections.emptyMap();
                }
            } catch (RuntimeException unused) {
                mapEmptyMap = Collections.emptyMap();
            }
        }
        this.f1225b = mapEmptyMap;
        int i2 = 1;
        while (true) {
            linkedHashMap = this.f1227d;
            linkedHashMap2 = this.f1226c;
            if (i2 > 4) {
                break;
            }
            linkedHashMap2.put(Integer.valueOf(i2), new ArrayList());
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            for (int i3 = 1; i3 <= 4; i3++) {
                linkedHashMap3.put(Integer.valueOf(i3), new ArrayList());
            }
            linkedHashMap.put(Integer.valueOf(i2), linkedHashMap3);
            i2++;
        }
        w1 w1Var = this.f1224a;
        Iterator it = w1Var.k0().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            String str = (String) it.next();
            Map mapK1 = w1Var.k1(str);
            int iK = mapK1 != null ? k(mapK1.get("skill_type")) : 0;
            if (n(mapK1) && c.a.A(mapK1, "can_fit", "1") && !j(mapK1)) {
                ((List) linkedHashMap2.get(Integer.valueOf(iK))).add(str);
            }
        }
        for (String str2 : w1Var.i0()) {
            Map mapJ0 = w1Var.J0(str2);
            if (l(str2)) {
                this.f1229f.add(str2);
                int iK2 = k(mapJ0.get("lieutenant_skill_id"));
                Map mapK2 = this.f1224a.k1(String.valueOf(mapJ0.getOrDefault("general_naturalskill_id", "")));
                int iK3 = n(mapK2) ? k(mapK2.get("skill_type")) : 0;
                if (iK2 >= 1 && iK2 <= 4 && iK3 >= 1 && iK3 <= 4) {
                    ((List) ((Map) linkedHashMap.get(Integer.valueOf(iK2))).get(Integer.valueOf(iK3))).add(str2);
                }
            }
        }
        b("303101", 1);
        b("312010", 2);
        int i4 = 3;
        b("312016", 3);
        b("302101", 4);
        a(1, 1, "111018");
        a(1, 2, "111006");
        a(1, 3, "111001");
        a(1, 4, "111022");
        a(2, 1, "141009");
        a(2, 3, "111008");
        a(2, 4, "131005");
        a(3, 3, "111030");
        a(3, 4, "111031");
        a(4, 1, "111023");
        a(4, 2, "111004");
        a(4, 3, "111024");
        a(4, 4, "141020");
        Iterator it2 = linkedHashMap2.values().iterator();
        while (it2.hasNext()) {
            Collections.sort((List) it2.next());
        }
        Iterator it3 = linkedHashMap.values().iterator();
        while (it3.hasNext()) {
            Iterator it4 = ((Map) it3.next()).values().iterator();
            while (it4.hasNext()) {
                Collections.sort((List) it4.next());
            }
        }
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        for (Map.Entry entry : this.f1225b.entrySet()) {
            String str3 = (String) entry.getKey();
            Map map = (Map) entry.getValue();
            if (map != null && k(map.get("fate_type")) == 1) {
                Object obj = map.get("fate_object");
                if (obj instanceof List) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    Iterator it5 = ((List) obj).iterator();
                    while (it5.hasNext()) {
                        String strValueOf = String.valueOf(it5.next());
                        if (!strValueOf.isEmpty() && !"0".equals(strValueOf)) {
                            linkedHashSet.add(strValueOf);
                        }
                    }
                    if (linkedHashSet.size() >= 3) {
                        ArrayList<String> arrayList = new ArrayList(linkedHashSet);
                        Collections.sort(arrayList);
                        boolean z = k(map.get("fate_limit")) == 1;
                        double dF = f(map.get("fate_effect"));
                        i5 i5Var = new i5(str3, arrayList, z ? dF + (f(map.get("fate_effect_step")) * ((double) Math.max(0, arrayList.size() - 1))) : dF);
                        StringBuilder sb = new StringBuilder();
                        for (String str4 : arrayList) {
                            if (sb.length() > 0) {
                                sb.append('|');
                            }
                            sb.append(str4);
                        }
                        String string = sb.toString();
                        i5 i5Var2 = (i5) linkedHashMap4.get(string);
                        if (i5Var2 != null) {
                            double d2 = i5Var.f1060c;
                            double d3 = i5Var2.f1060c;
                            if (d2 > d3 || (Double.compare(d2, d3) == 0 && i5Var.f1058a.compareTo(i5Var2.f1058a) < 0)) {
                            }
                        }
                        linkedHashMap4.put(string, i5Var);
                    }
                }
            }
        }
        ArrayList arrayList2 = this.f1230g;
        arrayList2.clear();
        arrayList2.addAll(linkedHashMap4.values());
        arrayList2.sort(new n.b(i4));
    }

    public static double e(double[] dArr, int i2) {
        if (dArr == null || i2 < 0 || i2 >= dArr.length) {
            return 0.0d;
        }
        return dArr[i2];
    }

    public static double f(Object obj) {
        try {
            return Double.parseDouble(String.valueOf(obj));
        } catch (RuntimeException unused) {
            return 0.0d;
        }
    }

    public static int g(int i2, ArrayList arrayList) {
        int i3 = 0;
        for (int i4 = 0; i4 < Math.min(i2, arrayList.size()); i4++) {
            if (((String) arrayList.get(i4)).isEmpty()) {
                i3++;
            }
        }
        return i3;
    }

    public static boolean j(Map map) {
        Object obj = map.get("source");
        if (!(obj instanceof List)) {
            return false;
        }
        for (Object obj2 : (List) obj) {
            if ((obj2 instanceof Map) && c.a.A((Map) obj2, "source_type", "16")) {
                return true;
            }
        }
        return false;
    }

    public static int k(Object obj) {
        try {
            return (int) Double.parseDouble(String.valueOf(obj));
        } catch (RuntimeException unused) {
            return 0;
        }
    }

    public static boolean n(Map map) {
        int iK;
        return map != null && (iK = k(map.get("skill_type"))) >= 1 && iK <= 4 && c.a.A(map, "is_open", "1") && c.a.A(map, "is_version", "1");
    }

    public static String p(int i2, List list, Set set) {
        if (list != null && !list.isEmpty()) {
            int iFloorMod = Math.floorMod(i2, list.size());
            for (int i3 = 0; i3 < list.size(); i3++) {
                String str = (String) list.get((iFloorMod + i3) % list.size());
                if (str != null && !str.isEmpty() && (set == null || !set.contains(str))) {
                    return str;
                }
            }
        }
        return "";
    }

    public static String q(int i2, List list, List list2) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        if (list2 != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (list2.contains(str)) {
                    arrayList.add(str);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            list = arrayList;
        }
        return p(i2, list, Collections.emptySet());
    }

    public static String r(List list, List list2, int i2, HashSet hashSet) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        if (list2 != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (list2.contains(str)) {
                    arrayList.add(str);
                }
            }
        }
        String strP = p(i2, arrayList, hashSet);
        return strP.isEmpty() ? p(i2, list, hashSet) : strP;
    }

    public static ArrayList u(ArrayList arrayList) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str != null && !str.isEmpty()) {
                linkedHashSet.add(str);
            }
        }
        return new ArrayList(linkedHashSet);
    }

    public final void a(int i2, int i3, String str) {
        if (this.f1224a.i0().isEmpty() || l(str)) {
            List list = (List) ((Map) this.f1227d.get(Integer.valueOf(i2))).get(Integer.valueOf(i3));
            if (!list.contains(str)) {
                list.add(str);
            }
            this.f1229f.add(str);
            this.f1228e.put(str, Integer.valueOf(i3));
        }
    }

    public final void b(String str, int i2) {
        if (this.f1224a.k0().isEmpty() || m(str)) {
            List list = (List) this.f1226c.get(Integer.valueOf(i2));
            if (list.contains(str)) {
                return;
            }
            list.add(str);
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x011a  */
    public final ArrayList c(String str, int i2, HashSet hashSet) {
        List list;
        ArrayList arrayList;
        ArrayList arrayList2;
        n5 n5Var = this;
        m5 m5VarT = t(str);
        int iO = o(str);
        List list2 = h(str).f1113b;
        Map mapEmptyMap = (Map) n5Var.f1227d.get(Integer.valueOf(m5VarT.f1198a));
        if (mapEmptyMap == null) {
            mapEmptyMap = Collections.emptyMap();
        }
        Map map = mapEmptyMap;
        List listH0 = n5Var.f1224a.H0(str);
        ArrayList arrayList3 = new ArrayList();
        for (int i3 = 1; i3 <= 4; i3++) {
            if (i3 != iO) {
                arrayList3.add(Integer.valueOf(i3));
            }
        }
        ArrayList arrayList4 = new ArrayList();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = arrayList3.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Integer) it.next()).intValue();
            ArrayList arrayList5 = new ArrayList(arrayList3);
            arrayList5.remove(Integer.valueOf(iIntValue));
            if (arrayList5.size() == 2) {
                String strQ = q((iIntValue * 59) + i2, (List) n5Var.f1226c.get(Integer.valueOf(iIntValue)), listH0);
                if (!strQ.isEmpty()) {
                    int i4 = 0;
                    for (int i5 = 2; i4 < i5; i5 = 2) {
                        List listEmptyList = i4 == 0 ? list2 : Collections.emptyList();
                        int i6 = 0;
                        while (i6 < 24) {
                            HashSet hashSet2 = new HashSet();
                            hashSet2.addAll(hashSet);
                            int i7 = i4;
                            String strR = r((List) map.get(arrayList5.get(0)), listEmptyList, (((Integer) arrayList5.get(0)).intValue() * 31) + i2 + i6, hashSet2);
                            if (strR.isEmpty()) {
                                list = listEmptyList;
                                arrayList = arrayList5;
                                arrayList2 = arrayList4;
                            } else {
                                hashSet2.add(strR);
                                String strR2 = r((List) map.get(arrayList5.get(1)), listEmptyList, (((Integer) arrayList5.get(1)).intValue() * 47) + i2 + i6, hashSet2);
                                if (strR2.isEmpty()) {
                                    list = listEmptyList;
                                    arrayList = arrayList5;
                                    arrayList2 = arrayList4;
                                } else {
                                    if (linkedHashSet.add(strR + "|" + strR2 + "|" + iIntValue)) {
                                        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                                        linkedHashSet2.add(Integer.valueOf(iO));
                                        linkedHashSet2.add(Integer.valueOf(iIntValue));
                                        linkedHashSet2.addAll(arrayList5);
                                        arrayList = arrayList5;
                                        ArrayList arrayList6 = new ArrayList();
                                        arrayList6.add(strR);
                                        arrayList6.add(strR2);
                                        list = listEmptyList;
                                        arrayList2 = arrayList4;
                                        arrayList2.add(new j5(m5VarT, strQ, iIntValue, arrayList6, arrayList, linkedHashSet2, iO));
                                    } else {
                                        list = listEmptyList;
                                        arrayList = arrayList5;
                                        arrayList2 = arrayList4;
                                    }
                                }
                            }
                            i6++;
                            listEmptyList = list;
                            arrayList4 = arrayList2;
                            m5VarT = m5VarT;
                            i4 = i7;
                            arrayList5 = arrayList;
                            iIntValue = iIntValue;
                            linkedHashSet = linkedHashSet;
                        }
                        i4++;
                        m5VarT = m5VarT;
                    }
                    n5Var = this;
                }
            }
        }
        return arrayList4;
    }

    public final j5 d(String str, int i2, HashSet hashSet) {
        m5 m5VarT = t(str);
        int iO = o(str);
        List list = h(str).f1113b;
        j5 j5VarS = s(str, m5VarT, iO, list, i2, hashSet);
        if (j5VarS.a()) {
            return j5VarS;
        }
        if (!this.f1225b.isEmpty() && this.f1224a.J0(str) != null) {
            return j5VarS;
        }
        for (int i3 = 1; i3 <= 4; i3++) {
            if (i3 != m5VarT.f1198a) {
                j5VarS = s(str, new m5(i3, m5VarT.f1199b, String.valueOf(i3)), iO, list, i2, hashSet);
                if (j5VarS.a()) {
                    return j5VarS;
                }
            }
        }
        return j5VarS;
    }

    public final k5 h(String str) {
        List listI = i(str);
        return listI.isEmpty() ? new k5("", Collections.emptyList(), 0.0d, false, 0) : (k5) listI.get(0);
    }

    public final List i(String str) {
        Map map;
        Map mapJ0 = this.f1224a.J0(str);
        LinkedHashSet linkedHashSet = this.f1229f;
        ArrayList arrayList = new ArrayList();
        if (mapJ0 == null || (map = this.f1225b) == null) {
            return arrayList;
        }
        Object obj = mapJ0.get("general_fate_id");
        if (!(obj instanceof List)) {
            return arrayList;
        }
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            String strValueOf = String.valueOf(it.next());
            Map map2 = (Map) map.get(strValueOf);
            if (map2 != null && k(map2.get("fate_type")) == 1) {
                Object obj2 = map2.get("fate_object");
                if (obj2 instanceof List) {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it2 = ((List) obj2).iterator();
                    int i2 = 0;
                    while (it2.hasNext()) {
                        String strValueOf2 = String.valueOf(it2.next());
                        if (!strValueOf2.isEmpty() && (linkedHashSet == null || linkedHashSet.isEmpty() || linkedHashSet.contains(strValueOf2))) {
                            i2++;
                            if (!strValueOf2.equals(str) && !arrayList2.contains(strValueOf2)) {
                                arrayList2.add(strValueOf2);
                            }
                        }
                    }
                    if (i2 != 0) {
                        boolean z = k(map2.get("fate_limit")) == 1;
                        double dF = f(map2.get("fate_effect"));
                        if (z) {
                            dF = (f(map2.get("fate_effect_step")) * ((double) Math.max(0, i2 - 1))) + dF;
                        }
                        arrayList.add(new k5(strValueOf, arrayList2, dF, z, k(map2.get("fate_addition_type"))));
                    }
                }
            }
        }
        arrayList.sort(new n.b(4));
        return Collections.unmodifiableList(arrayList);
    }

    public final boolean l(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        w1 w1Var = this.f1224a;
        Map mapJ0 = w1Var.J0(str);
        if (mapJ0 == null) {
            return w1Var.i0().isEmpty();
        }
        double[] dArrM0 = w1Var.M0(1, 1, str);
        if (dArrM0 == null || dArrM0.length <= 4 || !c.a.A(mapJ0, "is_open", "1") || !c.a.A(mapJ0, "is_version", "1")) {
            return false;
        }
        return n(w1Var.k1(String.valueOf(mapJ0.getOrDefault("general_naturalskill_id", ""))));
    }

    public final boolean m(String str) {
        w1 w1Var = this.f1224a;
        Map mapK1 = w1Var.k1(str);
        if (mapK1 == null && w1Var.k0().isEmpty()) {
            Iterator it = this.f1226c.values().iterator();
            while (it.hasNext()) {
                if (((List) it.next()).contains(str)) {
                    return true;
                }
            }
        }
        return n(mapK1) && c.a.A(mapK1, "can_fit", "1") && !j(mapK1);
    }

    public final int o(String str) {
        w1 w1Var = this.f1224a;
        Map mapJ0 = w1Var.J0(str);
        Map mapK1 = w1Var.k1(mapJ0 != null ? String.valueOf(mapJ0.getOrDefault("general_naturalskill_id", "")) : "");
        int iK = n(mapK1) ? k(mapK1.get("skill_type")) : 0;
        if (iK <= 0) {
            iK = ((Integer) this.f1228e.getOrDefault(str, 0)).intValue();
        }
        return iK <= 0 ? Math.floorMod(String.valueOf(str).hashCode(), 4) + 1 : iK;
    }

    public final j5 s(String str, m5 m5Var, int i2, List list, int i3, HashSet hashSet) {
        Map mapEmptyMap = (Map) this.f1227d.get(Integer.valueOf(m5Var.f1198a));
        if (mapEmptyMap == null) {
            mapEmptyMap = Collections.emptyMap();
        }
        Map map = mapEmptyMap;
        List listH0 = this.f1224a.H0(str);
        LinkedHashMap linkedHashMap = this.f1226c;
        ArrayList arrayList = new ArrayList();
        for (int i4 = 1; i4 <= 4; i4++) {
            if (i4 != i2) {
                arrayList.add(Integer.valueOf(i4));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (true) {
            boolean z = false;
            if (!it.hasNext()) {
                break;
            }
            int iIntValue = ((Integer) it.next()).intValue();
            List list2 = (List) linkedHashMap.get(Integer.valueOf(iIntValue));
            if (list2 != null && listH0 != null) {
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    if (listH0.contains((String) it2.next())) {
                        z = true;
                        break;
                    }
                }
            }
            if (z) {
                arrayList2.add(Integer.valueOf(iIntValue));
            }
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            int iIntValue2 = ((Integer) it3.next()).intValue();
            if (!arrayList2.contains(Integer.valueOf(iIntValue2))) {
                arrayList2.add(Integer.valueOf(iIntValue2));
            }
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (i2 >= 1 && i2 <= 4) {
            linkedHashSet.add(Integer.valueOf(i2));
        }
        int i5 = 1;
        j5 j5Var = new j5(m5Var, "", 0, Collections.emptyList(), Collections.emptyList(), linkedHashSet, i2);
        Iterator it4 = arrayList2.iterator();
        int i6 = -1;
        j5 j5Var2 = j5Var;
        boolean z2 = false;
        while (it4.hasNext()) {
            int iIntValue3 = ((Integer) it4.next()).intValue();
            ArrayList arrayList3 = new ArrayList(arrayList);
            arrayList3.remove(Integer.valueOf(iIntValue3));
            if (arrayList3.size() == 2) {
                HashSet hashSet2 = new HashSet();
                hashSet2.addAll(hashSet);
                String strR = r((List) map.get(arrayList3.get(0)), list, (((Integer) arrayList3.get(0)).intValue() * 31) + i3, hashSet2);
                if (!strR.isEmpty()) {
                    hashSet2.add(strR);
                    String strR2 = r((List) map.get(arrayList3.get(i5)), list, (((Integer) arrayList3.get(i5)).intValue() * 47) + i3, hashSet2);
                    if (!strR2.isEmpty()) {
                        String strQ = q((iIntValue3 * 59) + i3, (List) linkedHashMap.get(Integer.valueOf(iIntValue3)), listH0);
                        if (!strQ.isEmpty()) {
                            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                            linkedHashSet2.add(Integer.valueOf(i2));
                            linkedHashSet2.add(Integer.valueOf(iIntValue3));
                            linkedHashSet2.addAll(arrayList3);
                            ArrayList arrayList4 = new ArrayList();
                            arrayList4.add(strR);
                            arrayList4.add(strR2);
                            int i7 = i6;
                            j5 j5Var3 = new j5(m5Var, strQ, iIntValue3, arrayList4, arrayList3, linkedHashSet2, i2);
                            int i8 = ((list == null || !list.contains(strR2)) ? 0 : 1) + ((list == null || !list.contains(strR)) ? 0 : 1);
                            boolean z3 = ((listH0 == null || !listH0.contains(strQ)) ? (char) 0 : (char) 1) > 0;
                            if (i8 > i7 || (i8 == i7 && z3 && !z2)) {
                                z2 = z3;
                                j5Var2 = j5Var3;
                                i6 = i8;
                            } else {
                                i6 = i7;
                            }
                        }
                    }
                }
            }
            i5 = 1;
        }
        return j5Var2;
    }

    public final m5 t(String str) {
        int iK;
        w1 w1Var = this.f1224a;
        Map mapJ0 = w1Var.J0(str);
        double[] dArrK0 = w1Var.K0(str);
        ArrayList arrayList = new ArrayList();
        int i2 = 4;
        double d2 = -1.0d;
        if (mapJ0 != null) {
            Object obj = mapJ0.get("general_fate_id");
            if (obj instanceof List) {
                for (Object obj2 : (List) obj) {
                    Map map = this.f1225b;
                    Map map2 = map == null ? null : (Map) map.get(String.valueOf(obj2));
                    if (map2 != null && (iK = k(map2.get("fate_addition_type"))) >= 1 && iK <= 4) {
                        double dF = f(map2.get("fate_effect"));
                        if (dF > d2) {
                            arrayList.clear();
                            arrayList.add(Integer.valueOf(iK));
                            d2 = dF;
                        } else if (Double.compare(dF, d2) == 0 && !arrayList.contains(Integer.valueOf(iK))) {
                            arrayList.add(Integer.valueOf(iK));
                        }
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            arrayList = new ArrayList();
            for (int i3 = 1; i3 <= 4; i3++) {
                arrayList.add(Integer.valueOf(i3));
            }
        }
        int iIntValue = ((Integer) arrayList.get(0)).intValue();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            int iIntValue2 = ((Integer) it.next()).intValue();
            int i4 = -1;
            double d3 = d2;
            int iCompare = Double.compare(e(dArrK0, (iIntValue2 < 1 || iIntValue2 > i2) ? -1 : new int[]{-1, 6, 7, 5, 8}[iIntValue2]), e(dArrK0, (iIntValue < 1 || iIntValue > 4) ? -1 : new int[]{-1, 6, 7, 5, 8}[iIntValue]));
            if (iCompare != 0) {
                i2 = 4;
            } else {
                double dE = e(dArrK0, (iIntValue2 < 1 || iIntValue2 > 4) ? -1 : new int[]{-1, 1, 2, 0, 3}[iIntValue2]);
                int[] iArr = {-1, 1, 2, 0, 3};
                i2 = 4;
                if (iIntValue >= 1 && iIntValue <= 4) {
                    i4 = iArr[iIntValue];
                }
                iCompare = Double.compare(dE, e(dArrK0, i4));
                if (iCompare == 0) {
                    iCompare = Integer.compare(iIntValue, iIntValue2);
                }
            }
            if (iCompare > 0) {
                iIntValue = iIntValue2;
            }
            d2 = d3;
        }
        double d4 = d2;
        return new m5(iIntValue, d4 < 0.0d ? 0.0d : d4, String.valueOf(iIntValue));
    }
}
