package com.sgscq.vpn.handler;

import android.content.Context;
import com.sgscq.vpn.battle.BattleResult;
import com.sgscq.vpn.battle.BattleScenario;
import com.sgscq.vpn.battle.BattleStarCalculator;
import com.sgscq.vpn.battle.BattleUnit;
import com.sgscq.vpn.c7;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.p7;
import com.sgscq.vpn.w1;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class l0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f910c = {2, 4, 6, 7};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[][] f911d = {new int[]{4, 5, 5, 6, 6, 7}, new int[]{6, 7, 8, 8, 9, 10}, new int[]{9, 10, 11, 11, 12, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[][] f912e = {new int[]{7, 8, 8, 9, 9, 9}, new int[]{14, 15, 16, 17, 18, 20}, new int[]{27, 29, 30, 32, 34, 35}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[][] f913f = {new int[]{2, 2, 3, 3, 3, 3}, new int[]{3, 3, 4, 4, 4, 4}, new int[]{5, 5, 5, 5, 6, 6}};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e0 f914a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d1 f915b = new d1();

    public l0(k0 k0Var) {
        this.f914a = k0Var;
    }

    public static Map a(int i2, String str, Map map) {
        List<Map> listF0 = w1.f0("Item", map);
        for (Map map2 : listF0) {
            if (c.a.C(map2, "id", "", "item_id", str)) {
                int iL2 = w1.l2(String.valueOf(map2.getOrDefault("num", map2.getOrDefault("item_num", "0"))), 0) + i2;
                map2.put("num", Integer.valueOf(iL2));
                map2.put("item_num", Integer.valueOf(iL2));
                map.put("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", listF0));
                return map2;
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a.x("Item", map, linkedHashMap, "pk_id", "id", str);
        c.a.z(linkedHashMap, "item_id", str, i2, "num", i2, "item_num");
        linkedHashMap.put("item_type", 1);
        linkedHashMap.put("type", "1");
        listF0.add(linkedHashMap);
        map.put("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", listF0));
        return linkedHashMap;
    }

    public static ArrayList b(List list, Map map, w1 w1Var, int i2, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map2 = (Map) it.next();
            e eVar = new e(String.valueOf(map2.getOrDefault("general_id", "112001")), i2, arrayList.size());
            eVar.f812d = map2;
            eVar.f814f = w1Var;
            eVar.f815g = str;
            Iterator it2 = it;
            eVar.a(300.0d, 100.0d, 100.0d);
            if (map != null) {
                eVar.f813e = map;
            }
            if (i2 == 0 && c.a.f(map2, "fortune", "0", 0) >= 1) {
                eVar.f820l = true;
            }
            arrayList.add(f.a(eVar));
            it = it2;
        }
        if (arrayList.isEmpty()) {
            e eVar2 = new e("112001", i2, 0);
            eVar2.f814f = w1Var;
            eVar2.f815g = str;
            eVar2.a(300.0d, 100.0d, 100.0d);
            arrayList.add(f.a(eVar2));
        }
        return arrayList;
    }

    public static LinkedHashMap c(String str) {
        return p5.z0("ret", -1, "code", -1, "result", Boolean.FALSE, "msg", str, "error_code", -1);
    }

    public static LinkedHashMap e(Map map) {
        return p5.z0("stage", String.valueOf(map.getOrDefault("hulao_stage", "1")), "mode", String.valueOf(map.getOrDefault("hulao_mode", "0")), "status", String.valueOf(map.getOrDefault("hulao_status", "0")));
    }

    public static List f(String str) {
        ArrayList arrayListT1 = p5.t1(str);
        if (!arrayListT1.isEmpty()) {
            return arrayListT1;
        }
        try {
            Object objD = new a.o().d(str, List.class);
            if (objD instanceof List) {
                return (List) objD;
            }
        } catch (Exception unused) {
        }
        return new ArrayList();
    }

    public static LinkedHashMap g() {
        return p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0);
    }

    public static int h(Map map) {
        String[] strArr = {"position", "team_position", "general_position"};
        for (int i2 = 0; i2 < 3; i2++) {
            Object obj = map.get(strArr[i2]);
            if (obj != null) {
                try {
                    return (int) Double.parseDouble(String.valueOf(obj));
                } catch (NumberFormatException unused) {
                    continue;
                }
            }
        }
        return Integer.MAX_VALUE;
    }

    /* JADX WARN: Code duplicated, block: B:105:0x04df  */
    /* JADX WARN: Code duplicated, block: B:107:0x04e8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:108:0x04ea  */
    /* JADX WARN: Code duplicated, block: B:112:0x0513 A[LOOP:8: B:110:0x050b->B:112:0x0513, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:116:0x053a  */
    /* JADX WARN: Code duplicated, block: B:125:0x0565  */
    /* JADX WARN: Code duplicated, block: B:130:0x0575  */
    /* JADX WARN: Code duplicated, block: B:134:0x0582  */
    /* JADX WARN: Code duplicated, block: B:138:0x05bc  */
    /* JADX WARN: Code duplicated, block: B:144:0x05d6  */
    /* JADX WARN: Code duplicated, block: B:148:0x05ed  */
    /* JADX WARN: Code duplicated, block: B:155:0x060d  */
    /* JADX WARN: Code duplicated, block: B:159:0x0619  */
    /* JADX WARN: Code duplicated, block: B:162:0x0623  */
    /* JADX WARN: Code duplicated, block: B:167:0x069e  */
    /* JADX WARN: Code duplicated, block: B:168:0x06a2  */
    /* JADX WARN: Code duplicated, block: B:170:0x06cb  */
    /* JADX WARN: Code duplicated, block: B:171:0x06ce  */
    /* JADX WARN: Code duplicated, block: B:174:0x06e0  */
    /* JADX WARN: Code duplicated, block: B:175:0x06e3  */
    /* JADX WARN: Code duplicated, block: B:180:0x078c  */
    /* JADX WARN: Code duplicated, block: B:187:0x07ac  */
    /* JADX WARN: Code duplicated, block: B:188:0x07af  */
    /* JADX WARN: Code duplicated, block: B:192:0x07c6  */
    /* JADX WARN: Code duplicated, block: B:203:0x0952  */
    /* JADX WARN: Code duplicated, block: B:206:0x095b  */
    /* JADX WARN: Code duplicated, block: B:209:0x0965  */
    /* JADX WARN: Code duplicated, block: B:212:0x096e  */
    /* JADX WARN: Code duplicated, block: B:218:0x0989 A[EDGE_INSN: B:218:0x0989->B:219:0x098a BREAK  A[LOOP:16: B:207:0x095f->B:362:?]] */
    /* JADX WARN: Code duplicated, block: B:220:0x098c  */
    /* JADX WARN: Code duplicated, block: B:221:0x098e  */
    /* JADX WARN: Code duplicated, block: B:226:0x09a5  */
    /* JADX WARN: Code duplicated, block: B:229:0x09b1  */
    /* JADX WARN: Code duplicated, block: B:238:0x09d0  */
    /* JADX WARN: Code duplicated, block: B:240:0x09dc  */
    /* JADX WARN: Code duplicated, block: B:243:0x0a10  */
    /* JADX WARN: Code duplicated, block: B:246:0x0a18  */
    /* JADX WARN: Code duplicated, block: B:249:0x0a1e A[LOOP:17: B:245:0x0a16->B:249:0x0a1e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:253:0x0a2e  */
    /* JADX WARN: Code duplicated, block: B:254:0x0a31  */
    /* JADX WARN: Code duplicated, block: B:256:0x0a34  */
    /* JADX WARN: Code duplicated, block: B:259:0x0a3e  */
    /* JADX WARN: Code duplicated, block: B:261:0x0a65  */
    /* JADX WARN: Code duplicated, block: B:264:0x0a97  */
    /* JADX WARN: Code duplicated, block: B:268:0x0aa3  */
    /* JADX WARN: Code duplicated, block: B:272:0x0ad6 A[LOOP:18: B:270:0x0ad0->B:272:0x0ad6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:275:0x0b4e  */
    /* JADX WARN: Code duplicated, block: B:277:0x0b58  */
    /* JADX WARN: Code duplicated, block: B:280:0x0b8c  */
    /* JADX WARN: Code duplicated, block: B:284:0x0ba3  */
    /* JADX WARN: Code duplicated, block: B:285:0x0bac  */
    /* JADX WARN: Code duplicated, block: B:288:0x0bc8  */
    /* JADX WARN: Code duplicated, block: B:290:0x0bd4  */
    /* JADX WARN: Code duplicated, block: B:294:0x0be6  */
    /* JADX WARN: Code duplicated, block: B:298:0x0120 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:300:0x0482 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:302:0x0196 A[EDGE_INSN: B:302:0x0196->B:53:0x0196 BREAK  A[LOOP:0: B:50:0x017a->B:52:0x0184], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:303:0x0252 A[EDGE_INSN: B:303:0x0252->B:61:0x0252 BREAK  A[LOOP:1: B:54:0x01b1->B:60:0x0242], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:305:0x0242 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:307:0x041a A[EDGE_INSN: B:307:0x041a->B:78:0x041a BREAK  A[LOOP:3: B:71:0x0319->B:77:0x03e2], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:311:0x0bd7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:313:0x09ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:314:0x09c6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:316:0x09ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:317:0x09ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:332:0x057d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:334:0x056f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:337:0x05c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:339:0x05b6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:341:0x0925 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:347:0x0610 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:349:0x062b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:350:? A[LOOP:14: B:160:0x061d->B:350:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:358:0x0987 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:359:0x0989 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:363:0x0a21 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:364:0x0a1c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:42:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:52:0x0184 A[LOOP:0: B:50:0x017a->B:52:0x0184, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:56:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:59:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:63:0x0258  */
    /* JADX WARN: Code duplicated, block: B:66:0x0266 A[LOOP:2: B:64:0x0260->B:66:0x0266, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:69:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:73:0x0321  */
    /* JADX WARN: Code duplicated, block: B:76:0x0330 A[LOOP:4: B:74:0x0328->B:76:0x0330, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:82:0x0455  */
    /* JADX WARN: Code duplicated, block: B:84:0x0461  */
    /* JADX WARN: Code duplicated, block: B:88:0x0494  */
    /* JADX WARN: Code duplicated, block: B:89:0x0497 A[Catch: all -> 0x09cd, TRY_LEAVE, TryCatch #1 {, blocks: (B:86:0x0482, B:89:0x0497), top: B:300:0x0482 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x04aa  */
    /* JADX WARN: Code duplicated, block: B:94:0x04ad  */
    /* JADX WARN: Code duplicated, block: B:97:0x04be  */
    /* JADX WARN: Instruction removed from duplicated block: B:259:0x0a3e, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    public final byte[] d(String str, Map map) {
        Object[] objArr;
        Object[] objArr2;
        p7 p7Var;
        String str2;
        l0 l0Var;
        LinkedHashMap linkedHashMapG;
        d1 d1VarK;
        LinkedHashMap linkedHashMap;
        String str3;
        String str4;
        int i2;
        int i3;
        int[] iArr;
        int i4;
        boolean z;
        int iF;
        int i5;
        LinkedHashMap linkedHashMapG2;
        ArrayList arrayList;
        ArrayList arrayList2;
        int[] iArr2;
        int i6;
        String str5;
        String str6;
        String str7;
        String str8;
        d1 d1Var;
        String str9;
        n0 n0VarA;
        String str10;
        int i7;
        int iF2;
        int i8;
        LinkedHashMap linkedHashMap2;
        ArrayList<Map> arrayList3;
        Iterator it;
        int i9;
        Iterator it2;
        int i10;
        int iB;
        ArrayList arrayList4;
        int i11;
        String str11;
        String str12;
        String str13;
        ArrayList arrayList5;
        String str14;
        Object obj;
        boolean z2;
        int i12;
        List list;
        Iterator it3;
        Object next;
        Object obj2;
        int i13;
        ArrayList arrayList6;
        int i14;
        m0 m0Var;
        n0 n0Var;
        ArrayList arrayList7;
        ArrayList<BattleUnit> arrayListB;
        int i15;
        LinkedHashMap linkedHashMap3;
        boolean z3;
        List list2;
        String id;
        String strValueOf;
        String id2;
        int i16;
        Map map2;
        Map map3;
        LinkedHashMap linkedHashMap4;
        Map map4;
        Object obj3;
        Map map5;
        String str15;
        Object obj4;
        Object obj5;
        Map map6;
        ArrayList arrayList8;
        int i17;
        String[] strArr;
        e0 e0Var;
        String strTrim;
        String str16;
        String str17;
        d1 d1Var2;
        n0 n0VarA2;
        LinkedHashMap linkedHashMapG3;
        Integer num;
        String str18;
        ArrayList arrayList9;
        LinkedHashMap linkedHashMap5;
        Iterator it4;
        String str19;
        Iterator it5;
        String str20;
        LinkedHashMap linkedHashMap6;
        String str21;
        n0 n0Var2;
        Integer num2;
        LinkedHashMap linkedHashMapZ0;
        Object[] objArr3;
        ArrayList arrayList10;
        ArrayList arrayList11;
        int i18;
        n0 n0Var3;
        List list3;
        m0 m0Var2;
        int i19;
        Map map7;
        if ((str != null && str.startsWith("hulao.")) != true) {
            return null;
        }
        this.f914a.getClass();
        if (com.sgscq.vpn.cloud.m0.q1(str)) {
            String strE = ((k0) this.f914a).e(map);
            Map mapW0 = ((k0) ((k0) this.f914a).k().f808b).f904d.w0(strE);
            if (mapW0 == null) {
                mapW0 = new LinkedHashMap();
            }
            Map map8 = mapW0;
            String strC = c7.c(c7.f() - 18000000);
            if (strC == null || strC.isEmpty() || c.a.B(map8, "hulao_day", "", strC)) {
                objArr = false;
            } else {
                map8.put("hulao_day", strC);
                map8.put("hulao_stage", 1);
                map8.put("hulao_status", 0);
                map8.put("hulao_mode", "0");
                map8.put("hulao_fortune", 15);
                objArr = true;
            }
            int iF3 = c.a.f(map8, "hulao_status", "0", 0);
            String strValueOf2 = String.valueOf(map8.getOrDefault("hulao_mode", "0"));
            if (iF3 != 0 || "0".equals(strValueOf2)) {
                if (iF3 == 3 && "0".equals(strValueOf2)) {
                    map8.put("hulao_mode", "1");
                } else {
                    objArr2 = false;
                }
                if (objArr2 != false) {
                    objArr = true;
                }
                e0 e0Var2 = this.f914a;
                Context context = ((k0) e0Var2).f901a;
                e0Var2.getClass();
                this.f914a.getClass();
                p7 p7VarH = p7.h(context);
                p7VarH.i();
                p7Var = p7VarH.f1308p ? p7VarH : null;
                if ("hulao.lineup".equals(str)) {
                    str16 = (String) map.getOrDefault("stage", "1");
                    str17 = (String) map.getOrDefault("mode", "1");
                    map8.put("hulao_refresh", Integer.valueOf(w1.l2(String.valueOf(map8.getOrDefault("hulao_refresh", "0")), 0) + 1));
                    d1Var2 = this.f915b;
                    synchronized (d1Var2) {
                        n0VarA2 = n0.a(map8, strE, str16, str17, p7Var);
                        ((Map) d1Var2.f808b).put(d1.l0(strE, str16, str17), n0VarA2);
                    }
                    linkedHashMapG3 = g();
                    linkedHashMapG3.put("stage", str16);
                    linkedHashMapG3.put("mode", str17);
                    num = 3;
                    Object[] objArr4 = new Object[4];
                    objArr4[0] = "total_fortune";
                    objArr4[1] = Integer.valueOf(w1.l2(String.valueOf(map8.getOrDefault("hulao_fortune", "0")), 0));
                    str18 = "general_list";
                    objArr4[2] = "general_list";
                    arrayList9 = new ArrayList();
                    linkedHashMap5 = new LinkedHashMap();
                    it4 = w1.f0("General", map8).iterator();
                    while (true) {
                        str19 = "";
                        if (it4.hasNext()) {
                            break;
                        }
                        Map map9 = (Map) it4.next();
                        linkedHashMap5.put(String.valueOf(map9.getOrDefault("pk_id", "")), map9);
                    }
                    ArrayList arrayList12 = new ArrayList(w1.f0("TeamGeneral", map8));
                    arrayList12.sort(new n.b(12));
                    it5 = arrayList12.iterator();
                    while (true) {
                        str20 = "112001";
                        linkedHashMap6 = linkedHashMapG3;
                        str21 = str18;
                        n0Var2 = n0VarA2;
                        num2 = num;
                        if (it5.hasNext()) {
                            break;
                        }
                        Map map10 = (Map) it5.next();
                        Iterator it6 = it5;
                        String str22 = str19;
                        map7 = (Map) linkedHashMap5.get(String.valueOf(map10.getOrDefault("general_pk_id", map10.getOrDefault("pk_id", str19))));
                        if (map7 == null) {
                            arrayList9.add(p5.z0("pk_id", String.valueOf(map7.getOrDefault("pk_id", "1")), "general_id", String.valueOf(map7.getOrDefault("general_id", "112001")), "general_level", Integer.valueOf(w1.l2(String.valueOf(map7.getOrDefault("general_level", "1")), 1)), "fighting", Integer.valueOf(w1.l2(String.valueOf(map7.getOrDefault("fighting", "1000")), 1000)), "fortune", 0, "hp", 100, "current_hp", 100));
                        }
                        linkedHashMapG3 = linkedHashMap6;
                        str18 = str21;
                        n0VarA2 = n0Var2;
                        num = num2;
                        it5 = it6;
                        str19 = str22;
                    }
                    if (arrayList9.isEmpty()) {
                        for (Map map11 : w1.f0("General", map8)) {
                            arrayList9.add(p5.z0("pk_id", String.valueOf(map11.getOrDefault("pk_id", "1")), "general_id", String.valueOf(map11.getOrDefault("general_id", "112001")), "general_level", Integer.valueOf(w1.l2(String.valueOf(map11.getOrDefault("general_level", "1")), 1)), "fighting", Integer.valueOf(w1.l2(String.valueOf(map11.getOrDefault("fighting", "1000")), 1000)), "fortune", 0, "hp", 100, "current_hp", 100));
                        }
                    }
                    if (arrayList9.isEmpty()) {
                        arrayList9.add(p5.z0("pk_id", "1", "general_id", "112001", "general_level", 1, "fighting", 1000, "fortune", 0, "hp", 100, "current_hp", 100));
                    }
                    objArr4[3] = arrayList9;
                    linkedHashMapZ0 = p5.z0("consume_fortune", num2, objArr4);
                    objArr3 = new Object[2];
                    objArr3[0] = "right_info";
                    arrayList10 = new ArrayList();
                    arrayList11 = new ArrayList();
                    i18 = 0;
                    n0Var3 = n0Var2;
                    while (true) {
                        list3 = n0Var3.f938a;
                        if (i18 < list3.size()) {
                            break;
                        }
                        m0Var2 = (m0) list3.get(i18);
                        i19 = 0;
                        while (i19 < m0Var2.f932f.size()) {
                            Map map12 = (Map) m0Var2.f932f.get(i19);
                            LinkedHashMap linkedHashMap7 = new LinkedHashMap(map12);
                            String str23 = str20;
                            String strValueOf3 = String.valueOf(map12.getOrDefault("general_id", str20));
                            LinkedHashMap linkedHashMap8 = linkedHashMapZ0;
                            Object[] objArr5 = objArr3;
                            int iB2 = n0.b(map12.get("hp"), n0.b(map12.get("general_hp"), 1000));
                            StringBuilder sb = new StringBuilder();
                            sb.append(m0Var2.f927a);
                            sb.append("_");
                            i19++;
                            sb.append(i19);
                            linkedHashMap7.put("pk_id", sb.toString());
                            linkedHashMap7.put("general_id", strValueOf3);
                            linkedHashMap7.put("general_level", Integer.valueOf(n0.b(map12.get("general_level"), m0Var2.f929c)));
                            linkedHashMap7.put("fighting", Integer.valueOf(n0.b(map12.get("general_fighting"), Math.max(1, m0Var2.f930d / 3))));
                            linkedHashMap7.put("fortune", 0);
                            linkedHashMap7.put("hp", Integer.valueOf(iB2));
                            linkedHashMap7.put("current_hp", Integer.valueOf(iB2));
                            linkedHashMap7.put("route", Integer.valueOf(i18 + 1));
                            arrayList10.add(linkedHashMap7);
                            map8 = map8;
                            str20 = str23;
                            linkedHashMapZ0 = linkedHashMap8;
                            objArr3 = objArr5;
                            n0Var3 = n0Var3;
                        }
                        LinkedHashMap linkedHashMap9 = linkedHashMapZ0;
                        String str24 = str20;
                        String str25 = m0Var2.f927a;
                        String str26 = m0Var2.f928b;
                        arrayList11.add(p5.z0("user_id", str25, "player_id", str25, "user_nick", str26, "nickname", str26, "server_id", 1));
                        i18++;
                        str20 = str24;
                        linkedHashMapZ0 = linkedHashMap9;
                        objArr3 = objArr3;
                    }
                    objArr3[1] = p5.z0(str21, arrayList10, "user_list", arrayList11);
                    LinkedHashMap linkedHashMapZ1 = p5.z0("left_info", linkedHashMapZ0, objArr3);
                    linkedHashMap6.put("data", linkedHashMapZ1);
                    linkedHashMap6.put("return_info", linkedHashMapZ1);
                    l0Var = this;
                    d1VarK = ((k0) l0Var.f914a).k();
                    linkedHashMap = linkedHashMap6;
                    str2 = strE;
                } else {
                    if ("hulao.fight".equals(str)) {
                        str6 = (String) map.getOrDefault("stage", "1");
                        str7 = (String) map.getOrDefault("mode", "1");
                        str8 = (String) map.getOrDefault("general_list", "");
                        d1Var = this.f915b;
                        synchronized (d1Var) {
                            str9 = strE;
                            n0VarA = (n0) ((Map) d1Var.f808b).remove(d1.l0(str9, str6, str7));
                            if (n0VarA != null) {
                                map8 = map8;
                            } else {
                                map8 = map8;
                                n0VarA = n0.a(map8, str9, str6, str7, p7Var);
                            }
                        }
                        str10 = "hulao_status";
                        if (c.a.f(map8, "hulao_status", "0", 0) >= 2) {
                            str15 = "e_hulao_1010";
                        } else {
                            i7 = 0;
                            for (Object obj6 : f(str8)) {
                                if ((obj6 instanceof Map) && c.a.e((Map) obj6, "fortune", 0) >= 1) {
                                    i7++;
                                }
                            }
                            iF2 = c.a.f(map8, "hulao_fortune", "0", 0);
                            i8 = i7 * 3;
                            if (i8 > iF2) {
                                str15 = "e_hulao_1009";
                            } else {
                                if (i8 > 0) {
                                    map8.put("hulao_fortune", Integer.valueOf(iF2 - i8));
                                }
                                map8.put("hulao_stage", str6);
                                map8.put("hulao_mode", str7);
                                linkedHashMap2 = new LinkedHashMap();
                                for (Map map13 : w1.f0("General", map8)) {
                                    linkedHashMap2.put(String.valueOf(map13.getOrDefault("pk_id", "")), map13);
                                }
                                arrayList3 = new ArrayList();
                                for (Object obj7 : f(str8)) {
                                    if ((obj7 instanceof Map) || (obj3 = (map4 = (Map) obj7).get("pk_id")) == null || (map5 = (Map) linkedHashMap2.get(String.valueOf(obj3))) == null) {
                                        linkedHashMap4 = null;
                                    } else {
                                        linkedHashMap4 = new LinkedHashMap(map5);
                                        Object obj8 = map4.get("fortune");
                                        if (obj8 != null) {
                                            linkedHashMap4.put("fortune", obj8);
                                        }
                                    }
                                    arrayList3.add(linkedHashMap4);
                                }
                                it = arrayList3.iterator();
                                i9 = 0;
                                while (it.hasNext()) {
                                    if (((Map) it.next()) != null) {
                                        i9++;
                                    }
                                }
                                if (i9 == 0) {
                                    arrayList3.add(p5.z0("pk_id", "fallback", "general_id", "112001", "hp", 1000, "atk", 300, "def", 100, "wis", 100));
                                }
                                it2 = arrayList3.iterator();
                                i10 = 0;
                                while (it2.hasNext()) {
                                    if (((Map) it2.next()) != null) {
                                        i10++;
                                    }
                                }
                                w1.a1(null).getClass();
                                iB = w1.B(map8);
                                if (iB <= 0) {
                                    iB = Math.max(1, i10);
                                }
                                arrayList4 = new ArrayList();
                                i11 = 0;
                                while (true) {
                                    if (i11 < n0VarA.f938a.size()) {
                                        str11 = str6;
                                        str12 = str7;
                                        str13 = str10;
                                        arrayList5 = arrayList4;
                                        str14 = "success";
                                        str2 = str9;
                                        break;
                                    }
                                    i13 = i11 + 1;
                                    int i20 = (i13 - 1) * 3;
                                    arrayList6 = new ArrayList();
                                    str13 = str10;
                                    for (i14 = i20; i14 < arrayList3.size() && i14 < i20 + 3; i14++) {
                                        map3 = (Map) arrayList3.get(i14);
                                        if (map3 != null) {
                                            arrayList6.add(map3);
                                        }
                                    }
                                    if (arrayList6.isEmpty()) {
                                        for (Map map14 : arrayList3) {
                                            if (map14 != null) {
                                                arrayList6.add(map14);
                                                break;
                                            }
                                        }
                                    }
                                    m0Var = (m0) n0VarA.f938a.get(i11);
                                    w1 w1VarA1 = w1.a1(null);
                                    n0Var = n0VarA;
                                    String strValueOf4 = String.valueOf(map8.getOrDefault("user_nickname", "Player"));
                                    arrayList7 = arrayList3;
                                    arrayListB = b(arrayList6, map8, w1VarA1, 0, strValueOf4);
                                    List list4 = m0Var.f932f;
                                    str12 = str7;
                                    String str27 = m0Var.f928b;
                                    str11 = str6;
                                    ArrayList arrayList13 = arrayList4;
                                    ArrayList arrayListB2 = b(list4, null, w1VarA1, 1, str27);
                                    o.h hVarA = o.h.a();
                                    i15 = m0Var.f931e;
                                    String str28 = str9;
                                    BattleResult battleResultB = hVarA.b(new BattleScenario(arrayListB, arrayListB2, null, iB, i15));
                                    linkedHashMap3 = new LinkedHashMap(battleResultB.getFightInfo());
                                    z3 = linkedHashMap3.get("init") instanceof Map;
                                    list2 = m0Var.f932f;
                                    if (!z3) {
                                        Map map15 = (Map) linkedHashMap3.get("init");
                                        String strValueOf5 = String.valueOf(map8.getOrDefault("user_nickname", "Player"));
                                        int iL2 = w1.l2(String.valueOf(map8.getOrDefault("fighting", 0)), 0);
                                        if (arrayListB.isEmpty()) {
                                            id = "112001";
                                        } else {
                                            id = ((BattleUnit) arrayListB.get(0)).getId();
                                        }
                                        if (list2.isEmpty()) {
                                            strValueOf = "112001";
                                        } else {
                                            strValueOf = String.valueOf(((Map) list2.get(0)).getOrDefault("general_id", "112001"));
                                        }
                                        String str29 = m0Var.f928b;
                                        map15.put("info", p5.v0(p5.z0("name", strValueOf5, "userName", strValueOf5, "teamPoint", Integer.valueOf(iB), "user_ability", Integer.valueOf(iB), "leadership_num", Integer.valueOf(iB), "leadershipNum", Integer.valueOf(iB), "user_leadership_num", Integer.valueOf(iB), "fighting", Integer.valueOf(iL2), "general_id", id, "teamLeader", id), p5.z0("name", str29, "userName", str29, "teamPoint", Integer.valueOf(i15), "user_ability", Integer.valueOf(i15), "leadership_num", Integer.valueOf(i15), "leadershipNum", Integer.valueOf(i15), "user_leadership_num", Integer.valueOf(i15), "fighting", Integer.valueOf(m0Var.f930d), "general_id", strValueOf, "teamLeader", strValueOf)));
                                        map15.put("skipRounds", 0);
                                    }
                                    int i21 = 0;
                                    for (BattleUnit battleUnit : arrayListB) {
                                        if (battleUnit == null && battleUnit.isAlive()) {
                                            i21++;
                                        }
                                    }
                                    int iMax = Math.max(1, arrayListB.size());
                                    if (arrayListB.isEmpty()) {
                                        i16 = 0;
                                        id2 = "112001";
                                    } else {
                                        id2 = ((BattleUnit) arrayListB.get(0)).getId();
                                        i16 = 0;
                                    }
                                    String strValueOf6 = list2.isEmpty() ? "112001" : String.valueOf(((Map) list2.get(i16)).getOrDefault("general_id", "112001"));
                                    Object[] objArr6 = new Object[2];
                                    objArr6[i16] = "fight_result";
                                    Boolean boolValueOf = Boolean.valueOf(battleResultB.isSuccess());
                                    Object[] objArr7 = new Object[18];
                                    objArr7[i16] = "is_win";
                                    objArr7[1] = Integer.valueOf(battleResultB.isSuccess() ? 1 : 0);
                                    objArr7[2] = "fight_type";
                                    objArr7[3] = 3;
                                    objArr7[4] = "fight_calculate_info";
                                    objArr7[5] = p5.z0("star_level", Integer.valueOf(BattleStarCalculator.calculate(battleResultB.isSuccess(), i21, iMax)), "rounds", Integer.valueOf(Math.max(1, battleResultB.getRoundCount())), "residue_team_num", Integer.valueOf(i21), "residue_team_percent", Integer.valueOf(BattleStarCalculator.ceilPercent(i21, iMax)));
                                    objArr7[6] = "player_info";
                                    str2 = str28;
                                    objArr7[7] = com.sgscq.vpn.cloud.m0.T1(com.sgscq.vpn.cloud.m0.F2(w1.l2(String.valueOf(map8.getOrDefault("user_level", 1)), 1), str2, strValueOf4, id2), com.sgscq.vpn.cloud.m0.F2(m0Var.f929c, m0Var.f927a, str27, strValueOf6));
                                    objArr7[8] = "drop_info";
                                    objArr7[9] = p5.z0("user_exp", 0, "general_exp", 0, "user_coin", 0, "fortune", 0, "rank_salary", 0, "reward_honor", 0, "point", 0);
                                    objArr7[10] = "add_list";
                                    objArr7[11] = new ArrayList();
                                    objArr7[12] = "add_list_other";
                                    objArr7[13] = new ArrayList();
                                    objArr7[14] = "show_general_info";
                                    objArr7[15] = new ArrayList();
                                    objArr7[16] = "hulao_round";
                                    objArr7[17] = Integer.valueOf(i13);
                                    str14 = "success";
                                    objArr6[1] = p5.z0(str14, boolValueOf, objArr7);
                                    LinkedHashMap linkedHashMapZ2 = p5.z0("fight_info", linkedHashMap3, objArr6);
                                    arrayList5 = arrayList13;
                                    arrayList5.add(linkedHashMapZ2);
                                    map2 = (Map) linkedHashMapZ2.get("fight_result");
                                    if (map2 != null || !Boolean.TRUE.equals(map2.get(str14))) {
                                        linkedHashMapZ2.remove("fight_result");
                                        break;
                                    }
                                    str10 = str13;
                                    arrayList3 = arrayList7;
                                    str9 = str2;
                                    n0VarA = n0Var;
                                    str6 = str11;
                                    i11 = i13;
                                    arrayList4 = arrayList5;
                                    str7 = str12;
                                }
                                LinkedHashMap linkedHashMapG4 = g();
                                linkedHashMapG4.put("stage", str11);
                                linkedHashMapG4.put("mode", str12);
                                linkedHashMapG4.put("fight_result_all", arrayList5);
                                linkedHashMapG4.put("return_info", arrayList5);
                                obj = linkedHashMapG4.get("fight_result_all");
                                if (obj instanceof List) {
                                    z2 = false;
                                    break;
                                }
                                list = (List) obj;
                                if (list.isEmpty()) {
                                    it3 = list.iterator();
                                    while (true) {
                                        if (it3.hasNext()) {
                                            z2 = true;
                                            break;
                                        }
                                        next = it3.next();
                                        if (!(next instanceof Map)) {
                                            obj2 = ((Map) next).get("fight_result");
                                            if ((obj2 instanceof Map) || !Boolean.TRUE.equals(((Map) obj2).get(str14))) {
                                            }
                                        }
                                        z2 = false;
                                        break;
                                    }
                                }
                                z2 = false;
                                break;
                                if (z2) {
                                    i12 = 2;
                                } else {
                                    i12 = 1;
                                }
                                map8.put(str13, Integer.valueOf(i12));
                                linkedHashMapG2 = linkedHashMapG4;
                            }
                            obj4 = linkedHashMapG2.get("fight_result_all");
                            if (obj4 instanceof List) {
                                for (Object obj9 : (List) obj4) {
                                    if (!(obj9 instanceof Map)) {
                                        obj5 = ((Map) obj9).get("fight_info");
                                        if (obj5 instanceof Map) {
                                            p5.h((Map) obj5, true);
                                        }
                                    }
                                }
                            }
                        }
                        linkedHashMapG2 = c(str15);
                        str2 = str9;
                        obj4 = linkedHashMapG2.get("fight_result_all");
                        if (obj4 instanceof List) {
                            while (r1.hasNext()) {
                                if (!(obj9 instanceof Map)) {
                                    obj5 = ((Map) obj9).get("fight_info");
                                    if (obj5 instanceof Map) {
                                        p5.h((Map) obj5, true);
                                    }
                                }
                            }
                        }
                    } else {
                        str2 = strE;
                        if ("hulao.recieve".equals(str)) {
                            str3 = (String) map.getOrDefault("stage", "1");
                            str4 = (String) map.getOrDefault("mode", "1");
                            long jF = c7.f();
                            Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("Asia/Shanghai"), Locale.US);
                            calendar.setTimeInMillis(jF - 18000000);
                            i2 = 7;
                            i3 = calendar.get(7);
                            if (i3 != 1) {
                                map8 = map8;
                                i2 = i3 - 1;
                            }
                            map8 = map8;
                            iArr = f910c;
                            i4 = 0;
                            while (true) {
                                if (i4 < 4) {
                                    z = false;
                                    break;
                                }
                                if (i2 == iArr[i4]) {
                                    z = true;
                                    break;
                                }
                                i4++;
                            }
                            iF = c.a.f(map8, "hulao_status", "0", 0);
                            if (iF == 3) {
                                str5 = "e_hulao_1005";
                            } else if (iF != 2) {
                                str5 = "e_hulao_1003";
                            } else {
                                int iMax2 = Math.max(1, Math.min(6, w1.l2(str3, 1)));
                                int iMax3 = Math.max(1, Math.min(3, w1.l2(str4, 1)));
                                int i22 = iMax3 - 1;
                                int i23 = iMax2 - 1;
                                i5 = f911d[i22][i23];
                                if (z) {
                                    i5 *= 2;
                                }
                                int i24 = f912e[i22][i23];
                                int i25 = f913f[i22][i23];
                                Map mapA = a(i5, "600094", map8);
                                Map mapA2 = a(i24, "600012", map8);
                                Map mapA3 = a(i25, "600013", map8);
                                map8.put("hulao_stage", String.valueOf(Math.min(6, iMax2 + 1)));
                                map8.put("hulao_mode", iMax2 >= 6 ? String.valueOf(iMax3) : "0");
                                map8.put("hulao_status", Integer.valueOf(iMax2 < 6 ? 0 : 3));
                                linkedHashMapG2 = g();
                                linkedHashMapG2.put("hulao_info", e(map8));
                                arrayList = new ArrayList();
                                arrayList.add(mapA);
                                arrayList.add(mapA2);
                                arrayList.add(mapA3);
                                arrayList2 = new ArrayList();
                                iArr2 = new int[]{i5, i24, i25};
                                for (i6 = 0; i6 < arrayList.size(); i6++) {
                                    Map map16 = (Map) arrayList.get(i6);
                                    arrayList2.add(p5.z0("type", 5, "id", map16.get("item_id"), "item_id", map16.get("item_id"), "num", Integer.valueOf(iArr2[i6]), "pk_id", map16.get("pk_id")));
                                }
                                linkedHashMapG2.put("add_list", arrayList2);
                                linkedHashMapG2.put("delta_data", p5.z0("Item", p5.z0("del", new ArrayList(), "upd", arrayList, "add", new ArrayList()), new Object[0]));
                                linkedHashMapG2.put("cmn_modules", "Item");
                            }
                            linkedHashMapG2 = c(str5);
                        } else {
                            l0Var = this;
                            if ("hulao.debugReset".equals(str)) {
                                map8 = map8;
                                l0Var.f914a.getClass();
                            }
                            map8 = map8;
                            LinkedHashMap linkedHashMapE = e(map8);
                            linkedHashMapG = g();
                            linkedHashMapG.put("hulao_info", linkedHashMapE);
                            linkedHashMapG.put("return_info", linkedHashMapE);
                            linkedHashMapG.put("stage", linkedHashMapE.get("stage"));
                            linkedHashMapG.put("mode", linkedHashMapE.get("mode"));
                            linkedHashMapG.put("status", linkedHashMapE.get("status"));
                            if (objArr != false) {
                                d1VarK = ((k0) l0Var.f914a).k();
                                linkedHashMap = linkedHashMapG;
                            }
                        }
                        if (linkedHashMapG.get("delta_data") instanceof Map) {
                            map6 = (Map) linkedHashMapG.get("delta_data");
                        } else {
                            map6 = map8;
                        }
                        String[] strArrSplit = String.valueOf(linkedHashMapG.getOrDefault("cmn_modules", "")).split(",");
                        arrayList8 = new ArrayList();
                        for (String str30 : strArrSplit) {
                            strTrim = str30.trim();
                            if (!strTrim.isEmpty()) {
                                arrayList8.add(strTrim);
                            }
                        }
                        strArr = (String[]) arrayList8.toArray(new String[0]);
                        if (strArr.length > 0) {
                            k0 k0Var = (k0) l0Var.f914a;
                            linkedHashMapG = linkedHashMapG;
                            linkedHashMapG.put("cmn", p5.u1(((k0) k0Var.k().f808b).f904d.j(map6, ((k0) k0Var.k().f808b).f904d.t((int) c7.g(), k0Var.i(k0Var.c(), "user_gold", map8), k0Var.i(k0Var.b(), "user_energy", map8), k0Var.i(k0Var.d(), "user_power", map8), k0Var.j(k0Var.a(), map8), str2, map8), strArr)));
                        }
                        e0Var = this.f914a;
                    }
                    l0Var = this;
                    ((k0) l0Var.f914a).k().T0(str2, map8);
                    linkedHashMapG = linkedHashMapG2;
                    if (linkedHashMapG.get("delta_data") instanceof Map) {
                        map6 = (Map) linkedHashMapG.get("delta_data");
                    } else {
                        map6 = map8;
                    }
                    String[] strArrSplit2 = String.valueOf(linkedHashMapG.getOrDefault("cmn_modules", "")).split(",");
                    arrayList8 = new ArrayList();
                    while (i17 < r5) {
                        strTrim = str30.trim();
                        if (!strTrim.isEmpty()) {
                            arrayList8.add(strTrim);
                        }
                    }
                    strArr = (String[]) arrayList8.toArray(new String[0]);
                    if (strArr.length > 0) {
                        k0 k0Var2 = (k0) l0Var.f914a;
                        linkedHashMapG = linkedHashMapG;
                        linkedHashMapG.put("cmn", p5.u1(((k0) k0Var2.k().f808b).f904d.j(map6, ((k0) k0Var2.k().f808b).f904d.t((int) c7.g(), k0Var2.i(k0Var2.c(), "user_gold", map8), k0Var2.i(k0Var2.b(), "user_energy", map8), k0Var2.i(k0Var2.d(), "user_power", map8), k0Var2.j(k0Var2.a(), map8), str2, map8), strArr)));
                    }
                    e0Var = this.f914a;
                }
                d1VarK.T0(str2, map8);
                linkedHashMapG = linkedHashMap;
                if (linkedHashMapG.get("delta_data") instanceof Map) {
                    map6 = (Map) linkedHashMapG.get("delta_data");
                } else {
                    map6 = map8;
                }
                String[] strArrSplit3 = String.valueOf(linkedHashMapG.getOrDefault("cmn_modules", "")).split(",");
                arrayList8 = new ArrayList();
                while (i17 < r5) {
                    strTrim = str30.trim();
                    if (!strTrim.isEmpty()) {
                        arrayList8.add(strTrim);
                    }
                }
                strArr = (String[]) arrayList8.toArray(new String[0]);
                if (strArr.length > 0) {
                    k0 k0Var3 = (k0) l0Var.f914a;
                    linkedHashMapG = linkedHashMapG;
                    linkedHashMapG.put("cmn", p5.u1(((k0) k0Var3.k().f808b).f904d.j(map6, ((k0) k0Var3.k().f808b).f904d.t((int) c7.g(), k0Var3.i(k0Var3.c(), "user_gold", map8), k0Var3.i(k0Var3.b(), "user_energy", map8), k0Var3.i(k0Var3.d(), "user_power", map8), k0Var3.j(k0Var3.a(), map8), str2, map8), strArr)));
                }
                e0Var = this.f914a;
            } else {
                map8.put("hulao_mode", "0");
            }
            objArr2 = true;
            if (objArr2 != false) {
                objArr = true;
            }
            e0 e0Var3 = this.f914a;
            Context context2 = ((k0) e0Var3).f901a;
            e0Var3.getClass();
            this.f914a.getClass();
            p7 p7VarH2 = p7.h(context2);
            p7VarH2.i();
            if (p7VarH2.f1308p) {
            }
            if ("hulao.lineup".equals(str)) {
                str16 = (String) map.getOrDefault("stage", "1");
                str17 = (String) map.getOrDefault("mode", "1");
                map8.put("hulao_refresh", Integer.valueOf(w1.l2(String.valueOf(map8.getOrDefault("hulao_refresh", "0")), 0) + 1));
                d1Var2 = this.f915b;
                synchronized (d1Var2) {
                    n0VarA2 = n0.a(map8, strE, str16, str17, p7Var);
                    ((Map) d1Var2.f808b).put(d1.l0(strE, str16, str17), n0VarA2);
                    linkedHashMapG3 = g();
                    linkedHashMapG3.put("stage", str16);
                    linkedHashMapG3.put("mode", str17);
                    num = 3;
                    Object[] objArr8 = new Object[4];
                    objArr8[0] = "total_fortune";
                    objArr8[1] = Integer.valueOf(w1.l2(String.valueOf(map8.getOrDefault("hulao_fortune", "0")), 0));
                    str18 = "general_list";
                    objArr8[2] = "general_list";
                    arrayList9 = new ArrayList();
                    linkedHashMap5 = new LinkedHashMap();
                    it4 = w1.f0("General", map8).iterator();
                    while (true) {
                        str19 = "";
                        if (it4.hasNext()) {
                            break;
                            break;
                        }
                        Map map17 = (Map) it4.next();
                        linkedHashMap5.put(String.valueOf(map17.getOrDefault("pk_id", "")), map17);
                    }
                    ArrayList arrayList14 = new ArrayList(w1.f0("TeamGeneral", map8));
                    arrayList14.sort(new n.b(12));
                    it5 = arrayList14.iterator();
                    while (true) {
                        str20 = "112001";
                        linkedHashMap6 = linkedHashMapG3;
                        str21 = str18;
                        n0Var2 = n0VarA2;
                        num2 = num;
                        if (it5.hasNext()) {
                            break;
                            break;
                        }
                        Map map18 = (Map) it5.next();
                        Iterator it7 = it5;
                        String str210 = str19;
                        map7 = (Map) linkedHashMap5.get(String.valueOf(map18.getOrDefault("general_pk_id", map18.getOrDefault("pk_id", str19))));
                        if (map7 == null) {
                            arrayList9.add(p5.z0("pk_id", String.valueOf(map7.getOrDefault("pk_id", "1")), "general_id", String.valueOf(map7.getOrDefault("general_id", "112001")), "general_level", Integer.valueOf(w1.l2(String.valueOf(map7.getOrDefault("general_level", "1")), 1)), "fighting", Integer.valueOf(w1.l2(String.valueOf(map7.getOrDefault("fighting", "1000")), 1000)), "fortune", 0, "hp", 100, "current_hp", 100));
                        }
                        linkedHashMapG3 = linkedHashMap6;
                        str18 = str21;
                        n0VarA2 = n0Var2;
                        num = num2;
                        it5 = it7;
                        str19 = str210;
                    }
                    if (arrayList9.isEmpty()) {
                        while (r8.hasNext()) {
                            arrayList9.add(p5.z0("pk_id", String.valueOf(map11.getOrDefault("pk_id", "1")), "general_id", String.valueOf(map11.getOrDefault("general_id", "112001")), "general_level", Integer.valueOf(w1.l2(String.valueOf(map11.getOrDefault("general_level", "1")), 1)), "fighting", Integer.valueOf(w1.l2(String.valueOf(map11.getOrDefault("fighting", "1000")), 1000)), "fortune", 0, "hp", 100, "current_hp", 100));
                        }
                    }
                    if (arrayList9.isEmpty()) {
                        arrayList9.add(p5.z0("pk_id", "1", "general_id", "112001", "general_level", 1, "fighting", 1000, "fortune", 0, "hp", 100, "current_hp", 100));
                    }
                    objArr8[3] = arrayList9;
                    linkedHashMapZ0 = p5.z0("consume_fortune", num2, objArr8);
                    objArr3 = new Object[2];
                    objArr3[0] = "right_info";
                    arrayList10 = new ArrayList();
                    arrayList11 = new ArrayList();
                    i18 = 0;
                    n0Var3 = n0Var2;
                    while (true) {
                        list3 = n0Var3.f938a;
                        if (i18 < list3.size()) {
                            break;
                            break;
                        }
                        m0Var2 = (m0) list3.get(i18);
                        i19 = 0;
                        while (i19 < m0Var2.f932f.size()) {
                            Map map19 = (Map) m0Var2.f932f.get(i19);
                            LinkedHashMap linkedHashMap10 = new LinkedHashMap(map19);
                            String str211 = str20;
                            String strValueOf7 = String.valueOf(map19.getOrDefault("general_id", str20));
                            LinkedHashMap linkedHashMap11 = linkedHashMapZ0;
                            Object[] objArr9 = objArr3;
                            int iB3 = n0.b(map19.get("hp"), n0.b(map19.get("general_hp"), 1000));
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(m0Var2.f927a);
                            sb2.append("_");
                            i19++;
                            sb2.append(i19);
                            linkedHashMap10.put("pk_id", sb2.toString());
                            linkedHashMap10.put("general_id", strValueOf7);
                            linkedHashMap10.put("general_level", Integer.valueOf(n0.b(map19.get("general_level"), m0Var2.f929c)));
                            linkedHashMap10.put("fighting", Integer.valueOf(n0.b(map19.get("general_fighting"), Math.max(1, m0Var2.f930d / 3))));
                            linkedHashMap10.put("fortune", 0);
                            linkedHashMap10.put("hp", Integer.valueOf(iB3));
                            linkedHashMap10.put("current_hp", Integer.valueOf(iB3));
                            linkedHashMap10.put("route", Integer.valueOf(i18 + 1));
                            arrayList10.add(linkedHashMap10);
                            map8 = map8;
                            str20 = str211;
                            linkedHashMapZ0 = linkedHashMap11;
                            objArr3 = objArr9;
                            n0Var3 = n0Var3;
                        }
                        LinkedHashMap linkedHashMap12 = linkedHashMapZ0;
                        String str212 = str20;
                        String str213 = m0Var2.f927a;
                        String str214 = m0Var2.f928b;
                        arrayList11.add(p5.z0("user_id", str213, "player_id", str213, "user_nick", str214, "nickname", str214, "server_id", 1));
                        i18++;
                        str20 = str212;
                        linkedHashMapZ0 = linkedHashMap12;
                        objArr3 = objArr3;
                    }
                    objArr3[1] = p5.z0(str21, arrayList10, "user_list", arrayList11);
                    LinkedHashMap linkedHashMapZ3 = p5.z0("left_info", linkedHashMapZ0, objArr3);
                    linkedHashMap6.put("data", linkedHashMapZ3);
                    linkedHashMap6.put("return_info", linkedHashMapZ3);
                    l0Var = this;
                    d1VarK = ((k0) l0Var.f914a).k();
                    linkedHashMap = linkedHashMap6;
                    str2 = strE;
                }
            } else {
                if ("hulao.fight".equals(str)) {
                    str6 = (String) map.getOrDefault("stage", "1");
                    str7 = (String) map.getOrDefault("mode", "1");
                    str8 = (String) map.getOrDefault("general_list", "");
                    d1Var = this.f915b;
                    synchronized (d1Var) {
                        str9 = strE;
                        n0VarA = (n0) ((Map) d1Var.f808b).remove(d1.l0(str9, str6, str7));
                        if (n0VarA != null) {
                            map8 = map8;
                        } else {
                            map8 = map8;
                            n0VarA = n0.a(map8, str9, str6, str7, p7Var);
                        }
                        str10 = "hulao_status";
                        if (c.a.f(map8, "hulao_status", "0", 0) >= 2) {
                            str15 = "e_hulao_1010";
                        } else {
                            i7 = 0;
                            while (r7.hasNext()) {
                                if (obj6 instanceof Map) {
                                    i7++;
                                }
                            }
                            iF2 = c.a.f(map8, "hulao_fortune", "0", 0);
                            i8 = i7 * 3;
                            if (i8 > iF2) {
                                str15 = "e_hulao_1009";
                            } else {
                                if (i8 > 0) {
                                    map8.put("hulao_fortune", Integer.valueOf(iF2 - i8));
                                }
                                map8.put("hulao_stage", str6);
                                map8.put("hulao_mode", str7);
                                linkedHashMap2 = new LinkedHashMap();
                                while (r7.hasNext()) {
                                    linkedHashMap2.put(String.valueOf(map13.getOrDefault("pk_id", "")), map13);
                                }
                                arrayList3 = new ArrayList();
                                while (r2.hasNext()) {
                                    if (obj7 instanceof Map) {
                                        linkedHashMap4 = null;
                                    } else {
                                        linkedHashMap4 = null;
                                    }
                                    arrayList3.add(linkedHashMap4);
                                }
                                it = arrayList3.iterator();
                                i9 = 0;
                                while (it.hasNext()) {
                                    if (((Map) it.next()) != null) {
                                        i9++;
                                    }
                                }
                                if (i9 == 0) {
                                    arrayList3.add(p5.z0("pk_id", "fallback", "general_id", "112001", "hp", 1000, "atk", 300, "def", 100, "wis", 100));
                                }
                                it2 = arrayList3.iterator();
                                i10 = 0;
                                while (it2.hasNext()) {
                                    if (((Map) it2.next()) != null) {
                                        i10++;
                                    }
                                }
                                w1.a1(null).getClass();
                                iB = w1.B(map8);
                                if (iB <= 0) {
                                    iB = Math.max(1, i10);
                                }
                                arrayList4 = new ArrayList();
                                i11 = 0;
                                while (true) {
                                    if (i11 < n0VarA.f938a.size()) {
                                        str11 = str6;
                                        str12 = str7;
                                        str13 = str10;
                                        arrayList5 = arrayList4;
                                        str14 = "success";
                                        str2 = str9;
                                        break;
                                    }
                                    i13 = i11 + 1;
                                    int i26 = (i13 - 1) * 3;
                                    arrayList6 = new ArrayList();
                                    str13 = str10;
                                    while (i14 < arrayList3.size()) {
                                        map3 = (Map) arrayList3.get(i14);
                                        if (map3 != null) {
                                            arrayList6.add(map3);
                                        }
                                    }
                                    if (arrayList6.isEmpty()) {
                                        while (r1.hasNext()) {
                                            if (map14 != null) {
                                                arrayList6.add(map14);
                                                break;
                                            }
                                        }
                                    }
                                    m0Var = (m0) n0VarA.f938a.get(i11);
                                    w1 w1VarA2 = w1.a1(null);
                                    n0Var = n0VarA;
                                    String strValueOf8 = String.valueOf(map8.getOrDefault("user_nickname", "Player"));
                                    arrayList7 = arrayList3;
                                    arrayListB = b(arrayList6, map8, w1VarA2, 0, strValueOf8);
                                    List list5 = m0Var.f932f;
                                    str12 = str7;
                                    String str215 = m0Var.f928b;
                                    str11 = str6;
                                    ArrayList arrayList15 = arrayList4;
                                    ArrayList arrayListB3 = b(list5, null, w1VarA2, 1, str215);
                                    o.h hVarA2 = o.h.a();
                                    i15 = m0Var.f931e;
                                    String str216 = str9;
                                    BattleResult battleResultB2 = hVarA2.b(new BattleScenario(arrayListB, arrayListB3, null, iB, i15));
                                    linkedHashMap3 = new LinkedHashMap(battleResultB2.getFightInfo());
                                    z3 = linkedHashMap3.get("init") instanceof Map;
                                    list2 = m0Var.f932f;
                                    if (!z3) {
                                        Map map110 = (Map) linkedHashMap3.get("init");
                                        String strValueOf9 = String.valueOf(map8.getOrDefault("user_nickname", "Player"));
                                        int iL3 = w1.l2(String.valueOf(map8.getOrDefault("fighting", 0)), 0);
                                        if (arrayListB.isEmpty()) {
                                            id = "112001";
                                        } else {
                                            id = ((BattleUnit) arrayListB.get(0)).getId();
                                        }
                                        if (list2.isEmpty()) {
                                            strValueOf = "112001";
                                        } else {
                                            strValueOf = String.valueOf(((Map) list2.get(0)).getOrDefault("general_id", "112001"));
                                        }
                                        String str217 = m0Var.f928b;
                                        map110.put("info", p5.v0(p5.z0("name", strValueOf9, "userName", strValueOf9, "teamPoint", Integer.valueOf(iB), "user_ability", Integer.valueOf(iB), "leadership_num", Integer.valueOf(iB), "leadershipNum", Integer.valueOf(iB), "user_leadership_num", Integer.valueOf(iB), "fighting", Integer.valueOf(iL3), "general_id", id, "teamLeader", id), p5.z0("name", str217, "userName", str217, "teamPoint", Integer.valueOf(i15), "user_ability", Integer.valueOf(i15), "leadership_num", Integer.valueOf(i15), "leadershipNum", Integer.valueOf(i15), "user_leadership_num", Integer.valueOf(i15), "fighting", Integer.valueOf(m0Var.f930d), "general_id", strValueOf, "teamLeader", strValueOf)));
                                        map110.put("skipRounds", 0);
                                    }
                                    int i27 = 0;
                                    while (r4.hasNext()) {
                                        if (battleUnit == null) {
                                        }
                                    }
                                    int iMax4 = Math.max(1, arrayListB.size());
                                    if (arrayListB.isEmpty()) {
                                        i16 = 0;
                                        id2 = "112001";
                                    } else {
                                        id2 = ((BattleUnit) arrayListB.get(0)).getId();
                                        i16 = 0;
                                    }
                                    if (list2.isEmpty()) {
                                    }
                                    Object[] objArr10 = new Object[2];
                                    objArr10[i16] = "fight_result";
                                    Boolean boolValueOf2 = Boolean.valueOf(battleResultB2.isSuccess());
                                    Object[] objArr11 = new Object[18];
                                    objArr11[i16] = "is_win";
                                    objArr11[1] = Integer.valueOf(battleResultB2.isSuccess() ? 1 : 0);
                                    objArr11[2] = "fight_type";
                                    objArr11[3] = 3;
                                    objArr11[4] = "fight_calculate_info";
                                    objArr11[5] = p5.z0("star_level", Integer.valueOf(BattleStarCalculator.calculate(battleResultB2.isSuccess(), i27, iMax4)), "rounds", Integer.valueOf(Math.max(1, battleResultB2.getRoundCount())), "residue_team_num", Integer.valueOf(i27), "residue_team_percent", Integer.valueOf(BattleStarCalculator.ceilPercent(i27, iMax4)));
                                    objArr11[6] = "player_info";
                                    str2 = str216;
                                    objArr11[7] = com.sgscq.vpn.cloud.m0.T1(com.sgscq.vpn.cloud.m0.F2(w1.l2(String.valueOf(map8.getOrDefault("user_level", 1)), 1), str2, strValueOf8, id2), com.sgscq.vpn.cloud.m0.F2(m0Var.f929c, m0Var.f927a, str215, strValueOf6));
                                    objArr11[8] = "drop_info";
                                    objArr11[9] = p5.z0("user_exp", 0, "general_exp", 0, "user_coin", 0, "fortune", 0, "rank_salary", 0, "reward_honor", 0, "point", 0);
                                    objArr11[10] = "add_list";
                                    objArr11[11] = new ArrayList();
                                    objArr11[12] = "add_list_other";
                                    objArr11[13] = new ArrayList();
                                    objArr11[14] = "show_general_info";
                                    objArr11[15] = new ArrayList();
                                    objArr11[16] = "hulao_round";
                                    objArr11[17] = Integer.valueOf(i13);
                                    str14 = "success";
                                    objArr10[1] = p5.z0(str14, boolValueOf2, objArr11);
                                    LinkedHashMap linkedHashMapZ4 = p5.z0("fight_info", linkedHashMap3, objArr10);
                                    arrayList5 = arrayList15;
                                    arrayList5.add(linkedHashMapZ4);
                                    map2 = (Map) linkedHashMapZ4.get("fight_result");
                                    if (map2 != null) {
                                    }
                                    linkedHashMapZ4.remove("fight_result");
                                    break;
                                    str10 = str13;
                                    arrayList3 = arrayList7;
                                    str9 = str2;
                                    n0VarA = n0Var;
                                    str6 = str11;
                                    i11 = i13;
                                    arrayList4 = arrayList5;
                                    str7 = str12;
                                }
                                LinkedHashMap linkedHashMapG5 = g();
                                linkedHashMapG5.put("stage", str11);
                                linkedHashMapG5.put("mode", str12);
                                linkedHashMapG5.put("fight_result_all", arrayList5);
                                linkedHashMapG5.put("return_info", arrayList5);
                                obj = linkedHashMapG5.get("fight_result_all");
                                if (obj instanceof List) {
                                    z2 = false;
                                    break;
                                }
                                list = (List) obj;
                                if (list.isEmpty()) {
                                    it3 = list.iterator();
                                    while (true) {
                                        if (it3.hasNext()) {
                                            z2 = true;
                                            break;
                                        }
                                        next = it3.next();
                                        if (!(next instanceof Map)) {
                                            obj2 = ((Map) next).get("fight_result");
                                            if (obj2 instanceof Map) {
                                            }
                                        }
                                        z2 = false;
                                        break;
                                    }
                                }
                                z2 = false;
                                break;
                                if (z2) {
                                    i12 = 2;
                                } else {
                                    i12 = 1;
                                }
                                map8.put(str13, Integer.valueOf(i12));
                                linkedHashMapG2 = linkedHashMapG5;
                            }
                            obj4 = linkedHashMapG2.get("fight_result_all");
                            if (obj4 instanceof List) {
                                while (r1.hasNext()) {
                                    if (!(obj9 instanceof Map)) {
                                        obj5 = ((Map) obj9).get("fight_info");
                                        if (obj5 instanceof Map) {
                                            p5.h((Map) obj5, true);
                                        }
                                    }
                                }
                            }
                        }
                        linkedHashMapG2 = c(str15);
                        str2 = str9;
                        obj4 = linkedHashMapG2.get("fight_result_all");
                        if (obj4 instanceof List) {
                            while (r1.hasNext()) {
                                if (!(obj9 instanceof Map)) {
                                    obj5 = ((Map) obj9).get("fight_info");
                                    if (obj5 instanceof Map) {
                                        p5.h((Map) obj5, true);
                                    }
                                }
                            }
                        }
                    }
                } else {
                    str2 = strE;
                    if ("hulao.recieve".equals(str)) {
                        str3 = (String) map.getOrDefault("stage", "1");
                        str4 = (String) map.getOrDefault("mode", "1");
                        long jF2 = c7.f();
                        Calendar calendar2 = Calendar.getInstance(TimeZone.getTimeZone("Asia/Shanghai"), Locale.US);
                        calendar2.setTimeInMillis(jF2 - 18000000);
                        i2 = 7;
                        i3 = calendar2.get(7);
                        if (i3 != 1) {
                            map8 = map8;
                            i2 = i3 - 1;
                        }
                        map8 = map8;
                        iArr = f910c;
                        i4 = 0;
                        while (true) {
                            if (i4 < 4) {
                                z = false;
                                break;
                            }
                            if (i2 == iArr[i4]) {
                                z = true;
                                break;
                            }
                            i4++;
                        }
                        iF = c.a.f(map8, "hulao_status", "0", 0);
                        if (iF == 3) {
                            str5 = "e_hulao_1005";
                        } else if (iF != 2) {
                            str5 = "e_hulao_1003";
                        } else {
                            int iMax5 = Math.max(1, Math.min(6, w1.l2(str3, 1)));
                            int iMax6 = Math.max(1, Math.min(3, w1.l2(str4, 1)));
                            int i28 = iMax6 - 1;
                            int i29 = iMax5 - 1;
                            i5 = f911d[i28][i29];
                            if (z) {
                                i5 *= 2;
                            }
                            int i210 = f912e[i28][i29];
                            int i211 = f913f[i28][i29];
                            Map mapA4 = a(i5, "600094", map8);
                            Map mapA5 = a(i210, "600012", map8);
                            Map mapA6 = a(i211, "600013", map8);
                            map8.put("hulao_stage", String.valueOf(Math.min(6, iMax5 + 1)));
                            map8.put("hulao_mode", iMax5 >= 6 ? String.valueOf(iMax6) : "0");
                            map8.put("hulao_status", Integer.valueOf(iMax5 < 6 ? 0 : 3));
                            linkedHashMapG2 = g();
                            linkedHashMapG2.put("hulao_info", e(map8));
                            arrayList = new ArrayList();
                            arrayList.add(mapA4);
                            arrayList.add(mapA5);
                            arrayList.add(mapA6);
                            arrayList2 = new ArrayList();
                            iArr2 = new int[]{i5, i210, i211};
                            while (i6 < arrayList.size()) {
                                Map map111 = (Map) arrayList.get(i6);
                                arrayList2.add(p5.z0("type", 5, "id", map111.get("item_id"), "item_id", map111.get("item_id"), "num", Integer.valueOf(iArr2[i6]), "pk_id", map111.get("pk_id")));
                            }
                            linkedHashMapG2.put("add_list", arrayList2);
                            linkedHashMapG2.put("delta_data", p5.z0("Item", p5.z0("del", new ArrayList(), "upd", arrayList, "add", new ArrayList()), new Object[0]));
                            linkedHashMapG2.put("cmn_modules", "Item");
                        }
                        linkedHashMapG2 = c(str5);
                    } else {
                        l0Var = this;
                        if ("hulao.debugReset".equals(str)) {
                            map8 = map8;
                            l0Var.f914a.getClass();
                        }
                        map8 = map8;
                        LinkedHashMap linkedHashMapE2 = e(map8);
                        linkedHashMapG = g();
                        linkedHashMapG.put("hulao_info", linkedHashMapE2);
                        linkedHashMapG.put("return_info", linkedHashMapE2);
                        linkedHashMapG.put("stage", linkedHashMapE2.get("stage"));
                        linkedHashMapG.put("mode", linkedHashMapE2.get("mode"));
                        linkedHashMapG.put("status", linkedHashMapE2.get("status"));
                        if (objArr != false) {
                            d1VarK = ((k0) l0Var.f914a).k();
                            linkedHashMap = linkedHashMapG;
                        }
                    }
                    if (linkedHashMapG.get("delta_data") instanceof Map) {
                        map6 = (Map) linkedHashMapG.get("delta_data");
                    } else {
                        map6 = map8;
                    }
                    String[] strArrSplit4 = String.valueOf(linkedHashMapG.getOrDefault("cmn_modules", "")).split(",");
                    arrayList8 = new ArrayList();
                    while (i17 < r5) {
                        strTrim = str30.trim();
                        if (!strTrim.isEmpty()) {
                            arrayList8.add(strTrim);
                        }
                    }
                    strArr = (String[]) arrayList8.toArray(new String[0]);
                    if (strArr.length > 0) {
                        k0 k0Var4 = (k0) l0Var.f914a;
                        linkedHashMapG = linkedHashMapG;
                        linkedHashMapG.put("cmn", p5.u1(((k0) k0Var4.k().f808b).f904d.j(map6, ((k0) k0Var4.k().f808b).f904d.t((int) c7.g(), k0Var4.i(k0Var4.c(), "user_gold", map8), k0Var4.i(k0Var4.b(), "user_energy", map8), k0Var4.i(k0Var4.d(), "user_power", map8), k0Var4.j(k0Var4.a(), map8), str2, map8), strArr)));
                    }
                    e0Var = this.f914a;
                }
                l0Var = this;
                ((k0) l0Var.f914a).k().T0(str2, map8);
                linkedHashMapG = linkedHashMapG2;
                if (linkedHashMapG.get("delta_data") instanceof Map) {
                    map6 = (Map) linkedHashMapG.get("delta_data");
                } else {
                    map6 = map8;
                }
                String[] strArrSplit5 = String.valueOf(linkedHashMapG.getOrDefault("cmn_modules", "")).split(",");
                arrayList8 = new ArrayList();
                while (i17 < r5) {
                    strTrim = str30.trim();
                    if (!strTrim.isEmpty()) {
                        arrayList8.add(strTrim);
                    }
                }
                strArr = (String[]) arrayList8.toArray(new String[0]);
                if (strArr.length > 0) {
                    k0 k0Var5 = (k0) l0Var.f914a;
                    linkedHashMapG = linkedHashMapG;
                    linkedHashMapG.put("cmn", p5.u1(((k0) k0Var5.k().f808b).f904d.j(map6, ((k0) k0Var5.k().f808b).f904d.t((int) c7.g(), k0Var5.i(k0Var5.c(), "user_gold", map8), k0Var5.i(k0Var5.b(), "user_energy", map8), k0Var5.i(k0Var5.d(), "user_power", map8), k0Var5.j(k0Var5.a(), map8), str2, map8), strArr)));
                }
                e0Var = this.f914a;
            }
            d1VarK.T0(str2, map8);
            linkedHashMapG = linkedHashMap;
            if (linkedHashMapG.get("delta_data") instanceof Map) {
                map6 = (Map) linkedHashMapG.get("delta_data");
            } else {
                map6 = map8;
            }
            String[] strArrSplit6 = String.valueOf(linkedHashMapG.getOrDefault("cmn_modules", "")).split(",");
            arrayList8 = new ArrayList();
            while (i17 < r5) {
                strTrim = str30.trim();
                if (!strTrim.isEmpty()) {
                    arrayList8.add(strTrim);
                }
            }
            strArr = (String[]) arrayList8.toArray(new String[0]);
            if (strArr.length > 0) {
                k0 k0Var6 = (k0) l0Var.f914a;
                linkedHashMapG = linkedHashMapG;
                linkedHashMapG.put("cmn", p5.u1(((k0) k0Var6.k().f808b).f904d.j(map6, ((k0) k0Var6.k().f808b).f904d.t((int) c7.g(), k0Var6.i(k0Var6.c(), "user_gold", map8), k0Var6.i(k0Var6.b(), "user_energy", map8), k0Var6.i(k0Var6.d(), "user_power", map8), k0Var6.j(k0Var6.a(), map8), str2, map8), strArr)));
            }
            e0Var = this.f914a;
        } else {
            e0Var = this.f914a;
            linkedHashMapG = com.sgscq.vpn.cloud.m0.Z2();
        }
        return ((k0) e0Var).n(p5.s1(linkedHashMapG));
    }
}
