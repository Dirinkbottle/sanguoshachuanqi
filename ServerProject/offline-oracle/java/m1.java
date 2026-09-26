package com.sgscq.vpn;

import android.util.Log;
import com.google.gson.reflect.TypeToken;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class m1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f1171c;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final LinkedHashSet f1184p;
    public static volatile LinkedHashSet r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f1169a = {100, 270, 440, 610, 780, 950, 1120, 1290};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f1170b = {100, 100, 100, 100, 100, 100, 100, 100};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String[] f1172d = {"无双飞将·吕布", "文武双全·张辽", "佐世之才·曹丕", "鹰视狼顾·司马懿", "雄姿英发·陆逊", "怀功辅弼·鲁肃", "智冠天下·诸葛亮", "威震华夏·魏武帝"};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String[][] f1173e = {new String[]{"331008", "351007", "351023"}, new String[]{"351005", "351023", "351015"}, new String[]{"351007", "351023", "351035"}, new String[]{"351036", "351005", "351005"}, new String[]{"351005", "351015", "351023"}, new String[]{"351005", "351005", "342007"}, new String[]{"331001", "351011", "331008"}, new String[]{"351015", "311003", "351017", "351015", "351005"}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final LinkedHashSet f1174f = new LinkedHashSet(Arrays.asList("331008", "351007", "351023", "351005", "351015", "351036", "351035", "342007", "331001", "351011", "351017", "311003"));

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String[][] f1175g = {new String[]{"171015", "124001", "131011"}, new String[]{"111025", "111029", "111013"}, new String[]{"111006", "111029", "121008"}, new String[]{"111025", "131008", "141021"}, new String[]{"121020", "111017", "111029"}, new String[]{"142013", "171003", "122014"}, new String[]{"131001", "121002", "121006"}, new String[]{"141024", "114001", "141003", "121008", "111008"}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String[][][] f1176h = {new String[][]{new String[]{"141002", "111022"}, new String[]{"111017", "134001"}, new String[]{"111004", "121011"}}, new String[][]{new String[]{"131004", "111024"}, new String[]{"111004", "111030"}, new String[]{"142006", "121020"}}, new String[][]{new String[]{"111009", "111001"}, new String[]{"111030", "111013"}, new String[]{"141014", "134001"}}, new String[][]{new String[]{"111024", "131020"}, new String[]{"131009", "121014"}, new String[]{"111009", "141022"}}, new String[][]{new String[]{"111013", "111024"}, new String[]{"141013", "111012"}, new String[]{"111004", "111030"}}, new String[][]{new String[]{"152002", "112012"}, new String[]{"171001", "111005"}, new String[]{"121005", "142008"}}, new String[][]{new String[]{"131010", "112012"}, new String[]{"141010", "121017"}, new String[]{"131013", "142003"}}, new String[][]{new String[]{"131012", "141011"}, new String[]{"171014", "122011"}, new String[]{"131020", "121017"}, new String[]{"121010", "134001"}, new String[]{"141004", "131009"}}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String[] f1177i = {"141001", "121001", "121002", "121021", "131001", "131002", "111001", "111026"};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String[] f1178j = {"", "211002", "221002", "231007", "241005"};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String[] f1179k = {"", "601009", "602009", "603009", "604009"};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String[] f1180l = {"391001", "391002", "391003", "391004", "391005", "391006", "391007", "391008"};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final double[] f1181m = {9400.0d, 8225.0d, 10913.0d, 9400.0d};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final HashSet f1182n = new HashSet();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String[] f1183o = {"141002", "111012", "111005", "131009", "131010", "134001", "111006", "121006", "114001", "111003", "141012", "121011"};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final LinkedHashSet f1185q = new LinkedHashSet();

    static {
        String[] strArr = {"141002", "111006", "111012", "111005", "131009", "131010", "121011", "114001"};
        f1171c = strArr;
        f1184p = new LinkedHashSet(Arrays.asList(strArr));
    }

    public static String a(w1 w1Var, int i2) {
        ArrayList arrayList = new ArrayList();
        Iterator it = w1Var.i0().iterator();
        while (it.hasNext()) {
            String strB0 = w1Var.B0((String) it.next());
            if (!strB0.isEmpty() && !arrayList.contains(strB0)) {
                arrayList.add(strB0);
            }
        }
        return arrayList.isEmpty() ? "" : (String) arrayList.get(Math.floorMod(i2, arrayList.size()));
    }

    public static ArrayList b(int i2) {
        String string;
        Map mapJ0;
        w1.X = true;
        w1 w1VarA1 = w1.a1(null);
        HashSet hashSet = f1182n;
        if (hashSet.isEmpty()) {
            Iterator it = w1VarA1.i0().iterator();
            while (it.hasNext()) {
                Iterator it2 = com.sgscq.vpn.handler.p0.R((String) it.next()).iterator();
                while (it2.hasNext()) {
                    hashSet.add((String) it2.next());
                }
            }
        }
        LinkedHashSet linkedHashSet = f1185q;
        if (linkedHashSet.isEmpty()) {
            for (String str : w1VarA1.i0()) {
                String strR0 = w1VarA1.R0(str);
                if (strR0 != null && strR0.startsWith("神·") && (mapJ0 = w1VarA1.J0(str)) != null) {
                    String strTrim = String.valueOf(mapJ0.getOrDefault("general_naturalskill_id", "")).trim();
                    if (!strTrim.isEmpty() && !"null".equalsIgnoreCase(strTrim)) {
                        linkedHashSet.add(strTrim);
                    }
                }
            }
        }
        new n5(null);
        int iE0 = p5.E0(i2);
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < 8; i3++) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                arrayList.add(c(w1VarA1, i3, iE0));
                z2.e("SGSCQ_ROSTER", "elite buildOne " + i(i3) + " ok took " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
            } catch (RuntimeException e2) {
                String str2 = "elite buildOne " + i(i3) + " failed took " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms";
                SimpleDateFormat simpleDateFormat = z2.f1595a;
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append("\n");
                try {
                    string = Log.getStackTraceString(e2);
                } catch (RuntimeException unused) {
                    string = e2.toString();
                }
                sb.append(string);
                z2.a("SGSCQ_ROSTER", "W", sb.toString());
                try {
                    Log.w("SGSCQ_ROSTER", str2, e2);
                } catch (RuntimeException unused2) {
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:144:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:146:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:147:0x03bc  */
    /* JADX WARN: Code duplicated, block: B:151:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:154:0x03d4  */
    /* JADX WARN: Code duplicated, block: B:155:0x03d7  */
    /* JADX WARN: Code duplicated, block: B:160:0x03eb  */
    /* JADX WARN: Code duplicated, block: B:163:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:166:0x0405  */
    /* JADX WARN: Code duplicated, block: B:168:0x040f  */
    /* JADX WARN: Code duplicated, block: B:171:0x041d  */
    /* JADX WARN: Code duplicated, block: B:172:0x041f  */
    /* JADX WARN: Code duplicated, block: B:174:0x0422  */
    /* JADX WARN: Code duplicated, block: B:176:0x042d  */
    /* JADX WARN: Code duplicated, block: B:179:0x0438  */
    /* JADX WARN: Code duplicated, block: B:182:0x0446  */
    /* JADX WARN: Code duplicated, block: B:186:0x0458 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:187:0x045a  */
    /* JADX WARN: Code duplicated, block: B:191:0x046c  */
    /* JADX WARN: Code duplicated, block: B:193:0x0475 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:197:0x0485  */
    /* JADX WARN: Code duplicated, block: B:199:0x048c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:202:0x0498  */
    /* JADX WARN: Code duplicated, block: B:204:0x049e  */
    /* JADX WARN: Code duplicated, block: B:206:0x04b7  */
    /* JADX WARN: Code duplicated, block: B:208:0x04be  */
    /* JADX WARN: Code duplicated, block: B:209:0x04c0  */
    /* JADX WARN: Code duplicated, block: B:211:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:213:0x04c9 A[LOOP:13: B:212:0x04c7->B:213:0x04c9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:215:0x0546  */
    /* JADX WARN: Code duplicated, block: B:217:0x0550  */
    /* JADX WARN: Code duplicated, block: B:219:0x055a  */
    /* JADX WARN: Code duplicated, block: B:220:0x05c8  */
    /* JADX WARN: Code duplicated, block: B:222:0x05e9  */
    /* JADX WARN: Code duplicated, block: B:224:0x05f0  */
    /* JADX WARN: Code duplicated, block: B:225:0x05f2  */
    /* JADX WARN: Code duplicated, block: B:227:0x05f5  */
    /* JADX WARN: Code duplicated, block: B:229:0x05ff  */
    /* JADX WARN: Code duplicated, block: B:232:0x060a  */
    /* JADX WARN: Code duplicated, block: B:233:0x0658  */
    /* JADX WARN: Code duplicated, block: B:236:0x067a  */
    /* JADX WARN: Code duplicated, block: B:237:0x067c  */
    /* JADX WARN: Code duplicated, block: B:255:0x06ae  */
    /* JADX WARN: Code duplicated, block: B:259:0x06d5 A[LOOP:14: B:257:0x06cf->B:259:0x06d5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:263:0x06f8  */
    /* JADX WARN: Code duplicated, block: B:265:0x076c A[LOOP:16: B:264:0x076a->B:265:0x076c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:268:0x07c4  */
    /* JADX WARN: Code duplicated, block: B:271:0x0839  */
    /* JADX WARN: Code duplicated, block: B:274:0x0845  */
    /* JADX WARN: Code duplicated, block: B:276:0x084d  */
    /* JADX WARN: Code duplicated, block: B:277:0x085c  */
    /* JADX WARN: Code duplicated, block: B:280:0x0864  */
    /* JADX WARN: Code duplicated, block: B:281:0x0867  */
    /* JADX WARN: Code duplicated, block: B:284:0x086f  */
    /* JADX WARN: Code duplicated, block: B:293:0x089e  */
    /* JADX WARN: Code duplicated, block: B:297:0x08ad  */
    /* JADX WARN: Code duplicated, block: B:299:0x08c8  */
    /* JADX WARN: Code duplicated, block: B:300:0x08d3  */
    /* JADX WARN: Code duplicated, block: B:302:0x08d6  */
    /* JADX WARN: Code duplicated, block: B:303:0x090b  */
    /* JADX WARN: Code duplicated, block: B:306:0x092a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:307:0x092c  */
    /* JADX WARN: Code duplicated, block: B:308:0x093b  */
    /* JADX WARN: Code duplicated, block: B:310:0x094b  */
    /* JADX WARN: Code duplicated, block: B:313:0x096e  */
    /* JADX WARN: Code duplicated, block: B:314:0x099b  */
    /* JADX WARN: Code duplicated, block: B:316:0x09fa  */
    /* JADX WARN: Code duplicated, block: B:318:0x09ff  */
    /* JADX WARN: Code duplicated, block: B:320:0x0a06  */
    /* JADX WARN: Code duplicated, block: B:321:0x0a08  */
    /* JADX WARN: Code duplicated, block: B:323:0x0a0b  */
    /* JADX WARN: Code duplicated, block: B:325:0x0a17  */
    /* JADX WARN: Code duplicated, block: B:326:0x0a1f  */
    /* JADX WARN: Code duplicated, block: B:328:0x0a23  */
    /* JADX WARN: Code duplicated, block: B:329:0x0a2c  */
    /* JADX WARN: Code duplicated, block: B:332:0x0a64  */
    /* JADX WARN: Code duplicated, block: B:335:0x0a68  */
    /* JADX WARN: Code duplicated, block: B:338:0x0a82  */
    /* JADX WARN: Code duplicated, block: B:340:0x0a8c  */
    /* JADX WARN: Code duplicated, block: B:341:0x0afd  */
    /* JADX WARN: Code duplicated, block: B:344:0x0b26  */
    /* JADX WARN: Code duplicated, block: B:345:0x0b28  */
    /* JADX WARN: Code duplicated, block: B:347:0x0b2b  */
    /* JADX WARN: Code duplicated, block: B:349:0x0b35  */
    /* JADX WARN: Code duplicated, block: B:352:0x0b42  */
    /* JADX WARN: Code duplicated, block: B:353:0x0b81  */
    /* JADX WARN: Code duplicated, block: B:354:0x0b84  */
    /* JADX WARN: Code duplicated, block: B:357:0x0bae  */
    /* JADX WARN: Code duplicated, block: B:405:0x03de A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:453:0x0416 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:455:0x0448 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:457:0x0442 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:460:0x0461 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:219:0x055a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:232:0x060a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:314:0x099b, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:340:0x0a8c, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:352:0x0b42, please report this as an issue */
    public static v5 c(w1 w1Var, int i2, int i3) {
        int i4;
        int i5;
        String str;
        int i6;
        String str2;
        LinkedHashSet linkedHashSet;
        String str3;
        ArrayList arrayList;
        String str4;
        int iRound;
        Iterator it;
        Map map;
        Object obj;
        Object obj2;
        int i7;
        String[] strArr;
        String[] strArr2;
        Object obj3;
        String str5;
        LinkedHashSet linkedHashSet2;
        Map mapK1;
        int i8;
        int i9;
        int length;
        int i10;
        int i11;
        int i12;
        ArrayList arrayList2;
        int i13;
        String[] strArr3;
        int i14;
        ArrayList arrayList3;
        long j2;
        LinkedHashMap linkedHashMapL;
        ArrayList arrayList4;
        int i15;
        String str6;
        ArrayList arrayList5;
        String str7;
        String str8;
        ArrayList arrayList6;
        ArrayList arrayList7;
        Object obj4;
        Object obj5;
        ArrayList arrayList8;
        ArrayList arrayList9;
        int i16;
        ArrayList arrayList10;
        Object obj6;
        Object obj7;
        ArrayList arrayList11;
        ArrayList arrayList12;
        ArrayList arrayList13;
        LinkedHashMap linkedHashMapZ0;
        ArrayList arrayList14;
        LinkedHashSet linkedHashSet3;
        int i17;
        int i18;
        int i19;
        ArrayList arrayList15;
        int iIntValue;
        String str9;
        String[] strArr4;
        LinkedHashSet linkedHashSet4;
        w1 w1Var2;
        int i20;
        boolean z;
        String str10;
        String str11;
        String str12;
        String str13;
        Object obj8;
        int i21;
        LinkedHashMap linkedHashMapF;
        String str14;
        int i22;
        Object obj9;
        Object obj10;
        Object obj11;
        int iH;
        Object obj12;
        ArrayList arrayList16;
        ArrayList arrayList17;
        String strR;
        ArrayList arrayList18;
        int i23;
        boolean z2;
        String strB0;
        String str15;
        boolean z3;
        LinkedHashSet linkedHashSet5;
        String str16;
        int iIntValue2;
        String strT;
        int i24;
        ArrayList arrayListP;
        Iterator it2;
        int i25;
        ArrayList arrayList19;
        int i26;
        int i27;
        boolean z4;
        String strB1;
        String str17;
        String strR2;
        boolean z5;
        String[] strArr5;
        int length2;
        int i28;
        String strR3;
        int i29;
        int iQ;
        String[] strArr6;
        w1 w1Var3 = w1Var;
        int i30 = i2;
        int i31 = f1170b[i30];
        int iMax = Math.max(1, i31) * 4;
        int i32 = f1169a[i30];
        String str18 = f1171c[i30];
        ArrayList arrayList20 = new ArrayList();
        ArrayList arrayList21 = new ArrayList();
        LinkedHashSet linkedHashSet6 = new LinkedHashSet();
        String[][] strArr7 = f1175g;
        int i33 = 0;
        for (String str19 : strArr7[i30]) {
            if (!str19.isEmpty() && linkedHashSet6.add(str19)) {
                arrayList20.add(str19);
                arrayList21.add(str19);
            }
        }
        LinkedHashSet linkedHashSet7 = new LinkedHashSet();
        String[][][] strArr8 = f1176h;
        String[][] strArr9 = strArr8[i30];
        int length3 = strArr9.length;
        int i34 = 0;
        while (i33 < length3) {
            String[] strArr10 = strArr9[i33];
            String[][] strArr11 = strArr9;
            int length4 = strArr10.length;
            while (i34 < length4) {
                int i35 = length4;
                String str20 = strArr10[i34];
                if (!str20.isEmpty()) {
                    linkedHashSet7.add(str20);
                }
                i34++;
                length4 = i35;
            }
            i33++;
            i34 = 0;
            strArr9 = strArr11;
        }
        if (linkedHashSet6.add(str18)) {
            arrayList20.add(str18);
        }
        LinkedHashSet linkedHashSet8 = new LinkedHashSet(linkedHashSet6);
        linkedHashSet8.addAll(linkedHashSet7);
        String[] strArr12 = f1183o;
        int length5 = strArr12.length;
        int i36 = 0;
        while (i36 < length5) {
            int i37 = length5;
            String str21 = strArr12[i36];
            String[] strArr13 = strArr12;
            if (arrayList20.size() >= 11) {
                break;
            }
            if (!linkedHashSet8.contains(str21) && linkedHashSet6.add(str21)) {
                arrayList20.add(str21);
            }
            i36++;
            length5 = i37;
            strArr12 = strArr13;
        }
        LinkedHashSet linkedHashSet9 = new LinkedHashSet(linkedHashSet6);
        linkedHashSet9.addAll(linkedHashSet7);
        ArrayList<String> arrayListF = f(w1Var3, arrayList21, linkedHashSet9);
        for (String str22 : arrayListF) {
            if (arrayList20.size() >= 11) {
                break;
            }
            if (!linkedHashSet8.contains(str22) && linkedHashSet6.add(str22)) {
                arrayList20.add(str22);
            }
        }
        int i38 = 2;
        for (String str23 : v(w1Var3, str18.substring(0, 2), linkedHashSet8, 11 - arrayList20.size())) {
            if (arrayList20.size() >= 11) {
                break;
            }
            if (linkedHashSet6.add(str23)) {
                arrayList20.add(str23);
            }
        }
        int iMin = Math.min(11, arrayList20.size());
        LinkedHashSet linkedHashSet10 = new LinkedHashSet(linkedHashSet6);
        linkedHashSet10.addAll(linkedHashSet7);
        ArrayList arrayList22 = new ArrayList();
        Iterator it3 = f(w1Var3, arrayList21, linkedHashSet10).iterator();
        while (true) {
            int i39 = i38;
            if (!it3.hasNext()) {
                i4 = i39;
                break;
            }
            String str24 = (String) it3.next();
            Iterator it4 = it3;
            if (arrayList22.size() >= 8) {
                i4 = 2;
                break;
            }
            if (!linkedHashSet10.contains(str24)) {
                linkedHashSet10.add(str24);
                arrayList22.add(str24);
            }
            i38 = 2;
            it3 = it4;
        }
        for (String str25 : v(w1Var3, str18.substring(0, i4), linkedHashSet10, 8 - arrayList22.size())) {
            if (arrayList22.size() >= 8) {
                break;
            }
            arrayList22.add(str25);
        }
        linkedHashSet6.addAll(arrayList22);
        String strI = i(i2);
        long jG = c7.g();
        ArrayList arrayList23 = new ArrayList();
        ArrayList arrayList24 = new ArrayList();
        LinkedHashSet linkedHashSet11 = linkedHashSet7;
        ArrayList arrayList25 = new ArrayList();
        ArrayList arrayList26 = new ArrayList();
        ArrayList arrayList27 = new ArrayList();
        ArrayList arrayList28 = new ArrayList();
        ArrayList arrayList29 = new ArrayList();
        ArrayList arrayList30 = new ArrayList();
        ArrayList arrayList31 = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it5 = w1Var.k0().iterator();
        while (true) {
            i5 = i31;
            str = "0";
            i6 = i32;
            str2 = "skill_type";
            linkedHashSet = linkedHashSet6;
            str3 = "1";
            arrayList = arrayList22;
            str4 = "";
            if (!it5.hasNext()) {
                break;
            }
            ArrayList arrayList32 = arrayList24;
            String str26 = (String) it5.next();
            ArrayList arrayList33 = arrayList23;
            Map mapK2 = w1Var3.k1(str26);
            long j3 = jG;
            if (mapK2 != null && c.a.B(mapK2, "can_fit", "", "1")) {
                try {
                    int i40 = Integer.parseInt(String.valueOf(mapK2.getOrDefault("skill_type", "0")));
                    if (i40 >= 1 && i40 <= 4 && !str26.startsWith("39100") && f1174f.contains(str26) && !f1185q.contains(str26) && j(w1Var3, str26, mapK2)) {
                        ((List) linkedHashMap.computeIfAbsent(Integer.valueOf(i40), new n.a(1))).add(str26);
                    }
                } catch (NumberFormatException unused) {
                }
            }
            arrayList23 = arrayList33;
            i31 = i5;
            i32 = i6;
            linkedHashSet6 = linkedHashSet;
            arrayList22 = arrayList;
            arrayList24 = arrayList32;
            jG = j3;
        }
        ArrayList arrayList34 = arrayList24;
        ArrayList arrayList35 = arrayList23;
        long j4 = jG;
        LinkedHashSet linkedHashSet12 = new LinkedHashSet();
        int i41 = 0;
        while (true) {
            LinkedHashMap linkedHashMap2 = linkedHashMap;
            Map mapK3 = null;
            if (i41 >= iMin) {
                break;
            }
            String str27 = (String) arrayList20.get(i41);
            StringBuilder sb = new StringBuilder();
            sb.append(strI);
            sb.append("_g");
            int i42 = i41 + 1;
            sb.append(i42);
            String string = sb.toString();
            boolean z6 = i41 < ((i30 < 0 || i30 >= strArr7.length) ? 0 : strArr7[i30].length);
            ArrayList arrayList36 = arrayList34;
            ArrayList arrayList37 = arrayList35;
            int i43 = i41;
            long j5 = j4;
            LinkedHashSet linkedHashSet13 = linkedHashSet12;
            int i44 = iMax;
            String str28 = strI;
            String str29 = str4;
            int i45 = iMin;
            LinkedHashSet linkedHashSet14 = linkedHashSet11;
            ArrayList arrayList38 = arrayList26;
            ArrayList arrayList39 = arrayList27;
            ArrayList arrayList40 = arrayList29;
            ArrayList arrayList41 = arrayList30;
            ArrayList arrayList42 = arrayList31;
            String[][] strArr14 = strArr7;
            String str30 = str3;
            int i46 = iMax;
            ArrayList arrayList43 = arrayList25;
            ArrayList arrayList44 = arrayList20;
            LinkedHashMap linkedHashMapF2 = t5.f(w1Var, string, str27, i44, 0, "", "0", true);
            linkedHashMapF2.put("general_name", w1Var3.R0(str27));
            linkedHashMapF2.put("is_new", Boolean.FALSE);
            linkedHashMapF2.put("star_level", 5);
            linkedHashMapF2.put("general_star", 5);
            linkedHashMapF2.put("insight_level", "6");
            if (z6) {
                if ((p5.E0(i3) >= 3) && !w1Var3.B0(str27).isEmpty()) {
                    linkedHashMapF2.put("evolution_image_status", Boolean.TRUE);
                }
            }
            ArrayList arrayList45 = new ArrayList();
            int[] iArr = p5.f1277d;
            String str31 = string;
            HashMap mapN = n(z6 ? iArr[p5.E0(i3)] : 0, w1Var3, str31, str27);
            arrayList45.add(mapN);
            arrayList43.add(mapN);
            Object obj13 = "6";
            linkedHashMapF2.put("general_naturalskill_id", mapN.get("pk_id"));
            int iQ2 = q(w1Var3, str27);
            if (z6) {
                String[][] strArr15 = strArr8[i30];
                obj = "insight_level";
                obj2 = "star_level";
                i7 = i43;
                if (i7 < strArr15.length) {
                    strArr = strArr15[i7];
                }
                strArr2 = strArr;
                if (z6) {
                    strArr6 = f1173e[i30];
                    obj3 = "general_star";
                    if (i7 < strArr6.length) {
                        str5 = strArr6[i7];
                    }
                    linkedHashSet2 = new LinkedHashSet();
                    if (iQ2 > 0) {
                        linkedHashSet2.add(Integer.valueOf(iQ2));
                    }
                    if (str5.isEmpty()) {
                        mapK1 = null;
                    } else {
                        mapK1 = w1Var3.k1(str5);
                    }
                    if (mapK1 == null) {
                        i8 = 0;
                    } else {
                        try {
                            i8 = Integer.parseInt(String.valueOf(mapK1.getOrDefault(str2, str)));
                        } catch (NumberFormatException unused2) {
                            i8 = 0;
                        }
                    }
                    String str32 = str;
                    i9 = i8;
                    String str33 = str2;
                    if (i9 > 0) {
                        linkedHashSet2.add(Integer.valueOf(i9));
                    }
                    length = strArr2.length;
                    i10 = 0;
                    while (i10 < length) {
                        int i47 = length;
                        iQ = q(w1Var3, strArr2[i10]);
                        if (iQ > 0) {
                            linkedHashSet2.add(Integer.valueOf(iQ));
                        }
                        i10++;
                        length = i47;
                    }
                    if (i9 > 0) {
                        i11 = i9;
                    } else {
                        i11 = 0;
                    }
                    if (i11 == 0) {
                        i29 = 4;
                        i12 = 1;
                        while (true) {
                            if (i12 <= i29) {
                                if (!linkedHashSet2.contains(Integer.valueOf(i12)) && !r(i12, linkedHashMap2).isEmpty()) {
                                    break;
                                }
                                i12++;
                                i29 = 4;
                            }
                        }
                        arrayList2 = new ArrayList();
                        strArr3 = strArr2;
                        i14 = 1;
                        for (i13 = 4; i14 <= i13; i13 = 4) {
                            if (i14 != iQ2) {
                                arrayList2.add(Integer.valueOf(i14));
                            }
                            i14++;
                        }
                        arrayList3 = new ArrayList(arrayList2);
                        if (i12 > 0) {
                            arrayList3.remove(Integer.valueOf(i12));
                        }
                        if (mapK1 == null && i9 > 0 && j(w1Var3, str5, mapK1)) {
                            j2 = j5;
                            linkedHashMapL = l(str31, str5, i9, j2);
                        } else {
                            j2 = j5;
                            linkedHashMapL = null;
                        }
                        if (linkedHashMapL == null && i12 > 0) {
                            strR3 = r(i12, linkedHashMap2);
                            if (!strR3.isEmpty()) {
                                linkedHashMapL = l(str31, strR3, i12, j2);
                            }
                        }
                        if (linkedHashMapL != null) {
                            linkedHashMapL.put("position", "2");
                            linkedHashMapL.put("pos", "2");
                            linkedHashMapL.put("skill_position", "2");
                            arrayList45.add(linkedHashMapL);
                            arrayList43.add(linkedHashMapL);
                        }
                        if (z6) {
                            if (p5.E0(i3) >= 3) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            if (z5) {
                                strArr5 = f1180l;
                                length2 = strArr5.length;
                                i28 = 0;
                                while (i28 < length2) {
                                    int i48 = length2;
                                    LinkedHashMap linkedHashMapM = m(str31, strArr5[i28], j2);
                                    arrayList45.add(linkedHashMapM);
                                    arrayList43.add(linkedHashMapM);
                                    i28++;
                                    length2 = i48;
                                }
                                StringBuilder sb2 = new StringBuilder();
                                str6 = str28;
                                sb2.append(str6);
                                sb2.append("_mt");
                                i15 = i42;
                                sb2.append(i15);
                                String string2 = sb2.toString();
                                double[] dArr = f1181m;
                                arrayList4 = arrayList28;
                                arrayList4.add(p5.z0("pk_id", string2, "general_pk_id", str31, "user_general_id", str31, "top_level", "8", "meridian_level", "8", "point_level", "30", "gong", String.valueOf(dArr[0]), "fang", String.valueOf(dArr[1]), "xue", String.valueOf(dArr[2]), "zhi", String.valueOf(dArr[3]), "item_num", "0"));
                            } else {
                                arrayList4 = arrayList28;
                                i15 = i42;
                                str6 = str28;
                            }
                        } else {
                            arrayList4 = arrayList28;
                            i15 = i42;
                            str6 = str28;
                        }
                        if (z6) {
                            strR2 = com.sgscq.vpn.handler.t0.r(str27);
                            if (strR2.isEmpty()) {
                                arrayList5 = arrayList4;
                                str7 = "pk_id";
                                str8 = str27;
                                arrayList6 = arrayList40;
                            } else {
                                str7 = "pk_id";
                                str8 = str27;
                                arrayList5 = arrayList4;
                                arrayList6 = arrayList40;
                                arrayList6.add(p5.z0(str7, str6 + "_me" + i15, "magic_id", strR2, "general_id", str8, "magic_level", "10", "magic_sub_level", p5.f1276c[p5.E0(i3)], "magic_vip_level", "0", "is_open", 1));
                            }
                        } else {
                            arrayList5 = arrayList4;
                            str7 = "pk_id";
                            str8 = str27;
                            arrayList6 = arrayList40;
                        }
                        if (z6) {
                            if (p5.E0(i3) >= 3) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (z4) {
                                strB1 = w1Var3.B0(str8);
                                if (strB1.isEmpty()) {
                                    strB1 = a(w1Var3, i7);
                                }
                                str17 = strB1;
                                if (str17.isEmpty()) {
                                    arrayList7 = arrayList41;
                                } else {
                                    arrayList7 = arrayList41;
                                    arrayList7.add(p5.z0(str7, str6 + "_ev" + i15, "evolution_id", str17, "general_id", str8, "evolution_level", Integer.valueOf(o(str17)), "sub_level", "7", "status", 1, "surrender_status", 0, "fate_ids", "[]"));
                                }
                            } else {
                                arrayList7 = arrayList41;
                            }
                        } else {
                            arrayList7 = arrayList41;
                        }
                        obj4 = "gSkill";
                        linkedHashMapF2.put(obj4, arrayList45);
                        obj5 = "general_skills";
                        linkedHashMapF2.put(obj5, new ArrayList(arrayList45));
                        arrayList8 = arrayList37;
                        arrayList8.add(linkedHashMapF2);
                        arrayList9 = new ArrayList();
                        if (z6) {
                            if (str8 != null || str8.isEmpty()) {
                                i24 = 1;
                            } else {
                                String strT0 = w1Var3.T0(str8);
                                if (strT0 != null && !strT0.isEmpty()) {
                                    mapK3 = w1Var3.k1(strT0);
                                }
                                Map map2 = mapK3;
                                if (map2 == null) {
                                    i24 = 1;
                                } else {
                                    try {
                                        i24 = Integer.parseInt(String.valueOf(map2.getOrDefault("major_property", str30)));
                                        if (i24 < 1 || i24 > 4) {
                                            i24 = 1;
                                        }
                                    } catch (NumberFormatException unused3) {
                                    }
                                }
                            }
                            String[] strArr16 = com.sgscq.vpn.handler.p0.f955a;
                            arrayListP = com.sgscq.vpn.handler.p0.p(0, Math.max(0, i15 - 1), Math.max(1, i46), 100, str8, str31);
                            it2 = arrayListP.iterator();
                            while (it2.hasNext()) {
                                Iterator it6 = it2;
                                Map map3 = (Map) it2.next();
                                p(map3);
                                g(i24, arrayList39, map3);
                                it2 = it6;
                                arrayList6 = arrayList6;
                            }
                            arrayList10 = arrayList6;
                            arrayList12 = arrayList39;
                            i25 = 1;
                            while (i25 <= 4) {
                                String str34 = f1178j[i25];
                                ArrayList arrayList46 = arrayList7;
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append(str31);
                                Object obj14 = obj5;
                                sb3.append("_div");
                                sb3.append(i25);
                                String string3 = sb3.toString();
                                Object[] objArr = new Object[12];
                                objArr[0] = "equipment_id";
                                objArr[1] = str34;
                                Object obj15 = obj4;
                                objArr[2] = "general_pk_id";
                                objArr[3] = str31;
                                objArr[4] = "equipment_level";
                                objArr[5] = Integer.valueOf(i46);
                                objArr[6] = "refine_level";
                                objArr[7] = String.valueOf(10);
                                objArr[8] = "refine_bonus_type";
                                objArr[9] = "shangshen_jinglian_up";
                                objArr[10] = "bore_list";
                                arrayList19 = new ArrayList();
                                int i49 = i7;
                                i26 = 5;
                                i27 = 1;
                                while (i27 <= i26) {
                                    arrayList19.add(p5.z0("bore_id", String.valueOf(i27), "gem_id", f1179k[i24], "bore_type", Integer.valueOf(i24), "is_lock", 0));
                                    i27++;
                                    i26 = 5;
                                    i24 = i24;
                                }
                                int i50 = i24;
                                objArr[11] = arrayList19;
                                LinkedHashMap linkedHashMapZ1 = p5.z0(str7, string3, objArr);
                                p(linkedHashMapZ1);
                                arrayListP.add(linkedHashMapZ1);
                                d(arrayList12, linkedHashMapZ1);
                                i25++;
                                obj5 = obj14;
                                i24 = i50;
                                i7 = i49;
                                arrayList7 = arrayList46;
                                obj4 = obj15;
                            }
                            i16 = i7;
                            obj6 = obj5;
                            obj7 = obj4;
                            arrayList11 = arrayList7;
                            arrayList9 = arrayListP;
                        } else {
                            i16 = i7;
                            arrayList10 = arrayList6;
                            obj6 = obj5;
                            obj7 = obj4;
                            arrayList11 = arrayList7;
                            arrayList12 = arrayList39;
                        }
                        arrayList13 = arrayList38;
                        arrayList13.addAll(arrayList9);
                        linkedHashMapZ0 = p5.z0(str7, str31, "general_id", str8, "general_pk_id", str31, "position", String.valueOf(i15), "general_position", String.valueOf(i15), "level", Integer.valueOf(i46), "general_fighting", linkedHashMapF2.get("fighting"), "general_hp", linkedHashMapF2.get("general_hp"), "general_attack", linkedHashMapF2.get("general_attack"), "general_defense", linkedHashMapF2.get("general_defense"), "general_wisdom", linkedHashMapF2.get("general_wisdom"));
                        com.sgscq.vpn.handler.p0.j(arrayList9, linkedHashMapZ0);
                        arrayList14 = arrayList36;
                        arrayList14.add(linkedHashMapZ0);
                        linkedHashSet3 = new LinkedHashSet();
                        linkedHashSet3.add(Integer.valueOf(iQ2));
                        if (i12 > 0) {
                            linkedHashSet3.add(Integer.valueOf(i12));
                        }
                        i17 = 2;
                        i18 = 1;
                        while (i18 <= i17) {
                            i19 = i18 - 1;
                            if (i19 < arrayList3.size()) {
                                arrayList15 = arrayList3;
                                iIntValue = ((Integer) arrayList15.get(i19)).intValue();
                            } else {
                                arrayList15 = arrayList3;
                                iIntValue = 0;
                            }
                            if (i19 < strArr3.length) {
                                str9 = strArr3[i19];
                            } else {
                                str9 = str29;
                            }
                            if (!str9.isEmpty() || str9.equals(str8)) {
                                strArr4 = strArr3;
                                linkedHashSet4 = linkedHashSet13;
                            } else {
                                linkedHashSet4 = linkedHashSet13;
                                if (linkedHashSet4.contains(str9)) {
                                    strArr4 = strArr3;
                                } else {
                                    i20 = 5;
                                    arrayList12 = arrayList12;
                                    w1Var2 = w1Var;
                                    i15 = i15;
                                    if (linkedHashSet3.contains(Integer.valueOf(q(w1Var2, str9)))) {
                                        strArr4 = strArr3;
                                        z = false;
                                    } else {
                                        z = true;
                                    }
                                }
                                if (z) {
                                    strArr4 = strArr3;
                                    i46 = i46;
                                    str10 = str8;
                                    String str35 = str9;
                                    arrayList14 = arrayList14;
                                    i15 = i15;
                                    obj13 = obj13;
                                    linkedHashSet = linkedHashSet;
                                    j2 = j2;
                                    strArr4 = strArr4;
                                    str31 = str31;
                                    linkedHashMapZ0 = linkedHashMapZ0;
                                    obj = obj;
                                    arrayList15 = arrayList15;
                                    str11 = str35;
                                } else {
                                    str16 = str9;
                                    linkedHashSet = linkedHashSet;
                                    linkedHashSet5 = new LinkedHashSet(linkedHashSet);
                                    linkedHashSet14 = linkedHashSet14;
                                    linkedHashSet5.addAll(linkedHashSet14);
                                    linkedHashSet5.addAll(linkedHashSet4);
                                    if (i19 < arrayList15.size()) {
                                        iIntValue2 = ((Integer) arrayList15.get(i19)).intValue();
                                    } else {
                                        iIntValue2 = 0;
                                    }
                                    if (iIntValue2 > 0) {
                                        strArr4 = strArr3;
                                        strArr4 = strArr3;
                                        ArrayList arrayList47 = new ArrayList();
                                        arrayList47.add(Integer.valueOf(iIntValue2));
                                        str10 = str8;
                                        strT = s(w1Var, arrayListF, str8, linkedHashSet5, linkedHashSet3, arrayList47);
                                    } else {
                                        strArr4 = strArr3;
                                        strArr4 = strArr3;
                                        str10 = str8;
                                        strT = str16;
                                    }
                                    if (strT.isEmpty()) {
                                        if (iIntValue > 0) {
                                            strT = u(w1Var2, linkedHashSet5, iIntValue, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                                        } else {
                                            strT = t(w1Var2, linkedHashSet5, linkedHashSet3, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                                        }
                                    }
                                    str11 = strT;
                                }
                                if (str11.isEmpty()) {
                                    i17 = 2;
                                    linkedHashSet3 = linkedHashSet3;
                                    obj13 = obj13;
                                    obj = obj;
                                    str31 = str31;
                                    linkedHashMapZ0 = linkedHashMapZ0;
                                    str10 = str10;
                                    obj12 = obj6;
                                    obj8 = obj2;
                                    obj11 = obj3;
                                    arrayList14 = arrayList14;
                                    arrayList16 = arrayList10;
                                    arrayList8 = arrayList8;
                                    i21 = i16;
                                    linkedHashSet14 = linkedHashSet14;
                                    arrayList13 = arrayList13;
                                    arrayList11 = arrayList11;
                                    i18 = i18;
                                    arrayList17 = arrayList43;
                                } else {
                                    linkedHashSet.add(str11);
                                    linkedHashSet4.add(str11);
                                    linkedHashSet3.add(Integer.valueOf(q(w1Var2, str11)));
                                    str12 = str31 + "_lt" + i18;
                                    str13 = str11;
                                    Object obj16 = obj3;
                                    obj8 = obj2;
                                    i21 = i16;
                                    linkedHashMapF = t5.f(w1Var, str12, str11, i46, 0, str31, String.valueOf(i18), true);
                                    linkedHashMapF.put(obj8, Integer.valueOf(i20));
                                    linkedHashMapF.put(obj16, Integer.valueOf(i20));
                                    if (z6) {
                                        linkedHashMapF.put(obj, obj13);
                                    }
                                    if (z6) {
                                        if (p5.E0(i3) >= 3) {
                                            z3 = true;
                                        } else {
                                            z3 = false;
                                        }
                                        if (z3) {
                                            str14 = str13;
                                            if (!w1Var2.B0(str14).isEmpty()) {
                                                linkedHashMapF.put("evolution_image_status", Boolean.TRUE);
                                            }
                                        } else {
                                            str14 = str13;
                                        }
                                    } else {
                                        str14 = str13;
                                    }
                                    if (z6) {
                                        i22 = iArr[p5.E0(i3)];
                                    } else {
                                        i22 = 0;
                                    }
                                    HashMap mapN2 = n(i22, w1Var2, r88, str14);
                                    linkedHashMapF.put("general_naturalskill_id", mapN2.get(str7));
                                    obj9 = obj7;
                                    linkedHashMapF.put(obj9, p5.v0(mapN2));
                                    obj10 = obj6;
                                    linkedHashMapF.put(obj10, p5.v0(mapN2));
                                    obj11 = obj16;
                                    iH = h(w1Var2, str10);
                                    if (iH >= 1 || iH > 4) {
                                        iH = 1;
                                    }
                                    String strValueOf = String.valueOf(iH);
                                    linkedHashMapF.put("lieutenant_skill_id", strValueOf);
                                    linkedHashMapF.put("skill_type_lieutenant", strValueOf);
                                    linkedHashMapF.put("ls_type", String.valueOf(i18));
                                    if (z6) {
                                        strR = com.sgscq.vpn.handler.t0.r(str14);
                                        if (strR.isEmpty()) {
                                            obj12 = obj10;
                                            obj7 = obj9;
                                            arrayList18 = arrayList10;
                                            i23 = 3;
                                        } else {
                                            i23 = 3;
                                            obj7 = obj9;
                                            obj12 = obj10;
                                            arrayList18 = arrayList10;
                                            arrayList18.add(p5.z0(str7, str12 + "_me", "magic_id", strR, "general_id", str14, "magic_level", "10", "magic_sub_level", p5.f1276c[p5.E0(i3)], "magic_vip_level", "0", "is_open", 1));
                                        }
                                        if (p5.E0(i3) >= i23) {
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        if (z2) {
                                            strB0 = w1Var2.B0(str14);
                                            if (strB0.isEmpty()) {
                                                strB0 = a(w1Var2, i21 + i18);
                                            }
                                            str15 = strB0;
                                            if (str15.isEmpty()) {
                                                arrayList16 = arrayList18;
                                            } else {
                                                arrayList16 = arrayList18;
                                                arrayList11.add(p5.z0(str7, r88 + "_ev", "evolution_id", str15, "general_id", str14, "evolution_level", Integer.valueOf(o(str15)), "sub_level", "7", "status", 1, "surrender_status", 0, "fate_ids", "[]"));
                                            }
                                        } else {
                                            arrayList16 = arrayList18;
                                        }
                                    } else {
                                        obj12 = obj10;
                                        obj7 = obj9;
                                        obj8 = obj8;
                                        i18 = i18;
                                        linkedHashSet3 = linkedHashSet3;
                                        obj13 = obj13;
                                        obj = obj;
                                        str31 = str31;
                                        linkedHashMapZ0 = linkedHashMapZ0;
                                        str10 = str10;
                                        arrayList14 = arrayList14;
                                        arrayList16 = arrayList10;
                                        arrayList8 = arrayList8;
                                        linkedHashSet14 = linkedHashSet14;
                                        arrayList13 = arrayList13;
                                        arrayList11 = arrayList11;
                                    }
                                    arrayList8.add(linkedHashMapF);
                                    arrayList17 = arrayList43;
                                    arrayList17.add(mapN2);
                                    if (i18 == 1) {
                                        linkedHashMapZ0.put("deputy_general_id", str14);
                                    }
                                    i17 = 2;
                                }
                                linkedHashMapZ0 = linkedHashMapZ0;
                                arrayList8 = arrayList8;
                                arrayList11 = arrayList11;
                                arrayList43 = arrayList17;
                                strArr3 = strArr4;
                                arrayList3 = arrayList15;
                                linkedHashSet13 = linkedHashSet4;
                                str30 = str30;
                                i46 = i46;
                                j2 = j2;
                                i16 = i21;
                                arrayList10 = arrayList16;
                                linkedHashSet3 = linkedHashSet3;
                                arrayList14 = arrayList14;
                                obj13 = obj13;
                                obj2 = obj8;
                                str8 = str10;
                                obj = obj;
                                obj6 = obj12;
                                linkedHashSet14 = linkedHashSet14;
                                arrayList13 = arrayList13;
                                str31 = str31;
                                arrayList12 = arrayList12;
                                obj3 = obj11;
                                i18++;
                                i15 = i15;
                            }
                            w1Var2 = w1Var;
                            i20 = 5;
                            strArr4 = strArr3;
                            z = false;
                            if (z) {
                                str16 = str9;
                                linkedHashSet = linkedHashSet;
                                linkedHashSet5 = new LinkedHashSet(linkedHashSet);
                                linkedHashSet14 = linkedHashSet14;
                                linkedHashSet5.addAll(linkedHashSet14);
                                linkedHashSet5.addAll(linkedHashSet4);
                                if (i19 < arrayList15.size()) {
                                    iIntValue2 = ((Integer) arrayList15.get(i19)).intValue();
                                } else {
                                    iIntValue2 = 0;
                                }
                                if (iIntValue2 > 0) {
                                    strArr4 = strArr3;
                                    strArr4 = strArr3;
                                    ArrayList arrayList48 = new ArrayList();
                                    arrayList48.add(Integer.valueOf(iIntValue2));
                                    str10 = str8;
                                    strT = s(w1Var, arrayListF, str8, linkedHashSet5, linkedHashSet3, arrayList48);
                                } else {
                                    strArr4 = strArr3;
                                    strArr4 = strArr3;
                                    str10 = str8;
                                    strT = str16;
                                }
                                if (strT.isEmpty()) {
                                    if (iIntValue > 0) {
                                        strT = u(w1Var2, linkedHashSet5, iIntValue, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                                    } else {
                                        strT = t(w1Var2, linkedHashSet5, linkedHashSet3, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                                    }
                                }
                                str11 = strT;
                            } else {
                                strArr4 = strArr3;
                                i46 = i46;
                                str10 = str8;
                                String str36 = str9;
                                arrayList14 = arrayList14;
                                i15 = i15;
                                obj13 = obj13;
                                linkedHashSet = linkedHashSet;
                                j2 = j2;
                                strArr4 = strArr4;
                                str31 = str31;
                                linkedHashMapZ0 = linkedHashMapZ0;
                                obj = obj;
                                arrayList15 = arrayList15;
                                str11 = str36;
                            }
                            if (str11.isEmpty()) {
                                i17 = 2;
                                linkedHashSet3 = linkedHashSet3;
                                obj13 = obj13;
                                obj = obj;
                                str31 = str31;
                                linkedHashMapZ0 = linkedHashMapZ0;
                                str10 = str10;
                                obj12 = obj6;
                                obj8 = obj2;
                                obj11 = obj3;
                                arrayList14 = arrayList14;
                                arrayList16 = arrayList10;
                                arrayList8 = arrayList8;
                                i21 = i16;
                                linkedHashSet14 = linkedHashSet14;
                                arrayList13 = arrayList13;
                                arrayList11 = arrayList11;
                                i18 = i18;
                                arrayList17 = arrayList43;
                            } else {
                                linkedHashSet.add(str11);
                                linkedHashSet4.add(str11);
                                linkedHashSet3.add(Integer.valueOf(q(w1Var2, str11)));
                                str12 = str31 + "_lt" + i18;
                                str13 = str11;
                                Object obj17 = obj3;
                                obj8 = obj2;
                                i21 = i16;
                                linkedHashMapF = t5.f(w1Var, str12, str11, i46, 0, str31, String.valueOf(i18), true);
                                linkedHashMapF.put(obj8, Integer.valueOf(i20));
                                linkedHashMapF.put(obj17, Integer.valueOf(i20));
                                if (z6) {
                                    linkedHashMapF.put(obj, obj13);
                                }
                                if (z6) {
                                    str14 = str13;
                                } else {
                                    if (p5.E0(i3) >= 3) {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                    if (z3) {
                                        str14 = str13;
                                        if (!w1Var2.B0(str14).isEmpty()) {
                                            linkedHashMapF.put("evolution_image_status", Boolean.TRUE);
                                        }
                                    } else {
                                        str14 = str13;
                                    }
                                }
                                if (z6) {
                                    i22 = iArr[p5.E0(i3)];
                                } else {
                                    i22 = 0;
                                }
                                HashMap mapN3 = n(i22, w1Var2, r88, str14);
                                linkedHashMapF.put("general_naturalskill_id", mapN3.get(str7));
                                obj9 = obj7;
                                linkedHashMapF.put(obj9, p5.v0(mapN3));
                                obj10 = obj6;
                                linkedHashMapF.put(obj10, p5.v0(mapN3));
                                obj11 = obj17;
                                iH = h(w1Var2, str10);
                                if (iH >= 1) {
                                    iH = 1;
                                } else {
                                    iH = 1;
                                }
                                String strValueOf2 = String.valueOf(iH);
                                linkedHashMapF.put("lieutenant_skill_id", strValueOf2);
                                linkedHashMapF.put("skill_type_lieutenant", strValueOf2);
                                linkedHashMapF.put("ls_type", String.valueOf(i18));
                                if (z6) {
                                    strR = com.sgscq.vpn.handler.t0.r(str14);
                                    if (strR.isEmpty()) {
                                        i23 = 3;
                                        obj7 = obj9;
                                        obj12 = obj10;
                                        arrayList18 = arrayList10;
                                        arrayList18.add(p5.z0(str7, str12 + "_me", "magic_id", strR, "general_id", str14, "magic_level", "10", "magic_sub_level", p5.f1276c[p5.E0(i3)], "magic_vip_level", "0", "is_open", 1));
                                    } else {
                                        obj12 = obj10;
                                        obj7 = obj9;
                                        arrayList18 = arrayList10;
                                        i23 = 3;
                                    }
                                    if (p5.E0(i3) >= i23) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        strB0 = w1Var2.B0(str14);
                                        if (strB0.isEmpty()) {
                                            strB0 = a(w1Var2, i21 + i18);
                                        }
                                        str15 = strB0;
                                        if (str15.isEmpty()) {
                                            arrayList16 = arrayList18;
                                            arrayList11.add(p5.z0(str7, r88 + "_ev", "evolution_id", str15, "general_id", str14, "evolution_level", Integer.valueOf(o(str15)), "sub_level", "7", "status", 1, "surrender_status", 0, "fate_ids", "[]"));
                                        } else {
                                            arrayList16 = arrayList18;
                                        }
                                    } else {
                                        arrayList16 = arrayList18;
                                    }
                                } else {
                                    obj12 = obj10;
                                    obj7 = obj9;
                                    obj8 = obj8;
                                    i18 = i18;
                                    linkedHashSet3 = linkedHashSet3;
                                    obj13 = obj13;
                                    obj = obj;
                                    str31 = str31;
                                    linkedHashMapZ0 = linkedHashMapZ0;
                                    str10 = str10;
                                    arrayList14 = arrayList14;
                                    arrayList16 = arrayList10;
                                    arrayList8 = arrayList8;
                                    linkedHashSet14 = linkedHashSet14;
                                    arrayList13 = arrayList13;
                                    arrayList11 = arrayList11;
                                }
                                arrayList8.add(linkedHashMapF);
                                arrayList17 = arrayList43;
                                arrayList17.add(mapN3);
                                if (i18 == 1) {
                                    linkedHashMapZ0.put("deputy_general_id", str14);
                                }
                                i17 = 2;
                            }
                            linkedHashMapZ0 = linkedHashMapZ0;
                            arrayList8 = arrayList8;
                            arrayList11 = arrayList11;
                            arrayList43 = arrayList17;
                            strArr3 = strArr4;
                            arrayList3 = arrayList15;
                            linkedHashSet13 = linkedHashSet4;
                            str30 = str30;
                            i46 = i46;
                            j2 = j2;
                            i16 = i21;
                            arrayList10 = arrayList16;
                            linkedHashSet3 = linkedHashSet3;
                            arrayList14 = arrayList14;
                            obj13 = obj13;
                            obj2 = obj8;
                            str8 = str10;
                            obj = obj;
                            obj6 = obj12;
                            linkedHashSet14 = linkedHashSet14;
                            arrayList13 = arrayList13;
                            str31 = str31;
                            arrayList12 = arrayList12;
                            obj3 = obj11;
                            i18++;
                            i15 = i15;
                        }
                        ArrayList arrayList49 = arrayList12;
                        w1Var3 = w1Var;
                        i30 = i2;
                        arrayList34 = arrayList14;
                        arrayList26 = arrayList13;
                        str3 = str30;
                        iMin = i45;
                        str2 = str33;
                        linkedHashMap = linkedHashMap2;
                        str = str32;
                        strArr7 = strArr14;
                        arrayList29 = arrayList10;
                        arrayList35 = arrayList8;
                        linkedHashSet = linkedHashSet;
                        arrayList20 = arrayList44;
                        j4 = j2;
                        linkedHashSet12 = linkedHashSet13;
                        arrayList28 = arrayList5;
                        str4 = str29;
                        linkedHashSet11 = linkedHashSet14;
                        arrayList27 = arrayList49;
                        strI = str6;
                        arrayList30 = arrayList11;
                        arrayList31 = arrayList42;
                        i6 = i6;
                        arrayList25 = arrayList43;
                        iMax = i46;
                        i41 = i15;
                    }
                    i12 = i11;
                    arrayList2 = new ArrayList();
                    strArr3 = strArr2;
                    i14 = 1;
                    while (i14 <= i13) {
                        if (i14 != iQ2) {
                            arrayList2.add(Integer.valueOf(i14));
                        }
                        i14++;
                    }
                    arrayList3 = new ArrayList(arrayList2);
                    if (i12 > 0) {
                        arrayList3.remove(Integer.valueOf(i12));
                    }
                    if (mapK1 == null) {
                        j2 = j5;
                        linkedHashMapL = null;
                    } else {
                        j2 = j5;
                        linkedHashMapL = null;
                    }
                    if (linkedHashMapL == null) {
                        strR3 = r(i12, linkedHashMap2);
                        if (!strR3.isEmpty()) {
                            linkedHashMapL = l(str31, strR3, i12, j2);
                        }
                    }
                    if (linkedHashMapL != null) {
                        linkedHashMapL.put("position", "2");
                        linkedHashMapL.put("pos", "2");
                        linkedHashMapL.put("skill_position", "2");
                        arrayList45.add(linkedHashMapL);
                        arrayList43.add(linkedHashMapL);
                    }
                    if (z6) {
                        arrayList4 = arrayList28;
                        i15 = i42;
                        str6 = str28;
                    } else {
                        if (p5.E0(i3) >= 3) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (z5) {
                            strArr5 = f1180l;
                            length2 = strArr5.length;
                            i28 = 0;
                            while (i28 < length2) {
                                int i410 = length2;
                                LinkedHashMap linkedHashMapM2 = m(str31, strArr5[i28], j2);
                                arrayList45.add(linkedHashMapM2);
                                arrayList43.add(linkedHashMapM2);
                                i28++;
                                length2 = i410;
                            }
                            StringBuilder sb4 = new StringBuilder();
                            str6 = str28;
                            sb4.append(str6);
                            sb4.append("_mt");
                            i15 = i42;
                            sb4.append(i15);
                            String string4 = sb4.toString();
                            double[] dArr2 = f1181m;
                            arrayList4 = arrayList28;
                            arrayList4.add(p5.z0("pk_id", string4, "general_pk_id", str31, "user_general_id", str31, "top_level", "8", "meridian_level", "8", "point_level", "30", "gong", String.valueOf(dArr2[0]), "fang", String.valueOf(dArr2[1]), "xue", String.valueOf(dArr2[2]), "zhi", String.valueOf(dArr2[3]), "item_num", "0"));
                        } else {
                            arrayList4 = arrayList28;
                            i15 = i42;
                            str6 = str28;
                        }
                    }
                    if (z6) {
                        strR2 = com.sgscq.vpn.handler.t0.r(str27);
                        if (strR2.isEmpty()) {
                            str7 = "pk_id";
                            str8 = str27;
                            arrayList5 = arrayList4;
                            arrayList6 = arrayList40;
                            arrayList6.add(p5.z0(str7, str6 + "_me" + i15, "magic_id", strR2, "general_id", str8, "magic_level", "10", "magic_sub_level", p5.f1276c[p5.E0(i3)], "magic_vip_level", "0", "is_open", 1));
                        } else {
                            arrayList5 = arrayList4;
                            str7 = "pk_id";
                            str8 = str27;
                            arrayList6 = arrayList40;
                        }
                    } else {
                        arrayList5 = arrayList4;
                        str7 = "pk_id";
                        str8 = str27;
                        arrayList6 = arrayList40;
                    }
                    if (z6) {
                        arrayList7 = arrayList41;
                    } else {
                        if (p5.E0(i3) >= 3) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (z4) {
                            strB1 = w1Var3.B0(str8);
                            if (strB1.isEmpty()) {
                                strB1 = a(w1Var3, i7);
                            }
                            str17 = strB1;
                            if (str17.isEmpty()) {
                                arrayList7 = arrayList41;
                                arrayList7.add(p5.z0(str7, str6 + "_ev" + i15, "evolution_id", str17, "general_id", str8, "evolution_level", Integer.valueOf(o(str17)), "sub_level", "7", "status", 1, "surrender_status", 0, "fate_ids", "[]"));
                            } else {
                                arrayList7 = arrayList41;
                            }
                        } else {
                            arrayList7 = arrayList41;
                        }
                    }
                    obj4 = "gSkill";
                    linkedHashMapF2.put(obj4, arrayList45);
                    obj5 = "general_skills";
                    linkedHashMapF2.put(obj5, new ArrayList(arrayList45));
                    arrayList8 = arrayList37;
                    arrayList8.add(linkedHashMapF2);
                    arrayList9 = new ArrayList();
                    if (z6) {
                        if (str8 != null) {
                            i24 = 1;
                        } else {
                            i24 = 1;
                        }
                        String[] strArr17 = com.sgscq.vpn.handler.p0.f955a;
                        arrayListP = com.sgscq.vpn.handler.p0.p(0, Math.max(0, i15 - 1), Math.max(1, i46), 100, str8, str31);
                        it2 = arrayListP.iterator();
                        while (it2.hasNext()) {
                            Iterator it7 = it2;
                            Map map4 = (Map) it2.next();
                            p(map4);
                            g(i24, arrayList39, map4);
                            it2 = it7;
                            arrayList6 = arrayList6;
                        }
                        arrayList10 = arrayList6;
                        arrayList12 = arrayList39;
                        i25 = 1;
                        while (i25 <= 4) {
                            String str37 = f1178j[i25];
                            ArrayList arrayList410 = arrayList7;
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append(str31);
                            Object obj18 = obj5;
                            sb5.append("_div");
                            sb5.append(i25);
                            String string5 = sb5.toString();
                            Object[] objArr2 = new Object[12];
                            objArr2[0] = "equipment_id";
                            objArr2[1] = str37;
                            Object obj19 = obj4;
                            objArr2[2] = "general_pk_id";
                            objArr2[3] = str31;
                            objArr2[4] = "equipment_level";
                            objArr2[5] = Integer.valueOf(i46);
                            objArr2[6] = "refine_level";
                            objArr2[7] = String.valueOf(10);
                            objArr2[8] = "refine_bonus_type";
                            objArr2[9] = "shangshen_jinglian_up";
                            objArr2[10] = "bore_list";
                            arrayList19 = new ArrayList();
                            int i411 = i7;
                            i26 = 5;
                            i27 = 1;
                            while (i27 <= i26) {
                                arrayList19.add(p5.z0("bore_id", String.valueOf(i27), "gem_id", f1179k[i24], "bore_type", Integer.valueOf(i24), "is_lock", 0));
                                i27++;
                                i26 = 5;
                                i24 = i24;
                            }
                            int i51 = i24;
                            objArr2[11] = arrayList19;
                            LinkedHashMap linkedHashMapZ2 = p5.z0(str7, string5, objArr2);
                            p(linkedHashMapZ2);
                            arrayListP.add(linkedHashMapZ2);
                            d(arrayList12, linkedHashMapZ2);
                            i25++;
                            obj5 = obj18;
                            i24 = i51;
                            i7 = i411;
                            arrayList7 = arrayList410;
                            obj4 = obj19;
                        }
                        i16 = i7;
                        obj6 = obj5;
                        obj7 = obj4;
                        arrayList11 = arrayList7;
                        arrayList9 = arrayListP;
                    } else {
                        i16 = i7;
                        arrayList10 = arrayList6;
                        obj6 = obj5;
                        obj7 = obj4;
                        arrayList11 = arrayList7;
                        arrayList12 = arrayList39;
                    }
                    arrayList13 = arrayList38;
                    arrayList13.addAll(arrayList9);
                    linkedHashMapZ0 = p5.z0(str7, str31, "general_id", str8, "general_pk_id", str31, "position", String.valueOf(i15), "general_position", String.valueOf(i15), "level", Integer.valueOf(i46), "general_fighting", linkedHashMapF2.get("fighting"), "general_hp", linkedHashMapF2.get("general_hp"), "general_attack", linkedHashMapF2.get("general_attack"), "general_defense", linkedHashMapF2.get("general_defense"), "general_wisdom", linkedHashMapF2.get("general_wisdom"));
                    com.sgscq.vpn.handler.p0.j(arrayList9, linkedHashMapZ0);
                    arrayList14 = arrayList36;
                    arrayList14.add(linkedHashMapZ0);
                    linkedHashSet3 = new LinkedHashSet();
                    linkedHashSet3.add(Integer.valueOf(iQ2));
                    if (i12 > 0) {
                        linkedHashSet3.add(Integer.valueOf(i12));
                    }
                    i17 = 2;
                    i18 = 1;
                    while (i18 <= i17) {
                        i19 = i18 - 1;
                        if (i19 < arrayList3.size()) {
                            arrayList15 = arrayList3;
                            iIntValue = ((Integer) arrayList15.get(i19)).intValue();
                        } else {
                            arrayList15 = arrayList3;
                            iIntValue = 0;
                        }
                        if (i19 < strArr3.length) {
                            str9 = strArr3[i19];
                        } else {
                            str9 = str29;
                        }
                        if (str9.isEmpty()) {
                            strArr4 = strArr3;
                            linkedHashSet4 = linkedHashSet13;
                            w1Var2 = w1Var;
                            i20 = 5;
                            strArr4 = strArr3;
                            z = false;
                        } else {
                            strArr4 = strArr3;
                            linkedHashSet4 = linkedHashSet13;
                            w1Var2 = w1Var;
                            i20 = 5;
                            strArr4 = strArr3;
                            z = false;
                        }
                        if (z) {
                            str16 = str9;
                            linkedHashSet = linkedHashSet;
                            linkedHashSet5 = new LinkedHashSet(linkedHashSet);
                            linkedHashSet14 = linkedHashSet14;
                            linkedHashSet5.addAll(linkedHashSet14);
                            linkedHashSet5.addAll(linkedHashSet4);
                            if (i19 < arrayList15.size()) {
                                iIntValue2 = ((Integer) arrayList15.get(i19)).intValue();
                            } else {
                                iIntValue2 = 0;
                            }
                            if (iIntValue2 > 0) {
                                strArr4 = strArr3;
                                strArr4 = strArr3;
                                ArrayList arrayList411 = new ArrayList();
                                arrayList411.add(Integer.valueOf(iIntValue2));
                                str10 = str8;
                                strT = s(w1Var, arrayListF, str8, linkedHashSet5, linkedHashSet3, arrayList411);
                            } else {
                                strArr4 = strArr3;
                                strArr4 = strArr3;
                                str10 = str8;
                                strT = str16;
                            }
                            if (strT.isEmpty()) {
                                if (iIntValue > 0) {
                                    strT = u(w1Var2, linkedHashSet5, iIntValue, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                                } else {
                                    strT = t(w1Var2, linkedHashSet5, linkedHashSet3, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                                }
                            }
                            str11 = strT;
                        } else {
                            strArr4 = strArr3;
                            i46 = i46;
                            str10 = str8;
                            String str38 = str9;
                            arrayList14 = arrayList14;
                            i15 = i15;
                            obj13 = obj13;
                            linkedHashSet = linkedHashSet;
                            j2 = j2;
                            strArr4 = strArr4;
                            str31 = str31;
                            linkedHashMapZ0 = linkedHashMapZ0;
                            obj = obj;
                            arrayList15 = arrayList15;
                            str11 = str38;
                        }
                        if (str11.isEmpty()) {
                            i17 = 2;
                            linkedHashSet3 = linkedHashSet3;
                            obj13 = obj13;
                            obj = obj;
                            str31 = str31;
                            linkedHashMapZ0 = linkedHashMapZ0;
                            str10 = str10;
                            obj12 = obj6;
                            obj8 = obj2;
                            obj11 = obj3;
                            arrayList14 = arrayList14;
                            arrayList16 = arrayList10;
                            arrayList8 = arrayList8;
                            i21 = i16;
                            linkedHashSet14 = linkedHashSet14;
                            arrayList13 = arrayList13;
                            arrayList11 = arrayList11;
                            i18 = i18;
                            arrayList17 = arrayList43;
                        } else {
                            linkedHashSet.add(str11);
                            linkedHashSet4.add(str11);
                            linkedHashSet3.add(Integer.valueOf(q(w1Var2, str11)));
                            str12 = str31 + "_lt" + i18;
                            str13 = str11;
                            Object obj110 = obj3;
                            obj8 = obj2;
                            i21 = i16;
                            linkedHashMapF = t5.f(w1Var, str12, str11, i46, 0, str31, String.valueOf(i18), true);
                            linkedHashMapF.put(obj8, Integer.valueOf(i20));
                            linkedHashMapF.put(obj110, Integer.valueOf(i20));
                            if (z6) {
                                linkedHashMapF.put(obj, obj13);
                            }
                            if (z6) {
                                str14 = str13;
                            } else {
                                if (p5.E0(i3) >= 3) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if (z3) {
                                    str14 = str13;
                                    if (!w1Var2.B0(str14).isEmpty()) {
                                        linkedHashMapF.put("evolution_image_status", Boolean.TRUE);
                                    }
                                } else {
                                    str14 = str13;
                                }
                            }
                            if (z6) {
                                i22 = iArr[p5.E0(i3)];
                            } else {
                                i22 = 0;
                            }
                            HashMap mapN4 = n(i22, w1Var2, r88, str14);
                            linkedHashMapF.put("general_naturalskill_id", mapN4.get(str7));
                            obj9 = obj7;
                            linkedHashMapF.put(obj9, p5.v0(mapN4));
                            obj10 = obj6;
                            linkedHashMapF.put(obj10, p5.v0(mapN4));
                            obj11 = obj110;
                            iH = h(w1Var2, str10);
                            if (iH >= 1) {
                                iH = 1;
                            } else {
                                iH = 1;
                            }
                            String strValueOf3 = String.valueOf(iH);
                            linkedHashMapF.put("lieutenant_skill_id", strValueOf3);
                            linkedHashMapF.put("skill_type_lieutenant", strValueOf3);
                            linkedHashMapF.put("ls_type", String.valueOf(i18));
                            if (z6) {
                                strR = com.sgscq.vpn.handler.t0.r(str14);
                                if (strR.isEmpty()) {
                                    i23 = 3;
                                    obj7 = obj9;
                                    obj12 = obj10;
                                    arrayList18 = arrayList10;
                                    arrayList18.add(p5.z0(str7, str12 + "_me", "magic_id", strR, "general_id", str14, "magic_level", "10", "magic_sub_level", p5.f1276c[p5.E0(i3)], "magic_vip_level", "0", "is_open", 1));
                                } else {
                                    obj12 = obj10;
                                    obj7 = obj9;
                                    arrayList18 = arrayList10;
                                    i23 = 3;
                                }
                                if (p5.E0(i3) >= i23) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (z2) {
                                    strB0 = w1Var2.B0(str14);
                                    if (strB0.isEmpty()) {
                                        strB0 = a(w1Var2, i21 + i18);
                                    }
                                    str15 = strB0;
                                    if (str15.isEmpty()) {
                                        arrayList16 = arrayList18;
                                        arrayList11.add(p5.z0(str7, r88 + "_ev", "evolution_id", str15, "general_id", str14, "evolution_level", Integer.valueOf(o(str15)), "sub_level", "7", "status", 1, "surrender_status", 0, "fate_ids", "[]"));
                                    } else {
                                        arrayList16 = arrayList18;
                                    }
                                } else {
                                    arrayList16 = arrayList18;
                                }
                            } else {
                                obj12 = obj10;
                                obj7 = obj9;
                                obj8 = obj8;
                                i18 = i18;
                                linkedHashSet3 = linkedHashSet3;
                                obj13 = obj13;
                                obj = obj;
                                str31 = str31;
                                linkedHashMapZ0 = linkedHashMapZ0;
                                str10 = str10;
                                arrayList14 = arrayList14;
                                arrayList16 = arrayList10;
                                arrayList8 = arrayList8;
                                linkedHashSet14 = linkedHashSet14;
                                arrayList13 = arrayList13;
                                arrayList11 = arrayList11;
                            }
                            arrayList8.add(linkedHashMapF);
                            arrayList17 = arrayList43;
                            arrayList17.add(mapN4);
                            if (i18 == 1) {
                                linkedHashMapZ0.put("deputy_general_id", str14);
                            }
                            i17 = 2;
                        }
                        linkedHashMapZ0 = linkedHashMapZ0;
                        arrayList8 = arrayList8;
                        arrayList11 = arrayList11;
                        arrayList43 = arrayList17;
                        strArr3 = strArr4;
                        arrayList3 = arrayList15;
                        linkedHashSet13 = linkedHashSet4;
                        str30 = str30;
                        i46 = i46;
                        j2 = j2;
                        i16 = i21;
                        arrayList10 = arrayList16;
                        linkedHashSet3 = linkedHashSet3;
                        arrayList14 = arrayList14;
                        obj13 = obj13;
                        obj2 = obj8;
                        str8 = str10;
                        obj = obj;
                        obj6 = obj12;
                        linkedHashSet14 = linkedHashSet14;
                        arrayList13 = arrayList13;
                        str31 = str31;
                        arrayList12 = arrayList12;
                        obj3 = obj11;
                        i18++;
                        i15 = i15;
                    }
                    ArrayList arrayList412 = arrayList12;
                    w1Var3 = w1Var;
                    i30 = i2;
                    arrayList34 = arrayList14;
                    arrayList26 = arrayList13;
                    str3 = str30;
                    iMin = i45;
                    str2 = str33;
                    linkedHashMap = linkedHashMap2;
                    str = str32;
                    strArr7 = strArr14;
                    arrayList29 = arrayList10;
                    arrayList35 = arrayList8;
                    linkedHashSet = linkedHashSet;
                    arrayList20 = arrayList44;
                    j4 = j2;
                    linkedHashSet12 = linkedHashSet13;
                    arrayList28 = arrayList5;
                    str4 = str29;
                    linkedHashSet11 = linkedHashSet14;
                    arrayList27 = arrayList412;
                    strI = str6;
                    arrayList30 = arrayList11;
                    arrayList31 = arrayList42;
                    i6 = i6;
                    arrayList25 = arrayList43;
                    iMax = i46;
                    i41 = i15;
                } else {
                    obj3 = "general_star";
                }
                str5 = str29;
                linkedHashSet2 = new LinkedHashSet();
                if (iQ2 > 0) {
                    linkedHashSet2.add(Integer.valueOf(iQ2));
                }
                if (str5.isEmpty()) {
                    mapK1 = null;
                } else {
                    mapK1 = w1Var3.k1(str5);
                }
                if (mapK1 == null) {
                    i8 = 0;
                } else {
                    i8 = Integer.parseInt(String.valueOf(mapK1.getOrDefault(str2, str)));
                }
                String str39 = str;
                i9 = i8;
                String str310 = str2;
                if (i9 > 0) {
                    linkedHashSet2.add(Integer.valueOf(i9));
                }
                length = strArr2.length;
                i10 = 0;
                while (i10 < length) {
                    int i412 = length;
                    iQ = q(w1Var3, strArr2[i10]);
                    if (iQ > 0) {
                        linkedHashSet2.add(Integer.valueOf(iQ));
                    }
                    i10++;
                    length = i412;
                }
                if (i9 > 0) {
                    i11 = i9;
                } else {
                    i11 = 0;
                }
                if (i11 == 0) {
                    i29 = 4;
                    i12 = 1;
                    while (true) {
                        if (i12 <= i29) {
                            if (!linkedHashSet2.contains(Integer.valueOf(i12))) {
                                break;
                                break;
                            }
                            i12++;
                            i29 = 4;
                        }
                    }
                    arrayList2 = new ArrayList();
                    strArr3 = strArr2;
                    i14 = 1;
                    while (i14 <= i13) {
                        if (i14 != iQ2) {
                            arrayList2.add(Integer.valueOf(i14));
                        }
                        i14++;
                    }
                    arrayList3 = new ArrayList(arrayList2);
                    if (i12 > 0) {
                        arrayList3.remove(Integer.valueOf(i12));
                    }
                    if (mapK1 == null) {
                        j2 = j5;
                        linkedHashMapL = null;
                    } else {
                        j2 = j5;
                        linkedHashMapL = null;
                    }
                    if (linkedHashMapL == null) {
                        strR3 = r(i12, linkedHashMap2);
                        if (!strR3.isEmpty()) {
                            linkedHashMapL = l(str31, strR3, i12, j2);
                        }
                    }
                    if (linkedHashMapL != null) {
                        linkedHashMapL.put("position", "2");
                        linkedHashMapL.put("pos", "2");
                        linkedHashMapL.put("skill_position", "2");
                        arrayList45.add(linkedHashMapL);
                        arrayList43.add(linkedHashMapL);
                    }
                    if (z6) {
                        arrayList4 = arrayList28;
                        i15 = i42;
                        str6 = str28;
                    } else {
                        if (p5.E0(i3) >= 3) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (z5) {
                            strArr5 = f1180l;
                            length2 = strArr5.length;
                            i28 = 0;
                            while (i28 < length2) {
                                int i413 = length2;
                                LinkedHashMap linkedHashMapM3 = m(str31, strArr5[i28], j2);
                                arrayList45.add(linkedHashMapM3);
                                arrayList43.add(linkedHashMapM3);
                                i28++;
                                length2 = i413;
                            }
                            StringBuilder sb6 = new StringBuilder();
                            str6 = str28;
                            sb6.append(str6);
                            sb6.append("_mt");
                            i15 = i42;
                            sb6.append(i15);
                            String string6 = sb6.toString();
                            double[] dArr3 = f1181m;
                            arrayList4 = arrayList28;
                            arrayList4.add(p5.z0("pk_id", string6, "general_pk_id", str31, "user_general_id", str31, "top_level", "8", "meridian_level", "8", "point_level", "30", "gong", String.valueOf(dArr3[0]), "fang", String.valueOf(dArr3[1]), "xue", String.valueOf(dArr3[2]), "zhi", String.valueOf(dArr3[3]), "item_num", "0"));
                        } else {
                            arrayList4 = arrayList28;
                            i15 = i42;
                            str6 = str28;
                        }
                    }
                    if (z6) {
                        strR2 = com.sgscq.vpn.handler.t0.r(str27);
                        if (strR2.isEmpty()) {
                            str7 = "pk_id";
                            str8 = str27;
                            arrayList5 = arrayList4;
                            arrayList6 = arrayList40;
                            arrayList6.add(p5.z0(str7, str6 + "_me" + i15, "magic_id", strR2, "general_id", str8, "magic_level", "10", "magic_sub_level", p5.f1276c[p5.E0(i3)], "magic_vip_level", "0", "is_open", 1));
                        } else {
                            arrayList5 = arrayList4;
                            str7 = "pk_id";
                            str8 = str27;
                            arrayList6 = arrayList40;
                        }
                    } else {
                        arrayList5 = arrayList4;
                        str7 = "pk_id";
                        str8 = str27;
                        arrayList6 = arrayList40;
                    }
                    if (z6) {
                        arrayList7 = arrayList41;
                    } else {
                        if (p5.E0(i3) >= 3) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (z4) {
                            strB1 = w1Var3.B0(str8);
                            if (strB1.isEmpty()) {
                                strB1 = a(w1Var3, i7);
                            }
                            str17 = strB1;
                            if (str17.isEmpty()) {
                                arrayList7 = arrayList41;
                                arrayList7.add(p5.z0(str7, str6 + "_ev" + i15, "evolution_id", str17, "general_id", str8, "evolution_level", Integer.valueOf(o(str17)), "sub_level", "7", "status", 1, "surrender_status", 0, "fate_ids", "[]"));
                            } else {
                                arrayList7 = arrayList41;
                            }
                        } else {
                            arrayList7 = arrayList41;
                        }
                    }
                    obj4 = "gSkill";
                    linkedHashMapF2.put(obj4, arrayList45);
                    obj5 = "general_skills";
                    linkedHashMapF2.put(obj5, new ArrayList(arrayList45));
                    arrayList8 = arrayList37;
                    arrayList8.add(linkedHashMapF2);
                    arrayList9 = new ArrayList();
                    if (z6) {
                        if (str8 != null) {
                            i24 = 1;
                        } else {
                            i24 = 1;
                        }
                        String[] strArr18 = com.sgscq.vpn.handler.p0.f955a;
                        arrayListP = com.sgscq.vpn.handler.p0.p(0, Math.max(0, i15 - 1), Math.max(1, i46), 100, str8, str31);
                        it2 = arrayListP.iterator();
                        while (it2.hasNext()) {
                            Iterator it8 = it2;
                            Map map5 = (Map) it2.next();
                            p(map5);
                            g(i24, arrayList39, map5);
                            it2 = it8;
                            arrayList6 = arrayList6;
                        }
                        arrayList10 = arrayList6;
                        arrayList12 = arrayList39;
                        i25 = 1;
                        while (i25 <= 4) {
                            String str311 = f1178j[i25];
                            ArrayList arrayList413 = arrayList7;
                            StringBuilder sb7 = new StringBuilder();
                            sb7.append(str31);
                            Object obj111 = obj5;
                            sb7.append("_div");
                            sb7.append(i25);
                            String string7 = sb7.toString();
                            Object[] objArr3 = new Object[12];
                            objArr3[0] = "equipment_id";
                            objArr3[1] = str311;
                            Object obj112 = obj4;
                            objArr3[2] = "general_pk_id";
                            objArr3[3] = str31;
                            objArr3[4] = "equipment_level";
                            objArr3[5] = Integer.valueOf(i46);
                            objArr3[6] = "refine_level";
                            objArr3[7] = String.valueOf(10);
                            objArr3[8] = "refine_bonus_type";
                            objArr3[9] = "shangshen_jinglian_up";
                            objArr3[10] = "bore_list";
                            arrayList19 = new ArrayList();
                            int i414 = i7;
                            i26 = 5;
                            i27 = 1;
                            while (i27 <= i26) {
                                arrayList19.add(p5.z0("bore_id", String.valueOf(i27), "gem_id", f1179k[i24], "bore_type", Integer.valueOf(i24), "is_lock", 0));
                                i27++;
                                i26 = 5;
                                i24 = i24;
                            }
                            int i52 = i24;
                            objArr3[11] = arrayList19;
                            LinkedHashMap linkedHashMapZ3 = p5.z0(str7, string7, objArr3);
                            p(linkedHashMapZ3);
                            arrayListP.add(linkedHashMapZ3);
                            d(arrayList12, linkedHashMapZ3);
                            i25++;
                            obj5 = obj111;
                            i24 = i52;
                            i7 = i414;
                            arrayList7 = arrayList413;
                            obj4 = obj112;
                        }
                        i16 = i7;
                        obj6 = obj5;
                        obj7 = obj4;
                        arrayList11 = arrayList7;
                        arrayList9 = arrayListP;
                    } else {
                        i16 = i7;
                        arrayList10 = arrayList6;
                        obj6 = obj5;
                        obj7 = obj4;
                        arrayList11 = arrayList7;
                        arrayList12 = arrayList39;
                    }
                    arrayList13 = arrayList38;
                    arrayList13.addAll(arrayList9);
                    linkedHashMapZ0 = p5.z0(str7, str31, "general_id", str8, "general_pk_id", str31, "position", String.valueOf(i15), "general_position", String.valueOf(i15), "level", Integer.valueOf(i46), "general_fighting", linkedHashMapF2.get("fighting"), "general_hp", linkedHashMapF2.get("general_hp"), "general_attack", linkedHashMapF2.get("general_attack"), "general_defense", linkedHashMapF2.get("general_defense"), "general_wisdom", linkedHashMapF2.get("general_wisdom"));
                    com.sgscq.vpn.handler.p0.j(arrayList9, linkedHashMapZ0);
                    arrayList14 = arrayList36;
                    arrayList14.add(linkedHashMapZ0);
                    linkedHashSet3 = new LinkedHashSet();
                    linkedHashSet3.add(Integer.valueOf(iQ2));
                    if (i12 > 0) {
                        linkedHashSet3.add(Integer.valueOf(i12));
                    }
                    i17 = 2;
                    i18 = 1;
                    while (i18 <= i17) {
                        i19 = i18 - 1;
                        if (i19 < arrayList3.size()) {
                            arrayList15 = arrayList3;
                            iIntValue = ((Integer) arrayList15.get(i19)).intValue();
                        } else {
                            arrayList15 = arrayList3;
                            iIntValue = 0;
                        }
                        if (i19 < strArr3.length) {
                            str9 = strArr3[i19];
                        } else {
                            str9 = str29;
                        }
                        if (str9.isEmpty()) {
                            strArr4 = strArr3;
                            linkedHashSet4 = linkedHashSet13;
                            w1Var2 = w1Var;
                            i20 = 5;
                            strArr4 = strArr3;
                            z = false;
                        } else {
                            strArr4 = strArr3;
                            linkedHashSet4 = linkedHashSet13;
                            w1Var2 = w1Var;
                            i20 = 5;
                            strArr4 = strArr3;
                            z = false;
                        }
                        if (z) {
                            str16 = str9;
                            linkedHashSet = linkedHashSet;
                            linkedHashSet5 = new LinkedHashSet(linkedHashSet);
                            linkedHashSet14 = linkedHashSet14;
                            linkedHashSet5.addAll(linkedHashSet14);
                            linkedHashSet5.addAll(linkedHashSet4);
                            if (i19 < arrayList15.size()) {
                                iIntValue2 = ((Integer) arrayList15.get(i19)).intValue();
                            } else {
                                iIntValue2 = 0;
                            }
                            if (iIntValue2 > 0) {
                                strArr4 = strArr3;
                                strArr4 = strArr3;
                                ArrayList arrayList414 = new ArrayList();
                                arrayList414.add(Integer.valueOf(iIntValue2));
                                str10 = str8;
                                strT = s(w1Var, arrayListF, str8, linkedHashSet5, linkedHashSet3, arrayList414);
                            } else {
                                strArr4 = strArr3;
                                strArr4 = strArr3;
                                str10 = str8;
                                strT = str16;
                            }
                            if (strT.isEmpty()) {
                                if (iIntValue > 0) {
                                    strT = u(w1Var2, linkedHashSet5, iIntValue, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                                } else {
                                    strT = t(w1Var2, linkedHashSet5, linkedHashSet3, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                                }
                            }
                            str11 = strT;
                        } else {
                            strArr4 = strArr3;
                            i46 = i46;
                            str10 = str8;
                            String str312 = str9;
                            arrayList14 = arrayList14;
                            i15 = i15;
                            obj13 = obj13;
                            linkedHashSet = linkedHashSet;
                            j2 = j2;
                            strArr4 = strArr4;
                            str31 = str31;
                            linkedHashMapZ0 = linkedHashMapZ0;
                            obj = obj;
                            arrayList15 = arrayList15;
                            str11 = str312;
                        }
                        if (str11.isEmpty()) {
                            i17 = 2;
                            linkedHashSet3 = linkedHashSet3;
                            obj13 = obj13;
                            obj = obj;
                            str31 = str31;
                            linkedHashMapZ0 = linkedHashMapZ0;
                            str10 = str10;
                            obj12 = obj6;
                            obj8 = obj2;
                            obj11 = obj3;
                            arrayList14 = arrayList14;
                            arrayList16 = arrayList10;
                            arrayList8 = arrayList8;
                            i21 = i16;
                            linkedHashSet14 = linkedHashSet14;
                            arrayList13 = arrayList13;
                            arrayList11 = arrayList11;
                            i18 = i18;
                            arrayList17 = arrayList43;
                        } else {
                            linkedHashSet.add(str11);
                            linkedHashSet4.add(str11);
                            linkedHashSet3.add(Integer.valueOf(q(w1Var2, str11)));
                            str12 = str31 + "_lt" + i18;
                            str13 = str11;
                            Object obj113 = obj3;
                            obj8 = obj2;
                            i21 = i16;
                            linkedHashMapF = t5.f(w1Var, str12, str11, i46, 0, str31, String.valueOf(i18), true);
                            linkedHashMapF.put(obj8, Integer.valueOf(i20));
                            linkedHashMapF.put(obj113, Integer.valueOf(i20));
                            if (z6) {
                                linkedHashMapF.put(obj, obj13);
                            }
                            if (z6) {
                                str14 = str13;
                            } else {
                                if (p5.E0(i3) >= 3) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if (z3) {
                                    str14 = str13;
                                    if (!w1Var2.B0(str14).isEmpty()) {
                                        linkedHashMapF.put("evolution_image_status", Boolean.TRUE);
                                    }
                                } else {
                                    str14 = str13;
                                }
                            }
                            if (z6) {
                                i22 = iArr[p5.E0(i3)];
                            } else {
                                i22 = 0;
                            }
                            HashMap mapN5 = n(i22, w1Var2, r88, str14);
                            linkedHashMapF.put("general_naturalskill_id", mapN5.get(str7));
                            obj9 = obj7;
                            linkedHashMapF.put(obj9, p5.v0(mapN5));
                            obj10 = obj6;
                            linkedHashMapF.put(obj10, p5.v0(mapN5));
                            obj11 = obj113;
                            iH = h(w1Var2, str10);
                            if (iH >= 1) {
                                iH = 1;
                            } else {
                                iH = 1;
                            }
                            String strValueOf4 = String.valueOf(iH);
                            linkedHashMapF.put("lieutenant_skill_id", strValueOf4);
                            linkedHashMapF.put("skill_type_lieutenant", strValueOf4);
                            linkedHashMapF.put("ls_type", String.valueOf(i18));
                            if (z6) {
                                strR = com.sgscq.vpn.handler.t0.r(str14);
                                if (strR.isEmpty()) {
                                    i23 = 3;
                                    obj7 = obj9;
                                    obj12 = obj10;
                                    arrayList18 = arrayList10;
                                    arrayList18.add(p5.z0(str7, str12 + "_me", "magic_id", strR, "general_id", str14, "magic_level", "10", "magic_sub_level", p5.f1276c[p5.E0(i3)], "magic_vip_level", "0", "is_open", 1));
                                } else {
                                    obj12 = obj10;
                                    obj7 = obj9;
                                    arrayList18 = arrayList10;
                                    i23 = 3;
                                }
                                if (p5.E0(i3) >= i23) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (z2) {
                                    strB0 = w1Var2.B0(str14);
                                    if (strB0.isEmpty()) {
                                        strB0 = a(w1Var2, i21 + i18);
                                    }
                                    str15 = strB0;
                                    if (str15.isEmpty()) {
                                        arrayList16 = arrayList18;
                                        arrayList11.add(p5.z0(str7, r88 + "_ev", "evolution_id", str15, "general_id", str14, "evolution_level", Integer.valueOf(o(str15)), "sub_level", "7", "status", 1, "surrender_status", 0, "fate_ids", "[]"));
                                    } else {
                                        arrayList16 = arrayList18;
                                    }
                                } else {
                                    arrayList16 = arrayList18;
                                }
                            } else {
                                obj12 = obj10;
                                obj7 = obj9;
                                obj8 = obj8;
                                i18 = i18;
                                linkedHashSet3 = linkedHashSet3;
                                obj13 = obj13;
                                obj = obj;
                                str31 = str31;
                                linkedHashMapZ0 = linkedHashMapZ0;
                                str10 = str10;
                                arrayList14 = arrayList14;
                                arrayList16 = arrayList10;
                                arrayList8 = arrayList8;
                                linkedHashSet14 = linkedHashSet14;
                                arrayList13 = arrayList13;
                                arrayList11 = arrayList11;
                            }
                            arrayList8.add(linkedHashMapF);
                            arrayList17 = arrayList43;
                            arrayList17.add(mapN5);
                            if (i18 == 1) {
                                linkedHashMapZ0.put("deputy_general_id", str14);
                            }
                            i17 = 2;
                        }
                        linkedHashMapZ0 = linkedHashMapZ0;
                        arrayList8 = arrayList8;
                        arrayList11 = arrayList11;
                        arrayList43 = arrayList17;
                        strArr3 = strArr4;
                        arrayList3 = arrayList15;
                        linkedHashSet13 = linkedHashSet4;
                        str30 = str30;
                        i46 = i46;
                        j2 = j2;
                        i16 = i21;
                        arrayList10 = arrayList16;
                        linkedHashSet3 = linkedHashSet3;
                        arrayList14 = arrayList14;
                        obj13 = obj13;
                        obj2 = obj8;
                        str8 = str10;
                        obj = obj;
                        obj6 = obj12;
                        linkedHashSet14 = linkedHashSet14;
                        arrayList13 = arrayList13;
                        str31 = str31;
                        arrayList12 = arrayList12;
                        obj3 = obj11;
                        i18++;
                        i15 = i15;
                    }
                    ArrayList arrayList415 = arrayList12;
                    w1Var3 = w1Var;
                    i30 = i2;
                    arrayList34 = arrayList14;
                    arrayList26 = arrayList13;
                    str3 = str30;
                    iMin = i45;
                    str2 = str310;
                    linkedHashMap = linkedHashMap2;
                    str = str39;
                    strArr7 = strArr14;
                    arrayList29 = arrayList10;
                    arrayList35 = arrayList8;
                    linkedHashSet = linkedHashSet;
                    arrayList20 = arrayList44;
                    j4 = j2;
                    linkedHashSet12 = linkedHashSet13;
                    arrayList28 = arrayList5;
                    str4 = str29;
                    linkedHashSet11 = linkedHashSet14;
                    arrayList27 = arrayList415;
                    strI = str6;
                    arrayList30 = arrayList11;
                    arrayList31 = arrayList42;
                    i6 = i6;
                    arrayList25 = arrayList43;
                    iMax = i46;
                    i41 = i15;
                }
                i12 = i11;
                arrayList2 = new ArrayList();
                strArr3 = strArr2;
                i14 = 1;
                while (i14 <= i13) {
                    if (i14 != iQ2) {
                        arrayList2.add(Integer.valueOf(i14));
                    }
                    i14++;
                }
                arrayList3 = new ArrayList(arrayList2);
                if (i12 > 0) {
                    arrayList3.remove(Integer.valueOf(i12));
                }
                if (mapK1 == null) {
                    j2 = j5;
                    linkedHashMapL = null;
                } else {
                    j2 = j5;
                    linkedHashMapL = null;
                }
                if (linkedHashMapL == null) {
                    strR3 = r(i12, linkedHashMap2);
                    if (!strR3.isEmpty()) {
                        linkedHashMapL = l(str31, strR3, i12, j2);
                    }
                }
                if (linkedHashMapL != null) {
                    linkedHashMapL.put("position", "2");
                    linkedHashMapL.put("pos", "2");
                    linkedHashMapL.put("skill_position", "2");
                    arrayList45.add(linkedHashMapL);
                    arrayList43.add(linkedHashMapL);
                }
                if (z6) {
                    arrayList4 = arrayList28;
                    i15 = i42;
                    str6 = str28;
                } else {
                    if (p5.E0(i3) >= 3) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (z5) {
                        strArr5 = f1180l;
                        length2 = strArr5.length;
                        i28 = 0;
                        while (i28 < length2) {
                            int i415 = length2;
                            LinkedHashMap linkedHashMapM4 = m(str31, strArr5[i28], j2);
                            arrayList45.add(linkedHashMapM4);
                            arrayList43.add(linkedHashMapM4);
                            i28++;
                            length2 = i415;
                        }
                        StringBuilder sb8 = new StringBuilder();
                        str6 = str28;
                        sb8.append(str6);
                        sb8.append("_mt");
                        i15 = i42;
                        sb8.append(i15);
                        String string8 = sb8.toString();
                        double[] dArr4 = f1181m;
                        arrayList4 = arrayList28;
                        arrayList4.add(p5.z0("pk_id", string8, "general_pk_id", str31, "user_general_id", str31, "top_level", "8", "meridian_level", "8", "point_level", "30", "gong", String.valueOf(dArr4[0]), "fang", String.valueOf(dArr4[1]), "xue", String.valueOf(dArr4[2]), "zhi", String.valueOf(dArr4[3]), "item_num", "0"));
                    } else {
                        arrayList4 = arrayList28;
                        i15 = i42;
                        str6 = str28;
                    }
                }
                if (z6) {
                    strR2 = com.sgscq.vpn.handler.t0.r(str27);
                    if (strR2.isEmpty()) {
                        str7 = "pk_id";
                        str8 = str27;
                        arrayList5 = arrayList4;
                        arrayList6 = arrayList40;
                        arrayList6.add(p5.z0(str7, str6 + "_me" + i15, "magic_id", strR2, "general_id", str8, "magic_level", "10", "magic_sub_level", p5.f1276c[p5.E0(i3)], "magic_vip_level", "0", "is_open", 1));
                    } else {
                        arrayList5 = arrayList4;
                        str7 = "pk_id";
                        str8 = str27;
                        arrayList6 = arrayList40;
                    }
                } else {
                    arrayList5 = arrayList4;
                    str7 = "pk_id";
                    str8 = str27;
                    arrayList6 = arrayList40;
                }
                if (z6) {
                    arrayList7 = arrayList41;
                } else {
                    if (p5.E0(i3) >= 3) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (z4) {
                        strB1 = w1Var3.B0(str8);
                        if (strB1.isEmpty()) {
                            strB1 = a(w1Var3, i7);
                        }
                        str17 = strB1;
                        if (str17.isEmpty()) {
                            arrayList7 = arrayList41;
                            arrayList7.add(p5.z0(str7, str6 + "_ev" + i15, "evolution_id", str17, "general_id", str8, "evolution_level", Integer.valueOf(o(str17)), "sub_level", "7", "status", 1, "surrender_status", 0, "fate_ids", "[]"));
                        } else {
                            arrayList7 = arrayList41;
                        }
                    } else {
                        arrayList7 = arrayList41;
                    }
                }
                obj4 = "gSkill";
                linkedHashMapF2.put(obj4, arrayList45);
                obj5 = "general_skills";
                linkedHashMapF2.put(obj5, new ArrayList(arrayList45));
                arrayList8 = arrayList37;
                arrayList8.add(linkedHashMapF2);
                arrayList9 = new ArrayList();
                if (z6) {
                    if (str8 != null) {
                        i24 = 1;
                    } else {
                        i24 = 1;
                    }
                    String[] strArr19 = com.sgscq.vpn.handler.p0.f955a;
                    arrayListP = com.sgscq.vpn.handler.p0.p(0, Math.max(0, i15 - 1), Math.max(1, i46), 100, str8, str31);
                    it2 = arrayListP.iterator();
                    while (it2.hasNext()) {
                        Iterator it9 = it2;
                        Map map6 = (Map) it2.next();
                        p(map6);
                        g(i24, arrayList39, map6);
                        it2 = it9;
                        arrayList6 = arrayList6;
                    }
                    arrayList10 = arrayList6;
                    arrayList12 = arrayList39;
                    i25 = 1;
                    while (i25 <= 4) {
                        String str313 = f1178j[i25];
                        ArrayList arrayList416 = arrayList7;
                        StringBuilder sb9 = new StringBuilder();
                        sb9.append(str31);
                        Object obj114 = obj5;
                        sb9.append("_div");
                        sb9.append(i25);
                        String string9 = sb9.toString();
                        Object[] objArr4 = new Object[12];
                        objArr4[0] = "equipment_id";
                        objArr4[1] = str313;
                        Object obj115 = obj4;
                        objArr4[2] = "general_pk_id";
                        objArr4[3] = str31;
                        objArr4[4] = "equipment_level";
                        objArr4[5] = Integer.valueOf(i46);
                        objArr4[6] = "refine_level";
                        objArr4[7] = String.valueOf(10);
                        objArr4[8] = "refine_bonus_type";
                        objArr4[9] = "shangshen_jinglian_up";
                        objArr4[10] = "bore_list";
                        arrayList19 = new ArrayList();
                        int i416 = i7;
                        i26 = 5;
                        i27 = 1;
                        while (i27 <= i26) {
                            arrayList19.add(p5.z0("bore_id", String.valueOf(i27), "gem_id", f1179k[i24], "bore_type", Integer.valueOf(i24), "is_lock", 0));
                            i27++;
                            i26 = 5;
                            i24 = i24;
                        }
                        int i53 = i24;
                        objArr4[11] = arrayList19;
                        LinkedHashMap linkedHashMapZ4 = p5.z0(str7, string9, objArr4);
                        p(linkedHashMapZ4);
                        arrayListP.add(linkedHashMapZ4);
                        d(arrayList12, linkedHashMapZ4);
                        i25++;
                        obj5 = obj114;
                        i24 = i53;
                        i7 = i416;
                        arrayList7 = arrayList416;
                        obj4 = obj115;
                    }
                    i16 = i7;
                    obj6 = obj5;
                    obj7 = obj4;
                    arrayList11 = arrayList7;
                    arrayList9 = arrayListP;
                } else {
                    i16 = i7;
                    arrayList10 = arrayList6;
                    obj6 = obj5;
                    obj7 = obj4;
                    arrayList11 = arrayList7;
                    arrayList12 = arrayList39;
                }
                arrayList13 = arrayList38;
                arrayList13.addAll(arrayList9);
                linkedHashMapZ0 = p5.z0(str7, str31, "general_id", str8, "general_pk_id", str31, "position", String.valueOf(i15), "general_position", String.valueOf(i15), "level", Integer.valueOf(i46), "general_fighting", linkedHashMapF2.get("fighting"), "general_hp", linkedHashMapF2.get("general_hp"), "general_attack", linkedHashMapF2.get("general_attack"), "general_defense", linkedHashMapF2.get("general_defense"), "general_wisdom", linkedHashMapF2.get("general_wisdom"));
                com.sgscq.vpn.handler.p0.j(arrayList9, linkedHashMapZ0);
                arrayList14 = arrayList36;
                arrayList14.add(linkedHashMapZ0);
                linkedHashSet3 = new LinkedHashSet();
                linkedHashSet3.add(Integer.valueOf(iQ2));
                if (i12 > 0) {
                    linkedHashSet3.add(Integer.valueOf(i12));
                }
                i17 = 2;
                i18 = 1;
                while (i18 <= i17) {
                    i19 = i18 - 1;
                    if (i19 < arrayList3.size()) {
                        arrayList15 = arrayList3;
                        iIntValue = ((Integer) arrayList15.get(i19)).intValue();
                    } else {
                        arrayList15 = arrayList3;
                        iIntValue = 0;
                    }
                    if (i19 < strArr3.length) {
                        str9 = strArr3[i19];
                    } else {
                        str9 = str29;
                    }
                    if (str9.isEmpty()) {
                        strArr4 = strArr3;
                        linkedHashSet4 = linkedHashSet13;
                        w1Var2 = w1Var;
                        i20 = 5;
                        strArr4 = strArr3;
                        z = false;
                    } else {
                        strArr4 = strArr3;
                        linkedHashSet4 = linkedHashSet13;
                        w1Var2 = w1Var;
                        i20 = 5;
                        strArr4 = strArr3;
                        z = false;
                    }
                    if (z) {
                        str16 = str9;
                        linkedHashSet = linkedHashSet;
                        linkedHashSet5 = new LinkedHashSet(linkedHashSet);
                        linkedHashSet14 = linkedHashSet14;
                        linkedHashSet5.addAll(linkedHashSet14);
                        linkedHashSet5.addAll(linkedHashSet4);
                        if (i19 < arrayList15.size()) {
                            iIntValue2 = ((Integer) arrayList15.get(i19)).intValue();
                        } else {
                            iIntValue2 = 0;
                        }
                        if (iIntValue2 > 0) {
                            strArr4 = strArr3;
                            strArr4 = strArr3;
                            ArrayList arrayList417 = new ArrayList();
                            arrayList417.add(Integer.valueOf(iIntValue2));
                            str10 = str8;
                            strT = s(w1Var, arrayListF, str8, linkedHashSet5, linkedHashSet3, arrayList417);
                        } else {
                            strArr4 = strArr3;
                            strArr4 = strArr3;
                            str10 = str8;
                            strT = str16;
                        }
                        if (strT.isEmpty()) {
                            if (iIntValue > 0) {
                                strT = u(w1Var2, linkedHashSet5, iIntValue, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                            } else {
                                strT = t(w1Var2, linkedHashSet5, linkedHashSet3, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                            }
                        }
                        str11 = strT;
                    } else {
                        strArr4 = strArr3;
                        i46 = i46;
                        str10 = str8;
                        String str314 = str9;
                        arrayList14 = arrayList14;
                        i15 = i15;
                        obj13 = obj13;
                        linkedHashSet = linkedHashSet;
                        j2 = j2;
                        strArr4 = strArr4;
                        str31 = str31;
                        linkedHashMapZ0 = linkedHashMapZ0;
                        obj = obj;
                        arrayList15 = arrayList15;
                        str11 = str314;
                    }
                    if (str11.isEmpty()) {
                        i17 = 2;
                        linkedHashSet3 = linkedHashSet3;
                        obj13 = obj13;
                        obj = obj;
                        str31 = str31;
                        linkedHashMapZ0 = linkedHashMapZ0;
                        str10 = str10;
                        obj12 = obj6;
                        obj8 = obj2;
                        obj11 = obj3;
                        arrayList14 = arrayList14;
                        arrayList16 = arrayList10;
                        arrayList8 = arrayList8;
                        i21 = i16;
                        linkedHashSet14 = linkedHashSet14;
                        arrayList13 = arrayList13;
                        arrayList11 = arrayList11;
                        i18 = i18;
                        arrayList17 = arrayList43;
                    } else {
                        linkedHashSet.add(str11);
                        linkedHashSet4.add(str11);
                        linkedHashSet3.add(Integer.valueOf(q(w1Var2, str11)));
                        str12 = str31 + "_lt" + i18;
                        str13 = str11;
                        Object obj116 = obj3;
                        obj8 = obj2;
                        i21 = i16;
                        linkedHashMapF = t5.f(w1Var, str12, str11, i46, 0, str31, String.valueOf(i18), true);
                        linkedHashMapF.put(obj8, Integer.valueOf(i20));
                        linkedHashMapF.put(obj116, Integer.valueOf(i20));
                        if (z6) {
                            linkedHashMapF.put(obj, obj13);
                        }
                        if (z6) {
                            str14 = str13;
                        } else {
                            if (p5.E0(i3) >= 3) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z3) {
                                str14 = str13;
                                if (!w1Var2.B0(str14).isEmpty()) {
                                    linkedHashMapF.put("evolution_image_status", Boolean.TRUE);
                                }
                            } else {
                                str14 = str13;
                            }
                        }
                        if (z6) {
                            i22 = iArr[p5.E0(i3)];
                        } else {
                            i22 = 0;
                        }
                        HashMap mapN6 = n(i22, w1Var2, r88, str14);
                        linkedHashMapF.put("general_naturalskill_id", mapN6.get(str7));
                        obj9 = obj7;
                        linkedHashMapF.put(obj9, p5.v0(mapN6));
                        obj10 = obj6;
                        linkedHashMapF.put(obj10, p5.v0(mapN6));
                        obj11 = obj116;
                        iH = h(w1Var2, str10);
                        if (iH >= 1) {
                            iH = 1;
                        } else {
                            iH = 1;
                        }
                        String strValueOf5 = String.valueOf(iH);
                        linkedHashMapF.put("lieutenant_skill_id", strValueOf5);
                        linkedHashMapF.put("skill_type_lieutenant", strValueOf5);
                        linkedHashMapF.put("ls_type", String.valueOf(i18));
                        if (z6) {
                            strR = com.sgscq.vpn.handler.t0.r(str14);
                            if (strR.isEmpty()) {
                                i23 = 3;
                                obj7 = obj9;
                                obj12 = obj10;
                                arrayList18 = arrayList10;
                                arrayList18.add(p5.z0(str7, str12 + "_me", "magic_id", strR, "general_id", str14, "magic_level", "10", "magic_sub_level", p5.f1276c[p5.E0(i3)], "magic_vip_level", "0", "is_open", 1));
                            } else {
                                obj12 = obj10;
                                obj7 = obj9;
                                arrayList18 = arrayList10;
                                i23 = 3;
                            }
                            if (p5.E0(i3) >= i23) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                strB0 = w1Var2.B0(str14);
                                if (strB0.isEmpty()) {
                                    strB0 = a(w1Var2, i21 + i18);
                                }
                                str15 = strB0;
                                if (str15.isEmpty()) {
                                    arrayList16 = arrayList18;
                                    arrayList11.add(p5.z0(str7, r88 + "_ev", "evolution_id", str15, "general_id", str14, "evolution_level", Integer.valueOf(o(str15)), "sub_level", "7", "status", 1, "surrender_status", 0, "fate_ids", "[]"));
                                } else {
                                    arrayList16 = arrayList18;
                                }
                            } else {
                                arrayList16 = arrayList18;
                            }
                        } else {
                            obj12 = obj10;
                            obj7 = obj9;
                            obj8 = obj8;
                            i18 = i18;
                            linkedHashSet3 = linkedHashSet3;
                            obj13 = obj13;
                            obj = obj;
                            str31 = str31;
                            linkedHashMapZ0 = linkedHashMapZ0;
                            str10 = str10;
                            arrayList14 = arrayList14;
                            arrayList16 = arrayList10;
                            arrayList8 = arrayList8;
                            linkedHashSet14 = linkedHashSet14;
                            arrayList13 = arrayList13;
                            arrayList11 = arrayList11;
                        }
                        arrayList8.add(linkedHashMapF);
                        arrayList17 = arrayList43;
                        arrayList17.add(mapN6);
                        if (i18 == 1) {
                            linkedHashMapZ0.put("deputy_general_id", str14);
                        }
                        i17 = 2;
                    }
                    linkedHashMapZ0 = linkedHashMapZ0;
                    arrayList8 = arrayList8;
                    arrayList11 = arrayList11;
                    arrayList43 = arrayList17;
                    strArr3 = strArr4;
                    arrayList3 = arrayList15;
                    linkedHashSet13 = linkedHashSet4;
                    str30 = str30;
                    i46 = i46;
                    j2 = j2;
                    i16 = i21;
                    arrayList10 = arrayList16;
                    linkedHashSet3 = linkedHashSet3;
                    arrayList14 = arrayList14;
                    obj13 = obj13;
                    obj2 = obj8;
                    str8 = str10;
                    obj = obj;
                    obj6 = obj12;
                    linkedHashSet14 = linkedHashSet14;
                    arrayList13 = arrayList13;
                    str31 = str31;
                    arrayList12 = arrayList12;
                    obj3 = obj11;
                    i18++;
                    i15 = i15;
                }
                ArrayList arrayList418 = arrayList12;
                w1Var3 = w1Var;
                i30 = i2;
                arrayList34 = arrayList14;
                arrayList26 = arrayList13;
                str3 = str30;
                iMin = i45;
                str2 = str310;
                linkedHashMap = linkedHashMap2;
                str = str39;
                strArr7 = strArr14;
                arrayList29 = arrayList10;
                arrayList35 = arrayList8;
                linkedHashSet = linkedHashSet;
                arrayList20 = arrayList44;
                j4 = j2;
                linkedHashSet12 = linkedHashSet13;
                arrayList28 = arrayList5;
                str4 = str29;
                linkedHashSet11 = linkedHashSet14;
                arrayList27 = arrayList418;
                strI = str6;
                arrayList30 = arrayList11;
                arrayList31 = arrayList42;
                i6 = i6;
                arrayList25 = arrayList43;
                iMax = i46;
                i41 = i15;
            } else {
                obj = "insight_level";
                obj2 = "star_level";
                i7 = i43;
            }
            strArr = new String[0];
            strArr2 = strArr;
            if (z6) {
                strArr6 = f1173e[i30];
                obj3 = "general_star";
                if (i7 < strArr6.length) {
                    str5 = strArr6[i7];
                }
                linkedHashSet2 = new LinkedHashSet();
                if (iQ2 > 0) {
                    linkedHashSet2.add(Integer.valueOf(iQ2));
                }
                if (str5.isEmpty()) {
                    mapK1 = null;
                } else {
                    mapK1 = w1Var3.k1(str5);
                }
                if (mapK1 == null) {
                    i8 = 0;
                } else {
                    i8 = Integer.parseInt(String.valueOf(mapK1.getOrDefault(str2, str)));
                }
                String str315 = str;
                i9 = i8;
                String str316 = str2;
                if (i9 > 0) {
                    linkedHashSet2.add(Integer.valueOf(i9));
                }
                length = strArr2.length;
                i10 = 0;
                while (i10 < length) {
                    int i417 = length;
                    iQ = q(w1Var3, strArr2[i10]);
                    if (iQ > 0) {
                        linkedHashSet2.add(Integer.valueOf(iQ));
                    }
                    i10++;
                    length = i417;
                }
                if (i9 > 0) {
                    i11 = i9;
                } else {
                    i11 = 0;
                }
                if (i11 == 0) {
                    i29 = 4;
                    i12 = 1;
                    while (true) {
                        if (i12 <= i29) {
                            if (!linkedHashSet2.contains(Integer.valueOf(i12))) {
                                break;
                                break;
                            }
                            i12++;
                            i29 = 4;
                        }
                    }
                    arrayList2 = new ArrayList();
                    strArr3 = strArr2;
                    i14 = 1;
                    while (i14 <= i13) {
                        if (i14 != iQ2) {
                            arrayList2.add(Integer.valueOf(i14));
                        }
                        i14++;
                    }
                    arrayList3 = new ArrayList(arrayList2);
                    if (i12 > 0) {
                        arrayList3.remove(Integer.valueOf(i12));
                    }
                    if (mapK1 == null) {
                        j2 = j5;
                        linkedHashMapL = null;
                    } else {
                        j2 = j5;
                        linkedHashMapL = null;
                    }
                    if (linkedHashMapL == null) {
                        strR3 = r(i12, linkedHashMap2);
                        if (!strR3.isEmpty()) {
                            linkedHashMapL = l(str31, strR3, i12, j2);
                        }
                    }
                    if (linkedHashMapL != null) {
                        linkedHashMapL.put("position", "2");
                        linkedHashMapL.put("pos", "2");
                        linkedHashMapL.put("skill_position", "2");
                        arrayList45.add(linkedHashMapL);
                        arrayList43.add(linkedHashMapL);
                    }
                    if (z6) {
                        arrayList4 = arrayList28;
                        i15 = i42;
                        str6 = str28;
                    } else {
                        if (p5.E0(i3) >= 3) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (z5) {
                            strArr5 = f1180l;
                            length2 = strArr5.length;
                            i28 = 0;
                            while (i28 < length2) {
                                int i418 = length2;
                                LinkedHashMap linkedHashMapM5 = m(str31, strArr5[i28], j2);
                                arrayList45.add(linkedHashMapM5);
                                arrayList43.add(linkedHashMapM5);
                                i28++;
                                length2 = i418;
                            }
                            StringBuilder sb10 = new StringBuilder();
                            str6 = str28;
                            sb10.append(str6);
                            sb10.append("_mt");
                            i15 = i42;
                            sb10.append(i15);
                            String string10 = sb10.toString();
                            double[] dArr5 = f1181m;
                            arrayList4 = arrayList28;
                            arrayList4.add(p5.z0("pk_id", string10, "general_pk_id", str31, "user_general_id", str31, "top_level", "8", "meridian_level", "8", "point_level", "30", "gong", String.valueOf(dArr5[0]), "fang", String.valueOf(dArr5[1]), "xue", String.valueOf(dArr5[2]), "zhi", String.valueOf(dArr5[3]), "item_num", "0"));
                        } else {
                            arrayList4 = arrayList28;
                            i15 = i42;
                            str6 = str28;
                        }
                    }
                    if (z6) {
                        strR2 = com.sgscq.vpn.handler.t0.r(str27);
                        if (strR2.isEmpty()) {
                            str7 = "pk_id";
                            str8 = str27;
                            arrayList5 = arrayList4;
                            arrayList6 = arrayList40;
                            arrayList6.add(p5.z0(str7, str6 + "_me" + i15, "magic_id", strR2, "general_id", str8, "magic_level", "10", "magic_sub_level", p5.f1276c[p5.E0(i3)], "magic_vip_level", "0", "is_open", 1));
                        } else {
                            arrayList5 = arrayList4;
                            str7 = "pk_id";
                            str8 = str27;
                            arrayList6 = arrayList40;
                        }
                    } else {
                        arrayList5 = arrayList4;
                        str7 = "pk_id";
                        str8 = str27;
                        arrayList6 = arrayList40;
                    }
                    if (z6) {
                        arrayList7 = arrayList41;
                    } else {
                        if (p5.E0(i3) >= 3) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (z4) {
                            strB1 = w1Var3.B0(str8);
                            if (strB1.isEmpty()) {
                                strB1 = a(w1Var3, i7);
                            }
                            str17 = strB1;
                            if (str17.isEmpty()) {
                                arrayList7 = arrayList41;
                                arrayList7.add(p5.z0(str7, str6 + "_ev" + i15, "evolution_id", str17, "general_id", str8, "evolution_level", Integer.valueOf(o(str17)), "sub_level", "7", "status", 1, "surrender_status", 0, "fate_ids", "[]"));
                            } else {
                                arrayList7 = arrayList41;
                            }
                        } else {
                            arrayList7 = arrayList41;
                        }
                    }
                    obj4 = "gSkill";
                    linkedHashMapF2.put(obj4, arrayList45);
                    obj5 = "general_skills";
                    linkedHashMapF2.put(obj5, new ArrayList(arrayList45));
                    arrayList8 = arrayList37;
                    arrayList8.add(linkedHashMapF2);
                    arrayList9 = new ArrayList();
                    if (z6) {
                        if (str8 != null) {
                            i24 = 1;
                        } else {
                            i24 = 1;
                        }
                        String[] strArr110 = com.sgscq.vpn.handler.p0.f955a;
                        arrayListP = com.sgscq.vpn.handler.p0.p(0, Math.max(0, i15 - 1), Math.max(1, i46), 100, str8, str31);
                        it2 = arrayListP.iterator();
                        while (it2.hasNext()) {
                            Iterator it10 = it2;
                            Map map7 = (Map) it2.next();
                            p(map7);
                            g(i24, arrayList39, map7);
                            it2 = it10;
                            arrayList6 = arrayList6;
                        }
                        arrayList10 = arrayList6;
                        arrayList12 = arrayList39;
                        i25 = 1;
                        while (i25 <= 4) {
                            String str317 = f1178j[i25];
                            ArrayList arrayList419 = arrayList7;
                            StringBuilder sb11 = new StringBuilder();
                            sb11.append(str31);
                            Object obj117 = obj5;
                            sb11.append("_div");
                            sb11.append(i25);
                            String string11 = sb11.toString();
                            Object[] objArr5 = new Object[12];
                            objArr5[0] = "equipment_id";
                            objArr5[1] = str317;
                            Object obj118 = obj4;
                            objArr5[2] = "general_pk_id";
                            objArr5[3] = str31;
                            objArr5[4] = "equipment_level";
                            objArr5[5] = Integer.valueOf(i46);
                            objArr5[6] = "refine_level";
                            objArr5[7] = String.valueOf(10);
                            objArr5[8] = "refine_bonus_type";
                            objArr5[9] = "shangshen_jinglian_up";
                            objArr5[10] = "bore_list";
                            arrayList19 = new ArrayList();
                            int i419 = i7;
                            i26 = 5;
                            i27 = 1;
                            while (i27 <= i26) {
                                arrayList19.add(p5.z0("bore_id", String.valueOf(i27), "gem_id", f1179k[i24], "bore_type", Integer.valueOf(i24), "is_lock", 0));
                                i27++;
                                i26 = 5;
                                i24 = i24;
                            }
                            int i54 = i24;
                            objArr5[11] = arrayList19;
                            LinkedHashMap linkedHashMapZ5 = p5.z0(str7, string11, objArr5);
                            p(linkedHashMapZ5);
                            arrayListP.add(linkedHashMapZ5);
                            d(arrayList12, linkedHashMapZ5);
                            i25++;
                            obj5 = obj117;
                            i24 = i54;
                            i7 = i419;
                            arrayList7 = arrayList419;
                            obj4 = obj118;
                        }
                        i16 = i7;
                        obj6 = obj5;
                        obj7 = obj4;
                        arrayList11 = arrayList7;
                        arrayList9 = arrayListP;
                    } else {
                        i16 = i7;
                        arrayList10 = arrayList6;
                        obj6 = obj5;
                        obj7 = obj4;
                        arrayList11 = arrayList7;
                        arrayList12 = arrayList39;
                    }
                    arrayList13 = arrayList38;
                    arrayList13.addAll(arrayList9);
                    linkedHashMapZ0 = p5.z0(str7, str31, "general_id", str8, "general_pk_id", str31, "position", String.valueOf(i15), "general_position", String.valueOf(i15), "level", Integer.valueOf(i46), "general_fighting", linkedHashMapF2.get("fighting"), "general_hp", linkedHashMapF2.get("general_hp"), "general_attack", linkedHashMapF2.get("general_attack"), "general_defense", linkedHashMapF2.get("general_defense"), "general_wisdom", linkedHashMapF2.get("general_wisdom"));
                    com.sgscq.vpn.handler.p0.j(arrayList9, linkedHashMapZ0);
                    arrayList14 = arrayList36;
                    arrayList14.add(linkedHashMapZ0);
                    linkedHashSet3 = new LinkedHashSet();
                    linkedHashSet3.add(Integer.valueOf(iQ2));
                    if (i12 > 0) {
                        linkedHashSet3.add(Integer.valueOf(i12));
                    }
                    i17 = 2;
                    i18 = 1;
                    while (i18 <= i17) {
                        i19 = i18 - 1;
                        if (i19 < arrayList3.size()) {
                            arrayList15 = arrayList3;
                            iIntValue = ((Integer) arrayList15.get(i19)).intValue();
                        } else {
                            arrayList15 = arrayList3;
                            iIntValue = 0;
                        }
                        if (i19 < strArr3.length) {
                            str9 = strArr3[i19];
                        } else {
                            str9 = str29;
                        }
                        if (str9.isEmpty()) {
                            strArr4 = strArr3;
                            linkedHashSet4 = linkedHashSet13;
                            w1Var2 = w1Var;
                            i20 = 5;
                            strArr4 = strArr3;
                            z = false;
                        } else {
                            strArr4 = strArr3;
                            linkedHashSet4 = linkedHashSet13;
                            w1Var2 = w1Var;
                            i20 = 5;
                            strArr4 = strArr3;
                            z = false;
                        }
                        if (z) {
                            str16 = str9;
                            linkedHashSet = linkedHashSet;
                            linkedHashSet5 = new LinkedHashSet(linkedHashSet);
                            linkedHashSet14 = linkedHashSet14;
                            linkedHashSet5.addAll(linkedHashSet14);
                            linkedHashSet5.addAll(linkedHashSet4);
                            if (i19 < arrayList15.size()) {
                                iIntValue2 = ((Integer) arrayList15.get(i19)).intValue();
                            } else {
                                iIntValue2 = 0;
                            }
                            if (iIntValue2 > 0) {
                                strArr4 = strArr3;
                                strArr4 = strArr3;
                                ArrayList arrayList4110 = new ArrayList();
                                arrayList4110.add(Integer.valueOf(iIntValue2));
                                str10 = str8;
                                strT = s(w1Var, arrayListF, str8, linkedHashSet5, linkedHashSet3, arrayList4110);
                            } else {
                                strArr4 = strArr3;
                                strArr4 = strArr3;
                                str10 = str8;
                                strT = str16;
                            }
                            if (strT.isEmpty()) {
                                if (iIntValue > 0) {
                                    strT = u(w1Var2, linkedHashSet5, iIntValue, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                                } else {
                                    strT = t(w1Var2, linkedHashSet5, linkedHashSet3, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                                }
                            }
                            str11 = strT;
                        } else {
                            strArr4 = strArr3;
                            i46 = i46;
                            str10 = str8;
                            String str318 = str9;
                            arrayList14 = arrayList14;
                            i15 = i15;
                            obj13 = obj13;
                            linkedHashSet = linkedHashSet;
                            j2 = j2;
                            strArr4 = strArr4;
                            str31 = str31;
                            linkedHashMapZ0 = linkedHashMapZ0;
                            obj = obj;
                            arrayList15 = arrayList15;
                            str11 = str318;
                        }
                        if (str11.isEmpty()) {
                            i17 = 2;
                            linkedHashSet3 = linkedHashSet3;
                            obj13 = obj13;
                            obj = obj;
                            str31 = str31;
                            linkedHashMapZ0 = linkedHashMapZ0;
                            str10 = str10;
                            obj12 = obj6;
                            obj8 = obj2;
                            obj11 = obj3;
                            arrayList14 = arrayList14;
                            arrayList16 = arrayList10;
                            arrayList8 = arrayList8;
                            i21 = i16;
                            linkedHashSet14 = linkedHashSet14;
                            arrayList13 = arrayList13;
                            arrayList11 = arrayList11;
                            i18 = i18;
                            arrayList17 = arrayList43;
                        } else {
                            linkedHashSet.add(str11);
                            linkedHashSet4.add(str11);
                            linkedHashSet3.add(Integer.valueOf(q(w1Var2, str11)));
                            str12 = str31 + "_lt" + i18;
                            str13 = str11;
                            Object obj119 = obj3;
                            obj8 = obj2;
                            i21 = i16;
                            linkedHashMapF = t5.f(w1Var, str12, str11, i46, 0, str31, String.valueOf(i18), true);
                            linkedHashMapF.put(obj8, Integer.valueOf(i20));
                            linkedHashMapF.put(obj119, Integer.valueOf(i20));
                            if (z6) {
                                linkedHashMapF.put(obj, obj13);
                            }
                            if (z6) {
                                str14 = str13;
                            } else {
                                if (p5.E0(i3) >= 3) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if (z3) {
                                    str14 = str13;
                                    if (!w1Var2.B0(str14).isEmpty()) {
                                        linkedHashMapF.put("evolution_image_status", Boolean.TRUE);
                                    }
                                } else {
                                    str14 = str13;
                                }
                            }
                            if (z6) {
                                i22 = iArr[p5.E0(i3)];
                            } else {
                                i22 = 0;
                            }
                            HashMap mapN7 = n(i22, w1Var2, r88, str14);
                            linkedHashMapF.put("general_naturalskill_id", mapN7.get(str7));
                            obj9 = obj7;
                            linkedHashMapF.put(obj9, p5.v0(mapN7));
                            obj10 = obj6;
                            linkedHashMapF.put(obj10, p5.v0(mapN7));
                            obj11 = obj119;
                            iH = h(w1Var2, str10);
                            if (iH >= 1) {
                                iH = 1;
                            } else {
                                iH = 1;
                            }
                            String strValueOf6 = String.valueOf(iH);
                            linkedHashMapF.put("lieutenant_skill_id", strValueOf6);
                            linkedHashMapF.put("skill_type_lieutenant", strValueOf6);
                            linkedHashMapF.put("ls_type", String.valueOf(i18));
                            if (z6) {
                                strR = com.sgscq.vpn.handler.t0.r(str14);
                                if (strR.isEmpty()) {
                                    i23 = 3;
                                    obj7 = obj9;
                                    obj12 = obj10;
                                    arrayList18 = arrayList10;
                                    arrayList18.add(p5.z0(str7, str12 + "_me", "magic_id", strR, "general_id", str14, "magic_level", "10", "magic_sub_level", p5.f1276c[p5.E0(i3)], "magic_vip_level", "0", "is_open", 1));
                                } else {
                                    obj12 = obj10;
                                    obj7 = obj9;
                                    arrayList18 = arrayList10;
                                    i23 = 3;
                                }
                                if (p5.E0(i3) >= i23) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (z2) {
                                    strB0 = w1Var2.B0(str14);
                                    if (strB0.isEmpty()) {
                                        strB0 = a(w1Var2, i21 + i18);
                                    }
                                    str15 = strB0;
                                    if (str15.isEmpty()) {
                                        arrayList16 = arrayList18;
                                        arrayList11.add(p5.z0(str7, r88 + "_ev", "evolution_id", str15, "general_id", str14, "evolution_level", Integer.valueOf(o(str15)), "sub_level", "7", "status", 1, "surrender_status", 0, "fate_ids", "[]"));
                                    } else {
                                        arrayList16 = arrayList18;
                                    }
                                } else {
                                    arrayList16 = arrayList18;
                                }
                            } else {
                                obj12 = obj10;
                                obj7 = obj9;
                                obj8 = obj8;
                                i18 = i18;
                                linkedHashSet3 = linkedHashSet3;
                                obj13 = obj13;
                                obj = obj;
                                str31 = str31;
                                linkedHashMapZ0 = linkedHashMapZ0;
                                str10 = str10;
                                arrayList14 = arrayList14;
                                arrayList16 = arrayList10;
                                arrayList8 = arrayList8;
                                linkedHashSet14 = linkedHashSet14;
                                arrayList13 = arrayList13;
                                arrayList11 = arrayList11;
                            }
                            arrayList8.add(linkedHashMapF);
                            arrayList17 = arrayList43;
                            arrayList17.add(mapN7);
                            if (i18 == 1) {
                                linkedHashMapZ0.put("deputy_general_id", str14);
                            }
                            i17 = 2;
                        }
                        linkedHashMapZ0 = linkedHashMapZ0;
                        arrayList8 = arrayList8;
                        arrayList11 = arrayList11;
                        arrayList43 = arrayList17;
                        strArr3 = strArr4;
                        arrayList3 = arrayList15;
                        linkedHashSet13 = linkedHashSet4;
                        str30 = str30;
                        i46 = i46;
                        j2 = j2;
                        i16 = i21;
                        arrayList10 = arrayList16;
                        linkedHashSet3 = linkedHashSet3;
                        arrayList14 = arrayList14;
                        obj13 = obj13;
                        obj2 = obj8;
                        str8 = str10;
                        obj = obj;
                        obj6 = obj12;
                        linkedHashSet14 = linkedHashSet14;
                        arrayList13 = arrayList13;
                        str31 = str31;
                        arrayList12 = arrayList12;
                        obj3 = obj11;
                        i18++;
                        i15 = i15;
                    }
                    ArrayList arrayList4111 = arrayList12;
                    w1Var3 = w1Var;
                    i30 = i2;
                    arrayList34 = arrayList14;
                    arrayList26 = arrayList13;
                    str3 = str30;
                    iMin = i45;
                    str2 = str316;
                    linkedHashMap = linkedHashMap2;
                    str = str315;
                    strArr7 = strArr14;
                    arrayList29 = arrayList10;
                    arrayList35 = arrayList8;
                    linkedHashSet = linkedHashSet;
                    arrayList20 = arrayList44;
                    j4 = j2;
                    linkedHashSet12 = linkedHashSet13;
                    arrayList28 = arrayList5;
                    str4 = str29;
                    linkedHashSet11 = linkedHashSet14;
                    arrayList27 = arrayList4111;
                    strI = str6;
                    arrayList30 = arrayList11;
                    arrayList31 = arrayList42;
                    i6 = i6;
                    arrayList25 = arrayList43;
                    iMax = i46;
                    i41 = i15;
                }
                i12 = i11;
                arrayList2 = new ArrayList();
                strArr3 = strArr2;
                i14 = 1;
                while (i14 <= i13) {
                    if (i14 != iQ2) {
                        arrayList2.add(Integer.valueOf(i14));
                    }
                    i14++;
                }
                arrayList3 = new ArrayList(arrayList2);
                if (i12 > 0) {
                    arrayList3.remove(Integer.valueOf(i12));
                }
                if (mapK1 == null) {
                    j2 = j5;
                    linkedHashMapL = null;
                } else {
                    j2 = j5;
                    linkedHashMapL = null;
                }
                if (linkedHashMapL == null) {
                    strR3 = r(i12, linkedHashMap2);
                    if (!strR3.isEmpty()) {
                        linkedHashMapL = l(str31, strR3, i12, j2);
                    }
                }
                if (linkedHashMapL != null) {
                    linkedHashMapL.put("position", "2");
                    linkedHashMapL.put("pos", "2");
                    linkedHashMapL.put("skill_position", "2");
                    arrayList45.add(linkedHashMapL);
                    arrayList43.add(linkedHashMapL);
                }
                if (z6) {
                    arrayList4 = arrayList28;
                    i15 = i42;
                    str6 = str28;
                } else {
                    if (p5.E0(i3) >= 3) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (z5) {
                        strArr5 = f1180l;
                        length2 = strArr5.length;
                        i28 = 0;
                        while (i28 < length2) {
                            int i4110 = length2;
                            LinkedHashMap linkedHashMapM6 = m(str31, strArr5[i28], j2);
                            arrayList45.add(linkedHashMapM6);
                            arrayList43.add(linkedHashMapM6);
                            i28++;
                            length2 = i4110;
                        }
                        StringBuilder sb12 = new StringBuilder();
                        str6 = str28;
                        sb12.append(str6);
                        sb12.append("_mt");
                        i15 = i42;
                        sb12.append(i15);
                        String string12 = sb12.toString();
                        double[] dArr6 = f1181m;
                        arrayList4 = arrayList28;
                        arrayList4.add(p5.z0("pk_id", string12, "general_pk_id", str31, "user_general_id", str31, "top_level", "8", "meridian_level", "8", "point_level", "30", "gong", String.valueOf(dArr6[0]), "fang", String.valueOf(dArr6[1]), "xue", String.valueOf(dArr6[2]), "zhi", String.valueOf(dArr6[3]), "item_num", "0"));
                    } else {
                        arrayList4 = arrayList28;
                        i15 = i42;
                        str6 = str28;
                    }
                }
                if (z6) {
                    strR2 = com.sgscq.vpn.handler.t0.r(str27);
                    if (strR2.isEmpty()) {
                        str7 = "pk_id";
                        str8 = str27;
                        arrayList5 = arrayList4;
                        arrayList6 = arrayList40;
                        arrayList6.add(p5.z0(str7, str6 + "_me" + i15, "magic_id", strR2, "general_id", str8, "magic_level", "10", "magic_sub_level", p5.f1276c[p5.E0(i3)], "magic_vip_level", "0", "is_open", 1));
                    } else {
                        arrayList5 = arrayList4;
                        str7 = "pk_id";
                        str8 = str27;
                        arrayList6 = arrayList40;
                    }
                } else {
                    arrayList5 = arrayList4;
                    str7 = "pk_id";
                    str8 = str27;
                    arrayList6 = arrayList40;
                }
                if (z6) {
                    arrayList7 = arrayList41;
                } else {
                    if (p5.E0(i3) >= 3) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (z4) {
                        strB1 = w1Var3.B0(str8);
                        if (strB1.isEmpty()) {
                            strB1 = a(w1Var3, i7);
                        }
                        str17 = strB1;
                        if (str17.isEmpty()) {
                            arrayList7 = arrayList41;
                            arrayList7.add(p5.z0(str7, str6 + "_ev" + i15, "evolution_id", str17, "general_id", str8, "evolution_level", Integer.valueOf(o(str17)), "sub_level", "7", "status", 1, "surrender_status", 0, "fate_ids", "[]"));
                        } else {
                            arrayList7 = arrayList41;
                        }
                    } else {
                        arrayList7 = arrayList41;
                    }
                }
                obj4 = "gSkill";
                linkedHashMapF2.put(obj4, arrayList45);
                obj5 = "general_skills";
                linkedHashMapF2.put(obj5, new ArrayList(arrayList45));
                arrayList8 = arrayList37;
                arrayList8.add(linkedHashMapF2);
                arrayList9 = new ArrayList();
                if (z6) {
                    if (str8 != null) {
                        i24 = 1;
                    } else {
                        i24 = 1;
                    }
                    String[] strArr111 = com.sgscq.vpn.handler.p0.f955a;
                    arrayListP = com.sgscq.vpn.handler.p0.p(0, Math.max(0, i15 - 1), Math.max(1, i46), 100, str8, str31);
                    it2 = arrayListP.iterator();
                    while (it2.hasNext()) {
                        Iterator it11 = it2;
                        Map map8 = (Map) it2.next();
                        p(map8);
                        g(i24, arrayList39, map8);
                        it2 = it11;
                        arrayList6 = arrayList6;
                    }
                    arrayList10 = arrayList6;
                    arrayList12 = arrayList39;
                    i25 = 1;
                    while (i25 <= 4) {
                        String str319 = f1178j[i25];
                        ArrayList arrayList4112 = arrayList7;
                        StringBuilder sb13 = new StringBuilder();
                        sb13.append(str31);
                        Object obj1110 = obj5;
                        sb13.append("_div");
                        sb13.append(i25);
                        String string13 = sb13.toString();
                        Object[] objArr6 = new Object[12];
                        objArr6[0] = "equipment_id";
                        objArr6[1] = str319;
                        Object obj1111 = obj4;
                        objArr6[2] = "general_pk_id";
                        objArr6[3] = str31;
                        objArr6[4] = "equipment_level";
                        objArr6[5] = Integer.valueOf(i46);
                        objArr6[6] = "refine_level";
                        objArr6[7] = String.valueOf(10);
                        objArr6[8] = "refine_bonus_type";
                        objArr6[9] = "shangshen_jinglian_up";
                        objArr6[10] = "bore_list";
                        arrayList19 = new ArrayList();
                        int i4111 = i7;
                        i26 = 5;
                        i27 = 1;
                        while (i27 <= i26) {
                            arrayList19.add(p5.z0("bore_id", String.valueOf(i27), "gem_id", f1179k[i24], "bore_type", Integer.valueOf(i24), "is_lock", 0));
                            i27++;
                            i26 = 5;
                            i24 = i24;
                        }
                        int i55 = i24;
                        objArr6[11] = arrayList19;
                        LinkedHashMap linkedHashMapZ6 = p5.z0(str7, string13, objArr6);
                        p(linkedHashMapZ6);
                        arrayListP.add(linkedHashMapZ6);
                        d(arrayList12, linkedHashMapZ6);
                        i25++;
                        obj5 = obj1110;
                        i24 = i55;
                        i7 = i4111;
                        arrayList7 = arrayList4112;
                        obj4 = obj1111;
                    }
                    i16 = i7;
                    obj6 = obj5;
                    obj7 = obj4;
                    arrayList11 = arrayList7;
                    arrayList9 = arrayListP;
                } else {
                    i16 = i7;
                    arrayList10 = arrayList6;
                    obj6 = obj5;
                    obj7 = obj4;
                    arrayList11 = arrayList7;
                    arrayList12 = arrayList39;
                }
                arrayList13 = arrayList38;
                arrayList13.addAll(arrayList9);
                linkedHashMapZ0 = p5.z0(str7, str31, "general_id", str8, "general_pk_id", str31, "position", String.valueOf(i15), "general_position", String.valueOf(i15), "level", Integer.valueOf(i46), "general_fighting", linkedHashMapF2.get("fighting"), "general_hp", linkedHashMapF2.get("general_hp"), "general_attack", linkedHashMapF2.get("general_attack"), "general_defense", linkedHashMapF2.get("general_defense"), "general_wisdom", linkedHashMapF2.get("general_wisdom"));
                com.sgscq.vpn.handler.p0.j(arrayList9, linkedHashMapZ0);
                arrayList14 = arrayList36;
                arrayList14.add(linkedHashMapZ0);
                linkedHashSet3 = new LinkedHashSet();
                linkedHashSet3.add(Integer.valueOf(iQ2));
                if (i12 > 0) {
                    linkedHashSet3.add(Integer.valueOf(i12));
                }
                i17 = 2;
                i18 = 1;
                while (i18 <= i17) {
                    i19 = i18 - 1;
                    if (i19 < arrayList3.size()) {
                        arrayList15 = arrayList3;
                        iIntValue = ((Integer) arrayList15.get(i19)).intValue();
                    } else {
                        arrayList15 = arrayList3;
                        iIntValue = 0;
                    }
                    if (i19 < strArr3.length) {
                        str9 = strArr3[i19];
                    } else {
                        str9 = str29;
                    }
                    if (str9.isEmpty()) {
                        strArr4 = strArr3;
                        linkedHashSet4 = linkedHashSet13;
                        w1Var2 = w1Var;
                        i20 = 5;
                        strArr4 = strArr3;
                        z = false;
                    } else {
                        strArr4 = strArr3;
                        linkedHashSet4 = linkedHashSet13;
                        w1Var2 = w1Var;
                        i20 = 5;
                        strArr4 = strArr3;
                        z = false;
                    }
                    if (z) {
                        str16 = str9;
                        linkedHashSet = linkedHashSet;
                        linkedHashSet5 = new LinkedHashSet(linkedHashSet);
                        linkedHashSet14 = linkedHashSet14;
                        linkedHashSet5.addAll(linkedHashSet14);
                        linkedHashSet5.addAll(linkedHashSet4);
                        if (i19 < arrayList15.size()) {
                            iIntValue2 = ((Integer) arrayList15.get(i19)).intValue();
                        } else {
                            iIntValue2 = 0;
                        }
                        if (iIntValue2 > 0) {
                            strArr4 = strArr3;
                            strArr4 = strArr3;
                            ArrayList arrayList4113 = new ArrayList();
                            arrayList4113.add(Integer.valueOf(iIntValue2));
                            str10 = str8;
                            strT = s(w1Var, arrayListF, str8, linkedHashSet5, linkedHashSet3, arrayList4113);
                        } else {
                            strArr4 = strArr3;
                            strArr4 = strArr3;
                            str10 = str8;
                            strT = str16;
                        }
                        if (strT.isEmpty()) {
                            if (iIntValue > 0) {
                                strT = u(w1Var2, linkedHashSet5, iIntValue, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                            } else {
                                strT = t(w1Var2, linkedHashSet5, linkedHashSet3, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                            }
                        }
                        str11 = strT;
                    } else {
                        strArr4 = strArr3;
                        i46 = i46;
                        str10 = str8;
                        String str3110 = str9;
                        arrayList14 = arrayList14;
                        i15 = i15;
                        obj13 = obj13;
                        linkedHashSet = linkedHashSet;
                        j2 = j2;
                        strArr4 = strArr4;
                        str31 = str31;
                        linkedHashMapZ0 = linkedHashMapZ0;
                        obj = obj;
                        arrayList15 = arrayList15;
                        str11 = str3110;
                    }
                    if (str11.isEmpty()) {
                        i17 = 2;
                        linkedHashSet3 = linkedHashSet3;
                        obj13 = obj13;
                        obj = obj;
                        str31 = str31;
                        linkedHashMapZ0 = linkedHashMapZ0;
                        str10 = str10;
                        obj12 = obj6;
                        obj8 = obj2;
                        obj11 = obj3;
                        arrayList14 = arrayList14;
                        arrayList16 = arrayList10;
                        arrayList8 = arrayList8;
                        i21 = i16;
                        linkedHashSet14 = linkedHashSet14;
                        arrayList13 = arrayList13;
                        arrayList11 = arrayList11;
                        i18 = i18;
                        arrayList17 = arrayList43;
                    } else {
                        linkedHashSet.add(str11);
                        linkedHashSet4.add(str11);
                        linkedHashSet3.add(Integer.valueOf(q(w1Var2, str11)));
                        str12 = str31 + "_lt" + i18;
                        str13 = str11;
                        Object obj1112 = obj3;
                        obj8 = obj2;
                        i21 = i16;
                        linkedHashMapF = t5.f(w1Var, str12, str11, i46, 0, str31, String.valueOf(i18), true);
                        linkedHashMapF.put(obj8, Integer.valueOf(i20));
                        linkedHashMapF.put(obj1112, Integer.valueOf(i20));
                        if (z6) {
                            linkedHashMapF.put(obj, obj13);
                        }
                        if (z6) {
                            str14 = str13;
                        } else {
                            if (p5.E0(i3) >= 3) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z3) {
                                str14 = str13;
                                if (!w1Var2.B0(str14).isEmpty()) {
                                    linkedHashMapF.put("evolution_image_status", Boolean.TRUE);
                                }
                            } else {
                                str14 = str13;
                            }
                        }
                        if (z6) {
                            i22 = iArr[p5.E0(i3)];
                        } else {
                            i22 = 0;
                        }
                        HashMap mapN8 = n(i22, w1Var2, r88, str14);
                        linkedHashMapF.put("general_naturalskill_id", mapN8.get(str7));
                        obj9 = obj7;
                        linkedHashMapF.put(obj9, p5.v0(mapN8));
                        obj10 = obj6;
                        linkedHashMapF.put(obj10, p5.v0(mapN8));
                        obj11 = obj1112;
                        iH = h(w1Var2, str10);
                        if (iH >= 1) {
                            iH = 1;
                        } else {
                            iH = 1;
                        }
                        String strValueOf7 = String.valueOf(iH);
                        linkedHashMapF.put("lieutenant_skill_id", strValueOf7);
                        linkedHashMapF.put("skill_type_lieutenant", strValueOf7);
                        linkedHashMapF.put("ls_type", String.valueOf(i18));
                        if (z6) {
                            strR = com.sgscq.vpn.handler.t0.r(str14);
                            if (strR.isEmpty()) {
                                i23 = 3;
                                obj7 = obj9;
                                obj12 = obj10;
                                arrayList18 = arrayList10;
                                arrayList18.add(p5.z0(str7, str12 + "_me", "magic_id", strR, "general_id", str14, "magic_level", "10", "magic_sub_level", p5.f1276c[p5.E0(i3)], "magic_vip_level", "0", "is_open", 1));
                            } else {
                                obj12 = obj10;
                                obj7 = obj9;
                                arrayList18 = arrayList10;
                                i23 = 3;
                            }
                            if (p5.E0(i3) >= i23) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                strB0 = w1Var2.B0(str14);
                                if (strB0.isEmpty()) {
                                    strB0 = a(w1Var2, i21 + i18);
                                }
                                str15 = strB0;
                                if (str15.isEmpty()) {
                                    arrayList16 = arrayList18;
                                    arrayList11.add(p5.z0(str7, r88 + "_ev", "evolution_id", str15, "general_id", str14, "evolution_level", Integer.valueOf(o(str15)), "sub_level", "7", "status", 1, "surrender_status", 0, "fate_ids", "[]"));
                                } else {
                                    arrayList16 = arrayList18;
                                }
                            } else {
                                arrayList16 = arrayList18;
                            }
                        } else {
                            obj12 = obj10;
                            obj7 = obj9;
                            obj8 = obj8;
                            i18 = i18;
                            linkedHashSet3 = linkedHashSet3;
                            obj13 = obj13;
                            obj = obj;
                            str31 = str31;
                            linkedHashMapZ0 = linkedHashMapZ0;
                            str10 = str10;
                            arrayList14 = arrayList14;
                            arrayList16 = arrayList10;
                            arrayList8 = arrayList8;
                            linkedHashSet14 = linkedHashSet14;
                            arrayList13 = arrayList13;
                            arrayList11 = arrayList11;
                        }
                        arrayList8.add(linkedHashMapF);
                        arrayList17 = arrayList43;
                        arrayList17.add(mapN8);
                        if (i18 == 1) {
                            linkedHashMapZ0.put("deputy_general_id", str14);
                        }
                        i17 = 2;
                    }
                    linkedHashMapZ0 = linkedHashMapZ0;
                    arrayList8 = arrayList8;
                    arrayList11 = arrayList11;
                    arrayList43 = arrayList17;
                    strArr3 = strArr4;
                    arrayList3 = arrayList15;
                    linkedHashSet13 = linkedHashSet4;
                    str30 = str30;
                    i46 = i46;
                    j2 = j2;
                    i16 = i21;
                    arrayList10 = arrayList16;
                    linkedHashSet3 = linkedHashSet3;
                    arrayList14 = arrayList14;
                    obj13 = obj13;
                    obj2 = obj8;
                    str8 = str10;
                    obj = obj;
                    obj6 = obj12;
                    linkedHashSet14 = linkedHashSet14;
                    arrayList13 = arrayList13;
                    str31 = str31;
                    arrayList12 = arrayList12;
                    obj3 = obj11;
                    i18++;
                    i15 = i15;
                }
                ArrayList arrayList4114 = arrayList12;
                w1Var3 = w1Var;
                i30 = i2;
                arrayList34 = arrayList14;
                arrayList26 = arrayList13;
                str3 = str30;
                iMin = i45;
                str2 = str316;
                linkedHashMap = linkedHashMap2;
                str = str315;
                strArr7 = strArr14;
                arrayList29 = arrayList10;
                arrayList35 = arrayList8;
                linkedHashSet = linkedHashSet;
                arrayList20 = arrayList44;
                j4 = j2;
                linkedHashSet12 = linkedHashSet13;
                arrayList28 = arrayList5;
                str4 = str29;
                linkedHashSet11 = linkedHashSet14;
                arrayList27 = arrayList4114;
                strI = str6;
                arrayList30 = arrayList11;
                arrayList31 = arrayList42;
                i6 = i6;
                arrayList25 = arrayList43;
                iMax = i46;
                i41 = i15;
            } else {
                obj3 = "general_star";
            }
            str5 = str29;
            linkedHashSet2 = new LinkedHashSet();
            if (iQ2 > 0) {
                linkedHashSet2.add(Integer.valueOf(iQ2));
            }
            if (str5.isEmpty()) {
                mapK1 = null;
            } else {
                mapK1 = w1Var3.k1(str5);
            }
            if (mapK1 == null) {
                i8 = 0;
            } else {
                i8 = Integer.parseInt(String.valueOf(mapK1.getOrDefault(str2, str)));
            }
            String str3111 = str;
            i9 = i8;
            String str3112 = str2;
            if (i9 > 0) {
                linkedHashSet2.add(Integer.valueOf(i9));
            }
            length = strArr2.length;
            i10 = 0;
            while (i10 < length) {
                int i4112 = length;
                iQ = q(w1Var3, strArr2[i10]);
                if (iQ > 0) {
                    linkedHashSet2.add(Integer.valueOf(iQ));
                }
                i10++;
                length = i4112;
            }
            if (i9 > 0) {
                i11 = i9;
            } else {
                i11 = 0;
            }
            if (i11 == 0) {
                i29 = 4;
                i12 = 1;
                while (true) {
                    if (i12 <= i29) {
                        if (!linkedHashSet2.contains(Integer.valueOf(i12))) {
                            break;
                            break;
                        }
                        i12++;
                        i29 = 4;
                    }
                }
                arrayList2 = new ArrayList();
                strArr3 = strArr2;
                i14 = 1;
                while (i14 <= i13) {
                    if (i14 != iQ2) {
                        arrayList2.add(Integer.valueOf(i14));
                    }
                    i14++;
                }
                arrayList3 = new ArrayList(arrayList2);
                if (i12 > 0) {
                    arrayList3.remove(Integer.valueOf(i12));
                }
                if (mapK1 == null) {
                    j2 = j5;
                    linkedHashMapL = null;
                } else {
                    j2 = j5;
                    linkedHashMapL = null;
                }
                if (linkedHashMapL == null) {
                    strR3 = r(i12, linkedHashMap2);
                    if (!strR3.isEmpty()) {
                        linkedHashMapL = l(str31, strR3, i12, j2);
                    }
                }
                if (linkedHashMapL != null) {
                    linkedHashMapL.put("position", "2");
                    linkedHashMapL.put("pos", "2");
                    linkedHashMapL.put("skill_position", "2");
                    arrayList45.add(linkedHashMapL);
                    arrayList43.add(linkedHashMapL);
                }
                if (z6) {
                    arrayList4 = arrayList28;
                    i15 = i42;
                    str6 = str28;
                } else {
                    if (p5.E0(i3) >= 3) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (z5) {
                        strArr5 = f1180l;
                        length2 = strArr5.length;
                        i28 = 0;
                        while (i28 < length2) {
                            int i4113 = length2;
                            LinkedHashMap linkedHashMapM7 = m(str31, strArr5[i28], j2);
                            arrayList45.add(linkedHashMapM7);
                            arrayList43.add(linkedHashMapM7);
                            i28++;
                            length2 = i4113;
                        }
                        StringBuilder sb14 = new StringBuilder();
                        str6 = str28;
                        sb14.append(str6);
                        sb14.append("_mt");
                        i15 = i42;
                        sb14.append(i15);
                        String string14 = sb14.toString();
                        double[] dArr7 = f1181m;
                        arrayList4 = arrayList28;
                        arrayList4.add(p5.z0("pk_id", string14, "general_pk_id", str31, "user_general_id", str31, "top_level", "8", "meridian_level", "8", "point_level", "30", "gong", String.valueOf(dArr7[0]), "fang", String.valueOf(dArr7[1]), "xue", String.valueOf(dArr7[2]), "zhi", String.valueOf(dArr7[3]), "item_num", "0"));
                    } else {
                        arrayList4 = arrayList28;
                        i15 = i42;
                        str6 = str28;
                    }
                }
                if (z6) {
                    strR2 = com.sgscq.vpn.handler.t0.r(str27);
                    if (strR2.isEmpty()) {
                        str7 = "pk_id";
                        str8 = str27;
                        arrayList5 = arrayList4;
                        arrayList6 = arrayList40;
                        arrayList6.add(p5.z0(str7, str6 + "_me" + i15, "magic_id", strR2, "general_id", str8, "magic_level", "10", "magic_sub_level", p5.f1276c[p5.E0(i3)], "magic_vip_level", "0", "is_open", 1));
                    } else {
                        arrayList5 = arrayList4;
                        str7 = "pk_id";
                        str8 = str27;
                        arrayList6 = arrayList40;
                    }
                } else {
                    arrayList5 = arrayList4;
                    str7 = "pk_id";
                    str8 = str27;
                    arrayList6 = arrayList40;
                }
                if (z6) {
                    arrayList7 = arrayList41;
                } else {
                    if (p5.E0(i3) >= 3) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (z4) {
                        strB1 = w1Var3.B0(str8);
                        if (strB1.isEmpty()) {
                            strB1 = a(w1Var3, i7);
                        }
                        str17 = strB1;
                        if (str17.isEmpty()) {
                            arrayList7 = arrayList41;
                            arrayList7.add(p5.z0(str7, str6 + "_ev" + i15, "evolution_id", str17, "general_id", str8, "evolution_level", Integer.valueOf(o(str17)), "sub_level", "7", "status", 1, "surrender_status", 0, "fate_ids", "[]"));
                        } else {
                            arrayList7 = arrayList41;
                        }
                    } else {
                        arrayList7 = arrayList41;
                    }
                }
                obj4 = "gSkill";
                linkedHashMapF2.put(obj4, arrayList45);
                obj5 = "general_skills";
                linkedHashMapF2.put(obj5, new ArrayList(arrayList45));
                arrayList8 = arrayList37;
                arrayList8.add(linkedHashMapF2);
                arrayList9 = new ArrayList();
                if (z6) {
                    if (str8 != null) {
                        i24 = 1;
                    } else {
                        i24 = 1;
                    }
                    String[] strArr112 = com.sgscq.vpn.handler.p0.f955a;
                    arrayListP = com.sgscq.vpn.handler.p0.p(0, Math.max(0, i15 - 1), Math.max(1, i46), 100, str8, str31);
                    it2 = arrayListP.iterator();
                    while (it2.hasNext()) {
                        Iterator it12 = it2;
                        Map map9 = (Map) it2.next();
                        p(map9);
                        g(i24, arrayList39, map9);
                        it2 = it12;
                        arrayList6 = arrayList6;
                    }
                    arrayList10 = arrayList6;
                    arrayList12 = arrayList39;
                    i25 = 1;
                    while (i25 <= 4) {
                        String str3113 = f1178j[i25];
                        ArrayList arrayList4115 = arrayList7;
                        StringBuilder sb15 = new StringBuilder();
                        sb15.append(str31);
                        Object obj1113 = obj5;
                        sb15.append("_div");
                        sb15.append(i25);
                        String string15 = sb15.toString();
                        Object[] objArr7 = new Object[12];
                        objArr7[0] = "equipment_id";
                        objArr7[1] = str3113;
                        Object obj1114 = obj4;
                        objArr7[2] = "general_pk_id";
                        objArr7[3] = str31;
                        objArr7[4] = "equipment_level";
                        objArr7[5] = Integer.valueOf(i46);
                        objArr7[6] = "refine_level";
                        objArr7[7] = String.valueOf(10);
                        objArr7[8] = "refine_bonus_type";
                        objArr7[9] = "shangshen_jinglian_up";
                        objArr7[10] = "bore_list";
                        arrayList19 = new ArrayList();
                        int i4114 = i7;
                        i26 = 5;
                        i27 = 1;
                        while (i27 <= i26) {
                            arrayList19.add(p5.z0("bore_id", String.valueOf(i27), "gem_id", f1179k[i24], "bore_type", Integer.valueOf(i24), "is_lock", 0));
                            i27++;
                            i26 = 5;
                            i24 = i24;
                        }
                        int i56 = i24;
                        objArr7[11] = arrayList19;
                        LinkedHashMap linkedHashMapZ7 = p5.z0(str7, string15, objArr7);
                        p(linkedHashMapZ7);
                        arrayListP.add(linkedHashMapZ7);
                        d(arrayList12, linkedHashMapZ7);
                        i25++;
                        obj5 = obj1113;
                        i24 = i56;
                        i7 = i4114;
                        arrayList7 = arrayList4115;
                        obj4 = obj1114;
                    }
                    i16 = i7;
                    obj6 = obj5;
                    obj7 = obj4;
                    arrayList11 = arrayList7;
                    arrayList9 = arrayListP;
                } else {
                    i16 = i7;
                    arrayList10 = arrayList6;
                    obj6 = obj5;
                    obj7 = obj4;
                    arrayList11 = arrayList7;
                    arrayList12 = arrayList39;
                }
                arrayList13 = arrayList38;
                arrayList13.addAll(arrayList9);
                linkedHashMapZ0 = p5.z0(str7, str31, "general_id", str8, "general_pk_id", str31, "position", String.valueOf(i15), "general_position", String.valueOf(i15), "level", Integer.valueOf(i46), "general_fighting", linkedHashMapF2.get("fighting"), "general_hp", linkedHashMapF2.get("general_hp"), "general_attack", linkedHashMapF2.get("general_attack"), "general_defense", linkedHashMapF2.get("general_defense"), "general_wisdom", linkedHashMapF2.get("general_wisdom"));
                com.sgscq.vpn.handler.p0.j(arrayList9, linkedHashMapZ0);
                arrayList14 = arrayList36;
                arrayList14.add(linkedHashMapZ0);
                linkedHashSet3 = new LinkedHashSet();
                linkedHashSet3.add(Integer.valueOf(iQ2));
                if (i12 > 0) {
                    linkedHashSet3.add(Integer.valueOf(i12));
                }
                i17 = 2;
                i18 = 1;
                while (i18 <= i17) {
                    i19 = i18 - 1;
                    if (i19 < arrayList3.size()) {
                        arrayList15 = arrayList3;
                        iIntValue = ((Integer) arrayList15.get(i19)).intValue();
                    } else {
                        arrayList15 = arrayList3;
                        iIntValue = 0;
                    }
                    if (i19 < strArr3.length) {
                        str9 = strArr3[i19];
                    } else {
                        str9 = str29;
                    }
                    if (str9.isEmpty()) {
                        strArr4 = strArr3;
                        linkedHashSet4 = linkedHashSet13;
                        w1Var2 = w1Var;
                        i20 = 5;
                        strArr4 = strArr3;
                        z = false;
                    } else {
                        strArr4 = strArr3;
                        linkedHashSet4 = linkedHashSet13;
                        w1Var2 = w1Var;
                        i20 = 5;
                        strArr4 = strArr3;
                        z = false;
                    }
                    if (z) {
                        str16 = str9;
                        linkedHashSet = linkedHashSet;
                        linkedHashSet5 = new LinkedHashSet(linkedHashSet);
                        linkedHashSet14 = linkedHashSet14;
                        linkedHashSet5.addAll(linkedHashSet14);
                        linkedHashSet5.addAll(linkedHashSet4);
                        if (i19 < arrayList15.size()) {
                            iIntValue2 = ((Integer) arrayList15.get(i19)).intValue();
                        } else {
                            iIntValue2 = 0;
                        }
                        if (iIntValue2 > 0) {
                            strArr4 = strArr3;
                            strArr4 = strArr3;
                            ArrayList arrayList4116 = new ArrayList();
                            arrayList4116.add(Integer.valueOf(iIntValue2));
                            str10 = str8;
                            strT = s(w1Var, arrayListF, str8, linkedHashSet5, linkedHashSet3, arrayList4116);
                        } else {
                            strArr4 = strArr3;
                            strArr4 = strArr3;
                            str10 = str8;
                            strT = str16;
                        }
                        if (strT.isEmpty()) {
                            if (iIntValue > 0) {
                                strT = u(w1Var2, linkedHashSet5, iIntValue, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                            } else {
                                strT = t(w1Var2, linkedHashSet5, linkedHashSet3, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                            }
                        }
                        str11 = strT;
                    } else {
                        strArr4 = strArr3;
                        i46 = i46;
                        str10 = str8;
                        String str3114 = str9;
                        arrayList14 = arrayList14;
                        i15 = i15;
                        obj13 = obj13;
                        linkedHashSet = linkedHashSet;
                        j2 = j2;
                        strArr4 = strArr4;
                        str31 = str31;
                        linkedHashMapZ0 = linkedHashMapZ0;
                        obj = obj;
                        arrayList15 = arrayList15;
                        str11 = str3114;
                    }
                    if (str11.isEmpty()) {
                        i17 = 2;
                        linkedHashSet3 = linkedHashSet3;
                        obj13 = obj13;
                        obj = obj;
                        str31 = str31;
                        linkedHashMapZ0 = linkedHashMapZ0;
                        str10 = str10;
                        obj12 = obj6;
                        obj8 = obj2;
                        obj11 = obj3;
                        arrayList14 = arrayList14;
                        arrayList16 = arrayList10;
                        arrayList8 = arrayList8;
                        i21 = i16;
                        linkedHashSet14 = linkedHashSet14;
                        arrayList13 = arrayList13;
                        arrayList11 = arrayList11;
                        i18 = i18;
                        arrayList17 = arrayList43;
                    } else {
                        linkedHashSet.add(str11);
                        linkedHashSet4.add(str11);
                        linkedHashSet3.add(Integer.valueOf(q(w1Var2, str11)));
                        str12 = str31 + "_lt" + i18;
                        str13 = str11;
                        Object obj1115 = obj3;
                        obj8 = obj2;
                        i21 = i16;
                        linkedHashMapF = t5.f(w1Var, str12, str11, i46, 0, str31, String.valueOf(i18), true);
                        linkedHashMapF.put(obj8, Integer.valueOf(i20));
                        linkedHashMapF.put(obj1115, Integer.valueOf(i20));
                        if (z6) {
                            linkedHashMapF.put(obj, obj13);
                        }
                        if (z6) {
                            str14 = str13;
                        } else {
                            if (p5.E0(i3) >= 3) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z3) {
                                str14 = str13;
                                if (!w1Var2.B0(str14).isEmpty()) {
                                    linkedHashMapF.put("evolution_image_status", Boolean.TRUE);
                                }
                            } else {
                                str14 = str13;
                            }
                        }
                        if (z6) {
                            i22 = iArr[p5.E0(i3)];
                        } else {
                            i22 = 0;
                        }
                        HashMap mapN9 = n(i22, w1Var2, r88, str14);
                        linkedHashMapF.put("general_naturalskill_id", mapN9.get(str7));
                        obj9 = obj7;
                        linkedHashMapF.put(obj9, p5.v0(mapN9));
                        obj10 = obj6;
                        linkedHashMapF.put(obj10, p5.v0(mapN9));
                        obj11 = obj1115;
                        iH = h(w1Var2, str10);
                        if (iH >= 1) {
                            iH = 1;
                        } else {
                            iH = 1;
                        }
                        String strValueOf8 = String.valueOf(iH);
                        linkedHashMapF.put("lieutenant_skill_id", strValueOf8);
                        linkedHashMapF.put("skill_type_lieutenant", strValueOf8);
                        linkedHashMapF.put("ls_type", String.valueOf(i18));
                        if (z6) {
                            strR = com.sgscq.vpn.handler.t0.r(str14);
                            if (strR.isEmpty()) {
                                i23 = 3;
                                obj7 = obj9;
                                obj12 = obj10;
                                arrayList18 = arrayList10;
                                arrayList18.add(p5.z0(str7, str12 + "_me", "magic_id", strR, "general_id", str14, "magic_level", "10", "magic_sub_level", p5.f1276c[p5.E0(i3)], "magic_vip_level", "0", "is_open", 1));
                            } else {
                                obj12 = obj10;
                                obj7 = obj9;
                                arrayList18 = arrayList10;
                                i23 = 3;
                            }
                            if (p5.E0(i3) >= i23) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                strB0 = w1Var2.B0(str14);
                                if (strB0.isEmpty()) {
                                    strB0 = a(w1Var2, i21 + i18);
                                }
                                str15 = strB0;
                                if (str15.isEmpty()) {
                                    arrayList16 = arrayList18;
                                    arrayList11.add(p5.z0(str7, r88 + "_ev", "evolution_id", str15, "general_id", str14, "evolution_level", Integer.valueOf(o(str15)), "sub_level", "7", "status", 1, "surrender_status", 0, "fate_ids", "[]"));
                                } else {
                                    arrayList16 = arrayList18;
                                }
                            } else {
                                arrayList16 = arrayList18;
                            }
                        } else {
                            obj12 = obj10;
                            obj7 = obj9;
                            obj8 = obj8;
                            i18 = i18;
                            linkedHashSet3 = linkedHashSet3;
                            obj13 = obj13;
                            obj = obj;
                            str31 = str31;
                            linkedHashMapZ0 = linkedHashMapZ0;
                            str10 = str10;
                            arrayList14 = arrayList14;
                            arrayList16 = arrayList10;
                            arrayList8 = arrayList8;
                            linkedHashSet14 = linkedHashSet14;
                            arrayList13 = arrayList13;
                            arrayList11 = arrayList11;
                        }
                        arrayList8.add(linkedHashMapF);
                        arrayList17 = arrayList43;
                        arrayList17.add(mapN9);
                        if (i18 == 1) {
                            linkedHashMapZ0.put("deputy_general_id", str14);
                        }
                        i17 = 2;
                    }
                    linkedHashMapZ0 = linkedHashMapZ0;
                    arrayList8 = arrayList8;
                    arrayList11 = arrayList11;
                    arrayList43 = arrayList17;
                    strArr3 = strArr4;
                    arrayList3 = arrayList15;
                    linkedHashSet13 = linkedHashSet4;
                    str30 = str30;
                    i46 = i46;
                    j2 = j2;
                    i16 = i21;
                    arrayList10 = arrayList16;
                    linkedHashSet3 = linkedHashSet3;
                    arrayList14 = arrayList14;
                    obj13 = obj13;
                    obj2 = obj8;
                    str8 = str10;
                    obj = obj;
                    obj6 = obj12;
                    linkedHashSet14 = linkedHashSet14;
                    arrayList13 = arrayList13;
                    str31 = str31;
                    arrayList12 = arrayList12;
                    obj3 = obj11;
                    i18++;
                    i15 = i15;
                }
                ArrayList arrayList4117 = arrayList12;
                w1Var3 = w1Var;
                i30 = i2;
                arrayList34 = arrayList14;
                arrayList26 = arrayList13;
                str3 = str30;
                iMin = i45;
                str2 = str3112;
                linkedHashMap = linkedHashMap2;
                str = str3111;
                strArr7 = strArr14;
                arrayList29 = arrayList10;
                arrayList35 = arrayList8;
                linkedHashSet = linkedHashSet;
                arrayList20 = arrayList44;
                j4 = j2;
                linkedHashSet12 = linkedHashSet13;
                arrayList28 = arrayList5;
                str4 = str29;
                linkedHashSet11 = linkedHashSet14;
                arrayList27 = arrayList4117;
                strI = str6;
                arrayList30 = arrayList11;
                arrayList31 = arrayList42;
                i6 = i6;
                arrayList25 = arrayList43;
                iMax = i46;
                i41 = i15;
            }
            i12 = i11;
            arrayList2 = new ArrayList();
            strArr3 = strArr2;
            i14 = 1;
            while (i14 <= i13) {
                if (i14 != iQ2) {
                    arrayList2.add(Integer.valueOf(i14));
                }
                i14++;
            }
            arrayList3 = new ArrayList(arrayList2);
            if (i12 > 0) {
                arrayList3.remove(Integer.valueOf(i12));
            }
            if (mapK1 == null) {
                j2 = j5;
                linkedHashMapL = null;
            } else {
                j2 = j5;
                linkedHashMapL = null;
            }
            if (linkedHashMapL == null) {
                strR3 = r(i12, linkedHashMap2);
                if (!strR3.isEmpty()) {
                    linkedHashMapL = l(str31, strR3, i12, j2);
                }
            }
            if (linkedHashMapL != null) {
                linkedHashMapL.put("position", "2");
                linkedHashMapL.put("pos", "2");
                linkedHashMapL.put("skill_position", "2");
                arrayList45.add(linkedHashMapL);
                arrayList43.add(linkedHashMapL);
            }
            if (z6) {
                arrayList4 = arrayList28;
                i15 = i42;
                str6 = str28;
            } else {
                if (p5.E0(i3) >= 3) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (z5) {
                    strArr5 = f1180l;
                    length2 = strArr5.length;
                    i28 = 0;
                    while (i28 < length2) {
                        int i4115 = length2;
                        LinkedHashMap linkedHashMapM8 = m(str31, strArr5[i28], j2);
                        arrayList45.add(linkedHashMapM8);
                        arrayList43.add(linkedHashMapM8);
                        i28++;
                        length2 = i4115;
                    }
                    StringBuilder sb16 = new StringBuilder();
                    str6 = str28;
                    sb16.append(str6);
                    sb16.append("_mt");
                    i15 = i42;
                    sb16.append(i15);
                    String string16 = sb16.toString();
                    double[] dArr8 = f1181m;
                    arrayList4 = arrayList28;
                    arrayList4.add(p5.z0("pk_id", string16, "general_pk_id", str31, "user_general_id", str31, "top_level", "8", "meridian_level", "8", "point_level", "30", "gong", String.valueOf(dArr8[0]), "fang", String.valueOf(dArr8[1]), "xue", String.valueOf(dArr8[2]), "zhi", String.valueOf(dArr8[3]), "item_num", "0"));
                } else {
                    arrayList4 = arrayList28;
                    i15 = i42;
                    str6 = str28;
                }
            }
            if (z6) {
                strR2 = com.sgscq.vpn.handler.t0.r(str27);
                if (strR2.isEmpty()) {
                    str7 = "pk_id";
                    str8 = str27;
                    arrayList5 = arrayList4;
                    arrayList6 = arrayList40;
                    arrayList6.add(p5.z0(str7, str6 + "_me" + i15, "magic_id", strR2, "general_id", str8, "magic_level", "10", "magic_sub_level", p5.f1276c[p5.E0(i3)], "magic_vip_level", "0", "is_open", 1));
                } else {
                    arrayList5 = arrayList4;
                    str7 = "pk_id";
                    str8 = str27;
                    arrayList6 = arrayList40;
                }
            } else {
                arrayList5 = arrayList4;
                str7 = "pk_id";
                str8 = str27;
                arrayList6 = arrayList40;
            }
            if (z6) {
                arrayList7 = arrayList41;
            } else {
                if (p5.E0(i3) >= 3) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z4) {
                    strB1 = w1Var3.B0(str8);
                    if (strB1.isEmpty()) {
                        strB1 = a(w1Var3, i7);
                    }
                    str17 = strB1;
                    if (str17.isEmpty()) {
                        arrayList7 = arrayList41;
                        arrayList7.add(p5.z0(str7, str6 + "_ev" + i15, "evolution_id", str17, "general_id", str8, "evolution_level", Integer.valueOf(o(str17)), "sub_level", "7", "status", 1, "surrender_status", 0, "fate_ids", "[]"));
                    } else {
                        arrayList7 = arrayList41;
                    }
                } else {
                    arrayList7 = arrayList41;
                }
            }
            obj4 = "gSkill";
            linkedHashMapF2.put(obj4, arrayList45);
            obj5 = "general_skills";
            linkedHashMapF2.put(obj5, new ArrayList(arrayList45));
            arrayList8 = arrayList37;
            arrayList8.add(linkedHashMapF2);
            arrayList9 = new ArrayList();
            if (z6) {
                if (str8 != null) {
                    i24 = 1;
                } else {
                    i24 = 1;
                }
                String[] strArr113 = com.sgscq.vpn.handler.p0.f955a;
                arrayListP = com.sgscq.vpn.handler.p0.p(0, Math.max(0, i15 - 1), Math.max(1, i46), 100, str8, str31);
                it2 = arrayListP.iterator();
                while (it2.hasNext()) {
                    Iterator it13 = it2;
                    Map map10 = (Map) it2.next();
                    p(map10);
                    g(i24, arrayList39, map10);
                    it2 = it13;
                    arrayList6 = arrayList6;
                }
                arrayList10 = arrayList6;
                arrayList12 = arrayList39;
                i25 = 1;
                while (i25 <= 4) {
                    String str3115 = f1178j[i25];
                    ArrayList arrayList4118 = arrayList7;
                    StringBuilder sb17 = new StringBuilder();
                    sb17.append(str31);
                    Object obj1116 = obj5;
                    sb17.append("_div");
                    sb17.append(i25);
                    String string17 = sb17.toString();
                    Object[] objArr8 = new Object[12];
                    objArr8[0] = "equipment_id";
                    objArr8[1] = str3115;
                    Object obj1117 = obj4;
                    objArr8[2] = "general_pk_id";
                    objArr8[3] = str31;
                    objArr8[4] = "equipment_level";
                    objArr8[5] = Integer.valueOf(i46);
                    objArr8[6] = "refine_level";
                    objArr8[7] = String.valueOf(10);
                    objArr8[8] = "refine_bonus_type";
                    objArr8[9] = "shangshen_jinglian_up";
                    objArr8[10] = "bore_list";
                    arrayList19 = new ArrayList();
                    int i4116 = i7;
                    i26 = 5;
                    i27 = 1;
                    while (i27 <= i26) {
                        arrayList19.add(p5.z0("bore_id", String.valueOf(i27), "gem_id", f1179k[i24], "bore_type", Integer.valueOf(i24), "is_lock", 0));
                        i27++;
                        i26 = 5;
                        i24 = i24;
                    }
                    int i57 = i24;
                    objArr8[11] = arrayList19;
                    LinkedHashMap linkedHashMapZ8 = p5.z0(str7, string17, objArr8);
                    p(linkedHashMapZ8);
                    arrayListP.add(linkedHashMapZ8);
                    d(arrayList12, linkedHashMapZ8);
                    i25++;
                    obj5 = obj1116;
                    i24 = i57;
                    i7 = i4116;
                    arrayList7 = arrayList4118;
                    obj4 = obj1117;
                }
                i16 = i7;
                obj6 = obj5;
                obj7 = obj4;
                arrayList11 = arrayList7;
                arrayList9 = arrayListP;
            } else {
                i16 = i7;
                arrayList10 = arrayList6;
                obj6 = obj5;
                obj7 = obj4;
                arrayList11 = arrayList7;
                arrayList12 = arrayList39;
            }
            arrayList13 = arrayList38;
            arrayList13.addAll(arrayList9);
            linkedHashMapZ0 = p5.z0(str7, str31, "general_id", str8, "general_pk_id", str31, "position", String.valueOf(i15), "general_position", String.valueOf(i15), "level", Integer.valueOf(i46), "general_fighting", linkedHashMapF2.get("fighting"), "general_hp", linkedHashMapF2.get("general_hp"), "general_attack", linkedHashMapF2.get("general_attack"), "general_defense", linkedHashMapF2.get("general_defense"), "general_wisdom", linkedHashMapF2.get("general_wisdom"));
            com.sgscq.vpn.handler.p0.j(arrayList9, linkedHashMapZ0);
            arrayList14 = arrayList36;
            arrayList14.add(linkedHashMapZ0);
            linkedHashSet3 = new LinkedHashSet();
            linkedHashSet3.add(Integer.valueOf(iQ2));
            if (i12 > 0) {
                linkedHashSet3.add(Integer.valueOf(i12));
            }
            i17 = 2;
            i18 = 1;
            while (i18 <= i17) {
                i19 = i18 - 1;
                if (i19 < arrayList3.size()) {
                    arrayList15 = arrayList3;
                    iIntValue = ((Integer) arrayList15.get(i19)).intValue();
                } else {
                    arrayList15 = arrayList3;
                    iIntValue = 0;
                }
                if (i19 < strArr3.length) {
                    str9 = strArr3[i19];
                } else {
                    str9 = str29;
                }
                if (str9.isEmpty()) {
                    strArr4 = strArr3;
                    linkedHashSet4 = linkedHashSet13;
                    w1Var2 = w1Var;
                    i20 = 5;
                    strArr4 = strArr3;
                    z = false;
                } else {
                    strArr4 = strArr3;
                    linkedHashSet4 = linkedHashSet13;
                    w1Var2 = w1Var;
                    i20 = 5;
                    strArr4 = strArr3;
                    z = false;
                }
                if (z) {
                    str16 = str9;
                    linkedHashSet = linkedHashSet;
                    linkedHashSet5 = new LinkedHashSet(linkedHashSet);
                    linkedHashSet14 = linkedHashSet14;
                    linkedHashSet5.addAll(linkedHashSet14);
                    linkedHashSet5.addAll(linkedHashSet4);
                    if (i19 < arrayList15.size()) {
                        iIntValue2 = ((Integer) arrayList15.get(i19)).intValue();
                    } else {
                        iIntValue2 = 0;
                    }
                    if (iIntValue2 > 0) {
                        strArr4 = strArr3;
                        strArr4 = strArr3;
                        ArrayList arrayList4119 = new ArrayList();
                        arrayList4119.add(Integer.valueOf(iIntValue2));
                        str10 = str8;
                        strT = s(w1Var, arrayListF, str8, linkedHashSet5, linkedHashSet3, arrayList4119);
                    } else {
                        strArr4 = strArr3;
                        strArr4 = strArr3;
                        str10 = str8;
                        strT = str16;
                    }
                    if (strT.isEmpty()) {
                        if (iIntValue > 0) {
                            strT = u(w1Var2, linkedHashSet5, iIntValue, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                        } else {
                            strT = t(w1Var2, linkedHashSet5, linkedHashSet3, (((i16 * 2) + (i2 * 4)) + i18) - 1);
                        }
                    }
                    str11 = strT;
                } else {
                    strArr4 = strArr3;
                    i46 = i46;
                    str10 = str8;
                    String str3116 = str9;
                    arrayList14 = arrayList14;
                    i15 = i15;
                    obj13 = obj13;
                    linkedHashSet = linkedHashSet;
                    j2 = j2;
                    strArr4 = strArr4;
                    str31 = str31;
                    linkedHashMapZ0 = linkedHashMapZ0;
                    obj = obj;
                    arrayList15 = arrayList15;
                    str11 = str3116;
                }
                if (str11.isEmpty()) {
                    i17 = 2;
                    linkedHashSet3 = linkedHashSet3;
                    obj13 = obj13;
                    obj = obj;
                    str31 = str31;
                    linkedHashMapZ0 = linkedHashMapZ0;
                    str10 = str10;
                    obj12 = obj6;
                    obj8 = obj2;
                    obj11 = obj3;
                    arrayList14 = arrayList14;
                    arrayList16 = arrayList10;
                    arrayList8 = arrayList8;
                    i21 = i16;
                    linkedHashSet14 = linkedHashSet14;
                    arrayList13 = arrayList13;
                    arrayList11 = arrayList11;
                    i18 = i18;
                    arrayList17 = arrayList43;
                } else {
                    linkedHashSet.add(str11);
                    linkedHashSet4.add(str11);
                    linkedHashSet3.add(Integer.valueOf(q(w1Var2, str11)));
                    str12 = str31 + "_lt" + i18;
                    str13 = str11;
                    Object obj1118 = obj3;
                    obj8 = obj2;
                    i21 = i16;
                    linkedHashMapF = t5.f(w1Var, str12, str11, i46, 0, str31, String.valueOf(i18), true);
                    linkedHashMapF.put(obj8, Integer.valueOf(i20));
                    linkedHashMapF.put(obj1118, Integer.valueOf(i20));
                    if (z6) {
                        linkedHashMapF.put(obj, obj13);
                    }
                    if (z6) {
                        str14 = str13;
                    } else {
                        if (p5.E0(i3) >= 3) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3) {
                            str14 = str13;
                            if (!w1Var2.B0(str14).isEmpty()) {
                                linkedHashMapF.put("evolution_image_status", Boolean.TRUE);
                            }
                        } else {
                            str14 = str13;
                        }
                    }
                    if (z6) {
                        i22 = iArr[p5.E0(i3)];
                    } else {
                        i22 = 0;
                    }
                    HashMap mapN10 = n(i22, w1Var2, r88, str14);
                    linkedHashMapF.put("general_naturalskill_id", mapN10.get(str7));
                    obj9 = obj7;
                    linkedHashMapF.put(obj9, p5.v0(mapN10));
                    obj10 = obj6;
                    linkedHashMapF.put(obj10, p5.v0(mapN10));
                    obj11 = obj1118;
                    iH = h(w1Var2, str10);
                    if (iH >= 1) {
                        iH = 1;
                    } else {
                        iH = 1;
                    }
                    String strValueOf9 = String.valueOf(iH);
                    linkedHashMapF.put("lieutenant_skill_id", strValueOf9);
                    linkedHashMapF.put("skill_type_lieutenant", strValueOf9);
                    linkedHashMapF.put("ls_type", String.valueOf(i18));
                    if (z6) {
                        strR = com.sgscq.vpn.handler.t0.r(str14);
                        if (strR.isEmpty()) {
                            i23 = 3;
                            obj7 = obj9;
                            obj12 = obj10;
                            arrayList18 = arrayList10;
                            arrayList18.add(p5.z0(str7, str12 + "_me", "magic_id", strR, "general_id", str14, "magic_level", "10", "magic_sub_level", p5.f1276c[p5.E0(i3)], "magic_vip_level", "0", "is_open", 1));
                        } else {
                            obj12 = obj10;
                            obj7 = obj9;
                            arrayList18 = arrayList10;
                            i23 = 3;
                        }
                        if (p5.E0(i3) >= i23) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            strB0 = w1Var2.B0(str14);
                            if (strB0.isEmpty()) {
                                strB0 = a(w1Var2, i21 + i18);
                            }
                            str15 = strB0;
                            if (str15.isEmpty()) {
                                arrayList16 = arrayList18;
                                arrayList11.add(p5.z0(str7, r88 + "_ev", "evolution_id", str15, "general_id", str14, "evolution_level", Integer.valueOf(o(str15)), "sub_level", "7", "status", 1, "surrender_status", 0, "fate_ids", "[]"));
                            } else {
                                arrayList16 = arrayList18;
                            }
                        } else {
                            arrayList16 = arrayList18;
                        }
                    } else {
                        obj12 = obj10;
                        obj7 = obj9;
                        obj8 = obj8;
                        i18 = i18;
                        linkedHashSet3 = linkedHashSet3;
                        obj13 = obj13;
                        obj = obj;
                        str31 = str31;
                        linkedHashMapZ0 = linkedHashMapZ0;
                        str10 = str10;
                        arrayList14 = arrayList14;
                        arrayList16 = arrayList10;
                        arrayList8 = arrayList8;
                        linkedHashSet14 = linkedHashSet14;
                        arrayList13 = arrayList13;
                        arrayList11 = arrayList11;
                    }
                    arrayList8.add(linkedHashMapF);
                    arrayList17 = arrayList43;
                    arrayList17.add(mapN10);
                    if (i18 == 1) {
                        linkedHashMapZ0.put("deputy_general_id", str14);
                    }
                    i17 = 2;
                }
                linkedHashMapZ0 = linkedHashMapZ0;
                arrayList8 = arrayList8;
                arrayList11 = arrayList11;
                arrayList43 = arrayList17;
                strArr3 = strArr4;
                arrayList3 = arrayList15;
                linkedHashSet13 = linkedHashSet4;
                str30 = str30;
                i46 = i46;
                j2 = j2;
                i16 = i21;
                arrayList10 = arrayList16;
                linkedHashSet3 = linkedHashSet3;
                arrayList14 = arrayList14;
                obj13 = obj13;
                obj2 = obj8;
                str8 = str10;
                obj = obj;
                obj6 = obj12;
                linkedHashSet14 = linkedHashSet14;
                arrayList13 = arrayList13;
                str31 = str31;
                arrayList12 = arrayList12;
                obj3 = obj11;
                i18++;
                i15 = i15;
            }
            ArrayList arrayList41110 = arrayList12;
            w1Var3 = w1Var;
            i30 = i2;
            arrayList34 = arrayList14;
            arrayList26 = arrayList13;
            str3 = str30;
            iMin = i45;
            str2 = str3112;
            linkedHashMap = linkedHashMap2;
            str = str3111;
            strArr7 = strArr14;
            arrayList29 = arrayList10;
            arrayList35 = arrayList8;
            linkedHashSet = linkedHashSet;
            arrayList20 = arrayList44;
            j4 = j2;
            linkedHashSet12 = linkedHashSet13;
            arrayList28 = arrayList5;
            str4 = str29;
            linkedHashSet11 = linkedHashSet14;
            arrayList27 = arrayList41110;
            strI = str6;
            arrayList30 = arrayList11;
            arrayList31 = arrayList42;
            i6 = i6;
            arrayList25 = arrayList43;
            iMax = i46;
            i41 = i15;
        }
        String str40 = strI;
        String str41 = str4;
        w1 w1Var4 = w1Var3;
        ArrayList arrayList50 = arrayList25;
        ArrayList arrayList51 = arrayList26;
        ArrayList arrayList52 = arrayList27;
        ArrayList arrayList53 = arrayList28;
        ArrayList arrayList54 = arrayList29;
        ArrayList arrayList55 = arrayList30;
        ArrayList arrayList56 = arrayList31;
        ArrayList arrayList57 = arrayList35;
        int i58 = i6;
        ArrayList arrayList58 = arrayList34;
        int i59 = 0;
        while (i59 < arrayList.size()) {
            String str42 = (String) arrayList.get(i59);
            StringBuilder sb18 = new StringBuilder();
            sb18.append(str40);
            sb18.append("_b");
            int i60 = i59 + 1;
            sb18.append(i60);
            String string18 = sb18.toString();
            ArrayList arrayList59 = arrayList57;
            LinkedHashMap linkedHashMapF3 = t5.f(w1Var, string18, str42, 1, 0, "", "0", true);
            linkedHashMapF3.remove("gSkill");
            linkedHashMapF3.remove("general_skills");
            arrayList59.add(linkedHashMapF3);
            arrayList56.add(p5.z0("pk_id", string18, "general_pk_id", string18, "position", String.valueOf(i60)));
            arrayList57 = arrayList59;
            i59 = i60;
        }
        ArrayList arrayList60 = arrayList57;
        ArrayList arrayListC0 = com.sgscq.vpn.cloud.m0.c0();
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.put("General", t5.m(arrayList60));
        linkedHashMap3.put("TeamGeneral", t5.m(arrayList58));
        linkedHashMap3.put("Skill", t5.m(arrayList50));
        linkedHashMap3.put("Equipment", t5.m(arrayList51));
        linkedHashMap3.put("Gem", t5.m(arrayList52));
        linkedHashMap3.put("Combat", t5.m(arrayListC0));
        linkedHashMap3.put("BuddyGeneral", t5.m(arrayList56));
        linkedHashMap3.put("MeridianTop", t5.m(arrayList53));
        linkedHashMap3.put("MagicalEqu", t5.m(arrayList54));
        String str43 = "EvolutionInfo";
        linkedHashMap3.put("EvolutionInfo", t5.m(arrayList55));
        Iterator it14 = arrayList60.iterator();
        while (it14.hasNext()) {
            Iterator it15 = it14;
            Map map11 = (Map) it14.next();
            String str44 = str43;
            String str45 = str41;
            ArrayList arrayList61 = arrayList55;
            String strValueOf10 = String.valueOf(map11.getOrDefault("pk_id", str45));
            if (!strValueOf10.isEmpty()) {
                w1Var4.F2(strValueOf10, linkedHashMap3);
            }
            t5.v(map11);
            str41 = str45;
            str43 = str44;
            it14 = it15;
            arrayList55 = arrayList61;
        }
        String str46 = str43;
        ArrayList arrayList62 = arrayList55;
        String str47 = str41;
        Iterator it16 = arrayList58.iterator();
        while (it16.hasNext()) {
            Map map12 = (Map) it16.next();
            String strValueOf11 = String.valueOf(map12.getOrDefault("general_pk_id", str47));
            Iterator it17 = arrayList60.iterator();
            while (true) {
                if (!it17.hasNext()) {
                    it = it16;
                    map = null;
                    break;
                }
                it = it16;
                map = (Map) it17.next();
                if (c.a.B(map, "pk_id", str47, strValueOf11)) {
                    break;
                }
                it16 = it;
            }
            if (map != null) {
                map12.put("general_fighting", map.get("fighting"));
                map12.put("general_hp", map.get("general_hp"));
                map12.put("general_attack", map.get("general_attack"));
                map12.put("general_defense", map.get("general_defense"));
                map12.put("general_wisdom", map.get("general_wisdom"));
            }
            it16 = it;
        }
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        linkedHashMap4.put("General", t5.m(arrayList60));
        linkedHashMap4.put("TeamGeneral", t5.m(arrayList58));
        linkedHashMap4.put("Skill", t5.m(arrayList50));
        linkedHashMap4.put("Equipment", t5.m(arrayList51));
        linkedHashMap4.put("Gem", t5.m(arrayList52));
        linkedHashMap4.put("MeridianTop", t5.m(arrayList53));
        linkedHashMap4.put("MagicalEqu", t5.m(arrayList54));
        linkedHashMap4.put(str46, t5.m(arrayList62));
        linkedHashMap4.put("Combat", t5.m(arrayListC0));
        linkedHashMap4.put("BuddyGeneral", t5.m(arrayList56));
        Iterator it18 = arrayList58.iterator();
        int i61 = 0;
        while (it18.hasNext()) {
            try {
                iRound = (int) Math.round(Double.parseDouble(String.valueOf(((Map) it18.next()).get("general_fighting"))));
            } catch (Exception unused4) {
                iRound = 0;
            }
            i61 += iRound;
        }
        c.a.s(i5, linkedHashMap4, "user_level", i5, "level", i61, "user_fighting");
        com.sgscq.vpn.handler.l.b(linkedHashMap4, "user_nickname", f1172d[i2], i58, "ladder_rank");
        v5 v5VarJ = v5.j(str40, linkedHashMap4);
        v5VarJ.r = linkedHashMap4;
        return v5VarJ;
    }

    public static void d(ArrayList arrayList, LinkedHashMap linkedHashMap) {
        Object obj;
        Object obj2 = linkedHashMap.get("bore_list");
        if (obj2 instanceof List) {
            for (Object obj3 : (List) obj2) {
                if ((obj3 instanceof Map) && (obj = ((Map) obj3).get("gem_id")) != null) {
                    arrayList.add(p5.z0("pk_id", String.valueOf(arrayList.size() + 1) + "_" + obj, "id", obj, "gem_id", obj));
                }
            }
        }
    }

    public static ArrayList e(Object obj) {
        ArrayList arrayList = new ArrayList();
        if (obj == null) {
            return arrayList;
        }
        if (obj instanceof Iterable) {
            Iterator it = ((Iterable) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            return arrayList;
        }
        String strValueOf = String.valueOf(obj);
        if (!strValueOf.isEmpty() && !"null".equals(strValueOf)) {
            for (String str : strValueOf.split(",")) {
                String strTrim = str.trim();
                if (!strTrim.isEmpty()) {
                    arrayList.add(strTrim);
                }
            }
        }
        return arrayList;
    }

    public static ArrayList f(w1 w1Var, ArrayList arrayList, LinkedHashSet linkedHashSet) {
        double d2;
        double d3;
        double d4;
        double d5;
        Map mapJ0;
        Object obj;
        ArrayList<l1> arrayList2 = new ArrayList();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            ArrayList<l1> arrayList3 = new ArrayList();
            Map mapJ1 = w1Var.J0(str);
            if (mapJ1 != null) {
                Iterator it2 = e(mapJ1.get("general_fate_id")).iterator();
                while (it2.hasNext()) {
                    String strValueOf = String.valueOf(it2.next());
                    Map mapD0 = w1Var.D0(strValueOf);
                    if (mapD0 != null && c.a.B(mapD0, "fate_type", "", "1")) {
                        ArrayList arrayList4 = new ArrayList();
                        Iterator it3 = e(mapD0.get("fate_object")).iterator();
                        while (it3.hasNext()) {
                            String strValueOf2 = String.valueOf(it3.next());
                            if (!strValueOf2.equals(str) && !arrayList4.contains(strValueOf2)) {
                                if ((strValueOf2.length() != 6 || (mapJ0 = w1Var.J0(strValueOf2)) == null || !c.a.B(mapJ0, "is_open", "", "1") || (obj = mapJ0.get("resource_id")) == null || String.valueOf(obj).isEmpty()) ? false : true) {
                                    arrayList4.add(strValueOf2);
                                }
                            }
                        }
                        if (!arrayList4.isEmpty()) {
                            boolean z = !c.a.B(mapD0, "fate_limit", "1", "2");
                            Object obj2 = mapD0.get("fate_effect");
                            if (obj2 == null) {
                                d4 = 0.0d;
                            } else {
                                try {
                                    d4 = Double.parseDouble(String.valueOf(obj2));
                                } catch (NumberFormatException unused) {
                                    d4 = 0.0d;
                                }
                            }
                            Object obj3 = mapD0.get("fate_effect_step");
                            if (obj3 == null) {
                                d5 = 0.0d;
                            } else {
                                try {
                                    d5 = Double.parseDouble(String.valueOf(obj3));
                                } catch (NumberFormatException unused2) {
                                    d5 = 0.0d;
                                }
                            }
                            arrayList3.add(new l1(strValueOf, arrayList4, d4, d5, z));
                        }
                    }
                }
            }
            for (l1 l1Var : arrayList3) {
                if (linkedHashSet2.add(l1Var.f1134a)) {
                    arrayList2.add(l1Var);
                }
            }
        }
        LinkedHashSet linkedHashSet3 = new LinkedHashSet(linkedHashSet);
        ArrayList arrayList5 = new ArrayList();
        while (true) {
            double d6 = 0.0d;
            String str2 = "";
            for (l1 l1Var2 : arrayList2) {
                List list = l1Var2.f1135b;
                Iterator it4 = list.iterator();
                int i2 = 0;
                while (it4.hasNext()) {
                    if (!linkedHashSet3.contains((String) it4.next())) {
                        i2++;
                    }
                }
                if (i2 <= 0) {
                    d3 = 0.0d;
                    d2 = 0.0d;
                } else {
                    double d7 = l1Var2.f1137d;
                    boolean z2 = l1Var2.f1138e;
                    if (!z2 || d7 <= 0.0d) {
                        double dMax = l1Var2.f1136c;
                        if (z2) {
                            dMax += ((double) Math.max(0, list.size() - 1)) * d7;
                        }
                        d2 = dMax / ((double) i2);
                    } else {
                        d2 = d7;
                    }
                    d3 = 0.0d;
                }
                if (d2 > d3) {
                    for (String str3 : l1Var2.f1135b) {
                        if (!linkedHashSet3.contains(str3) && d2 > d6) {
                            str2 = str3;
                            d6 = d2;
                        }
                    }
                }
            }
            if (str2.isEmpty()) {
                return arrayList5;
            }
            arrayList5.add(str2);
            linkedHashSet3.add(str2);
        }
    }

    public static void g(int i2, ArrayList arrayList, Map map) {
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 1; i3 <= 5; i3++) {
            String str = f1179k[i2];
            arrayList2.add(p5.z0("bore_id", String.valueOf(i3), "gem_id", str, "bore_type", Integer.valueOf(i2), "is_lock", 0));
            arrayList.add(p5.z0("pk_id", String.valueOf(arrayList.size() + 1) + "_" + str, "id", str, "gem_id", str));
        }
        map.put("bore_list", arrayList2);
    }

    public static int h(w1 w1Var, String str) {
        Map mapJ0 = w1Var.J0(str);
        int i2 = 0;
        if (mapJ0 == null) {
            return 0;
        }
        Iterator it = e(mapJ0.get("general_fate_id")).iterator();
        double d2 = -1.0d;
        while (it.hasNext()) {
            Map mapD0 = w1Var.D0(String.valueOf(it.next()));
            if (mapD0 != null) {
                try {
                    int i3 = Integer.parseInt(String.valueOf(mapD0.getOrDefault("fate_addition_type", "0")));
                    double d3 = Double.parseDouble(String.valueOf(mapD0.getOrDefault("fate_effect", "-1")));
                    if (i3 >= 1 && i3 <= 4 && d3 > d2) {
                        i2 = i3;
                        d2 = d3;
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        return i2;
    }

    public static String i(int i2) {
        return "elite_" + (i2 + 1);
    }

    public static boolean j(w1 w1Var, String str, Map map) {
        String strM1;
        if ((str.length() == 6 && str.startsWith("10")) || "300000".equals(str)) {
            return false;
        }
        String strValueOf = String.valueOf(map.getOrDefault("name", ""));
        if (strValueOf.isEmpty() || !strValueOf.startsWith(str) || (strM1 = w1Var.m1(str)) == null || strM1.trim().isEmpty()) {
            return false;
        }
        return !strM1.contains("副本");
    }

    public static LinkedHashSet k() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        String strA = o0.a(null, "skill_advanced.json");
        if (strA == null || strA.isEmpty()) {
            File file = new File("docs/game_data_json/skill_advanced.json");
            if (!file.isFile()) {
                int i2 = 0;
                for (File absoluteFile = new File("").getAbsoluteFile(); i2 < 5 && !file.isFile() && absoluteFile != null; absoluteFile = absoluteFile.getParentFile()) {
                    file = new File(absoluteFile, "docs/game_data_json/skill_advanced.json");
                    i2++;
                }
            }
            if (file.isFile()) {
                try {
                    strA = p5.W0(file);
                } catch (Exception unused) {
                    return linkedHashSet;
                }
            }
        }
        if (strA != null && !strA.isEmpty()) {
            try {
                Map map = (Map) new a.o().e(strA, new TypeToken<Map<String, Object>>() { // from class: com.sgscq.vpn.EliteLadderOpponents$1
                }.getType());
                if (map != null) {
                    linkedHashSet.addAll(map.keySet());
                }
            } catch (Exception unused2) {
            }
        }
        return linkedHashSet;
    }

    public static LinkedHashMap l(String str, String str2, int i2, long j2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("pk_id", str + "_eq" + i2);
        linkedHashMap.put("general_pk_id", str);
        linkedHashMap.put("skill_id", str2);
        com.sgscq.vpn.handler.l.b(linkedHashMap, "id", str2, i2, "skill_type");
        linkedHashMap.put("card_type", "4");
        linkedHashMap.put("level", String.valueOf(30));
        linkedHashMap.put("skill_level", String.valueOf(30));
        linkedHashMap.put("position", String.valueOf(i2));
        linkedHashMap.put("pos", String.valueOf(i2));
        linkedHashMap.put("skill_position", String.valueOf(i2));
        linkedHashMap.put("get_time", String.valueOf(j2));
        linkedHashMap.put("is_natural", Boolean.FALSE);
        linkedHashMap.put("exp", "0");
        linkedHashMap.put("extra_level", "0");
        linkedHashMap.put("advanced_level", "0");
        return linkedHashMap;
    }

    public static LinkedHashMap m(String str, String str2, long j2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("pk_id", str + "_m" + str2);
        linkedHashMap.put("general_pk_id", str);
        linkedHashMap.put("skill_id", str2);
        linkedHashMap.put("id", str2);
        linkedHashMap.put("skill_code", str2);
        linkedHashMap.put("card_type", "4");
        linkedHashMap.put("level", "1");
        linkedHashMap.put("skill_level", "1");
        linkedHashMap.put("position", "0");
        linkedHashMap.put("pos", "0");
        linkedHashMap.put("skill_position", "0");
        linkedHashMap.put("get_time", String.valueOf(j2));
        linkedHashMap.put("is_natural", Boolean.FALSE);
        linkedHashMap.put("exp", "0");
        linkedHashMap.put("extra_level", "0");
        linkedHashMap.put("advanced_level", "0");
        return linkedHashMap;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x008f  */
    public static HashMap n(int i2, w1 w1Var, String str, String str2) {
        HashMap mapZ1 = w1Var.Z1(str2);
        String strValueOf = String.valueOf(mapZ1.getOrDefault("skill_id", mapZ1.getOrDefault("id", str2)));
        mapZ1.put("pk_id", str + "_nat");
        mapZ1.put("general_pk_id", str);
        mapZ1.put("skill_id", strValueOf);
        mapZ1.put("id", strValueOf);
        mapZ1.put("is_natural", Boolean.TRUE);
        mapZ1.put("position", "1");
        mapZ1.put("pos", "1");
        mapZ1.put("skill_position", "1");
        mapZ1.put("skill_level", String.valueOf(30));
        mapZ1.put("level", String.valueOf(30));
        mapZ1.put("extra_level", "0");
        if (i2 <= 0) {
            i2 = 0;
        } else {
            LinkedHashSet linkedHashSetK = r;
            if (linkedHashSetK == null) {
                synchronized (m1.class) {
                    linkedHashSetK = r;
                    if (linkedHashSetK == null) {
                        linkedHashSetK = k();
                        r = linkedHashSetK;
                    }
                }
            }
            if (!linkedHashSetK.contains(strValueOf)) {
                i2 = 0;
            }
        }
        mapZ1.put("advanced_level", String.valueOf(i2));
        return mapZ1;
    }

    public static int o(String str) {
        w1 w1VarA1 = w1.a1(null);
        w1VarA1.getClass();
        if (str.isEmpty()) {
            return 1;
        }
        w1VarA1.N1();
        if (!(w1VarA1.u.get(str) instanceof Map)) {
            return 1;
        }
        Iterator it = ((Map) w1VarA1.u.get(str)).keySet().iterator();
        int i2 = 1;
        while (it.hasNext()) {
            int iL2 = w1.l2((String) it.next(), 1);
            if (iL2 > i2) {
                i2 = iL2;
            }
        }
        return i2;
    }

    public static void p(Map map) {
        map.put("refine_level", String.valueOf(10));
        if (String.valueOf(map.getOrDefault("refine_bonus_type", "")).isEmpty()) {
            map.put("refine_bonus_type", "shangshen_jinglian_up");
        }
    }

    public static int q(w1 w1Var, String str) {
        String strT0;
        Map mapK1;
        if (str == null || str.isEmpty() || (strT0 = w1Var.T0(str)) == null || strT0.isEmpty() || "0".equals(strT0) || (mapK1 = w1Var.k1(strT0)) == null) {
            return 0;
        }
        try {
            return Integer.parseInt(String.valueOf(mapK1.getOrDefault("skill_type", "0")));
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static String r(int i2, LinkedHashMap linkedHashMap) {
        List list = (List) linkedHashMap.get(Integer.valueOf(i2));
        return (list == null || list.isEmpty()) ? "" : (String) list.get(0);
    }

    public static String s(w1 w1Var, ArrayList arrayList, String str, LinkedHashSet linkedHashSet, LinkedHashSet linkedHashSet2, ArrayList arrayList2) {
        int iQ;
        Map mapJ0;
        Object obj;
        if (!arrayList2.isEmpty()) {
            ArrayList<String> arrayList3 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (!str2.isEmpty() && !arrayList3.contains(str2)) {
                    arrayList3.add(str2);
                }
            }
            ArrayList<String> arrayList4 = new ArrayList();
            Map mapJ1 = w1Var.J0(str);
            if (mapJ1 != null) {
                Iterator it2 = e(mapJ1.get("general_fate_id")).iterator();
                while (it2.hasNext()) {
                    Map mapD0 = w1Var.D0(String.valueOf(it2.next()));
                    if (mapD0 != null && c.a.B(mapD0, "fate_type", "", "1")) {
                        Iterator it3 = e(mapD0.get("fate_object")).iterator();
                        while (it3.hasNext()) {
                            String strValueOf = String.valueOf(it3.next());
                            if (strValueOf.length() == 6 && !arrayList4.contains(strValueOf) && (mapJ0 = w1Var.J0(strValueOf)) != null && c.a.B(mapJ0, "is_open", "", "1") && (obj = mapJ0.get("resource_id")) != null && !String.valueOf(obj).isEmpty()) {
                                arrayList4.add(strValueOf);
                            }
                        }
                    }
                }
            }
            for (String str3 : arrayList4) {
                if (!arrayList3.contains(str3)) {
                    arrayList3.add(str3);
                }
            }
            for (String str4 : arrayList3) {
                if (!linkedHashSet.contains(str4) && !str4.equals(str) && (iQ = q(w1Var, str4)) > 0 && arrayList2.contains(Integer.valueOf(iQ)) && !linkedHashSet2.contains(Integer.valueOf(iQ))) {
                    return str4;
                }
            }
        }
        return "";
    }

    public static String t(w1 w1Var, LinkedHashSet linkedHashSet, LinkedHashSet linkedHashSet2, int i2) {
        Map mapJ0;
        Object obj;
        int i3 = 0;
        String str = "";
        while (true) {
            String[] strArr = f1177i;
            int length = strArr.length;
            LinkedHashSet linkedHashSet3 = f1184p;
            if (i3 >= length) {
                for (String str2 : w1Var.i0()) {
                    if (str2.length() == 6 && !linkedHashSet.contains(str2) && (mapJ0 = w1Var.J0(str2)) != null && c.a.B(mapJ0, "is_open", "", "1") && (obj = mapJ0.get("resource_id")) != null && !String.valueOf(obj).isEmpty() && !linkedHashSet3.contains(str2)) {
                        if (!linkedHashSet2.contains(Integer.valueOf(q(w1Var, str2)))) {
                            return str2;
                        }
                        if (str.isEmpty()) {
                            str = str2;
                        }
                    }
                }
                return str;
            }
            String str3 = strArr[Math.floorMod(i2 + i3, strArr.length)];
            if (!linkedHashSet.contains(str3) && !linkedHashSet3.contains(str3)) {
                if (!linkedHashSet2.contains(Integer.valueOf(q(w1Var, str3)))) {
                    return str3;
                }
                if (str.isEmpty()) {
                    str = str3;
                }
            }
            i3++;
        }
    }

    public static String u(w1 w1Var, LinkedHashSet linkedHashSet, int i2, int i3) {
        Map mapJ0;
        Object obj;
        int i4 = 0;
        while (true) {
            String[] strArr = f1177i;
            int length = strArr.length;
            LinkedHashSet linkedHashSet2 = f1184p;
            if (i4 >= length) {
                ArrayList arrayList = new ArrayList();
                for (String str : w1Var.i0()) {
                    if (str.length() == 6 && !linkedHashSet.contains(str) && (mapJ0 = w1Var.J0(str)) != null && c.a.B(mapJ0, "is_open", "", "1") && (obj = mapJ0.get("resource_id")) != null && !String.valueOf(obj).isEmpty() && !linkedHashSet2.contains(str) && q(w1Var, str) == i2) {
                        arrayList.add(str);
                    }
                }
                if (arrayList.isEmpty()) {
                    return "";
                }
                Collections.sort(arrayList);
                return (String) arrayList.get(Math.floorMod(i3, arrayList.size()));
            }
            String str2 = strArr[Math.floorMod(i3 + i4, strArr.length)];
            if (!linkedHashSet.contains(str2) && !linkedHashSet2.contains(str2) && q(w1Var, str2) == i2) {
                return str2;
            }
            i4++;
        }
    }

    public static ArrayList v(w1 w1Var, String str, LinkedHashSet linkedHashSet, int i2) {
        Map mapJ0;
        Object obj;
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(linkedHashSet);
        ArrayList<String> arrayList = new ArrayList();
        for (String str2 : w1Var.i0()) {
            if (str2.length() == 6 && str2.startsWith(str) && !linkedHashSet2.contains(str2) && (mapJ0 = w1Var.J0(str2)) != null && c.a.B(mapJ0, "is_open", "", "1") && (obj = mapJ0.get("resource_id")) != null && !String.valueOf(obj).isEmpty()) {
                arrayList.add(str2);
            }
        }
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (String str3 : arrayList) {
            if (arrayList2.size() >= i2) {
                break;
            }
            arrayList2.add(str3);
        }
        return arrayList2;
    }
}
