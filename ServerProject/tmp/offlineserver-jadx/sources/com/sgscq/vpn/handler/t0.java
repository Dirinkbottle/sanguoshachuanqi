package com.sgscq.vpn.handler;

import android.content.Context;
import com.sgscq.vpn.c7;
import com.sgscq.vpn.h5;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.w1;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class t0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LinkedHashMap f995b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k0 f996a;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c(linkedHashMap, "800001", "121006", "211003", "关羽", "青龙偃月刀");
        c(linkedHashMap, "800007", "131008", "221008", "小乔", "朱雀冠");
        c(linkedHashMap, "800002", "131009", "241006", "陆逊", "顺手牵羊");
        c(linkedHashMap, "800008", "131013", "211007", "甘宁", "古锭刀");
        c(linkedHashMap, "800003", "131012", "221005", "太史慈", "青龙铠");
        c(linkedHashMap, "800004", "141003", "241010", "貂蝉", "决斗");
        c(linkedHashMap, "800009", "111004", "211010", "甄姬", "诸葛连弩");
        c(linkedHashMap, "800010", "111012", "221005", "曹丕", "青龙铠");
        c(linkedHashMap, "800005", "141002", "222001", "吕布", "无双铠");
        c(linkedHashMap, "800006", "121014", "211006", "蜀·孙尚香", "雌雄双股剑");
        c(linkedHashMap, "800011", "171001", "211010", "兵长陆逊", "诸葛连弩");
        c(linkedHashMap, "800012", "171014", "222001", "德古拉魏延", "无双铠");
        c(linkedHashMap, "800013", "111006", "211011", "张辽", "龙胆枪");
        c(linkedHashMap, "800014", "171003", "241003", "学妹小乔", "闪电");
        c(linkedHashMap, "800015", "121011", "211009", "诸葛亮", "朱雀羽扇");
        c(linkedHashMap, "800016", "121008", "221004", "赵云", "白银狮子");
        c(linkedHashMap, "800017", "122014", "221007", "法正", "玄武盾");
        c(linkedHashMap, "800018", "111017", "211011", "张郃", "龙胆枪");
        c(linkedHashMap, "800019", "121010", "221004", "马超", "白银狮子");
        c(linkedHashMap, "800020", "131004", "211009", "周瑜", "朱雀羽扇");
        c(linkedHashMap, "800021", "124001", "211006", "昭烈帝", "雌雄双股剑");
        c(linkedHashMap, "800022", "141010", "241002", "贾诩", "无懈可击");
        c(linkedHashMap, "800023", "114001", "211017", "魏武帝", "飞景三剑");
        c(linkedHashMap, "800024", "171015", "221017", "大圣孙坚", "金银襦铠");
        c(linkedHashMap, "800025", "111024", "241005", "钟会", "无中生有");
        c(linkedHashMap, "800026", "111025", "241017", "邓艾", "暗度陈仓");
        c(linkedHashMap, "800027", "134001", "221017", "吴大帝", "金银襦铠");
        c(linkedHashMap, "800028", "111013", "211010", "曹仁", "诸葛连弩");
        c(linkedHashMap, "800029", "131020", "241016", "吴国太", "远交近攻");
        c(linkedHashMap, "800030", "141013", "211016", "颜良", "绿沉枪");
        c(linkedHashMap, "800031", "131011", "241003", "步练师", "闪电");
        c(linkedHashMap, "800032", "142013", "241016", "伏皇后", "远交近攻");
        c(linkedHashMap, "800033", "111029", "211006", "王元姬", "雌雄双股剑");
        c(linkedHashMap, "800034", "141022", "221007", "SP袁绍", "玄武盾");
        c(linkedHashMap, "800035", "141004", "241005", "华佗", "无中生有");
        c(linkedHashMap, "800036", "121005", "241006", "黄月英", "顺手牵羊");
        c(linkedHashMap, "800037", "141014", "211003", "文丑", "青龙偃月刀");
        c(linkedHashMap, "800038", "142008", "221001", "张宝", "八卦阵");
        c(linkedHashMap, "800039", "142003", "241010", "公孙瓒", "决斗");
        c(linkedHashMap, "800040", "122011", "241001", "孟获", "南蛮入侵");
        c(linkedHashMap, "800041", "152002", "241016", "卑弥呼", "远交近攻");
        c(linkedHashMap, "800044", "141024", "221004", "SP马超", "白银狮子");
        c(linkedHashMap, "800045", "141021", "241016", "沮授", "远交近攻");
        c(linkedHashMap, "800046", "111030", "221001", "司马昭", "八卦阵");
        c(linkedHashMap, "800047", "112012", "221017", "曹植", "金银襦铠");
        c(linkedHashMap, "800042", "131001", "211009", "神·周瑜", "朱雀羽扇");
        c(linkedHashMap, "800043", "121002", "211009", "神·诸葛亮", "朱雀羽扇");
        f995b = linkedHashMap;
    }

    public t0(k0 k0Var) {
        this.f996a = k0Var;
    }

    public static boolean A(Object obj, String str, Map map) {
        if (Objects.equals(map.get(str), obj)) {
            return false;
        }
        map.put(str, obj);
        return true;
    }

    public static LinkedHashMap B(String str, String str2, Map map) {
        boolean zH;
        LinkedHashMap linkedHashMapU1 = p5.u1(str);
        LinkedHashSet linkedHashSetC = C(5);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!str2.isEmpty() && y(map).contains(str2)) {
            for (Map map2 : g(linkedHashMapU1, linkedHashSetC).values()) {
                if (c.a.A(map2, "general_id", str2)) {
                    map2.put("open_condition", t(map, map2));
                    Map mapM = m(String.valueOf(map2.get("magic_id")), s(map));
                    if (mapM == null) {
                        mapM = j(map2);
                        s(map).add(mapM);
                        zH = true;
                    } else {
                        zH = H(mapM, map2);
                    }
                    if (!zH) {
                        break;
                    }
                    z(map);
                    linkedHashMap.put("MagicalEqu", p5.z0("del", new ArrayList(), "upd", p5.v0(mapM), "add", new ArrayList()));
                    break;
                }
            }
        }
        return linkedHashMap;
    }

    public static LinkedHashSet C(int i2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Map.Entry entry : f995b.entrySet()) {
            if (((q0) entry.getValue()).f969e <= i2) {
                linkedHashSet.add((String) entry.getKey());
            }
        }
        return linkedHashSet;
    }

    public static int D(Object obj, int i2) {
        return w1.l2(String.valueOf(obj), i2);
    }

    public static void E(int i2, int i3, Map map) {
        c.a.t(i2, map, "num", i2, "item_num");
        if (i3 == 6) {
            map.put("general_soul_num", Integer.valueOf(i2));
        }
        if (i3 == 8) {
            map.put("equipment_piece_num", Integer.valueOf(i2));
        }
    }

    public static LinkedHashMap F(Map map) {
        LinkedHashMap linkedHashMapZ0 = p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0, "cmn_modules", "MagicalEqu");
        if (map != null) {
            linkedHashMapZ0.putAll(map);
            linkedHashMapZ0.put("magic_info", map);
            linkedHashMapZ0.put("return_info", map);
        }
        return linkedHashMapZ0;
    }

    /* JADX WARN: Code duplicated, block: B:120:0x0153 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x013e  */
    public static LinkedHashMap G(Map map, Map map2, Map map3, w1 w1Var) {
        Map map4;
        String str;
        Iterator it;
        Map map5;
        String str2;
        String str3;
        Map map6;
        boolean z;
        Map map7 = map;
        w1 w1Var2 = w1Var;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (w1Var2 != null) {
            String str4 = "general_id";
            String strValueOf = String.valueOf(map3.getOrDefault("general_id", ""));
            if (strValueOf.isEmpty()) {
                return linkedHashMap;
            }
            int[] iArrH = h(map2, map3);
            String str5 = "General";
            Iterator it2 = w1.f0("General", map7).iterator();
            while (true) {
                String str6 = "general_pk_id";
                String str7 = "pk_id";
                if (!it2.hasNext()) {
                    break;
                }
                Map map8 = (Map) it2.next();
                if (c.a.B(map8, str4, "", strValueOf)) {
                    String strJ = c.a.j(map8, "general_pk_id", "", "pk_id");
                    boolean zB = b(iArrH[2], "talent_point", "magic_talent_point_bonus", map8);
                    Iterator it3 = w1.f0("Skill", map7).iterator();
                    while (it3.hasNext()) {
                        str4 = str4;
                        Map map9 = (Map) it3.next();
                        if (c.a.B(map9, str6, "", strJ)) {
                            str = strValueOf;
                            it = it2;
                            if (Boolean.parseBoolean(String.valueOf(map9.getOrDefault("is_natural", Boolean.FALSE))) || c.a.B(map9, str7, "", strJ)) {
                                Iterator it4 = it3;
                                String str8 = str6;
                                int[] iArr = iArrH;
                                String str9 = str5;
                                if (b(iArrH[0], "extra_level", "magic_extra_level_bonus", map9) || b(iArrH[1], "advanced_level", "magic_advanced_level_bonus", map9)) {
                                    String[] strArr = {"gSkill", "general_skills", "skill_list"};
                                    int i2 = 0;
                                    boolean zI = false;
                                    while (i2 < 3) {
                                        Object obj = map8.get(strArr[i2]);
                                        String[] strArr2 = strArr;
                                        if (obj instanceof List) {
                                            Iterator it5 = ((List) obj).iterator();
                                            while (it5.hasNext()) {
                                                Object next = it5.next();
                                                Iterator it6 = it5;
                                                if (next instanceof Map) {
                                                    Map map10 = (Map) next;
                                                    String strValueOf2 = String.valueOf(map10.getOrDefault(str7, ""));
                                                    str3 = str7;
                                                    String strValueOf3 = String.valueOf(map9.getOrDefault(str7, ""));
                                                    if (strValueOf2.isEmpty() || !strValueOf2.equals(strValueOf3)) {
                                                        map6 = map8;
                                                        String strJ2 = c.a.j(map10, "id", "", "skill_id");
                                                        z = !strJ2.isEmpty() && strJ2.equals(c.a.j(map9, "id", "", "skill_id"));
                                                        if (!z) {
                                                            zI = i("extra_level", map10, map9) | zI | i("advanced_level", map10, map9) | i("magic_extra_level_bonus", map10, map9) | i("magic_advanced_level_bonus", map10, map9);
                                                        }
                                                    } else {
                                                        map6 = map8;
                                                    }
                                                    if (!z) {
                                                        zI = i("extra_level", map10, map9) | zI | i("advanced_level", map10, map9) | i("magic_extra_level_bonus", map10, map9) | i("magic_advanced_level_bonus", map10, map9);
                                                    }
                                                } else {
                                                    map6 = map8;
                                                    str3 = str7;
                                                }
                                                it5 = it6;
                                                map8 = map6;
                                                str7 = str3;
                                            }
                                        }
                                        i2++;
                                        strArr = strArr2;
                                        map8 = map8;
                                        str7 = str7;
                                    }
                                    map5 = map8;
                                    str2 = str7;
                                    a("Skill", linkedHashMap, map9);
                                    zB |= zI;
                                } else {
                                    map5 = map8;
                                    str2 = str7;
                                }
                                it2 = it;
                                it3 = it4;
                                strValueOf = str;
                                str6 = str8;
                                iArrH = iArr;
                                str5 = str9;
                                map8 = map5;
                                str7 = str2;
                            }
                        } else {
                            str = strValueOf;
                            it = it2;
                        }
                        it2 = it;
                        strValueOf = str;
                    }
                    String str10 = str4;
                    int[] iArr2 = iArrH;
                    String str11 = strValueOf;
                    String str12 = str5;
                    Iterator it7 = it2;
                    Map map11 = map8;
                    if (strJ.isEmpty()) {
                        map7 = map;
                        w1Var2 = w1Var;
                    } else {
                        map7 = map;
                        w1Var2 = w1Var;
                        zB |= w1Var2.F2(strJ, map7);
                    }
                    if (zB) {
                        a(str12, linkedHashMap, map11);
                    }
                    it2 = it7;
                    str5 = str12;
                    strValueOf = str11;
                    str4 = str10;
                    iArrH = iArr2;
                }
            }
            String str13 = str5;
            String str14 = "general_pk_id";
            String str15 = "pk_id";
            boolean z2 = true;
            for (Map map12 : w1.f0(str13, map7)) {
                String str16 = str14;
                String str17 = str15;
                String strJ3 = c.a.j(map12, str16, "", str17);
                if (!strJ3.isEmpty() && w1Var2.F2(strJ3, map7)) {
                    a(str13, linkedHashMap, map12);
                }
                str14 = str16;
                str15 = str17;
            }
            String str18 = str14;
            String str19 = str15;
            Object obj2 = linkedHashMap.get(str13);
            if (obj2 instanceof Map) {
                Object obj3 = ((Map) obj2).get("upd");
                if (obj3 instanceof List) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    for (Object obj4 : (List) obj3) {
                        if (obj4 instanceof Map) {
                            String strJ4 = c.a.j((Map) obj4, str18, "", str19);
                            if (!strJ4.isEmpty()) {
                                linkedHashSet.add(strJ4);
                            }
                        }
                    }
                    if (!linkedHashSet.isEmpty()) {
                        List listF0 = w1.f0("TeamGeneral", map7);
                        Iterator it8 = listF0.iterator();
                        do {
                            if (!it8.hasNext()) {
                                z2 = false;
                                break;
                            }
                            map4 = (Map) it8.next();
                        } while (!linkedHashSet.contains(String.valueOf(map4.getOrDefault(str18, map4.getOrDefault(str19, "")))));
                        if (z2) {
                            linkedHashMap.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList(listF0)));
                        }
                    }
                }
            }
        }
        return linkedHashMap;
    }

    public static boolean H(Map map, Map map2) {
        String strValueOf = String.valueOf(map2.get("magic_id"));
        String strValueOf2 = String.valueOf(map2.get("general_id"));
        String strValueOf3 = String.valueOf(map2.get("resource_id"));
        String strValueOf4 = String.valueOf(map2.get("magic_name"));
        String strValueOf5 = String.valueOf(map2.get("magic_desc"));
        return A(map2.get("open_condition"), "open_condition", map) | A(strValueOf, "magic_id", map) | A(strValueOf, "pk_id", map) | false | A(strValueOf, "id", map) | A(strValueOf, "magical_id", map) | A(strValueOf, "magical_equ_id", map) | A(strValueOf2, "general_id", map) | A(strValueOf2, "warlord_general_id", map) | A(strValueOf3, "equipment_id", map) | A(strValueOf3, "equ_id", map) | A(strValueOf3, "resource_id", map) | A(strValueOf4, "name", map) | A(strValueOf4, "title", map) | A(strValueOf4, "magic_name", map) | A(strValueOf4, "magical_equ_name", map) | A(strValueOf5, "desc", map) | A(strValueOf5, "magic_desc", map) | A(map2.get("general_name"), "general_name", map) | A(map2.get("equipment_name"), "equipment_name", map);
    }

    public static void a(String str, LinkedHashMap linkedHashMap, Map map) {
        Map mapZ0 = (Map) linkedHashMap.get(str);
        if (mapZ0 == null) {
            mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
            linkedHashMap.put(str, mapZ0);
        }
        List list = (List) mapZ0.get("upd");
        String strValueOf = String.valueOf(map.getOrDefault("pk_id", ""));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (c.a.B((Map) it.next(), "pk_id", "", strValueOf)) {
                return;
            }
        }
        list.add(map);
    }

    public static boolean b(int i2, String str, String str2, Map map) {
        int iD = D(map.get(str), 0);
        int iD2 = D(map.get(str2), 0);
        int iMax = Math.max(0, (iD - iD2) + i2);
        boolean z = (iD == iMax && iD2 == i2) ? false : true;
        map.put(str, String.valueOf(iMax));
        map.put(str2, String.valueOf(i2));
        return z;
    }

    public static void c(LinkedHashMap linkedHashMap, String str, String str2, String str3, String str4, String str5) {
        int i2;
        int size = linkedHashMap.size();
        if (size < 18) {
            i2 = (size / 2) + 1;
        } else {
            i2 = size == 18 ? 10 : ((size - 19) / 2) + 11;
        }
        linkedHashMap.put(str, new q0(i2, str2, str3, str4, str5));
    }

    public static void d(Object obj, int[] iArr) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                d(it.next(), iArr);
            }
            return;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (map.containsKey("value")) {
                d(map.get("value"), iArr);
                return;
            }
            int iD = D(map.get("buff_type"), 0);
            int iD2 = D(map.get("buff_effect"), 0);
            if (iD == 5) {
                iArr[0] = iArr[0] + iD2;
            }
            if (iD == 6) {
                iArr[1] = iArr[1] + iD2;
            }
            if (iD == 8) {
                iArr[2] = iArr[2] + iD2;
            }
        }
    }

    public static void e(Object obj, int i2, int[] iArr) {
        if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                int iD = D(entry.getKey(), -1);
                if (iD > 0 && iD <= i2) {
                    d(entry.getValue(), iArr);
                }
            }
        }
    }

    public static LinkedHashMap f(int i2, String str, String str2, String str3, boolean z) {
        return p5.z0("type", Integer.valueOf(i2), "object_id", str, "id", str, "value", str, "condition", str2, "condition_desc", str3, "desc", str3, "name", str3, "text", str3, "status", Integer.valueOf(z ? 1 : 0), "is_finish", Integer.valueOf(z ? 1 : 0), "finished", Integer.valueOf(z ? 1 : 0));
    }

    public static LinkedHashMap g(LinkedHashMap linkedHashMap, LinkedHashSet linkedHashSet) {
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Iterator it = f995b.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (linkedHashSet.contains(entry.getKey())) {
                Object obj = linkedHashMap.get(entry.getKey());
                if (obj instanceof Map) {
                    q0 q0Var = (q0) entry.getValue();
                    String str = (String) entry.getKey();
                    Object key = entry.getKey();
                    String str2 = q0Var.f965a;
                    String str3 = q0Var.f966b;
                    StringBuilder sb = new StringBuilder();
                    String str4 = q0Var.f967c;
                    sb.append(str4);
                    sb.append("神兵");
                    linkedHashMap2.put(str, p5.z0("magic_id", key, "general_id", str2, "resource_id", str3, "magic_name", sb.toString(), "magic_desc", str4 + "神兵", "general_name", q0Var.f967c, "equipment_name", q0Var.f968d, "open_condition", new ArrayList(), "steps", obj));
                    it = it;
                }
            }
        }
        return linkedHashMap2;
    }

    public static int[] h(Map map, Map map2) {
        int[] iArr = {0, 0, 0};
        Object obj = map2.get("steps");
        if (!(obj instanceof Map)) {
            return iArr;
        }
        Map map3 = (Map) obj;
        int iMax = Math.max(1, D(map.get("magic_level"), 1));
        int iMax2 = Math.max(0, D(map.get("magic_sub_level"), 0));
        int iMax3 = Math.max(0, D(map.get("magic_vip_level"), 0));
        int i2 = 1;
        while (i2 <= iMax) {
            Object obj2 = map3.get(String.valueOf(i2));
            if (obj2 instanceof List) {
                List list = (List) obj2;
                int i3 = i2 < iMax ? 10 : iMax2;
                if (!list.isEmpty()) {
                    e(list.get(0), i3, iArr);
                }
                if (i2 <= iMax3 && list.size() > 1) {
                    e(list.get(1), Integer.MAX_VALUE, iArr);
                }
            }
            i2++;
        }
        return iArr;
    }

    public static boolean i(String str, Map map, Map map2) {
        Object obj = map2.get(str);
        if (obj == null || c.a.A(map, str, String.valueOf(obj))) {
            return false;
        }
        map.put(str, obj);
        return true;
    }

    public static LinkedHashMap j(Map map) {
        String strValueOf = String.valueOf(map.get("magic_id"));
        Object[] objArr = new Object[20];
        objArr[0] = "magic_id";
        objArr[1] = String.valueOf(map.get("magic_id"));
        objArr[2] = "general_id";
        objArr[3] = String.valueOf(map.get("general_id"));
        objArr[4] = "magic_level";
        objArr[5] = 1;
        objArr[6] = "magic_sub_level";
        objArr[7] = 0;
        objArr[8] = "magic_vip_level";
        objArr[9] = 0;
        objArr[10] = "is_open";
        objArr[11] = 0;
        objArr[12] = "magic_name";
        objArr[13] = String.valueOf(map.get("magic_name"));
        objArr[14] = "magic_desc";
        objArr[15] = String.valueOf(map.get("magic_desc"));
        objArr[16] = "resource_id";
        objArr[17] = String.valueOf(map.get("resource_id"));
        objArr[18] = "open_condition";
        objArr[19] = map.get("open_condition") instanceof List ? map.get("open_condition") : new ArrayList();
        LinkedHashMap linkedHashMapZ0 = p5.z0("pk_id", strValueOf, objArr);
        H(linkedHashMapZ0, map);
        return linkedHashMapZ0;
    }

    public static LinkedHashMap k(Map map, LinkedHashMap linkedHashMap) {
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("MagicalEqu", p5.z0("del", new ArrayList(), "upd", p5.v0(map), "add", new ArrayList()));
        linkedHashMap2.putAll(linkedHashMap);
        return linkedHashMap2;
    }

    public static LinkedHashMap l(String str) {
        Boolean bool = Boolean.FALSE;
        return p5.z0("ret", -1, "code", -1, "result", bool, "msg", str, "error_code", -1, "return_info", p5.z0("result", bool, new Object[0]), "cmn_modules", "MagicalEqu");
    }

    public static Map m(String str, List list) {
        if (str.isEmpty() || list == null) {
            return null;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (c.a.A(map, "magic_id", str)) {
                return map;
            }
        }
        return null;
    }

    public static Map n(Map map, s0 s0Var) {
        ArrayList<Map> arrayList;
        String strX = x(s0Var.f990c);
        Map map2 = null;
        if (strX.isEmpty()) {
            return null;
        }
        Object obj = map.get(strX);
        if (obj instanceof Map) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Map map3 = (Map) obj;
            String[] strArr = {"add", "upd", "update_list"};
            int i2 = 0;
            for (int i3 = 0; i3 < 3; i3++) {
                Object obj2 = map3.get(strArr[i3]);
                if (obj2 instanceof List) {
                    for (Object obj3 : (List) obj2) {
                        if (obj3 instanceof Map) {
                            Map map4 = (Map) obj3;
                            String strValueOf = String.valueOf(map4.getOrDefault("pk_id", ""));
                            if (strValueOf.isEmpty()) {
                                strValueOf = "anonymous-" + i2;
                                i2++;
                            }
                            linkedHashMap.put(strValueOf, map4);
                        }
                    }
                }
            }
            arrayList = new ArrayList(linkedHashMap.values());
        } else {
            arrayList = new ArrayList();
        }
        for (Map map5 : arrayList) {
            String str = s0Var.f988a;
            int i4 = s0Var.f990c;
            if ((i4 == 8 && v(str, map5, "equipment_id", "equip_id", "id", "item_id", "piece_id")) | (i4 == 5 && v(str, map5, "item_id", "id")) | (i4 == 6 && v(str, map5, "general_id", "pk_id"))) {
                if (w(map5) >= s0Var.f989b) {
                    return map5;
                }
                map2 = map5;
            }
        }
        return map2;
    }

    public static LinkedHashSet o(LinkedHashSet linkedHashSet) {
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            q0 q0Var = (q0) f995b.get((String) it.next());
            if (q0Var != null) {
                linkedHashSet2.add(q0Var.f965a);
            }
        }
        return linkedHashSet2;
    }

    public static boolean q(String str) {
        return "magic.getOverview".equals(str) || "magic.open".equals(str) || "magic.forge".equals(str);
    }

    public static String r(String str) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        for (Map.Entry entry : f995b.entrySet()) {
            if (str.equals(((q0) entry.getValue()).f965a)) {
                return (String) entry.getKey();
            }
        }
        return "";
    }

    public static List s(Map map) {
        List listF0 = w1.f0("MagicalEqu", map);
        if (map.get("MagicalEqu") instanceof Map) {
            return listF0;
        }
        ArrayList arrayList = new ArrayList();
        map.put("MagicalEqu", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", arrayList));
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:67:0x012f  */
    public static ArrayList t(Map map, Map map2) {
        int iD;
        boolean zB;
        boolean z;
        String strValueOf = String.valueOf(map2.get("general_id"));
        String strValueOf2 = String.valueOf(map2.get("resource_id"));
        Map[] mapArr = new Map[3];
        Iterator it = w1.f0("General", map).iterator();
        loop0: while (true) {
            if (!it.hasNext()) {
                iD = 0;
                break;
            }
            Map map3 = (Map) it.next();
            Object obj = map3.get("general_id");
            if (obj == null) {
                obj = map3.get("id");
            }
            if (strValueOf.equals(String.valueOf(obj))) {
                String[] strArr = {"star", "star_level", "general_star", "grade", "general_grade"};
                for (int i2 = 0; i2 < 5; i2++) {
                    String str = strArr[i2];
                    if (map3.get(str) != null) {
                        iD = D(map3.get(str), 0);
                        break loop0;
                    }
                }
            }
        }
        mapArr[0] = f(1, strValueOf, "5", "对应武将达到5星", iD >= 5);
        HashSet hashSet = w1.U;
        if (strValueOf2.isEmpty()) {
            zB = false;
            break;
        }
        Object obj2 = map.get("Atlas");
        List listF0 = w1.f0("Atlas", map);
        if (listF0.isEmpty() && (obj2 instanceof List)) {
            listF0 = (List) obj2;
        }
        Iterator it2 = listF0.iterator();
        while (true) {
            if (!it2.hasNext()) {
                zB = false;
                break;
            }
            Map map4 = (Map) it2.next();
            if (map4 != null) {
                if (c.a.B(map4, "equipment_id", "", strValueOf2) || c.a.B(map4, "resource_id", "", strValueOf2) || c.a.B(map4, "id", "", strValueOf2)) {
                    zB = c.a.B(map4, "atlas_status", "0", "1");
                    break;
                }
            }
        }
        if (!zB) {
            String[] strArr2 = {"Equipment", "Equip", "UserEquipment", "GeneralEquipment", "Item"};
            int i3 = 0;
            while (true) {
                if (i3 < 5) {
                    Iterator it3 = w1.f0(strArr2[i3], map).iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            Map map5 = (Map) it3.next();
                            if (v(strValueOf2, map5, "equipment_id", "equip_id", "item_id", "resource_id", "id")) {
                                z = w(map5) > 0 || !(map5.containsKey("num") || map5.containsKey("item_num") || map5.containsKey("count"));
                            }
                        } else {
                            i3++;
                        }
                    }
                }
            }
        }
        mapArr[1] = f(2, strValueOf2, "1", "开启对应神装图鉴点亮", z);
        mapArr[2] = f(3, "35", "35", "主公等级达到35级", D(map.get("user_level"), 1) >= 35);
        return p5.v0(mapArr);
    }

    public static int u(String str, String str2, Map map) {
        Map mapM;
        LinkedHashMap linkedHashMapU1 = p5.u1(str);
        LinkedHashSet linkedHashSetC = C(5);
        if (str2.isEmpty()) {
            return 0;
        }
        int i2 = 0;
        for (Map map2 : g(linkedHashMapU1, linkedHashSetC).values()) {
            if (c.a.A(map2, "general_id", str2) && (mapM = m(String.valueOf(map2.get("magic_id")), s(map))) != null && D(mapM.get("is_open"), 0) == 1) {
                i2 += h(mapM, map2)[2];
            }
        }
        return Math.max(0, i2);
    }

    public static boolean v(String str, Map map, String... strArr) {
        for (String str2 : strArr) {
            Object obj = map.get(str2);
            if (obj != null && str.equals(String.valueOf(obj))) {
                return true;
            }
            if (obj != null && c.a.i("9", str).equals(String.valueOf(obj))) {
                return true;
            }
        }
        return false;
    }

    public static int w(Map map) {
        if (map == null) {
            return 0;
        }
        Object obj = map.get(map.containsKey("num") ? "num" : "item_num");
        if (obj == null) {
            obj = map.get("general_soul_num");
        }
        if (obj == null) {
            obj = map.get("equipment_piece_num");
        }
        return D(obj, 0);
    }

    public static String x(int i2) {
        if (i2 == 5) {
            return "Item";
        }
        if (i2 == 6) {
            return "GeneralSoul";
        }
        return i2 == 8 ? "EquipmentPiece" : "";
    }

    public static LinkedHashSet y(Map map) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Map map2 : w1.f0("General", map)) {
            Object obj = map2.get("general_id");
            if (obj == null) {
                obj = map2.get("id");
            }
            if (obj != null) {
                linkedHashSet.add(String.valueOf(obj));
            }
        }
        return linkedHashSet;
    }

    public static void z(Map map) {
        map.put("MagicalEqu", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", s(map)));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x027b A[PHI: r22
      0x027b: PHI (r22v2 java.lang.Object) = (r22v1 java.lang.Object), (r22v6 java.lang.Object) binds: [B:100:0x0279, B:95:0x0252] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:107:0x0292  */
    /* JADX WARN: Code duplicated, block: B:110:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:118:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:121:0x02dd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:122:0x02df  */
    /* JADX WARN: Code duplicated, block: B:123:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:124:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:125:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:128:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:130:0x030b  */
    /* JADX WARN: Code duplicated, block: B:131:0x0314  */
    /* JADX WARN: Code duplicated, block: B:134:0x0320  */
    /* JADX WARN: Code duplicated, block: B:142:0x0374  */
    /* JADX WARN: Code duplicated, block: B:143:0x0376  */
    /* JADX WARN: Code duplicated, block: B:149:0x039a  */
    /* JADX WARN: Code duplicated, block: B:151:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:158:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:160:0x03f2  */
    /* JADX WARN: Code duplicated, block: B:161:0x03f7  */
    /* JADX WARN: Code duplicated, block: B:164:0x040c  */
    /* JADX WARN: Code duplicated, block: B:167:0x041f  */
    /* JADX WARN: Code duplicated, block: B:170:0x042c  */
    /* JADX WARN: Code duplicated, block: B:173:0x0438  */
    /* JADX WARN: Code duplicated, block: B:176:0x0443  */
    /* JADX WARN: Code duplicated, block: B:178:0x044b  */
    /* JADX WARN: Code duplicated, block: B:183:0x0462  */
    /* JADX WARN: Code duplicated, block: B:186:0x0484  */
    /* JADX WARN: Code duplicated, block: B:193:0x04a6  */
    /* JADX WARN: Code duplicated, block: B:197:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:198:0x04cc  */
    /* JADX WARN: Code duplicated, block: B:201:0x051f A[LOOP:9: B:201:0x051f->B:203:0x052e, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:203:0x052e A[LOOP:9: B:201:0x051f->B:203:0x052e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:205:0x0541  */
    /* JADX WARN: Code duplicated, block: B:208:0x0555  */
    /* JADX WARN: Code duplicated, block: B:209:0x055c  */
    /* JADX WARN: Code duplicated, block: B:212:0x056c  */
    /* JADX WARN: Code duplicated, block: B:214:0x0578  */
    /* JADX WARN: Code duplicated, block: B:216:0x0584  */
    /* JADX WARN: Code duplicated, block: B:220:0x05dc  */
    /* JADX WARN: Code duplicated, block: B:223:0x05f0 A[LOOP:3: B:219:0x05da->B:223:0x05f0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:239:0x058b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:241:0x05e6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:246:0x03bd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:247:0x03ae A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:257:0x0451 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:259:0x044e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:260:0x044e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:261:0x0534 A[EDGE_INSN: B:261:0x0534->B:204:0x0534 BREAK  A[LOOP:9: B:201:0x051f->B:203:0x052e], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:263:0x0329 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:264:0x0333 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:266:0x031a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:267:0x031a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x0167  */
    /* JADX WARN: Instruction removed from duplicated block: B:212:0x056c, please report this as an issue */
    public final byte[] p(String str, Map map) {
        String str2;
        k0 k0Var;
        Object obj;
        String str3;
        String str4;
        Object obj2;
        Map map2;
        Object obj3;
        String str5;
        LinkedHashMap linkedHashMapL;
        Object obj4;
        int iMax;
        Object obj5;
        r0 r0Var;
        LinkedHashMap linkedHashMap;
        Object obj6;
        Iterator it;
        Map map3;
        ArrayList arrayList;
        Object next;
        List list;
        s0 s0Var;
        int i2;
        Iterator it2;
        LinkedHashMap linkedHashMap2;
        Iterator it3;
        String str6;
        Map map4;
        int i3;
        Map map5;
        Integer numValueOf;
        Object obj7;
        StringBuilder sb;
        Iterator it4;
        Map mapN;
        int iW;
        int i4;
        String strValueOf;
        Iterator it5;
        Object obj8;
        Map map6;
        Map map7;
        String[] strArr;
        int i5;
        Object obj9;
        Iterator it6;
        Object next2;
        Map map8;
        String strX;
        Map mapZ0;
        Map mapN2;
        String str7;
        Object obj10;
        Object obj11;
        List list2;
        Object obj12;
        boolean z;
        Map linkedHashMap3;
        LinkedHashSet linkedHashSet;
        Object obj13;
        int i6;
        LinkedHashMap linkedHashMapU1;
        int i7;
        if (!q(str)) {
            return null;
        }
        k0 k0Var2 = this.f996a;
        String strE = k0Var2.e(map);
        h5 h5Var = k0Var2.f904d;
        Map mapW0 = h5Var.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        Map map9 = mapW0;
        Context context = k0Var2.f901a;
        LinkedHashMap linkedHashMapG = g(p5.u1(p5.X(context)), C(5));
        for (Map map10 : linkedHashMapG.values()) {
            map10.put("open_condition", t(map9, map10));
        }
        if ("magic.getOverview".equals(str)) {
            ArrayList arrayList2 = new ArrayList();
            for (Map map11 : linkedHashMapG.values()) {
                if (m(String.valueOf(map11.get("magic_id")), s(map9)) == null) {
                    LinkedHashMap linkedHashMapJ = j(map11);
                    s(map9).add(linkedHashMapJ);
                    arrayList2.add(linkedHashMapJ);
                }
            }
            z(map9);
            ArrayList arrayList3 = new ArrayList();
            Object[] objArr = new Object[4];
            objArr[0] = "upd";
            if (arrayList2.isEmpty()) {
                arrayList2 = new ArrayList(s(map9));
            }
            objArr[1] = arrayList2;
            objArr[2] = "add";
            objArr[3] = new ArrayList();
            LinkedHashMap linkedHashMapZ0 = p5.z0("del", arrayList3, objArr);
            LinkedHashMap linkedHashMapZ1 = p5.z0("MagicalEqu", linkedHashMapZ0, new Object[0]);
            linkedHashMapL = F(null);
            linkedHashMapL.put("magic_info", linkedHashMapZ0);
            linkedHashMapL.put("MagicalEqu", linkedHashMapZ0);
            linkedHashMapL.put("delta_data", linkedHashMapZ1);
            k0Var = k0Var2;
            str3 = ",";
            obj = "cmn_modules";
        } else {
            if (map == null || (str2 = (String) map.get("magic_id")) == null) {
                str2 = "";
            }
            Map map12 = (Map) linkedHashMapG.get(str2);
            k0Var = k0Var2;
            String str8 = "magic_level";
            obj = "cmn_modules";
            str3 = ",";
            String str9 = "神兵配置不存在";
            if (!"magic.open".equals(str)) {
                if (map == null || (str4 = (String) map.get("is_vip")) == null) {
                    str4 = "";
                }
                int i8 = ("1".equals(str4) || "true".equalsIgnoreCase(str4)) ? 1 : 0;
                w1 w1VarA1 = w1.a1(context);
                if (map12 == null) {
                    linkedHashMapL = l("神兵配置不存在");
                } else {
                    Map mapM = m(str2, s(map9));
                    if (mapM != null) {
                        int i9 = 1;
                        if (D(mapM.get("is_open"), 0) == 1) {
                            if (i8 == 0) {
                                obj4 = "delta_data";
                                iMax = Math.max(1, D(mapM.get("magic_level"), 1));
                                int iMax2 = Math.max(0, D(mapM.get("magic_sub_level"), 0)) + 1;
                                if (iMax2 > 10) {
                                    iMax++;
                                    iMax2 = 1;
                                }
                                if (iMax <= 10) {
                                    i9 = iMax2;
                                    obj10 = map12.get("steps");
                                    obj5 = "magic_vip_level";
                                    if (obj10 instanceof Map) {
                                        obj11 = ((Map) obj10).get(String.valueOf(iMax));
                                        if (obj11 instanceof List) {
                                            list2 = (List) obj11;
                                            if (list2.size() > i8) {
                                                obj12 = ((Map) list2.get(i8)).get(String.valueOf(i9));
                                                if (!(obj12 instanceof Map)) {
                                                    Map map13 = (Map) obj12;
                                                    w1VarA1 = w1VarA1;
                                                    r0Var = new r0(iMax, i9, D(map13.get("user_vip_level"), 0), map13);
                                                }
                                                if (r0Var != null) {
                                                    if (i8 == 0) {
                                                        linkedHashMap = new LinkedHashMap();
                                                        obj6 = r0Var.f980d.get("forge_piece");
                                                        if (obj6 instanceof List) {
                                                            it = ((List) obj6).iterator();
                                                            while (it.hasNext()) {
                                                                next = it.next();
                                                                if (next instanceof List) {
                                                                    list = (List) next;
                                                                    if (list.size() >= 3) {
                                                                        String strValueOf2 = String.valueOf(list.get(0));
                                                                        int iMax3 = Math.max(0, D(list.get(1), 0));
                                                                        Iterator it7 = it;
                                                                        int iD = D(list.get(2), 0);
                                                                        String str10 = iD + ":" + strValueOf2;
                                                                        s0Var = (s0) linkedHashMap.get(str10);
                                                                        Map map14 = map12;
                                                                        if (s0Var == null) {
                                                                            i2 = 0;
                                                                        } else {
                                                                            i2 = s0Var.f989b;
                                                                        }
                                                                        linkedHashMap.put(str10, new s0(strValueOf2, i2 + iMax3, iD));
                                                                        it = it7;
                                                                        map12 = map14;
                                                                    }
                                                                }
                                                            }
                                                            map3 = map12;
                                                            arrayList = new ArrayList(linkedHashMap.values());
                                                        } else {
                                                            arrayList = new ArrayList();
                                                            map3 = map12;
                                                        }
                                                        it2 = arrayList.iterator();
                                                        while (true) {
                                                            if (!it2.hasNext()) {
                                                                linkedHashMap2 = new LinkedHashMap();
                                                                it3 = arrayList.iterator();
                                                                while (it3.hasNext()) {
                                                                    s0 s0Var2 = (s0) it3.next();
                                                                    mapN = n(map9, s0Var2);
                                                                    iW = w(mapN) - s0Var2.f989b;
                                                                    i4 = s0Var2.f990c;
                                                                    E(iW, i4, mapN);
                                                                    strValueOf = String.valueOf(mapN.getOrDefault("pk_id", ""));
                                                                    if (strValueOf.isEmpty()) {
                                                                        it5 = it3;
                                                                        map6 = map9;
                                                                    } else {
                                                                        it5 = it3;
                                                                        obj8 = map9.get(x(i4));
                                                                        map6 = map9;
                                                                        if (obj8 instanceof Map) {
                                                                            map7 = (Map) obj8;
                                                                            strArr = new String[]{"add", "upd", "update_list"};
                                                                            i5 = 0;
                                                                            while (i5 < 3) {
                                                                                obj9 = map7.get(strArr[i5]);
                                                                                Map map15 = map7;
                                                                                if (obj9 instanceof List) {
                                                                                    it6 = ((List) obj9).iterator();
                                                                                    while (it6.hasNext()) {
                                                                                        next2 = it6.next();
                                                                                        Iterator it8 = it6;
                                                                                        if (next2 instanceof Map) {
                                                                                            map8 = (Map) next2;
                                                                                            if (c.a.B(map8, "pk_id", "", strValueOf)) {
                                                                                                E(iW, i4, map8);
                                                                                            }
                                                                                        }
                                                                                        it6 = it8;
                                                                                    }
                                                                                }
                                                                                i5++;
                                                                                map7 = map15;
                                                                            }
                                                                        }
                                                                        strX = x(i4);
                                                                        mapZ0 = (Map) linkedHashMap2.get(strX);
                                                                        if (mapZ0 == null) {
                                                                            mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
                                                                            linkedHashMap2.put(strX, mapZ0);
                                                                        }
                                                                        if ("GeneralSoul".equals(strX)) {
                                                                            ((List) mapZ0.get("upd")).add(mapN);
                                                                        } else {
                                                                            ((List) mapZ0.get("upd")).add(mapN);
                                                                        }
                                                                        it3 = it5;
                                                                        map9 = map6;
                                                                        mapM = mapM;
                                                                        str8 = str8;
                                                                    }
                                                                    strX = x(i4);
                                                                    mapZ0 = (Map) linkedHashMap2.get(strX);
                                                                    if (mapZ0 == null) {
                                                                        mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
                                                                        linkedHashMap2.put(strX, mapZ0);
                                                                    }
                                                                    if ("GeneralSoul".equals(strX)) {
                                                                        ((List) mapZ0.get("upd")).add(mapN);
                                                                    } else {
                                                                        ((List) mapZ0.get("upd")).add(mapN);
                                                                    }
                                                                    it3 = it5;
                                                                    map9 = map6;
                                                                    mapM = mapM;
                                                                    str8 = str8;
                                                                }
                                                                str6 = str8;
                                                                map4 = mapM;
                                                                Map map16 = map9;
                                                                i3 = r0Var.f977a;
                                                                if (i8 != 0) {
                                                                    numValueOf = Integer.valueOf(i3);
                                                                    obj7 = obj5;
                                                                    map5 = map4;
                                                                } else {
                                                                    map5 = map4;
                                                                    map5.put(str6, Integer.valueOf(i3));
                                                                    numValueOf = Integer.valueOf(r0Var.f978b);
                                                                    obj7 = "magic_sub_level";
                                                                }
                                                                map5.put(obj7, numValueOf);
                                                                z(map16);
                                                                map2 = map16;
                                                                linkedHashMap2.putAll(G(map2, map5, map3, w1VarA1));
                                                                LinkedHashMap linkedHashMapF = F(map5);
                                                                obj2 = obj4;
                                                                linkedHashMapF.put(obj2, k(map5, linkedHashMap2));
                                                                LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                                                                linkedHashSet2.add("MagicalEqu");
                                                                linkedHashSet2.addAll(linkedHashMap2.keySet());
                                                                sb = new StringBuilder();
                                                                it4 = linkedHashSet2.iterator();
                                                                if (it4.hasNext()) {
                                                                    while (true) {
                                                                        sb.append((CharSequence) it4.next());
                                                                        if (!it4.hasNext()) {
                                                                            break;
                                                                            break;
                                                                        }
                                                                        sb.append((CharSequence) str3);
                                                                    }
                                                                }
                                                                str5 = str3;
                                                                String string = sb.toString();
                                                                obj3 = obj;
                                                                linkedHashMapF.put(obj3, string);
                                                                linkedHashMapL = linkedHashMapF;
                                                                break;
                                                            }
                                                            s0 s0Var3 = (s0) it2.next();
                                                            mapN2 = n(map9, s0Var3);
                                                            if (mapN2 != null) {
                                                            }
                                                            str7 = "神兵锻造材料不足";
                                                        }
                                                    } else {
                                                        linkedHashMap = new LinkedHashMap();
                                                        obj6 = r0Var.f980d.get("forge_piece");
                                                        if (obj6 instanceof List) {
                                                            arrayList = new ArrayList();
                                                            map3 = map12;
                                                        } else {
                                                            it = ((List) obj6).iterator();
                                                            while (it.hasNext()) {
                                                                next = it.next();
                                                                if (next instanceof List) {
                                                                    list = (List) next;
                                                                    if (list.size() >= 3) {
                                                                        String strValueOf3 = String.valueOf(list.get(0));
                                                                        int iMax4 = Math.max(0, D(list.get(1), 0));
                                                                        Iterator it9 = it;
                                                                        int iD2 = D(list.get(2), 0);
                                                                        String str11 = iD2 + ":" + strValueOf3;
                                                                        s0Var = (s0) linkedHashMap.get(str11);
                                                                        Map map17 = map12;
                                                                        if (s0Var == null) {
                                                                            i2 = 0;
                                                                        } else {
                                                                            i2 = s0Var.f989b;
                                                                        }
                                                                        linkedHashMap.put(str11, new s0(strValueOf3, i2 + iMax4, iD2));
                                                                        it = it9;
                                                                        map12 = map17;
                                                                    }
                                                                }
                                                            }
                                                            map3 = map12;
                                                            arrayList = new ArrayList(linkedHashMap.values());
                                                        }
                                                        it2 = arrayList.iterator();
                                                        while (true) {
                                                            if (!it2.hasNext()) {
                                                                linkedHashMap2 = new LinkedHashMap();
                                                                it3 = arrayList.iterator();
                                                                while (it3.hasNext()) {
                                                                    s0 s0Var4 = (s0) it3.next();
                                                                    mapN = n(map9, s0Var4);
                                                                    iW = w(mapN) - s0Var4.f989b;
                                                                    i4 = s0Var4.f990c;
                                                                    E(iW, i4, mapN);
                                                                    strValueOf = String.valueOf(mapN.getOrDefault("pk_id", ""));
                                                                    if (strValueOf.isEmpty()) {
                                                                        it5 = it3;
                                                                        map6 = map9;
                                                                    } else {
                                                                        it5 = it3;
                                                                        obj8 = map9.get(x(i4));
                                                                        map6 = map9;
                                                                        if (obj8 instanceof Map) {
                                                                            map7 = (Map) obj8;
                                                                            strArr = new String[]{"add", "upd", "update_list"};
                                                                            i5 = 0;
                                                                            while (i5 < 3) {
                                                                                obj9 = map7.get(strArr[i5]);
                                                                                Map map18 = map7;
                                                                                if (obj9 instanceof List) {
                                                                                    it6 = ((List) obj9).iterator();
                                                                                    while (it6.hasNext()) {
                                                                                        next2 = it6.next();
                                                                                        Iterator it10 = it6;
                                                                                        if (next2 instanceof Map) {
                                                                                            map8 = (Map) next2;
                                                                                            if (c.a.B(map8, "pk_id", "", strValueOf)) {
                                                                                                E(iW, i4, map8);
                                                                                            }
                                                                                        }
                                                                                        it6 = it10;
                                                                                    }
                                                                                }
                                                                                i5++;
                                                                                map7 = map18;
                                                                            }
                                                                        }
                                                                        strX = x(i4);
                                                                        mapZ0 = (Map) linkedHashMap2.get(strX);
                                                                        if (mapZ0 == null) {
                                                                            mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
                                                                            linkedHashMap2.put(strX, mapZ0);
                                                                        }
                                                                        if ("GeneralSoul".equals(strX)) {
                                                                            ((List) mapZ0.get("upd")).add(mapN);
                                                                        } else {
                                                                            ((List) mapZ0.get("upd")).add(mapN);
                                                                        }
                                                                        it3 = it5;
                                                                        map9 = map6;
                                                                        mapM = mapM;
                                                                        str8 = str8;
                                                                    }
                                                                    strX = x(i4);
                                                                    mapZ0 = (Map) linkedHashMap2.get(strX);
                                                                    if (mapZ0 == null) {
                                                                        mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
                                                                        linkedHashMap2.put(strX, mapZ0);
                                                                    }
                                                                    if ("GeneralSoul".equals(strX)) {
                                                                        ((List) mapZ0.get("upd")).add(mapN);
                                                                    } else {
                                                                        ((List) mapZ0.get("upd")).add(mapN);
                                                                    }
                                                                    it3 = it5;
                                                                    map9 = map6;
                                                                    mapM = mapM;
                                                                    str8 = str8;
                                                                }
                                                                str6 = str8;
                                                                map4 = mapM;
                                                                Map map19 = map9;
                                                                i3 = r0Var.f977a;
                                                                if (i8 != 0) {
                                                                    numValueOf = Integer.valueOf(i3);
                                                                    obj7 = obj5;
                                                                    map5 = map4;
                                                                } else {
                                                                    map5 = map4;
                                                                    map5.put(str6, Integer.valueOf(i3));
                                                                    numValueOf = Integer.valueOf(r0Var.f978b);
                                                                    obj7 = "magic_sub_level";
                                                                }
                                                                map5.put(obj7, numValueOf);
                                                                z(map19);
                                                                map2 = map19;
                                                                linkedHashMap2.putAll(G(map2, map5, map3, w1VarA1));
                                                                LinkedHashMap linkedHashMapF2 = F(map5);
                                                                obj2 = obj4;
                                                                linkedHashMapF2.put(obj2, k(map5, linkedHashMap2));
                                                                LinkedHashSet linkedHashSet3 = new LinkedHashSet();
                                                                linkedHashSet3.add("MagicalEqu");
                                                                linkedHashSet3.addAll(linkedHashMap2.keySet());
                                                                sb = new StringBuilder();
                                                                it4 = linkedHashSet3.iterator();
                                                                if (it4.hasNext()) {
                                                                    while (true) {
                                                                        sb.append((CharSequence) it4.next());
                                                                        if (!it4.hasNext()) {
                                                                            break;
                                                                            break;
                                                                        }
                                                                        sb.append((CharSequence) str3);
                                                                    }
                                                                }
                                                                str5 = str3;
                                                                String string2 = sb.toString();
                                                                obj3 = obj;
                                                                linkedHashMapF2.put(obj3, string2);
                                                                linkedHashMapL = linkedHashMapF2;
                                                                break;
                                                            }
                                                            s0 s0Var5 = (s0) it2.next();
                                                            mapN2 = n(map9, s0Var5);
                                                            if (mapN2 != null) {
                                                            }
                                                            str7 = "神兵锻造材料不足";
                                                        }
                                                    }
                                                } else if (i8 != 0) {
                                                    str7 = "神兵精铸已达到最高等级";
                                                } else {
                                                    str7 = "神兵锻造已达到最高等级";
                                                }
                                                linkedHashMapL = l(str7);
                                                map2 = map9;
                                                obj3 = obj;
                                                str5 = str3;
                                                obj2 = obj4;
                                                break;
                                            }
                                        }
                                    }
                                } else {
                                    obj5 = "magic_vip_level";
                                }
                                r0Var = null;
                                if (r0Var != null) {
                                    if (i8 == 0) {
                                        linkedHashMap = new LinkedHashMap();
                                        obj6 = r0Var.f980d.get("forge_piece");
                                        if (obj6 instanceof List) {
                                            arrayList = new ArrayList();
                                            map3 = map12;
                                        } else {
                                            it = ((List) obj6).iterator();
                                            while (it.hasNext()) {
                                                next = it.next();
                                                if (next instanceof List) {
                                                    list = (List) next;
                                                    if (list.size() >= 3) {
                                                        String strValueOf4 = String.valueOf(list.get(0));
                                                        int iMax5 = Math.max(0, D(list.get(1), 0));
                                                        Iterator it11 = it;
                                                        int iD3 = D(list.get(2), 0);
                                                        String str12 = iD3 + ":" + strValueOf4;
                                                        s0Var = (s0) linkedHashMap.get(str12);
                                                        Map map110 = map12;
                                                        if (s0Var == null) {
                                                            i2 = 0;
                                                        } else {
                                                            i2 = s0Var.f989b;
                                                        }
                                                        linkedHashMap.put(str12, new s0(strValueOf4, i2 + iMax5, iD3));
                                                        it = it11;
                                                        map12 = map110;
                                                    }
                                                }
                                            }
                                            map3 = map12;
                                            arrayList = new ArrayList(linkedHashMap.values());
                                        }
                                        it2 = arrayList.iterator();
                                        while (true) {
                                            if (!it2.hasNext()) {
                                                linkedHashMap2 = new LinkedHashMap();
                                                it3 = arrayList.iterator();
                                                while (it3.hasNext()) {
                                                    s0 s0Var6 = (s0) it3.next();
                                                    mapN = n(map9, s0Var6);
                                                    iW = w(mapN) - s0Var6.f989b;
                                                    i4 = s0Var6.f990c;
                                                    E(iW, i4, mapN);
                                                    strValueOf = String.valueOf(mapN.getOrDefault("pk_id", ""));
                                                    if (strValueOf.isEmpty()) {
                                                        it5 = it3;
                                                        map6 = map9;
                                                    } else {
                                                        it5 = it3;
                                                        obj8 = map9.get(x(i4));
                                                        map6 = map9;
                                                        if (obj8 instanceof Map) {
                                                            map7 = (Map) obj8;
                                                            strArr = new String[]{"add", "upd", "update_list"};
                                                            i5 = 0;
                                                            while (i5 < 3) {
                                                                obj9 = map7.get(strArr[i5]);
                                                                Map map111 = map7;
                                                                if (obj9 instanceof List) {
                                                                    it6 = ((List) obj9).iterator();
                                                                    while (it6.hasNext()) {
                                                                        next2 = it6.next();
                                                                        Iterator it12 = it6;
                                                                        if (next2 instanceof Map) {
                                                                            map8 = (Map) next2;
                                                                            if (c.a.B(map8, "pk_id", "", strValueOf)) {
                                                                                E(iW, i4, map8);
                                                                            }
                                                                        }
                                                                        it6 = it12;
                                                                    }
                                                                }
                                                                i5++;
                                                                map7 = map111;
                                                            }
                                                        }
                                                        strX = x(i4);
                                                        mapZ0 = (Map) linkedHashMap2.get(strX);
                                                        if (mapZ0 == null) {
                                                            mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
                                                            linkedHashMap2.put(strX, mapZ0);
                                                        }
                                                        if ("GeneralSoul".equals(strX)) {
                                                            ((List) mapZ0.get("upd")).add(mapN);
                                                        } else {
                                                            ((List) mapZ0.get("upd")).add(mapN);
                                                        }
                                                        it3 = it5;
                                                        map9 = map6;
                                                        mapM = mapM;
                                                        str8 = str8;
                                                    }
                                                    strX = x(i4);
                                                    mapZ0 = (Map) linkedHashMap2.get(strX);
                                                    if (mapZ0 == null) {
                                                        mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
                                                        linkedHashMap2.put(strX, mapZ0);
                                                    }
                                                    if ("GeneralSoul".equals(strX)) {
                                                        ((List) mapZ0.get("upd")).add(mapN);
                                                    } else {
                                                        ((List) mapZ0.get("upd")).add(mapN);
                                                    }
                                                    it3 = it5;
                                                    map9 = map6;
                                                    mapM = mapM;
                                                    str8 = str8;
                                                }
                                                str6 = str8;
                                                map4 = mapM;
                                                Map map112 = map9;
                                                i3 = r0Var.f977a;
                                                if (i8 != 0) {
                                                    numValueOf = Integer.valueOf(i3);
                                                    obj7 = obj5;
                                                    map5 = map4;
                                                } else {
                                                    map5 = map4;
                                                    map5.put(str6, Integer.valueOf(i3));
                                                    numValueOf = Integer.valueOf(r0Var.f978b);
                                                    obj7 = "magic_sub_level";
                                                }
                                                map5.put(obj7, numValueOf);
                                                z(map112);
                                                map2 = map112;
                                                linkedHashMap2.putAll(G(map2, map5, map3, w1VarA1));
                                                LinkedHashMap linkedHashMapF3 = F(map5);
                                                obj2 = obj4;
                                                linkedHashMapF3.put(obj2, k(map5, linkedHashMap2));
                                                LinkedHashSet linkedHashSet4 = new LinkedHashSet();
                                                linkedHashSet4.add("MagicalEqu");
                                                linkedHashSet4.addAll(linkedHashMap2.keySet());
                                                sb = new StringBuilder();
                                                it4 = linkedHashSet4.iterator();
                                                if (it4.hasNext()) {
                                                    while (true) {
                                                        sb.append((CharSequence) it4.next());
                                                        if (!it4.hasNext()) {
                                                            break;
                                                            break;
                                                        }
                                                        sb.append((CharSequence) str3);
                                                    }
                                                }
                                                str5 = str3;
                                                String string3 = sb.toString();
                                                obj3 = obj;
                                                linkedHashMapF3.put(obj3, string3);
                                                linkedHashMapL = linkedHashMapF3;
                                                break;
                                            }
                                            s0 s0Var7 = (s0) it2.next();
                                            mapN2 = n(map9, s0Var7);
                                            if (mapN2 != null) {
                                            }
                                            str7 = "神兵锻造材料不足";
                                        }
                                    } else {
                                        linkedHashMap = new LinkedHashMap();
                                        obj6 = r0Var.f980d.get("forge_piece");
                                        if (obj6 instanceof List) {
                                            arrayList = new ArrayList();
                                            map3 = map12;
                                        } else {
                                            it = ((List) obj6).iterator();
                                            while (it.hasNext()) {
                                                next = it.next();
                                                if (next instanceof List) {
                                                    list = (List) next;
                                                    if (list.size() >= 3) {
                                                        String strValueOf5 = String.valueOf(list.get(0));
                                                        int iMax6 = Math.max(0, D(list.get(1), 0));
                                                        Iterator it13 = it;
                                                        int iD4 = D(list.get(2), 0);
                                                        String str13 = iD4 + ":" + strValueOf5;
                                                        s0Var = (s0) linkedHashMap.get(str13);
                                                        Map map113 = map12;
                                                        if (s0Var == null) {
                                                            i2 = 0;
                                                        } else {
                                                            i2 = s0Var.f989b;
                                                        }
                                                        linkedHashMap.put(str13, new s0(strValueOf5, i2 + iMax6, iD4));
                                                        it = it13;
                                                        map12 = map113;
                                                    }
                                                }
                                            }
                                            map3 = map12;
                                            arrayList = new ArrayList(linkedHashMap.values());
                                        }
                                        it2 = arrayList.iterator();
                                        while (true) {
                                            if (!it2.hasNext()) {
                                                linkedHashMap2 = new LinkedHashMap();
                                                it3 = arrayList.iterator();
                                                while (it3.hasNext()) {
                                                    s0 s0Var8 = (s0) it3.next();
                                                    mapN = n(map9, s0Var8);
                                                    iW = w(mapN) - s0Var8.f989b;
                                                    i4 = s0Var8.f990c;
                                                    E(iW, i4, mapN);
                                                    strValueOf = String.valueOf(mapN.getOrDefault("pk_id", ""));
                                                    if (strValueOf.isEmpty()) {
                                                        it5 = it3;
                                                        map6 = map9;
                                                    } else {
                                                        it5 = it3;
                                                        obj8 = map9.get(x(i4));
                                                        map6 = map9;
                                                        if (obj8 instanceof Map) {
                                                            map7 = (Map) obj8;
                                                            strArr = new String[]{"add", "upd", "update_list"};
                                                            i5 = 0;
                                                            while (i5 < 3) {
                                                                obj9 = map7.get(strArr[i5]);
                                                                Map map114 = map7;
                                                                if (obj9 instanceof List) {
                                                                    it6 = ((List) obj9).iterator();
                                                                    while (it6.hasNext()) {
                                                                        next2 = it6.next();
                                                                        Iterator it14 = it6;
                                                                        if (next2 instanceof Map) {
                                                                            map8 = (Map) next2;
                                                                            if (c.a.B(map8, "pk_id", "", strValueOf)) {
                                                                                E(iW, i4, map8);
                                                                            }
                                                                        }
                                                                        it6 = it14;
                                                                    }
                                                                }
                                                                i5++;
                                                                map7 = map114;
                                                            }
                                                        }
                                                        strX = x(i4);
                                                        mapZ0 = (Map) linkedHashMap2.get(strX);
                                                        if (mapZ0 == null) {
                                                            mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
                                                            linkedHashMap2.put(strX, mapZ0);
                                                        }
                                                        if ("GeneralSoul".equals(strX)) {
                                                            ((List) mapZ0.get("upd")).add(mapN);
                                                        } else {
                                                            ((List) mapZ0.get("upd")).add(mapN);
                                                        }
                                                        it3 = it5;
                                                        map9 = map6;
                                                        mapM = mapM;
                                                        str8 = str8;
                                                    }
                                                    strX = x(i4);
                                                    mapZ0 = (Map) linkedHashMap2.get(strX);
                                                    if (mapZ0 == null) {
                                                        mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
                                                        linkedHashMap2.put(strX, mapZ0);
                                                    }
                                                    if ("GeneralSoul".equals(strX)) {
                                                        ((List) mapZ0.get("upd")).add(mapN);
                                                    } else {
                                                        ((List) mapZ0.get("upd")).add(mapN);
                                                    }
                                                    it3 = it5;
                                                    map9 = map6;
                                                    mapM = mapM;
                                                    str8 = str8;
                                                }
                                                str6 = str8;
                                                map4 = mapM;
                                                Map map115 = map9;
                                                i3 = r0Var.f977a;
                                                if (i8 != 0) {
                                                    numValueOf = Integer.valueOf(i3);
                                                    obj7 = obj5;
                                                    map5 = map4;
                                                } else {
                                                    map5 = map4;
                                                    map5.put(str6, Integer.valueOf(i3));
                                                    numValueOf = Integer.valueOf(r0Var.f978b);
                                                    obj7 = "magic_sub_level";
                                                }
                                                map5.put(obj7, numValueOf);
                                                z(map115);
                                                map2 = map115;
                                                linkedHashMap2.putAll(G(map2, map5, map3, w1VarA1));
                                                LinkedHashMap linkedHashMapF4 = F(map5);
                                                obj2 = obj4;
                                                linkedHashMapF4.put(obj2, k(map5, linkedHashMap2));
                                                LinkedHashSet linkedHashSet5 = new LinkedHashSet();
                                                linkedHashSet5.add("MagicalEqu");
                                                linkedHashSet5.addAll(linkedHashMap2.keySet());
                                                sb = new StringBuilder();
                                                it4 = linkedHashSet5.iterator();
                                                if (it4.hasNext()) {
                                                    while (true) {
                                                        sb.append((CharSequence) it4.next());
                                                        if (!it4.hasNext()) {
                                                            break;
                                                            break;
                                                        }
                                                        sb.append((CharSequence) str3);
                                                    }
                                                }
                                                str5 = str3;
                                                String string4 = sb.toString();
                                                obj3 = obj;
                                                linkedHashMapF4.put(obj3, string4);
                                                linkedHashMapL = linkedHashMapF4;
                                                break;
                                            }
                                            s0 s0Var9 = (s0) it2.next();
                                            mapN2 = n(map9, s0Var9);
                                            if (mapN2 != null) {
                                            }
                                            str7 = "神兵锻造材料不足";
                                        }
                                    }
                                } else if (i8 != 0) {
                                    str7 = "神兵精铸已达到最高等级";
                                } else {
                                    str7 = "神兵锻造已达到最高等级";
                                }
                                linkedHashMapL = l(str7);
                                map2 = map9;
                                obj3 = obj;
                                str5 = str3;
                                obj2 = obj4;
                                break;
                            }
                            obj4 = "delta_data";
                            iMax = D(mapM.get("magic_vip_level"), 0) + 1;
                            if (iMax <= 10) {
                                obj10 = map12.get("steps");
                                obj5 = "magic_vip_level";
                                if (obj10 instanceof Map) {
                                    obj11 = ((Map) obj10).get(String.valueOf(iMax));
                                    if (obj11 instanceof List) {
                                        list2 = (List) obj11;
                                        if (list2.size() > i8 && (list2.get(i8) instanceof Map)) {
                                            obj12 = ((Map) list2.get(i8)).get(String.valueOf(i9));
                                            if (!(obj12 instanceof Map)) {
                                                Map map116 = (Map) obj12;
                                                w1VarA1 = w1VarA1;
                                                r0Var = new r0(iMax, i9, D(map116.get("user_vip_level"), 0), map116);
                                            }
                                            if (r0Var != null) {
                                                if (i8 != 0) {
                                                    str7 = "神兵精铸已达到最高等级";
                                                } else {
                                                    str7 = "神兵锻造已达到最高等级";
                                                }
                                            } else if (i8 == 0 || D(map9.get("user_vip_level"), 0) >= r0Var.f979c) {
                                                linkedHashMap = new LinkedHashMap();
                                                obj6 = r0Var.f980d.get("forge_piece");
                                                if (obj6 instanceof List) {
                                                    arrayList = new ArrayList();
                                                    map3 = map12;
                                                } else {
                                                    it = ((List) obj6).iterator();
                                                    while (it.hasNext()) {
                                                        next = it.next();
                                                        if (next instanceof List) {
                                                            list = (List) next;
                                                            if (list.size() >= 3) {
                                                                String strValueOf6 = String.valueOf(list.get(0));
                                                                int iMax7 = Math.max(0, D(list.get(1), 0));
                                                                Iterator it15 = it;
                                                                int iD5 = D(list.get(2), 0);
                                                                String str14 = iD5 + ":" + strValueOf6;
                                                                s0Var = (s0) linkedHashMap.get(str14);
                                                                Map map117 = map12;
                                                                if (s0Var == null) {
                                                                    i2 = 0;
                                                                } else {
                                                                    i2 = s0Var.f989b;
                                                                }
                                                                linkedHashMap.put(str14, new s0(strValueOf6, i2 + iMax7, iD5));
                                                                it = it15;
                                                                map12 = map117;
                                                            }
                                                        }
                                                    }
                                                    map3 = map12;
                                                    arrayList = new ArrayList(linkedHashMap.values());
                                                }
                                                it2 = arrayList.iterator();
                                                while (true) {
                                                    if (!it2.hasNext()) {
                                                        linkedHashMap2 = new LinkedHashMap();
                                                        it3 = arrayList.iterator();
                                                        while (it3.hasNext()) {
                                                            s0 s0Var10 = (s0) it3.next();
                                                            mapN = n(map9, s0Var10);
                                                            iW = w(mapN) - s0Var10.f989b;
                                                            i4 = s0Var10.f990c;
                                                            E(iW, i4, mapN);
                                                            strValueOf = String.valueOf(mapN.getOrDefault("pk_id", ""));
                                                            if (strValueOf.isEmpty()) {
                                                                it5 = it3;
                                                                map6 = map9;
                                                            } else {
                                                                it5 = it3;
                                                                obj8 = map9.get(x(i4));
                                                                map6 = map9;
                                                                if (obj8 instanceof Map) {
                                                                    map7 = (Map) obj8;
                                                                    strArr = new String[]{"add", "upd", "update_list"};
                                                                    i5 = 0;
                                                                    while (i5 < 3) {
                                                                        obj9 = map7.get(strArr[i5]);
                                                                        Map map118 = map7;
                                                                        if (obj9 instanceof List) {
                                                                            it6 = ((List) obj9).iterator();
                                                                            while (it6.hasNext()) {
                                                                                next2 = it6.next();
                                                                                Iterator it16 = it6;
                                                                                if (next2 instanceof Map) {
                                                                                    map8 = (Map) next2;
                                                                                    if (c.a.B(map8, "pk_id", "", strValueOf)) {
                                                                                        E(iW, i4, map8);
                                                                                    }
                                                                                }
                                                                                it6 = it16;
                                                                            }
                                                                        }
                                                                        i5++;
                                                                        map7 = map118;
                                                                    }
                                                                }
                                                                strX = x(i4);
                                                                mapZ0 = (Map) linkedHashMap2.get(strX);
                                                                if (mapZ0 == null) {
                                                                    mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
                                                                    linkedHashMap2.put(strX, mapZ0);
                                                                }
                                                                if ("GeneralSoul".equals(strX) || w(mapN) > 0) {
                                                                    ((List) mapZ0.get("upd")).add(mapN);
                                                                } else {
                                                                    String strJ = c.a.j(mapN, "general_id", "", "pk_id");
                                                                    List list3 = (List) mapZ0.get("del");
                                                                    if (!strJ.isEmpty() && !list3.contains(strJ)) {
                                                                        list3.add(strJ);
                                                                    }
                                                                }
                                                                it3 = it5;
                                                                map9 = map6;
                                                                mapM = mapM;
                                                                str8 = str8;
                                                            }
                                                            strX = x(i4);
                                                            mapZ0 = (Map) linkedHashMap2.get(strX);
                                                            if (mapZ0 == null) {
                                                                mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
                                                                linkedHashMap2.put(strX, mapZ0);
                                                            }
                                                            if ("GeneralSoul".equals(strX)) {
                                                                ((List) mapZ0.get("upd")).add(mapN);
                                                            } else {
                                                                ((List) mapZ0.get("upd")).add(mapN);
                                                            }
                                                            it3 = it5;
                                                            map9 = map6;
                                                            mapM = mapM;
                                                            str8 = str8;
                                                        }
                                                        str6 = str8;
                                                        map4 = mapM;
                                                        Map map119 = map9;
                                                        i3 = r0Var.f977a;
                                                        if (i8 != 0) {
                                                            numValueOf = Integer.valueOf(i3);
                                                            obj7 = obj5;
                                                            map5 = map4;
                                                        } else {
                                                            map5 = map4;
                                                            map5.put(str6, Integer.valueOf(i3));
                                                            numValueOf = Integer.valueOf(r0Var.f978b);
                                                            obj7 = "magic_sub_level";
                                                        }
                                                        map5.put(obj7, numValueOf);
                                                        z(map119);
                                                        map2 = map119;
                                                        linkedHashMap2.putAll(G(map2, map5, map3, w1VarA1));
                                                        LinkedHashMap linkedHashMapF5 = F(map5);
                                                        obj2 = obj4;
                                                        linkedHashMapF5.put(obj2, k(map5, linkedHashMap2));
                                                        LinkedHashSet linkedHashSet6 = new LinkedHashSet();
                                                        linkedHashSet6.add("MagicalEqu");
                                                        linkedHashSet6.addAll(linkedHashMap2.keySet());
                                                        sb = new StringBuilder();
                                                        it4 = linkedHashSet6.iterator();
                                                        if (it4.hasNext()) {
                                                            while (true) {
                                                                sb.append((CharSequence) it4.next());
                                                                if (!it4.hasNext()) {
                                                                    break;
                                                                }
                                                                sb.append((CharSequence) str3);
                                                            }
                                                        }
                                                        str5 = str3;
                                                        String string5 = sb.toString();
                                                        obj3 = obj;
                                                        linkedHashMapF5.put(obj3, string5);
                                                        linkedHashMapL = linkedHashMapF5;
                                                        break;
                                                    }
                                                    s0 s0Var11 = (s0) it2.next();
                                                    mapN2 = n(map9, s0Var11);
                                                    if (mapN2 != null || w(mapN2) < s0Var11.f989b) {
                                                        str7 = "神兵锻造材料不足";
                                                    }
                                                }
                                            } else {
                                                str7 = "VIP等级不足";
                                            }
                                            linkedHashMapL = l(str7);
                                            map2 = map9;
                                            obj3 = obj;
                                            str5 = str3;
                                            obj2 = obj4;
                                            break;
                                        }
                                    }
                                }
                            } else {
                                obj5 = "magic_vip_level";
                            }
                            r0Var = null;
                            if (r0Var != null) {
                                if (i8 == 0) {
                                    linkedHashMap = new LinkedHashMap();
                                    obj6 = r0Var.f980d.get("forge_piece");
                                    if (obj6 instanceof List) {
                                        arrayList = new ArrayList();
                                        map3 = map12;
                                    } else {
                                        it = ((List) obj6).iterator();
                                        while (it.hasNext()) {
                                            next = it.next();
                                            if (next instanceof List) {
                                                list = (List) next;
                                                if (list.size() >= 3) {
                                                    String strValueOf7 = String.valueOf(list.get(0));
                                                    int iMax8 = Math.max(0, D(list.get(1), 0));
                                                    Iterator it17 = it;
                                                    int iD6 = D(list.get(2), 0);
                                                    String str15 = iD6 + ":" + strValueOf7;
                                                    s0Var = (s0) linkedHashMap.get(str15);
                                                    Map map1110 = map12;
                                                    if (s0Var == null) {
                                                        i2 = 0;
                                                    } else {
                                                        i2 = s0Var.f989b;
                                                    }
                                                    linkedHashMap.put(str15, new s0(strValueOf7, i2 + iMax8, iD6));
                                                    it = it17;
                                                    map12 = map1110;
                                                }
                                            }
                                        }
                                        map3 = map12;
                                        arrayList = new ArrayList(linkedHashMap.values());
                                    }
                                    it2 = arrayList.iterator();
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            linkedHashMap2 = new LinkedHashMap();
                                            it3 = arrayList.iterator();
                                            while (it3.hasNext()) {
                                                s0 s0Var12 = (s0) it3.next();
                                                mapN = n(map9, s0Var12);
                                                iW = w(mapN) - s0Var12.f989b;
                                                i4 = s0Var12.f990c;
                                                E(iW, i4, mapN);
                                                strValueOf = String.valueOf(mapN.getOrDefault("pk_id", ""));
                                                if (strValueOf.isEmpty()) {
                                                    it5 = it3;
                                                    map6 = map9;
                                                } else {
                                                    it5 = it3;
                                                    obj8 = map9.get(x(i4));
                                                    map6 = map9;
                                                    if (obj8 instanceof Map) {
                                                        map7 = (Map) obj8;
                                                        strArr = new String[]{"add", "upd", "update_list"};
                                                        i5 = 0;
                                                        while (i5 < 3) {
                                                            obj9 = map7.get(strArr[i5]);
                                                            Map map1111 = map7;
                                                            if (obj9 instanceof List) {
                                                                it6 = ((List) obj9).iterator();
                                                                while (it6.hasNext()) {
                                                                    next2 = it6.next();
                                                                    Iterator it18 = it6;
                                                                    if (next2 instanceof Map) {
                                                                        map8 = (Map) next2;
                                                                        if (c.a.B(map8, "pk_id", "", strValueOf)) {
                                                                            E(iW, i4, map8);
                                                                        }
                                                                    }
                                                                    it6 = it18;
                                                                }
                                                            }
                                                            i5++;
                                                            map7 = map1111;
                                                        }
                                                    }
                                                    strX = x(i4);
                                                    mapZ0 = (Map) linkedHashMap2.get(strX);
                                                    if (mapZ0 == null) {
                                                        mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
                                                        linkedHashMap2.put(strX, mapZ0);
                                                    }
                                                    if ("GeneralSoul".equals(strX)) {
                                                        ((List) mapZ0.get("upd")).add(mapN);
                                                    } else {
                                                        ((List) mapZ0.get("upd")).add(mapN);
                                                    }
                                                    it3 = it5;
                                                    map9 = map6;
                                                    mapM = mapM;
                                                    str8 = str8;
                                                }
                                                strX = x(i4);
                                                mapZ0 = (Map) linkedHashMap2.get(strX);
                                                if (mapZ0 == null) {
                                                    mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
                                                    linkedHashMap2.put(strX, mapZ0);
                                                }
                                                if ("GeneralSoul".equals(strX)) {
                                                    ((List) mapZ0.get("upd")).add(mapN);
                                                } else {
                                                    ((List) mapZ0.get("upd")).add(mapN);
                                                }
                                                it3 = it5;
                                                map9 = map6;
                                                mapM = mapM;
                                                str8 = str8;
                                            }
                                            str6 = str8;
                                            map4 = mapM;
                                            Map map1112 = map9;
                                            i3 = r0Var.f977a;
                                            if (i8 != 0) {
                                                numValueOf = Integer.valueOf(i3);
                                                obj7 = obj5;
                                                map5 = map4;
                                            } else {
                                                map5 = map4;
                                                map5.put(str6, Integer.valueOf(i3));
                                                numValueOf = Integer.valueOf(r0Var.f978b);
                                                obj7 = "magic_sub_level";
                                            }
                                            map5.put(obj7, numValueOf);
                                            z(map1112);
                                            map2 = map1112;
                                            linkedHashMap2.putAll(G(map2, map5, map3, w1VarA1));
                                            LinkedHashMap linkedHashMapF6 = F(map5);
                                            obj2 = obj4;
                                            linkedHashMapF6.put(obj2, k(map5, linkedHashMap2));
                                            LinkedHashSet linkedHashSet7 = new LinkedHashSet();
                                            linkedHashSet7.add("MagicalEqu");
                                            linkedHashSet7.addAll(linkedHashMap2.keySet());
                                            sb = new StringBuilder();
                                            it4 = linkedHashSet7.iterator();
                                            if (it4.hasNext()) {
                                                while (true) {
                                                    sb.append((CharSequence) it4.next());
                                                    if (!it4.hasNext()) {
                                                        break;
                                                        break;
                                                    }
                                                    sb.append((CharSequence) str3);
                                                }
                                            }
                                            str5 = str3;
                                            String string6 = sb.toString();
                                            obj3 = obj;
                                            linkedHashMapF6.put(obj3, string6);
                                            linkedHashMapL = linkedHashMapF6;
                                            break;
                                        }
                                        s0 s0Var13 = (s0) it2.next();
                                        mapN2 = n(map9, s0Var13);
                                        if (mapN2 != null) {
                                        }
                                        str7 = "神兵锻造材料不足";
                                    }
                                } else {
                                    linkedHashMap = new LinkedHashMap();
                                    obj6 = r0Var.f980d.get("forge_piece");
                                    if (obj6 instanceof List) {
                                        arrayList = new ArrayList();
                                        map3 = map12;
                                    } else {
                                        it = ((List) obj6).iterator();
                                        while (it.hasNext()) {
                                            next = it.next();
                                            if (next instanceof List) {
                                                list = (List) next;
                                                if (list.size() >= 3) {
                                                    String strValueOf8 = String.valueOf(list.get(0));
                                                    int iMax9 = Math.max(0, D(list.get(1), 0));
                                                    Iterator it19 = it;
                                                    int iD7 = D(list.get(2), 0);
                                                    String str16 = iD7 + ":" + strValueOf8;
                                                    s0Var = (s0) linkedHashMap.get(str16);
                                                    Map map1113 = map12;
                                                    if (s0Var == null) {
                                                        i2 = 0;
                                                    } else {
                                                        i2 = s0Var.f989b;
                                                    }
                                                    linkedHashMap.put(str16, new s0(strValueOf8, i2 + iMax9, iD7));
                                                    it = it19;
                                                    map12 = map1113;
                                                }
                                            }
                                        }
                                        map3 = map12;
                                        arrayList = new ArrayList(linkedHashMap.values());
                                    }
                                    it2 = arrayList.iterator();
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            linkedHashMap2 = new LinkedHashMap();
                                            it3 = arrayList.iterator();
                                            while (it3.hasNext()) {
                                                s0 s0Var14 = (s0) it3.next();
                                                mapN = n(map9, s0Var14);
                                                iW = w(mapN) - s0Var14.f989b;
                                                i4 = s0Var14.f990c;
                                                E(iW, i4, mapN);
                                                strValueOf = String.valueOf(mapN.getOrDefault("pk_id", ""));
                                                if (strValueOf.isEmpty()) {
                                                    it5 = it3;
                                                    map6 = map9;
                                                } else {
                                                    it5 = it3;
                                                    obj8 = map9.get(x(i4));
                                                    map6 = map9;
                                                    if (obj8 instanceof Map) {
                                                        map7 = (Map) obj8;
                                                        strArr = new String[]{"add", "upd", "update_list"};
                                                        i5 = 0;
                                                        while (i5 < 3) {
                                                            obj9 = map7.get(strArr[i5]);
                                                            Map map1114 = map7;
                                                            if (obj9 instanceof List) {
                                                                it6 = ((List) obj9).iterator();
                                                                while (it6.hasNext()) {
                                                                    next2 = it6.next();
                                                                    Iterator it110 = it6;
                                                                    if (next2 instanceof Map) {
                                                                        map8 = (Map) next2;
                                                                        if (c.a.B(map8, "pk_id", "", strValueOf)) {
                                                                            E(iW, i4, map8);
                                                                        }
                                                                    }
                                                                    it6 = it110;
                                                                }
                                                            }
                                                            i5++;
                                                            map7 = map1114;
                                                        }
                                                    }
                                                    strX = x(i4);
                                                    mapZ0 = (Map) linkedHashMap2.get(strX);
                                                    if (mapZ0 == null) {
                                                        mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
                                                        linkedHashMap2.put(strX, mapZ0);
                                                    }
                                                    if ("GeneralSoul".equals(strX)) {
                                                        ((List) mapZ0.get("upd")).add(mapN);
                                                    } else {
                                                        ((List) mapZ0.get("upd")).add(mapN);
                                                    }
                                                    it3 = it5;
                                                    map9 = map6;
                                                    mapM = mapM;
                                                    str8 = str8;
                                                }
                                                strX = x(i4);
                                                mapZ0 = (Map) linkedHashMap2.get(strX);
                                                if (mapZ0 == null) {
                                                    mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
                                                    linkedHashMap2.put(strX, mapZ0);
                                                }
                                                if ("GeneralSoul".equals(strX)) {
                                                    ((List) mapZ0.get("upd")).add(mapN);
                                                } else {
                                                    ((List) mapZ0.get("upd")).add(mapN);
                                                }
                                                it3 = it5;
                                                map9 = map6;
                                                mapM = mapM;
                                                str8 = str8;
                                            }
                                            str6 = str8;
                                            map4 = mapM;
                                            Map map1115 = map9;
                                            i3 = r0Var.f977a;
                                            if (i8 != 0) {
                                                numValueOf = Integer.valueOf(i3);
                                                obj7 = obj5;
                                                map5 = map4;
                                            } else {
                                                map5 = map4;
                                                map5.put(str6, Integer.valueOf(i3));
                                                numValueOf = Integer.valueOf(r0Var.f978b);
                                                obj7 = "magic_sub_level";
                                            }
                                            map5.put(obj7, numValueOf);
                                            z(map1115);
                                            map2 = map1115;
                                            linkedHashMap2.putAll(G(map2, map5, map3, w1VarA1));
                                            LinkedHashMap linkedHashMapF7 = F(map5);
                                            obj2 = obj4;
                                            linkedHashMapF7.put(obj2, k(map5, linkedHashMap2));
                                            LinkedHashSet linkedHashSet8 = new LinkedHashSet();
                                            linkedHashSet8.add("MagicalEqu");
                                            linkedHashSet8.addAll(linkedHashMap2.keySet());
                                            sb = new StringBuilder();
                                            it4 = linkedHashSet8.iterator();
                                            if (it4.hasNext()) {
                                                while (true) {
                                                    sb.append((CharSequence) it4.next());
                                                    if (!it4.hasNext()) {
                                                        break;
                                                        break;
                                                    }
                                                    sb.append((CharSequence) str3);
                                                }
                                            }
                                            str5 = str3;
                                            String string7 = sb.toString();
                                            obj3 = obj;
                                            linkedHashMapF7.put(obj3, string7);
                                            linkedHashMapL = linkedHashMapF7;
                                            break;
                                        }
                                        s0 s0Var15 = (s0) it2.next();
                                        mapN2 = n(map9, s0Var15);
                                        if (mapN2 != null) {
                                        }
                                        str7 = "神兵锻造材料不足";
                                    }
                                }
                            } else if (i8 != 0) {
                                str7 = "神兵精铸已达到最高等级";
                            } else {
                                str7 = "神兵锻造已达到最高等级";
                            }
                            linkedHashMapL = l(str7);
                            map2 = map9;
                            obj3 = obj;
                            str5 = str3;
                            obj2 = obj4;
                            break;
                        }
                        obj2 = "delta_data";
                        map2 = map9;
                        obj3 = obj;
                        str5 = str3;
                        linkedHashMapL = l("请先开启神兵");
                    } else {
                        obj2 = "delta_data";
                        map2 = map9;
                        obj3 = obj;
                        str5 = str3;
                        linkedHashMapL = l("请先开启神兵");
                    }
                }
                if (linkedHashMapL.get(obj2) instanceof Map) {
                    linkedHashMap3 = (Map) linkedHashMapL.get(obj2);
                } else {
                    linkedHashMap3 = new LinkedHashMap();
                }
                linkedHashSet = new LinkedHashSet();
                obj13 = linkedHashMapL.get(obj3);
                if (obj13 != null) {
                    for (String str17 : String.valueOf(obj13).split(str5)) {
                        if (!str17.trim().isEmpty()) {
                            linkedHashSet.add(str17.trim());
                        }
                    }
                }
                String[] strArr2 = (String[]) linkedHashSet.toArray(new String[0]);
                k0 k0Var3 = k0Var;
                linkedHashMapU1 = p5.u1(h5Var.j(linkedHashMap3, k0Var3.f904d.t((int) c7.g(), k0Var3.i(k0Var3.c(), "user_gold", map2), k0Var3.i(k0Var3.b(), "user_energy", map2), k0Var3.i(k0Var3.d(), "user_power", map2), k0Var3.j(k0Var3.a(), map2), strE, map2), strArr2));
                for (String str18 : strArr2) {
                    if ("TeamGeneral".equals(str18)) {
                        linkedHashMapU1.put("team_info", h5Var.j0(map2));
                        break;
                    }
                }
                linkedHashMapL.put("cmn", linkedHashMapU1);
                if (Boolean.TRUE.equals(linkedHashMapL.get("result")) && (linkedHashMapL.get(obj2) instanceof Map)) {
                    h5Var.S0(strE, map2);
                }
                return k0Var3.n(p5.s1(linkedHashMapL));
            }
            if (map12 == null || str2.isEmpty()) {
                linkedHashMapL = l(str9);
            } else {
                Object obj14 = map12.get("open_condition");
                if (obj14 instanceof List) {
                    List list4 = (List) obj14;
                    if (list4.isEmpty()) {
                        z = true;
                    } else {
                        Iterator it20 = list4.iterator();
                        while (true) {
                            if (it20.hasNext()) {
                                Object next3 = it20.next();
                                if (!(next3 instanceof Map) || D(((Map) next3).get("status"), 0) != 1) {
                                    z = false;
                                }
                            } else {
                                z = true;
                            }
                        }
                    }
                } else {
                    z = true;
                }
                if (z) {
                    Map mapM2 = m(str2, s(map9));
                    Map mapJ = mapM2 == null ? j(map12) : mapM2;
                    if (mapM2 == null) {
                        s(map9).add(mapJ);
                    }
                    boolean z2 = D(mapJ.get("is_open"), 0) != 1;
                    mapJ.put("is_open", 1);
                    mapJ.put("magic_level", Integer.valueOf(Math.max(1, D(mapJ.get("magic_level"), 1))));
                    mapJ.put("magic_sub_level", Integer.valueOf(Math.max(0, D(mapJ.get("magic_sub_level"), 0))));
                    mapJ.put("magic_vip_level", Integer.valueOf(Math.max(0, D(mapJ.get("magic_vip_level"), 0))));
                    z(map9);
                    LinkedHashMap linkedHashMapF8 = F(mapJ);
                    if (mapM2 == null || z2) {
                        linkedHashMapF8.put("delta_data", k(mapJ, new LinkedHashMap()));
                    }
                    linkedHashMapL = linkedHashMapF8;
                } else {
                    str9 = "神兵开启条件未满足";
                    linkedHashMapL = l(str9);
                }
            }
        }
        obj2 = "delta_data";
        map2 = map9;
        obj3 = obj;
        str5 = str3;
        if (linkedHashMapL.get(obj2) instanceof Map) {
            linkedHashMap3 = (Map) linkedHashMapL.get(obj2);
        } else {
            linkedHashMap3 = new LinkedHashMap();
        }
        linkedHashSet = new LinkedHashSet();
        obj13 = linkedHashMapL.get(obj3);
        if (obj13 != null) {
            while (i7 < r5) {
                if (!str17.trim().isEmpty()) {
                    linkedHashSet.add(str17.trim());
                }
            }
        }
        String[] strArr3 = (String[]) linkedHashSet.toArray(new String[0]);
        k0 k0Var4 = k0Var;
        linkedHashMapU1 = p5.u1(h5Var.j(linkedHashMap3, k0Var4.f904d.t((int) c7.g(), k0Var4.i(k0Var4.c(), "user_gold", map2), k0Var4.i(k0Var4.b(), "user_energy", map2), k0Var4.i(k0Var4.d(), "user_power", map2), k0Var4.j(k0Var4.a(), map2), strE, map2), strArr3));
        while (i6 < r4) {
            if ("TeamGeneral".equals(str18)) {
                linkedHashMapU1.put("team_info", h5Var.j0(map2));
                break;
            }
        }
        linkedHashMapL.put("cmn", linkedHashMapU1);
        if (Boolean.TRUE.equals(linkedHashMapL.get("result"))) {
            h5Var.S0(strE, map2);
        }
        return k0Var4.n(p5.s1(linkedHashMapL));
    }
}
