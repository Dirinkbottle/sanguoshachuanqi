package com.sgscq.vpn.handler;

import com.sgscq.vpn.battle.BattleAttribute;
import com.sgscq.vpn.battle.BattleSkill;
import com.sgscq.vpn.battle.BattleSkillDescriptor;
import com.sgscq.vpn.battle.BattleSkillTargetRule;
import com.sgscq.vpn.battle.BattleSkillTemplate;
import com.sgscq.vpn.battle.BattleSkillTemplateSpec;
import com.sgscq.vpn.battle.BattleSkillTemplateSpecResolver;
import com.sgscq.vpn.battle.BattleSkillTriggerSchedule;
import com.sgscq.vpn.battle.BattleSkillType;
import com.sgscq.vpn.battle.BattleUnit;
import com.sgscq.vpn.battle.NormalAttackStyleResolver;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.t1;
import com.sgscq.vpn.w1;
import com.sgscq.vpn.z2;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {
    /* JADX WARN: Code duplicated, block: B:101:0x0205  */
    /* JADX WARN: Code duplicated, block: B:102:0x020e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:103:0x0210  */
    /* JADX WARN: Code duplicated, block: B:105:0x0215  */
    /* JADX WARN: Code duplicated, block: B:108:0x0245  */
    /* JADX WARN: Code duplicated, block: B:111:0x024b  */
    /* JADX WARN: Code duplicated, block: B:114:0x0252  */
    /* JADX WARN: Code duplicated, block: B:116:0x0258  */
    /* JADX WARN: Code duplicated, block: B:118:0x025c  */
    /* JADX WARN: Code duplicated, block: B:120:0x0260  */
    /* JADX WARN: Code duplicated, block: B:121:0x0262  */
    /* JADX WARN: Code duplicated, block: B:125:0x0271  */
    /* JADX WARN: Code duplicated, block: B:126:0x0276  */
    /* JADX WARN: Code duplicated, block: B:129:0x0280  */
    /* JADX WARN: Code duplicated, block: B:132:0x0286  */
    /* JADX WARN: Code duplicated, block: B:135:0x0290  */
    /* JADX WARN: Code duplicated, block: B:156:0x031e  */
    /* JADX WARN: Code duplicated, block: B:159:0x033f  */
    /* JADX WARN: Code duplicated, block: B:160:0x0344  */
    /* JADX WARN: Code duplicated, block: B:163:0x0364  */
    /* JADX WARN: Code duplicated, block: B:166:0x037e  */
    /* JADX WARN: Code duplicated, block: B:169:0x038b  */
    /* JADX WARN: Code duplicated, block: B:171:0x039d  */
    /* JADX WARN: Code duplicated, block: B:176:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:178:0x03be  */
    /* JADX WARN: Code duplicated, block: B:184:0x03cf  */
    /* JADX WARN: Code duplicated, block: B:189:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:192:0x03fc  */
    /* JADX WARN: Code duplicated, block: B:194:0x0412  */
    /* JADX WARN: Code duplicated, block: B:195:0x0414  */
    /* JADX WARN: Code duplicated, block: B:199:0x0439  */
    /* JADX WARN: Code duplicated, block: B:204:0x045d  */
    /* JADX WARN: Code duplicated, block: B:206:0x0471  */
    /* JADX WARN: Code duplicated, block: B:300:0x06c8  */
    /* JADX WARN: Code duplicated, block: B:303:0x06d7  */
    /* JADX WARN: Code duplicated, block: B:304:0x06dc  */
    /* JADX WARN: Code duplicated, block: B:305:0x06de  */
    /* JADX WARN: Code duplicated, block: B:312:0x06ff  */
    /* JADX WARN: Code duplicated, block: B:317:0x0726 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:331:0x075d  */
    /* JADX WARN: Code duplicated, block: B:357:0x07df  */
    /* JADX WARN: Code duplicated, block: B:364:0x07f2  */
    /* JADX WARN: Code duplicated, block: B:368:0x0800  */
    /* JADX WARN: Code duplicated, block: B:371:0x081e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:381:0x083c  */
    /* JADX WARN: Code duplicated, block: B:383:0x0840  */
    /* JADX WARN: Code duplicated, block: B:387:0x0849 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:388:0x084b  */
    /* JADX WARN: Code duplicated, block: B:398:0x0868  */
    /* JADX WARN: Code duplicated, block: B:399:0x086a  */
    /* JADX WARN: Code duplicated, block: B:401:0x0874  */
    /* JADX WARN: Code duplicated, block: B:402:0x087b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:406:0x0888  */
    /* JADX WARN: Code duplicated, block: B:408:0x088b  */
    /* JADX WARN: Code duplicated, block: B:412:0x089a  */
    /* JADX WARN: Code duplicated, block: B:414:0x08a0  */
    /* JADX WARN: Code duplicated, block: B:417:0x08a8  */
    /* JADX WARN: Code duplicated, block: B:420:0x08ac  */
    /* JADX WARN: Code duplicated, block: B:421:0x08ae  */
    /* JADX WARN: Code duplicated, block: B:425:0x08cf  */
    /* JADX WARN: Code duplicated, block: B:427:0x08db  */
    /* JADX WARN: Code duplicated, block: B:430:0x08ea A[LOOP:6: B:426:0x08d9->B:430:0x08ea, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:431:0x08ee A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:432:0x08f0  */
    /* JADX WARN: Code duplicated, block: B:437:0x0903  */
    /* JADX WARN: Code duplicated, block: B:440:0x0937 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:442:0x093a  */
    /* JADX WARN: Code duplicated, block: B:443:0x093c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:444:0x093e  */
    /* JADX WARN: Code duplicated, block: B:445:0x0945  */
    /* JADX WARN: Code duplicated, block: B:448:0x0949 A[PHI: r10
      0x0949: PHI (r10v10 java.util.Map) = (r10v9 java.util.Map), (r10v11 java.util.Map) binds: [B:447:0x0947, B:442:0x093a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:449:0x094e  */
    /* JADX WARN: Code duplicated, block: B:457:0x087e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:487:0x08ee A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:488:0x0905 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:492:0x03d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:496:0x0450 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x0110  */
    /* JADX WARN: Code duplicated, block: B:87:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:89:0x01aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:90:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:91:0x01af  */
    /* JADX WARN: Code duplicated, block: B:94:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:95:0x01d8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x01da  */
    /* JADX WARN: Code duplicated, block: B:98:0x01df  */
    public static BattleUnit a(e eVar) {
        String strB;
        t1 t1VarZ;
        double[] dArr;
        String str;
        double dG;
        double dF;
        double dG2;
        double dG3;
        double dG4;
        ArrayList arrayList;
        EnumSet enumSetNoneOf;
        boolean z;
        String strT0;
        Map map;
        Object obj;
        boolean z2;
        Map map2;
        double[] dArr2;
        ArrayList arrayList2;
        EnumSet enumSet;
        boolean z3;
        Map map3;
        String str2;
        ArrayList arrayList3;
        LinkedHashSet linkedHashSet;
        String str3;
        String str4;
        String str5;
        Object obj2;
        w1 w1Var;
        ArrayList arrayList4;
        String strJ;
        Iterator it;
        String str6;
        Iterator it2;
        Map map4;
        int size;
        String strT1;
        String strD;
        Object next;
        Map map5;
        String strTrim;
        Iterator it3;
        w1 w1Var2;
        Map map6;
        double d2;
        String str7;
        double[] dArr3;
        int i2;
        Object obj3;
        double d3;
        Object obj4;
        int i3;
        boolean zBooleanValue;
        String str8;
        boolean z4;
        double dMax;
        Map mapJ0;
        Map map7;
        Object obj5;
        String[] strArr;
        int i4;
        int i5;
        Map map8;
        boolean z5;
        int i6;
        double param;
        String str9;
        double dE;
        String str10;
        String str11;
        String str12;
        String str13;
        w1 w1Var3;
        Iterator it4;
        BattleSkill battleSkillBuild;
        EnumSet enumSet2;
        ArrayList arrayList5;
        BattleSkillType battleSkillType;
        BattleAttribute battleAttribute;
        Map map9;
        boolean z6;
        w1 w1VarA1 = eVar.f814f;
        if (w1VarA1 == null) {
            w1VarA1 = w1.a1(null);
        }
        Map map10 = eVar.f812d;
        String[] strArr2 = new String[7];
        String str14 = eVar.f809a;
        strArr2[0] = b(str14);
        strArr2[1] = b(map10 == null ? null : map10.get("id"));
        strArr2[2] = b(map10 == null ? null : map10.get("general_config_id"));
        strArr2[3] = b(map10 == null ? null : map10.get("base_general_id"));
        strArr2[4] = b(map10 == null ? null : map10.get("resource_id"));
        strArr2[5] = b(map10 == null ? null : map10.get("general_id"));
        strArr2[6] = b(map10 == null ? null : map10.get("general_skin"));
        int i7 = 0;
        while (true) {
            if (i7 >= 7) {
                strB = b(str14);
                break;
            }
            strB = strArr2[i7];
            if (!strB.isEmpty() && w1VarA1 != null && w1VarA1.J0(strB) != null) {
                break;
            }
            i7++;
        }
        double[] dArrK0 = w1VarA1 != null ? w1VarA1.K0(strB) : null;
        int i8 = 12;
        String str15 = "general_pk_id";
        if (eVar.f817i || eVar.f816h || eVar.f813e == null || w1VarA1 == null) {
            t1VarZ = null;
        } else {
            if (map10 == null) {
                z6 = false;
                break;
            }
            String[] strArr3 = {"general_hp_attr", "general_attack_attr", "general_defense_attr", "general_wisdom_attr", "attr_hp", "attr_attack", "attr_defense", "attr_wisdom", "base_hp", "base_attack", "base_defense", "base_wisdom"};
            int i9 = 0;
            while (true) {
                if (i9 >= i8) {
                    z6 = false;
                    break;
                }
                if (map10.containsKey(strArr3[i9])) {
                    z6 = true;
                    break;
                }
                i9++;
                i8 = 12;
            }
            if (z6) {
                String strB2 = b(map10.get("pk_id"));
                if (strB2.isEmpty()) {
                    strB2 = b(map10.get("general_pk_id"));
                }
                if (strB2.isEmpty()) {
                    t1VarZ = null;
                } else {
                    t1VarZ = w1VarA1.z(strB2, eVar.f813e);
                }
            } else {
                t1VarZ = null;
            }
        }
        t1 t1Var = t1VarZ;
        if (eVar.f818j && t1Var == null) {
            dArr = new double[4];
            if (map10 == null) {
                // fill-array-data instruction
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
                dArr[2] = 0.0d;
                dArr[3] = 0.0d;
            } else {
                dArr[0] = e(map10.get("battle_lieutenant_hp_percent"));
                dArr[1] = e(map10.get("battle_lieutenant_attack_percent"));
                dArr[2] = e(map10.get("battle_lieutenant_defense_percent"));
                dArr[3] = e(map10.get("battle_lieutenant_wisdom_percent"));
            }
        } else {
            dArr = new double[]{0.0d, 0.0d, 0.0d, 0.0d};
        }
        double[] dArr4 = dArr;
        if (!eVar.f817i) {
            if (t1Var != null) {
                dF = t1Var.f1387i;
            } else {
                str = "pk_id";
                dG = g(map10, dArrK0, 0, eVar.f816h, eVar.f823o, "general_hp_attr", "attr_hp", "general_hp", "hp", "hpMax", "hpCur", "base_hp");
            }
            if (eVar.f817i) {
                dG2 = f(map10, "general_attack", eVar.f824p);
            } else if (t1Var != 0) {
                dG2 = t1Var.f1388j;
            } else {
                dG2 = g(map10, dArrK0, 1, eVar.f816h, eVar.f824p, "general_attack_attr", "attr_attack", "general_attack", "atk", "attack", "base_attack");
            }
            double d4 = dG2;
            if (eVar.f817i) {
                if (t1Var != 0) {
                    dG3 = t1Var.f1389k;
                } else {
                    dG3 = g(map10, dArrK0, 2, eVar.f816h, eVar.f825q, "general_defense_attr", "attr_defense", "general_defense", "def", "defense", "base_defense");
                }
                double d5 = dG3;
                if (eVar.f817i) {
                    if (t1Var != 0) {
                        dG4 = t1Var.f1390l;
                    } else {
                        dG4 = g(map10, dArrK0, 3, eVar.f816h, eVar.r, "general_wisdom_attr", "attr_wisdom", "general_wisdom", "wis", "wisdom", "base_wisdom");
                    }
                    arrayList = new ArrayList();
                    enumSetNoneOf = EnumSet.noneOf(BattleSkillType.class);
                    if (eVar.f817i || !eVar.f819k) {
                        z = false;
                    } else {
                        z = true;
                    }
                    strT0 = eVar.f822n;
                    if (strT0 != null || strT0.isEmpty()) {
                        if (eVar.f817i) {
                            map = eVar.f812d;
                            if (map == null) {
                                obj = null;
                            } else {
                                obj = map.get("general_naturalskill_id");
                            }
                            strT0 = b(obj);
                            if (strT0.isEmpty()) {
                                strT0 = w1.P(strB);
                            }
                        } else {
                            strT0 = w1VarA1.T0(strB);
                        }
                    }
                    z2 = eVar.f817i;
                    double d6 = dG4;
                    if (z2 || eVar.f819k) {
                        map2 = eVar.f812d;
                    } else {
                        map2 = null;
                    }
                    dArr2 = dArrK0;
                    if (!z2 || (map9 = eVar.f813e) == null || map2 == null) {
                        arrayList2 = arrayList;
                        enumSet = enumSetNoneOf;
                        z3 = z;
                        map3 = map10;
                        str2 = str;
                    } else {
                        map3 = map10;
                        str2 = str;
                        String strB3 = b(map2.get(str2));
                        if (strB3.isEmpty()) {
                            strB3 = b(map2.get("general_pk_id"));
                        }
                        String str16 = strB3;
                        if (str16.isEmpty()) {
                            arrayList2 = arrayList;
                            enumSet = enumSetNoneOf;
                            z3 = z;
                        } else {
                            arrayList2 = arrayList;
                            ArrayList arrayList6 = new ArrayList();
                            enumSet = enumSetNoneOf;
                            Iterator it5 = w1.f0("Skill", map9).iterator();
                            while (it5.hasNext()) {
                                Map map11 = (Map) it5.next();
                                Iterator it6 = it5;
                                boolean z7 = z;
                                String str17 = str16;
                                if (str17.equals(b(map11.get("general_pk_id")))) {
                                    arrayList6.add(new LinkedHashMap(map11));
                                }
                                str16 = str17;
                                z = z7;
                                it5 = it6;
                            }
                            z3 = z;
                            String str18 = str16;
                            if (!arrayList6.isEmpty()) {
                                d(w1VarA1, str18, strB, arrayList6, map2);
                                LinkedHashMap linkedHashMap = new LinkedHashMap(map2);
                                linkedHashMap.put("gSkill", arrayList6);
                                linkedHashMap.put("general_skills", arrayList6);
                                map2 = linkedHashMap;
                            }
                        }
                    }
                    arrayList3 = new ArrayList();
                    linkedHashSet = new LinkedHashSet();
                    com.sgscq.vpn.v.a(arrayList3, linkedHashSet, strT0, 0, 1);
                    str3 = "null";
                    str4 = "0";
                    if (map2 == null) {
                        str5 = strB;
                        com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map2.get("gSkill"));
                        com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map2.get("general_skills"));
                        obj2 = map2.get("bound_lieutenants");
                        w1Var = w1VarA1;
                        if (!(obj2 instanceof List)) {
                            arrayList4 = new ArrayList();
                            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                            strJ = c.a.j(map2, "general_pk_id", "", str2);
                            it = ((List) obj2).iterator();
                            while (it.hasNext()) {
                                String str19 = str15;
                                next = it.next();
                                Iterator it7 = it;
                                if (!(next instanceof Map)) {
                                    map5 = (Map) next;
                                    String strValueOf = String.valueOf(map5.getOrDefault("major_pk_id", ""));
                                    if (strJ.isEmpty() || strValueOf.isEmpty() || strJ.equals(strValueOf)) {
                                        strTrim = String.valueOf(map5.getOrDefault("position", "")).trim();
                                        if (!strTrim.isEmpty() || "0".equals(strTrim) || "null".equalsIgnoreCase(strTrim)) {
                                            arrayList4.add(map5);
                                        } else {
                                            linkedHashMap2.put(strTrim, map5);
                                        }
                                    }
                                }
                                str15 = str19;
                                it = it7;
                            }
                            str6 = str15;
                            ArrayList arrayList7 = new ArrayList(arrayList4);
                            arrayList7.addAll(linkedHashMap2.values());
                            it2 = arrayList7.iterator();
                            while (it2.hasNext()) {
                                map4 = (Map) it2.next();
                                size = arrayList3.size();
                                if (map4 == null) {
                                    strT1 = "";
                                } else {
                                    strD = com.sgscq.vpn.v.d(map4.get("general_id"), map4.get("id"));
                                    if (strD.isEmpty()) {
                                        strT1 = "";
                                    } else {
                                        strT1 = w1.a1(null).T0(strD);
                                    }
                                }
                                Iterator it8 = it2;
                                com.sgscq.vpn.v.a(arrayList3, linkedHashSet, strT1, 0, 1);
                                com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map4.get("gSkill"));
                                com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map4.get("general_skills"));
                                if (arrayList3.size() > size) {
                                    com.sgscq.vpn.v.a(arrayList3, linkedHashSet, com.sgscq.vpn.v.d(map4.get("general_naturalskill_id"), map4.get("natural_skill_id")), 0, 1);
                                }
                                it2 = it8;
                            }
                        }
                        it3 = arrayList3.iterator();
                        while (it3.hasNext()) {
                            com.sgscq.vpn.u uVar = (com.sgscq.vpn.u) it3.next();
                            str10 = uVar.f1416a;
                            int i10 = uVar.f1417b;
                            int i11 = uVar.f1418c;
                            boolean z8 = eVar.f821m;
                            boolean z9 = eVar.f820l;
                            if (str10 != null || str10.isEmpty() || str4.equals(str10)) {
                                str11 = str3;
                                str12 = str4;
                                str13 = str2;
                                w1Var3 = w1Var;
                                it4 = it3;
                            } else {
                                boolean zEquals = "141026".equals(str10);
                                String str20 = zEquals ? "341022" : str10;
                                if (zEquals) {
                                    i10 = 0;
                                }
                                w1 w1Var4 = w1Var;
                                Map mapB = com.sgscq.vpn.v.b(i10, w1Var4, str20);
                                if (mapB == null) {
                                    if (z8) {
                                        BattleSkillTemplate battleSkillTemplate = BattleSkillTemplate.SINGLE_ATTRIBUTE_DAMAGE;
                                        battleSkillBuild = BattleSkill.builder(str10).code("npc_attack_skill").animationSkill("npc_attack_skill").type(BattleSkillType.ATTACK).template(battleSkillTemplate).spec(BattleSkillTemplateSpec.simple(battleSkillTemplate, BattleSkillTargetRule.NORMAL_COUNTERPART)).majorAttribute(BattleAttribute.ATTACK).params(100.0d).firstTriggerAction(1).mandatoryTrigger(z9).build();
                                    } else {
                                        battleSkillBuild = null;
                                    }
                                    it4 = it3;
                                    uVar = uVar;
                                    str11 = str3;
                                    str12 = str4;
                                    str13 = str2;
                                    w1Var3 = w1Var4;
                                } else {
                                    String strValueOf2 = String.valueOf(mapB.getOrDefault("skill_code", str10));
                                    String strValueOf3 = String.valueOf(mapB.getOrDefault("skill_type", str4));
                                    it4 = it3;
                                    String strValueOf4 = String.valueOf(mapB.getOrDefault("major_property", "1"));
                                    str12 = str4;
                                    String strE = com.sgscq.vpn.v.e(w1Var4, mapB.get("phase_desc"));
                                    str11 = str3;
                                    str13 = str2;
                                    BattleSkillTemplateSpec battleSkillTemplateSpecResolve = BattleSkillTemplateSpecResolver.resolve(BattleSkillDescriptor.builder(strValueOf2).skillType(strValueOf3).majorProperty(strValueOf4).phase(strE).range(com.sgscq.vpn.v.e(w1Var4, mapB.get("range_desc"))).description(com.sgscq.vpn.v.e(w1Var4, mapB.get("desc")) + " " + com.sgscq.vpn.v.e(w1Var4, mapB.get("short_desc"))).build());
                                    BattleSkillTemplate template = battleSkillTemplateSpecResolve.getTemplate();
                                    boolean z10 = "baiyin".equals(strValueOf2) || "311028".equals(str10);
                                    w1Var3 = w1Var4;
                                    if (template != BattleSkillTemplate.UNKNOWN && (template != BattleSkillTemplate.NO_EFFECT || z10)) {
                                        uVar = uVar;
                                        if ("1".equals(strValueOf3)) {
                                            battleSkillType = BattleSkillType.ATTACK;
                                        } else if ("2".equals(strValueOf3)) {
                                            battleSkillType = BattleSkillType.CONTROL;
                                        } else if ("3".equals(strValueOf3)) {
                                            battleSkillType = BattleSkillType.BLOOD;
                                        } else {
                                            battleSkillType = "4".equals(strValueOf3) ? BattleSkillType.PASSIVE : BattleSkillType.NONE;
                                        }
                                        boolean z11 = battleSkillType == BattleSkillType.BLOOD;
                                        boolean z12 = (!z9 || battleSkillType == BattleSkillType.PASSIVE || battleSkillType == BattleSkillType.NONE || z11) ? false : true;
                                        int i12 = i10;
                                        BattleSkill.Builder builderCode = BattleSkill.builder(str10).code(strValueOf2);
                                        if (!strValueOf2.isEmpty()) {
                                            str10 = strValueOf2;
                                        }
                                        BattleSkill.Builder builderSpec = builderCode.animationSkill(str10).type(battleSkillType).template(template).spec(battleSkillTemplateSpecResolve);
                                        if ("2".equals(strValueOf4)) {
                                            battleAttribute = BattleAttribute.DEFENSE;
                                        } else if ("3".equals(strValueOf4)) {
                                            battleAttribute = BattleAttribute.HP;
                                        } else {
                                            battleAttribute = "4".equals(strValueOf4) ? BattleAttribute.WISDOM : BattleAttribute.ATTACK;
                                        }
                                        BattleSkill.Builder builderMajorAttribute = builderSpec.majorAttribute(battleAttribute);
                                        double[] dArrG = com.sgscq.vpn.v.g(String.valueOf(mapB.getOrDefault("desc_param_value", "")));
                                        int iMax = Math.max(1, i11);
                                        if (iMax > 1) {
                                            double[] dArrG2 = com.sgscq.vpn.v.g(String.valueOf(mapB.getOrDefault("desc_param_step", "")));
                                            int iMin = Math.min(dArrG.length, dArrG2.length);
                                            for (int i13 = 0; i13 < iMin; i13++) {
                                                dArrG[i13] = (((double) (iMax - 1)) * dArrG2[i13]) + dArrG[i13];
                                            }
                                        }
                                        BattleSkill.Builder builderMandatoryTrigger = builderMajorAttribute.params(dArrG).firstTriggerAction(z11 ? BattleSkillTriggerSchedule.firstTriggerAction(strE) : 1).mandatoryTrigger(z12 || strE.contains("必触发"));
                                        if (builderMandatoryTrigger == null) {
                                            builderMandatoryTrigger = null;
                                        } else {
                                            builderMandatoryTrigger.advancedLevel(i12);
                                            if (mapB.containsKey("skill_round_step")) {
                                                int iH = com.sgscq.vpn.v.h(mapB.get("skill_round_step"), 4);
                                                builderMandatoryTrigger = builderMandatoryTrigger.triggerSchedule(com.sgscq.vpn.v.h(mapB.get("first_min_round"), 1), com.sgscq.vpn.v.h(mapB.get("first_max_round"), 1), com.sgscq.vpn.v.h(mapB.get("skill_min_round"), 1), com.sgscq.vpn.v.h(mapB.get("skill_max_round"), iH), iH);
                                            }
                                        }
                                        battleSkillBuild = builderMandatoryTrigger.build();
                                    }
                                }
                                if (battleSkillBuild == null) {
                                    arrayList5 = arrayList2;
                                    enumSet2 = enumSet;
                                } else {
                                    if (!z3 || c(uVar.f1416a) || battleSkillBuild.getType() == BattleSkillType.NONE) {
                                        enumSet2 = enumSet;
                                    } else {
                                        enumSet2 = enumSet;
                                        if (!enumSet2.add(battleSkillBuild.getType())) {
                                            arrayList5 = arrayList2;
                                        }
                                    }
                                    arrayList5 = arrayList2;
                                    arrayList5.add(battleSkillBuild);
                                }
                                arrayList2 = arrayList5;
                                enumSet = enumSet2;
                                it3 = it4;
                                str4 = str12;
                                str3 = str11;
                                str2 = str13;
                                w1Var = w1Var3;
                            }
                            battleSkillBuild = null;
                            if (battleSkillBuild == null) {
                                arrayList5 = arrayList2;
                                enumSet2 = enumSet;
                            } else if (z3) {
                                enumSet2 = enumSet;
                                arrayList5 = arrayList2;
                                arrayList5.add(battleSkillBuild);
                            } else {
                                enumSet2 = enumSet;
                                arrayList5 = arrayList2;
                                arrayList5.add(battleSkillBuild);
                            }
                            arrayList2 = arrayList5;
                            enumSet = enumSet2;
                            it3 = it4;
                            str4 = str12;
                            str3 = str11;
                            str2 = str13;
                            w1Var = w1Var3;
                        }
                        String str21 = str3;
                        String str22 = str2;
                        ArrayList arrayList8 = arrayList2;
                        w1Var2 = w1Var;
                        if (eVar.f813e != null || map3 == null) {
                            map6 = map3;
                        } else {
                            Iterator it9 = arrayList8.iterator();
                            while (true) {
                                if (!it9.hasNext()) {
                                    param = 0.0d;
                                    break;
                                }
                                BattleSkill battleSkill = (BattleSkill) it9.next();
                                if (battleSkill != null && ("yannian".equals(battleSkill.getCode()) || "391001".equals(battleSkill.getId()))) {
                                    param = battleSkill.getParam(0);
                                    break;
                                }
                            }
                            if (param <= 0.0d) {
                                map6 = map3;
                            } else {
                                map6 = map3;
                                String strB4 = b(map6.get(str22));
                                if (strB4.isEmpty()) {
                                    str9 = str6;
                                    strB4 = b(map6.get(str9));
                                } else {
                                    str9 = str6;
                                }
                                if (!strB4.isEmpty()) {
                                    Object obj6 = eVar.f813e.get("MeridianTop");
                                    if (obj6 instanceof Map) {
                                        Object obj7 = ((Map) obj6).get("add");
                                        if (obj7 instanceof List) {
                                            dE = 0.0d;
                                            for (Object obj8 : (List) obj7) {
                                                if (obj8 instanceof Map) {
                                                    Map map12 = (Map) obj8;
                                                    if (strB4.equals(String.valueOf(map12.containsKey(str9) ? map12.get(str9) : map12.get("user_general_id")))) {
                                                        dE += e(map12.get("xue"));
                                                    }
                                                }
                                            }
                                        } else {
                                            dE = 0.0d;
                                        }
                                    } else {
                                        dE = 0.0d;
                                    }
                                    d2 = dE > 0.0d ? (dE * param) / 100.0d : 0.0d;
                                }
                            }
                        }
                        BattleUnit.Builder builder = BattleUnit.builder(str5);
                        str7 = eVar.f815g;
                        if (str7 != null || str7.isEmpty() || str21.equals(str7)) {
                            str7 = str5;
                        }
                        BattleUnit.Builder builderStoryGuest = builder.name(str7).side(eVar.f810b).slot(eVar.f811c).storyGuest(eVar.f816h);
                        if (eVar.f817i || map6 == null || !map6.containsKey("general_sex")) {
                            dArr3 = dArr2;
                            if (dArr2 != null || dArr3.length <= 11) {
                                if (map6 != null && map6.containsKey("general_sex") && (obj3 = map6.get("general_sex")) != null) {
                                    try {
                                        d3 = Double.parseDouble(String.valueOf(obj3));
                                    } catch (NumberFormatException unused) {
                                        i2 = 0;
                                    }
                                }
                                i2 = 0;
                            } else {
                                d3 = dArr3[11];
                            }
                            i2 = (int) d3;
                        } else {
                            Object obj9 = map6.get("general_sex");
                            if (obj9 == null) {
                                i6 = 0;
                            } else {
                                try {
                                    i6 = (int) Double.parseDouble(String.valueOf(obj9));
                                } catch (NumberFormatException unused2) {
                                    i6 = 0;
                                }
                            }
                            i2 = i6;
                            dArr3 = dArr2;
                        }
                        BattleUnit.Builder builderGeneralSex = builderStoryGuest.generalSex(i2);
                        if (map6 == null) {
                            zBooleanValue = false;
                        } else {
                            obj4 = map6.get("evolution_image_status");
                            if (obj4 instanceof Boolean) {
                                zBooleanValue = ((Boolean) obj4).booleanValue();
                            } else {
                                if (obj4 == null) {
                                    i3 = 0;
                                } else {
                                    try {
                                        i3 = (int) Double.parseDouble(String.valueOf(obj4));
                                    } catch (NumberFormatException unused3) {
                                        i3 = 0;
                                    }
                                }
                                if (i3 == 0 || "true".equalsIgnoreCase(String.valueOf(obj4))) {
                                    zBooleanValue = true;
                                } else {
                                    zBooleanValue = false;
                                }
                            }
                        }
                        if (!zBooleanValue) {
                            map8 = eVar.f813e;
                            str8 = str5;
                            if (map8 == null && p5.j0(str8, map8)) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            if (z5) {
                                z4 = false;
                            }
                            BattleUnit.Builder builderWisdom = builderGeneralSex.evolutionImageStatus(z4).hp(dG + d2).attack(d4).defense(d5).wisdom(d6);
                            if (map6 != null) {
                                strArr = new String[]{"general_orbit", "orbit"};
                                i4 = 2;
                                i5 = 0;
                                while (true) {
                                    if (i5 < i4) {
                                        dMax = e(map6.get(strArr[i5]));
                                        if (dMax > 0.0d) {
                                            i5++;
                                            i4 = 2;
                                        }
                                    } else if (dArr3 != null || dArr3.length <= 12) {
                                        dMax = 1.0d;
                                    } else {
                                        double d7 = dArr3[12];
                                        if (d7 > 0.0d) {
                                            dMax = Math.max(1, (int) d7);
                                        } else {
                                            dMax = 1.0d;
                                        }
                                    }
                                }
                            } else if (dArr3 != null) {
                                dMax = 1.0d;
                            } else {
                                dMax = 1.0d;
                            }
                            BattleUnit.Builder builderWisdomPercentBonus = builderWisdom.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                            if (eVar.f817i) {
                                if (w1Var2 != null) {
                                    mapJ0 = w1Var2.J0(str8);
                                } else {
                                    mapJ0 = null;
                                }
                                map7 = mapJ0;
                                if (map7 != null) {
                                    obj5 = map7.get("weapon_effect");
                                } else {
                                    obj5 = null;
                                }
                            } else if (map6 == null) {
                                obj5 = null;
                            } else {
                                map7 = map6;
                                obj5 = map7.get("weapon_effect");
                            }
                            return builderWisdomPercentBonus.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList8).build();
                        }
                        str8 = str5;
                        z4 = true;
                        BattleUnit.Builder builderWisdom2 = builderGeneralSex.evolutionImageStatus(z4).hp(dG + d2).attack(d4).defense(d5).wisdom(d6);
                        if (map6 != null) {
                            strArr = new String[]{"general_orbit", "orbit"};
                            i4 = 2;
                            i5 = 0;
                            while (true) {
                                if (i5 < i4) {
                                    dMax = e(map6.get(strArr[i5]));
                                    if (dMax > 0.0d) {
                                        i5++;
                                        i4 = 2;
                                    }
                                } else if (dArr3 != null) {
                                    dMax = 1.0d;
                                } else {
                                    dMax = 1.0d;
                                }
                            }
                        } else if (dArr3 != null) {
                            dMax = 1.0d;
                        } else {
                            dMax = 1.0d;
                        }
                        BattleUnit.Builder builderWisdomPercentBonus2 = builderWisdom2.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                        if (eVar.f817i) {
                            if (w1Var2 != null) {
                                mapJ0 = w1Var2.J0(str8);
                            } else {
                                mapJ0 = null;
                            }
                            map7 = mapJ0;
                            if (map7 != null) {
                                obj5 = map7.get("weapon_effect");
                            } else {
                                obj5 = null;
                            }
                        } else if (map6 == null) {
                            obj5 = null;
                        } else {
                            map7 = map6;
                            obj5 = map7.get("weapon_effect");
                        }
                        return builderWisdomPercentBonus2.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList8).build();
                    }
                    w1Var = w1VarA1;
                    str5 = strB;
                    str6 = "general_pk_id";
                    it3 = arrayList3.iterator();
                    while (it3.hasNext()) {
                        com.sgscq.vpn.u uVar2 = (com.sgscq.vpn.u) it3.next();
                        str10 = uVar2.f1416a;
                        int i14 = uVar2.f1417b;
                        int i15 = uVar2.f1418c;
                        boolean z13 = eVar.f821m;
                        boolean z14 = eVar.f820l;
                        if (str10 != null) {
                            str11 = str3;
                            str12 = str4;
                            str13 = str2;
                            w1Var3 = w1Var;
                            it4 = it3;
                            battleSkillBuild = null;
                        } else {
                            str11 = str3;
                            str12 = str4;
                            str13 = str2;
                            w1Var3 = w1Var;
                            it4 = it3;
                            battleSkillBuild = null;
                        }
                        if (battleSkillBuild == null) {
                            arrayList5 = arrayList2;
                            enumSet2 = enumSet;
                        } else if (z3) {
                            enumSet2 = enumSet;
                            arrayList5 = arrayList2;
                            arrayList5.add(battleSkillBuild);
                        } else {
                            enumSet2 = enumSet;
                            arrayList5 = arrayList2;
                            arrayList5.add(battleSkillBuild);
                        }
                        arrayList2 = arrayList5;
                        enumSet = enumSet2;
                        it3 = it4;
                        str4 = str12;
                        str3 = str11;
                        str2 = str13;
                        w1Var = w1Var3;
                    }
                    String str23 = str3;
                    String str24 = str2;
                    ArrayList arrayList9 = arrayList2;
                    w1Var2 = w1Var;
                    if (eVar.f813e != null) {
                        map6 = map3;
                    } else {
                        map6 = map3;
                    }
                    BattleUnit.Builder builder2 = BattleUnit.builder(str5);
                    str7 = eVar.f815g;
                    if (str7 != null) {
                        str7 = str5;
                    } else {
                        str7 = str5;
                    }
                    BattleUnit.Builder builderStoryGuest2 = builder2.name(str7).side(eVar.f810b).slot(eVar.f811c).storyGuest(eVar.f816h);
                    if (eVar.f817i) {
                        dArr3 = dArr2;
                        if (dArr2 != null) {
                            if (map6 != null) {
                                d3 = Double.parseDouble(String.valueOf(obj3));
                                i2 = (int) d3;
                            }
                            i2 = 0;
                        } else {
                            if (map6 != null) {
                                d3 = Double.parseDouble(String.valueOf(obj3));
                                i2 = (int) d3;
                            }
                            i2 = 0;
                        }
                    } else {
                        dArr3 = dArr2;
                        if (dArr2 != null) {
                            if (map6 != null) {
                                d3 = Double.parseDouble(String.valueOf(obj3));
                                i2 = (int) d3;
                            }
                            i2 = 0;
                        } else {
                            if (map6 != null) {
                                d3 = Double.parseDouble(String.valueOf(obj3));
                                i2 = (int) d3;
                            }
                            i2 = 0;
                        }
                    }
                    BattleUnit.Builder builderGeneralSex2 = builderStoryGuest2.generalSex(i2);
                    if (map6 == null) {
                        zBooleanValue = false;
                    } else {
                        obj4 = map6.get("evolution_image_status");
                        if (obj4 instanceof Boolean) {
                            zBooleanValue = ((Boolean) obj4).booleanValue();
                        } else {
                            if (obj4 == null) {
                                i3 = 0;
                            } else {
                                i3 = (int) Double.parseDouble(String.valueOf(obj4));
                            }
                            if (i3 == 0) {
                            }
                            zBooleanValue = true;
                        }
                    }
                    if (!zBooleanValue) {
                        map8 = eVar.f813e;
                        str8 = str5;
                        if (map8 == null) {
                            z5 = false;
                        } else {
                            z5 = false;
                        }
                        if (z5) {
                            z4 = false;
                        }
                        BattleUnit.Builder builderWisdom3 = builderGeneralSex2.evolutionImageStatus(z4).hp(dG + d2).attack(d4).defense(d5).wisdom(d6);
                        if (map6 != null) {
                            strArr = new String[]{"general_orbit", "orbit"};
                            i4 = 2;
                            i5 = 0;
                            while (true) {
                                if (i5 < i4) {
                                    dMax = e(map6.get(strArr[i5]));
                                    if (dMax > 0.0d) {
                                        i5++;
                                        i4 = 2;
                                    }
                                } else if (dArr3 != null) {
                                    dMax = 1.0d;
                                } else {
                                    dMax = 1.0d;
                                }
                            }
                        } else if (dArr3 != null) {
                            dMax = 1.0d;
                        } else {
                            dMax = 1.0d;
                        }
                        BattleUnit.Builder builderWisdomPercentBonus3 = builderWisdom3.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                        if (eVar.f817i) {
                            if (w1Var2 != null) {
                                mapJ0 = w1Var2.J0(str8);
                            } else {
                                mapJ0 = null;
                            }
                            map7 = mapJ0;
                            if (map7 != null) {
                                obj5 = map7.get("weapon_effect");
                            } else {
                                obj5 = null;
                            }
                        } else if (map6 == null) {
                            obj5 = null;
                        } else {
                            map7 = map6;
                            obj5 = map7.get("weapon_effect");
                        }
                        return builderWisdomPercentBonus3.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList9).build();
                    }
                    str8 = str5;
                    z4 = true;
                    BattleUnit.Builder builderWisdom4 = builderGeneralSex2.evolutionImageStatus(z4).hp(dG + d2).attack(d4).defense(d5).wisdom(d6);
                    if (map6 != null) {
                        strArr = new String[]{"general_orbit", "orbit"};
                        i4 = 2;
                        i5 = 0;
                        while (true) {
                            if (i5 < i4) {
                                dMax = e(map6.get(strArr[i5]));
                                if (dMax > 0.0d) {
                                    i5++;
                                    i4 = 2;
                                }
                            } else if (dArr3 != null) {
                                dMax = 1.0d;
                            } else {
                                dMax = 1.0d;
                            }
                        }
                    } else if (dArr3 != null) {
                        dMax = 1.0d;
                    } else {
                        dMax = 1.0d;
                    }
                    BattleUnit.Builder builderWisdomPercentBonus4 = builderWisdom4.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                    if (eVar.f817i) {
                        if (w1Var2 != null) {
                            mapJ0 = w1Var2.J0(str8);
                        } else {
                            mapJ0 = null;
                        }
                        map7 = mapJ0;
                        if (map7 != null) {
                            obj5 = map7.get("weapon_effect");
                        } else {
                            obj5 = null;
                        }
                    } else if (map6 == null) {
                        obj5 = null;
                    } else {
                        map7 = map6;
                        obj5 = map7.get("weapon_effect");
                    }
                    return builderWisdomPercentBonus4.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList9).build();
                }
                dG4 = f(map10, "general_wisdom", eVar.r);
                arrayList = new ArrayList();
                enumSetNoneOf = EnumSet.noneOf(BattleSkillType.class);
                if (eVar.f817i) {
                    z = false;
                } else {
                    z = false;
                }
                strT0 = eVar.f822n;
                if (strT0 != null) {
                    if (eVar.f817i) {
                        map = eVar.f812d;
                        if (map == null) {
                            obj = null;
                        } else {
                            obj = map.get("general_naturalskill_id");
                        }
                        strT0 = b(obj);
                        if (strT0.isEmpty()) {
                            strT0 = w1.P(strB);
                        }
                    } else {
                        strT0 = w1VarA1.T0(strB);
                    }
                } else if (eVar.f817i) {
                    map = eVar.f812d;
                    if (map == null) {
                        obj = null;
                    } else {
                        obj = map.get("general_naturalskill_id");
                    }
                    strT0 = b(obj);
                    if (strT0.isEmpty()) {
                        strT0 = w1.P(strB);
                    }
                } else {
                    strT0 = w1VarA1.T0(strB);
                }
                z2 = eVar.f817i;
                double d8 = dG4;
                if (z2) {
                    map2 = eVar.f812d;
                } else {
                    map2 = eVar.f812d;
                }
                dArr2 = dArrK0;
                if (z2) {
                    arrayList2 = arrayList;
                    enumSet = enumSetNoneOf;
                    z3 = z;
                    map3 = map10;
                    str2 = str;
                } else {
                    arrayList2 = arrayList;
                    enumSet = enumSetNoneOf;
                    z3 = z;
                    map3 = map10;
                    str2 = str;
                }
                arrayList3 = new ArrayList();
                linkedHashSet = new LinkedHashSet();
                com.sgscq.vpn.v.a(arrayList3, linkedHashSet, strT0, 0, 1);
                str3 = "null";
                str4 = "0";
                if (map2 == null) {
                    str5 = strB;
                    com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map2.get("gSkill"));
                    com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map2.get("general_skills"));
                    obj2 = map2.get("bound_lieutenants");
                    w1Var = w1VarA1;
                    if (!(obj2 instanceof List)) {
                        arrayList4 = new ArrayList();
                        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                        strJ = c.a.j(map2, "general_pk_id", "", str2);
                        it = ((List) obj2).iterator();
                        while (it.hasNext()) {
                            String str110 = str15;
                            next = it.next();
                            Iterator it10 = it;
                            if (!(next instanceof Map)) {
                                map5 = (Map) next;
                                String strValueOf5 = String.valueOf(map5.getOrDefault("major_pk_id", ""));
                                if (strJ.isEmpty()) {
                                    strTrim = String.valueOf(map5.getOrDefault("position", "")).trim();
                                    if (strTrim.isEmpty()) {
                                        arrayList4.add(map5);
                                    } else {
                                        arrayList4.add(map5);
                                    }
                                } else {
                                    strTrim = String.valueOf(map5.getOrDefault("position", "")).trim();
                                    if (strTrim.isEmpty()) {
                                        arrayList4.add(map5);
                                    } else {
                                        arrayList4.add(map5);
                                    }
                                }
                            }
                            str15 = str110;
                            it = it10;
                        }
                        str6 = str15;
                        ArrayList arrayList10 = new ArrayList(arrayList4);
                        arrayList10.addAll(linkedHashMap3.values());
                        it2 = arrayList10.iterator();
                        while (it2.hasNext()) {
                            map4 = (Map) it2.next();
                            size = arrayList3.size();
                            if (map4 == null) {
                                strT1 = "";
                            } else {
                                strD = com.sgscq.vpn.v.d(map4.get("general_id"), map4.get("id"));
                                if (strD.isEmpty()) {
                                    strT1 = "";
                                } else {
                                    strT1 = w1.a1(null).T0(strD);
                                }
                            }
                            Iterator it11 = it2;
                            com.sgscq.vpn.v.a(arrayList3, linkedHashSet, strT1, 0, 1);
                            com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map4.get("gSkill"));
                            com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map4.get("general_skills"));
                            if (arrayList3.size() > size) {
                                com.sgscq.vpn.v.a(arrayList3, linkedHashSet, com.sgscq.vpn.v.d(map4.get("general_naturalskill_id"), map4.get("natural_skill_id")), 0, 1);
                            }
                            it2 = it11;
                        }
                    }
                    it3 = arrayList3.iterator();
                    while (it3.hasNext()) {
                        com.sgscq.vpn.u uVar3 = (com.sgscq.vpn.u) it3.next();
                        str10 = uVar3.f1416a;
                        int i16 = uVar3.f1417b;
                        int i17 = uVar3.f1418c;
                        boolean z15 = eVar.f821m;
                        boolean z16 = eVar.f820l;
                        if (str10 != null) {
                            str11 = str3;
                            str12 = str4;
                            str13 = str2;
                            w1Var3 = w1Var;
                            it4 = it3;
                            battleSkillBuild = null;
                        } else {
                            str11 = str3;
                            str12 = str4;
                            str13 = str2;
                            w1Var3 = w1Var;
                            it4 = it3;
                            battleSkillBuild = null;
                        }
                        if (battleSkillBuild == null) {
                            arrayList5 = arrayList2;
                            enumSet2 = enumSet;
                        } else if (z3) {
                            enumSet2 = enumSet;
                            arrayList5 = arrayList2;
                            arrayList5.add(battleSkillBuild);
                        } else {
                            enumSet2 = enumSet;
                            arrayList5 = arrayList2;
                            arrayList5.add(battleSkillBuild);
                        }
                        arrayList2 = arrayList5;
                        enumSet = enumSet2;
                        it3 = it4;
                        str4 = str12;
                        str3 = str11;
                        str2 = str13;
                        w1Var = w1Var3;
                    }
                    String str25 = str3;
                    String str26 = str2;
                    ArrayList arrayList11 = arrayList2;
                    w1Var2 = w1Var;
                    if (eVar.f813e != null) {
                        map6 = map3;
                    } else {
                        map6 = map3;
                    }
                    BattleUnit.Builder builder3 = BattleUnit.builder(str5);
                    str7 = eVar.f815g;
                    if (str7 != null) {
                        str7 = str5;
                    } else {
                        str7 = str5;
                    }
                    BattleUnit.Builder builderStoryGuest3 = builder3.name(str7).side(eVar.f810b).slot(eVar.f811c).storyGuest(eVar.f816h);
                    if (eVar.f817i) {
                        dArr3 = dArr2;
                        if (dArr2 != null) {
                            if (map6 != null) {
                                d3 = Double.parseDouble(String.valueOf(obj3));
                                i2 = (int) d3;
                            }
                            i2 = 0;
                        } else {
                            if (map6 != null) {
                                d3 = Double.parseDouble(String.valueOf(obj3));
                                i2 = (int) d3;
                            }
                            i2 = 0;
                        }
                    } else {
                        dArr3 = dArr2;
                        if (dArr2 != null) {
                            if (map6 != null) {
                                d3 = Double.parseDouble(String.valueOf(obj3));
                                i2 = (int) d3;
                            }
                            i2 = 0;
                        } else {
                            if (map6 != null) {
                                d3 = Double.parseDouble(String.valueOf(obj3));
                                i2 = (int) d3;
                            }
                            i2 = 0;
                        }
                    }
                    BattleUnit.Builder builderGeneralSex3 = builderStoryGuest3.generalSex(i2);
                    if (map6 == null) {
                        zBooleanValue = false;
                    } else {
                        obj4 = map6.get("evolution_image_status");
                        if (obj4 instanceof Boolean) {
                            zBooleanValue = ((Boolean) obj4).booleanValue();
                        } else {
                            if (obj4 == null) {
                                i3 = 0;
                            } else {
                                i3 = (int) Double.parseDouble(String.valueOf(obj4));
                            }
                            if (i3 == 0) {
                            }
                            zBooleanValue = true;
                        }
                    }
                    if (!zBooleanValue) {
                        map8 = eVar.f813e;
                        str8 = str5;
                        if (map8 == null) {
                            z5 = false;
                        } else {
                            z5 = false;
                        }
                        if (z5) {
                            z4 = false;
                        }
                        BattleUnit.Builder builderWisdom5 = builderGeneralSex3.evolutionImageStatus(z4).hp(dG + d2).attack(d4).defense(d5).wisdom(d8);
                        if (map6 != null) {
                            strArr = new String[]{"general_orbit", "orbit"};
                            i4 = 2;
                            i5 = 0;
                            while (true) {
                                if (i5 < i4) {
                                    dMax = e(map6.get(strArr[i5]));
                                    if (dMax > 0.0d) {
                                        i5++;
                                        i4 = 2;
                                    }
                                } else if (dArr3 != null) {
                                    dMax = 1.0d;
                                } else {
                                    dMax = 1.0d;
                                }
                            }
                        } else if (dArr3 != null) {
                            dMax = 1.0d;
                        } else {
                            dMax = 1.0d;
                        }
                        BattleUnit.Builder builderWisdomPercentBonus5 = builderWisdom5.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                        if (eVar.f817i) {
                            if (w1Var2 != null) {
                                mapJ0 = w1Var2.J0(str8);
                            } else {
                                mapJ0 = null;
                            }
                            map7 = mapJ0;
                            if (map7 != null) {
                                obj5 = map7.get("weapon_effect");
                            } else {
                                obj5 = null;
                            }
                        } else if (map6 == null) {
                            obj5 = null;
                        } else {
                            map7 = map6;
                            obj5 = map7.get("weapon_effect");
                        }
                        return builderWisdomPercentBonus5.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList11).build();
                    }
                    str8 = str5;
                    z4 = true;
                    BattleUnit.Builder builderWisdom6 = builderGeneralSex3.evolutionImageStatus(z4).hp(dG + d2).attack(d4).defense(d5).wisdom(d8);
                    if (map6 != null) {
                        strArr = new String[]{"general_orbit", "orbit"};
                        i4 = 2;
                        i5 = 0;
                        while (true) {
                            if (i5 < i4) {
                                dMax = e(map6.get(strArr[i5]));
                                if (dMax > 0.0d) {
                                    i5++;
                                    i4 = 2;
                                }
                            } else if (dArr3 != null) {
                                dMax = 1.0d;
                            } else {
                                dMax = 1.0d;
                            }
                        }
                    } else if (dArr3 != null) {
                        dMax = 1.0d;
                    } else {
                        dMax = 1.0d;
                    }
                    BattleUnit.Builder builderWisdomPercentBonus6 = builderWisdom6.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                    if (eVar.f817i) {
                        if (w1Var2 != null) {
                            mapJ0 = w1Var2.J0(str8);
                        } else {
                            mapJ0 = null;
                        }
                        map7 = mapJ0;
                        if (map7 != null) {
                            obj5 = map7.get("weapon_effect");
                        } else {
                            obj5 = null;
                        }
                    } else if (map6 == null) {
                        obj5 = null;
                    } else {
                        map7 = map6;
                        obj5 = map7.get("weapon_effect");
                    }
                    return builderWisdomPercentBonus6.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList11).build();
                }
                w1Var = w1VarA1;
                str5 = strB;
                str6 = "general_pk_id";
                it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    com.sgscq.vpn.u uVar4 = (com.sgscq.vpn.u) it3.next();
                    str10 = uVar4.f1416a;
                    int i18 = uVar4.f1417b;
                    int i19 = uVar4.f1418c;
                    boolean z17 = eVar.f821m;
                    boolean z18 = eVar.f820l;
                    if (str10 != null) {
                        str11 = str3;
                        str12 = str4;
                        str13 = str2;
                        w1Var3 = w1Var;
                        it4 = it3;
                        battleSkillBuild = null;
                    } else {
                        str11 = str3;
                        str12 = str4;
                        str13 = str2;
                        w1Var3 = w1Var;
                        it4 = it3;
                        battleSkillBuild = null;
                    }
                    if (battleSkillBuild == null) {
                        arrayList5 = arrayList2;
                        enumSet2 = enumSet;
                    } else if (z3) {
                        enumSet2 = enumSet;
                        arrayList5 = arrayList2;
                        arrayList5.add(battleSkillBuild);
                    } else {
                        enumSet2 = enumSet;
                        arrayList5 = arrayList2;
                        arrayList5.add(battleSkillBuild);
                    }
                    arrayList2 = arrayList5;
                    enumSet = enumSet2;
                    it3 = it4;
                    str4 = str12;
                    str3 = str11;
                    str2 = str13;
                    w1Var = w1Var3;
                }
                String str27 = str3;
                String str28 = str2;
                ArrayList arrayList12 = arrayList2;
                w1Var2 = w1Var;
                if (eVar.f813e != null) {
                    map6 = map3;
                } else {
                    map6 = map3;
                }
                BattleUnit.Builder builder4 = BattleUnit.builder(str5);
                str7 = eVar.f815g;
                if (str7 != null) {
                    str7 = str5;
                } else {
                    str7 = str5;
                }
                BattleUnit.Builder builderStoryGuest4 = builder4.name(str7).side(eVar.f810b).slot(eVar.f811c).storyGuest(eVar.f816h);
                if (eVar.f817i) {
                    dArr3 = dArr2;
                    if (dArr2 != null) {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    } else {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    }
                } else {
                    dArr3 = dArr2;
                    if (dArr2 != null) {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    } else {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    }
                }
                BattleUnit.Builder builderGeneralSex4 = builderStoryGuest4.generalSex(i2);
                if (map6 == null) {
                    zBooleanValue = false;
                } else {
                    obj4 = map6.get("evolution_image_status");
                    if (obj4 instanceof Boolean) {
                        zBooleanValue = ((Boolean) obj4).booleanValue();
                    } else {
                        if (obj4 == null) {
                            i3 = 0;
                        } else {
                            i3 = (int) Double.parseDouble(String.valueOf(obj4));
                        }
                        if (i3 == 0) {
                        }
                        zBooleanValue = true;
                    }
                }
                if (!zBooleanValue) {
                    map8 = eVar.f813e;
                    str8 = str5;
                    if (map8 == null) {
                        z5 = false;
                    } else {
                        z5 = false;
                    }
                    if (z5) {
                        z4 = false;
                    }
                    BattleUnit.Builder builderWisdom7 = builderGeneralSex4.evolutionImageStatus(z4).hp(dG + d2).attack(d4).defense(d5).wisdom(d8);
                    if (map6 != null) {
                        strArr = new String[]{"general_orbit", "orbit"};
                        i4 = 2;
                        i5 = 0;
                        while (true) {
                            if (i5 < i4) {
                                dMax = e(map6.get(strArr[i5]));
                                if (dMax > 0.0d) {
                                    i5++;
                                    i4 = 2;
                                }
                            } else if (dArr3 != null) {
                                dMax = 1.0d;
                            } else {
                                dMax = 1.0d;
                            }
                        }
                    } else if (dArr3 != null) {
                        dMax = 1.0d;
                    } else {
                        dMax = 1.0d;
                    }
                    BattleUnit.Builder builderWisdomPercentBonus7 = builderWisdom7.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                    if (eVar.f817i) {
                        if (w1Var2 != null) {
                            mapJ0 = w1Var2.J0(str8);
                        } else {
                            mapJ0 = null;
                        }
                        map7 = mapJ0;
                        if (map7 != null) {
                            obj5 = map7.get("weapon_effect");
                        } else {
                            obj5 = null;
                        }
                    } else if (map6 == null) {
                        obj5 = null;
                    } else {
                        map7 = map6;
                        obj5 = map7.get("weapon_effect");
                    }
                    return builderWisdomPercentBonus7.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList12).build();
                }
                str8 = str5;
                z4 = true;
                BattleUnit.Builder builderWisdom8 = builderGeneralSex4.evolutionImageStatus(z4).hp(dG + d2).attack(d4).defense(d5).wisdom(d8);
                if (map6 != null) {
                    strArr = new String[]{"general_orbit", "orbit"};
                    i4 = 2;
                    i5 = 0;
                    while (true) {
                        if (i5 < i4) {
                            dMax = e(map6.get(strArr[i5]));
                            if (dMax > 0.0d) {
                                i5++;
                                i4 = 2;
                            }
                        } else if (dArr3 != null) {
                            dMax = 1.0d;
                        } else {
                            dMax = 1.0d;
                        }
                    }
                } else if (dArr3 != null) {
                    dMax = 1.0d;
                } else {
                    dMax = 1.0d;
                }
                BattleUnit.Builder builderWisdomPercentBonus8 = builderWisdom8.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                if (eVar.f817i) {
                    if (w1Var2 != null) {
                        mapJ0 = w1Var2.J0(str8);
                    } else {
                        mapJ0 = null;
                    }
                    map7 = mapJ0;
                    if (map7 != null) {
                        obj5 = map7.get("weapon_effect");
                    } else {
                        obj5 = null;
                    }
                } else if (map6 == null) {
                    obj5 = null;
                } else {
                    map7 = map6;
                    obj5 = map7.get("weapon_effect");
                }
                return builderWisdomPercentBonus8.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList12).build();
            }
            dG3 = f(map10, "general_defense", eVar.f825q);
            double d9 = dG3;
            if (eVar.f817i) {
                if (t1Var != 0) {
                    dG4 = t1Var.f1390l;
                } else {
                    dG4 = g(map10, dArrK0, 3, eVar.f816h, eVar.r, "general_wisdom_attr", "attr_wisdom", "general_wisdom", "wis", "wisdom", "base_wisdom");
                }
                arrayList = new ArrayList();
                enumSetNoneOf = EnumSet.noneOf(BattleSkillType.class);
                if (eVar.f817i) {
                    z = false;
                } else {
                    z = false;
                }
                strT0 = eVar.f822n;
                if (strT0 != null) {
                    if (eVar.f817i) {
                        map = eVar.f812d;
                        if (map == null) {
                            obj = null;
                        } else {
                            obj = map.get("general_naturalskill_id");
                        }
                        strT0 = b(obj);
                        if (strT0.isEmpty()) {
                            strT0 = w1.P(strB);
                        }
                    } else {
                        strT0 = w1VarA1.T0(strB);
                    }
                } else if (eVar.f817i) {
                    map = eVar.f812d;
                    if (map == null) {
                        obj = null;
                    } else {
                        obj = map.get("general_naturalskill_id");
                    }
                    strT0 = b(obj);
                    if (strT0.isEmpty()) {
                        strT0 = w1.P(strB);
                    }
                } else {
                    strT0 = w1VarA1.T0(strB);
                }
                z2 = eVar.f817i;
                double d10 = dG4;
                if (z2) {
                    map2 = eVar.f812d;
                } else {
                    map2 = eVar.f812d;
                }
                dArr2 = dArrK0;
                if (z2) {
                    arrayList2 = arrayList;
                    enumSet = enumSetNoneOf;
                    z3 = z;
                    map3 = map10;
                    str2 = str;
                } else {
                    arrayList2 = arrayList;
                    enumSet = enumSetNoneOf;
                    z3 = z;
                    map3 = map10;
                    str2 = str;
                }
                arrayList3 = new ArrayList();
                linkedHashSet = new LinkedHashSet();
                com.sgscq.vpn.v.a(arrayList3, linkedHashSet, strT0, 0, 1);
                str3 = "null";
                str4 = "0";
                if (map2 == null) {
                    str5 = strB;
                    com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map2.get("gSkill"));
                    com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map2.get("general_skills"));
                    obj2 = map2.get("bound_lieutenants");
                    w1Var = w1VarA1;
                    if (!(obj2 instanceof List)) {
                        arrayList4 = new ArrayList();
                        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                        strJ = c.a.j(map2, "general_pk_id", "", str2);
                        it = ((List) obj2).iterator();
                        while (it.hasNext()) {
                            String str111 = str15;
                            next = it.next();
                            Iterator it12 = it;
                            if (!(next instanceof Map)) {
                                map5 = (Map) next;
                                String strValueOf6 = String.valueOf(map5.getOrDefault("major_pk_id", ""));
                                if (strJ.isEmpty()) {
                                    strTrim = String.valueOf(map5.getOrDefault("position", "")).trim();
                                    if (strTrim.isEmpty()) {
                                        arrayList4.add(map5);
                                    } else {
                                        arrayList4.add(map5);
                                    }
                                } else {
                                    strTrim = String.valueOf(map5.getOrDefault("position", "")).trim();
                                    if (strTrim.isEmpty()) {
                                        arrayList4.add(map5);
                                    } else {
                                        arrayList4.add(map5);
                                    }
                                }
                            }
                            str15 = str111;
                            it = it12;
                        }
                        str6 = str15;
                        ArrayList arrayList13 = new ArrayList(arrayList4);
                        arrayList13.addAll(linkedHashMap4.values());
                        it2 = arrayList13.iterator();
                        while (it2.hasNext()) {
                            map4 = (Map) it2.next();
                            size = arrayList3.size();
                            if (map4 == null) {
                                strT1 = "";
                            } else {
                                strD = com.sgscq.vpn.v.d(map4.get("general_id"), map4.get("id"));
                                if (strD.isEmpty()) {
                                    strT1 = "";
                                } else {
                                    strT1 = w1.a1(null).T0(strD);
                                }
                            }
                            Iterator it13 = it2;
                            com.sgscq.vpn.v.a(arrayList3, linkedHashSet, strT1, 0, 1);
                            com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map4.get("gSkill"));
                            com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map4.get("general_skills"));
                            if (arrayList3.size() > size) {
                                com.sgscq.vpn.v.a(arrayList3, linkedHashSet, com.sgscq.vpn.v.d(map4.get("general_naturalskill_id"), map4.get("natural_skill_id")), 0, 1);
                            }
                            it2 = it13;
                        }
                    }
                    it3 = arrayList3.iterator();
                    while (it3.hasNext()) {
                        com.sgscq.vpn.u uVar5 = (com.sgscq.vpn.u) it3.next();
                        str10 = uVar5.f1416a;
                        int i110 = uVar5.f1417b;
                        int i111 = uVar5.f1418c;
                        boolean z19 = eVar.f821m;
                        boolean z110 = eVar.f820l;
                        if (str10 != null) {
                            str11 = str3;
                            str12 = str4;
                            str13 = str2;
                            w1Var3 = w1Var;
                            it4 = it3;
                            battleSkillBuild = null;
                        } else {
                            str11 = str3;
                            str12 = str4;
                            str13 = str2;
                            w1Var3 = w1Var;
                            it4 = it3;
                            battleSkillBuild = null;
                        }
                        if (battleSkillBuild == null) {
                            arrayList5 = arrayList2;
                            enumSet2 = enumSet;
                        } else if (z3) {
                            enumSet2 = enumSet;
                            arrayList5 = arrayList2;
                            arrayList5.add(battleSkillBuild);
                        } else {
                            enumSet2 = enumSet;
                            arrayList5 = arrayList2;
                            arrayList5.add(battleSkillBuild);
                        }
                        arrayList2 = arrayList5;
                        enumSet = enumSet2;
                        it3 = it4;
                        str4 = str12;
                        str3 = str11;
                        str2 = str13;
                        w1Var = w1Var3;
                    }
                    String str29 = str3;
                    String str210 = str2;
                    ArrayList arrayList14 = arrayList2;
                    w1Var2 = w1Var;
                    if (eVar.f813e != null) {
                        map6 = map3;
                    } else {
                        map6 = map3;
                    }
                    BattleUnit.Builder builder5 = BattleUnit.builder(str5);
                    str7 = eVar.f815g;
                    if (str7 != null) {
                        str7 = str5;
                    } else {
                        str7 = str5;
                    }
                    BattleUnit.Builder builderStoryGuest5 = builder5.name(str7).side(eVar.f810b).slot(eVar.f811c).storyGuest(eVar.f816h);
                    if (eVar.f817i) {
                        dArr3 = dArr2;
                        if (dArr2 != null) {
                            if (map6 != null) {
                                d3 = Double.parseDouble(String.valueOf(obj3));
                                i2 = (int) d3;
                            }
                            i2 = 0;
                        } else {
                            if (map6 != null) {
                                d3 = Double.parseDouble(String.valueOf(obj3));
                                i2 = (int) d3;
                            }
                            i2 = 0;
                        }
                    } else {
                        dArr3 = dArr2;
                        if (dArr2 != null) {
                            if (map6 != null) {
                                d3 = Double.parseDouble(String.valueOf(obj3));
                                i2 = (int) d3;
                            }
                            i2 = 0;
                        } else {
                            if (map6 != null) {
                                d3 = Double.parseDouble(String.valueOf(obj3));
                                i2 = (int) d3;
                            }
                            i2 = 0;
                        }
                    }
                    BattleUnit.Builder builderGeneralSex5 = builderStoryGuest5.generalSex(i2);
                    if (map6 == null) {
                        zBooleanValue = false;
                    } else {
                        obj4 = map6.get("evolution_image_status");
                        if (obj4 instanceof Boolean) {
                            zBooleanValue = ((Boolean) obj4).booleanValue();
                        } else {
                            if (obj4 == null) {
                                i3 = 0;
                            } else {
                                i3 = (int) Double.parseDouble(String.valueOf(obj4));
                            }
                            if (i3 == 0) {
                            }
                            zBooleanValue = true;
                        }
                    }
                    if (!zBooleanValue) {
                        map8 = eVar.f813e;
                        str8 = str5;
                        if (map8 == null) {
                            z5 = false;
                        } else {
                            z5 = false;
                        }
                        if (z5) {
                            z4 = false;
                        }
                        BattleUnit.Builder builderWisdom9 = builderGeneralSex5.evolutionImageStatus(z4).hp(dG + d2).attack(d4).defense(d9).wisdom(d10);
                        if (map6 != null) {
                            strArr = new String[]{"general_orbit", "orbit"};
                            i4 = 2;
                            i5 = 0;
                            while (true) {
                                if (i5 < i4) {
                                    dMax = e(map6.get(strArr[i5]));
                                    if (dMax > 0.0d) {
                                        i5++;
                                        i4 = 2;
                                    }
                                } else if (dArr3 != null) {
                                    dMax = 1.0d;
                                } else {
                                    dMax = 1.0d;
                                }
                            }
                        } else if (dArr3 != null) {
                            dMax = 1.0d;
                        } else {
                            dMax = 1.0d;
                        }
                        BattleUnit.Builder builderWisdomPercentBonus9 = builderWisdom9.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                        if (eVar.f817i) {
                            if (w1Var2 != null) {
                                mapJ0 = w1Var2.J0(str8);
                            } else {
                                mapJ0 = null;
                            }
                            map7 = mapJ0;
                            if (map7 != null) {
                                obj5 = map7.get("weapon_effect");
                            } else {
                                obj5 = null;
                            }
                        } else if (map6 == null) {
                            obj5 = null;
                        } else {
                            map7 = map6;
                            obj5 = map7.get("weapon_effect");
                        }
                        return builderWisdomPercentBonus9.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList14).build();
                    }
                    str8 = str5;
                    z4 = true;
                    BattleUnit.Builder builderWisdom10 = builderGeneralSex5.evolutionImageStatus(z4).hp(dG + d2).attack(d4).defense(d9).wisdom(d10);
                    if (map6 != null) {
                        strArr = new String[]{"general_orbit", "orbit"};
                        i4 = 2;
                        i5 = 0;
                        while (true) {
                            if (i5 < i4) {
                                dMax = e(map6.get(strArr[i5]));
                                if (dMax > 0.0d) {
                                    i5++;
                                    i4 = 2;
                                }
                            } else if (dArr3 != null) {
                                dMax = 1.0d;
                            } else {
                                dMax = 1.0d;
                            }
                        }
                    } else if (dArr3 != null) {
                        dMax = 1.0d;
                    } else {
                        dMax = 1.0d;
                    }
                    BattleUnit.Builder builderWisdomPercentBonus10 = builderWisdom10.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                    if (eVar.f817i) {
                        if (w1Var2 != null) {
                            mapJ0 = w1Var2.J0(str8);
                        } else {
                            mapJ0 = null;
                        }
                        map7 = mapJ0;
                        if (map7 != null) {
                            obj5 = map7.get("weapon_effect");
                        } else {
                            obj5 = null;
                        }
                    } else if (map6 == null) {
                        obj5 = null;
                    } else {
                        map7 = map6;
                        obj5 = map7.get("weapon_effect");
                    }
                    return builderWisdomPercentBonus10.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList14).build();
                }
                w1Var = w1VarA1;
                str5 = strB;
                str6 = "general_pk_id";
                it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    com.sgscq.vpn.u uVar6 = (com.sgscq.vpn.u) it3.next();
                    str10 = uVar6.f1416a;
                    int i112 = uVar6.f1417b;
                    int i113 = uVar6.f1418c;
                    boolean z111 = eVar.f821m;
                    boolean z112 = eVar.f820l;
                    if (str10 != null) {
                        str11 = str3;
                        str12 = str4;
                        str13 = str2;
                        w1Var3 = w1Var;
                        it4 = it3;
                        battleSkillBuild = null;
                    } else {
                        str11 = str3;
                        str12 = str4;
                        str13 = str2;
                        w1Var3 = w1Var;
                        it4 = it3;
                        battleSkillBuild = null;
                    }
                    if (battleSkillBuild == null) {
                        arrayList5 = arrayList2;
                        enumSet2 = enumSet;
                    } else if (z3) {
                        enumSet2 = enumSet;
                        arrayList5 = arrayList2;
                        arrayList5.add(battleSkillBuild);
                    } else {
                        enumSet2 = enumSet;
                        arrayList5 = arrayList2;
                        arrayList5.add(battleSkillBuild);
                    }
                    arrayList2 = arrayList5;
                    enumSet = enumSet2;
                    it3 = it4;
                    str4 = str12;
                    str3 = str11;
                    str2 = str13;
                    w1Var = w1Var3;
                }
                String str211 = str3;
                String str212 = str2;
                ArrayList arrayList15 = arrayList2;
                w1Var2 = w1Var;
                if (eVar.f813e != null) {
                    map6 = map3;
                } else {
                    map6 = map3;
                }
                BattleUnit.Builder builder6 = BattleUnit.builder(str5);
                str7 = eVar.f815g;
                if (str7 != null) {
                    str7 = str5;
                } else {
                    str7 = str5;
                }
                BattleUnit.Builder builderStoryGuest6 = builder6.name(str7).side(eVar.f810b).slot(eVar.f811c).storyGuest(eVar.f816h);
                if (eVar.f817i) {
                    dArr3 = dArr2;
                    if (dArr2 != null) {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    } else {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    }
                } else {
                    dArr3 = dArr2;
                    if (dArr2 != null) {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    } else {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    }
                }
                BattleUnit.Builder builderGeneralSex6 = builderStoryGuest6.generalSex(i2);
                if (map6 == null) {
                    zBooleanValue = false;
                } else {
                    obj4 = map6.get("evolution_image_status");
                    if (obj4 instanceof Boolean) {
                        zBooleanValue = ((Boolean) obj4).booleanValue();
                    } else {
                        if (obj4 == null) {
                            i3 = 0;
                        } else {
                            i3 = (int) Double.parseDouble(String.valueOf(obj4));
                        }
                        if (i3 == 0) {
                        }
                        zBooleanValue = true;
                    }
                }
                if (!zBooleanValue) {
                    map8 = eVar.f813e;
                    str8 = str5;
                    if (map8 == null) {
                        z5 = false;
                    } else {
                        z5 = false;
                    }
                    if (z5) {
                        z4 = false;
                    }
                    BattleUnit.Builder builderWisdom11 = builderGeneralSex6.evolutionImageStatus(z4).hp(dG + d2).attack(d4).defense(d9).wisdom(d10);
                    if (map6 != null) {
                        strArr = new String[]{"general_orbit", "orbit"};
                        i4 = 2;
                        i5 = 0;
                        while (true) {
                            if (i5 < i4) {
                                dMax = e(map6.get(strArr[i5]));
                                if (dMax > 0.0d) {
                                    i5++;
                                    i4 = 2;
                                }
                            } else if (dArr3 != null) {
                                dMax = 1.0d;
                            } else {
                                dMax = 1.0d;
                            }
                        }
                    } else if (dArr3 != null) {
                        dMax = 1.0d;
                    } else {
                        dMax = 1.0d;
                    }
                    BattleUnit.Builder builderWisdomPercentBonus11 = builderWisdom11.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                    if (eVar.f817i) {
                        if (w1Var2 != null) {
                            mapJ0 = w1Var2.J0(str8);
                        } else {
                            mapJ0 = null;
                        }
                        map7 = mapJ0;
                        if (map7 != null) {
                            obj5 = map7.get("weapon_effect");
                        } else {
                            obj5 = null;
                        }
                    } else if (map6 == null) {
                        obj5 = null;
                    } else {
                        map7 = map6;
                        obj5 = map7.get("weapon_effect");
                    }
                    return builderWisdomPercentBonus11.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList15).build();
                }
                str8 = str5;
                z4 = true;
                BattleUnit.Builder builderWisdom12 = builderGeneralSex6.evolutionImageStatus(z4).hp(dG + d2).attack(d4).defense(d9).wisdom(d10);
                if (map6 != null) {
                    strArr = new String[]{"general_orbit", "orbit"};
                    i4 = 2;
                    i5 = 0;
                    while (true) {
                        if (i5 < i4) {
                            dMax = e(map6.get(strArr[i5]));
                            if (dMax > 0.0d) {
                                i5++;
                                i4 = 2;
                            }
                        } else if (dArr3 != null) {
                            dMax = 1.0d;
                        } else {
                            dMax = 1.0d;
                        }
                    }
                } else if (dArr3 != null) {
                    dMax = 1.0d;
                } else {
                    dMax = 1.0d;
                }
                BattleUnit.Builder builderWisdomPercentBonus12 = builderWisdom12.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                if (eVar.f817i) {
                    if (w1Var2 != null) {
                        mapJ0 = w1Var2.J0(str8);
                    } else {
                        mapJ0 = null;
                    }
                    map7 = mapJ0;
                    if (map7 != null) {
                        obj5 = map7.get("weapon_effect");
                    } else {
                        obj5 = null;
                    }
                } else if (map6 == null) {
                    obj5 = null;
                } else {
                    map7 = map6;
                    obj5 = map7.get("weapon_effect");
                }
                return builderWisdomPercentBonus12.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList15).build();
            }
            dG4 = f(map10, "general_wisdom", eVar.r);
            arrayList = new ArrayList();
            enumSetNoneOf = EnumSet.noneOf(BattleSkillType.class);
            if (eVar.f817i) {
                z = false;
            } else {
                z = false;
            }
            strT0 = eVar.f822n;
            if (strT0 != null) {
                if (eVar.f817i) {
                    map = eVar.f812d;
                    if (map == null) {
                        obj = null;
                    } else {
                        obj = map.get("general_naturalskill_id");
                    }
                    strT0 = b(obj);
                    if (strT0.isEmpty()) {
                        strT0 = w1.P(strB);
                    }
                } else {
                    strT0 = w1VarA1.T0(strB);
                }
            } else if (eVar.f817i) {
                map = eVar.f812d;
                if (map == null) {
                    obj = null;
                } else {
                    obj = map.get("general_naturalskill_id");
                }
                strT0 = b(obj);
                if (strT0.isEmpty()) {
                    strT0 = w1.P(strB);
                }
            } else {
                strT0 = w1VarA1.T0(strB);
            }
            z2 = eVar.f817i;
            double d11 = dG4;
            if (z2) {
                map2 = eVar.f812d;
            } else {
                map2 = eVar.f812d;
            }
            dArr2 = dArrK0;
            if (z2) {
                arrayList2 = arrayList;
                enumSet = enumSetNoneOf;
                z3 = z;
                map3 = map10;
                str2 = str;
            } else {
                arrayList2 = arrayList;
                enumSet = enumSetNoneOf;
                z3 = z;
                map3 = map10;
                str2 = str;
            }
            arrayList3 = new ArrayList();
            linkedHashSet = new LinkedHashSet();
            com.sgscq.vpn.v.a(arrayList3, linkedHashSet, strT0, 0, 1);
            str3 = "null";
            str4 = "0";
            if (map2 == null) {
                str5 = strB;
                com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map2.get("gSkill"));
                com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map2.get("general_skills"));
                obj2 = map2.get("bound_lieutenants");
                w1Var = w1VarA1;
                if (!(obj2 instanceof List)) {
                    arrayList4 = new ArrayList();
                    LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                    strJ = c.a.j(map2, "general_pk_id", "", str2);
                    it = ((List) obj2).iterator();
                    while (it.hasNext()) {
                        String str112 = str15;
                        next = it.next();
                        Iterator it14 = it;
                        if (!(next instanceof Map)) {
                            map5 = (Map) next;
                            String strValueOf7 = String.valueOf(map5.getOrDefault("major_pk_id", ""));
                            if (strJ.isEmpty()) {
                                strTrim = String.valueOf(map5.getOrDefault("position", "")).trim();
                                if (strTrim.isEmpty()) {
                                    arrayList4.add(map5);
                                } else {
                                    arrayList4.add(map5);
                                }
                            } else {
                                strTrim = String.valueOf(map5.getOrDefault("position", "")).trim();
                                if (strTrim.isEmpty()) {
                                    arrayList4.add(map5);
                                } else {
                                    arrayList4.add(map5);
                                }
                            }
                        }
                        str15 = str112;
                        it = it14;
                    }
                    str6 = str15;
                    ArrayList arrayList16 = new ArrayList(arrayList4);
                    arrayList16.addAll(linkedHashMap5.values());
                    it2 = arrayList16.iterator();
                    while (it2.hasNext()) {
                        map4 = (Map) it2.next();
                        size = arrayList3.size();
                        if (map4 == null) {
                            strT1 = "";
                        } else {
                            strD = com.sgscq.vpn.v.d(map4.get("general_id"), map4.get("id"));
                            if (strD.isEmpty()) {
                                strT1 = "";
                            } else {
                                strT1 = w1.a1(null).T0(strD);
                            }
                        }
                        Iterator it15 = it2;
                        com.sgscq.vpn.v.a(arrayList3, linkedHashSet, strT1, 0, 1);
                        com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map4.get("gSkill"));
                        com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map4.get("general_skills"));
                        if (arrayList3.size() > size) {
                            com.sgscq.vpn.v.a(arrayList3, linkedHashSet, com.sgscq.vpn.v.d(map4.get("general_naturalskill_id"), map4.get("natural_skill_id")), 0, 1);
                        }
                        it2 = it15;
                    }
                }
                it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    com.sgscq.vpn.u uVar7 = (com.sgscq.vpn.u) it3.next();
                    str10 = uVar7.f1416a;
                    int i114 = uVar7.f1417b;
                    int i115 = uVar7.f1418c;
                    boolean z113 = eVar.f821m;
                    boolean z114 = eVar.f820l;
                    if (str10 != null) {
                        str11 = str3;
                        str12 = str4;
                        str13 = str2;
                        w1Var3 = w1Var;
                        it4 = it3;
                        battleSkillBuild = null;
                    } else {
                        str11 = str3;
                        str12 = str4;
                        str13 = str2;
                        w1Var3 = w1Var;
                        it4 = it3;
                        battleSkillBuild = null;
                    }
                    if (battleSkillBuild == null) {
                        arrayList5 = arrayList2;
                        enumSet2 = enumSet;
                    } else if (z3) {
                        enumSet2 = enumSet;
                        arrayList5 = arrayList2;
                        arrayList5.add(battleSkillBuild);
                    } else {
                        enumSet2 = enumSet;
                        arrayList5 = arrayList2;
                        arrayList5.add(battleSkillBuild);
                    }
                    arrayList2 = arrayList5;
                    enumSet = enumSet2;
                    it3 = it4;
                    str4 = str12;
                    str3 = str11;
                    str2 = str13;
                    w1Var = w1Var3;
                }
                String str213 = str3;
                String str214 = str2;
                ArrayList arrayList17 = arrayList2;
                w1Var2 = w1Var;
                if (eVar.f813e != null) {
                    map6 = map3;
                } else {
                    map6 = map3;
                }
                BattleUnit.Builder builder7 = BattleUnit.builder(str5);
                str7 = eVar.f815g;
                if (str7 != null) {
                    str7 = str5;
                } else {
                    str7 = str5;
                }
                BattleUnit.Builder builderStoryGuest7 = builder7.name(str7).side(eVar.f810b).slot(eVar.f811c).storyGuest(eVar.f816h);
                if (eVar.f817i) {
                    dArr3 = dArr2;
                    if (dArr2 != null) {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    } else {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    }
                } else {
                    dArr3 = dArr2;
                    if (dArr2 != null) {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    } else {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    }
                }
                BattleUnit.Builder builderGeneralSex7 = builderStoryGuest7.generalSex(i2);
                if (map6 == null) {
                    zBooleanValue = false;
                } else {
                    obj4 = map6.get("evolution_image_status");
                    if (obj4 instanceof Boolean) {
                        zBooleanValue = ((Boolean) obj4).booleanValue();
                    } else {
                        if (obj4 == null) {
                            i3 = 0;
                        } else {
                            i3 = (int) Double.parseDouble(String.valueOf(obj4));
                        }
                        if (i3 == 0) {
                        }
                        zBooleanValue = true;
                    }
                }
                if (!zBooleanValue) {
                    map8 = eVar.f813e;
                    str8 = str5;
                    if (map8 == null) {
                        z5 = false;
                    } else {
                        z5 = false;
                    }
                    if (z5) {
                        z4 = false;
                    }
                    BattleUnit.Builder builderWisdom13 = builderGeneralSex7.evolutionImageStatus(z4).hp(dG + d2).attack(d4).defense(d9).wisdom(d11);
                    if (map6 != null) {
                        strArr = new String[]{"general_orbit", "orbit"};
                        i4 = 2;
                        i5 = 0;
                        while (true) {
                            if (i5 < i4) {
                                dMax = e(map6.get(strArr[i5]));
                                if (dMax > 0.0d) {
                                    i5++;
                                    i4 = 2;
                                }
                            } else if (dArr3 != null) {
                                dMax = 1.0d;
                            } else {
                                dMax = 1.0d;
                            }
                        }
                    } else if (dArr3 != null) {
                        dMax = 1.0d;
                    } else {
                        dMax = 1.0d;
                    }
                    BattleUnit.Builder builderWisdomPercentBonus13 = builderWisdom13.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                    if (eVar.f817i) {
                        if (w1Var2 != null) {
                            mapJ0 = w1Var2.J0(str8);
                        } else {
                            mapJ0 = null;
                        }
                        map7 = mapJ0;
                        if (map7 != null) {
                            obj5 = map7.get("weapon_effect");
                        } else {
                            obj5 = null;
                        }
                    } else if (map6 == null) {
                        obj5 = null;
                    } else {
                        map7 = map6;
                        obj5 = map7.get("weapon_effect");
                    }
                    return builderWisdomPercentBonus13.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList17).build();
                }
                str8 = str5;
                z4 = true;
                BattleUnit.Builder builderWisdom14 = builderGeneralSex7.evolutionImageStatus(z4).hp(dG + d2).attack(d4).defense(d9).wisdom(d11);
                if (map6 != null) {
                    strArr = new String[]{"general_orbit", "orbit"};
                    i4 = 2;
                    i5 = 0;
                    while (true) {
                        if (i5 < i4) {
                            dMax = e(map6.get(strArr[i5]));
                            if (dMax > 0.0d) {
                                i5++;
                                i4 = 2;
                            }
                        } else if (dArr3 != null) {
                            dMax = 1.0d;
                        } else {
                            dMax = 1.0d;
                        }
                    }
                } else if (dArr3 != null) {
                    dMax = 1.0d;
                } else {
                    dMax = 1.0d;
                }
                BattleUnit.Builder builderWisdomPercentBonus14 = builderWisdom14.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                if (eVar.f817i) {
                    if (w1Var2 != null) {
                        mapJ0 = w1Var2.J0(str8);
                    } else {
                        mapJ0 = null;
                    }
                    map7 = mapJ0;
                    if (map7 != null) {
                        obj5 = map7.get("weapon_effect");
                    } else {
                        obj5 = null;
                    }
                } else if (map6 == null) {
                    obj5 = null;
                } else {
                    map7 = map6;
                    obj5 = map7.get("weapon_effect");
                }
                return builderWisdomPercentBonus14.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList17).build();
            }
            w1Var = w1VarA1;
            str5 = strB;
            str6 = "general_pk_id";
            it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                com.sgscq.vpn.u uVar8 = (com.sgscq.vpn.u) it3.next();
                str10 = uVar8.f1416a;
                int i116 = uVar8.f1417b;
                int i117 = uVar8.f1418c;
                boolean z115 = eVar.f821m;
                boolean z116 = eVar.f820l;
                if (str10 != null) {
                    str11 = str3;
                    str12 = str4;
                    str13 = str2;
                    w1Var3 = w1Var;
                    it4 = it3;
                    battleSkillBuild = null;
                } else {
                    str11 = str3;
                    str12 = str4;
                    str13 = str2;
                    w1Var3 = w1Var;
                    it4 = it3;
                    battleSkillBuild = null;
                }
                if (battleSkillBuild == null) {
                    arrayList5 = arrayList2;
                    enumSet2 = enumSet;
                } else if (z3) {
                    enumSet2 = enumSet;
                    arrayList5 = arrayList2;
                    arrayList5.add(battleSkillBuild);
                } else {
                    enumSet2 = enumSet;
                    arrayList5 = arrayList2;
                    arrayList5.add(battleSkillBuild);
                }
                arrayList2 = arrayList5;
                enumSet = enumSet2;
                it3 = it4;
                str4 = str12;
                str3 = str11;
                str2 = str13;
                w1Var = w1Var3;
            }
            String str215 = str3;
            String str216 = str2;
            ArrayList arrayList18 = arrayList2;
            w1Var2 = w1Var;
            if (eVar.f813e != null) {
                map6 = map3;
            } else {
                map6 = map3;
            }
            BattleUnit.Builder builder8 = BattleUnit.builder(str5);
            str7 = eVar.f815g;
            if (str7 != null) {
                str7 = str5;
            } else {
                str7 = str5;
            }
            BattleUnit.Builder builderStoryGuest8 = builder8.name(str7).side(eVar.f810b).slot(eVar.f811c).storyGuest(eVar.f816h);
            if (eVar.f817i) {
                dArr3 = dArr2;
                if (dArr2 != null) {
                    if (map6 != null) {
                        d3 = Double.parseDouble(String.valueOf(obj3));
                        i2 = (int) d3;
                    }
                    i2 = 0;
                } else {
                    if (map6 != null) {
                        d3 = Double.parseDouble(String.valueOf(obj3));
                        i2 = (int) d3;
                    }
                    i2 = 0;
                }
            } else {
                dArr3 = dArr2;
                if (dArr2 != null) {
                    if (map6 != null) {
                        d3 = Double.parseDouble(String.valueOf(obj3));
                        i2 = (int) d3;
                    }
                    i2 = 0;
                } else {
                    if (map6 != null) {
                        d3 = Double.parseDouble(String.valueOf(obj3));
                        i2 = (int) d3;
                    }
                    i2 = 0;
                }
            }
            BattleUnit.Builder builderGeneralSex8 = builderStoryGuest8.generalSex(i2);
            if (map6 == null) {
                zBooleanValue = false;
            } else {
                obj4 = map6.get("evolution_image_status");
                if (obj4 instanceof Boolean) {
                    zBooleanValue = ((Boolean) obj4).booleanValue();
                } else {
                    if (obj4 == null) {
                        i3 = 0;
                    } else {
                        i3 = (int) Double.parseDouble(String.valueOf(obj4));
                    }
                    if (i3 == 0) {
                    }
                    zBooleanValue = true;
                }
            }
            if (!zBooleanValue) {
                map8 = eVar.f813e;
                str8 = str5;
                if (map8 == null) {
                    z5 = false;
                } else {
                    z5 = false;
                }
                if (z5) {
                    z4 = false;
                }
                BattleUnit.Builder builderWisdom15 = builderGeneralSex8.evolutionImageStatus(z4).hp(dG + d2).attack(d4).defense(d9).wisdom(d11);
                if (map6 != null) {
                    strArr = new String[]{"general_orbit", "orbit"};
                    i4 = 2;
                    i5 = 0;
                    while (true) {
                        if (i5 < i4) {
                            dMax = e(map6.get(strArr[i5]));
                            if (dMax > 0.0d) {
                                i5++;
                                i4 = 2;
                            }
                        } else if (dArr3 != null) {
                            dMax = 1.0d;
                        } else {
                            dMax = 1.0d;
                        }
                    }
                } else if (dArr3 != null) {
                    dMax = 1.0d;
                } else {
                    dMax = 1.0d;
                }
                BattleUnit.Builder builderWisdomPercentBonus15 = builderWisdom15.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                if (eVar.f817i) {
                    if (w1Var2 != null) {
                        mapJ0 = w1Var2.J0(str8);
                    } else {
                        mapJ0 = null;
                    }
                    map7 = mapJ0;
                    if (map7 != null) {
                        obj5 = map7.get("weapon_effect");
                    } else {
                        obj5 = null;
                    }
                } else if (map6 == null) {
                    obj5 = null;
                } else {
                    map7 = map6;
                    obj5 = map7.get("weapon_effect");
                }
                return builderWisdomPercentBonus15.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList18).build();
            }
            str8 = str5;
            z4 = true;
            BattleUnit.Builder builderWisdom16 = builderGeneralSex8.evolutionImageStatus(z4).hp(dG + d2).attack(d4).defense(d9).wisdom(d11);
            if (map6 != null) {
                strArr = new String[]{"general_orbit", "orbit"};
                i4 = 2;
                i5 = 0;
                while (true) {
                    if (i5 < i4) {
                        dMax = e(map6.get(strArr[i5]));
                        if (dMax > 0.0d) {
                            i5++;
                            i4 = 2;
                        }
                    } else if (dArr3 != null) {
                        dMax = 1.0d;
                    } else {
                        dMax = 1.0d;
                    }
                }
            } else if (dArr3 != null) {
                dMax = 1.0d;
            } else {
                dMax = 1.0d;
            }
            BattleUnit.Builder builderWisdomPercentBonus16 = builderWisdom16.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
            if (eVar.f817i) {
                if (w1Var2 != null) {
                    mapJ0 = w1Var2.J0(str8);
                } else {
                    mapJ0 = null;
                }
                map7 = mapJ0;
                if (map7 != null) {
                    obj5 = map7.get("weapon_effect");
                } else {
                    obj5 = null;
                }
            } else if (map6 == null) {
                obj5 = null;
            } else {
                map7 = map6;
                obj5 = map7.get("weapon_effect");
            }
            return builderWisdomPercentBonus16.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList18).build();
        }
        dF = f(map10, "general_hp", eVar.f823o);
        dG = dF;
        str = "pk_id";
        if (eVar.f817i) {
            dG2 = f(map10, "general_attack", eVar.f824p);
        } else if (t1Var != 0) {
            dG2 = t1Var.f1388j;
        } else {
            dG2 = g(map10, dArrK0, 1, eVar.f816h, eVar.f824p, "general_attack_attr", "attr_attack", "general_attack", "atk", "attack", "base_attack");
        }
        double d12 = dG2;
        if (eVar.f817i) {
            if (t1Var != 0) {
                dG3 = t1Var.f1389k;
            } else {
                dG3 = g(map10, dArrK0, 2, eVar.f816h, eVar.f825q, "general_defense_attr", "attr_defense", "general_defense", "def", "defense", "base_defense");
            }
            double d13 = dG3;
            if (eVar.f817i) {
                if (t1Var != 0) {
                    dG4 = t1Var.f1390l;
                } else {
                    dG4 = g(map10, dArrK0, 3, eVar.f816h, eVar.r, "general_wisdom_attr", "attr_wisdom", "general_wisdom", "wis", "wisdom", "base_wisdom");
                }
                arrayList = new ArrayList();
                enumSetNoneOf = EnumSet.noneOf(BattleSkillType.class);
                if (eVar.f817i) {
                    z = false;
                } else {
                    z = false;
                }
                strT0 = eVar.f822n;
                if (strT0 != null) {
                    if (eVar.f817i) {
                        map = eVar.f812d;
                        if (map == null) {
                            obj = null;
                        } else {
                            obj = map.get("general_naturalskill_id");
                        }
                        strT0 = b(obj);
                        if (strT0.isEmpty()) {
                            strT0 = w1.P(strB);
                        }
                    } else {
                        strT0 = w1VarA1.T0(strB);
                    }
                } else if (eVar.f817i) {
                    map = eVar.f812d;
                    if (map == null) {
                        obj = null;
                    } else {
                        obj = map.get("general_naturalskill_id");
                    }
                    strT0 = b(obj);
                    if (strT0.isEmpty()) {
                        strT0 = w1.P(strB);
                    }
                } else {
                    strT0 = w1VarA1.T0(strB);
                }
                z2 = eVar.f817i;
                double d14 = dG4;
                if (z2) {
                    map2 = eVar.f812d;
                } else {
                    map2 = eVar.f812d;
                }
                dArr2 = dArrK0;
                if (z2) {
                    arrayList2 = arrayList;
                    enumSet = enumSetNoneOf;
                    z3 = z;
                    map3 = map10;
                    str2 = str;
                } else {
                    arrayList2 = arrayList;
                    enumSet = enumSetNoneOf;
                    z3 = z;
                    map3 = map10;
                    str2 = str;
                }
                arrayList3 = new ArrayList();
                linkedHashSet = new LinkedHashSet();
                com.sgscq.vpn.v.a(arrayList3, linkedHashSet, strT0, 0, 1);
                str3 = "null";
                str4 = "0";
                if (map2 == null) {
                    str5 = strB;
                    com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map2.get("gSkill"));
                    com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map2.get("general_skills"));
                    obj2 = map2.get("bound_lieutenants");
                    w1Var = w1VarA1;
                    if (!(obj2 instanceof List)) {
                        arrayList4 = new ArrayList();
                        LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                        strJ = c.a.j(map2, "general_pk_id", "", str2);
                        it = ((List) obj2).iterator();
                        while (it.hasNext()) {
                            String str113 = str15;
                            next = it.next();
                            Iterator it16 = it;
                            if (!(next instanceof Map)) {
                                map5 = (Map) next;
                                String strValueOf8 = String.valueOf(map5.getOrDefault("major_pk_id", ""));
                                if (strJ.isEmpty()) {
                                    strTrim = String.valueOf(map5.getOrDefault("position", "")).trim();
                                    if (strTrim.isEmpty()) {
                                        arrayList4.add(map5);
                                    } else {
                                        arrayList4.add(map5);
                                    }
                                } else {
                                    strTrim = String.valueOf(map5.getOrDefault("position", "")).trim();
                                    if (strTrim.isEmpty()) {
                                        arrayList4.add(map5);
                                    } else {
                                        arrayList4.add(map5);
                                    }
                                }
                            }
                            str15 = str113;
                            it = it16;
                        }
                        str6 = str15;
                        ArrayList arrayList19 = new ArrayList(arrayList4);
                        arrayList19.addAll(linkedHashMap6.values());
                        it2 = arrayList19.iterator();
                        while (it2.hasNext()) {
                            map4 = (Map) it2.next();
                            size = arrayList3.size();
                            if (map4 == null) {
                                strT1 = "";
                            } else {
                                strD = com.sgscq.vpn.v.d(map4.get("general_id"), map4.get("id"));
                                if (strD.isEmpty()) {
                                    strT1 = "";
                                } else {
                                    strT1 = w1.a1(null).T0(strD);
                                }
                            }
                            Iterator it17 = it2;
                            com.sgscq.vpn.v.a(arrayList3, linkedHashSet, strT1, 0, 1);
                            com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map4.get("gSkill"));
                            com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map4.get("general_skills"));
                            if (arrayList3.size() > size) {
                                com.sgscq.vpn.v.a(arrayList3, linkedHashSet, com.sgscq.vpn.v.d(map4.get("general_naturalskill_id"), map4.get("natural_skill_id")), 0, 1);
                            }
                            it2 = it17;
                        }
                    }
                    it3 = arrayList3.iterator();
                    while (it3.hasNext()) {
                        com.sgscq.vpn.u uVar9 = (com.sgscq.vpn.u) it3.next();
                        str10 = uVar9.f1416a;
                        int i118 = uVar9.f1417b;
                        int i119 = uVar9.f1418c;
                        boolean z117 = eVar.f821m;
                        boolean z118 = eVar.f820l;
                        if (str10 != null) {
                            str11 = str3;
                            str12 = str4;
                            str13 = str2;
                            w1Var3 = w1Var;
                            it4 = it3;
                            battleSkillBuild = null;
                        } else {
                            str11 = str3;
                            str12 = str4;
                            str13 = str2;
                            w1Var3 = w1Var;
                            it4 = it3;
                            battleSkillBuild = null;
                        }
                        if (battleSkillBuild == null) {
                            arrayList5 = arrayList2;
                            enumSet2 = enumSet;
                        } else if (z3) {
                            enumSet2 = enumSet;
                            arrayList5 = arrayList2;
                            arrayList5.add(battleSkillBuild);
                        } else {
                            enumSet2 = enumSet;
                            arrayList5 = arrayList2;
                            arrayList5.add(battleSkillBuild);
                        }
                        arrayList2 = arrayList5;
                        enumSet = enumSet2;
                        it3 = it4;
                        str4 = str12;
                        str3 = str11;
                        str2 = str13;
                        w1Var = w1Var3;
                    }
                    String str217 = str3;
                    String str218 = str2;
                    ArrayList arrayList110 = arrayList2;
                    w1Var2 = w1Var;
                    if (eVar.f813e != null) {
                        map6 = map3;
                    } else {
                        map6 = map3;
                    }
                    BattleUnit.Builder builder9 = BattleUnit.builder(str5);
                    str7 = eVar.f815g;
                    if (str7 != null) {
                        str7 = str5;
                    } else {
                        str7 = str5;
                    }
                    BattleUnit.Builder builderStoryGuest9 = builder9.name(str7).side(eVar.f810b).slot(eVar.f811c).storyGuest(eVar.f816h);
                    if (eVar.f817i) {
                        dArr3 = dArr2;
                        if (dArr2 != null) {
                            if (map6 != null) {
                                d3 = Double.parseDouble(String.valueOf(obj3));
                                i2 = (int) d3;
                            }
                            i2 = 0;
                        } else {
                            if (map6 != null) {
                                d3 = Double.parseDouble(String.valueOf(obj3));
                                i2 = (int) d3;
                            }
                            i2 = 0;
                        }
                    } else {
                        dArr3 = dArr2;
                        if (dArr2 != null) {
                            if (map6 != null) {
                                d3 = Double.parseDouble(String.valueOf(obj3));
                                i2 = (int) d3;
                            }
                            i2 = 0;
                        } else {
                            if (map6 != null) {
                                d3 = Double.parseDouble(String.valueOf(obj3));
                                i2 = (int) d3;
                            }
                            i2 = 0;
                        }
                    }
                    BattleUnit.Builder builderGeneralSex9 = builderStoryGuest9.generalSex(i2);
                    if (map6 == null) {
                        zBooleanValue = false;
                    } else {
                        obj4 = map6.get("evolution_image_status");
                        if (obj4 instanceof Boolean) {
                            zBooleanValue = ((Boolean) obj4).booleanValue();
                        } else {
                            if (obj4 == null) {
                                i3 = 0;
                            } else {
                                i3 = (int) Double.parseDouble(String.valueOf(obj4));
                            }
                            if (i3 == 0) {
                            }
                            zBooleanValue = true;
                        }
                    }
                    if (!zBooleanValue) {
                        map8 = eVar.f813e;
                        str8 = str5;
                        if (map8 == null) {
                            z5 = false;
                        } else {
                            z5 = false;
                        }
                        if (z5) {
                            z4 = false;
                        }
                        BattleUnit.Builder builderWisdom17 = builderGeneralSex9.evolutionImageStatus(z4).hp(dG + d2).attack(d12).defense(d13).wisdom(d14);
                        if (map6 != null) {
                            strArr = new String[]{"general_orbit", "orbit"};
                            i4 = 2;
                            i5 = 0;
                            while (true) {
                                if (i5 < i4) {
                                    dMax = e(map6.get(strArr[i5]));
                                    if (dMax > 0.0d) {
                                        i5++;
                                        i4 = 2;
                                    }
                                } else if (dArr3 != null) {
                                    dMax = 1.0d;
                                } else {
                                    dMax = 1.0d;
                                }
                            }
                        } else if (dArr3 != null) {
                            dMax = 1.0d;
                        } else {
                            dMax = 1.0d;
                        }
                        BattleUnit.Builder builderWisdomPercentBonus17 = builderWisdom17.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                        if (eVar.f817i) {
                            if (w1Var2 != null) {
                                mapJ0 = w1Var2.J0(str8);
                            } else {
                                mapJ0 = null;
                            }
                            map7 = mapJ0;
                            if (map7 != null) {
                                obj5 = map7.get("weapon_effect");
                            } else {
                                obj5 = null;
                            }
                        } else if (map6 == null) {
                            obj5 = null;
                        } else {
                            map7 = map6;
                            obj5 = map7.get("weapon_effect");
                        }
                        return builderWisdomPercentBonus17.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList110).build();
                    }
                    str8 = str5;
                    z4 = true;
                    BattleUnit.Builder builderWisdom18 = builderGeneralSex9.evolutionImageStatus(z4).hp(dG + d2).attack(d12).defense(d13).wisdom(d14);
                    if (map6 != null) {
                        strArr = new String[]{"general_orbit", "orbit"};
                        i4 = 2;
                        i5 = 0;
                        while (true) {
                            if (i5 < i4) {
                                dMax = e(map6.get(strArr[i5]));
                                if (dMax > 0.0d) {
                                    i5++;
                                    i4 = 2;
                                }
                            } else if (dArr3 != null) {
                                dMax = 1.0d;
                            } else {
                                dMax = 1.0d;
                            }
                        }
                    } else if (dArr3 != null) {
                        dMax = 1.0d;
                    } else {
                        dMax = 1.0d;
                    }
                    BattleUnit.Builder builderWisdomPercentBonus18 = builderWisdom18.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                    if (eVar.f817i) {
                        if (w1Var2 != null) {
                            mapJ0 = w1Var2.J0(str8);
                        } else {
                            mapJ0 = null;
                        }
                        map7 = mapJ0;
                        if (map7 != null) {
                            obj5 = map7.get("weapon_effect");
                        } else {
                            obj5 = null;
                        }
                    } else if (map6 == null) {
                        obj5 = null;
                    } else {
                        map7 = map6;
                        obj5 = map7.get("weapon_effect");
                    }
                    return builderWisdomPercentBonus18.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList110).build();
                }
                w1Var = w1VarA1;
                str5 = strB;
                str6 = "general_pk_id";
                it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    com.sgscq.vpn.u uVar10 = (com.sgscq.vpn.u) it3.next();
                    str10 = uVar10.f1416a;
                    int i1110 = uVar10.f1417b;
                    int i1111 = uVar10.f1418c;
                    boolean z119 = eVar.f821m;
                    boolean z1110 = eVar.f820l;
                    if (str10 != null) {
                        str11 = str3;
                        str12 = str4;
                        str13 = str2;
                        w1Var3 = w1Var;
                        it4 = it3;
                        battleSkillBuild = null;
                    } else {
                        str11 = str3;
                        str12 = str4;
                        str13 = str2;
                        w1Var3 = w1Var;
                        it4 = it3;
                        battleSkillBuild = null;
                    }
                    if (battleSkillBuild == null) {
                        arrayList5 = arrayList2;
                        enumSet2 = enumSet;
                    } else if (z3) {
                        enumSet2 = enumSet;
                        arrayList5 = arrayList2;
                        arrayList5.add(battleSkillBuild);
                    } else {
                        enumSet2 = enumSet;
                        arrayList5 = arrayList2;
                        arrayList5.add(battleSkillBuild);
                    }
                    arrayList2 = arrayList5;
                    enumSet = enumSet2;
                    it3 = it4;
                    str4 = str12;
                    str3 = str11;
                    str2 = str13;
                    w1Var = w1Var3;
                }
                String str219 = str3;
                String str2110 = str2;
                ArrayList arrayList111 = arrayList2;
                w1Var2 = w1Var;
                if (eVar.f813e != null) {
                    map6 = map3;
                } else {
                    map6 = map3;
                }
                BattleUnit.Builder builder10 = BattleUnit.builder(str5);
                str7 = eVar.f815g;
                if (str7 != null) {
                    str7 = str5;
                } else {
                    str7 = str5;
                }
                BattleUnit.Builder builderStoryGuest10 = builder10.name(str7).side(eVar.f810b).slot(eVar.f811c).storyGuest(eVar.f816h);
                if (eVar.f817i) {
                    dArr3 = dArr2;
                    if (dArr2 != null) {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    } else {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    }
                } else {
                    dArr3 = dArr2;
                    if (dArr2 != null) {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    } else {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    }
                }
                BattleUnit.Builder builderGeneralSex10 = builderStoryGuest10.generalSex(i2);
                if (map6 == null) {
                    zBooleanValue = false;
                } else {
                    obj4 = map6.get("evolution_image_status");
                    if (obj4 instanceof Boolean) {
                        zBooleanValue = ((Boolean) obj4).booleanValue();
                    } else {
                        if (obj4 == null) {
                            i3 = 0;
                        } else {
                            i3 = (int) Double.parseDouble(String.valueOf(obj4));
                        }
                        if (i3 == 0) {
                        }
                        zBooleanValue = true;
                    }
                }
                if (!zBooleanValue) {
                    map8 = eVar.f813e;
                    str8 = str5;
                    if (map8 == null) {
                        z5 = false;
                    } else {
                        z5 = false;
                    }
                    if (z5) {
                        z4 = false;
                    }
                    BattleUnit.Builder builderWisdom19 = builderGeneralSex10.evolutionImageStatus(z4).hp(dG + d2).attack(d12).defense(d13).wisdom(d14);
                    if (map6 != null) {
                        strArr = new String[]{"general_orbit", "orbit"};
                        i4 = 2;
                        i5 = 0;
                        while (true) {
                            if (i5 < i4) {
                                dMax = e(map6.get(strArr[i5]));
                                if (dMax > 0.0d) {
                                    i5++;
                                    i4 = 2;
                                }
                            } else if (dArr3 != null) {
                                dMax = 1.0d;
                            } else {
                                dMax = 1.0d;
                            }
                        }
                    } else if (dArr3 != null) {
                        dMax = 1.0d;
                    } else {
                        dMax = 1.0d;
                    }
                    BattleUnit.Builder builderWisdomPercentBonus19 = builderWisdom19.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                    if (eVar.f817i) {
                        if (w1Var2 != null) {
                            mapJ0 = w1Var2.J0(str8);
                        } else {
                            mapJ0 = null;
                        }
                        map7 = mapJ0;
                        if (map7 != null) {
                            obj5 = map7.get("weapon_effect");
                        } else {
                            obj5 = null;
                        }
                    } else if (map6 == null) {
                        obj5 = null;
                    } else {
                        map7 = map6;
                        obj5 = map7.get("weapon_effect");
                    }
                    return builderWisdomPercentBonus19.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList111).build();
                }
                str8 = str5;
                z4 = true;
                BattleUnit.Builder builderWisdom110 = builderGeneralSex10.evolutionImageStatus(z4).hp(dG + d2).attack(d12).defense(d13).wisdom(d14);
                if (map6 != null) {
                    strArr = new String[]{"general_orbit", "orbit"};
                    i4 = 2;
                    i5 = 0;
                    while (true) {
                        if (i5 < i4) {
                            dMax = e(map6.get(strArr[i5]));
                            if (dMax > 0.0d) {
                                i5++;
                                i4 = 2;
                            }
                        } else if (dArr3 != null) {
                            dMax = 1.0d;
                        } else {
                            dMax = 1.0d;
                        }
                    }
                } else if (dArr3 != null) {
                    dMax = 1.0d;
                } else {
                    dMax = 1.0d;
                }
                BattleUnit.Builder builderWisdomPercentBonus110 = builderWisdom110.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                if (eVar.f817i) {
                    if (w1Var2 != null) {
                        mapJ0 = w1Var2.J0(str8);
                    } else {
                        mapJ0 = null;
                    }
                    map7 = mapJ0;
                    if (map7 != null) {
                        obj5 = map7.get("weapon_effect");
                    } else {
                        obj5 = null;
                    }
                } else if (map6 == null) {
                    obj5 = null;
                } else {
                    map7 = map6;
                    obj5 = map7.get("weapon_effect");
                }
                return builderWisdomPercentBonus110.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList111).build();
            }
            dG4 = f(map10, "general_wisdom", eVar.r);
            arrayList = new ArrayList();
            enumSetNoneOf = EnumSet.noneOf(BattleSkillType.class);
            if (eVar.f817i) {
                z = false;
            } else {
                z = false;
            }
            strT0 = eVar.f822n;
            if (strT0 != null) {
                if (eVar.f817i) {
                    map = eVar.f812d;
                    if (map == null) {
                        obj = null;
                    } else {
                        obj = map.get("general_naturalskill_id");
                    }
                    strT0 = b(obj);
                    if (strT0.isEmpty()) {
                        strT0 = w1.P(strB);
                    }
                } else {
                    strT0 = w1VarA1.T0(strB);
                }
            } else if (eVar.f817i) {
                map = eVar.f812d;
                if (map == null) {
                    obj = null;
                } else {
                    obj = map.get("general_naturalskill_id");
                }
                strT0 = b(obj);
                if (strT0.isEmpty()) {
                    strT0 = w1.P(strB);
                }
            } else {
                strT0 = w1VarA1.T0(strB);
            }
            z2 = eVar.f817i;
            double d15 = dG4;
            if (z2) {
                map2 = eVar.f812d;
            } else {
                map2 = eVar.f812d;
            }
            dArr2 = dArrK0;
            if (z2) {
                arrayList2 = arrayList;
                enumSet = enumSetNoneOf;
                z3 = z;
                map3 = map10;
                str2 = str;
            } else {
                arrayList2 = arrayList;
                enumSet = enumSetNoneOf;
                z3 = z;
                map3 = map10;
                str2 = str;
            }
            arrayList3 = new ArrayList();
            linkedHashSet = new LinkedHashSet();
            com.sgscq.vpn.v.a(arrayList3, linkedHashSet, strT0, 0, 1);
            str3 = "null";
            str4 = "0";
            if (map2 == null) {
                str5 = strB;
                com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map2.get("gSkill"));
                com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map2.get("general_skills"));
                obj2 = map2.get("bound_lieutenants");
                w1Var = w1VarA1;
                if (!(obj2 instanceof List)) {
                    arrayList4 = new ArrayList();
                    LinkedHashMap linkedHashMap7 = new LinkedHashMap();
                    strJ = c.a.j(map2, "general_pk_id", "", str2);
                    it = ((List) obj2).iterator();
                    while (it.hasNext()) {
                        String str114 = str15;
                        next = it.next();
                        Iterator it18 = it;
                        if (!(next instanceof Map)) {
                            map5 = (Map) next;
                            String strValueOf9 = String.valueOf(map5.getOrDefault("major_pk_id", ""));
                            if (strJ.isEmpty()) {
                                strTrim = String.valueOf(map5.getOrDefault("position", "")).trim();
                                if (strTrim.isEmpty()) {
                                    arrayList4.add(map5);
                                } else {
                                    arrayList4.add(map5);
                                }
                            } else {
                                strTrim = String.valueOf(map5.getOrDefault("position", "")).trim();
                                if (strTrim.isEmpty()) {
                                    arrayList4.add(map5);
                                } else {
                                    arrayList4.add(map5);
                                }
                            }
                        }
                        str15 = str114;
                        it = it18;
                    }
                    str6 = str15;
                    ArrayList arrayList112 = new ArrayList(arrayList4);
                    arrayList112.addAll(linkedHashMap7.values());
                    it2 = arrayList112.iterator();
                    while (it2.hasNext()) {
                        map4 = (Map) it2.next();
                        size = arrayList3.size();
                        if (map4 == null) {
                            strT1 = "";
                        } else {
                            strD = com.sgscq.vpn.v.d(map4.get("general_id"), map4.get("id"));
                            if (strD.isEmpty()) {
                                strT1 = "";
                            } else {
                                strT1 = w1.a1(null).T0(strD);
                            }
                        }
                        Iterator it19 = it2;
                        com.sgscq.vpn.v.a(arrayList3, linkedHashSet, strT1, 0, 1);
                        com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map4.get("gSkill"));
                        com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map4.get("general_skills"));
                        if (arrayList3.size() > size) {
                            com.sgscq.vpn.v.a(arrayList3, linkedHashSet, com.sgscq.vpn.v.d(map4.get("general_naturalskill_id"), map4.get("natural_skill_id")), 0, 1);
                        }
                        it2 = it19;
                    }
                }
                it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    com.sgscq.vpn.u uVar11 = (com.sgscq.vpn.u) it3.next();
                    str10 = uVar11.f1416a;
                    int i1112 = uVar11.f1417b;
                    int i1113 = uVar11.f1418c;
                    boolean z1111 = eVar.f821m;
                    boolean z1112 = eVar.f820l;
                    if (str10 != null) {
                        str11 = str3;
                        str12 = str4;
                        str13 = str2;
                        w1Var3 = w1Var;
                        it4 = it3;
                        battleSkillBuild = null;
                    } else {
                        str11 = str3;
                        str12 = str4;
                        str13 = str2;
                        w1Var3 = w1Var;
                        it4 = it3;
                        battleSkillBuild = null;
                    }
                    if (battleSkillBuild == null) {
                        arrayList5 = arrayList2;
                        enumSet2 = enumSet;
                    } else if (z3) {
                        enumSet2 = enumSet;
                        arrayList5 = arrayList2;
                        arrayList5.add(battleSkillBuild);
                    } else {
                        enumSet2 = enumSet;
                        arrayList5 = arrayList2;
                        arrayList5.add(battleSkillBuild);
                    }
                    arrayList2 = arrayList5;
                    enumSet = enumSet2;
                    it3 = it4;
                    str4 = str12;
                    str3 = str11;
                    str2 = str13;
                    w1Var = w1Var3;
                }
                String str2111 = str3;
                String str2112 = str2;
                ArrayList arrayList113 = arrayList2;
                w1Var2 = w1Var;
                if (eVar.f813e != null) {
                    map6 = map3;
                } else {
                    map6 = map3;
                }
                BattleUnit.Builder builder11 = BattleUnit.builder(str5);
                str7 = eVar.f815g;
                if (str7 != null) {
                    str7 = str5;
                } else {
                    str7 = str5;
                }
                BattleUnit.Builder builderStoryGuest11 = builder11.name(str7).side(eVar.f810b).slot(eVar.f811c).storyGuest(eVar.f816h);
                if (eVar.f817i) {
                    dArr3 = dArr2;
                    if (dArr2 != null) {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    } else {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    }
                } else {
                    dArr3 = dArr2;
                    if (dArr2 != null) {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    } else {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    }
                }
                BattleUnit.Builder builderGeneralSex11 = builderStoryGuest11.generalSex(i2);
                if (map6 == null) {
                    zBooleanValue = false;
                } else {
                    obj4 = map6.get("evolution_image_status");
                    if (obj4 instanceof Boolean) {
                        zBooleanValue = ((Boolean) obj4).booleanValue();
                    } else {
                        if (obj4 == null) {
                            i3 = 0;
                        } else {
                            i3 = (int) Double.parseDouble(String.valueOf(obj4));
                        }
                        if (i3 == 0) {
                        }
                        zBooleanValue = true;
                    }
                }
                if (!zBooleanValue) {
                    map8 = eVar.f813e;
                    str8 = str5;
                    if (map8 == null) {
                        z5 = false;
                    } else {
                        z5 = false;
                    }
                    if (z5) {
                        z4 = false;
                    }
                    BattleUnit.Builder builderWisdom111 = builderGeneralSex11.evolutionImageStatus(z4).hp(dG + d2).attack(d12).defense(d13).wisdom(d15);
                    if (map6 != null) {
                        strArr = new String[]{"general_orbit", "orbit"};
                        i4 = 2;
                        i5 = 0;
                        while (true) {
                            if (i5 < i4) {
                                dMax = e(map6.get(strArr[i5]));
                                if (dMax > 0.0d) {
                                    i5++;
                                    i4 = 2;
                                }
                            } else if (dArr3 != null) {
                                dMax = 1.0d;
                            } else {
                                dMax = 1.0d;
                            }
                        }
                    } else if (dArr3 != null) {
                        dMax = 1.0d;
                    } else {
                        dMax = 1.0d;
                    }
                    BattleUnit.Builder builderWisdomPercentBonus111 = builderWisdom111.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                    if (eVar.f817i) {
                        if (w1Var2 != null) {
                            mapJ0 = w1Var2.J0(str8);
                        } else {
                            mapJ0 = null;
                        }
                        map7 = mapJ0;
                        if (map7 != null) {
                            obj5 = map7.get("weapon_effect");
                        } else {
                            obj5 = null;
                        }
                    } else if (map6 == null) {
                        obj5 = null;
                    } else {
                        map7 = map6;
                        obj5 = map7.get("weapon_effect");
                    }
                    return builderWisdomPercentBonus111.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList113).build();
                }
                str8 = str5;
                z4 = true;
                BattleUnit.Builder builderWisdom112 = builderGeneralSex11.evolutionImageStatus(z4).hp(dG + d2).attack(d12).defense(d13).wisdom(d15);
                if (map6 != null) {
                    strArr = new String[]{"general_orbit", "orbit"};
                    i4 = 2;
                    i5 = 0;
                    while (true) {
                        if (i5 < i4) {
                            dMax = e(map6.get(strArr[i5]));
                            if (dMax > 0.0d) {
                                i5++;
                                i4 = 2;
                            }
                        } else if (dArr3 != null) {
                            dMax = 1.0d;
                        } else {
                            dMax = 1.0d;
                        }
                    }
                } else if (dArr3 != null) {
                    dMax = 1.0d;
                } else {
                    dMax = 1.0d;
                }
                BattleUnit.Builder builderWisdomPercentBonus112 = builderWisdom112.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                if (eVar.f817i) {
                    if (w1Var2 != null) {
                        mapJ0 = w1Var2.J0(str8);
                    } else {
                        mapJ0 = null;
                    }
                    map7 = mapJ0;
                    if (map7 != null) {
                        obj5 = map7.get("weapon_effect");
                    } else {
                        obj5 = null;
                    }
                } else if (map6 == null) {
                    obj5 = null;
                } else {
                    map7 = map6;
                    obj5 = map7.get("weapon_effect");
                }
                return builderWisdomPercentBonus112.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList113).build();
            }
            w1Var = w1VarA1;
            str5 = strB;
            str6 = "general_pk_id";
            it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                com.sgscq.vpn.u uVar12 = (com.sgscq.vpn.u) it3.next();
                str10 = uVar12.f1416a;
                int i1114 = uVar12.f1417b;
                int i1115 = uVar12.f1418c;
                boolean z1113 = eVar.f821m;
                boolean z1114 = eVar.f820l;
                if (str10 != null) {
                    str11 = str3;
                    str12 = str4;
                    str13 = str2;
                    w1Var3 = w1Var;
                    it4 = it3;
                    battleSkillBuild = null;
                } else {
                    str11 = str3;
                    str12 = str4;
                    str13 = str2;
                    w1Var3 = w1Var;
                    it4 = it3;
                    battleSkillBuild = null;
                }
                if (battleSkillBuild == null) {
                    arrayList5 = arrayList2;
                    enumSet2 = enumSet;
                } else if (z3) {
                    enumSet2 = enumSet;
                    arrayList5 = arrayList2;
                    arrayList5.add(battleSkillBuild);
                } else {
                    enumSet2 = enumSet;
                    arrayList5 = arrayList2;
                    arrayList5.add(battleSkillBuild);
                }
                arrayList2 = arrayList5;
                enumSet = enumSet2;
                it3 = it4;
                str4 = str12;
                str3 = str11;
                str2 = str13;
                w1Var = w1Var3;
            }
            String str2113 = str3;
            String str2114 = str2;
            ArrayList arrayList114 = arrayList2;
            w1Var2 = w1Var;
            if (eVar.f813e != null) {
                map6 = map3;
            } else {
                map6 = map3;
            }
            BattleUnit.Builder builder12 = BattleUnit.builder(str5);
            str7 = eVar.f815g;
            if (str7 != null) {
                str7 = str5;
            } else {
                str7 = str5;
            }
            BattleUnit.Builder builderStoryGuest12 = builder12.name(str7).side(eVar.f810b).slot(eVar.f811c).storyGuest(eVar.f816h);
            if (eVar.f817i) {
                dArr3 = dArr2;
                if (dArr2 != null) {
                    if (map6 != null) {
                        d3 = Double.parseDouble(String.valueOf(obj3));
                        i2 = (int) d3;
                    }
                    i2 = 0;
                } else {
                    if (map6 != null) {
                        d3 = Double.parseDouble(String.valueOf(obj3));
                        i2 = (int) d3;
                    }
                    i2 = 0;
                }
            } else {
                dArr3 = dArr2;
                if (dArr2 != null) {
                    if (map6 != null) {
                        d3 = Double.parseDouble(String.valueOf(obj3));
                        i2 = (int) d3;
                    }
                    i2 = 0;
                } else {
                    if (map6 != null) {
                        d3 = Double.parseDouble(String.valueOf(obj3));
                        i2 = (int) d3;
                    }
                    i2 = 0;
                }
            }
            BattleUnit.Builder builderGeneralSex12 = builderStoryGuest12.generalSex(i2);
            if (map6 == null) {
                zBooleanValue = false;
            } else {
                obj4 = map6.get("evolution_image_status");
                if (obj4 instanceof Boolean) {
                    zBooleanValue = ((Boolean) obj4).booleanValue();
                } else {
                    if (obj4 == null) {
                        i3 = 0;
                    } else {
                        i3 = (int) Double.parseDouble(String.valueOf(obj4));
                    }
                    if (i3 == 0) {
                    }
                    zBooleanValue = true;
                }
            }
            if (!zBooleanValue) {
                map8 = eVar.f813e;
                str8 = str5;
                if (map8 == null) {
                    z5 = false;
                } else {
                    z5 = false;
                }
                if (z5) {
                    z4 = false;
                }
                BattleUnit.Builder builderWisdom113 = builderGeneralSex12.evolutionImageStatus(z4).hp(dG + d2).attack(d12).defense(d13).wisdom(d15);
                if (map6 != null) {
                    strArr = new String[]{"general_orbit", "orbit"};
                    i4 = 2;
                    i5 = 0;
                    while (true) {
                        if (i5 < i4) {
                            dMax = e(map6.get(strArr[i5]));
                            if (dMax > 0.0d) {
                                i5++;
                                i4 = 2;
                            }
                        } else if (dArr3 != null) {
                            dMax = 1.0d;
                        } else {
                            dMax = 1.0d;
                        }
                    }
                } else if (dArr3 != null) {
                    dMax = 1.0d;
                } else {
                    dMax = 1.0d;
                }
                BattleUnit.Builder builderWisdomPercentBonus113 = builderWisdom113.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                if (eVar.f817i) {
                    if (w1Var2 != null) {
                        mapJ0 = w1Var2.J0(str8);
                    } else {
                        mapJ0 = null;
                    }
                    map7 = mapJ0;
                    if (map7 != null) {
                        obj5 = map7.get("weapon_effect");
                    } else {
                        obj5 = null;
                    }
                } else if (map6 == null) {
                    obj5 = null;
                } else {
                    map7 = map6;
                    obj5 = map7.get("weapon_effect");
                }
                return builderWisdomPercentBonus113.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList114).build();
            }
            str8 = str5;
            z4 = true;
            BattleUnit.Builder builderWisdom114 = builderGeneralSex12.evolutionImageStatus(z4).hp(dG + d2).attack(d12).defense(d13).wisdom(d15);
            if (map6 != null) {
                strArr = new String[]{"general_orbit", "orbit"};
                i4 = 2;
                i5 = 0;
                while (true) {
                    if (i5 < i4) {
                        dMax = e(map6.get(strArr[i5]));
                        if (dMax > 0.0d) {
                            i5++;
                            i4 = 2;
                        }
                    } else if (dArr3 != null) {
                        dMax = 1.0d;
                    } else {
                        dMax = 1.0d;
                    }
                }
            } else if (dArr3 != null) {
                dMax = 1.0d;
            } else {
                dMax = 1.0d;
            }
            BattleUnit.Builder builderWisdomPercentBonus114 = builderWisdom114.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
            if (eVar.f817i) {
                if (w1Var2 != null) {
                    mapJ0 = w1Var2.J0(str8);
                } else {
                    mapJ0 = null;
                }
                map7 = mapJ0;
                if (map7 != null) {
                    obj5 = map7.get("weapon_effect");
                } else {
                    obj5 = null;
                }
            } else if (map6 == null) {
                obj5 = null;
            } else {
                map7 = map6;
                obj5 = map7.get("weapon_effect");
            }
            return builderWisdomPercentBonus114.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList114).build();
        }
        dG3 = f(map10, "general_defense", eVar.f825q);
        double d16 = dG3;
        if (eVar.f817i) {
            if (t1Var != 0) {
                dG4 = t1Var.f1390l;
            } else {
                dG4 = g(map10, dArrK0, 3, eVar.f816h, eVar.r, "general_wisdom_attr", "attr_wisdom", "general_wisdom", "wis", "wisdom", "base_wisdom");
            }
            arrayList = new ArrayList();
            enumSetNoneOf = EnumSet.noneOf(BattleSkillType.class);
            if (eVar.f817i) {
                z = false;
            } else {
                z = false;
            }
            strT0 = eVar.f822n;
            if (strT0 != null) {
                if (eVar.f817i) {
                    map = eVar.f812d;
                    if (map == null) {
                        obj = null;
                    } else {
                        obj = map.get("general_naturalskill_id");
                    }
                    strT0 = b(obj);
                    if (strT0.isEmpty()) {
                        strT0 = w1.P(strB);
                    }
                } else {
                    strT0 = w1VarA1.T0(strB);
                }
            } else if (eVar.f817i) {
                map = eVar.f812d;
                if (map == null) {
                    obj = null;
                } else {
                    obj = map.get("general_naturalskill_id");
                }
                strT0 = b(obj);
                if (strT0.isEmpty()) {
                    strT0 = w1.P(strB);
                }
            } else {
                strT0 = w1VarA1.T0(strB);
            }
            z2 = eVar.f817i;
            double d17 = dG4;
            if (z2) {
                map2 = eVar.f812d;
            } else {
                map2 = eVar.f812d;
            }
            dArr2 = dArrK0;
            if (z2) {
                arrayList2 = arrayList;
                enumSet = enumSetNoneOf;
                z3 = z;
                map3 = map10;
                str2 = str;
            } else {
                arrayList2 = arrayList;
                enumSet = enumSetNoneOf;
                z3 = z;
                map3 = map10;
                str2 = str;
            }
            arrayList3 = new ArrayList();
            linkedHashSet = new LinkedHashSet();
            com.sgscq.vpn.v.a(arrayList3, linkedHashSet, strT0, 0, 1);
            str3 = "null";
            str4 = "0";
            if (map2 == null) {
                str5 = strB;
                com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map2.get("gSkill"));
                com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map2.get("general_skills"));
                obj2 = map2.get("bound_lieutenants");
                w1Var = w1VarA1;
                if (!(obj2 instanceof List)) {
                    arrayList4 = new ArrayList();
                    LinkedHashMap linkedHashMap8 = new LinkedHashMap();
                    strJ = c.a.j(map2, "general_pk_id", "", str2);
                    it = ((List) obj2).iterator();
                    while (it.hasNext()) {
                        String str115 = str15;
                        next = it.next();
                        Iterator it110 = it;
                        if (!(next instanceof Map)) {
                            map5 = (Map) next;
                            String strValueOf10 = String.valueOf(map5.getOrDefault("major_pk_id", ""));
                            if (strJ.isEmpty()) {
                                strTrim = String.valueOf(map5.getOrDefault("position", "")).trim();
                                if (strTrim.isEmpty()) {
                                    arrayList4.add(map5);
                                } else {
                                    arrayList4.add(map5);
                                }
                            } else {
                                strTrim = String.valueOf(map5.getOrDefault("position", "")).trim();
                                if (strTrim.isEmpty()) {
                                    arrayList4.add(map5);
                                } else {
                                    arrayList4.add(map5);
                                }
                            }
                        }
                        str15 = str115;
                        it = it110;
                    }
                    str6 = str15;
                    ArrayList arrayList115 = new ArrayList(arrayList4);
                    arrayList115.addAll(linkedHashMap8.values());
                    it2 = arrayList115.iterator();
                    while (it2.hasNext()) {
                        map4 = (Map) it2.next();
                        size = arrayList3.size();
                        if (map4 == null) {
                            strT1 = "";
                        } else {
                            strD = com.sgscq.vpn.v.d(map4.get("general_id"), map4.get("id"));
                            if (strD.isEmpty()) {
                                strT1 = "";
                            } else {
                                strT1 = w1.a1(null).T0(strD);
                            }
                        }
                        Iterator it111 = it2;
                        com.sgscq.vpn.v.a(arrayList3, linkedHashSet, strT1, 0, 1);
                        com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map4.get("gSkill"));
                        com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map4.get("general_skills"));
                        if (arrayList3.size() > size) {
                            com.sgscq.vpn.v.a(arrayList3, linkedHashSet, com.sgscq.vpn.v.d(map4.get("general_naturalskill_id"), map4.get("natural_skill_id")), 0, 1);
                        }
                        it2 = it111;
                    }
                }
                it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    com.sgscq.vpn.u uVar13 = (com.sgscq.vpn.u) it3.next();
                    str10 = uVar13.f1416a;
                    int i1116 = uVar13.f1417b;
                    int i1117 = uVar13.f1418c;
                    boolean z1115 = eVar.f821m;
                    boolean z1116 = eVar.f820l;
                    if (str10 != null) {
                        str11 = str3;
                        str12 = str4;
                        str13 = str2;
                        w1Var3 = w1Var;
                        it4 = it3;
                        battleSkillBuild = null;
                    } else {
                        str11 = str3;
                        str12 = str4;
                        str13 = str2;
                        w1Var3 = w1Var;
                        it4 = it3;
                        battleSkillBuild = null;
                    }
                    if (battleSkillBuild == null) {
                        arrayList5 = arrayList2;
                        enumSet2 = enumSet;
                    } else if (z3) {
                        enumSet2 = enumSet;
                        arrayList5 = arrayList2;
                        arrayList5.add(battleSkillBuild);
                    } else {
                        enumSet2 = enumSet;
                        arrayList5 = arrayList2;
                        arrayList5.add(battleSkillBuild);
                    }
                    arrayList2 = arrayList5;
                    enumSet = enumSet2;
                    it3 = it4;
                    str4 = str12;
                    str3 = str11;
                    str2 = str13;
                    w1Var = w1Var3;
                }
                String str2115 = str3;
                String str2116 = str2;
                ArrayList arrayList116 = arrayList2;
                w1Var2 = w1Var;
                if (eVar.f813e != null) {
                    map6 = map3;
                } else {
                    map6 = map3;
                }
                BattleUnit.Builder builder13 = BattleUnit.builder(str5);
                str7 = eVar.f815g;
                if (str7 != null) {
                    str7 = str5;
                } else {
                    str7 = str5;
                }
                BattleUnit.Builder builderStoryGuest13 = builder13.name(str7).side(eVar.f810b).slot(eVar.f811c).storyGuest(eVar.f816h);
                if (eVar.f817i) {
                    dArr3 = dArr2;
                    if (dArr2 != null) {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    } else {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    }
                } else {
                    dArr3 = dArr2;
                    if (dArr2 != null) {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    } else {
                        if (map6 != null) {
                            d3 = Double.parseDouble(String.valueOf(obj3));
                            i2 = (int) d3;
                        }
                        i2 = 0;
                    }
                }
                BattleUnit.Builder builderGeneralSex13 = builderStoryGuest13.generalSex(i2);
                if (map6 == null) {
                    zBooleanValue = false;
                } else {
                    obj4 = map6.get("evolution_image_status");
                    if (obj4 instanceof Boolean) {
                        zBooleanValue = ((Boolean) obj4).booleanValue();
                    } else {
                        if (obj4 == null) {
                            i3 = 0;
                        } else {
                            i3 = (int) Double.parseDouble(String.valueOf(obj4));
                        }
                        if (i3 == 0) {
                        }
                        zBooleanValue = true;
                    }
                }
                if (!zBooleanValue) {
                    map8 = eVar.f813e;
                    str8 = str5;
                    if (map8 == null) {
                        z5 = false;
                    } else {
                        z5 = false;
                    }
                    if (z5) {
                        z4 = false;
                    }
                    BattleUnit.Builder builderWisdom115 = builderGeneralSex13.evolutionImageStatus(z4).hp(dG + d2).attack(d12).defense(d16).wisdom(d17);
                    if (map6 != null) {
                        strArr = new String[]{"general_orbit", "orbit"};
                        i4 = 2;
                        i5 = 0;
                        while (true) {
                            if (i5 < i4) {
                                dMax = e(map6.get(strArr[i5]));
                                if (dMax > 0.0d) {
                                    i5++;
                                    i4 = 2;
                                }
                            } else if (dArr3 != null) {
                                dMax = 1.0d;
                            } else {
                                dMax = 1.0d;
                            }
                        }
                    } else if (dArr3 != null) {
                        dMax = 1.0d;
                    } else {
                        dMax = 1.0d;
                    }
                    BattleUnit.Builder builderWisdomPercentBonus115 = builderWisdom115.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                    if (eVar.f817i) {
                        if (w1Var2 != null) {
                            mapJ0 = w1Var2.J0(str8);
                        } else {
                            mapJ0 = null;
                        }
                        map7 = mapJ0;
                        if (map7 != null) {
                            obj5 = map7.get("weapon_effect");
                        } else {
                            obj5 = null;
                        }
                    } else if (map6 == null) {
                        obj5 = null;
                    } else {
                        map7 = map6;
                        obj5 = map7.get("weapon_effect");
                    }
                    return builderWisdomPercentBonus115.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList116).build();
                }
                str8 = str5;
                z4 = true;
                BattleUnit.Builder builderWisdom116 = builderGeneralSex13.evolutionImageStatus(z4).hp(dG + d2).attack(d12).defense(d16).wisdom(d17);
                if (map6 != null) {
                    strArr = new String[]{"general_orbit", "orbit"};
                    i4 = 2;
                    i5 = 0;
                    while (true) {
                        if (i5 < i4) {
                            dMax = e(map6.get(strArr[i5]));
                            if (dMax > 0.0d) {
                                i5++;
                                i4 = 2;
                            }
                        } else if (dArr3 != null) {
                            dMax = 1.0d;
                        } else {
                            dMax = 1.0d;
                        }
                    }
                } else if (dArr3 != null) {
                    dMax = 1.0d;
                } else {
                    dMax = 1.0d;
                }
                BattleUnit.Builder builderWisdomPercentBonus116 = builderWisdom116.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                if (eVar.f817i) {
                    if (w1Var2 != null) {
                        mapJ0 = w1Var2.J0(str8);
                    } else {
                        mapJ0 = null;
                    }
                    map7 = mapJ0;
                    if (map7 != null) {
                        obj5 = map7.get("weapon_effect");
                    } else {
                        obj5 = null;
                    }
                } else if (map6 == null) {
                    obj5 = null;
                } else {
                    map7 = map6;
                    obj5 = map7.get("weapon_effect");
                }
                return builderWisdomPercentBonus116.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList116).build();
            }
            w1Var = w1VarA1;
            str5 = strB;
            str6 = "general_pk_id";
            it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                com.sgscq.vpn.u uVar14 = (com.sgscq.vpn.u) it3.next();
                str10 = uVar14.f1416a;
                int i1118 = uVar14.f1417b;
                int i1119 = uVar14.f1418c;
                boolean z1117 = eVar.f821m;
                boolean z1118 = eVar.f820l;
                if (str10 != null) {
                    str11 = str3;
                    str12 = str4;
                    str13 = str2;
                    w1Var3 = w1Var;
                    it4 = it3;
                    battleSkillBuild = null;
                } else {
                    str11 = str3;
                    str12 = str4;
                    str13 = str2;
                    w1Var3 = w1Var;
                    it4 = it3;
                    battleSkillBuild = null;
                }
                if (battleSkillBuild == null) {
                    arrayList5 = arrayList2;
                    enumSet2 = enumSet;
                } else if (z3) {
                    enumSet2 = enumSet;
                    arrayList5 = arrayList2;
                    arrayList5.add(battleSkillBuild);
                } else {
                    enumSet2 = enumSet;
                    arrayList5 = arrayList2;
                    arrayList5.add(battleSkillBuild);
                }
                arrayList2 = arrayList5;
                enumSet = enumSet2;
                it3 = it4;
                str4 = str12;
                str3 = str11;
                str2 = str13;
                w1Var = w1Var3;
            }
            String str2117 = str3;
            String str2118 = str2;
            ArrayList arrayList117 = arrayList2;
            w1Var2 = w1Var;
            if (eVar.f813e != null) {
                map6 = map3;
            } else {
                map6 = map3;
            }
            BattleUnit.Builder builder14 = BattleUnit.builder(str5);
            str7 = eVar.f815g;
            if (str7 != null) {
                str7 = str5;
            } else {
                str7 = str5;
            }
            BattleUnit.Builder builderStoryGuest14 = builder14.name(str7).side(eVar.f810b).slot(eVar.f811c).storyGuest(eVar.f816h);
            if (eVar.f817i) {
                dArr3 = dArr2;
                if (dArr2 != null) {
                    if (map6 != null) {
                        d3 = Double.parseDouble(String.valueOf(obj3));
                        i2 = (int) d3;
                    }
                    i2 = 0;
                } else {
                    if (map6 != null) {
                        d3 = Double.parseDouble(String.valueOf(obj3));
                        i2 = (int) d3;
                    }
                    i2 = 0;
                }
            } else {
                dArr3 = dArr2;
                if (dArr2 != null) {
                    if (map6 != null) {
                        d3 = Double.parseDouble(String.valueOf(obj3));
                        i2 = (int) d3;
                    }
                    i2 = 0;
                } else {
                    if (map6 != null) {
                        d3 = Double.parseDouble(String.valueOf(obj3));
                        i2 = (int) d3;
                    }
                    i2 = 0;
                }
            }
            BattleUnit.Builder builderGeneralSex14 = builderStoryGuest14.generalSex(i2);
            if (map6 == null) {
                zBooleanValue = false;
            } else {
                obj4 = map6.get("evolution_image_status");
                if (obj4 instanceof Boolean) {
                    zBooleanValue = ((Boolean) obj4).booleanValue();
                } else {
                    if (obj4 == null) {
                        i3 = 0;
                    } else {
                        i3 = (int) Double.parseDouble(String.valueOf(obj4));
                    }
                    if (i3 == 0) {
                    }
                    zBooleanValue = true;
                }
            }
            if (!zBooleanValue) {
                map8 = eVar.f813e;
                str8 = str5;
                if (map8 == null) {
                    z5 = false;
                } else {
                    z5 = false;
                }
                if (z5) {
                    z4 = false;
                }
                BattleUnit.Builder builderWisdom117 = builderGeneralSex14.evolutionImageStatus(z4).hp(dG + d2).attack(d12).defense(d16).wisdom(d17);
                if (map6 != null) {
                    strArr = new String[]{"general_orbit", "orbit"};
                    i4 = 2;
                    i5 = 0;
                    while (true) {
                        if (i5 < i4) {
                            dMax = e(map6.get(strArr[i5]));
                            if (dMax > 0.0d) {
                                i5++;
                                i4 = 2;
                            }
                        } else if (dArr3 != null) {
                            dMax = 1.0d;
                        } else {
                            dMax = 1.0d;
                        }
                    }
                } else if (dArr3 != null) {
                    dMax = 1.0d;
                } else {
                    dMax = 1.0d;
                }
                BattleUnit.Builder builderWisdomPercentBonus117 = builderWisdom117.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                if (eVar.f817i) {
                    if (w1Var2 != null) {
                        mapJ0 = w1Var2.J0(str8);
                    } else {
                        mapJ0 = null;
                    }
                    map7 = mapJ0;
                    if (map7 != null) {
                        obj5 = map7.get("weapon_effect");
                    } else {
                        obj5 = null;
                    }
                } else if (map6 == null) {
                    obj5 = null;
                } else {
                    map7 = map6;
                    obj5 = map7.get("weapon_effect");
                }
                return builderWisdomPercentBonus117.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList117).build();
            }
            str8 = str5;
            z4 = true;
            BattleUnit.Builder builderWisdom118 = builderGeneralSex14.evolutionImageStatus(z4).hp(dG + d2).attack(d12).defense(d16).wisdom(d17);
            if (map6 != null) {
                strArr = new String[]{"general_orbit", "orbit"};
                i4 = 2;
                i5 = 0;
                while (true) {
                    if (i5 < i4) {
                        dMax = e(map6.get(strArr[i5]));
                        if (dMax > 0.0d) {
                            i5++;
                            i4 = 2;
                        }
                    } else if (dArr3 != null) {
                        dMax = 1.0d;
                    } else {
                        dMax = 1.0d;
                    }
                }
            } else if (dArr3 != null) {
                dMax = 1.0d;
            } else {
                dMax = 1.0d;
            }
            BattleUnit.Builder builderWisdomPercentBonus118 = builderWisdom118.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
            if (eVar.f817i) {
                if (w1Var2 != null) {
                    mapJ0 = w1Var2.J0(str8);
                } else {
                    mapJ0 = null;
                }
                map7 = mapJ0;
                if (map7 != null) {
                    obj5 = map7.get("weapon_effect");
                } else {
                    obj5 = null;
                }
            } else if (map6 == null) {
                obj5 = null;
            } else {
                map7 = map6;
                obj5 = map7.get("weapon_effect");
            }
            return builderWisdomPercentBonus118.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList117).build();
        }
        dG4 = f(map10, "general_wisdom", eVar.r);
        arrayList = new ArrayList();
        enumSetNoneOf = EnumSet.noneOf(BattleSkillType.class);
        if (eVar.f817i) {
            z = false;
        } else {
            z = false;
        }
        strT0 = eVar.f822n;
        if (strT0 != null) {
            if (eVar.f817i) {
                map = eVar.f812d;
                if (map == null) {
                    obj = null;
                } else {
                    obj = map.get("general_naturalskill_id");
                }
                strT0 = b(obj);
                if (strT0.isEmpty()) {
                    strT0 = w1.P(strB);
                }
            } else {
                strT0 = w1VarA1.T0(strB);
            }
        } else if (eVar.f817i) {
            map = eVar.f812d;
            if (map == null) {
                obj = null;
            } else {
                obj = map.get("general_naturalskill_id");
            }
            strT0 = b(obj);
            if (strT0.isEmpty()) {
                strT0 = w1.P(strB);
            }
        } else {
            strT0 = w1VarA1.T0(strB);
        }
        z2 = eVar.f817i;
        double d18 = dG4;
        if (z2) {
            map2 = eVar.f812d;
        } else {
            map2 = eVar.f812d;
        }
        dArr2 = dArrK0;
        if (z2) {
            arrayList2 = arrayList;
            enumSet = enumSetNoneOf;
            z3 = z;
            map3 = map10;
            str2 = str;
        } else {
            arrayList2 = arrayList;
            enumSet = enumSetNoneOf;
            z3 = z;
            map3 = map10;
            str2 = str;
        }
        arrayList3 = new ArrayList();
        linkedHashSet = new LinkedHashSet();
        com.sgscq.vpn.v.a(arrayList3, linkedHashSet, strT0, 0, 1);
        str3 = "null";
        str4 = "0";
        if (map2 == null) {
            str5 = strB;
            com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map2.get("gSkill"));
            com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map2.get("general_skills"));
            obj2 = map2.get("bound_lieutenants");
            w1Var = w1VarA1;
            if (!(obj2 instanceof List)) {
                arrayList4 = new ArrayList();
                LinkedHashMap linkedHashMap9 = new LinkedHashMap();
                strJ = c.a.j(map2, "general_pk_id", "", str2);
                it = ((List) obj2).iterator();
                while (it.hasNext()) {
                    String str116 = str15;
                    next = it.next();
                    Iterator it112 = it;
                    if (!(next instanceof Map)) {
                        map5 = (Map) next;
                        String strValueOf11 = String.valueOf(map5.getOrDefault("major_pk_id", ""));
                        if (strJ.isEmpty()) {
                            strTrim = String.valueOf(map5.getOrDefault("position", "")).trim();
                            if (strTrim.isEmpty()) {
                                arrayList4.add(map5);
                            } else {
                                arrayList4.add(map5);
                            }
                        } else {
                            strTrim = String.valueOf(map5.getOrDefault("position", "")).trim();
                            if (strTrim.isEmpty()) {
                                arrayList4.add(map5);
                            } else {
                                arrayList4.add(map5);
                            }
                        }
                    }
                    str15 = str116;
                    it = it112;
                }
                str6 = str15;
                ArrayList arrayList118 = new ArrayList(arrayList4);
                arrayList118.addAll(linkedHashMap9.values());
                it2 = arrayList118.iterator();
                while (it2.hasNext()) {
                    map4 = (Map) it2.next();
                    size = arrayList3.size();
                    if (map4 == null) {
                        strT1 = "";
                    } else {
                        strD = com.sgscq.vpn.v.d(map4.get("general_id"), map4.get("id"));
                        if (strD.isEmpty()) {
                            strT1 = "";
                        } else {
                            strT1 = w1.a1(null).T0(strD);
                        }
                    }
                    Iterator it113 = it2;
                    com.sgscq.vpn.v.a(arrayList3, linkedHashSet, strT1, 0, 1);
                    com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map4.get("gSkill"));
                    com.sgscq.vpn.v.c(arrayList3, linkedHashSet, map4.get("general_skills"));
                    if (arrayList3.size() > size) {
                        com.sgscq.vpn.v.a(arrayList3, linkedHashSet, com.sgscq.vpn.v.d(map4.get("general_naturalskill_id"), map4.get("natural_skill_id")), 0, 1);
                    }
                    it2 = it113;
                }
            }
            it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                com.sgscq.vpn.u uVar15 = (com.sgscq.vpn.u) it3.next();
                str10 = uVar15.f1416a;
                int i11110 = uVar15.f1417b;
                int i11111 = uVar15.f1418c;
                boolean z1119 = eVar.f821m;
                boolean z11110 = eVar.f820l;
                if (str10 != null) {
                    str11 = str3;
                    str12 = str4;
                    str13 = str2;
                    w1Var3 = w1Var;
                    it4 = it3;
                    battleSkillBuild = null;
                } else {
                    str11 = str3;
                    str12 = str4;
                    str13 = str2;
                    w1Var3 = w1Var;
                    it4 = it3;
                    battleSkillBuild = null;
                }
                if (battleSkillBuild == null) {
                    arrayList5 = arrayList2;
                    enumSet2 = enumSet;
                } else if (z3) {
                    enumSet2 = enumSet;
                    arrayList5 = arrayList2;
                    arrayList5.add(battleSkillBuild);
                } else {
                    enumSet2 = enumSet;
                    arrayList5 = arrayList2;
                    arrayList5.add(battleSkillBuild);
                }
                arrayList2 = arrayList5;
                enumSet = enumSet2;
                it3 = it4;
                str4 = str12;
                str3 = str11;
                str2 = str13;
                w1Var = w1Var3;
            }
            String str2119 = str3;
            String str21110 = str2;
            ArrayList arrayList119 = arrayList2;
            w1Var2 = w1Var;
            if (eVar.f813e != null) {
                map6 = map3;
            } else {
                map6 = map3;
            }
            BattleUnit.Builder builder15 = BattleUnit.builder(str5);
            str7 = eVar.f815g;
            if (str7 != null) {
                str7 = str5;
            } else {
                str7 = str5;
            }
            BattleUnit.Builder builderStoryGuest15 = builder15.name(str7).side(eVar.f810b).slot(eVar.f811c).storyGuest(eVar.f816h);
            if (eVar.f817i) {
                dArr3 = dArr2;
                if (dArr2 != null) {
                    if (map6 != null) {
                        d3 = Double.parseDouble(String.valueOf(obj3));
                        i2 = (int) d3;
                    }
                    i2 = 0;
                } else {
                    if (map6 != null) {
                        d3 = Double.parseDouble(String.valueOf(obj3));
                        i2 = (int) d3;
                    }
                    i2 = 0;
                }
            } else {
                dArr3 = dArr2;
                if (dArr2 != null) {
                    if (map6 != null) {
                        d3 = Double.parseDouble(String.valueOf(obj3));
                        i2 = (int) d3;
                    }
                    i2 = 0;
                } else {
                    if (map6 != null) {
                        d3 = Double.parseDouble(String.valueOf(obj3));
                        i2 = (int) d3;
                    }
                    i2 = 0;
                }
            }
            BattleUnit.Builder builderGeneralSex15 = builderStoryGuest15.generalSex(i2);
            if (map6 == null) {
                zBooleanValue = false;
            } else {
                obj4 = map6.get("evolution_image_status");
                if (obj4 instanceof Boolean) {
                    zBooleanValue = ((Boolean) obj4).booleanValue();
                } else {
                    if (obj4 == null) {
                        i3 = 0;
                    } else {
                        i3 = (int) Double.parseDouble(String.valueOf(obj4));
                    }
                    if (i3 == 0) {
                    }
                    zBooleanValue = true;
                }
            }
            if (!zBooleanValue) {
                map8 = eVar.f813e;
                str8 = str5;
                if (map8 == null) {
                    z5 = false;
                } else {
                    z5 = false;
                }
                if (z5) {
                    z4 = false;
                }
                BattleUnit.Builder builderWisdom119 = builderGeneralSex15.evolutionImageStatus(z4).hp(dG + d2).attack(d12).defense(d16).wisdom(d18);
                if (map6 != null) {
                    strArr = new String[]{"general_orbit", "orbit"};
                    i4 = 2;
                    i5 = 0;
                    while (true) {
                        if (i5 < i4) {
                            dMax = e(map6.get(strArr[i5]));
                            if (dMax > 0.0d) {
                                i5++;
                                i4 = 2;
                            }
                        } else if (dArr3 != null) {
                            dMax = 1.0d;
                        } else {
                            dMax = 1.0d;
                        }
                    }
                } else if (dArr3 != null) {
                    dMax = 1.0d;
                } else {
                    dMax = 1.0d;
                }
                BattleUnit.Builder builderWisdomPercentBonus119 = builderWisdom119.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
                if (eVar.f817i) {
                    if (w1Var2 != null) {
                        mapJ0 = w1Var2.J0(str8);
                    } else {
                        mapJ0 = null;
                    }
                    map7 = mapJ0;
                    if (map7 != null) {
                        obj5 = map7.get("weapon_effect");
                    } else {
                        obj5 = null;
                    }
                } else if (map6 == null) {
                    obj5 = null;
                } else {
                    map7 = map6;
                    obj5 = map7.get("weapon_effect");
                }
                return builderWisdomPercentBonus119.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList119).build();
            }
            str8 = str5;
            z4 = true;
            BattleUnit.Builder builderWisdom1110 = builderGeneralSex15.evolutionImageStatus(z4).hp(dG + d2).attack(d12).defense(d16).wisdom(d18);
            if (map6 != null) {
                strArr = new String[]{"general_orbit", "orbit"};
                i4 = 2;
                i5 = 0;
                while (true) {
                    if (i5 < i4) {
                        dMax = e(map6.get(strArr[i5]));
                        if (dMax > 0.0d) {
                            i5++;
                            i4 = 2;
                        }
                    } else if (dArr3 != null) {
                        dMax = 1.0d;
                    } else {
                        dMax = 1.0d;
                    }
                }
            } else if (dArr3 != null) {
                dMax = 1.0d;
            } else {
                dMax = 1.0d;
            }
            BattleUnit.Builder builderWisdomPercentBonus1110 = builderWisdom1110.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
            if (eVar.f817i) {
                if (w1Var2 != null) {
                    mapJ0 = w1Var2.J0(str8);
                } else {
                    mapJ0 = null;
                }
                map7 = mapJ0;
                if (map7 != null) {
                    obj5 = map7.get("weapon_effect");
                } else {
                    obj5 = null;
                }
            } else if (map6 == null) {
                obj5 = null;
            } else {
                map7 = map6;
                obj5 = map7.get("weapon_effect");
            }
            return builderWisdomPercentBonus1110.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList119).build();
        }
        w1Var = w1VarA1;
        str5 = strB;
        str6 = "general_pk_id";
        it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            com.sgscq.vpn.u uVar16 = (com.sgscq.vpn.u) it3.next();
            str10 = uVar16.f1416a;
            int i11112 = uVar16.f1417b;
            int i11113 = uVar16.f1418c;
            boolean z11111 = eVar.f821m;
            boolean z11112 = eVar.f820l;
            if (str10 != null) {
                str11 = str3;
                str12 = str4;
                str13 = str2;
                w1Var3 = w1Var;
                it4 = it3;
                battleSkillBuild = null;
            } else {
                str11 = str3;
                str12 = str4;
                str13 = str2;
                w1Var3 = w1Var;
                it4 = it3;
                battleSkillBuild = null;
            }
            if (battleSkillBuild == null) {
                arrayList5 = arrayList2;
                enumSet2 = enumSet;
            } else if (z3) {
                enumSet2 = enumSet;
                arrayList5 = arrayList2;
                arrayList5.add(battleSkillBuild);
            } else {
                enumSet2 = enumSet;
                arrayList5 = arrayList2;
                arrayList5.add(battleSkillBuild);
            }
            arrayList2 = arrayList5;
            enumSet = enumSet2;
            it3 = it4;
            str4 = str12;
            str3 = str11;
            str2 = str13;
            w1Var = w1Var3;
        }
        String str21111 = str3;
        String str21112 = str2;
        ArrayList arrayList1110 = arrayList2;
        w1Var2 = w1Var;
        if (eVar.f813e != null) {
            map6 = map3;
        } else {
            map6 = map3;
        }
        BattleUnit.Builder builder16 = BattleUnit.builder(str5);
        str7 = eVar.f815g;
        if (str7 != null) {
            str7 = str5;
        } else {
            str7 = str5;
        }
        BattleUnit.Builder builderStoryGuest16 = builder16.name(str7).side(eVar.f810b).slot(eVar.f811c).storyGuest(eVar.f816h);
        if (eVar.f817i) {
            dArr3 = dArr2;
            if (dArr2 != null) {
                if (map6 != null) {
                    d3 = Double.parseDouble(String.valueOf(obj3));
                    i2 = (int) d3;
                }
                i2 = 0;
            } else {
                if (map6 != null) {
                    d3 = Double.parseDouble(String.valueOf(obj3));
                    i2 = (int) d3;
                }
                i2 = 0;
            }
        } else {
            dArr3 = dArr2;
            if (dArr2 != null) {
                if (map6 != null) {
                    d3 = Double.parseDouble(String.valueOf(obj3));
                    i2 = (int) d3;
                }
                i2 = 0;
            } else {
                if (map6 != null) {
                    d3 = Double.parseDouble(String.valueOf(obj3));
                    i2 = (int) d3;
                }
                i2 = 0;
            }
        }
        BattleUnit.Builder builderGeneralSex16 = builderStoryGuest16.generalSex(i2);
        if (map6 == null) {
            zBooleanValue = false;
        } else {
            obj4 = map6.get("evolution_image_status");
            if (obj4 instanceof Boolean) {
                zBooleanValue = ((Boolean) obj4).booleanValue();
            } else {
                if (obj4 == null) {
                    i3 = 0;
                } else {
                    i3 = (int) Double.parseDouble(String.valueOf(obj4));
                }
                if (i3 == 0) {
                }
                zBooleanValue = true;
            }
        }
        if (!zBooleanValue) {
            map8 = eVar.f813e;
            str8 = str5;
            if (map8 == null) {
                z5 = false;
            } else {
                z5 = false;
            }
            if (z5) {
                z4 = false;
            }
            BattleUnit.Builder builderWisdom1111 = builderGeneralSex16.evolutionImageStatus(z4).hp(dG + d2).attack(d12).defense(d16).wisdom(d18);
            if (map6 != null) {
                strArr = new String[]{"general_orbit", "orbit"};
                i4 = 2;
                i5 = 0;
                while (true) {
                    if (i5 < i4) {
                        dMax = e(map6.get(strArr[i5]));
                        if (dMax > 0.0d) {
                            i5++;
                            i4 = 2;
                        }
                    } else if (dArr3 != null) {
                        dMax = 1.0d;
                    } else {
                        dMax = 1.0d;
                    }
                }
            } else if (dArr3 != null) {
                dMax = 1.0d;
            } else {
                dMax = 1.0d;
            }
            BattleUnit.Builder builderWisdomPercentBonus1111 = builderWisdom1111.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
            if (eVar.f817i) {
                if (w1Var2 != null) {
                    mapJ0 = w1Var2.J0(str8);
                } else {
                    mapJ0 = null;
                }
                map7 = mapJ0;
                if (map7 != null) {
                    obj5 = map7.get("weapon_effect");
                } else {
                    obj5 = null;
                }
            } else if (map6 == null) {
                obj5 = null;
            } else {
                map7 = map6;
                obj5 = map7.get("weapon_effect");
            }
            return builderWisdomPercentBonus1111.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList1110).build();
        }
        str8 = str5;
        z4 = true;
        BattleUnit.Builder builderWisdom1112 = builderGeneralSex16.evolutionImageStatus(z4).hp(dG + d2).attack(d12).defense(d16).wisdom(d18);
        if (map6 != null) {
            strArr = new String[]{"general_orbit", "orbit"};
            i4 = 2;
            i5 = 0;
            while (true) {
                if (i5 < i4) {
                    dMax = e(map6.get(strArr[i5]));
                    if (dMax > 0.0d) {
                        i5++;
                        i4 = 2;
                    }
                } else if (dArr3 != null) {
                    dMax = 1.0d;
                } else {
                    dMax = 1.0d;
                }
            }
        } else if (dArr3 != null) {
            dMax = 1.0d;
        } else {
            dMax = 1.0d;
        }
        BattleUnit.Builder builderWisdomPercentBonus1112 = builderWisdom1112.orbit(dMax).hpPercentBonus(eVar.s + dArr4[0]).attackPercentBonus(eVar.t + dArr4[1]).defensePercentBonus(eVar.u + dArr4[2]).wisdomPercentBonus(eVar.v + dArr4[3]);
        if (eVar.f817i) {
            if (w1Var2 != null) {
                mapJ0 = w1Var2.J0(str8);
            } else {
                mapJ0 = null;
            }
            map7 = mapJ0;
            if (map7 != null) {
                obj5 = map7.get("weapon_effect");
            } else {
                obj5 = null;
            }
        } else if (map6 == null) {
            obj5 = null;
        } else {
            map7 = map6;
            obj5 = map7.get("weapon_effect");
        }
        return builderWisdomPercentBonus1112.normalAttackSkill(NormalAttackStyleResolver.fromWeaponEffect(obj5)).skills(arrayList1110).build();
    }

    public static String b(Object obj) {
        if (obj == null) {
            return "";
        }
        String strTrim = String.valueOf(obj).trim();
        return (strTrim.isEmpty() || "0".equals(strTrim) || "null".equalsIgnoreCase(strTrim)) ? "" : strTrim;
    }

    public static boolean c(String str) {
        char cCharAt;
        return str != null && str.length() == 6 && str.startsWith("39100") && (cCharAt = str.charAt(5)) >= '1' && cCharAt <= '8';
    }

    public static int d(w1 w1Var, String str, String str2, ArrayList arrayList, Map map) {
        boolean z;
        Object obj = map.get("gSkill");
        List arrayList2 = obj instanceof List ? (List) obj : new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map map2 = (Map) it.next();
            String strB = b(map2.get("pk_id"));
            String strB2 = b(map2.get("skill_id"));
            String strB3 = b(map2.get("position"));
            if (strB3.isEmpty()) {
                strB3 = b(map2.get("skill_position"));
            }
            Iterator it2 = arrayList2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = false;
                    break;
                }
                Object next = it2.next();
                if (next instanceof Map) {
                    Map map3 = (Map) next;
                    String strB4 = b(map3.get("pk_id"));
                    if (strB.isEmpty() || !strB.equals(strB4)) {
                        String strB5 = b(map3.get("skill_id"));
                        if (strB5.isEmpty()) {
                            strB5 = b(map3.get("id"));
                        }
                        String strB6 = b(map3.get("position"));
                        if (strB6.isEmpty()) {
                            strB6 = b(map3.get("skill_position"));
                        }
                        String str3 = strB6;
                        if (!strB2.equals(strB5) || !strB3.equals(str3)) {
                        }
                    }
                    z = true;
                    break;
                }
            }
            if (!z) {
                String strB7 = b(map2.get("skill_id"));
                if (strB7.isEmpty()) {
                    strB7 = b(map2.get("id"));
                }
                String strM1 = w1Var == null ? strB7 : w1Var.m1(strB7);
                String strB8 = b(map2.get("pk_id"));
                String strB9 = b(map2.get("position"));
                if (strB9.isEmpty()) {
                    strB9 = b(map2.get("skill_position"));
                }
                StringBuilder sbL = c.a.l("{skillPkId=", strB8, ",skillId=", strB7, ",skillName=");
                sbL.append(strM1);
                sbL.append(",position=");
                sbL.append(strB9);
                sbL.append("}");
                arrayList3.add(sbL.toString());
            }
        }
        if (!arrayList3.isEmpty()) {
            StringBuilder sbL2 = c.a.l("[BattleSkillAudit] General.gSkill missing bound skills generalPkId=", str, " generalId=", str2, " missing=");
            sbL2.append(arrayList3);
            z2.g("SGSCQ_SRV", sbL2.toString());
        }
        return arrayList3.size();
    }

    public static double e(Object obj) {
        if (obj == null) {
            return 0.0d;
        }
        try {
            return Double.parseDouble(String.valueOf(obj));
        } catch (NumberFormatException unused) {
            return 0.0d;
        }
    }

    public static double f(Map map, String str, double d2) {
        double dE = e(map == null ? null : map.get(str));
        return dE > 0.0d ? dE : d2;
    }

    public static double g(Map map, double[] dArr, int i2, boolean z, double d2, String... strArr) {
        if (map != null) {
            for (String str : strArr) {
                double dE = e(map.get(str));
                if (dE > 0.0d) {
                    return dE;
                }
            }
        }
        if (dArr != null && dArr.length > i2) {
            double d3 = dArr[i2];
            if (d3 > 0.0d) {
                if (!z) {
                    return d3;
                }
                int i3 = i2 + 5;
                return Math.max(1, (int) (((dArr.length > i3 ? dArr[i3] : 0.0d) * 99.0d) + d3));
            }
        }
        return d2;
    }

    public static e h(int i2, int i3, String str) {
        return new e(str, i2, i3);
    }
}
