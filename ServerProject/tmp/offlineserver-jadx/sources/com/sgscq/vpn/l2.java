package com.sgscq.vpn;

import android.content.Context;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public abstract class l2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f1139a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile a7 f1140b;

    /* JADX WARN: Code duplicated, block: B:31:0x006c  */
    public static j2 a(Context context, final long j2) {
        p.a aVarC;
        com.sgscq.vpn.config.m mVar;
        String str;
        j2 j2Var;
        com.sgscq.vpn.config.c cVar;
        p.b bVarA;
        final com.sgscq.vpn.config.i iVarB = g2.b();
        p.d dVarB = context == null ? p.d.f1871c : p.d.b(context);
        if (dVarB == null) {
            aVarC = null;
        } else {
            p.b bVarA2 = dVarB.a();
            aVarC = bVarA2 == null ? null : p.d.c(bVarA2.f1867e, j2);
        }
        p.a aVarC2 = (dVarB == null || (bVarA = dVarB.a()) == null) ? null : p.d.c(bVarA.f1868f, j2);
        if (iVarB == null || aVarC2 == null || !"special".equals(aVarC2.f1857b)) {
            mVar = null;
        } else {
            com.sgscq.vpn.config.c cVar2 = (com.sgscq.vpn.config.c) ((Map) iVarB.f582c.f1807d).get(aVarC2.f1858c);
            if (cVar2 == null || !"special".equals(cVar2.f554c)) {
                mVar = null;
            } else {
                mVar = new com.sgscq.vpn.config.m(cVar2, aVarC2.f1860e, aVarC2.f1861f, aVarC2.f1856a);
            }
        }
        if (mVar == null || (cVar = mVar.f608a) == null) {
            str = "";
        } else {
            str = mVar.f611d + ":" + cVar.f552a;
        }
        String str2 = str;
        long j3 = aVarC == null ? 0L : aVarC.f1860e;
        a7 a7Var = f1140b;
        if (a7Var != null) {
            i2 i2Var = (i2) a7Var.f190a;
            if (i2Var.f1049a == j3 && i2Var.f1051c == iVarB && i2Var.f1052d.equals(str2)) {
                return (j2) a7Var.f191b;
            }
        }
        final w1 w1VarA1 = w1.a1(context);
        Map mapF1 = w1VarA1.f1(j2 / 1000, null);
        final String strJ = mapF1 == null ? "" : c.a.j(mapF1, "id", "", "general_id");
        i2 i2Var2 = new i2(j3, strJ, iVarB, str2);
        final p.a aVar = aVarC;
        final com.sgscq.vpn.config.m mVar2 = mVar;
        Supplier supplier = new Supplier() { // from class: com.sgscq.vpn.h2
            /* JADX WARN: Code duplicated, block: B:127:0x0597  */
            /* JADX WARN: Code duplicated, block: B:130:0x05a1  */
            /* JADX WARN: Code duplicated, block: B:135:0x05be  */
            /* JADX WARN: Code duplicated, block: B:136:0x05c5  */
            /* JADX WARN: Code duplicated, block: B:140:0x060e  */
            /* JADX WARN: Code duplicated, block: B:143:0x0618  */
            /* JADX WARN: Code duplicated, block: B:178:0x0762  */
            /* JADX WARN: Code duplicated, block: B:180:0x0765  */
            /* JADX WARN: Code duplicated, block: B:182:0x0768  */
            /* JADX WARN: Code duplicated, block: B:184:0x076b  */
            /* JADX WARN: Code duplicated, block: B:187:0x078c  */
            /* JADX WARN: Code duplicated, block: B:188:0x07aa  */
            /* JADX WARN: Code duplicated, block: B:189:0x07e0  */
            /* JADX WARN: Code duplicated, block: B:232:0x05b4 A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:233:0x05b1 A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:245:0x0784 A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:251:0x013b A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:40:0x0122  */
            /* JADX WARN: Code duplicated, block: B:42:0x0125  */
            /* JADX WARN: Code duplicated, block: B:43:0x012b  */
            /* JADX WARN: Code duplicated, block: B:49:0x0138 A[ADDED_TO_REGION] */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v49, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r1v50 */
            /* JADX WARN: Type inference failed for: r1v51, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r1v68 */
            /* JADX WARN: Type inference failed for: r1v70, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r1v71 */
            /* JADX WARN: Type inference failed for: r52v6 */
            @Override // java.util.function.Supplier
            public final Object get() {
                long j4;
                String str3;
                String str4;
                String str5;
                String str6;
                Integer num;
                String str7;
                ArrayList arrayList;
                String str8;
                String str9;
                String str10;
                List listEmptyList;
                p.a aVar2;
                String string;
                com.sgscq.vpn.config.m mVar3;
                com.sgscq.vpn.config.c cVar3;
                List listEmptyList2;
                String str11;
                w1 w1Var;
                String str12;
                Integer num2;
                Integer num3;
                p1 p1Var;
                String str13;
                p1 p1VarC1;
                LinkedHashMap linkedHashMap;
                String str14;
                int iC;
                String str15;
                Object obj;
                Object obj2;
                Object obj3;
                Integer num4;
                String str16;
                String str17;
                String str18;
                ArrayList arrayList2;
                HashSet hashSet;
                t tVar;
                Object obj4;
                String str19;
                String str20;
                int iG;
                boolean z;
                ?? EmptyList;
                String str21;
                String str22;
                String str23;
                String str24;
                Integer num5;
                String str25;
                ArrayList arrayList3;
                LinkedHashMap linkedHashMap2;
                com.sgscq.vpn.config.i iVar = iVarB;
                long j5 = j2;
                ArrayList arrayList4 = new ArrayList();
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                String str26 = strJ;
                boolean zIsEmpty = str26.isEmpty();
                Integer num6 = 3;
                w1 w1Var2 = w1VarA1;
                p.a aVar3 = aVar;
                String str27 = ":";
                String str28 = "wine_limited:";
                LinkedHashMap linkedHashMap5 = linkedHashMap4;
                Object obj5 = "fate_skill_id";
                Integer num7 = 4;
                String str29 = "box_id";
                Integer num8 = 7;
                LinkedHashMap linkedHashMap6 = linkedHashMap3;
                String str30 = "600045";
                ArrayList arrayList5 = arrayList4;
                Integer num9 = 1;
                String str31 = "fate_equip_id";
                Object obj6 = "fate_box_id";
                String str32 = "缘份技能礼包（";
                String str33 = "）";
                String str34 = "item_id";
                Object obj7 = "resource_id";
                String str35 = "id";
                Object obj8 = "base_item_id";
                String str36 = "";
                if (zIsEmpty) {
                    j4 = j5;
                    str3 = "";
                    str4 = "box_id";
                    str5 = "fate_equip_id";
                    str6 = "id";
                    num = num6;
                    str7 = str26;
                    arrayList = arrayList5;
                    str8 = str32;
                    str9 = str33;
                } else {
                    String str37 = "wine_limited:" + (aVar3 == null ? String.valueOf((j5 / 1000) / 43200) : aVar3.f1856a) + ":" + str26;
                    List<String> listG0 = w1Var2.G0(str26);
                    String str38 = "0";
                    if ("121014".equals(str26)) {
                        ArrayList arrayList6 = new ArrayList();
                        Iterator it = listG0.iterator();
                        boolean z2 = false;
                        boolean z3 = false;
                        while (true) {
                            if (!it.hasNext()) {
                                j4 = j5;
                                str19 = str37;
                                str20 = str26;
                                break;
                            }
                            Iterator it2 = it;
                            String str39 = (String) it.next();
                            j4 = j5;
                            Map mapZ0 = w1Var2.z0(str39);
                            if (mapZ0 != null) {
                                str20 = str26;
                                str19 = str37;
                                iG = c.a.g(mapZ0, "pos", "0", "equipment_pos", 0);
                                if (iG <= 0 && (iG = c.a.g(mapZ0, "type", "0", "equipment_type", 0)) <= 0) {
                                }
                                if (!z3) {
                                    z = true;
                                    if (iG == 1) {
                                        arrayList6.add(str39);
                                        z3 = true;
                                    }
                                    if (!z3 && z2) {
                                        break;
                                    }
                                    it = it2;
                                    j5 = j4;
                                    str26 = str20;
                                    str37 = str19;
                                } else {
                                    z = true;
                                }
                                if (!z2 && iG == 2) {
                                    arrayList6.add(str39);
                                    z2 = z;
                                }
                                if (!z3) {
                                }
                                it = it2;
                                j5 = j4;
                                str26 = str20;
                                str37 = str19;
                            } else {
                                str19 = str37;
                                str20 = str26;
                            }
                            if (str39 != null && str39.startsWith("21")) {
                                iG = 1;
                            } else if (str39 != null && str39.startsWith("22")) {
                                iG = 2;
                            } else if (str39 == null || !str39.startsWith("23")) {
                                iG = (str39 == null || !str39.startsWith("24")) ? 0 : 4;
                            } else {
                                iG = 3;
                            }
                            if (!z3) {
                                z = true;
                                if (iG == 1) {
                                    arrayList6.add(str39);
                                    z3 = true;
                                }
                                if (!z3) {
                                }
                                it = it2;
                                j5 = j4;
                                str26 = str20;
                                str37 = str19;
                            } else {
                                z = true;
                            }
                            if (!z2) {
                                arrayList6.add(str39);
                                z2 = z;
                            }
                            if (!z3) {
                            }
                            it = it2;
                            j5 = j4;
                            str26 = str20;
                            str37 = str19;
                        }
                        listG0 = arrayList6;
                    } else {
                        j4 = j5;
                        str19 = str37;
                        str20 = str26;
                    }
                    if (listG0 == null || listG0.isEmpty()) {
                        EmptyList = Collections.emptyList();
                    } else {
                        EmptyList = new ArrayList();
                        for (String str40 : listG0) {
                            if (p5.m0(w1Var2.z0(str40))) {
                                EmptyList.add(str40);
                            }
                        }
                    }
                    int i2 = 0;
                    ?? r1 = EmptyList;
                    while (true) {
                        str21 = str38;
                        str22 = "pk_id";
                        if (i2 >= r1.size()) {
                            break;
                        }
                        String str41 = (String) r1.get(i2);
                        ?? r52 = r1;
                        Map mapF0 = w1Var2.F0(str41);
                        if (mapF0 == null) {
                            str23 = str36;
                        } else {
                            str23 = str36;
                            String strValueOf = String.valueOf(mapF0.getOrDefault(str29, str36));
                            String strValueOf2 = String.valueOf(mapF0.getOrDefault(str31, str41));
                            if (!strValueOf.isEmpty()) {
                                String strValueOf3 = String.valueOf(mapF0.get("name"));
                                String strValueOf4 = String.valueOf(mapF0.get("desc"));
                                Map mapD0 = p5.d0(w1Var2, strValueOf2);
                                p1 p1Var2 = mapD0 != null ? new p1(p5.r1("preview_item_id", strValueOf, mapD0), p5.r1("legacy_name", strValueOf3, mapD0), p5.r1("legacy_desc", p5.r1("preview_desc", p5.N(w1Var2, strValueOf2, strValueOf4), mapD0), mapD0)) : new p1(p5.c1(w1Var2, strValueOf2, Arrays.asList(8, num6), strValueOf, strValueOf3, strValueOf4).f1263a, p5.d1(w1Var2, strValueOf2, strValueOf3, strValueOf4).f1264b, p5.N(w1Var2, strValueOf2, strValueOf4));
                                String strValueOf5 = String.valueOf(i2 + 100);
                                boolean zY1 = w1Var2.y1(strValueOf2);
                                int iB = zY1 ? 800 : 200;
                                if (iVar != null) {
                                    iB = new com.sgscq.vpn.config.k(iVar).b(iB, w1Var2.z0(strValueOf2), zY1);
                                }
                                LinkedHashMap linkedHashMapQ = c.a.q("pk_id", strValueOf5);
                                String str42 = p1Var2.f1263a;
                                linkedHashMapQ.put("id", str42);
                                linkedHashMapQ.put("item_id", str42);
                                linkedHashMapQ.put(obj8, "600045");
                                linkedHashMapQ.put(obj7, "600045");
                                linkedHashMapQ.put(str29, str42);
                                linkedHashMapQ.put(obj6, strValueOf);
                                linkedHashMapQ.put(str31, strValueOf2);
                                StringBuilder sb = new StringBuilder();
                                str24 = str19;
                                sb.append(str24);
                                sb.append(":fate_box:");
                                sb.append(strValueOf2);
                                linkedHashMapQ.put("_purchase_key", sb.toString());
                                linkedHashMapQ.put("style_id", String.valueOf(mapF0.getOrDefault("style_id", "7")));
                                linkedHashMapQ.put("style_desc", String.valueOf(mapF0.getOrDefault("style_desc", "9".concat(strValueOf2))));
                                com.sgscq.vpn.handler.l.b(linkedHashMapQ, "related_id", String.valueOf(mapF0.getOrDefault("related_id", "9".concat(strValueOf2))), iB, "item_price");
                                num5 = num9;
                                linkedHashMapQ.put("currency_type", num5);
                                linkedHashMapQ.put("purchase_num", 999);
                                linkedHashMapQ.put("open_time", 0);
                                linkedHashMapQ.put("vip_level", 0);
                                linkedHashMapQ.put("tag_id", 0);
                                linkedHashMapQ.put("can_exchange", Boolean.TRUE);
                                str25 = str21;
                                linkedHashMapQ.put("is_notice", str25);
                                l2.b(p1Var2.f1264b, p1Var2.f1265c, linkedHashMapQ);
                                arrayList3 = arrayList5;
                                arrayList3.add(linkedHashMapQ);
                                linkedHashMap2 = linkedHashMap6;
                                linkedHashMap2.put(strValueOf5, strValueOf2);
                            }
                            i2++;
                            num9 = num5;
                            str38 = str25;
                            linkedHashMap6 = linkedHashMap2;
                            arrayList5 = arrayList3;
                            str29 = str29;
                            r1 = r52;
                            str36 = str23;
                            str31 = str31;
                            str19 = str24;
                            num6 = num6;
                        }
                        str31 = str31;
                        num6 = num6;
                        linkedHashMap2 = linkedHashMap6;
                        arrayList3 = arrayList5;
                        num5 = num9;
                        str24 = str19;
                        str25 = str21;
                        i2++;
                        num9 = num5;
                        str38 = str25;
                        linkedHashMap6 = linkedHashMap2;
                        arrayList5 = arrayList3;
                        str29 = str29;
                        r1 = r52;
                        str36 = str23;
                        str31 = str31;
                        str19 = str24;
                        num6 = num6;
                    }
                    str3 = str36;
                    str5 = str31;
                    num = num6;
                    Integer num10 = num9;
                    String str43 = str20;
                    String str44 = str19;
                    str4 = str29;
                    Object obj9 = "currency_type";
                    ArrayList arrayList7 = arrayList5;
                    Object obj10 = "vip_level";
                    List listG1 = p5.g1(w1Var2, w1Var2.H0(str43));
                    str7 = str43;
                    Integer num11 = 0;
                    int i3 = 0;
                    while (i3 < listG1.size()) {
                        String str45 = (String) listG1.get(i3);
                        String strM1 = w1Var2.m1(str45);
                        String str46 = (strM1 == null || strM1.isEmpty()) ? str45 : strM1;
                        String str47 = str33;
                        Integer num12 = num11;
                        String str48 = str32;
                        Object obj11 = obj10;
                        p1 p1VarC2 = p5.c1(w1Var2, str45, Arrays.asList(4, 7), str45, com.sgscq.vpn.handler.l.a(str48, str46, str47), c.a.i("购买后获得缘份技能：", str46));
                        String strValueOf6 = String.valueOf(i3 + 150);
                        LinkedHashMap linkedHashMapQ2 = c.a.q(str22, strValueOf6);
                        String str49 = str22;
                        String str50 = p1VarC2.f1263a;
                        linkedHashMapQ2.put(str35, str50);
                        linkedHashMapQ2.put("item_id", str50);
                        linkedHashMapQ2.put(obj5, str45);
                        com.sgscq.vpn.handler.l.b(linkedHashMapQ2, "_purchase_key", str44 + ":fate_skill:" + str45, 29998, "item_price");
                        linkedHashMapQ2.put(obj9, num10);
                        linkedHashMapQ2.put("purchase_num", num10);
                        linkedHashMapQ2.put("open_time", num12);
                        linkedHashMapQ2.put(obj11, num12);
                        linkedHashMapQ2.put("tag_id", num12);
                        linkedHashMapQ2.put("can_exchange", Boolean.TRUE);
                        linkedHashMapQ2.put("is_notice", str21);
                        l2.b(p1VarC2.f1264b, p1VarC2.f1265c, linkedHashMapQ2);
                        arrayList7.add(linkedHashMapQ2);
                        linkedHashMap5.put(strValueOf6, str45);
                        i3++;
                        num11 = num12;
                        obj10 = obj11;
                        str22 = str49;
                        str35 = str35;
                        num10 = num10;
                        listG1 = listG1;
                        str32 = str48;
                        str33 = str47;
                        obj9 = obj9;
                    }
                    str6 = str35;
                    str8 = str32;
                    str9 = str33;
                    arrayList = arrayList7;
                }
                if (iVar == 0 || (mVar3 = mVar2) == null || (cVar3 = mVar3.f608a) == null) {
                    arrayList = arrayList;
                    linkedHashMap6 = linkedHashMap6;
                    aVar3 = aVar3;
                    str28 = str28;
                    str27 = str27;
                    str7 = str7;
                    str10 = str3;
                    linkedHashMap5 = linkedHashMap5;
                    listEmptyList = Collections.emptyList();
                } else {
                    List<String> listG2 = p5.g1(w1Var2, w1Var2.H0(cVar3.f552a));
                    HashSet hashSet2 = new HashSet();
                    List<com.sgscq.vpn.config.b> list = cVar3.f560i;
                    for (com.sgscq.vpn.config.b bVar : list) {
                        if (p5.m0(w1Var2.z0(bVar.f548a))) {
                            hashSet2.add(bVar.f548a);
                        }
                    }
                    ArrayList arrayList8 = new ArrayList();
                    com.sgscq.vpn.config.k kVar = new com.sgscq.vpn.config.k(iVar);
                    if (!"special".equals(cVar3.f554c) || Integer.MAX_VALUE < cVar3.f556e) {
                        iVar = iVar;
                        w1Var2 = w1Var2;
                        arrayList8 = arrayList8;
                        str6 = str6;
                        obj5 = obj5;
                        num7 = 4;
                        num8 = 7;
                        linkedHashMap6 = linkedHashMap6;
                        obj7 = obj7;
                        obj8 = obj8;
                        aVar3 = aVar3;
                        str28 = str28;
                        str27 = str27;
                        str5 = str5;
                        num = num;
                        linkedHashMap5 = linkedHashMap5;
                        str7 = str7;
                        listEmptyList2 = Collections.emptyList();
                    } else {
                        ArrayList arrayList9 = new ArrayList();
                        t tVar2 = iVar.f583d;
                        com.sgscq.vpn.config.e eVar = (com.sgscq.vpn.config.e) tVar2.f1375e;
                        com.sgscq.vpn.config.g gVar = cVar3.f559h;
                        if (gVar != null) {
                            iVar = iVar;
                            int i4 = cVar3.f558g;
                            if (i4 > 0) {
                                eVar = eVar;
                                tVar2 = tVar2;
                                arrayList2 = arrayList9;
                                arrayList2.add(kVar.d(mVar3, cVar3, 1, cVar3.f553b, gVar.f573a, gVar.f574b, gVar.f575c, i4, eVar.f565c, j4));
                            }
                            if (cVar3.f557f) {
                                for (com.sgscq.vpn.config.b bVar2 : list) {
                                    hashSet = hashSet2;
                                    if (hashSet.contains(bVar2.f548a)) {
                                        if ("mount".equals(bVar2.f550c)) {
                                            tVar = tVar2;
                                            obj4 = tVar.f1374d;
                                        } else {
                                            tVar = tVar2;
                                            obj4 = tVar.f1373c;
                                        }
                                        com.sgscq.vpn.config.d dVar = (com.sgscq.vpn.config.d) ((Map) obj4).get(bVar2.f551d);
                                        String str51 = bVar2.f549b;
                                        String str52 = bVar2.f548a;
                                        com.sgscq.vpn.config.e eVar2 = eVar;
                                        arrayList2.add(kVar.d(mVar3, cVar3, 3, str51, str52, str52, 1, dVar.f562b, eVar2.f567e, j4));
                                        hashSet2 = hashSet;
                                        eVar = eVar2;
                                        tVar2 = tVar;
                                    } else {
                                        hashSet2 = hashSet;
                                    }
                                }
                                com.sgscq.vpn.config.e eVar3 = eVar;
                                t tVar3 = tVar2;
                                if (listG2 != null) {
                                    for (String str53 : listG2) {
                                        if (str53 == null && !str53.trim().isEmpty()) {
                                            t tVar4 = tVar3;
                                            com.sgscq.vpn.config.e eVar4 = eVar3;
                                            arrayList2.add(kVar.d(mVar3, cVar3, 4, "", str53, str53, 1, ((com.sgscq.vpn.cloud.e0) tVar4.f1371a).f323a, eVar4.f568f, j4));
                                            eVar3 = eVar4;
                                            tVar3 = tVar4;
                                        }
                                    }
                                }
                            }
                            listEmptyList2 = Collections.unmodifiableList(arrayList2);
                        } else {
                            iVar = iVar;
                        }
                        arrayList2 = arrayList9;
                        if (cVar3.f557f) {
                            while (r19.hasNext()) {
                                hashSet = hashSet2;
                                if (hashSet.contains(bVar2.f548a)) {
                                    hashSet2 = hashSet;
                                } else {
                                    if ("mount".equals(bVar2.f550c)) {
                                        tVar = tVar2;
                                        obj4 = tVar.f1374d;
                                    } else {
                                        tVar = tVar2;
                                        obj4 = tVar.f1373c;
                                    }
                                    com.sgscq.vpn.config.d dVar2 = (com.sgscq.vpn.config.d) ((Map) obj4).get(bVar2.f551d);
                                    String str54 = bVar2.f549b;
                                    String str55 = bVar2.f548a;
                                    com.sgscq.vpn.config.e eVar5 = eVar;
                                    arrayList2.add(kVar.d(mVar3, cVar3, 3, str54, str55, str55, 1, dVar2.f562b, eVar5.f567e, j4));
                                    hashSet2 = hashSet;
                                    eVar = eVar5;
                                    tVar2 = tVar;
                                }
                            }
                            com.sgscq.vpn.config.e eVar6 = eVar;
                            t tVar5 = tVar2;
                            if (listG2 != null) {
                                while (r4.hasNext()) {
                                    if (str53 == null) {
                                    }
                                }
                            }
                        }
                        listEmptyList2 = Collections.unmodifiableList(arrayList2);
                    }
                    Iterator it3 = listEmptyList2.iterator();
                    while (it3.hasNext()) {
                        com.sgscq.vpn.config.l lVar = (com.sgscq.vpn.config.l) it3.next();
                        int i5 = lVar.f595b;
                        String str56 = lVar.f598e;
                        String str57 = lVar.f599f;
                        String strA0 = lVar.f597d;
                        if (i5 == 1) {
                            String str58 = lVar.f596c;
                            if (strA0 == null || strA0.isEmpty()) {
                                w1Var = w1Var2;
                                strA0 = w1Var.R0(str58);
                            } else {
                                w1Var = w1Var2;
                            }
                            str11 = str9;
                            p1VarC1 = new p1(str58, com.sgscq.vpn.handler.l.a("限时武将30魂礼包（", strA0, str11), "购买后获得该限时武将魂魄×30");
                        } else {
                            str11 = str9;
                            w1Var = w1Var2;
                            if (i5 == 3) {
                                if (strA0 == null || strA0.isEmpty()) {
                                    strA0 = w1Var.A0(str57);
                                }
                                p1VarC1 = p5.c1(w1Var, lVar.f599f, Arrays.asList(num), lVar.f598e, com.sgscq.vpn.handler.l.a("缘份装备整件（", strA0, str11), c.a.i("购买后直接获得缘份装备整件：", strA0));
                            } else if (i5 == 4) {
                                String strM2 = w1Var.m1(str57);
                                str12 = str8;
                                String strA = com.sgscq.vpn.handler.l.a(str12, strM2, str11);
                                String strI = c.a.i("购买后直接获得缘份技能：", strM2);
                                num2 = num7;
                                num3 = num8;
                                p1Var = p5.c1(w1Var, str57, Arrays.asList(num2, num3), str56, strA, strI);
                                str13 = str3;
                            } else {
                                str12 = str8;
                                num2 = num7;
                                num3 = num8;
                                str13 = str3;
                                p1Var = new p1(str56, str13, str13);
                            }
                            linkedHashMap = new LinkedHashMap();
                            Iterator it4 = it3;
                            String str59 = p1Var.f1263a;
                            num8 = num3;
                            str14 = str6;
                            linkedHashMap.put(str14, str59);
                            linkedHashMap.put(str34, str59);
                            iC = a.b0.c(lVar.f595b);
                            String str60 = str34;
                            if (iC != 0) {
                                Integer num13 = num;
                                str15 = str30;
                                obj = obj6;
                                obj2 = obj5;
                                obj3 = obj8;
                                linkedHashMap.put("item_type", 6);
                                int i6 = lVar.f600g;
                                num4 = num13;
                                linkedHashMap.put("num", Integer.valueOf(i6));
                                linkedHashMap.put("item_num", Integer.valueOf(i6));
                                String str61 = lVar.f599f;
                                linkedHashMap.put("add_list", Collections.singletonList(p5.z0(str14, str61, "item_id", str61, "num", Integer.valueOf(i6), "item_num", Integer.valueOf(i6), "type", 6)));
                                str16 = "限时武将30魂礼包";
                                str17 = "购买后获得该限时武将魂魄×30";
                            } else if (iC != 1) {
                                Integer num14 = num;
                                obj2 = obj5;
                                num4 = num14;
                                linkedHashMap.put("item_type", 5);
                                String str62 = str30;
                                Object obj12 = obj8;
                                linkedHashMap.put(obj12, str62);
                                linkedHashMap.put(obj7, str62);
                                linkedHashMap.put(str4, str56);
                                obj = obj6;
                                linkedHashMap.put(obj, str56);
                                linkedHashMap.put(str5, str57);
                                str17 = "购买后获得对应缘份装备礼盒";
                                obj3 = obj12;
                                str15 = str62;
                                str16 = "缘份装备礼盒";
                            } else if (iC != 2) {
                                Integer num15 = num;
                                linkedHashMap.put("item_type", num15);
                                linkedHashMap.put(str5, str57);
                                obj2 = obj5;
                                str16 = "缘份装备整件";
                                str17 = "购买后直接获得对应缘份装备整件";
                                num4 = num15;
                                str15 = str30;
                                obj = obj6;
                                obj3 = obj8;
                            } else {
                                if (iC == 3) {
                                    throw new IllegalArgumentException("unsupported limited product type");
                                }
                                linkedHashMap.put("item_type", num2);
                                Object obj13 = obj5;
                                linkedHashMap.put(obj13, str57);
                                str16 = "缘份技能礼包";
                                num4 = num;
                                str15 = str30;
                                obj3 = obj8;
                                obj2 = obj13;
                                str17 = "购买后直接获得对应缘份技能";
                                obj = obj6;
                            }
                            l2.b(str16, str17, linkedHashMap);
                            str18 = p1Var.f1264b;
                            if (str18 == null && !str18.isEmpty()) {
                                l2.b(str18, p1Var.f1265c, linkedHashMap);
                            }
                            arrayList8.add(new k2(lVar, linkedHashMap));
                            str6 = str14;
                            str30 = str15;
                            obj6 = obj;
                            str8 = str12;
                            w1Var2 = w1Var;
                            num7 = num2;
                            str9 = str11;
                            str3 = str13;
                            it3 = it4;
                            str34 = str60;
                            obj8 = obj3;
                            obj5 = obj2;
                            num = num4;
                        }
                        p1Var = p1VarC1;
                        str12 = str8;
                        str13 = str3;
                        num2 = num7;
                        num3 = num8;
                        linkedHashMap = new LinkedHashMap();
                        Iterator it5 = it3;
                        String str510 = p1Var.f1263a;
                        num8 = num3;
                        str14 = str6;
                        linkedHashMap.put(str14, str510);
                        linkedHashMap.put(str34, str510);
                        iC = a.b0.c(lVar.f595b);
                        String str63 = str34;
                        if (iC != 0) {
                            Integer num16 = num;
                            str15 = str30;
                            obj = obj6;
                            obj2 = obj5;
                            obj3 = obj8;
                            linkedHashMap.put("item_type", 6);
                            int i7 = lVar.f600g;
                            num4 = num16;
                            linkedHashMap.put("num", Integer.valueOf(i7));
                            linkedHashMap.put("item_num", Integer.valueOf(i7));
                            String str64 = lVar.f599f;
                            linkedHashMap.put("add_list", Collections.singletonList(p5.z0(str14, str64, "item_id", str64, "num", Integer.valueOf(i7), "item_num", Integer.valueOf(i7), "type", 6)));
                            str16 = "限时武将30魂礼包";
                            str17 = "购买后获得该限时武将魂魄×30";
                        } else if (iC != 1) {
                            Integer num17 = num;
                            obj2 = obj5;
                            num4 = num17;
                            linkedHashMap.put("item_type", 5);
                            String str65 = str30;
                            Object obj14 = obj8;
                            linkedHashMap.put(obj14, str65);
                            linkedHashMap.put(obj7, str65);
                            linkedHashMap.put(str4, str56);
                            obj = obj6;
                            linkedHashMap.put(obj, str56);
                            linkedHashMap.put(str5, str57);
                            str17 = "购买后获得对应缘份装备礼盒";
                            obj3 = obj14;
                            str15 = str65;
                            str16 = "缘份装备礼盒";
                        } else if (iC != 2) {
                            Integer num18 = num;
                            linkedHashMap.put("item_type", num18);
                            linkedHashMap.put(str5, str57);
                            obj2 = obj5;
                            str16 = "缘份装备整件";
                            str17 = "购买后直接获得对应缘份装备整件";
                            num4 = num18;
                            str15 = str30;
                            obj = obj6;
                            obj3 = obj8;
                        } else {
                            if (iC == 3) {
                                throw new IllegalArgumentException("unsupported limited product type");
                            }
                            linkedHashMap.put("item_type", num2);
                            Object obj15 = obj5;
                            linkedHashMap.put(obj15, str57);
                            str16 = "缘份技能礼包";
                            num4 = num;
                            str15 = str30;
                            obj3 = obj8;
                            obj2 = obj15;
                            str17 = "购买后直接获得对应缘份技能";
                            obj = obj6;
                        }
                        l2.b(str16, str17, linkedHashMap);
                        str18 = p1Var.f1264b;
                        if (str18 == null) {
                        }
                        arrayList8.add(new k2(lVar, linkedHashMap));
                        str6 = str14;
                        str30 = str15;
                        obj6 = obj;
                        str8 = str12;
                        w1Var2 = w1Var;
                        num7 = num2;
                        str9 = str11;
                        str3 = str13;
                        it3 = it5;
                        str34 = str63;
                        obj8 = obj3;
                        obj5 = obj2;
                        num = num4;
                    }
                    str10 = str3;
                    listEmptyList = arrayList8;
                }
                if (str7.isEmpty()) {
                    string = str10;
                    aVar2 = aVar3;
                } else {
                    StringBuilder sb2 = new StringBuilder(str28);
                    aVar2 = aVar3;
                    sb2.append(aVar2 == null ? String.valueOf((j4 / 1000) / 43200) : aVar2.f1856a);
                    sb2.append(str27);
                    sb2.append(str7);
                    string = sb2.toString();
                }
                return new j2(arrayList, linkedHashMap6, linkedHashMap5, listEmptyList, iVar, string, aVar2 == null ? 0L : aVar2.f1860e, aVar2 == null ? 0L : aVar2.f1861f);
            }
        };
        a7 a7Var2 = f1140b;
        if (a7Var2 != null && ((i2) a7Var2.f190a).equals(i2Var2)) {
            return (j2) a7Var2.f191b;
        }
        synchronized (f1139a) {
            a7 a7Var3 = f1140b;
            if (a7Var3 == null || !((i2) a7Var3.f190a).equals(i2Var2)) {
                j2Var = (j2) supplier.get();
                f1140b = new a7(i2Var2, j2Var);
            } else {
                j2Var = (j2) a7Var3.f191b;
            }
        }
        return j2Var;
    }

    public static void b(String str, String str2, LinkedHashMap linkedHashMap) {
        linkedHashMap.put("item_title", str);
        linkedHashMap.put("item_name", str);
        linkedHashMap.put("name", str);
        linkedHashMap.put("title", str);
        linkedHashMap.put("item_desc", str2);
        linkedHashMap.put("desc", str2);
    }
}
