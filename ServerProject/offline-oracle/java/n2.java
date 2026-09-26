package com.sgscq.vpn;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n2 implements x4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1216a;

    public /* synthetic */ n2(int i2) {
        this.f1216a = i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:140:0x054f  */
    /* JADX WARN: Code duplicated, block: B:188:0x0683  */
    /* JADX WARN: Code duplicated, block: B:189:0x0685  */
    /* JADX WARN: Code duplicated, block: B:348:0x0b1f  */
    /* JADX WARN: Code duplicated, block: B:42:0x013e  */
    /* JADX WARN: Code duplicated, block: B:437:0x0b1d A[SYNTHETIC] */
    public final LinkedHashMap a(Map map, q4 q4Var) {
        long jLongValue;
        Object obj;
        int i2;
        Map map2;
        int i3;
        Object obj2;
        String str;
        Object obj3;
        String str2;
        List list;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        ArrayList arrayList;
        ArrayList arrayList2;
        String str11;
        String str12;
        ArrayList arrayList3;
        ArrayList arrayList4;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        String strConcat;
        String str20;
        String str21;
        String str22;
        boolean z;
        ArrayList arrayList5;
        String str23;
        Object obj4;
        boolean z2;
        String str24;
        String str25;
        String str26;
        String str27;
        Map map3;
        LinkedHashMap linkedHashMapC0;
        Map mapZ0;
        Cloneable cloneableS;
        Map mapI;
        Cloneable cloneableW;
        ArrayList arrayList6;
        ArrayList arrayList7;
        int iE1;
        int iD1;
        boolean z3;
        String str28 = q4Var.f1321c;
        String str29 = "pk_id";
        String str30 = "item_id";
        switch (this.f1216a) {
            case 0:
                List list2 = com.sgscq.vpn.handler.x0.f1028c;
                if (!"recharge_grant".equals(str28)) {
                    throw new IllegalArgumentException("unexpected recharge event kind");
                }
                String strD = q4Var.d("order_id");
                if (com.sgscq.vpn.handler.x0.o0(strD, map)) {
                    return p5.z0("already_completed", Boolean.TRUE, "gold", Integer.valueOf(q4Var.b("gold", 0)));
                }
                int iB = q4Var.b("rmb", 0);
                int iB2 = q4Var.b("gold", 0);
                String strD2 = q4Var.d("product_id");
                Boolean bool = Boolean.TRUE;
                Map map4 = q4Var.f1322d;
                if (bool.equals(map4.get("first_double"))) {
                    map.put("first_recharge_double_" + iB, bool);
                }
                if (bool.equals(map4.get("enable_monthly_card"))) {
                    String str31 = "super_monthly_card";
                    if ("super_monthly_card".equals(strD2) || (iB == 78 && (strD2.isEmpty() || strD2.startsWith("charge_")))) {
                        i3 = 300;
                    } else {
                        str31 = "monthly_card";
                        if ("monthly_card".equals(strD2) || (iB == 30 && (strD2.isEmpty() || strD2.startsWith("charge_")))) {
                            i3 = 100;
                        }
                    }
                    String strB = c7.b();
                    if (!map.containsKey(str31.concat("_start_day"))) {
                        map.put(str31.concat("_start_day"), strB);
                    }
                    if (!map.containsKey(str31.concat("_last_claim_day"))) {
                        map.put(str31.concat("_last_claim_day"), strB);
                    }
                    int iB0 = com.sgscq.vpn.handler.x0.B0(0, str31.concat("_claimed_days"), map);
                    map.put(str31.concat("_total_days"), Integer.valueOf(Math.max(com.sgscq.vpn.handler.x0.B0(0, str31.concat("_total_days"), map), iB0) + 31));
                    map.put(str31.concat("_claimed_days"), Integer.valueOf(iB0));
                    map.put(str31.concat("_daily_gold"), Integer.valueOf(i3));
                }
                int iMax = (Math.max(1, iB) * 10) + com.sgscq.vpn.handler.x0.B0(0, "totalRecharge", map);
                map.put("totalRecharge", Integer.valueOf(iMax));
                map.put("user_charge_count", Integer.valueOf(com.sgscq.vpn.handler.x0.B0(0, "user_charge_count", map) + 1));
                int iJ = com.sgscq.vpn.handler.x0.J(iMax);
                int[] iArr = com.sgscq.vpn.handler.x0.f1030e;
                int i4 = iJ >= 15 ? iArr[14] : iArr[Math.max(0, iJ)];
                map.put("current_charge_gold", Integer.valueOf(Math.min(Math.max(0, iMax), i4)));
                map.put("count_charge_gold", Integer.valueOf(i4));
                int iJ2 = com.sgscq.vpn.handler.x0.J(iMax);
                map.put("user_vip_level", Integer.valueOf(iJ2));
                map.put("vip_level", Integer.valueOf(iJ2));
                map.put("vipLevel", Integer.valueOf(iJ2));
                String strD3 = q4Var.d("mail_id");
                Object obj5 = map4.get("mail_time_ms");
                if (!(obj5 instanceof Number)) {
                    if (obj5 == null) {
                        jLongValue = q4Var.f1323e;
                    } else {
                        try {
                            jLongValue = Long.parseLong(String.valueOf(obj5));
                        } catch (NumberFormatException unused) {
                            jLongValue = q4Var.f1323e;
                        }
                    }
                    break;
                } else {
                    jLongValue = ((Number) obj5).longValue();
                }
                long j2 = jLongValue;
                Object obj6 = map.get("email_list");
                if (!(obj6 instanceof List)) {
                    obj6 = map.get("mail_list");
                }
                List arrayList8 = obj6 instanceof List ? (List) obj6 : new ArrayList();
                Iterator it = arrayList8.iterator();
                while (true) {
                    if (it.hasNext()) {
                        Object next = it.next();
                        if ((next instanceof Map) && c.a.A((Map) next, "pk_id", strD3)) {
                            map.put("email_list", arrayList8);
                            map.put("mail_list", arrayList8);
                            map2 = map;
                            i2 = iB;
                            obj = r11;
                        }
                    } else {
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
                        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai"));
                        String str32 = simpleDateFormat.format(new Date(j2));
                        LinkedHashMap linkedHashMapZ0 = p5.z0("item_id", "600034", "id", "600034", "item_num", Integer.valueOf(iB2), "num", Integer.valueOf(iB2), "item_type", 16, "type", 5);
                        String str33 = "充值 ¥" + iB + " 的 " + iB2 + " 元宝已到账，请领取附件。\n充值时间：" + str32;
                        obj = "gold";
                        i2 = iB;
                        int i5 = (int) (j2 / 1000);
                        Integer numValueOf = Integer.valueOf(i5);
                        Integer numValueOf2 = Integer.valueOf(i5);
                        Integer numValueOf3 = Integer.valueOf(i5);
                        Integer numValueOf4 = Integer.valueOf(i5 + 2592000);
                        Boolean bool2 = Boolean.FALSE;
                        arrayList8.add(0, p5.z0("mail_id", strD3, "email_id", strD3, "id", strD3, "pk_id", strD3, "mail_type", "gift", "email_type", "gift", "origin_mail_type", "pay", "title", "充值到账", "email_title", "充值到账", "content", str33, "email_content", str33, "sender", "系统", "email_sender", "系统", "email_sender_nickname", "系统", "from_user", "系统", "email_time_offset", 0, "send_time", numValueOf, "create_time", numValueOf2, "time", numValueOf3, "expire_time", numValueOf4, "is_read", bool2, "is_accepted", bool2, "is_attach_get", "0", "status", r8, "reward_list", Collections.singletonList(linkedHashMapZ0), "reward", Collections.singletonList(linkedHashMapZ0), "rewards", Collections.singletonList(linkedHashMapZ0)));
                        map2 = map;
                        map2.put("email_list", arrayList8);
                        map2.put("mail_list", arrayList8);
                    }
                }
                Object obj7 = map2.get("completed_recharge_orders");
                List arrayList9 = obj7 instanceof List ? (List) obj7 : new ArrayList();
                arrayList9.add(r32);
                map2.put("completed_recharge_orders", arrayList9);
                map2.put("daily_recharge_day", q4Var.d("day"));
                map2.put("daily_recharge_rmb_used", Integer.valueOf(q4Var.b("daily_rmb_used_after", i2)));
                if (!r32.isEmpty()) {
                    Object obj8 = map2.get("pending_recharge_orders");
                    if (obj8 instanceof Map) {
                        Map map5 = (Map) obj8;
                        map5.remove(strD);
                        if (map5.isEmpty()) {
                            map2.remove("pending_recharge_orders");
                        }
                    }
                }
                return p5.z0("already_completed", Boolean.FALSE, obj, Integer.valueOf(iB2));
            default:
                String str34 = "mail_id";
                Object obj9 = "email_list";
                Object obj10 = "mail_list";
                if (!"mail_claim".equals(str28)) {
                    throw new IllegalArgumentException("unexpected mail event kind");
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                String str35 = "email_id";
                linkedHashMap.put("email_id", q4Var.d(str34));
                String str36 = "id";
                String strF1 = y2.f1((String) linkedHashMap.get(str34), (String) linkedHashMap.get("email_id"), (String) linkedHashMap.get("id"), (String) linkedHashMap.get("pk_id"));
                List listU1 = y2.u1(map);
                ArrayList arrayList10 = new ArrayList();
                ArrayList arrayList11 = new ArrayList();
                ArrayList arrayList12 = new ArrayList();
                ArrayList arrayList13 = new ArrayList();
                Iterator it2 = listU1.iterator();
                while (true) {
                    obj2 = obj9;
                    str = "rewards";
                    obj3 = obj10;
                    str2 = "reward";
                    list = listU1;
                    str3 = "is_attach_get";
                    str4 = "status";
                    str5 = str30;
                    str6 = "is_accepted";
                    ArrayList arrayList14 = arrayList13;
                    str7 = "1";
                    ArrayList arrayList15 = arrayList12;
                    str8 = "reward_list";
                    ArrayList arrayList16 = arrayList11;
                    if (it2.hasNext()) {
                        Object next2 = it2.next();
                        Iterator it3 = it2;
                        if (next2 instanceof Map) {
                            Map map6 = (Map) next2;
                            String str37 = str29;
                            str9 = str34;
                            str10 = str35;
                            String str38 = str36;
                            String strF2 = y2.f1(String.valueOf(map6.getOrDefault(str29, "")), String.valueOf(map6.getOrDefault(str34, "")), String.valueOf(map6.getOrDefault(str35, "")), String.valueOf(map6.getOrDefault(str36, "")));
                            boolean z4 = strF1.isEmpty() || y2.c3(strF1, map6);
                            if (strF1.isEmpty() || strF2.isEmpty() || z4) {
                                LinkedHashMap linkedHashMapN3 = y2.n3(map6);
                                if (!(z4 || y2.c3(strF1, linkedHashMapN3)) || Boolean.TRUE.equals(linkedHashMapN3.get("is_accepted")) || "1".equals(String.valueOf(linkedHashMapN3.getOrDefault("status", "0"))) || "1".equals(String.valueOf(linkedHashMapN3.getOrDefault("is_attach_get", "0")))) {
                                    arrayList = arrayList14;
                                    arrayList2 = arrayList15;
                                    arrayList3 = arrayList16;
                                    str12 = str37;
                                    str11 = str38;
                                } else {
                                    Object obj11 = linkedHashMapN3.get("reward_list");
                                    if (!(obj11 instanceof List)) {
                                        obj11 = linkedHashMapN3.get("reward");
                                    }
                                    if (!(obj11 instanceof List)) {
                                        obj11 = linkedHashMapN3.get("rewards");
                                    }
                                    ArrayList arrayList17 = new ArrayList();
                                    if (obj11 instanceof List) {
                                        for (Object obj12 : (List) obj11) {
                                            if (obj12 instanceof Map) {
                                                arrayList17.add((Map) obj12);
                                            }
                                        }
                                    }
                                    arrayList10.addAll(arrayList17);
                                    arrayList3 = arrayList16;
                                    arrayList3.add(linkedHashMapN3);
                                    arrayList2 = arrayList15;
                                    arrayList2.add(next2);
                                    str12 = str37;
                                    str11 = str38;
                                    String strF3 = y2.f1(strF1, String.valueOf(linkedHashMapN3.getOrDefault(str12, "")), String.valueOf(linkedHashMapN3.getOrDefault(str10, "")), String.valueOf(linkedHashMapN3.getOrDefault(str9, "")), String.valueOf(linkedHashMapN3.getOrDefault(str11, "")));
                                    arrayList = arrayList14;
                                    arrayList.add(strF3);
                                    if (!strF1.isEmpty()) {
                                    }
                                }
                            } else {
                                arrayList = arrayList14;
                                arrayList2 = arrayList15;
                                arrayList3 = arrayList16;
                                str12 = str37;
                                str11 = str38;
                            }
                        } else {
                            str9 = str34;
                            str10 = str35;
                            str11 = str36;
                            arrayList = arrayList14;
                            arrayList2 = arrayList15;
                            str12 = str29;
                            arrayList3 = arrayList16;
                        }
                        listU1 = list;
                        arrayList13 = arrayList;
                        arrayList11 = arrayList3;
                        arrayList12 = arrayList2;
                        str29 = str12;
                        str30 = str5;
                        it2 = it3;
                        str34 = str9;
                        str35 = str10;
                        obj9 = obj2;
                        str36 = str11;
                        obj10 = obj3;
                    } else {
                        str9 = str34;
                        str10 = str35;
                        arrayList = arrayList14;
                        arrayList2 = arrayList15;
                        str11 = str36;
                        str12 = str29;
                        arrayList3 = arrayList16;
                    }
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                String str39 = "add_list";
                String str40 = "";
                String str41 = str12;
                ArrayList arrayList18 = arrayList;
                ArrayList arrayList19 = arrayList2;
                if (arrayList3.isEmpty()) {
                    c.a.s(-1, linkedHashMap2, "error_code", -1, "ret", -1, "code");
                    linkedHashMap2.put("result", Boolean.FALSE);
                    linkedHashMap2.put("msg", "邮件不存在或已领取");
                    linkedHashMap2.put("add_list", new ArrayList());
                    arrayList7 = new ArrayList();
                } else {
                    w1 w1VarA1 = w1.a1(null);
                    Iterator it4 = arrayList10.iterator();
                    while (true) {
                        arrayList4 = arrayList10;
                        str13 = "num";
                        str14 = str3;
                        if (it4.hasNext()) {
                            str17 = str7;
                            Map map7 = (Map) it4.next();
                            str16 = str4;
                            String str42 = str5;
                            str19 = str6;
                            String strValueOf = String.valueOf(y2.h1(map7, str42, str11));
                            str18 = str42;
                            str15 = "item_num";
                            int iC3 = y2.C3(y2.h1(map7, "item_num", "num"), 1);
                            if (strValueOf.isEmpty() || iC3 <= 0) {
                                strConcat = "邮件附件配置无效";
                            } else {
                                if (!y2.t2(strValueOf) && (iD1 = y2.D1((iE1 = y2.E1(strValueOf, map7)), map7)) != 5) {
                                    String strZ3 = y2.Z3(strValueOf, iE1);
                                    switch (iD1) {
                                        case 1:
                                            if (w1VarA1.J0(strZ3) == null || !w1VarA1.C1(strZ3)) {
                                                z3 = false;
                                            } else {
                                                z3 = true;
                                            }
                                            break;
                                        case 2:
                                        case 5:
                                        default:
                                            z3 = false;
                                            break;
                                        case 3:
                                        case 8:
                                            if (w1VarA1.z0(strZ3) != null) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            break;
                                        case 4:
                                        case 7:
                                            if (w1VarA1.k1(strZ3) != null) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            break;
                                        case 6:
                                            if (w1VarA1.J0(strZ3) != null) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            break;
                                        case 9:
                                            if (w1VarA1.I0(strZ3) != null) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            break;
                                        case 10:
                                            if (w1VarA1.X0(strZ3) != null) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            break;
                                        case 11:
                                            Map mapC1 = w1VarA1.c1(strValueOf);
                                            if (mapC1 == null || y2.C3(mapC1.get("item_type"), 0) != 41 || w1VarA1.X0(y2.F1(strValueOf)) == null) {
                                                z3 = false;
                                            } else {
                                                z3 = true;
                                            }
                                            break;
                                    }
                                    if (!z3) {
                                        strConcat = "邮件附件配置无效：".concat(strValueOf);
                                    }
                                }
                                str6 = str19;
                                str4 = str16;
                                arrayList10 = arrayList4;
                                str3 = str14;
                                str7 = str17;
                                str5 = str18;
                            }
                        } else {
                            str15 = "item_num";
                            str16 = str4;
                            str17 = str7;
                            str18 = str5;
                            str19 = str6;
                            strConcat = str40;
                        }
                    }
                    if (strConcat.isEmpty()) {
                        int i6 = 0;
                        while (i6 < arrayList3.size()) {
                            Map map8 = (Map) arrayList3.get(i6);
                            Boolean bool3 = Boolean.TRUE;
                            map8.put("is_read", bool3);
                            String str43 = str19;
                            map8.put(str43, bool3);
                            String str44 = str16;
                            map8.put(str44, 1);
                            ArrayList arrayList20 = arrayList3;
                            map8.put(str14, str17);
                            map8.put("accepted_time", Integer.valueOf((int) c7.g()));
                            ArrayList arrayList21 = arrayList19;
                            Object obj13 = arrayList21.get(i6);
                            if (obj13 instanceof Map) {
                                Map map9 = (Map) obj13;
                                map9.clear();
                                map9.putAll(map8);
                            }
                            if (y2.C2(map8)) {
                                ArrayList arrayList22 = arrayList18;
                                Object obj14 = arrayList22.get(i6);
                                if (obj14 == null) {
                                    obj14 = str40;
                                }
                                String strTrim = String.valueOf(obj14).trim();
                                if (!strTrim.isEmpty()) {
                                    str44 = str44;
                                    str39 = str39;
                                    Object obj15 = map.get("claimed_gift_ids");
                                    arrayList6 = arrayList22;
                                    List arrayList23 = obj15 instanceof List ? (List) obj15 : new ArrayList();
                                    Iterator it5 = arrayList23.iterator();
                                    while (true) {
                                        if (!it5.hasNext()) {
                                            arrayList23.add(strTrim);
                                            map.put("claimed_gift_ids", arrayList23);
                                        }
                                        Iterator it6 = it5;
                                        if (strTrim.equals(String.valueOf(it5.next()))) {
                                        }
                                        it5 = it6;
                                    }
                                } else {
                                    arrayList6 = arrayList22;
                                }
                                i6++;
                                arrayList3 = arrayList20;
                                str19 = str43;
                                str39 = str39;
                                arrayList19 = arrayList21;
                                ArrayList arrayList24 = arrayList6;
                                str16 = str44;
                                arrayList18 = arrayList24;
                            } else {
                                arrayList6 = arrayList18;
                            }
                            i6++;
                            arrayList3 = arrayList20;
                            str19 = str43;
                            str39 = str39;
                            arrayList19 = arrayList21;
                            ArrayList arrayList25 = arrayList6;
                            str16 = str44;
                            arrayList18 = arrayList25;
                            break;
                        }
                        String str45 = str39;
                        ArrayList arrayList26 = arrayList18;
                        list.removeAll(arrayList19);
                        linkedHashMap2.put("error_code", 0);
                        linkedHashMap2.put("ret", 0);
                        linkedHashMap2.put("code", 0);
                        linkedHashMap2.put("result", Boolean.TRUE);
                        linkedHashMap2.put("msg", "success");
                        com.sgscq.vpn.handler.p.e("122", map);
                        w2 w2Var = new w2();
                        Iterator it7 = arrayList4.iterator();
                        while (true) {
                            boolean zHasNext = it7.hasNext();
                            ArrayList arrayList27 = w2Var.f1510a;
                            if (!zHasNext) {
                                LinkedHashMap linkedHashMap3 = linkedHashMap2;
                                String str46 = str11;
                                String str47 = str8;
                                String str48 = str40;
                                String str49 = str41;
                                boolean zContainsKey = map.containsKey(obj3);
                                String str50 = "mail_type";
                                if (zContainsKey) {
                                    boolean z5 = zContainsKey;
                                    str2 = str2;
                                    str = str;
                                    str20 = str9;
                                    str21 = str10;
                                    str22 = str46;
                                    z = z5;
                                } else {
                                    Iterator it8 = list.iterator();
                                    while (true) {
                                        if (it8.hasNext()) {
                                            Object next3 = it8.next();
                                            if (next3 instanceof Map) {
                                                Map map10 = (Map) next3;
                                                str20 = str9;
                                                if (map10.containsKey(str20)) {
                                                    str21 = str10;
                                                } else {
                                                    str21 = str10;
                                                    if (!map10.containsKey(str21)) {
                                                        str22 = str46;
                                                        if (map10.containsKey(str22) || map10.containsKey("mail_type")) {
                                                            zContainsKey = zContainsKey;
                                                            str2 = str2;
                                                        } else {
                                                            str2 = str2;
                                                            zContainsKey = zContainsKey;
                                                            if (!map10.containsKey(str2)) {
                                                                str = str;
                                                                if (map10.containsKey(str)) {
                                                                    it8 = it8;
                                                                } else {
                                                                    it8 = it8;
                                                                    if (!map10.containsKey("attach_list") && !map10.containsKey("attachment") && !map10.containsKey("attachments")) {
                                                                        z2 = false;
                                                                    }
                                                                }
                                                                z2 = true;
                                                            }
                                                        }
                                                        str = str;
                                                        z2 = true;
                                                    }
                                                    if (z2) {
                                                        z = true;
                                                    } else {
                                                        str = str;
                                                        str9 = str20;
                                                        str10 = str21;
                                                        str46 = str22;
                                                        str2 = str2;
                                                        it8 = it8;
                                                        zContainsKey = zContainsKey;
                                                    }
                                                }
                                                str22 = str46;
                                                z2 = true;
                                                if (z2) {
                                                    z = true;
                                                } else {
                                                    str = str;
                                                    str9 = str20;
                                                    str10 = str21;
                                                    str46 = str22;
                                                    str2 = str2;
                                                    it8 = it8;
                                                    zContainsKey = zContainsKey;
                                                }
                                            }
                                        } else {
                                            boolean z6 = zContainsKey;
                                            str2 = str2;
                                            str = str;
                                            str20 = str9;
                                            str21 = str10;
                                            str22 = str46;
                                            z = z6;
                                        }
                                    }
                                }
                                if (z) {
                                    ArrayList arrayList28 = new ArrayList();
                                    Iterator it9 = list.iterator();
                                    while (it9.hasNext()) {
                                        Object next4 = it9.next();
                                        it9 = it9;
                                        if (next4 instanceof Map) {
                                            Map map11 = (Map) next4;
                                            LinkedHashMap linkedHashMap4 = new LinkedHashMap(map11);
                                            ArrayList arrayList29 = arrayList27;
                                            String str51 = str20;
                                            String str52 = str21;
                                            String str53 = str22;
                                            String strF4 = y2.f1(String.valueOf(map11.getOrDefault(str49, str48)), String.valueOf(map11.getOrDefault(str20, str48)), String.valueOf(map11.getOrDefault(str21, str48)), String.valueOf(map11.getOrDefault(str22, str48)));
                                            if (strF4.isEmpty()) {
                                                strF4 = "mail_" + Math.abs(map11.hashCode());
                                            }
                                            linkedHashMap4.put(str49, strF4);
                                            linkedHashMap4.put("email_type", y2.o3(y2.f1(String.valueOf(map11.getOrDefault("email_type", str48)), String.valueOf(map11.getOrDefault(str50, str48)), "gift")));
                                            linkedHashMap4.put("email_title", y2.f1(String.valueOf(map11.getOrDefault("email_title", str48)), String.valueOf(map11.getOrDefault("title", str48)), "系统邮件"));
                                            linkedHashMap4.put("email_content", y2.f1(String.valueOf(map11.getOrDefault("email_content", str48)), String.valueOf(map11.getOrDefault("content", str48)), str48));
                                            linkedHashMap4.put("email_sender", y2.f1(String.valueOf(map11.getOrDefault("email_sender", str48)), String.valueOf(map11.getOrDefault("from_user", str48)), "系统"));
                                            String str54 = str50;
                                            linkedHashMap4.put("email_sender_nickname", y2.f1(String.valueOf(map11.getOrDefault("email_sender_nickname", str48)), String.valueOf(map11.getOrDefault("sender", str48)), String.valueOf(linkedHashMap4.get("email_sender")), "系统"));
                                            String str55 = str47;
                                            Object obj16 = map11.get(str55);
                                            if (!(obj16 instanceof List)) {
                                                obj16 = map11.get(str2);
                                            }
                                            if (!(obj16 instanceof List)) {
                                                obj16 = map11.get(str);
                                            }
                                            if (obj16 instanceof List) {
                                                linkedHashMap4.put(str55, obj16);
                                            } else {
                                                linkedHashMap4.remove(str55);
                                            }
                                            String[] strArr = {"mail_id", "email_id", "id", "mail_type", "title", "content", "sender", "from_user", "reward", "rewards", "attach_list", "attachment", "attachments"};
                                            for (int i7 = 0; i7 < 13; i7++) {
                                                linkedHashMap4.remove(strArr[i7]);
                                            }
                                            arrayList28.add(linkedHashMap4);
                                            str47 = str55;
                                            str50 = str54;
                                            arrayList27 = arrayList29;
                                            str20 = str51;
                                            str21 = str52;
                                            str22 = str53;
                                        } else {
                                            arrayList28.add(next4);
                                        }
                                    }
                                    arrayList5 = arrayList27;
                                    str23 = str47;
                                    map.put(obj2, arrayList28);
                                    map.remove(obj3);
                                    obj4 = arrayList28;
                                } else {
                                    obj4 = list;
                                    arrayList5 = arrayList27;
                                    str23 = str47;
                                }
                                LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                                linkedHashMap5.put("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()));
                                LinkedHashMap linkedHashMap6 = w2Var.f1511b;
                                for (Map.Entry entry : linkedHashMap6.entrySet()) {
                                    linkedHashMap5.put((String) entry.getKey(), p5.z0("del", new ArrayList(), "upd", entry.getValue(), "add", new ArrayList()));
                                }
                                linkedHashMap5.put("Mail", p5.z0("del", arrayList26, "upd", new ArrayList(), "add", new ArrayList()));
                                ArrayList arrayList30 = arrayList5;
                                linkedHashMap3.put(str45, arrayList30);
                                linkedHashMap3.put(str23, arrayList30);
                                linkedHashMap3.put("remaining_mails_internal", obj4);
                                linkedHashMap3.put("delta_data", linkedHashMap5);
                                LinkedHashSet linkedHashSet = new LinkedHashSet(linkedHashMap6.keySet());
                                if (w2Var.f1512c) {
                                    linkedHashSet.add("Player");
                                }
                                if (!arrayList26.isEmpty()) {
                                    linkedHashSet.add("Mail");
                                }
                                StringBuilder sb = new StringBuilder();
                                Iterator it10 = linkedHashSet.iterator();
                                if (it10.hasNext()) {
                                    while (true) {
                                        sb.append((CharSequence) it10.next());
                                        if (it10.hasNext()) {
                                            sb.append((CharSequence) ",");
                                        }
                                    }
                                }
                                linkedHashMap3.put("cmn_modules", sb.toString());
                                return linkedHashMap3;
                            }
                            Map map12 = (Map) it7.next();
                            String str56 = str18;
                            String strValueOf2 = String.valueOf(y2.h1(map12, str56, str11));
                            String str57 = str15;
                            int iC4 = y2.C3(y2.h1(map12, str57, str13), 1);
                            int iE2 = y2.E1(strValueOf2, map12);
                            int iD2 = y2.D1(iE2, map12);
                            if (strValueOf2.isEmpty() || iC4 <= 0) {
                                it7 = it7;
                                str56 = str56;
                            } else {
                                if (y2.t2(strValueOf2)) {
                                    if ("600026".equals(strValueOf2) || "600002".equals(strValueOf2)) {
                                        p5.b(iC4, map);
                                    } else {
                                        map.put("user_gold", Integer.valueOf(y2.C3(map.get("user_gold"), 0) + iC4));
                                    }
                                    w2Var.f1512c = true;
                                    cloneableW = y2.c0(strValueOf2, iC4, iE2, iD2);
                                } else {
                                    it7 = it7;
                                    str56 = str56;
                                    if (iD2 != 5) {
                                        String strZ4 = y2.Z3(strValueOf2, iE2);
                                        switch (iD2) {
                                            case 1:
                                                linkedHashMap2 = linkedHashMap2;
                                                str57 = str57;
                                                str8 = str8;
                                                str41 = str41;
                                                y2.F0("General", map);
                                                y2.F0("Skill", map);
                                                y2.F0("GeneralSoul", map);
                                                int i8 = 0;
                                                while (i8 < iC4) {
                                                    Iterator it11 = w1.f0("General", map).iterator();
                                                    while (true) {
                                                        if (it11.hasNext()) {
                                                            str26 = str13;
                                                            map3 = (Map) it11.next();
                                                            Iterator it12 = it11;
                                                            str25 = str11;
                                                            str27 = str40;
                                                            if (!c.a.B(map3, "general_id", str27, strZ4)) {
                                                                str40 = str27;
                                                                it11 = it12;
                                                                str13 = str26;
                                                                str11 = str25;
                                                            }
                                                        } else {
                                                            str25 = str11;
                                                            str26 = str13;
                                                            str27 = str40;
                                                            map3 = null;
                                                        }
                                                    }
                                                    Map mapD = y2.d(strZ4, map);
                                                    if (map3 == null && mapD != null) {
                                                        w2Var.a("General", mapD);
                                                        w2Var.a("Skill", y2.S0(String.valueOf(mapD.getOrDefault(str41, str27)), w1.f0("Skill", map)));
                                                    } else if (map3 != null) {
                                                        w2Var.a("GeneralSoul", y2.c1(strZ4, map));
                                                    }
                                                    i8++;
                                                    str40 = str27;
                                                    str13 = str26;
                                                    str11 = str25;
                                                }
                                                str11 = str11;
                                                str13 = str13;
                                                str24 = str40;
                                                arrayList27.add(y2.c0(strValueOf2, iC4, iE2, 1));
                                                break;
                                            case 2:
                                            case 5:
                                            default:
                                                break;
                                            case 3:
                                                linkedHashMap2 = linkedHashMap2;
                                                str57 = str57;
                                                str8 = str8;
                                                str41 = str41;
                                                for (int i9 = 0; i9 < iC4; i9++) {
                                                    w2Var.a("Equipment", y2.S0(String.valueOf(y2.c(null, strZ4, map)), w1.f0("Equipment", map)));
                                                }
                                                linkedHashMapC0 = y2.c0(strValueOf2, iC4, iE2, iD2);
                                                arrayList27.add(linkedHashMapC0);
                                                str11 = str11;
                                                str13 = str13;
                                                str24 = str40;
                                                break;
                                            case 4:
                                                for (int i10 = 0; i10 < iC4; i10++) {
                                                    w2Var.a("Skill", y2.p(strZ4, map));
                                                }
                                                linkedHashMapC0 = y2.c0(strZ4, iC4, iE2, iD2);
                                                arrayList27.add(linkedHashMapC0);
                                                str11 = str11;
                                                str13 = str13;
                                                str24 = str40;
                                                break;
                                            case 6:
                                                w1.k(iC4, strZ4, map);
                                                w2Var.a("GeneralSoul", y2.c1(strZ4, map));
                                                linkedHashMapC0 = y2.c0(strZ4, iC4, iE2, iD2);
                                                arrayList27.add(linkedHashMapC0);
                                                str11 = str11;
                                                str13 = str13;
                                                str24 = str40;
                                                break;
                                            case 7:
                                                str57 = str57;
                                                List listF0 = y2.F0("SkillPiece", map);
                                                Iterator it13 = listF0.iterator();
                                                while (true) {
                                                    if (it13.hasNext()) {
                                                        Iterator it14 = it13;
                                                        Map map13 = (Map) it13.next();
                                                        linkedHashMap2 = linkedHashMap2;
                                                        str8 = str8;
                                                        if (strZ4.equals(String.valueOf(map13.getOrDefault("skill_id", map13.get(str11))))) {
                                                            int iC5 = y2.C3(map13.getOrDefault(str13, map13.get("skill_piece_num")), 0) + iC4;
                                                            c.a.t(iC5, map13, str13, iC5, "skill_piece_num");
                                                            mapZ0 = map13;
                                                            str41 = str41;
                                                        } else {
                                                            linkedHashMap2 = linkedHashMap2;
                                                            it13 = it14;
                                                            str8 = str8;
                                                        }
                                                    } else {
                                                        linkedHashMap2 = linkedHashMap2;
                                                        str8 = str8;
                                                        str41 = str41;
                                                        mapZ0 = p5.z0(str41, strZ4, "id", strZ4, "skill_id", strZ4, "num", Integer.valueOf(iC4), "skill_piece_num", Integer.valueOf(iC4));
                                                        listF0.add(mapZ0);
                                                    }
                                                }
                                                w2Var.a("SkillPiece", mapZ0);
                                                linkedHashMapC0 = y2.c0(strValueOf2, iC4, iE2, iD2);
                                                arrayList27.add(linkedHashMapC0);
                                                str11 = str11;
                                                str13 = str13;
                                                str24 = str40;
                                                break;
                                            case 8:
                                                Map mapC2 = com.sgscq.vpn.cloud.m0.c1(iC4, strValueOf2, map);
                                                w2Var.a("EquipmentPiece", mapC2);
                                                cloneableS = y2.S(iC4, strValueOf2, mapC2);
                                                arrayList27.add(cloneableS);
                                                linkedHashMap2 = linkedHashMap2;
                                                str11 = str11;
                                                str8 = str8;
                                                str24 = str40;
                                                str41 = str41;
                                                break;
                                            case 9:
                                                w2Var.a("Gems", y2.h(iC4, strZ4, map));
                                                cloneableS = y2.U(iC4, strZ4, y2.T0(strZ4, map));
                                                arrayList27.add(cloneableS);
                                                linkedHashMap2 = linkedHashMap2;
                                                str11 = str11;
                                                str8 = str8;
                                                str24 = str40;
                                                str41 = str41;
                                                break;
                                            case 10:
                                                str57 = str57;
                                                mapI = y2.i(strZ4, map);
                                                w2Var.a("Goddess", mapI);
                                                linkedHashMap2 = linkedHashMap2;
                                                str8 = str8;
                                                str41 = str41;
                                                linkedHashMapC0 = y2.c0(strValueOf2, iC4, iE2, iD2);
                                                arrayList27.add(linkedHashMapC0);
                                                str11 = str11;
                                                str13 = str13;
                                                str24 = str40;
                                                break;
                                            case 11:
                                                mapI = y2.i(y2.F1(strValueOf2), map);
                                                Object obj17 = mapI.get("skin_list");
                                                str57 = str57;
                                                List listO = obj17 instanceof List ? (List) obj17 : c.a.o(mapI, "skin_list");
                                                if (!listO.contains(strValueOf2)) {
                                                    listO.add(strValueOf2);
                                                }
                                                w2Var.a("Goddess", mapI);
                                                linkedHashMap2 = linkedHashMap2;
                                                str8 = str8;
                                                str41 = str41;
                                                linkedHashMapC0 = y2.c0(strValueOf2, iC4, iE2, iD2);
                                                arrayList27.add(linkedHashMapC0);
                                                str11 = str11;
                                                str13 = str13;
                                                str24 = str40;
                                                break;
                                        }
                                    } else {
                                        List listF1 = w1.f0("Item", map);
                                        if (iE2 == 0) {
                                            iE2 = 1;
                                        }
                                        Map mapJ = y2.j(map, strValueOf2, iC4, iE2);
                                        y2.E0(listF1, map);
                                        w2Var.a("Item", mapJ);
                                        cloneableW = y2.W(iC4, iE2, 5, strValueOf2, mapJ);
                                    }
                                    it7 = it7;
                                    str40 = str24;
                                    str41 = str41;
                                    str18 = str56;
                                    str15 = str57;
                                    linkedHashMap2 = linkedHashMap2;
                                    str13 = str13;
                                    str11 = str11;
                                    str8 = str8;
                                }
                                arrayList27.add(cloneableW);
                            }
                            str57 = str57;
                            str8 = str8;
                            str24 = str40;
                            str41 = str41;
                            it7 = it7;
                            str40 = str24;
                            str41 = str41;
                            str18 = str56;
                            str15 = str57;
                            linkedHashMap2 = linkedHashMap2;
                            str13 = str13;
                            str11 = str11;
                            str8 = str8;
                        }
                    } else {
                        c.a.s(-1, linkedHashMap2, "error_code", -1, "ret", -1, "code");
                        linkedHashMap2.put("result", Boolean.FALSE);
                        linkedHashMap2.put("msg", strConcat);
                        linkedHashMap2.put("add_list", new ArrayList());
                        arrayList7 = new ArrayList();
                    }
                }
                linkedHashMap2.put("reward_list", arrayList7);
                return linkedHashMap2;
        }
    }
}
