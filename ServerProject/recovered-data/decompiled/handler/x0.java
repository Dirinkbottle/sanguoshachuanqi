package com.sgscq.vpn.handler;

/* JADX INFO: loaded from: classes.dex */
public final class x0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static java.util.List f1028c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f1029d = {648, 328, 198, 98, 1};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f1030e = {100, 300, 500, 1000, 2000, 5000, 10000, 20000, 50000, 80000, 150000, 300000, 600000, 1000000, 1500000};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.lang.String[] f1031f = {"111009", "122009", "142002", "122023"};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final java.lang.Object[][] f1032g = {new java.lang.Object[]{"7710001", 6, "181001", 20, 500, 40, 1}, new java.lang.Object[]{"7710011", 6, "111003", 20, 500, 40, 1}, new java.lang.Object[]{"7710021", 6, "141004", 20, 500, 40, 1}, new java.lang.Object[]{"7710031", 6, "111012", 20, 500, 40, 1}, new java.lang.Object[]{"7710041", 6, "121014", 20, 500, 40, 1}, new java.lang.Object[]{"7710051", 6, "171005", 20, 500, 40, 1}, new java.lang.Object[]{"7710061", 6, "112012", 20, 500, 40, 1}, new java.lang.Object[]{"7710002", 6, "181003", 20, 500, 40, 1}, new java.lang.Object[]{"7710012", 6, "131003", 20, 500, 40, 1}, new java.lang.Object[]{"7710022", 6, "141005", 20, 500, 40, 1}, new java.lang.Object[]{"7710032", 6, "111004", 20, 500, 40, 1}, new java.lang.Object[]{"7710042", 6, "111005", 20, 500, 40, 1}, new java.lang.Object[]{"7710052", 6, "141020", 20, 500, 40, 1}, new java.lang.Object[]{"7710062", 6, "171015", 20, 500, 40, 1}, new java.lang.Object[]{"7710003", 6, "181002", 20, 500, 40, 1}, new java.lang.Object[]{"7710013", 6, "111008", 20, 500, 40, 1}, new java.lang.Object[]{"7710023", 6, "111013", 20, 500, 40, 1}, new java.lang.Object[]{"7710033", 6, "121011", 20, 500, 40, 1}, new java.lang.Object[]{"7710043", 6, "121020", 20, 500, 40, 1}, new java.lang.Object[]{"7710053", 6, "111010", 20, 500, 40, 1}, new java.lang.Object[]{"7710063", 6, "122012", 20, 500, 40, 1}, new java.lang.Object[]{"7710004", 6, "181004", 20, 500, 40, 1}, new java.lang.Object[]{"7710014", 6, "121006", 20, 500, 40, 1}, new java.lang.Object[]{"7710024", 6, "121005", 20, 500, 40, 1}, new java.lang.Object[]{"7710034", 6, "141002", 20, 500, 40, 1}, new java.lang.Object[]{"7710044", 6, "131004", 20, 500, 40, 1}, new java.lang.Object[]{"7710054", 6, "131011", 20, 500, 40, 1}, new java.lang.Object[]{"7710064", 6, "171014", 20, 500, 40, 1}, new java.lang.Object[]{"7710005", 6, "181008", 20, 500, 40, 1}, new java.lang.Object[]{"7710015", 6, "121007", 20, 500, 40, 1}, new java.lang.Object[]{"7710025", 6, "131005", 20, 500, 40, 1}, new java.lang.Object[]{"7710035", 6, "111006", 20, 500, 40, 1}, new java.lang.Object[]{"7710045", 6, "111015", 20, 500, 40, 1}, new java.lang.Object[]{"7710055", 6, "111023", 20, 500, 40, 1}, new java.lang.Object[]{"7710006", 6, "181005", 20, 500, 40, 1}, new java.lang.Object[]{"7710016", 6, "121010", 20, 500, 40, 1}, new java.lang.Object[]{"7710026", 6, "131013", 20, 500, 40, 1}, new java.lang.Object[]{"7710036", 6, "121017", 20, 500, 40, 1}, new java.lang.Object[]{"7710046", 6, "171002", 20, 500, 40, 1}, new java.lang.Object[]{"7710056", 6, "122011", 20, 500, 40, 1}, new java.lang.Object[]{"7710007", 6, "181009", 20, 500, 40, 1}, new java.lang.Object[]{"7710017", 6, "131008", 20, 500, 40, 1}, new java.lang.Object[]{"7710027", 6, "111022", 20, 500, 40, 1}, new java.lang.Object[]{"7710037", 6, "111017", 20, 500, 40, 1}, new java.lang.Object[]{"7710047", 6, "171010", 20, 500, 40, 1}, new java.lang.Object[]{"7710057", 6, "122025", 20, 500, 40, 1}, new java.lang.Object[]{"7710008", 6, "181006", 20, 500, 40, 1}, new java.lang.Object[]{"7710018", 6, "131009", 20, 500, 40, 1}, new java.lang.Object[]{"7710028", 6, "122011", 20, 500, 40, 1}, new java.lang.Object[]{"7710038", 6, "141010", 20, 500, 40, 1}, new java.lang.Object[]{"7710048", 6, "131018", 20, 500, 40, 1}, new java.lang.Object[]{"7710058", 6, "142003", 20, 500, 40, 1}, new java.lang.Object[]{"7710009", 6, "141012", 20, 500, 40, 1}, new java.lang.Object[]{"7710019", 6, "131012", 20, 500, 40, 1}, new java.lang.Object[]{"7710029", 6, "142006", 20, 500, 40, 1}, new java.lang.Object[]{"7710039", 6, "121008", 20, 500, 40, 1}, new java.lang.Object[]{"7710049", 6, "171001", 20, 500, 40, 1}, new java.lang.Object[]{"7710059", 6, "114001", 20, 500, 40, 1}, new java.lang.Object[]{"7710010", 6, "121004", 20, 500, 40, 1}, new java.lang.Object[]{"7710020", 6, "141003", 20, 500, 40, 1}, new java.lang.Object[]{"7710030", 6, "131010", 20, 500, 40, 1}, new java.lang.Object[]{"7710040", 6, "131019", 20, 500, 40, 1}, new java.lang.Object[]{"7710050", 6, "171003", 20, 500, 40, 1}, new java.lang.Object[]{"7710060", 6, "134001", 20, 500, 40, 1}, new java.lang.Object[]{"7740005", 6, "181008", 20, 1500, 120, 3}, new java.lang.Object[]{"7740015", 6, "121007", 20, 1500, 120, 3}, new java.lang.Object[]{"7740025", 6, "131005", 20, 1500, 120, 3}, new java.lang.Object[]{"7740035", 6, "111006", 20, 1500, 120, 3}, new java.lang.Object[]{"7740045", 6, "111015", 20, 1500, 120, 3}, new java.lang.Object[]{"7740055", 6, "111023", 20, 1500, 120, 3}, new java.lang.Object[]{"7740006", 6, "181005", 20, 1500, 120, 3}, new java.lang.Object[]{"7740016", 6, "121010", 20, 1500, 120, 3}, new java.lang.Object[]{"7740026", 6, "131013", 20, 1500, 120, 3}, new java.lang.Object[]{"7740036", 6, "121017", 20, 1500, 120, 3}, new java.lang.Object[]{"7740046", 6, "171002", 20, 1500, 120, 3}, new java.lang.Object[]{"7740056", 6, "122011", 20, 1500, 120, 3}, new java.lang.Object[]{"7740007", 6, "181009", 20, 1500, 120, 3}, new java.lang.Object[]{"7740017", 6, "131008", 20, 1500, 120, 3}, new java.lang.Object[]{"7740027", 6, "111022", 20, 1500, 120, 3}, new java.lang.Object[]{"7740037", 6, "111017", 20, 1500, 120, 3}, new java.lang.Object[]{"7740047", 6, "171010", 20, 1500, 120, 3}, new java.lang.Object[]{"7740057", 6, "122025", 20, 1500, 120, 3}, new java.lang.Object[]{"7740008", 6, "181006", 20, 1500, 120, 3}, new java.lang.Object[]{"7740018", 6, "131009", 20, 1500, 120, 3}, new java.lang.Object[]{"7740028", 6, "122011", 20, 1500, 120, 3}, new java.lang.Object[]{"7740038", 6, "141010", 20, 1500, 120, 3}, new java.lang.Object[]{"7740048", 6, "131018", 20, 1500, 120, 3}, new java.lang.Object[]{"7740058", 6, "142003", 20, 1500, 120, 3}, new java.lang.Object[]{"7740009", 6, "141012", 20, 1500, 120, 3}, new java.lang.Object[]{"7740019", 6, "131012", 20, 1500, 120, 3}, new java.lang.Object[]{"7740029", 6, "142006", 20, 1500, 120, 3}, new java.lang.Object[]{"7740039", 6, "121008", 20, 1500, 120, 3}, new java.lang.Object[]{"7740049", 6, "171001", 20, 1500, 120, 3}, new java.lang.Object[]{"7740010", 6, "121004", 20, 1500, 120, 3}, new java.lang.Object[]{"7740020", 6, "141003", 20, 1500, 120, 3}, new java.lang.Object[]{"7740030", 6, "131010", 20, 1500, 120, 3}, new java.lang.Object[]{"7740040", 6, "131019", 20, 1500, 120, 3}, new java.lang.Object[]{"7740050", 6, "171003", 20, 1500, 120, 3}, new java.lang.Object[]{"7740001", 6, "181001", 20, 1500, 120, 3}, new java.lang.Object[]{"7740011", 6, "111003", 20, 1500, 120, 3}, new java.lang.Object[]{"7740021", 6, "141004", 20, 1500, 120, 3}, new java.lang.Object[]{"7740031", 6, "111012", 20, 1500, 120, 3}, new java.lang.Object[]{"7740041", 6, "121014", 20, 1500, 120, 3}, new java.lang.Object[]{"7740051", 6, "171005", 20, 1500, 120, 3}, new java.lang.Object[]{"7740002", 6, "181003", 20, 1500, 120, 3}, new java.lang.Object[]{"7740012", 6, "131003", 20, 1500, 120, 3}, new java.lang.Object[]{"7740022", 6, "141005", 20, 1500, 120, 3}, new java.lang.Object[]{"7740032", 6, "111004", 20, 1500, 120, 3}, new java.lang.Object[]{"7740042", 6, "111005", 20, 1500, 120, 3}, new java.lang.Object[]{"7740052", 6, "141020", 20, 1500, 120, 3}, new java.lang.Object[]{"7740003", 6, "181002", 20, 1500, 120, 3}, new java.lang.Object[]{"7740013", 6, "111008", 20, 1500, 120, 3}, new java.lang.Object[]{"7740023", 6, "111013", 20, 1500, 120, 3}, new java.lang.Object[]{"7740033", 6, "121011", 20, 1500, 120, 3}, new java.lang.Object[]{"7740043", 6, "121020", 20, 1500, 120, 3}, new java.lang.Object[]{"7740053", 6, "111010", 20, 1500, 120, 3}, new java.lang.Object[]{"7740059", 6, "171014", 20, 1500, 120, 3}, new java.lang.Object[]{"7740004", 6, "181004", 20, 1500, 120, 3}, new java.lang.Object[]{"7740014", 6, "121006", 20, 1500, 120, 3}, new java.lang.Object[]{"7740024", 6, "121005", 20, 1500, 120, 3}, new java.lang.Object[]{"7740034", 6, "141002", 20, 1500, 120, 3}, new java.lang.Object[]{"7740044", 6, "131004", 20, 1500, 120, 3}, new java.lang.Object[]{"7740054", 6, "131011", 20, 1500, 120, 3}, new java.lang.Object[]{"7720003", 8, "231004", 15, 1800, 144, 1}, new java.lang.Object[]{"7720013", 8, "211003", 15, 1800, 144, 1}, new java.lang.Object[]{"7720023", 8, "212001", 15, 1800, 144, 1}, new java.lang.Object[]{"7720033", 8, "222001", 15, 1800, 144, 1}, new java.lang.Object[]{"7720043", 8, "241010", 15, 1800, 144, 1}, new java.lang.Object[]{"7720004", 8, "231005", 15, 1800, 144, 1}, new java.lang.Object[]{"7720014", 8, "211004", 15, 1800, 144, 1}, new java.lang.Object[]{"7720024", 8, "221001", 15, 1800, 144, 1}, new java.lang.Object[]{"7720034", 8, "241001", 15, 1800, 144, 1}, new java.lang.Object[]{"7720044", 8, "241011", 15, 1800, 144, 1}, new java.lang.Object[]{"7720005", 8, "231002", 15, 1800, 144, 1}, new java.lang.Object[]{"7720015", 8, "211005", 15, 1800, 144, 1}, new java.lang.Object[]{"7720025", 8, "221002", 15, 1800, 144, 1}, new java.lang.Object[]{"7720035", 8, "241002", 15, 1800, 144, 1}, new java.lang.Object[]{"7720045", 8, "211016", 15, 1800, 144, 1}, new java.lang.Object[]{"7720006", 8, "231006", 15, 1800, 144, 1}, new java.lang.Object[]{"7720016", 8, "211006", 15, 1800, 144, 1}, new java.lang.Object[]{"7720026", 8, "221003", 15, 1800, 144, 1}, new java.lang.Object[]{"7720036", 8, "241003", 15, 1800, 144, 1}, new java.lang.Object[]{"7720046", 8, "221016", 15, 1800, 144, 1}, new java.lang.Object[]{"7720007", 8, "231007", 15, 1800, 144, 1}, new java.lang.Object[]{"7720017", 8, "211007", 15, 1800, 144, 1}, new java.lang.Object[]{"7720027", 8, "221004", 15, 1800, 144, 1}, new java.lang.Object[]{"7720037", 8, "241004", 15, 1800, 144, 1}, new java.lang.Object[]{"7720047", 8, "241016", 15, 1800, 144, 1}, new java.lang.Object[]{"7720008", 8, "231008", 15, 1800, 144, 1}, new java.lang.Object[]{"7720018", 8, "211008", 15, 1800, 144, 1}, new java.lang.Object[]{"7720028", 8, "221005", 15, 1800, 144, 1}, new java.lang.Object[]{"7720038", 8, "241005", 15, 1800, 144, 1}, new java.lang.Object[]{"7720048", 8, "211017", 15, 1800, 144, 1}, new java.lang.Object[]{"7720009", 8, "231009", 15, 1800, 144, 1}, new java.lang.Object[]{"7720019", 8, "211009", 15, 1800, 144, 1}, new java.lang.Object[]{"7720029", 8, "221006", 15, 1800, 144, 1}, new java.lang.Object[]{"7720039", 8, "241006", 15, 1800, 144, 1}, new java.lang.Object[]{"7720049", 8, "221017", 15, 1800, 144, 1}, new java.lang.Object[]{"7720010", 8, "231010", 15, 1800, 144, 1}, new java.lang.Object[]{"7720020", 8, "211010", 15, 1800, 144, 1}, new java.lang.Object[]{"7720030", 8, "221007", 15, 1800, 144, 1}, new java.lang.Object[]{"7720040", 8, "241007", 15, 1800, 144, 1}, new java.lang.Object[]{"7720050", 8, "241017", 15, 1800, 144, 1}, new java.lang.Object[]{"7720001", 8, "231001", 15, 1800, 144, 1}, new java.lang.Object[]{"7720011", 8, "211001", 15, 1800, 144, 1}, new java.lang.Object[]{"7720021", 8, "211011", 15, 1800, 144, 1}, new java.lang.Object[]{"7720031", 8, "221008", 15, 1800, 144, 1}, new java.lang.Object[]{"7720041", 8, "241008", 15, 1800, 144, 1}, new java.lang.Object[]{"7720051", 8, "231013", 15, 1800, 144, 1}, new java.lang.Object[]{"7720002", 8, "231003", 15, 1800, 144, 1}, new java.lang.Object[]{"7720012", 8, "211002", 15, 1800, 144, 1}, new java.lang.Object[]{"7720022", 8, "211012", 15, 1800, 144, 1}, new java.lang.Object[]{"7720032", 8, "221009", 15, 1800, 144, 1}, new java.lang.Object[]{"7720042", 8, "241009", 15, 1800, 144, 1}, new java.lang.Object[]{"7720052", 8, "221011", 15, 1800, 144, 1}, new java.lang.Object[]{"7730009", 7, "351024", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730019", 7, "351027", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730010", 7, "351019", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730020", 7, "351024", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730001", 7, "351022", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730011", 7, "351023", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730021", 7, "351019", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730002", 7, "331008", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730012", 7, "351022", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730022", 7, "351023", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730003", 7, "351015", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730013", 7, "331008", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730004", 7, "351017", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730014", 7, "351015", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730005", 7, "351005", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730015", 7, "351017", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730006", 7, "311004", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730016", 7, "351005", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730007", 7, "341005", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730017", 7, "311004", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730008", 7, "351027", 21, 25000, 2000, 1}, new java.lang.Object[]{"7730018", 7, "341005", 21, 25000, 2000, 1}};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.sgscq.vpn.handler.k0 f1033a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.Random f1034b = new java.util.Random();

    static {
        new java.util.HashSet(java.util.Arrays.asList("111001", "111026", "121001", "121002", "121021", "131001", "131002", "141001", "151001", "151002", "165001", "165002"));
    }

    public x0(com.sgscq.vpn.handler.k0 k0Var) {
        this.f1033a = k0Var;
    }

    public static java.util.LinkedHashMap A(int i2, java.util.Map map) {
        int iS0 = S0(map.get("item_type"), 1);
        return com.sgscq.vpn.p5.z0("pk_id", map.get("pk_id"), "id", map.get("id"), "item_id", map.get("item_id"), "num", java.lang.Integer.valueOf(i2), "item_num", java.lang.Integer.valueOf(i2), "item_type", java.lang.Integer.valueOf(iS0), "type", java.lang.Integer.valueOf(com.sgscq.vpn.y2.s(iS0)), "level", 1, "is_new", java.lang.Boolean.TRUE);
    }

    public static java.lang.String A0(java.lang.String str) {
        if (str == null) {
            return "";
        }
        java.lang.String strTrim = str.trim();
        if (strTrim.isEmpty() || "null".equalsIgnoreCase(strTrim)) {
            return "";
        }
        if (!strTrim.startsWith("105") || strTrim.length() < 8) {
            return strTrim.length() >= 6 ? strTrim.substring(0, 6) : strTrim;
        }
        return strTrim.substring(0, 8);
    }

    public static java.util.ArrayList B(android.content.Context context, int i2, java.util.Map map) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.lang.String strW0 = w0(context, "600206");
        arrayList.add(U0("1", "600206", strW0, 46, 10, 1));
        arrayList.add(U0("9002", "600206", strW0, 46, 100, 10));
        java.lang.String strW1 = w0(context, "600094");
        java.util.LinkedHashMap linkedHashMapU0 = U0("9001", "600094", strW1, 39, 30, 1);
        java.util.LinkedHashMap linkedHashMapU1 = U0("9003", "600094", strW1, 39, 300, 10);
        int iMax = java.lang.Math.max(0, i2);
        linkedHashMapU0.put("exchange_num", java.lang.Integer.valueOf(iMax >= 6 ? 200 : iMax * 20));
        linkedHashMapU0.put("exchanged_num", java.lang.Integer.valueOf(q0(map)));
        int iMax2 = java.lang.Math.max(0, i2);
        linkedHashMapU1.put("exchange_num", java.lang.Integer.valueOf(iMax2 < 6 ? iMax2 * 20 : 200));
        linkedHashMapU1.put("exchanged_num", java.lang.Integer.valueOf(q0(map)));
        arrayList.add(linkedHashMapU0);
        arrayList.add(linkedHashMapU1);
        java.util.Map map2 = com.sgscq.vpn.handler.d0.f798c;
        java.util.ArrayList<java.lang.String> arrayList2 = new java.util.ArrayList();
        com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(context);
        for (java.util.Map map3 : com.sgscq.vpn.handler.d0.l(context)) {
            java.lang.String strH0 = "";
            java.lang.String strJ = c.a.j(map3, "id", "", "item_id");
            if (!strJ.isEmpty() && !com.sgscq.vpn.handler.d0.f801f.contains(strJ)) {
                java.util.Map mapC1 = w1VarA1 == null ? null : w1VarA1.c1(strJ);
                int iL2 = com.sgscq.vpn.w1.l2(java.lang.String.valueOf(mapC1 != null ? mapC1.get("item_type") : map3.getOrDefault("item_type", map3.getOrDefault("type", "0"))), 0);
                if (iL2 == 46) {
                    strH0 = strJ;
                } else if (iL2 == 47) {
                    strH0 = com.sgscq.vpn.handler.d0.h0(w1VarA1, map3);
                }
                if (!strH0.isEmpty() && !arrayList2.contains(strH0)) {
                    arrayList2.add(strH0);
                }
            }
        }
        int i3 = 2;
        for (java.lang.String str : arrayList2) {
            if (str != null && !str.isEmpty() && !"600206".equals(str)) {
                arrayList.add(U0(java.lang.String.valueOf(i3), str, w0(context, str), 46, 300, 1));
                i3++;
            }
        }
        return arrayList;
    }

    public static int B0(int i2, java.lang.String str, java.util.Map map) {
        if (map == null) {
            return i2;
        }
        java.lang.Object obj = map.get(str);
        if (obj instanceof java.lang.Number) {
            return ((java.lang.Number) obj).intValue();
        }
        if (obj == null) {
            return i2;
        }
        try {
            return java.lang.Integer.parseInt(java.lang.String.valueOf(obj));
        } catch (java.lang.NumberFormatException unused) {
            return i2;
        }
    }

    public static java.util.LinkedHashMap C(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, java.lang.String str) {
        return com.sgscq.vpn.p5.z0("toast", new java.util.ArrayList(), "list", new java.util.ArrayList(), "gold_info", a1(i2, i3, 268), "silver_info", a1(i4, i5, 100), "copper_info", a1(i6, 1, 10), "gold_price", 268, "silver_price", 100, "copper_price", 10, "need_times", java.lang.Integer.valueOf(i7), "first_time_consume_gold", java.lang.Integer.valueOf(i9), "multi_price", 2680, "next_guarantee", java.lang.Integer.valueOf(i7), "guarantee_interval", java.lang.Integer.valueOf(i8), "show_general_list", com.sgscq.vpn.p5.t1(str));
    }

    public static int C0(java.lang.Object obj, int i2) {
        if (obj == null) {
            return i2;
        }
        try {
            return (int) java.lang.Double.parseDouble(java.lang.String.valueOf(obj));
        } catch (java.lang.NumberFormatException unused) {
            return i2;
        }
    }

    public static java.util.LinkedHashMap D(java.util.ArrayList arrayList, java.util.ArrayList arrayList2) {
        java.util.ArrayList<java.util.Map> arrayList3 = new java.util.ArrayList(arrayList);
        java.util.ArrayList arrayList4 = new java.util.ArrayList(arrayList2);
        java.util.ArrayList arrayList5 = new java.util.ArrayList();
        for (java.util.Map map : arrayList3) {
            if (map != null) {
                if (!map.containsKey("general_status")) {
                    map.put("general_status", "1");
                }
                if (!map.containsKey("status")) {
                    map.put("status", "1");
                }
                java.lang.Object obj = map.get("major_pk_id");
                java.lang.Object obj2 = map.get("pk_id");
                if (obj == null || java.lang.String.valueOf(obj).isEmpty() || (obj2 != null && java.lang.String.valueOf(obj2).equals(java.lang.String.valueOf(obj)))) {
                    map.put("major_pk_id", "");
                }
                if (!(map.get("culture_info") instanceof java.util.Map)) {
                    map.put("culture_info", new java.util.LinkedHashMap());
                }
            }
            java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
            L("id", map, linkedHashMap);
            L("general_id", map, linkedHashMap);
            L("general_name", map, linkedHashMap);
            L("general_level", map, linkedHashMap);
            L("general_star", map, linkedHashMap);
            L("card_type", map, linkedHashMap);
            L("num", map, linkedHashMap);
            L("type", map, linkedHashMap);
            L("general_painting_id", map, linkedHashMap);
            arrayList5.add(linkedHashMap);
        }
        java.util.LinkedHashMap linkedHashMap2 = new java.util.LinkedHashMap();
        linkedHashMap2.put("general", arrayList3);
        linkedHashMap2.put("general_soul", arrayList4);
        return com.sgscq.vpn.p5.z0("reward_info", linkedHashMap2, "show_general_info", arrayList5);
    }

    public static int D0(java.lang.Object obj) {
        if (obj instanceof java.lang.Number) {
            return ((java.lang.Number) obj).intValue();
        }
        if (obj == null) {
            return 0;
        }
        try {
            return (int) java.lang.Double.parseDouble(obj.toString());
        } catch (java.lang.NumberFormatException unused) {
            return 0;
        }
    }

    public static java.util.Map E0(java.lang.String str, java.util.Map map) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        java.lang.Object obj = map.get("pending_recharge_orders");
        if (!(obj instanceof java.util.Map)) {
            return null;
        }
        java.lang.Object obj2 = ((java.util.Map) obj).get(str);
        if (obj2 instanceof java.util.Map) {
            return (java.util.Map) obj2;
        }
        return null;
    }

    public static java.util.LinkedHashMap G(java.util.LinkedHashMap linkedHashMap) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.lang.Object obj = linkedHashMap.get("add_list");
        if (obj instanceof java.util.List) {
            arrayList.addAll((java.util.List) obj);
        }
        java.lang.String strValueOf = java.lang.String.valueOf(linkedHashMap.getOrDefault("wish_general_id", ""));
        java.lang.String strValueOf2 = java.lang.String.valueOf(linkedHashMap.getOrDefault("wish_reward_type", ""));
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        if (strValueOf.isEmpty() || "null".equalsIgnoreCase(strValueOf)) {
            arrayList2.addAll(arrayList);
        } else {
            arrayList2.add(p(strValueOf, 1, strValueOf, 1));
            arrayList2.add(p(strValueOf, 2, strValueOf, 1));
            arrayList2.add(r(50));
            arrayList2.add(r(250));
        }
        int i2 = 0;
        java.lang.Object orDefault = linkedHashMap.getOrDefault("wish_free", 0);
        java.lang.Object[] objArr = new java.lang.Object[6];
        objArr[0] = "item_index";
        if ("soul3".equals(strValueOf2)) {
            i2 = 1;
        } else if ("gold50".equals(strValueOf2)) {
            i2 = 2;
        } else if ("gold250".equals(strValueOf2)) {
            i2 = 3;
        }
        objArr[1] = java.lang.Integer.valueOf(i2);
        objArr[2] = "item_list";
        objArr[3] = arrayList2;
        objArr[4] = "add_list";
        objArr[5] = arrayList;
        return com.sgscq.vpn.p5.z0("wish_free", orDefault, objArr);
    }

    public static java.lang.String G0(java.util.Map map) {
        java.lang.String[] strArr = {"user_nickname", "nickName", "nickname", "roleName"};
        for (int i2 = 0; i2 < 4; i2++) {
            java.lang.Object obj = map.get(strArr[i2]);
            if (obj != null) {
                java.lang.String strTrim = java.lang.String.valueOf(obj).trim();
                if (!strTrim.isEmpty()) {
                    return strTrim;
                }
            }
        }
        return "玩家";
    }

    public static java.util.LinkedHashMap H(android.content.Context context, java.lang.String str, java.util.Map map) {
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        int iC1 = c1(str, map);
        java.util.ArrayList arrayListM = M(context, map);
        boolean z = !arrayListM.isEmpty();
        linkedHashMap.put("can_play", java.lang.Boolean.valueOf(z));
        linkedHashMap.put("wish_free", java.lang.Integer.valueOf(iC1));
        linkedHashMap.put("free_times", java.lang.Integer.valueOf(iC1));
        linkedHashMap.put("wish_level", java.lang.Integer.valueOf(S0(map.get("wish_level"), 0)));
        linkedHashMap.put("wish_exp", java.lang.Integer.valueOf(S0(map.get("wish_exp"), 0)));
        linkedHashMap.put("wish_times", java.lang.Integer.valueOf(S0(map.get("wish_times"), 0)));
        linkedHashMap.put("wish_list", arrayListM);
        linkedHashMap.put("wish_info", new java.util.LinkedHashMap(linkedHashMap));
        linkedHashMap.put("wishing", com.sgscq.vpn.p5.z0("num", java.lang.Integer.valueOf(z ? 1 : 0), "free_times", java.lang.Integer.valueOf(iC1), "can_play", java.lang.Boolean.valueOf(z), "wish_list", arrayListM, "wish_free", java.lang.Integer.valueOf(iC1), "wish_level", linkedHashMap.get("wish_level"), "wish_exp", linkedHashMap.get("wish_exp"), "wish_times", linkedHashMap.get("wish_times")));
        return linkedHashMap;
    }

    public static com.sgscq.vpn.q4 H0(java.util.Map map, java.util.Map map2, long j2, java.lang.String str) {
        java.lang.String strV = V(e0(map2, "order_id", "orderId", "order_ids"));
        java.lang.String strE0 = e0(map2, "product_id", "pk_id", "id");
        int iQ0 = Q0(strV, map, map2);
        int iP0 = P0(map, map2, strV, iQ0);
        boolean zS0 = s0(iQ0, map);
        int i2 = zS0 ? iP0 * 2 : iP0;
        java.lang.String strB = str.isEmpty() ? com.sgscq.vpn.c7.b() : str;
        return new com.sgscq.vpn.q4(1L, strV + ":recharge", "recharge_grant", com.sgscq.vpn.p5.z0("order_id", strV, "product_id", strE0, "rmb", java.lang.Integer.valueOf(iQ0), "base_gold", java.lang.Integer.valueOf(iP0), "gold", java.lang.Integer.valueOf(i2), "first_double", java.lang.Boolean.valueOf(zS0), "mail_id", c.a.i("recharge_", strV), "mail_time_ms", java.lang.Long.valueOf(j2), "day", strB, "daily_rmb_used_after", java.lang.Integer.valueOf((c.a.B(map, "daily_recharge_day", "", strB) ? B0(0, "daily_recharge_rmb_used", map) : 0) + iQ0), "enable_monthly_card", java.lang.Boolean.TRUE), j2);
    }

    public static int I(java.util.Map map, java.lang.String str, long j2, int i2) {
        java.lang.Object obj = map.get(str);
        if (obj == null) {
            return 0;
        }
        try {
            long j3 = java.lang.Long.parseLong(java.lang.String.valueOf(obj));
            if (j3 <= 0) {
                return 0;
            }
            long j4 = j3 + ((long) i2);
            if (j2 >= j4) {
                return 0;
            }
            return (int) (j4 - j2);
        } catch (java.lang.NumberFormatException unused) {
            return 0;
        }
    }

    public static int I0(java.lang.String str) {
        if ("charge_6480".equals(str)) {
            return 6480;
        }
        java.lang.Object obj = w(0, null).get("product_list");
        if (obj instanceof java.util.List) {
            for (java.lang.Object obj2 : (java.util.List) obj) {
                if (obj2 instanceof java.util.Map) {
                    java.util.Map map = (java.util.Map) obj2;
                    if (c.a.B(map, "pk_id", "", str)) {
                        return C0(map.get("product_price"), 6);
                    }
                }
            }
        }
        return 6;
    }

    public static int J(int i2) {
        if (i2 >= 1500000) {
            return 15;
        }
        if (i2 >= 1000000) {
            return 14;
        }
        if (i2 >= 600000) {
            return 13;
        }
        if (i2 >= 300000) {
            return 12;
        }
        if (i2 >= 150000) {
            return 11;
        }
        if (i2 >= 80000) {
            return 10;
        }
        if (i2 >= 50000) {
            return 9;
        }
        if (i2 >= 20000) {
            return 8;
        }
        if (i2 >= 10000) {
            return 7;
        }
        if (i2 >= 5000) {
            return 6;
        }
        if (i2 >= 2000) {
            return 5;
        }
        if (i2 >= 1000) {
            return 4;
        }
        if (i2 >= 500) {
            return 3;
        }
        if (i2 >= 300) {
            return 2;
        }
        return i2 >= 100 ? 1 : 0;
    }

    public static int J0(java.lang.String str, java.lang.String str2, java.util.Map map) {
        if (str2.isEmpty()) {
            return 0;
        }
        java.lang.Object obj = map.get(str);
        if (obj instanceof java.util.Map) {
            return c.a.e((java.util.Map) obj, str2, 0);
        }
        return 0;
    }

    public static java.lang.String[] K(java.util.LinkedHashMap linkedHashMap) {
        java.lang.String[] strArrSplit = java.lang.String.valueOf(linkedHashMap.getOrDefault("cmn_modules", "")).split(",");
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.String str : strArrSplit) {
            java.lang.String strTrim = str.trim();
            if (!strTrim.isEmpty()) {
                arrayList.add(strTrim);
            }
        }
        return (java.lang.String[]) arrayList.toArray(new java.lang.String[0]);
    }

    public static java.util.ArrayList K0() {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        arrayList.add(com.sgscq.vpn.p5.z0("pk_id", "1", "item_id", "600007", "name", "quick_buy_power", "effect_value", 50, "used_num", 0, "all_num", 20, "next_all_num", 20, "next_vip_level", 1, "item_price", 20, "price", 20, "discount_price", 20, "currency_type", 1));
        arrayList.add(com.sgscq.vpn.p5.z0("pk_id", "2", "item_id", "600008", "name", "quick_buy_energy", "effect_value", 50, "used_num", 0, "all_num", 20, "next_all_num", 20, "next_vip_level", 1, "item_price", 20, "price", 20, "discount_price", 20, "currency_type", 1));
        arrayList.add(com.sgscq.vpn.p5.z0("pk_id", "3", "item_id", "600028", "name", "quick_buy_power", "effect_value", 40, "used_num", 0, "all_num", 99, "next_all_num", 99, "next_vip_level", 1, "item_price", 50, "price", 50, "discount_price", 50, "currency_type", 1));
        arrayList.add(com.sgscq.vpn.p5.z0("pk_id", "4", "item_id", "600029", "name", "quick_buy_energy", "effect_value", 8, "used_num", 0, "all_num", 99, "next_all_num", 99, "next_vip_level", 1, "item_price", 50, "price", 50, "discount_price", 50, "currency_type", 1));
        arrayList.add(com.sgscq.vpn.p5.z0("pk_id", "5", "item_id", "600018", "name", "quick_buy_ladder_challenge", "effect_value", 3, "used_num", 0, "all_num", 99, "next_all_num", 99, "next_vip_level", 1, "item_price", 50, "price", 50, "discount_price", 50, "currency_type", 1));
        arrayList.add(com.sgscq.vpn.p5.z0("pk_id", "6", "item_id", "600100", "name", "quick_buy_ladder_challenge", "effect_value", 10, "used_num", 0, "all_num", 99, "next_all_num", 99, "next_vip_level", 1, "item_price", 350, "price", 350, "discount_price", 350, "currency_type", 1));
        arrayList.add(com.sgscq.vpn.p5.z0("pk_id", "7", "item_id", "600019", "name", "quick_buy_ladder_challenge", "effect_value", 1, "used_num", 0, "all_num", 99, "next_all_num", 99, "next_vip_level", 1, "item_price", 50, "price", 50, "discount_price", 50, "currency_type", 1));
        arrayList.add(com.sgscq.vpn.p5.z0("pk_id", "8", "item_id", "600020", "name", "quick_buy_ladder_challenge", "effect_value", 5, "used_num", 0, "all_num", 99, "next_all_num", 99, "next_vip_level", 1, "item_price", 200, "price", 200, "discount_price", 200, "currency_type", 1));
        arrayList.add(com.sgscq.vpn.p5.z0("pk_id", "9", "item_id", "600021", "name", "quick_buy_ladder_challenge", "effect_value", 10, "used_num", 0, "all_num", 99, "next_all_num", 99, "next_vip_level", 1, "item_price", 350, "price", 350, "discount_price", 350, "currency_type", 1));
        arrayList.add(com.sgscq.vpn.p5.z0("pk_id", "10", "item_id", "600030", "name", "quick_clear_dungeon_cooldown", "effect_value", 0, "used_num", 0, "all_num", 99, "next_all_num", 99, "next_vip_level", 1, "item_price", 50, "price", 50, "discount_price", 50, "currency_type", 1));
        arrayList.add(com.sgscq.vpn.p5.z0("pk_id", "11", "item_id", "600031", "name", "quick_buy_dungeon_times", "effect_value", 1, "used_num", 0, "all_num", 50, "next_all_num", 99, "next_vip_level", 12, "item_price", 20, "price", 20, "discount_price", 20, "currency_type", 1));
        arrayList.add(com.sgscq.vpn.p5.z0("pk_id", "12", "item_id", "600035", "name", "quick_buy_elite_dungeon_times", "effect_value", 1, "used_num", 0, "all_num", 50, "next_all_num", 99, "next_vip_level", 12, "item_price", 20, "price", 20, "discount_price", 20, "currency_type", 1));
        return arrayList;
    }

    public static void L(java.lang.String str, java.util.Map map, java.util.LinkedHashMap linkedHashMap) {
        if (map == null || !map.containsKey(str)) {
            return;
        }
        linkedHashMap.put(str, map.get(str));
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005f A[PHI: r5
      0x005f: PHI (r5v1 java.util.List) = (r5v23 java.util.List), (r5v24 java.util.List) binds: [B:3:0x0017, B:20:0x005d] A[DONT_GENERATE, DONT_INLINE]] */
    public static java.util.ArrayList M(android.content.Context context, java.util.Map map) {
        java.lang.String str;
        java.util.List<java.util.Map> list;
        java.util.Map map2;
        java.util.Map map3;
        java.util.LinkedHashMap linkedHashMap;
        java.lang.Object obj = map.get("wish_list");
        java.util.LinkedHashMap linkedHashMap2 = new java.util.LinkedHashMap();
        java.util.List list2 = f1028c;
        java.lang.String str2 = "wish_general_id";
        java.lang.String str3 = "";
        java.util.List list3 = list2;
        if (list2 == null) {
            java.lang.String strA = context == null ? "" : com.sgscq.vpn.o0.a(context, "wish_mappings.json");
            if (strA == null || strA.isEmpty()) {
                java.io.File fileC0 = c0("docs/game_data_json/wish_mappings.json");
                if (fileC0.isFile()) {
                    try {
                        strA = com.sgscq.vpn.p5.W0(fileC0);
                    } catch (java.lang.Exception unused) {
                        strA = "";
                    }
                }
            }
            if (strA != null && !strA.isEmpty()) {
                try {
                    java.util.List list4 = (java.util.List) new a.o().e(strA, new com.google.gson.reflect.TypeToken<java.util.List<java.util.Map<java.lang.String, java.lang.Object>>>() { // from class: com.sgscq.vpn.handler.ShopHandler$1
                    }.getType());
                    f1028c = list4;
                    list3 = list4;
                    if (list4 != null) {
                        str = "general_id";
                        list = list3;
                    }
                } catch (java.lang.Exception e2) {
                    c.a.u(e2, new java.lang.StringBuilder("[Wish] load wish_mappings failed: "), "SGSCQ_SRV");
                }
            }
            java.lang.String[][] strArr = {new java.lang.String[]{"141011", "131011"}, new java.lang.String[]{"111013", "111012"}, new java.lang.String[]{"111016", "111012"}, new java.lang.String[]{"111014", "111012"}, new java.lang.String[]{"111009", "111012"}, new java.lang.String[]{"111022", "111013"}, new java.lang.String[]{"111004", "112012"}, new java.lang.String[]{"141006", "141003"}, new java.lang.String[]{"141007", "141003"}, new java.lang.String[]{"121014", "141003"}, new java.lang.String[]{"131017", "131013"}, new java.lang.String[]{"122009", "121006"}, new java.lang.String[]{"122023", "121006"}, new java.lang.String[]{"122008", "121006"}, new java.lang.String[]{"121018", "121006"}, new java.lang.String[]{"142006", "121006"}, new java.lang.String[]{"121010", "121006"}, new java.lang.String[]{"121007", "121006"}, new java.lang.String[]{"111006", "121006"}, new java.lang.String[]{"111003", "111008"}, new java.lang.String[]{"141012", "111008"}, new java.lang.String[]{"141008", "141004"}, new java.lang.String[]{"121011", "121005"}, new java.lang.String[]{"142007", "141010"}, new java.lang.String[]{"141005", "141010"}, new java.lang.String[]{"131015", "131017"}, new java.lang.String[]{"131005", "131009"}, new java.lang.String[]{"131013", "131005"}, new java.lang.String[]{"131010", "131005"}, new java.lang.String[]{"131004", "131005"}, new java.lang.String[]{"121006", "121010"}, new java.lang.String[]{"121009", "121010"}, new java.lang.String[]{"111021", "121010"}, new java.lang.String[]{"121016", "121010"}, new java.lang.String[]{"121008", "121010"}, new java.lang.String[]{"121004", "121017"}, new java.lang.String[]{"121019", "121017"}, new java.lang.String[]{"131012", "131018"}, new java.lang.String[]{"131006", "131018"}, new java.lang.String[]{"131018", "131012"}, new java.lang.String[]{"111007", "111014"}, new java.lang.String[]{"131007", "131008"}, new java.lang.String[]{"141003", "131008"}, new java.lang.String[]{"112002", "111010"}, new java.lang.String[]{"121015", "121007"}, new java.lang.String[]{"121013", "121007"}, new java.lang.String[]{"141004", "141005"}, new java.lang.String[]{"142002", "111006"}, new java.lang.String[]{"141002", "111006"}, new java.lang.String[]{"111012", "111004"}, new java.lang.String[]{"171001", "131004"}, new java.lang.String[]{"111008", "131004"}, new java.lang.String[]{"131014", "131004"}, new java.lang.String[]{"131009", "131004"}, new java.lang.String[]{"131003", "131004"}, new java.lang.String[]{"131008", "131004"}};
            java.util.ArrayList arrayList = new java.util.ArrayList();
            for (int i2 = 0; i2 < 56; i2++) {
                java.lang.String[] strArr2 = strArr[i2];
                arrayList.add(com.sgscq.vpn.p5.z0("general_id", strArr2[0], "wish_general_id", strArr2[1]));
            }
            str = "general_id";
            str2 = "wish_general_id";
            f1028c = arrayList;
            list = arrayList;
        } else {
            str = "general_id";
            list = list3;
        }
        for (java.util.Map map4 : list) {
            java.lang.String str4 = str3;
            java.lang.String strValueOf = java.lang.String.valueOf(map4.getOrDefault(str, str4));
            if (strValueOf.isEmpty() || "null".equalsIgnoreCase(strValueOf)) {
                linkedHashMap = linkedHashMap2;
            } else {
                linkedHashMap = linkedHashMap2;
                linkedHashMap.put(strValueOf, map4);
            }
            str3 = str4;
            linkedHashMap2 = linkedHashMap;
        }
        java.util.LinkedHashMap linkedHashMap3 = linkedHashMap2;
        java.lang.String str5 = str3;
        if (!(obj instanceof java.util.List)) {
            java.util.ArrayList arrayList2 = new java.util.ArrayList();
            java.util.LinkedHashSet linkedHashSet = new java.util.LinkedHashSet();
            java.util.Iterator it = com.sgscq.vpn.w1.f0("General", map).iterator();
            while (it.hasNext()) {
                java.lang.String strJ = c.a.j((java.util.Map) it.next(), "id", str5, str);
                if (!strJ.isEmpty() && !"null".equalsIgnoreCase(strJ) && linkedHashSet.add(strJ) && (map2 = (java.util.Map) linkedHashMap3.get(strJ)) != null) {
                    java.lang.String strValueOf2 = java.lang.String.valueOf(map2.getOrDefault(str2, str5));
                    if (!strValueOf2.isEmpty() && !"null".equalsIgnoreCase(strValueOf2)) {
                        arrayList2.add(com.sgscq.vpn.p5.z0(str, strJ, "wish_general_id", strValueOf2, "wish_desc", com.sgscq.vpn.cloud.m0.y2(strValueOf2, java.lang.String.valueOf(map2.getOrDefault("wish_desc", "许愿可获得魂魄或元宝"))), "wish_enable", java.lang.Boolean.TRUE));
                    }
                }
            }
            return arrayList2;
        }
        java.util.ArrayList arrayList3 = new java.util.ArrayList();
        java.util.LinkedHashSet linkedHashSet2 = new java.util.LinkedHashSet();
        for (java.lang.Object obj2 : (java.util.List) obj) {
            if (obj2 instanceof java.util.Map) {
                java.util.Map map5 = (java.util.Map) obj2;
                java.lang.String strValueOf3 = java.lang.String.valueOf(map5.getOrDefault(str, str5));
                if (linkedHashSet2.add(strValueOf3) && (map3 = (java.util.Map) linkedHashMap3.get(strValueOf3)) != null) {
                    java.lang.String strValueOf4 = java.lang.String.valueOf(map3.getOrDefault(str2, str5));
                    if (!strValueOf4.isEmpty() && !"null".equalsIgnoreCase(strValueOf4)) {
                        arrayList3.add(com.sgscq.vpn.p5.z0(str, strValueOf3, "wish_general_id", strValueOf4, "wish_desc", com.sgscq.vpn.cloud.m0.y2(strValueOf4, java.lang.String.valueOf(map3.getOrDefault("wish_desc", "许愿可获得魂魄或元宝"))), "wish_enable", java.lang.Boolean.valueOf(b1(map5.get("wish_enable")))));
                    }
                }
            }
        }
        map.put("wish_list", arrayList3);
        return arrayList3;
    }

    public static int N0(java.lang.String str, java.util.Map map) {
        if (map == null) {
            return 0;
        }
        return java.lang.Math.max(0, B0(0, str.concat("_total_days"), map) - B0(0, str.concat("_claimed_days"), map));
    }

    public static int O(int i2, int i3, int i4) {
        int i5;
        switch (i2) {
            case 1:
                i5 = 3000;
                break;
            case 2:
                i5 = 8000;
                break;
            case 3:
                i5 = 20000;
                break;
            case 4:
                i5 = 50000;
                break;
            case 5:
            case 6:
                i5 = Integer.MAX_VALUE;
                break;
            default:
                i5 = 1000;
                break;
        }
        if (i5 == Integer.MAX_VALUE) {
            return i5;
        }
        return java.lang.Math.max(0, i4) + java.lang.Math.max(0, i3) + i5;
    }

    public static com.sgscq.vpn.handler.w0 O0(java.util.Map map, java.util.Map map2, boolean z) {
        java.util.ArrayList arrayList;
        java.util.ArrayList arrayList2;
        java.util.Map map3;
        com.sgscq.vpn.handler.w0 w0Var = new com.sgscq.vpn.handler.w0();
        java.util.List listF0 = com.sgscq.vpn.w1.f0("Item", map);
        java.lang.String strF0 = f0(map2, "user_item_id", "pk_id", "item_pk_id", "id");
        java.lang.String strF1 = f0(map2, "item_id", "goods_id");
        int iMax = z ? Integer.MAX_VALUE : java.lang.Math.max(1, S0(f0(map2, "item_num", "num", "count"), 1));
        java.util.Iterator it = listF0.iterator();
        do {
            boolean zHasNext = it.hasNext();
            arrayList = w0Var.f1021b;
            arrayList2 = w0Var.f1020a;
            if (zHasNext) {
                map3 = (java.util.Map) it.next();
            }
            map.put("Item", com.sgscq.vpn.p5.z0("del", arrayList2, "upd", arrayList, "add", listF0));
            return w0Var;
        } while (!(map3 != null && ((!strF0.isEmpty() && c.a.B(map3, "pk_id", "", strF0)) || (!strF1.isEmpty() && c.a.C(map3, "id", "", "item_id", strF1)))));
        int iS0 = S0(map3.getOrDefault("num", map3.getOrDefault("item_num", 0)), 0);
        int iMin = java.lang.Math.min(java.lang.Math.max(0, iS0), iMax);
        if (z || iMin >= iS0) {
            it.remove();
            arrayList2.add(java.lang.String.valueOf(map3.get("pk_id")));
        } else {
            int i2 = iS0 - iMin;
            map3.put("num", java.lang.Integer.valueOf(i2));
            map3.put("item_num", java.lang.Integer.valueOf(i2));
            arrayList.add(map3);
        }
        w0Var.f1022c = iMin;
        map.put("Item", com.sgscq.vpn.p5.z0("del", arrayList2, "upd", arrayList, "add", listF0));
        return w0Var;
    }

    public static java.util.Map P(java.util.LinkedHashMap linkedHashMap, java.util.Map map) {
        java.lang.Object obj = linkedHashMap.get("delta_data");
        return obj instanceof java.util.Map ? (java.util.Map) obj : map;
    }

    public static int P0(java.util.Map map, java.util.Map map2, java.lang.String str, int i2) {
        int iB0;
        java.lang.String[] strArr = {"gold", "yuanbao", "num", "item_num", "buy_num"};
        int iC0 = 0;
        if (map2 == null) {
            iB0 = 0;
            break;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= 5) {
                iB0 = 0;
                break;
            }
            iB0 = C0(map2.get(strArr[i3]), 0);
            if (iB0 > 0) {
                break;
            }
            i3++;
        }
        java.util.Map mapE0 = E0(str, map);
        if (iB0 <= 0) {
            iB0 = B0(0, "gold", mapE0);
        }
        if (iB0 <= 0) {
            java.lang.String strE0 = e0(map2, "product_id", "pk_id", "id");
            if (strE0.isEmpty() && mapE0 != null) {
                strE0 = java.lang.String.valueOf(mapE0.getOrDefault("product_id", ""));
            }
            if ("charge_6480".equals(strE0)) {
                iC0 = 64800;
            } else {
                java.lang.Object obj = w(0, null).get("product_list");
                if (obj instanceof java.util.List) {
                    for (java.lang.Object obj2 : (java.util.List) obj) {
                        if (obj2 instanceof java.util.Map) {
                            java.util.Map map3 = (java.util.Map) obj2;
                            if (c.a.B(map3, "pk_id", "", strE0)) {
                                iC0 = C0(map3.get("gift_gold"), 0);
                                break;
                            }
                        }
                    }
                }
            }
            iB0 = iC0;
        }
        return iB0 <= 0 ? java.lang.Math.max(1, i2) * 10 : iB0;
    }

    public static java.util.LinkedHashMap Q(java.util.Map map) {
        java.lang.Object obj = map.get("Item");
        if (!(obj instanceof java.util.Map)) {
            return com.sgscq.vpn.p5.z0("Item", com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "upd", new java.util.ArrayList(), "add", new java.util.ArrayList()), new java.lang.Object[0]);
        }
        java.util.Map map2 = (java.util.Map) obj;
        return com.sgscq.vpn.p5.z0("Item", com.sgscq.vpn.p5.z0("del", map2.get("del") instanceof java.util.List ? new java.util.ArrayList((java.util.List) map2.get("del")) : new java.util.ArrayList(), "upd", map2.get("upd") instanceof java.util.List ? new java.util.ArrayList((java.util.List) map2.get("upd")) : new java.util.ArrayList(), "add", c.a.n("del", new java.util.ArrayList(), new java.lang.Object[]{"upd", new java.util.ArrayList(), "add", com.sgscq.vpn.w1.f0("Item", map)}, map, "Item")), new java.lang.Object[0]);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x005a  */
    public static int Q0(java.lang.String str, java.util.Map map, java.util.Map map2) {
        int iC0;
        int iI0;
        java.lang.String[] strArr = {"rmb", "money", "amount", "price", "pay_money"};
        if (map2 != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    iC0 = 0;
                    break;
                }
                iC0 = C0(map2.get(strArr[i2]), 0);
                if (iC0 > 0) {
                    break;
                }
                i2++;
            }
        } else {
            iC0 = 0;
            break;
        }
        if (iC0 <= 0) {
            if (map2 == null) {
                iC0 = 0;
            } else {
                java.lang.String strE0 = e0(map2, "product_id", "pk_id", "id");
                if (strE0.startsWith("charge_")) {
                    iI0 = C0(strE0.substring(7), 0);
                } else if (strE0.isEmpty() || (iI0 = I0(strE0)) <= 0) {
                    iC0 = 0;
                }
                iC0 = iI0;
            }
        }
        java.util.Map mapE0 = E0(str, map);
        if (iC0 <= 0) {
            iC0 = B0(0, "rmb", mapE0);
        }
        if (iC0 <= 0 && mapE0 != null) {
            iC0 = I0(java.lang.String.valueOf(mapE0.getOrDefault("product_id", "")));
        }
        if (iC0 > 0) {
            return iC0;
        }
        return 6;
    }

    public static int S0(java.lang.Object obj, int i2) {
        return com.sgscq.vpn.w1.l2(java.lang.String.valueOf(obj), i2);
    }

    public static int T0(int i2, java.lang.String str, java.util.Map map) {
        java.lang.Object obj = map.get(str);
        if (obj == null) {
            com.sgscq.vpn.z2.g("SGSCQ_SRV", "[safeReadInt] key not found: ".concat(str));
            return i2;
        }
        if (obj instanceof java.lang.Number) {
            int iIntValue = ((java.lang.Number) obj).intValue();
            com.sgscq.vpn.z2.e("SGSCQ_SRV", "[safeReadInt] key=" + str + " val=" + obj + " result=" + iIntValue);
            return iIntValue;
        }
        try {
            int i3 = (int) java.lang.Double.parseDouble(obj.toString());
            com.sgscq.vpn.z2.e("SGSCQ_SRV", "[safeReadInt] key=" + str + " val=" + obj + " result=" + i3);
            return i3;
        } catch (java.lang.Exception e2) {
            com.sgscq.vpn.z2.d("SGSCQ_SRV", "[safeReadInt] parse failed for key=" + str + " val=" + obj, e2);
            return i2;
        }
    }

    public static java.util.LinkedHashMap U0(java.lang.String str, java.lang.String str2, java.lang.String str3, int i2, int i3, int i4) {
        return com.sgscq.vpn.p5.z0("pk_id", str, "item_id", str2, "item_name", str3, "item_num", java.lang.Integer.valueOf(i4), "item_type", java.lang.Integer.valueOf(i2), "price", java.lang.Integer.valueOf(i3), "discount_price", java.lang.Integer.valueOf(i3), "currency_type", 1, "exchange_num", 999, "exchanged_num", 0, "is_hot", java.lang.Boolean.FALSE);
    }

    public static java.lang.String V(java.lang.String str) {
        if (str == null || str.trim().isEmpty()) {
            return "local_order_" + java.lang.System.currentTimeMillis();
        }
        java.lang.String strTrim = str.trim();
        if (strTrim.startsWith("[") && strTrim.endsWith("]")) {
            strTrim = strTrim.substring(1, strTrim.length() - 1).trim();
        }
        if (strTrim.startsWith("\"") && strTrim.endsWith("\"") && strTrim.length() >= 2) {
            strTrim = strTrim.substring(1, strTrim.length() - 1);
        }
        if (!strTrim.isEmpty()) {
            return strTrim;
        }
        return "local_order_" + java.lang.System.currentTimeMillis();
    }

    public static boolean V0(java.lang.String str, int i2) {
        if ("51".equals(str)) {
            return i2 >= 4;
        }
        return !"52".equals(str) || i2 >= 5;
    }

    public static java.util.LinkedHashMap W(java.lang.String str) {
        return com.sgscq.vpn.p5.z0("ret", -1, "code", -1, "result", java.lang.Boolean.FALSE, "msg", str, "error_code", -1, "add_list", new java.util.ArrayList());
    }

    public static boolean W0(int i2, java.lang.String str, java.util.Map map) {
        int iMax = java.lang.Math.max(0, i2);
        java.util.List listF0 = com.sgscq.vpn.w1.f0("Item", map);
        java.util.List listZ0 = z0(map);
        java.util.List listY0 = y0(map);
        java.util.Iterator it = listF0.iterator();
        while (it.hasNext()) {
            java.util.Map map2 = (java.util.Map) it.next();
            if (c.a.C(map2, "id", "", "item_id", str)) {
                int iS0 = S0(map2.getOrDefault("num", map2.getOrDefault("item_num", 0)), 0);
                if (iS0 < iMax) {
                    return false;
                }
                int i3 = iS0 - iMax;
                if (i3 <= 0) {
                    it.remove();
                    java.lang.Object obj = map2.get("pk_id");
                    if (obj != null && !listZ0.contains(java.lang.String.valueOf(obj))) {
                        listZ0.add(java.lang.String.valueOf(obj));
                    }
                } else {
                    map2.put("num", java.lang.Integer.valueOf(i3));
                    map2.put("item_num", java.lang.Integer.valueOf(i3));
                    g(listY0, map2);
                }
                map.put("Item", com.sgscq.vpn.p5.z0("del", listZ0, "upd", listY0, "add", listF0));
                return true;
            }
        }
        return iMax == 0;
    }

    public static java.util.LinkedHashMap X0() {
        return com.sgscq.vpn.p5.z0("ret", 0, "code", 0, "result", java.lang.Boolean.TRUE, "msg", "success", "error_code", 0);
    }

    public static void Y(java.lang.String str, java.util.LinkedHashMap linkedHashMap, java.util.Map map) {
        int iX1 = com.sgscq.vpn.p5.x1(com.sgscq.vpn.cloud.m0.b0(str, map), com.sgscq.vpn.w1.l2(java.lang.String.valueOf(linkedHashMap.get("price")), com.sgscq.vpn.w1.l2(java.lang.String.valueOf(linkedHashMap.get("discount_price")), 0)), str, map);
        c.a.s(iX1, linkedHashMap, "item_price", iX1, "price", iX1, "discount_price");
    }

    public static com.sgscq.vpn.t4 Y0(java.util.List list, java.lang.String str, java.lang.String str2, boolean z) {
        if (str != null && !str.isEmpty()) {
            for (java.lang.Object obj : list) {
                if (obj instanceof java.util.Map) {
                    java.util.Map map = (java.util.Map) obj;
                    if (c.a.B(map, "pk_id", "", str)) {
                        java.lang.String strValueOf = java.lang.String.valueOf(map.getOrDefault("item_id", ""));
                        if (!strValueOf.equals("600032")) {
                            if (!strValueOf.equals(str2)) {
                                com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Wine] item type mismatch: got " + strValueOf + " expected " + str2 + " or 600032");
                                break;
                            }
                            if (z) {
                                com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Wine] ten draw requires JiangJunZhan, got regular cup: ".concat(strValueOf));
                                return null;
                            }
                        } else if (!z) {
                            com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Wine] ten-draw cup cannot be used for single draw: ".concat(str));
                            return null;
                        }
                        int iD0 = D0(map.get("item_num"));
                        if (iD0 <= 0) {
                            com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Wine] ignore zero-count cup: " + strValueOf + " pk=" + str);
                            return null;
                        }
                        if (iD0 >= 1) {
                            return new com.sgscq.vpn.t4(iD0 - 1, str, strValueOf);
                        }
                        com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Wine] insufficient cup: " + strValueOf + " have=" + iD0 + " need=1");
                        return null;
                    }
                }
            }
        }
        return null;
    }

    public static void Z(android.content.Context context, java.lang.String str, java.util.LinkedHashMap linkedHashMap, java.util.Map map) {
        if (com.sgscq.vpn.cloud.m0.y1(str)) {
            int iN2 = com.sgscq.vpn.cloud.m0.n2(map);
            linkedHashMap.put("used_num", java.lang.Integer.valueOf(com.sgscq.vpn.cloud.m0.b0(str, map)));
            linkedHashMap.put("all_num", java.lang.Integer.valueOf(com.sgscq.vpn.cloud.m0.i2(iN2, context, str)));
            linkedHashMap.put("next_all_num", java.lang.Integer.valueOf(com.sgscq.vpn.cloud.m0.M1(iN2, context, str)));
            linkedHashMap.put("next_vip_level", java.lang.Integer.valueOf(com.sgscq.vpn.cloud.m0.N1(iN2, context, str)));
            Y(str, linkedHashMap, map);
        }
    }

    public static void Z0(java.util.LinkedHashMap linkedHashMap, java.util.Map map, java.lang.String str, int i2, android.content.Context context) {
        if (!com.sgscq.vpn.cloud.m0.y1(str) || com.sgscq.vpn.cloud.m0.o1(str)) {
            return;
        }
        com.sgscq.vpn.cloud.m0.D2(com.sgscq.vpn.cloud.m0.x2(str, map) + i2, str, map);
        Z(context, str, linkedHashMap, map);
    }

    public static java.util.Map a0(java.lang.String str, java.lang.String str2, java.util.Map map) {
        if (str2 != null && !str2.isEmpty()) {
            java.lang.Object obj = map.get(str);
            if (!(obj instanceof java.util.Map)) {
                return null;
            }
            java.lang.Object obj2 = ((java.util.Map) obj).get("add");
            if (!(obj2 instanceof java.util.List)) {
                return null;
            }
            for (java.lang.Object obj3 : (java.util.List) obj2) {
                if (obj3 instanceof java.util.Map) {
                    java.util.Map map2 = (java.util.Map) obj3;
                    if (c.a.B(map2, "pk_id", "", str2)) {
                        return map2;
                    }
                }
            }
        }
        return null;
    }

    public static java.util.LinkedHashMap a1(int i2, int i3, int i4) {
        return com.sgscq.vpn.p5.z0("free_end_time", java.lang.Integer.valueOf(i2), "free_times", java.lang.Integer.valueOf(i3), "price", java.lang.Integer.valueOf(i4));
    }

    public static void b(java.util.ArrayList arrayList, java.util.Map map, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, int i2, boolean z, int i3) {
        int iH0 = h0(str, map);
        e(arrayList, str, str2, str3, str4, i2, 999, iH0, z && iH0 < 999, 5, i3);
    }

    public static java.lang.String b0(java.lang.String str, java.util.List list) {
        for (java.lang.Object obj : list) {
            if (obj instanceof java.util.Map) {
                java.util.Map map = (java.util.Map) obj;
                if (c.a.B(map, "item_id", "", str) && D0(map.get("item_num")) > 0) {
                    java.lang.String strValueOf = java.lang.String.valueOf(map.getOrDefault("pk_id", ""));
                    if (!strValueOf.isEmpty()) {
                        return strValueOf;
                    }
                }
            }
        }
        return null;
    }

    public static boolean b1(java.lang.Object obj) {
        if (obj == null) {
            return true;
        }
        if (obj instanceof java.lang.Boolean) {
            return ((java.lang.Boolean) obj).booleanValue();
        }
        java.lang.String strValueOf = java.lang.String.valueOf(obj);
        return ("false".equalsIgnoreCase(strValueOf) || S0(strValueOf, 1) == 0) ? false : true;
    }

    public static java.io.File c0(java.lang.String str) {
        java.io.File file = new java.io.File(java.lang.System.getProperty("user.dir", "."));
        for (int i2 = 0; i2 < 4 && file != null; i2++) {
            java.io.File file2 = new java.io.File(file, str);
            if (file2.isFile()) {
                return file2;
            }
            file = file.getParentFile();
        }
        return new java.io.File(str);
    }

    public static int c1(java.lang.String str, java.util.Map map) {
        if (str == null || str.isEmpty()) {
            return 0;
        }
        return !c.a.B(map, "wish_free_last_used_day", "", str) ? 1 : 0;
    }

    public static java.util.Map d(int i2, int i3, java.lang.String str, java.util.Map map) {
        int iMax = java.lang.Math.max(1, i2);
        if (com.sgscq.vpn.p5.h0(str)) {
            com.sgscq.vpn.p5.c(iMax, str, map);
            return com.sgscq.vpn.p5.e1(iMax, i3, str);
        }
        java.lang.String str2 = "Item";
        java.util.List listF0 = com.sgscq.vpn.w1.f0("Item", map);
        java.util.List listZ0 = z0(map);
        java.util.List listY0 = y0(map);
        java.util.Iterator it = listF0.iterator();
        while (true) {
            java.lang.String str3 = str2;
            if (!it.hasNext()) {
                java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
                c.a.x(str3, map, linkedHashMap, "pk_id", "id", str);
                c.a.z(linkedHashMap, "item_id", str, iMax, "num", iMax, "item_num");
                linkedHashMap.put("item_type", java.lang.Integer.valueOf(i3));
                linkedHashMap.put("type", java.lang.String.valueOf(i3));
                linkedHashMap.put("is_new", java.lang.Boolean.TRUE);
                listF0.add(linkedHashMap);
                g(listY0, linkedHashMap);
                map.put(str3, com.sgscq.vpn.p5.z0("del", listZ0, "upd", listY0, "add", listF0));
                return linkedHashMap;
            }
            java.util.Map map2 = (java.util.Map) it.next();
            java.util.Iterator it2 = it;
            if (c.a.C(map2, "id", "", "item_id", str)) {
                int iS0 = S0(map2.getOrDefault("num", map2.getOrDefault("item_num", 0)), 0) + iMax;
                map2.put("num", java.lang.Integer.valueOf(iS0));
                map2.put("item_num", java.lang.Integer.valueOf(iS0));
                map2.put("item_type", java.lang.Integer.valueOf(i3));
                map2.put("type", java.lang.String.valueOf(i3));
                g(listY0, map2);
                map.put(str3, com.sgscq.vpn.p5.z0("del", listZ0, "upd", listY0, "add", listF0));
                return map2;
            }
            str2 = str3;
            it = it2;
        }
    }

    public static java.util.Map d0(java.lang.String str, java.util.Map map) {
        if (str != null && !str.isEmpty()) {
            java.lang.Object obj = map.get("GeneralSoul");
            if (!(obj instanceof java.util.Map)) {
                return null;
            }
            java.lang.Object obj2 = ((java.util.Map) obj).get("add");
            if (!(obj2 instanceof java.util.List)) {
                return null;
            }
            for (java.lang.Object obj3 : (java.util.List) obj2) {
                if (obj3 instanceof java.util.Map) {
                    java.util.Map map2 = (java.util.Map) obj3;
                    if (c.a.B(map2, "general_id", "", str)) {
                        return map2;
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x013f  */
    public static void e(java.util.ArrayList arrayList, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, int i2, int i3, int i4, boolean z, int i5, int i6) {
        java.util.ArrayList arrayListV0;
        com.sgscq.vpn.b2 b2Var;
        java.util.HashMap mapP = c.a.p("pk_id", str, "item_id", str2);
        mapP.put("item_price", java.lang.Integer.valueOf(i2));
        mapP.put("discount_price", java.lang.Integer.valueOf(i2));
        mapP.put("currency_type", java.lang.Integer.valueOf(i5));
        mapP.put("purchase_num", java.lang.Integer.valueOf(i3));
        mapP.put("purchased_num", java.lang.Integer.valueOf(i4));
        mapP.put("is_purchased", java.lang.Integer.valueOf(z ? 1 : 0));
        mapP.put("can_exchange", java.lang.Boolean.valueOf(z));
        mapP.put("open_time", 0);
        mapP.put("close_time", 0);
        mapP.put("vip_level", 0);
        mapP.put("tag_id", 0);
        mapP.put("is_notice", "0");
        mapP.put("item_title", str3);
        mapP.put("item_name", str3);
        mapP.put("name", str3);
        mapP.put("item_desc", str4);
        mapP.put("item_num", java.lang.Integer.valueOf(i6));
        mapP.put("num", java.lang.Integer.valueOf(i6));
        if ("790196".equals(str2)) {
            arrayListV0 = com.sgscq.vpn.p5.v0(com.sgscq.vpn.p5.z0("id", "600012", "num", 1000, "type", 5));
        } else if ("790195".equals(str2)) {
            arrayListV0 = com.sgscq.vpn.p5.v0(com.sgscq.vpn.p5.z0("id", "600012", "num", 700, "type", 5));
        } else if ("790194".equals(str2)) {
            arrayListV0 = com.sgscq.vpn.p5.v0(com.sgscq.vpn.p5.z0("id", "600012", "num", 500, "type", 5));
        } else if ("792328".equals(str2) || "9181001".equals(str2)) {
            arrayListV0 = com.sgscq.vpn.p5.v0(com.sgscq.vpn.p5.z0("id", "181001", "num", java.lang.Integer.valueOf(i6), "type", 6));
        } else {
            if (!"792329".equals(str2) && !"9181002".equals(str2)) {
                if (str2 != null) {
                    java.util.Iterator it = com.sgscq.vpn.c2.f239b.iterator();
                    do {
                        if (it.hasNext()) {
                            b2Var = (com.sgscq.vpn.b2) it.next();
                        }
                    } while (!b2Var.f199a.equals(str2));
                    if (b2Var != null) {
                        arrayListV0 = com.sgscq.vpn.p5.v0(com.sgscq.vpn.p5.z0("id", b2Var.f200b, "num", java.lang.Integer.valueOf(i6), "type", 6));
                    }
                    arrayList.add(mapP);
                }
                java.util.TimeZone timeZone = com.sgscq.vpn.c2.f238a;
                b2Var = null;
                if (b2Var != null) {
                    arrayListV0 = com.sgscq.vpn.p5.v0(com.sgscq.vpn.p5.z0("id", b2Var.f200b, "num", java.lang.Integer.valueOf(i6), "type", 6));
                }
                arrayList.add(mapP);
            }
            arrayListV0 = com.sgscq.vpn.p5.v0(com.sgscq.vpn.p5.z0("id", "181002", "num", java.lang.Integer.valueOf(i6), "type", 6));
        }
        mapP.put("add_list", arrayListV0);
        arrayList.add(mapP);
    }

    public static java.lang.String e0(java.util.Map map, java.lang.String... strArr) {
        if (map == null) {
            return "";
        }
        for (java.lang.String str : strArr) {
            java.lang.String str2 = (java.lang.String) map.get(str);
            if (str2 != null && !str2.trim().isEmpty()) {
                return str2.trim();
            }
        }
        return "";
    }

    public static void f(int i2, java.lang.String str, java.lang.String str2, java.util.ArrayList arrayList) {
        arrayList.add(com.sgscq.vpn.p5.z0("pk_id", str, "item_id", str2, "item_price", java.lang.Integer.valueOf(i2), "price", java.lang.Integer.valueOf(i2), "discount_price", java.lang.Integer.valueOf(i2), "currency_type", 1, "purchase_num", 999, "purchased_num", 0, "is_purchased", 1, "open_time", 0, "close_time", 0, "vip_level", 0, "tag_id", 0, "can_exchange", java.lang.Boolean.TRUE, "is_notice", "0"));
    }

    public static java.lang.String f0(java.util.Map map, java.lang.String... strArr) {
        if (map == null) {
            return "";
        }
        for (java.lang.String str : strArr) {
            java.lang.String str2 = (java.lang.String) map.get(str);
            if (str2 != null && !str2.isEmpty()) {
                return str2;
            }
        }
        return "";
    }

    public static void g(java.util.List list, java.util.Map map) {
        if (list.contains(map)) {
            return;
        }
        list.add(map);
    }

    public static int g0(java.lang.String str, java.util.Map map) {
        if (map != null && !str.isEmpty()) {
            if ("791438".equals(str)) {
                java.lang.Object obj = map.get("purchased_daily_gift_items");
                if (!(obj instanceof java.util.Map)) {
                    return 0;
                }
                java.lang.Object obj2 = ((java.util.Map) obj).get(str);
                java.lang.String strB = com.sgscq.vpn.c7.b();
                if (!(obj2 instanceof java.util.Map)) {
                    return strB.equals(java.lang.String.valueOf(obj2)) ? 1 : 0;
                }
                java.util.Map map2 = (java.util.Map) obj2;
                if (c.a.A(map2, "day", strB)) {
                    return c.a.e(map2, "count", 0);
                }
                return 0;
            }
            java.lang.Object obj3 = map.get("purchased_gift_items");
            if (obj3 instanceof java.util.List) {
                java.util.Iterator it = ((java.util.List) obj3).iterator();
                while (it.hasNext()) {
                    if (str.equals(java.lang.String.valueOf(it.next()))) {
                        return 1;
                    }
                }
            }
        }
        return 0;
    }

    public static void h(java.util.ArrayList arrayList, java.util.Map map) {
        if (map == null) {
            return;
        }
        java.lang.String strValueOf = java.lang.String.valueOf(map.getOrDefault("pk_id", ""));
        java.util.Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (c.a.B((java.util.Map) it.next(), "pk_id", "", strValueOf)) {
                return;
            }
        }
        arrayList.add(map);
    }

    public static int h0(java.lang.String str, java.util.Map map) {
        if (map == null || str.isEmpty()) {
            return 0;
        }
        java.lang.Object obj = map.get("purchased_shop_item_goods");
        if (!(obj instanceof java.util.Map)) {
            return 0;
        }
        java.util.Map map2 = (java.util.Map) obj;
        if (!c.a.A(map2, "day", com.sgscq.vpn.c7.b())) {
            return 0;
        }
        java.lang.Object obj2 = map2.get("counts");
        if (obj2 instanceof java.util.Map) {
            return c.a.e((java.util.Map) obj2, str, 0);
        }
        return 0;
    }

    public static java.util.LinkedHashMap m(int i2, int i3, java.lang.String str) {
        java.lang.Boolean bool = java.lang.Boolean.TRUE;
        return com.sgscq.vpn.p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "order_list", java.util.Collections.singletonList(com.sgscq.vpn.p5.z0("order_id", str, "orderId", str, "is_completed", bool, "price", java.lang.Integer.valueOf(i2), "gold", java.lang.Integer.valueOf(i3), "pay_status", 1, "status", 1)));
    }

    public static boolean o0(java.lang.String str, java.util.Map map) {
        if (str != null && !str.isEmpty()) {
            java.lang.Object obj = map.get("completed_recharge_orders");
            if (!(obj instanceof java.util.List)) {
                return false;
            }
            java.util.Iterator it = ((java.util.List) obj).iterator();
            while (it.hasNext()) {
                if (str.equals(java.lang.String.valueOf(it.next()))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static java.util.LinkedHashMap p(java.lang.String str, int i2, java.lang.Object obj, java.lang.Object obj2) {
        return com.sgscq.vpn.p5.z0("pk_id", obj, "id", str, "general_id", str, "num", java.lang.Integer.valueOf(i2), "item_num", java.lang.Integer.valueOf(i2), "item_type", 6, "type", 6, "card_type", obj2, "is_new", java.lang.Boolean.TRUE);
    }

    public static java.util.ArrayList q(com.sgscq.vpn.w1 w1Var) {
        java.lang.String strR0;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.String str : w1Var.i0()) {
            java.util.Map mapJ0 = w1Var.J0(str);
            if (com.sgscq.vpn.w1.D1(mapJ0) && D0(mapJ0.get("grade")) == 2 && !str.isEmpty() && ((strR0 = w1Var.R0(str)) == null || !strR0.startsWith("魔"))) {
                arrayList.add(str);
            }
        }
        java.util.Collections.sort(arrayList);
        return arrayList;
    }

    public static int q0(java.util.Map map) {
        java.lang.String strB = com.sgscq.vpn.c7.b();
        if (map == null || strB == null || strB.isEmpty()) {
            return 0;
        }
        java.lang.Object obj = map.get("purchased_spirit_stone_goods");
        if (!(obj instanceof java.util.Map)) {
            return 0;
        }
        java.util.Map map2 = (java.util.Map) obj;
        if (!c.a.A(map2, "day", strB)) {
            return 0;
        }
        java.lang.Object obj2 = map2.get("counts");
        if (obj2 instanceof java.util.Map) {
            return c.a.e((java.util.Map) obj2, "600094", 0);
        }
        return 0;
    }

    public static java.util.LinkedHashMap r(int i2) {
        return com.sgscq.vpn.p5.z0("pk_id", "600034", "id", 4, "item_id", "600034", "num", java.lang.Integer.valueOf(i2), "item_num", java.lang.Integer.valueOf(i2), "item_type", 16, "type", 100, "is_new", java.lang.Boolean.TRUE);
    }

    public static boolean r0(java.lang.String str, java.util.Map map) {
        java.lang.Object obj = map.get("Atlas");
        if (!(obj instanceof java.util.Map)) {
            return false;
        }
        java.util.Map map2 = (java.util.Map) obj;
        java.lang.String[] strArr = {"add", "upd"};
        for (int i2 = 0; i2 < 2; i2++) {
            java.lang.Object obj2 = map2.get(strArr[i2]);
            if (obj2 instanceof java.util.List) {
                for (java.lang.Object obj3 : (java.util.List) obj2) {
                    if (obj3 instanceof java.util.Map) {
                        java.util.Map map3 = (java.util.Map) obj3;
                        if (c.a.C(map3, "pk_id", "", "general_id", str) && c.a.B(map3, "atlas_status", "0", "2")) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static boolean s0(int i2, java.util.Map map) {
        if (i2 != 198 && i2 != 328 && i2 != 648) {
            return false;
        }
        if (map == null) {
            return true;
        }
        if (java.lang.Boolean.TRUE.equals(map.get("first_recharge_double_" + i2))) {
            return false;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder("first_recharge_double_");
        sb.append(i2);
        return !"true".equalsIgnoreCase(java.lang.String.valueOf(map.getOrDefault(sb.toString(), "false")));
    }

    public static boolean t0(java.util.Map map) {
        return map != null && map.containsKey("first_gold_wine");
    }

    public static java.util.ArrayList u(java.util.Map map) {
        com.sgscq.vpn.handler.p0.L();
        com.sgscq.vpn.handler.p0.a(map);
        int iL2 = com.sgscq.vpn.w1.l2(java.lang.String.valueOf(map.getOrDefault("ladderRankSalary", map.getOrDefault("ladder_rank_salary", 0))), 0);
        int iL3 = com.sgscq.vpn.w1.l2(java.lang.String.valueOf(map.getOrDefault("ladder_rank", 9999)), 9999);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int iG0 = g0("790196", map);
        int iG1 = g0("790195", map);
        int iG2 = g0("790194", map);
        e(arrayList, "L1", "790196", "天梯1名灵芝礼包", "灵芝1000个", 0, 1, iG0, iL3 == 1 && iG0 <= 0, 4, 1);
        e(arrayList, "L2", "790195", "天梯10名灵芝礼包", "灵芝700个", 0, 1, iG1, iL3 <= 10 && iG1 <= 0, 4, 1);
        e(arrayList, "L3", "790194", "天梯50名灵芝礼包", "灵芝500个", 0, 1, iG2, iL3 <= 50 && iG2 <= 0, 4, 1);
        int iH0 = h0("L4", map);
        int iH1 = h0("L6", map);
        e(arrayList, "L4", "791759", "灵芝×100", "灵芝×100", 10000, 999, iH0, iL2 >= 10000 && iH0 < 999, 4, 100);
        e(arrayList, "L6", "792707", "灵芝×1000", "灵芝×1000", 100000, 999, iH1, iL2 >= 100000 && iH1 < 999, 4, 1000);
        return arrayList;
    }

    public static boolean u0(java.lang.String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        if ("true".equalsIgnoreCase(str)) {
            return true;
        }
        try {
            return java.lang.Integer.parseInt(str.trim()) >= 1;
        } catch (java.lang.NumberFormatException unused) {
            return false;
        }
    }

    public static java.util.ArrayList v(java.util.Map map) {
        new com.sgscq.vpn.handler.x0(null);
        return u(map);
    }

    public static boolean v0(com.sgscq.vpn.w1 w1Var, java.lang.String str) {
        java.lang.String strR0 = w1Var.R0(str);
        return strR0 != null && strR0.startsWith("魔");
    }

    public static java.util.LinkedHashMap w(int i2, java.util.Map map) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        java.util.HashMap mapX0 = x0(1, 78, 1, "super_monthly_card", "超级月卡", "792742", "连续31天每日领300元宝");
        mapX0.put("tag_id", 2);
        mapX0.put("gift_gold", "780");
        mapX0.put("remain_day", java.lang.Integer.valueOf(N0("super_monthly_card", map)));
        arrayList2.add(mapX0);
        arrayList.add(new java.util.HashMap(mapX0));
        java.util.HashMap mapX1 = x0(1, 30, 1, "monthly_card", "月卡", "600033", "连续31天每日领100元宝");
        mapX1.put("tag_id", 2);
        mapX1.put("gift_gold", "300");
        mapX1.put("remain_day", java.lang.Integer.valueOf(N0("monthly_card", map)));
        arrayList2.add(mapX1);
        arrayList.add(new java.util.HashMap(mapX1));
        java.util.ArrayList arrayList3 = new java.util.ArrayList();
        arrayList3.add(x0(1, 0, 0, "gift_newbie", "新手大礼包", "720001", "免费领取新手礼包"));
        arrayList3.add(x0(1, 50, 1, "gift_vip_1", "VIP1礼包", "710021", "VIP1专属礼包"));
        arrayList3.add(x0(1, 150000, 1, "gift_vip_15_big", "至尊会员15礼包", "791836", "VIP15专属礼包"));
        if (i2 >= 3) {
            java.util.HashMap mapX2 = x0(64800, 6480, 1, "charge_6480", "64800元宝", "600034", "充值6480元获得64800元宝");
            mapX2.put("tag_id", 0);
            arrayList.add(mapX2);
        }
        int[] iArr = f1029d;
        for (int i3 = 0; i3 < 5; i3++) {
            int i4 = iArr[i3];
            int i5 = i4 * 10;
            java.util.HashMap mapX3 = x0(i5, i4, 1, a.b0.a("charge_", i4), i5 + "元宝", "600034", "充值" + i4 + "元获得" + i5 + "元宝");
            mapX3.put("tag_id", java.lang.Integer.valueOf(s0(i4, map) ? 9 : 0));
            arrayList.add(mapX3);
        }
        java.util.ArrayList arrayList4 = new java.util.ArrayList();
        java.util.HashMap mapX4 = x0(1, 6, 0, "first_recharge", "首充大礼包", "791758", "首充任意金额领取神将");
        mapX4.put("tag_id", 3);
        arrayList4.add(mapX4);
        return com.sgscq.vpn.p5.z0("ret", 0, "code", 0, "result", java.lang.Boolean.TRUE, "msg", "success", "error_code", 0, "product_list", arrayList, "monthly_list", arrayList2, "gift_list", arrayList3, "charge_list", arrayList4, "package_list", java.util.Collections.emptyList());
    }

    public static java.lang.String w0(android.content.Context context, java.lang.String str) {
        java.util.Map mapC1 = com.sgscq.vpn.w1.a1(context).c1(str);
        if (mapC1 == null) {
            return str;
        }
        java.lang.String strValueOf = java.lang.String.valueOf(mapC1.getOrDefault("name", ""));
        return strValueOf.isEmpty() ? str : strValueOf;
    }

    public static java.util.LinkedHashMap x(java.util.Map map) {
        java.util.ArrayList arrayListK0;
        java.lang.String str;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (map != null && (str = (java.lang.String) map.getOrDefault("item_id", (java.lang.String) map.getOrDefault("id", ""))) != null && !str.trim().isEmpty()) {
            for (java.lang.String str2 : str.replace("[", "").replace("]", "").replace("\"", "").replace("'", "").split(",")) {
                java.lang.String strTrim = str2.trim();
                if (!strTrim.isEmpty() && !arrayList.contains(strTrim)) {
                    arrayList.add(strTrim);
                }
            }
        }
        if (arrayList.isEmpty()) {
            arrayListK0 = K0();
        } else {
            java.util.ArrayList<java.util.Map> arrayList2 = new java.util.ArrayList();
            arrayList2.addAll(K0());
            f(98, "13", "600009", arrayList2);
            f(198, "14", "600010", arrayList2);
            f(298, "15", "600011", arrayList2);
            java.util.ArrayList arrayList3 = new java.util.ArrayList();
            for (java.util.Map map2 : arrayList2) {
                if (arrayList.contains(java.lang.String.valueOf(map2.getOrDefault("item_id", "")))) {
                    arrayList3.add(map2);
                }
            }
            arrayListK0 = arrayList3;
        }
        java.util.LinkedHashMap linkedHashMapX0 = X0();
        linkedHashMapX0.put("quick_list", arrayListK0);
        linkedHashMapX0.put("item_list", arrayListK0);
        linkedHashMapX0.put("list", arrayListK0);
        return linkedHashMapX0;
    }

    public static java.util.HashMap x0(int i2, int i3, int i4, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        java.util.HashMap mapP = c.a.p("pk_id", str, "id", str3);
        mapP.put("product_id", str);
        mapP.put("item_id", str3);
        mapP.put("item_name", str2);
        mapP.put("item_type", "1");
        mapP.put("item_desc", str4);
        mapP.put("num", java.lang.String.valueOf(i2));
        mapP.put("item_num", java.lang.String.valueOf(i2));
        mapP.put("gift_gold", java.lang.String.valueOf(i2));
        mapP.put("price", java.lang.String.valueOf(i3));
        mapP.put("discount_price", java.lang.String.valueOf(i3));
        mapP.put("currency_type", java.lang.Integer.valueOf(i4 > 0 ? i4 : 1));
        mapP.put("price_type", java.lang.Integer.valueOf(i4));
        mapP.put("product_price", java.lang.String.valueOf(i3));
        mapP.put("product_title", str2);
        mapP.put("product_desc", str4);
        mapP.put("extra_gold", 0);
        mapP.put("remain_day", 0);
        mapP.put("purchase_num", 999);
        mapP.put("purchased_num", 0);
        mapP.put("is_purchased", 0);
        mapP.put("open_time", 0);
        mapP.put("close_time", 0);
        mapP.put("vip_level", 0);
        mapP.put("tag_id", 0);
        mapP.put("can_exchange", java.lang.Boolean.TRUE);
        mapP.put("is_notice", "0");
        mapP.put("item_title", str2);
        mapP.put("limit_num", 0);
        mapP.put("is_new", java.lang.Boolean.FALSE);
        return mapP;
    }

    public static java.lang.String y(int i2, int i3) {
        return "本次需要 ¥" + java.lang.Math.max(0, i2) + "，今日剩余 ¥" + java.lang.Math.max(0, i3);
    }

    public static java.util.List y0(java.util.Map map) {
        java.lang.Object obj = map.get("Item");
        if (obj instanceof java.util.Map) {
            java.lang.Object obj2 = ((java.util.Map) obj).get("upd");
            if (obj2 instanceof java.util.List) {
                return (java.util.List) obj2;
            }
        }
        return new java.util.ArrayList();
    }

    public static java.lang.String z(int i2, int i3) {
        return "当前/额度：" + java.lang.Math.max(0, i2) + "/" + (i3 == Integer.MAX_VALUE ? "无限" : java.lang.String.valueOf(java.lang.Math.max(0, i3)));
    }

    public static java.util.List z0(java.util.Map map) {
        java.lang.Object obj = map.get("Item");
        if (obj instanceof java.util.Map) {
            java.lang.Object obj2 = ((java.util.Map) obj).get("del");
            if (obj2 instanceof java.util.List) {
                return (java.util.List) obj2;
            }
        }
        return new java.util.ArrayList();
    }

    public final java.util.LinkedHashMap E(java.util.Map map, int i2, long j2) {
        java.lang.String strJ = c.a.j(map, "id", "", "general_id");
        java.util.LinkedHashMap linkedHashMapQ = c.a.q("general_id", strJ);
        linkedHashMapQ.put("general_name", map.getOrDefault("general_name", com.sgscq.vpn.w1.a1(this.f1033a.f901a).R0(strJ)));
        linkedHashMapQ.put("general_painting_id", strJ);
        linkedHashMapQ.put("general_painting", strJ);
        linkedHashMapQ.put("general_quality", "5");
        com.sgscq.vpn.handler.l.b(linkedHashMapQ, "general_star", "1", i2, "tag_id");
        linkedHashMapQ.put("show_time", 0L);
        linkedHashMapQ.put("disappear_time", java.lang.Long.valueOf(j2));
        linkedHashMapQ.put("general_level", "1");
        linkedHashMapQ.put("card_type", "1");
        linkedHashMapQ.put("general_avatar", strJ);
        return linkedHashMapQ;
    }

    public final java.lang.String F() {
        int i2;
        com.sgscq.vpn.handler.k0 k0Var = this.f1033a;
        com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(k0Var == null ? null : k0Var.f901a);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        w1VarA1.T(true);
        java.util.Iterator it = w1VarA1.v.iterator();
        while (true) {
            i2 = 0;
            if (!it.hasNext()) {
                break;
            }
            arrayList.add(E((java.util.Map) it.next(), 0, 0L));
        }
        long jG = com.sgscq.vpn.c7.g();
        java.util.Map mapF1 = w1VarA1.f1(jG, null);
        if (mapF1 != null) {
            java.util.List listEmptyList = com.sgscq.vpn.c7.f254i ? java.util.Collections.emptyList() : w1VarA1.g1(jG);
            com.sgscq.vpn.handler.k0 k0Var2 = this.f1033a;
            long j2 = jG * 1000;
            long j3 = com.sgscq.vpn.l2.a(k0Var2 != null ? k0Var2.f901a : null, j2).f1081h;
            arrayList.add(E(mapF1, 4, j3 <= j2 ? 0 : (int) java.lang.Math.min(2147483647L, ((j3 - j2) + 999) / 1000)));
            java.lang.StringBuilder sb = new java.lang.StringBuilder("[WineGeneralInfo] god=");
            w1VarA1.T(true);
            sb.append(w1VarA1.v.size());
            sb.append(" limited=");
            java.lang.String strJ = c.a.j(mapF1, "id", "", "general_id");
            while (true) {
                if (i2 >= listEmptyList.size()) {
                    i2 = -1;
                    break;
                }
                if (c.a.C((java.util.Map) listEmptyList.get(i2), "id", "", "general_id", strJ)) {
                    break;
                }
                i2++;
            }
            sb.append(i2);
            sb.append("/");
            sb.append(listEmptyList.size());
            sb.append(" current=");
            sb.append(mapF1.get("general_name"));
            com.sgscq.vpn.z2.e("SGSCQ_SRV", sb.toString());
        }
        return com.sgscq.vpn.p5.s1(arrayList);
    }

    public final java.lang.String F0(int i2, com.sgscq.vpn.w1 w1Var, java.lang.String str) {
        int i3;
        try {
            java.util.ArrayList arrayListQ = q(w1Var);
            if (!arrayListQ.isEmpty()) {
                try {
                    i3 = java.lang.Integer.parseInt(java.lang.String.valueOf(str));
                } catch (java.lang.Exception unused) {
                    java.lang.String strValueOf = java.lang.String.valueOf(str);
                    int iCharAt = 0;
                    for (int i4 = 0; i4 < strValueOf.length(); i4++) {
                        iCharAt = (iCharAt * 31) + strValueOf.charAt(i4);
                    }
                    i3 = iCharAt;
                }
                return (java.lang.String) arrayListQ.get(java.lang.Math.floorMod(i3 + i2, arrayListQ.size()));
            }
            java.util.ArrayList<java.lang.String> arrayListI0 = w1Var.i0();
            if (arrayListI0 == null || arrayListI0.isEmpty()) {
                return "111003";
            }
            java.util.ArrayList arrayList = new java.util.ArrayList();
            for (java.lang.String str2 : arrayListI0) {
                if (w1Var.C1(str2)) {
                    arrayList.add(str2);
                }
            }
            return !arrayList.isEmpty() ? (java.lang.String) arrayList.get(this.f1034b.nextInt(arrayList.size())) : "111003";
        } catch (java.lang.Exception e2) {
            c.a.D(e2, new java.lang.StringBuilder("[Wine] pickRandomGoldGeneral error: "), "SGSCQ_SRV");
            return "111003";
        }
    }

    public final byte[] L0(java.lang.String str) {
        return this.f1033a.n(com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("ret", -1, "code", -1, "error_code", "e_20002", "result", java.lang.Boolean.FALSE, "msg", str, "message", str, "toast", str, "tips", str, "pay_url", "", "status", 0, "pay_status", 0)));
    }

    public final byte[] M0() {
        return this.f1033a.n(com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("ret", -1, "code", -1, "error_code", -1, "result", java.lang.Boolean.FALSE, "msg", "网络时间未同步，充值功能暂不可用")));
    }

    public final int N(int i2) {
        com.sgscq.vpn.handler.k0 k0Var = this.f1033a;
        return com.sgscq.vpn.p5.B0(i2, k0Var == null ? null : k0Var.f901a);
    }

    public final java.lang.String R() {
        double[] dArrK0;
        int i2;
        try {
            com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(this.f1033a.f901a);
            java.util.ArrayList arrayList = new java.util.ArrayList();
            for (java.lang.String str : w1VarA1.i0()) {
                if (w1VarA1.C1(str) && (dArrK0 = w1VarA1.K0(str)) != null && dArrK0.length > 10 && ((i2 = (int) dArrK0[10]) == 3 || i2 == 4)) {
                    arrayList.add(str);
                }
            }
            return !arrayList.isEmpty() ? (java.lang.String) arrayList.get(this.f1034b.nextInt(arrayList.size())) : "113010";
        } catch (java.lang.Exception e2) {
            c.a.D(e2, new java.lang.StringBuilder("[Wine] Error loading copper pool: "), "SGSCQ_SRV");
            return "113010";
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0025  */
    public final java.lang.String R0(java.lang.String str, java.lang.String str2) {
        java.lang.String strY0;
        java.lang.String str3;
        android.content.Context context;
        java.lang.Object obj;
        com.sgscq.vpn.handler.k0 k0Var = this.f1033a;
        if (k0Var == null || (context = k0Var.f901a) == null) {
            strY0 = "";
        } else {
            try {
                com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(context);
                java.util.Map mapC1 = w1VarA1.c1(str);
                if (mapC1 == null || (obj = mapC1.get("desc")) == null) {
                    strY0 = "";
                } else {
                    strY0 = w1VarA1.Y0(java.lang.String.valueOf(obj));
                }
            } catch (java.lang.Exception unused) {
            }
        }
        if (strY0.isEmpty() || strY0.startsWith("itemdesc")) {
            switch (str) {
                case "361001":
                case "363001":
                    str3 = "可用于提升武将经验。";
                    strY0 = str3;
                    break;
                case "600001":
                    str3 = "可开启获得随机道具，需要金钥匙打开。";
                    strY0 = str3;
                    break;
                case "600002":
                    str3 = "可开启获得随机道具，需要银钥匙打开。";
                    strY0 = str3;
                    break;
                case "600003":
                    str3 = "可开启获得随机道具，需要铜钥匙打开。";
                    strY0 = str3;
                    break;
                case "600004":
                    str3 = "用于开启金宝箱。";
                    strY0 = str3;
                    break;
                case "600005":
                    str3 = "用于开启银宝箱。";
                    strY0 = str3;
                    break;
                case "600006":
                    str3 = "用于开启铜宝箱。";
                    strY0 = str3;
                    break;
                case "600007":
                    str3 = "香喷喷的包子，使用后恢复体力。";
                    strY0 = str3;
                    break;
                case "600008":
                    str3 = "热乎乎的红茶，使用后恢复精力。";
                    strY0 = str3;
                    break;
                case "600009":
                    str3 = "武将传承必备，可传承80%的武将经验。";
                    strY0 = str3;
                    break;
                case "600010":
                    str3 = "武将传承必备，可传承100%的武将经验。";
                    strY0 = str3;
                    break;
                case "600011":
                    str3 = "武将传承必备，可传承100%的武将经验，同时返还成功修炼所用灵芝。";
                    strY0 = str3;
                    break;
                case "600012":
                    str3 = "武将修炼必备，可调整武将属性。天梯中使用俸禄兑换，或开宝箱获得。";
                    strY0 = str3;
                    break;
                case "600013":
                    str3 = "武将修炼与练兵所需的珍贵道具。";
                    strY0 = str3;
                    break;
                case "600014":
                    str3 = "您想更与众不同一些么？您想低调的换个身份吗？使用我就可以了！";
                    strY0 = str3;
                    break;
                case "600023":
                    str3 = "此物可与神将、金将对酒，对酒时可直接购买，或在商城购买。";
                    strY0 = str3;
                    break;
                case "600024":
                    str3 = "此物可与神将、金将、银将对酒，对酒时可直接购买，或在商城购买。";
                    strY0 = str3;
                    break;
                case "600025":
                    str3 = "此物可与金将、银将、铜将对酒，对酒时可直接购买，或在商城购买。";
                    strY0 = str3;
                    break;
                case "600028":
                    str3 = "越老越要补啊，吃一口，可瞬间恢复40点体力。";
                    strY0 = str3;
                    break;
                case "600032":
                    str3 = "酒馆抽卡道具，可免费进行一次金酒杯十连抽。";
                    strY0 = str3;
                    break;
                case "600036":
                    str3 = "可以在世界频道说话";
                    strY0 = str3;
                    break;
                case "600037":
                    str3 = "使用额外许愿次数时的必备物品";
                    strY0 = str3;
                    break;
                case "600065":
                    str3 = "诏令一出，八方来援。用于解锁伙伴位置。";
                    strY0 = str3;
                    break;
                case "600076":
                    str3 = "可以为神品质装备增加宝石孔位。";
                    strY0 = str3;
                    break;
                case "600077":
                    str3 = "可以改变装备宝石孔位的属性。";
                    strY0 = str3;
                    break;
                case "600078":
                    str3 = "使用后随机获得一颗1级攻击、防御、生命或智力宝石。";
                    strY0 = str3;
                    break;
                case "791438":
                    str3 = "至尊会员1以上（含至尊会员1）每日可购买1次，内含二级经验神书×2";
                    strY0 = str3;
                    break;
                case "791550":
                    str3 = "至尊会员贵宾礼包";
                    strY0 = str3;
                    break;
                case "791758":
                    str3 = "打开可获得张飞×1、张飞魂魄×105、包子×2、红茶×2、灵芝×100";
                    strY0 = str3;
                    break;
                default:
                    if (!str.startsWith("710") && !str.startsWith("7927") && !"791836".equals(str)) {
                        strY0 = "";
                        break;
                    } else {
                        str3 = "至尊会员大礼包";
                        strY0 = str3;
                        break;
                    }
                    break;
            }
        }
        if (!strY0.isEmpty()) {
            return strY0;
        }
        if (str2 == null) {
            str2 = "";
        }
        return str2;
    }

    public final java.lang.String S(int i2, java.util.ArrayList arrayList) {
        double[] dArrK0;
        java.util.Map mapJ0;
        double[] dArrK1;
        java.util.Map mapJ1;
        try {
            com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(this.f1033a.f901a);
            java.util.ArrayList arrayList2 = new java.util.ArrayList();
            for (java.lang.String str : w1VarA1.i0()) {
                if (w1VarA1.C1(str) && (dArrK1 = w1VarA1.K0(str)) != null && dArrK1.length > 10 && dArrK1[10] == i2 && (i2 != 1 || ((mapJ1 = w1VarA1.J0(str)) != null && com.sgscq.vpn.w1.p1("1", mapJ1)))) {
                    if (i2 != 5 && !arrayList.contains(str)) {
                        arrayList2.add(str);
                    }
                }
            }
            boolean zIsEmpty = arrayList2.isEmpty();
            java.util.Random random = this.f1034b;
            if (!zIsEmpty) {
                return (java.lang.String) arrayList2.get(random.nextInt(arrayList2.size()));
            }
            for (java.lang.String str2 : w1VarA1.i0()) {
                if (w1VarA1.C1(str2) && (dArrK0 = w1VarA1.K0(str2)) != null && dArrK0.length > 10 && dArrK0[10] == i2 && (i2 != 1 || ((mapJ0 = w1VarA1.J0(str2)) != null && com.sgscq.vpn.w1.p1("1", mapJ0)))) {
                    if (i2 != 5) {
                        arrayList2.add(str2);
                    }
                }
            }
            if (!arrayList2.isEmpty()) {
                return (java.lang.String) arrayList2.get(random.nextInt(arrayList2.size()));
            }
            return R();
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder("[Wine] Error loading grade ");
            sb.append(i2);
            sb.append(" pool: ");
            c.a.D(e2, sb, "SGSCQ_SRV");
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x018c A[Catch: Exception -> 0x0199, TryCatch #0 {Exception -> 0x0199, blocks: (B:58:0x00de, B:60:0x00ea, B:62:0x00f7, B:64:0x00fd, B:65:0x0106, B:66:0x010f, B:68:0x0115, B:72:0x0124, B:74:0x012a, B:77:0x012e, B:80:0x0137, B:83:0x013e, B:84:0x0142, B:86:0x0148, B:87:0x014c, B:104:0x0191, B:88:0x0151, B:89:0x015e, B:91:0x0164, B:94:0x0171, B:96:0x0177, B:98:0x017a, B:100:0x0182, B:101:0x0186, B:103:0x018c), top: B:110:0x00de }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:53:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:88:0x0151 A[Catch: Exception -> 0x0199, TryCatch #0 {Exception -> 0x0199, blocks: (B:58:0x00de, B:60:0x00ea, B:62:0x00f7, B:64:0x00fd, B:65:0x0106, B:66:0x010f, B:68:0x0115, B:72:0x0124, B:74:0x012a, B:77:0x012e, B:80:0x0137, B:83:0x013e, B:84:0x0142, B:86:0x0148, B:87:0x014c, B:104:0x0191, B:88:0x0151, B:89:0x015e, B:91:0x0164, B:94:0x0171, B:96:0x0177, B:98:0x017a, B:100:0x0182, B:101:0x0186, B:103:0x018c), top: B:110:0x00de }] */
    /* JADX WARN: Code duplicated, block: B:91:0x0164 A[Catch: Exception -> 0x0199, TryCatch #0 {Exception -> 0x0199, blocks: (B:58:0x00de, B:60:0x00ea, B:62:0x00f7, B:64:0x00fd, B:65:0x0106, B:66:0x010f, B:68:0x0115, B:72:0x0124, B:74:0x012a, B:77:0x012e, B:80:0x0137, B:83:0x013e, B:84:0x0142, B:86:0x0148, B:87:0x014c, B:104:0x0191, B:88:0x0151, B:89:0x015e, B:91:0x0164, B:94:0x0171, B:96:0x0177, B:98:0x017a, B:100:0x0182, B:101:0x0186, B:103:0x018c), top: B:110:0x00de }] */
    public final java.lang.String T(int i2, java.util.ArrayList arrayList) {
        java.util.ArrayList arrayList2;
        int size;
        double[] dArrK0;
        double[] dArrK1;
        java.lang.String strU;
        java.lang.Object obj;
        double[] dArrK2;
        double[] dArrK3;
        int i3;
        java.util.Random random = this.f1034b;
        com.sgscq.vpn.handler.k0 k0Var = this.f1033a;
        if (i2 != 2) {
            if (i2 != 3) {
                return R();
            }
            com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(k0Var.f901a);
            java.util.ArrayList arrayList3 = new java.util.ArrayList();
            for (java.lang.String str : w1VarA1.i0()) {
                if (w1VarA1.C1(str) && !v0(w1VarA1, str) && (dArrK3 = w1VarA1.K0(str)) != null && dArrK3.length > 10 && ((i3 = (int) dArrK3[10]) == 3 || (i3 == 2 && arrayList.contains(str)))) {
                    arrayList3.add(str);
                }
            }
            if (random.nextInt(20) == 0) {
                java.util.ArrayList arrayList4 = new java.util.ArrayList();
                java.util.Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    java.lang.String str2 = (java.lang.String) it.next();
                    int i4 = java.lang.Integer.parseInt(str2);
                    if (i4 >= 100000 && i4 < 151000 && (dArrK2 = w1VarA1.K0(str2)) != null && dArrK2.length > 10 && dArrK2[10] == 1.0d && dArrK2[4] <= 635.0d && !v0(w1VarA1, str2)) {
                        arrayList4.add(str2);
                    }
                }
                if (arrayList4.size() > 10) {
                    obj = arrayList4.get(random.nextInt(arrayList4.size()));
                } else {
                    if (!arrayList3.isEmpty()) {
                        return R();
                    }
                    obj = arrayList3.get(random.nextInt(arrayList3.size()));
                }
            } else {
                if (!arrayList3.isEmpty()) {
                    return R();
                }
                obj = arrayList3.get(random.nextInt(arrayList3.size()));
            }
            return (java.lang.String) obj;
        }
        try {
            com.sgscq.vpn.w1 w1VarA2 = com.sgscq.vpn.w1.a1(k0Var.f901a);
            if (random.nextInt(3) != 0) {
                arrayList2 = new java.util.ArrayList();
                for (java.lang.String str3 : w1VarA2.i0()) {
                    if (w1VarA2.C1(str3) && (dArrK0 = w1VarA2.K0(str3)) != null && dArrK0.length > 10 && dArrK0[10] == 2.0d) {
                        arrayList2.add(str3);
                    }
                }
                if (!arrayList2.isEmpty()) {
                    size = arrayList2.size();
                }
                return R();
            }
            if (random.nextDouble() < 0.3d && (strU = U(w1VarA2, arrayList)) != null) {
                com.sgscq.vpn.z2.e("SGSCQ_SRV", "[Wine] Gold pool: new god general ".concat(strU));
                return strU;
            }
            arrayList2 = new java.util.ArrayList();
            java.util.Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                java.lang.String str4 = (java.lang.String) it2.next();
                int i5 = java.lang.Integer.parseInt(str4);
                if (i5 >= 100000 && i5 < 151000 && (dArrK1 = w1VarA2.K0(str4)) != null && dArrK1.length > 10 && dArrK1[10] == 1.0d && !v0(w1VarA2, str4)) {
                    arrayList2.add(str4);
                }
            }
            if (arrayList2.isEmpty()) {
                arrayList2 = new java.util.ArrayList();
                while (r14.hasNext()) {
                    if (w1VarA2.C1(str3)) {
                        arrayList2.add(str3);
                    }
                }
                if (!arrayList2.isEmpty()) {
                    size = arrayList2.size();
                }
                return R();
            }
            size = arrayList2.size();
            return (java.lang.String) arrayList2.get(random.nextInt(size));
        } catch (java.lang.Exception e2) {
            c.a.D(e2, new java.lang.StringBuilder("[Wine] Error loading gold pool: "), "SGSCQ_SRV");
        }
    }

    public final java.lang.String U(com.sgscq.vpn.w1 w1Var, java.util.ArrayList arrayList) {
        java.util.Map mapJ0;
        double[] dArrK0;
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        for (java.lang.String str : w1Var.i0()) {
            if (w1Var.C1(str) && !arrayList.contains(str) && !com.sgscq.vpn.w1.U.contains(java.lang.String.valueOf(str)) && (mapJ0 = w1Var.J0(str)) != null && com.sgscq.vpn.w1.p1("1", mapJ0) && (dArrK0 = w1Var.K0(str)) != null && dArrK0.length > 10 && ((int) dArrK0[10]) == 1) {
                arrayList2.add(str);
            }
        }
        if (arrayList2.isEmpty()) {
            return null;
        }
        return (java.lang.String) arrayList2.get(this.f1034b.nextInt(arrayList2.size()));
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00a7  */
    public final void X(java.lang.String str, java.util.HashMap map) {
        java.lang.String strValueOf;
        int i2;
        java.lang.String strY0;
        double[] dArrK0;
        com.sgscq.vpn.handler.k0 k0Var = this.f1033a;
        com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(k0Var == null ? null : k0Var.f901a);
        try {
            java.util.Map mapJ0 = w1VarA1.J0(str);
            try {
                if (mapJ0 != null) {
                    java.lang.Object obj = mapJ0.get("resource_id");
                    strValueOf = (obj == null || "0".equals(java.lang.String.valueOf(obj))) ? str : java.lang.String.valueOf(obj);
                    try {
                        java.lang.Object obj2 = mapJ0.get("grade");
                        if (obj2 != null) {
                            i2 = java.lang.Integer.parseInt(obj2.toString());
                        }
                        strY0 = w1VarA1.Y0("dialogname" + str + "01");
                    } catch (java.lang.Exception unused) {
                        i2 = 5;
                        strY0 = "";
                        map.put("general_level", 1);
                        map.put("general_naturalskill_id", java.lang.String.valueOf(map.getOrDefault("pk_id", str)));
                        map.put("resource_id", strValueOf);
                        map.put("grade", java.lang.Integer.valueOf(i2));
                        map.put("general_quality", java.lang.Integer.valueOf(i2));
                        map.put("general_star", 1);
                        map.put("general_painting_id", str);
                        map.put("dialog", com.sgscq.vpn.p5.M(strY0));
                        dArrK0 = w1VarA1.K0(str);
                        if (dArrK0 != null) {
                            map.put("base_hp", java.lang.String.valueOf(dArrK0[0]));
                            map.put("base_attack", java.lang.String.valueOf(dArrK0[1]));
                            map.put("base_defense", java.lang.String.valueOf(dArrK0[2]));
                            map.put("base_wisdom", java.lang.String.valueOf(dArrK0[3]));
                            map.put("general_hp_step", java.lang.String.valueOf(dArrK0[5]));
                            map.put("general_attack_step", java.lang.String.valueOf(dArrK0[6]));
                            map.put("general_defense_step", java.lang.String.valueOf(dArrK0[7]));
                            map.put("general_wisdom_step", java.lang.String.valueOf(dArrK0[8]));
                        }
                        map.put("general_status", "1");
                        map.put("status", "1");
                        map.put("major_pk_id", "");
                        map.put("talent_point", 0);
                        map.put("culture_info", new java.util.HashMap());
                        map.put("ganoderma_num", 0);
                        map.put("breachLevel", 1);
                        map.put("insight_level", 1);
                        map.put("lieutenant_skill_id", "0");
                        map.put("ls_type", 0);
                        map.put("ls_value", 0);
                    }
                    map.put("general_level", 1);
                    map.put("general_naturalskill_id", java.lang.String.valueOf(map.getOrDefault("pk_id", str)));
                    map.put("resource_id", strValueOf);
                    map.put("grade", java.lang.Integer.valueOf(i2));
                    map.put("general_quality", java.lang.Integer.valueOf(i2));
                    map.put("general_star", 1);
                    map.put("general_painting_id", str);
                    map.put("dialog", com.sgscq.vpn.p5.M(strY0));
                    dArrK0 = w1VarA1.K0(str);
                    if (dArrK0 != null && dArrK0.length > 8) {
                        map.put("base_hp", java.lang.String.valueOf(dArrK0[0]));
                        map.put("base_attack", java.lang.String.valueOf(dArrK0[1]));
                        map.put("base_defense", java.lang.String.valueOf(dArrK0[2]));
                        map.put("base_wisdom", java.lang.String.valueOf(dArrK0[3]));
                        map.put("general_hp_step", java.lang.String.valueOf(dArrK0[5]));
                        map.put("general_attack_step", java.lang.String.valueOf(dArrK0[6]));
                        map.put("general_defense_step", java.lang.String.valueOf(dArrK0[7]));
                        map.put("general_wisdom_step", java.lang.String.valueOf(dArrK0[8]));
                    }
                    map.put("general_status", "1");
                    map.put("status", "1");
                    map.put("major_pk_id", "");
                    map.put("talent_point", 0);
                    map.put("culture_info", new java.util.HashMap());
                    map.put("ganoderma_num", 0);
                    map.put("breachLevel", 1);
                    map.put("insight_level", 1);
                    map.put("lieutenant_skill_id", "0");
                    map.put("ls_type", 0);
                    map.put("ls_value", 0);
                }
                strValueOf = str;
                strY0 = w1VarA1.Y0("dialogname" + str + "01");
            } catch (java.lang.Exception unused2) {
                strY0 = "";
            }
            i2 = 5;
        } catch (java.lang.Exception unused3) {
            strValueOf = str;
        }
        map.put("general_level", 1);
        map.put("general_naturalskill_id", java.lang.String.valueOf(map.getOrDefault("pk_id", str)));
        map.put("resource_id", strValueOf);
        map.put("grade", java.lang.Integer.valueOf(i2));
        map.put("general_quality", java.lang.Integer.valueOf(i2));
        map.put("general_star", 1);
        map.put("general_painting_id", str);
        map.put("dialog", com.sgscq.vpn.p5.M(strY0));
        dArrK0 = w1VarA1.K0(str);
        if (dArrK0 != null) {
            map.put("base_hp", java.lang.String.valueOf(dArrK0[0]));
            map.put("base_attack", java.lang.String.valueOf(dArrK0[1]));
            map.put("base_defense", java.lang.String.valueOf(dArrK0[2]));
            map.put("base_wisdom", java.lang.String.valueOf(dArrK0[3]));
            map.put("general_hp_step", java.lang.String.valueOf(dArrK0[5]));
            map.put("general_attack_step", java.lang.String.valueOf(dArrK0[6]));
            map.put("general_defense_step", java.lang.String.valueOf(dArrK0[7]));
            map.put("general_wisdom_step", java.lang.String.valueOf(dArrK0[8]));
        }
        map.put("general_status", "1");
        map.put("status", "1");
        map.put("major_pk_id", "");
        map.put("talent_point", 0);
        map.put("culture_info", new java.util.HashMap());
        map.put("ganoderma_num", 0);
        map.put("breachLevel", 1);
        map.put("insight_level", 1);
        map.put("lieutenant_skill_id", "0");
        map.put("ls_type", 0);
        map.put("ls_value", 0);
    }

    public final int a() {
        com.sgscq.vpn.handler.k0 k0Var = this.f1033a;
        return com.sgscq.vpn.p5.A(k0Var == null ? null : k0Var.f901a);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0037  */
    public final void c(java.util.ArrayList arrayList, java.util.Map map, int i2, java.lang.String str, int i3, int i4, int i5, int i6) {
        int iE;
        if (i6 > i2) {
            return;
        }
        if (str.isEmpty()) {
            iE = 0;
        } else {
            java.lang.Object obj = map.get("purchased_lingzhi_goods");
            if (obj instanceof java.util.Map) {
                java.util.Map map2 = (java.util.Map) obj;
                if (c.a.A(map2, "day", com.sgscq.vpn.c7.b())) {
                    java.lang.Object obj2 = map2.get("counts");
                    if (obj2 instanceof java.util.Map) {
                        iE = c.a.e((java.util.Map) obj2, str, 0);
                    } else {
                        iE = 0;
                    }
                } else {
                    iE = 0;
                }
            } else {
                iE = 0;
            }
        }
        l(arrayList, str, "600012", i4 + "灵芝礼包", i3, N(i5), iE, i6);
        java.util.Map map3 = (java.util.Map) arrayList.get(arrayList.size() - 1);
        map3.put("item_num", java.lang.Integer.valueOf(i4));
        map3.put("num", java.lang.Integer.valueOf(i4));
        map3.put("item_desc", "购买后获得" + i4 + "灵芝");
        map3.put("add_list", java.util.Collections.singletonList(com.sgscq.vpn.p5.z0("id", "600012", "item_id", "600012", "num", java.lang.Integer.valueOf(i4), "item_num", java.lang.Integer.valueOf(i4), "type", 5, "item_type", 19, "level", 1)));
    }

    public final void i(java.util.ArrayList arrayList, java.util.Map map, int i2, java.lang.String str, java.lang.String str2, java.lang.String str3, int i3, int i4) {
        l(arrayList, str, str2, str3, i3, 1, g0(str2, map), i4);
        if (i4 <= i2 || arrayList.isEmpty()) {
            return;
        }
        ((java.util.Map) arrayList.get(arrayList.size() - 1)).put("is_purchased", 0);
    }

    /* JADX WARN: Code duplicated, block: B:153:0x04d0  */
    /* JADX WARN: Code duplicated, block: B:155:0x04e9  */
    /* JADX WARN: Code duplicated, block: B:157:0x04f1  */
    /* JADX WARN: Code duplicated, block: B:169:0x051b  */
    /* JADX WARN: Code duplicated, block: B:175:0x0550  */
    /* JADX WARN: Code duplicated, block: B:178:0x058d  */
    /* JADX WARN: Code duplicated, block: B:179:0x0590  */
    /* JADX WARN: Code duplicated, block: B:183:0x05a4  */
    /* JADX WARN: Code duplicated, block: B:184:0x05ac  */
    /* JADX WARN: Code duplicated, block: B:188:0x05c2  */
    /* JADX WARN: Code duplicated, block: B:245:0x071d A[PHI: r14
      0x071d: PHI (r14v10 boolean) = (r14v9 boolean), (r14v11 boolean) binds: [B:244:0x071b, B:241:0x070b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:247:0x0720 A[PHI: r14
      0x0720: PHI (r14v8 boolean) = (r14v6 boolean), (r14v9 boolean), (r14v11 boolean) binds: [B:246:0x071f, B:244:0x071b, B:241:0x070b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:343:0x0a83  */
    public final byte[] i0(java.lang.String str, java.util.Map map) {
        com.sgscq.vpn.handler.k0 k0Var;
        java.lang.String strS1;
        java.util.LinkedHashMap linkedHashMap;
        java.lang.String str2;
        java.util.Map map2;
        java.util.Map mapZ0;
        java.lang.String str3;
        java.util.LinkedHashMap linkedHashMapW;
        java.lang.String str4;
        java.lang.Object obj;
        boolean z;
        boolean z2;
        java.util.LinkedHashMap linkedHashMapX0;
        com.sgscq.vpn.h5 h5Var;
        java.util.LinkedHashMap linkedHashMapX1;
        int iA;
        java.util.Map map3;
        int i2;
        java.lang.String str5;
        java.lang.String strB;
        java.util.Map mapQ;
        java.util.Map linkedHashMap2;
        java.lang.String str6;
        java.lang.String str7;
        java.lang.String[] strArr;
        java.lang.String[] strArrK;
        java.lang.String strS2;
        int iA2;
        com.sgscq.vpn.handler.k0 k0Var2;
        java.util.Iterator it;
        java.util.Map mapJ0;
        int I;
        int I2;
        int I3;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean zStartsWith = str.startsWith("wine.");
        com.sgscq.vpn.handler.k0 k0Var3 = this.f1033a;
        if (zStartsWith) {
            if (!"wine.wineInfo".equals(str)) {
                if ("wine.wine".equals(str)) {
                    return n0(map);
                }
                if (!"wine.wineGeneralInfo".equals(str)) {
                    return k0Var3.n(com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("ret", 0, "code", 0, "result", java.lang.Boolean.TRUE, "msg", "success", "error_code", 0)));
                }
                java.util.Map mapW0 = k0Var3.f904d.w0(k0Var3.e(map));
                com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(k0Var3.f901a);
                java.util.ArrayList arrayList = new java.util.ArrayList();
                java.util.LinkedHashSet linkedHashSet = new java.util.LinkedHashSet();
                java.util.Iterator it2 = w1VarA1.i0().iterator();
                while (it2.hasNext()) {
                    java.lang.String str8 = (java.lang.String) it2.next();
                    if (str8 != null) {
                        if (str8.isEmpty()) {
                            it = it2;
                        } else {
                            it = it2;
                            if (!com.sgscq.vpn.w1.U.contains(str8) && w1VarA1.C1(str8) && (mapJ0 = w1VarA1.J0(str8)) != null && com.sgscq.vpn.w1.p1("1", mapJ0)) {
                                k0Var2 = k0Var3;
                                int iC0 = C0(mapJ0.get("grade"), 0);
                                if (iC0 >= 1 && iC0 <= 4 && linkedHashSet.add(str8)) {
                                    java.util.LinkedHashMap linkedHashMapR = c.a.r("general_id", str8, "id", str8);
                                    com.sgscq.vpn.handler.l.b(linkedHashMapR, "pk_id", str8, iC0, "grade");
                                    linkedHashMapR.put("general_name", w1VarA1.R0(str8));
                                    arrayList.add(linkedHashMapR);
                                }
                            }
                        }
                        k0Var2 = k0Var3;
                    } else {
                        k0Var2 = k0Var3;
                        it = it2;
                    }
                    it2 = it;
                    k0Var3 = k0Var2;
                }
                com.sgscq.vpn.handler.k0 k0Var4 = k0Var3;
                arrayList.sort(java.util.Comparator.comparingInt(new com.sgscq.vpn.n1(6)).thenComparingInt(new com.sgscq.vpn.n1(7)));
                java.util.LinkedHashMap linkedHashMapZ0 = com.sgscq.vpn.p5.z0("ret", 0, "code", 0, "result", java.lang.Boolean.TRUE, "msg", "success", "error_code", 0, "wine_info", arrayList, "show_general_list", arrayList, "gold_info", com.sgscq.vpn.p5.z0("free_end_time", 0, "free_times", 1, "price", 268), "silver_info", com.sgscq.vpn.p5.z0("free_end_time", 0, "free_times", 1, "price", 100), "copper_info", com.sgscq.vpn.p5.z0("free_end_time", 0, "free_times", 1, "price", 10), "gold_price", 268, "silver_price", 100, "copper_price", 10, "need_times", 5, "first_time_consume_gold", java.lang.Integer.valueOf(t0(mapW0) ? 1 : 0), "multi_price", 2680);
                java.lang.Object obj2 = linkedHashMapZ0.get("wine_info");
                com.sgscq.vpn.z2.e("SGSCQ_SRV", "[WineGeneralInfo] preview_generals=" + (obj2 instanceof java.util.List ? ((java.util.List) obj2).size() : 0));
                return k0Var4.n(com.sgscq.vpn.p5.s1(linkedHashMapZ0));
            }
            java.lang.String strE = k0Var3.e(map);
            com.sgscq.vpn.h5 h5Var2 = k0Var3.f904d;
            java.util.Map mapW1 = h5Var2.w0(strE);
            long jG = com.sgscq.vpn.c7.g();
            if (mapW1 != null) {
                I3 = I(mapW1, "wine_gold_time", jG, 1800);
                I = I(mapW1, "wine_silver_time", jG, 600);
                I2 = I(mapW1, "wine_copper_time", jG, 300);
            } else {
                I = 0;
                I2 = 0;
                I3 = 0;
            }
            int i7 = I3 == 0 ? 1 : 0;
            int i8 = I == 0 ? 1 : 0;
            java.lang.String strF = F();
            boolean zT0 = t0(mapW1);
            if (mapW1 != null) {
                i3 = 0;
                i4 = k0Var3.i(0, "gold_wine_count", mapW1);
            } else {
                i3 = 0;
                i4 = 0;
            }
            if (mapW1 != null) {
                i6 = k0Var3.i(i3, "gold_guarantee_phase", mapW1);
                i5 = 1;
            } else {
                i5 = 1;
                i6 = 0;
            }
            int i9 = i6 <= i5 ? 4 : 10;
            int i10 = i9 - ((i4 + i5) % i9);
            if (i10 == i9) {
                i10 = 0;
            }
            java.util.LinkedHashMap linkedHashMapC = C(I3, i7, I, i8, I2, i10, i9, zT0 ? 1 : 0, strF);
            java.util.LinkedHashMap linkedHashMap3 = new java.util.LinkedHashMap();
            linkedHashMap3.put("error_code", 0);
            linkedHashMap3.put("ret", 0);
            linkedHashMap3.put("code", 0);
            linkedHashMap3.put("result", java.lang.Boolean.TRUE);
            linkedHashMap3.put("msg", "success");
            linkedHashMap3.put("wine_info", linkedHashMapC);
            if (mapW1 != null) {
                int iG = (int) com.sgscq.vpn.c7.g();
                long j2 = k0Var3.j(k0Var3.a(), mapW1);
                int iT0 = T0(k0Var3.c(), "user_gold", mapW1);
                int iT1 = T0(k0Var3.b(), "user_energy", mapW1);
                int iT2 = T0(k0Var3.d(), "user_power", mapW1);
                com.sgscq.vpn.z2.e("SGSCQ_SRV", "[Wine] uid=" + strE + " coin=" + j2 + " gold=" + iT0 + " energy=" + iT1 + " power=" + iT2);
                linkedHashMap3.put("cmn", com.sgscq.vpn.p5.u1(h5Var2.j(mapW1, new org.json.JSONObject(k0Var3.f904d.u(iG, iT0, iT1, iT2, j2, strE, mapW1)), new java.lang.String[0])));
            }
            return k0Var3.n(com.sgscq.vpn.p5.s1(linkedHashMap3));
        }
        java.util.Map mapW2 = null;
        java.lang.String str9 = "add_list";
        if ("wish.info".equals(str) || "wish.get".equals(str)) {
            if ("wish.get".equals(str)) {
                java.lang.String strE2 = k0Var3.e(map);
                com.sgscq.vpn.h5 h5Var3 = k0Var3.f904d;
                java.util.Map mapW3 = h5Var3.w0(strE2);
                if (mapW3 == null) {
                    return k0Var3.n(com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("ret", -1, "code", -1, "result", java.lang.Boolean.FALSE, "msg", "玩家数据不存在", "error_code", -1)));
                }
                java.lang.String strB2 = com.sgscq.vpn.c7.b();
                java.util.LinkedHashMap linkedHashMapX2 = X0();
                java.lang.String str10 = (java.lang.String) map.getOrDefault("general_id", "111009");
                android.content.Context context = k0Var3.f901a;
                if (str10 == null || str10.isEmpty()) {
                    linkedHashMap = linkedHashMapX2;
                    str2 = str9;
                    map2 = null;
                } else {
                    java.util.Iterator it3 = M(context, mapW3).iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            str2 = str9;
                            map2 = (java.util.Map) it3.next();
                            if (c.a.C(map2, "wish_general_id", "", "general_id", str10)) {
                                linkedHashMap = linkedHashMapX2;
                                if (!b1(map2.get("wish_enable"))) {
                                    map2 = null;
                                }
                            } else {
                                str9 = str2;
                            }
                        } else {
                            linkedHashMap = linkedHashMapX2;
                            str2 = str9;
                            map2 = null;
                        }
                    }
                }
                if (map2 == null) {
                    str4 = "许愿武将不可用";
                } else {
                    boolean z3 = c1(strB2, mapW3) > 0;
                    if (z3 || W0(1, "600037", mapW3)) {
                        java.lang.String strValueOf = java.lang.String.valueOf(map2.getOrDefault("wish_general_id", str10));
                        java.lang.String str11 = (java.lang.String) map.getOrDefault("wish_reward_type", "");
                        if (!"soul1".equals(str11) && !"soul3".equals(str11) && !"gold50".equals(str11) && !"gold250".equals(str11)) {
                            int iNextInt = new java.util.Random().nextInt(4);
                            if (iNextInt == 0) {
                                str11 = "soul1";
                            } else if (iNextInt != 1) {
                                str11 = iNextInt != 2 ? "gold250" : "gold50";
                            } else {
                                str11 = "soul3";
                            }
                        }
                        java.util.ArrayList arrayList2 = new java.util.ArrayList();
                        int iS0 = S0(mapW3.get("wish_times"), 0) + 1;
                        int iS1 = S0(mapW3.get("wish_exp"), 0) + 10;
                        mapW3.put("wish_times", java.lang.Integer.valueOf(iS0));
                        mapW3.put("wish_exp", java.lang.Integer.valueOf(iS1 % 100));
                        mapW3.put("wish_level", java.lang.Integer.valueOf((iS1 / 100) + S0(mapW3.get("wish_level"), 0)));
                        java.util.LinkedHashMap linkedHashMap4 = z3 ? new java.util.LinkedHashMap() : Q(mapW3);
                        if ("soul1".equals(str11) || "soul3".equals(str11)) {
                            int i11 = "soul3".equals(str11) ? 2 : 1;
                            int iMax = java.lang.Math.max(1, i11);
                            com.sgscq.vpn.w1.k(iMax, strValueOf, mapW3);
                            java.util.Iterator it4 = com.sgscq.vpn.w1.f0("GeneralSoul", mapW3).iterator();
                            do {
                                if (!it4.hasNext()) {
                                    mapZ0 = com.sgscq.vpn.p5.z0("pk_id", strValueOf, "id", strValueOf, "general_id", strValueOf, "num", java.lang.Integer.valueOf(iMax), "card_type", 1);
                                    break;
                                }
                                mapZ0 = (java.util.Map) it4.next();
                            } while (!c.a.A(mapZ0, "general_id", strValueOf));
                            java.lang.String strJ = c.a.j(mapZ0, "id", "", "general_id");
                            arrayList2.add(p(strJ, i11, mapZ0.getOrDefault("pk_id", strJ), mapZ0.getOrDefault("card_type", 1)));
                            linkedHashMap4.put("GeneralSoul", com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "upd", java.util.Arrays.asList(mapZ0), "add", new java.util.ArrayList()));
                        } else {
                            int i12 = "gold250".equals(str11) ? 250 : 50;
                            int iS2 = S0(mapW3.get("user_gold"), 0) + i12;
                            mapW3.put("user_gold", java.lang.Integer.valueOf(iS2));
                            arrayList2.add(r(i12));
                            linkedHashMap4.put("user_gold", java.lang.Integer.valueOf(iS2));
                        }
                        if (z3) {
                            str3 = strB2;
                            mapW3.put("wish_free_last_used_day", str3);
                        } else {
                            str3 = strB2;
                        }
                        java.util.LinkedHashMap linkedHashMapH = H(context, str3, mapW3);
                        linkedHashMapW = linkedHashMap;
                        linkedHashMapW.putAll(linkedHashMapH);
                        linkedHashMapW.put("wish_general_id", strValueOf);
                        linkedHashMapW.put("wish_reward_type", str11);
                        linkedHashMapW.put(str2, arrayList2);
                        linkedHashMapW.put("delta_data", linkedHashMap4);
                        java.lang.Object obj3 = "return_info";
                        linkedHashMapW.put(obj3, G(linkedHashMapW));
                        obj = obj3;
                    } else {
                        str4 = "许愿道具不足";
                    }
                    if (java.lang.Boolean.TRUE.equals(linkedHashMapW.get("result"))) {
                        com.sgscq.vpn.handler.p.e("115", mapW3);
                    }
                    h5Var3.S0(strE2, mapW3);
                    linkedHashMapW.put("cmn", n(strE2, P(linkedHashMapW, mapW3), mapW3, "Item", "GeneralSoul"));
                    linkedHashMapW.put(obj, G(linkedHashMapW));
                    strS1 = com.sgscq.vpn.p5.s1(linkedHashMapW);
                    k0Var = k0Var3;
                }
                linkedHashMapW = W(str4);
                obj = "return_info";
                if (java.lang.Boolean.TRUE.equals(linkedHashMapW.get("result"))) {
                    com.sgscq.vpn.handler.p.e("115", mapW3);
                }
                h5Var3.S0(strE2, mapW3);
                linkedHashMapW.put("cmn", n(strE2, P(linkedHashMapW, mapW3), mapW3, "Item", "GeneralSoul"));
                linkedHashMapW.put(obj, G(linkedHashMapW));
                strS1 = com.sgscq.vpn.p5.s1(linkedHashMapW);
                k0Var = k0Var3;
            } else {
                k0Var = k0Var3;
                java.util.Map mapW4 = k0Var.f904d.w0(k0Var.e(map));
                if (mapW4 == null) {
                    mapW4 = new java.util.LinkedHashMap();
                }
                java.util.LinkedHashMap linkedHashMapH2 = H(k0Var.f901a, com.sgscq.vpn.c7.b(), mapW4);
                java.util.LinkedHashMap linkedHashMapX3 = X0();
                linkedHashMapX3.putAll(linkedHashMapH2);
                linkedHashMapX3.put("wish_info", linkedHashMapH2.get("wish_info"));
                linkedHashMapX3.put("return_info", linkedHashMapH2.get("wish_info"));
                strS1 = com.sgscq.vpn.p5.s1(linkedHashMapX3);
            }
            return k0Var.n(strS1);
        }
        if (str.startsWith("mystery.")) {
            return k0Var3.n(com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("ret", 0, "code", 0, "result", java.lang.Boolean.TRUE, "msg", "success", "error_code", 0)));
        }
        if (!str.startsWith("spiritStoneGoods.")) {
            if ("item.getQuickList".equals(str)) {
                return k0Var3.n(com.sgscq.vpn.p5.s1(x(map)));
            }
            if ("item.getList".equals(str)) {
                return j0(map);
            }
            if (!"item.resolveItem".equals(str) && !"item.deleteItem".equals(str)) {
                if ("item.quickBuy".equals(str)) {
                    return l0(map);
                }
                if (str.startsWith("product.")) {
                    return k0(str, map);
                }
                if (str.startsWith("pay.")) {
                    return k0(str, map);
                }
                if ("payIos.iosCharge".equals(str)) {
                    return m0(str, map);
                }
                return null;
            }
            java.lang.String strE3 = k0Var3.e(map);
            com.sgscq.vpn.h5 h5Var4 = k0Var3.f904d;
            java.util.Map mapW5 = h5Var4.w0(strE3);
            if (mapW5 == null) {
                mapW5 = new java.util.LinkedHashMap();
            }
            java.util.Map map4 = mapW5;
            if ("item.deleteItem".equals(str)) {
                com.sgscq.vpn.handler.w0 w0VarO0 = O0(map4, map, true);
                linkedHashMapX0 = X0();
                java.util.LinkedHashMap linkedHashMapZ1 = com.sgscq.vpn.p5.z0("del", w0VarO0.f1020a, "upd", w0VarO0.f1021b, "add", new java.util.ArrayList());
                linkedHashMapX0.put("item_delta", linkedHashMapZ1);
                linkedHashMapX0.put("item_info", linkedHashMapZ1);
                linkedHashMapX0.put("Item", linkedHashMapZ1);
                linkedHashMapX0.put("delete_num", java.lang.Integer.valueOf(w0VarO0.f1022c));
                linkedHashMapX0.put("cmn_modules", "Item");
                linkedHashMapX0.put("delta_data", Q(map4));
                h5Var = h5Var4;
            } else {
                java.lang.String strF0 = f0(map, "user_item_id", "pk_id", "item_pk_id", "id");
                if (strF0.isEmpty()) {
                    z = false;
                    z2 = z;
                } else {
                    java.util.Iterator it5 = com.sgscq.vpn.w1.f0("Item", map4).iterator();
                    while (true) {
                        if (it5.hasNext()) {
                            java.util.Iterator it6 = it5;
                            java.util.Map map5 = (java.util.Map) it5.next();
                            if (c.a.B(map5, "pk_id", "", strF0)) {
                                java.util.Map mapC1 = com.sgscq.vpn.w1.a1(null).c1(c.a.j(map5, "id", "", "item_id"));
                                if (mapC1 != null) {
                                    z = false;
                                    if (46 == c.a.g(mapC1, "type", "0", "item_type", 0)) {
                                        z2 = true;
                                    } else {
                                        z2 = z;
                                    }
                                } else {
                                    z = false;
                                    if (46 == S0(map5.getOrDefault("item_type", map5.get("type")), 0)) {
                                        z2 = true;
                                    } else {
                                        z2 = z;
                                    }
                                }
                            } else {
                                it5 = it6;
                            }
                        } else {
                            z = false;
                            z2 = z;
                        }
                    }
                }
                if (z2) {
                    com.sgscq.vpn.handler.w0 w0VarO1 = O0(map4, map, z);
                    int i13 = w0VarO1.f1022c * 150;
                    java.util.ArrayList arrayList3 = new java.util.ArrayList();
                    if (i13 > 0) {
                        arrayList3.add(A(i13, d(i13, 53, "600213", map4)));
                    }
                    java.util.LinkedHashMap linkedHashMapX4 = X0();
                    linkedHashMapX4.put("resolve_num", java.lang.Integer.valueOf(w0VarO1.f1022c));
                    linkedHashMapX4.put("stone_num", java.lang.Integer.valueOf(i13));
                    linkedHashMapX4.put("add_list", arrayList3);
                    linkedHashMapX4.put("reward_list", arrayList3);
                    java.util.LinkedHashMap linkedHashMapZ2 = com.sgscq.vpn.p5.z0("del", w0VarO1.f1020a, "upd", w0VarO1.f1021b, "add", new java.util.ArrayList());
                    linkedHashMapX4.put("item_delta", linkedHashMapZ2);
                    linkedHashMapX4.put("item_info", linkedHashMapZ2);
                    linkedHashMapX4.put("Item", linkedHashMapZ2);
                    linkedHashMapX4.put("delta_data", Q(map4));
                    linkedHashMapX4.put("cmn_modules", "Item");
                    linkedHashMapX0 = linkedHashMapX4;
                } else {
                    com.sgscq.vpn.handler.w0 w0VarO2 = O0(map4, map, z);
                    com.sgscq.vpn.p5.b(w0VarO2.f1022c * 100, map4);
                    java.util.LinkedHashMap linkedHashMapX5 = X0();
                    java.util.LinkedHashMap linkedHashMapZ3 = com.sgscq.vpn.p5.z0("del", w0VarO2.f1020a, "upd", w0VarO2.f1021b, "add", new java.util.ArrayList());
                    linkedHashMapX5.put("item_delta", linkedHashMapZ3);
                    linkedHashMapX5.put("item_info", linkedHashMapZ3);
                    linkedHashMapX5.put("Item", linkedHashMapZ3);
                    linkedHashMapX5.put("resolve_num", java.lang.Integer.valueOf(w0VarO2.f1022c));
                    linkedHashMapX5.put("user_coin", map4.get("user_coin"));
                    linkedHashMapX5.put("cmn_modules", "Player,Item");
                    linkedHashMapX5.put("delta_data", Q(map4));
                    linkedHashMapX0 = linkedHashMapX5;
                }
                strE3 = strE3;
                h5Var = h5Var4;
            }
            h5Var.S0(strE3, map4);
            linkedHashMapX0.put("cmn", n(strE3, P(linkedHashMapX0, map4), map4, K(linkedHashMapX0)));
            return k0Var3.n(com.sgscq.vpn.p5.s1(linkedHashMapX0));
        }
        if (!"spiritStoneGoods.getList".equals(str)) {
            if ("spiritStoneGoods.buy".equals(str)) {
                java.lang.String strE4 = k0Var3.e(map);
                com.sgscq.vpn.h5 h5Var5 = k0Var3.f904d;
                java.util.Map mapW6 = h5Var5.w0(strE4);
                if (mapW6 == null) {
                    strS2 = com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("ret", -1, "code", -1, "result", java.lang.Boolean.FALSE, "msg", "玩家数据不存在", "error_code", -1));
                } else {
                    if (k0Var3 == null || k0Var3.f901a == null) {
                        iA = 0;
                    } else {
                        try {
                            iA = a();
                        } catch (java.lang.Exception unused) {
                            iA = 0;
                        }
                    }
                    linkedHashMapX1 = X0();
                    java.util.ArrayList arrayListB = B(k0Var3.f901a, iA, mapW6);
                    java.lang.String str12 = (java.lang.String) map.getOrDefault("pk_id", (java.lang.String) map.getOrDefault("item_advanced_id", ""));
                    java.lang.String strF1 = f0(map, "item_id", "goods_id", "id");
                    java.util.Iterator it7 = arrayListB.iterator();
                    while (true) {
                        if (!it7.hasNext()) {
                            map3 = null;
                            break;
                        }
                        map3 = (java.util.Map) it7.next();
                        if ((!str12.isEmpty() && c.a.A(map3, "pk_id", str12)) || ((!strF1.isEmpty() && c.a.A(map3, "item_id", strF1)) || (!strF1.isEmpty() && c.a.A(map3, "id", strF1)))) {
                            break;
                        }
                    }
                    if (map3 == null) {
                        str6 = "商品不存在";
                    } else {
                        java.lang.String strValueOf2 = java.lang.String.valueOf(map3.get("item_id"));
                        int iMax2 = java.lang.Math.max(1, S0(map3.get("item_num"), 1));
                        if ("600094".equals(strValueOf2)) {
                            int iMax3 = java.lang.Math.max(0, iA);
                            int i14 = iMax3 >= 6 ? 200 : iMax3 * 20;
                            if (i14 <= 0) {
                                str6 = "爱发电 LV1 及以上开放虎睛石兑换";
                            } else {
                                int iQ0 = q0(mapW6);
                                if (iQ0 + iMax2 > i14) {
                                    str6 = "今日虎睛石兑换受上限限制（已兑 " + iQ0 + "/" + i14 + "，本次需 " + iMax2 + " 个）";
                                } else if (W0(S0(map3.get("discount_price"), S0(map3.get("price"), 0)), "600213", mapW6)) {
                                    if ("600094".equals(strValueOf2)) {
                                        i2 = 1;
                                    } else {
                                        i2 = 1;
                                    }
                                    java.util.Map mapD = d(iMax2, S0(map3.get("item_type"), i2), strValueOf2, mapW6);
                                    java.util.ArrayList arrayList4 = new java.util.ArrayList();
                                    arrayList4.add(A(iMax2, mapD));
                                    linkedHashMapX1.put("add_list", arrayList4);
                                    linkedHashMapX1.put("reward_list", arrayList4);
                                    linkedHashMapX1.put("delta_data", Q(mapW6));
                                    linkedHashMapX1.put("item_info", ((java.util.Map) linkedHashMapX1.get("delta_data")).get("Item"));
                                    if (com.sgscq.vpn.p5.h0(strValueOf2)) {
                                        str5 = "Player,Item";
                                    } else {
                                        str5 = "Item";
                                    }
                                    linkedHashMapX1.put("cmn_modules", str5);
                                } else {
                                    str6 = "灵石不足";
                                }
                            }
                        } else if (W0(S0(map3.get("discount_price"), S0(map3.get("price"), 0)), "600213", mapW6)) {
                            str6 = "灵石不足";
                        } else {
                            if ("600094".equals(strValueOf2) || (strB = com.sgscq.vpn.c7.b()) == null || strB.isEmpty()) {
                                i2 = 1;
                            } else {
                                java.lang.Object obj4 = mapW6.get("purchased_spirit_stone_goods");
                                if (obj4 instanceof java.util.Map) {
                                    mapQ = (java.util.Map) obj4;
                                    if (!c.a.A(mapQ, "day", strB)) {
                                        mapQ = c.a.q("day", strB);
                                        mapQ.put("counts", new java.util.LinkedHashMap());
                                        mapW6.put("purchased_spirit_stone_goods", mapQ);
                                    }
                                } else {
                                    mapQ = c.a.q("day", strB);
                                    mapQ.put("counts", new java.util.LinkedHashMap());
                                    mapW6.put("purchased_spirit_stone_goods", mapQ);
                                }
                                java.lang.Object obj5 = mapQ.get("counts");
                                if (obj5 instanceof java.util.Map) {
                                    linkedHashMap2 = (java.util.Map) obj5;
                                } else {
                                    linkedHashMap2 = new java.util.LinkedHashMap();
                                    mapQ.put("counts", linkedHashMap2);
                                }
                                i2 = 1;
                                linkedHashMap2.put("600094", java.lang.Integer.valueOf(java.lang.Math.max(1, iMax2) + c.a.e(linkedHashMap2, "600094", 0)));
                            }
                            java.util.Map mapD2 = d(iMax2, S0(map3.get("item_type"), i2), strValueOf2, mapW6);
                            java.util.ArrayList arrayList5 = new java.util.ArrayList();
                            arrayList5.add(A(iMax2, mapD2));
                            linkedHashMapX1.put("add_list", arrayList5);
                            linkedHashMapX1.put("reward_list", arrayList5);
                            linkedHashMapX1.put("delta_data", Q(mapW6));
                            linkedHashMapX1.put("item_info", ((java.util.Map) linkedHashMapX1.get("delta_data")).get("Item"));
                            if (com.sgscq.vpn.p5.h0(strValueOf2)) {
                                str5 = "Player,Item";
                            } else {
                                str5 = "Item";
                            }
                            linkedHashMapX1.put("cmn_modules", str5);
                        }
                        if (java.lang.Boolean.TRUE.equals(linkedHashMapX1.get("result"))) {
                            str7 = strE4;
                            h5Var5.S0(str7, mapW6);
                        } else {
                            str7 = strE4;
                        }
                        java.util.Map mapP = P(linkedHashMapX1, mapW6);
                        strArr = new java.lang.String[]{"Item", "GeneralSoul"};
                        strArrK = K(linkedHashMapX1);
                        if (strArrK.length != 0) {
                            strArr = strArrK;
                        }
                        linkedHashMapX1.put("cmn", n(str7, mapP, mapW6, strArr));
                    }
                    linkedHashMapX1 = W(str6);
                    if (java.lang.Boolean.TRUE.equals(linkedHashMapX1.get("result"))) {
                        str7 = strE4;
                        h5Var5.S0(str7, mapW6);
                    } else {
                        str7 = strE4;
                    }
                    java.util.Map mapP2 = P(linkedHashMapX1, mapW6);
                    strArr = new java.lang.String[]{"Item", "GeneralSoul"};
                    strArrK = K(linkedHashMapX1);
                    if (strArrK.length != 0) {
                        strArr = strArrK;
                    }
                    linkedHashMapX1.put("cmn", n(str7, mapP2, mapW6, strArr));
                }
            } else {
                linkedHashMapX1 = X0();
            }
            return k0Var3.n(com.sgscq.vpn.p5.s1(linkedHashMapX1));
        }
        android.content.Context context2 = k0Var3.f901a;
        if (k0Var3 == null || k0Var3.f901a == null) {
            iA2 = 0;
        } else {
            try {
                iA2 = a();
            } catch (java.lang.Exception unused2) {
                iA2 = 0;
            }
        }
        com.sgscq.vpn.h5 h5Var6 = k0Var3.f904d;
        if (h5Var6 != null) {
            try {
                java.lang.String strE5 = k0Var3.e(map);
                if (strE5 != null && !strE5.isEmpty()) {
                    mapW2 = h5Var6.w0(strE5);
                }
            } catch (java.lang.Exception unused3) {
            }
        }
        java.util.LinkedHashMap linkedHashMapX6 = X0();
        java.util.ArrayList arrayListB2 = B(context2, iA2, mapW2);
        linkedHashMapX6.put("list", arrayListB2);
        linkedHashMapX6.put("item_list", arrayListB2);
        linkedHashMapX6.put("goods_list", arrayListB2);
        strS2 = com.sgscq.vpn.p5.s1(linkedHashMapX6);
        return k0Var3.n(strS2);
    }

    public final void j(java.util.ArrayList arrayList, java.lang.String str, java.lang.String str2, java.lang.String str3, int i2) {
        java.util.HashMap mapP = c.a.p("pk_id", str, "item_id", str2);
        mapP.put("item_price", java.lang.Integer.valueOf(i2));
        mapP.put("discount_price", java.lang.Integer.valueOf(i2));
        mapP.put("currency_type", 1);
        mapP.put("purchase_num", 999);
        mapP.put("purchased_num", 0);
        mapP.put("is_purchased", 1);
        mapP.put("open_time", 0);
        mapP.put("close_time", 0);
        mapP.put("vip_level", 0);
        mapP.put("tag_id", 0);
        mapP.put("can_exchange", java.lang.Boolean.TRUE);
        mapP.put("is_notice", "0");
        mapP.put("item_title", str3);
        mapP.put("item_desc", R0(str2, str3));
        arrayList.add(mapP);
    }

    /* JADX WARN: Code duplicated, block: B:136:0x087c  */
    /* JADX WARN: Code duplicated, block: B:137:0x087e  */
    /* JADX WARN: Code duplicated, block: B:29:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:61:0x0372  */
    /* JADX WARN: Code duplicated, block: B:82:0x04d9  */
    public final byte[] j0(java.util.Map map) {
        boolean z;
        int iA;
        int iE;
        int i2;
        java.util.ArrayList arrayList;
        java.lang.Object obj;
        java.lang.Object obj2;
        java.lang.String str;
        java.lang.Object obj3;
        java.lang.Object obj4;
        java.lang.Object obj5;
        java.lang.Object obj6;
        java.lang.String str2;
        int iL2;
        long jFloorMod;
        int iJ0;
        int iE2;
        int i3;
        int iL3;
        int i4;
        java.util.ArrayList<java.util.Map> arrayList2;
        java.lang.String str3;
        java.util.Map map2;
        com.sgscq.vpn.handler.x0 x0Var;
        java.lang.String str4;
        java.lang.Object obj7;
        android.content.Context context;
        java.util.ArrayList arrayList3;
        int i5;
        java.lang.Object obj8;
        java.util.ArrayList arrayListT;
        if (u0((java.lang.String) map.get("is_quick")) || u0((java.lang.String) map.get("quick")) || "1".equals(map.get("type"))) {
            return this.f1033a.n(com.sgscq.vpn.p5.s1(x(map)));
        }
        if ("item.getQuickList".equals(map.get("do"))) {
            return this.f1033a.n(com.sgscq.vpn.p5.s1(x(map)));
        }
        boolean zU0 = u0((java.lang.String) map.get("is_gift"));
        java.lang.String str5 = "";
        java.lang.String str6 = (java.lang.String) map.getOrDefault("belongs_shop", "");
        java.lang.String strE = this.f1033a.e(map);
        java.util.Map mapW0 = this.f1033a.f904d.w0(strE);
        boolean z2 = mapW0 != null;
        if (mapW0 == null) {
            mapW0 = java.util.Collections.emptyMap();
        }
        java.util.Map map3 = mapW0;
        java.lang.String str7 = "ladder_rank_salary";
        int iL4 = com.sgscq.vpn.w1.l2(java.lang.String.valueOf(map3.getOrDefault("ladderRankSalary", map3.getOrDefault("ladder_rank_salary", 0))), 0);
        java.lang.String str8 = "ladderSalaryAt";
        java.lang.String strValueOf = java.lang.String.valueOf(map3.getOrDefault("ladderSalaryAt", ""));
        android.content.Context context2 = this.f1033a.f901a;
        if (context2 != null) {
            new com.sgscq.vpn.cloud.z(context2);
            m.e eVar = new m.e(5, context2);
            com.sgscq.vpn.cloud.b0 b0Var = new com.sgscq.vpn.cloud.b0(1, context2);
            com.sgscq.vpn.c7.f();
            com.sgscq.vpn.cloud.CloudSessionStore$SessionData cloudSessionStore$SessionDataY = eVar.y();
            z = cloudSessionStore$SessionDataY.isLoggedIn() && b0Var.f(cloudSessionStore$SessionDataY.afdianUserId).a(cloudSessionStore$SessionDataY.afdianUserId, strE);
        }
        boolean z3 = z;
        com.sgscq.vpn.handler.k0 k0Var = this.f1033a;
        if (k0Var == null || k0Var.f901a == null) {
            iA = 0;
        } else {
            try {
                iA = a();
            } catch (java.lang.Exception unused) {
                iA = 0;
            }
        }
        int i6 = iA;
        if (!"4".equals(str6)) {
            if ("5".equals(str6)) {
                arrayListT = t(map3);
            } else {
                java.util.ArrayList<java.util.Map> arrayList4 = new java.util.ArrayList();
                int iL5 = com.sgscq.vpn.w1.l2(java.lang.String.valueOf(map3.getOrDefault("user_vip_level", map3.getOrDefault("vip_level", 0))), 0);
                if (zU0) {
                    java.lang.Object obj9 = "purchased_num";
                    java.lang.Object obj10 = "pk_id";
                    int iG0 = g0("shop_all_pet_gift", map3);
                    k(arrayList4, "54", "191006", "全萌宠礼包", 100, 1, iG0);
                    int size = arrayList4.size();
                    java.lang.Integer num = 1;
                    java.util.Map map4 = (java.util.Map) arrayList4.get(size - 1);
                    map4.put("item_title", "全萌宠礼包");
                    map4.put("item_desc", "购买后获得倒霉呆呆、小鸡哔哔、功夫阿奇、顽皮淘淘、浣熊波波、至尊小宝各1只。");
                    java.util.List list = com.sgscq.vpn.m.f1164a;
                    java.util.ArrayList arrayList5 = new java.util.ArrayList();
                    for (java.lang.String str9 : com.sgscq.vpn.m.f1164a) {
                        arrayList5.add(com.sgscq.vpn.p5.z0("id", str9, "item_id", str9, "general_id", str9, "num", num, "item_num", num, "level", num, "type", num, "item_type", 31));
                        num = num;
                    }
                    map4.put("add_list", arrayList5);
                    if (iG0 >= 1) {
                        map4.put("can_exchange", java.lang.Boolean.FALSE);
                    }
                    c(arrayList4, map3, iL5, "40", 200, 100, 5, 0);
                    c(arrayList4, map3, iL5, "41", 1000, 300, 5, 0);
                    c(arrayList4, map3, iL5, "42", 10000, 2500, 20, 15);
                    java.lang.String str10 = "num";
                    int i7 = iL5;
                    if (i7 < 15) {
                        obj3 = "361001";
                        i2 = 4;
                        arrayList = arrayList4;
                        obj4 = "add_list";
                        str = "id";
                        obj = "item_num";
                        obj2 = "item_desc";
                    } else {
                        java.lang.Object obj11 = map3.get("purchased_daily_vip15_exp_book_gift");
                        if (obj11 instanceof java.util.Map) {
                            java.util.Map map5 = (java.util.Map) obj11;
                            if (c.a.A(map5, "day", com.sgscq.vpn.c7.b())) {
                                iE = c.a.e(map5, "count", 0);
                            } else {
                                iE = 0;
                            }
                        } else {
                            iE = 0;
                        }
                        i2 = 4;
                        l(arrayList4, "43", "361001", "经验神书礼包", 1000, N(20), iE, 15);
                        arrayList = arrayList4;
                        java.util.Map map6 = (java.util.Map) arrayList.get(arrayList4.size() - 1);
                        obj = "item_num";
                        map6.put(obj, 5);
                        str10 = "num";
                        map6.put(str10, 5);
                        obj2 = "item_desc";
                        map6.put(obj2, "购买后获得经验神书×5，每日限购20次。");
                        str = "id";
                        obj3 = "361001";
                        obj4 = "add_list";
                        map6.put(obj4, java.util.Collections.singletonList(com.sgscq.vpn.p5.z0(str, obj3, "item_id", "361001", "num", 5, "item_num", 5, "type", 4, "item_type", 19, "level", 1)));
                    }
                    com.sgscq.vpn.handler.k0 k0Var2 = this.f1033a;
                    if (com.sgscq.vpn.p5.A(k0Var2 == null ? null : k0Var2.f901a) < 1) {
                        obj6 = obj4;
                        obj5 = obj2;
                    } else {
                        obj5 = obj2;
                        k(arrayList, "56", "361001", "经验神书礼包", 1000, N(20), h0("56", map3));
                        java.util.Map map7 = (java.util.Map) arrayList.get(arrayList.size() - 1);
                        map7.put(obj, 5);
                        map7.put(str10, 5);
                        map7.put(obj5, "购买后获得经验神书×5，每日限购20次；爱发电 LV1 及以上专享。");
                        obj6 = obj4;
                        map7.put(obj6, java.util.Collections.singletonList(com.sgscq.vpn.p5.z0(str, obj3, "item_id", "361001", "num", 5, "item_num", 5, "type", java.lang.Integer.valueOf(i2), "item_type", 19, "level", 1)));
                    }
                    java.util.ArrayList arrayList6 = arrayList;
                    k(arrayList6, "19", "791758", "首次充值大礼包", 300, 1, g0("791758", map3));
                    k(arrayList6, "20", "791438", "每日特权礼包", 200, N(5), g0("791438", map3));
                    k(arrayList6, "21", "791550", "至尊会员贵宾礼包", 300, 1, g0("791550", map3));
                    java.util.ArrayList arrayList7 = arrayList;
                    i(arrayList6, map3, i7, "22", "710000", "至尊会员0大礼包", 0, 0);
                    i(arrayList7, map3, i7, "23", "710021", "至尊会员1大礼包", 500, 1);
                    i(arrayList7, map3, i7, "24", "710022", "至尊会员2大礼包", 500, 2);
                    i(arrayList7, map3, i7, "25", "710023", "至尊会员3大礼包", 500, 3);
                    i(arrayList7, map3, i7, "26", "710024", "至尊会员4大礼包", 800, 4);
                    i(arrayList7, map3, i7, "27", "710025", "至尊会员5大礼包", 800, 5);
                    i(arrayList7, map3, i7, "28", "710026", "至尊会员6大礼包", 800, 6);
                    i(arrayList7, map3, i7, "29", "710027", "至尊会员7大礼包", 1000, 7);
                    i(arrayList7, map3, i7, "30", "710008", "至尊会员8大礼包", 2000, 8);
                    i(arrayList7, map3, i7, "31", "710009", "至尊会员9大礼包", 3000, 9);
                    i(arrayList7, map3, i7, "32", "710010", "至尊会员10大礼包", 5000, 10);
                    i(arrayList7, map3, i7, "33", "710011", "至尊会员11大礼包", 6000, 11);
                    i(arrayList7, map3, i7, "34", "710012", "至尊会员12大礼包", 8000, 12);
                    i(arrayList7, map3, i7, "35", "710013", "至尊会员13大礼包", 8000, 13);
                    i(arrayList7, map3, i7, "36", "710032", "至尊会员14大礼包", 10000, 14);
                    i(arrayList7, map3, i7, "37", "791836", "至尊会员15礼包", 150000, 15);
                    java.lang.String str11 = "close_time";
                    java.lang.String str12 = "fate_equip_id";
                    if (com.sgscq.vpn.c7.f254i) {
                        str2 = "close_time";
                        obj6 = obj6;
                    } else {
                        long jF = com.sgscq.vpn.c7.f();
                        com.sgscq.vpn.handler.k0 k0Var3 = this.f1033a;
                        com.sgscq.vpn.j2 j2VarA = com.sgscq.vpn.l2.a(k0Var3 == null ? null : k0Var3.f901a, jF);
                        long j2 = j2VarA.f1081h;
                        int iMin = j2 <= jF ? 0 : (int) java.lang.Math.min(2147483647L, ((j2 - jF) + 999) / 1000);
                        java.util.ArrayList arrayList8 = new java.util.ArrayList();
                        for (java.util.Iterator it = j2VarA.f1074a.iterator(); it.hasNext(); it = it) {
                            arrayList8.add(new java.util.LinkedHashMap((java.util.Map) it.next()));
                        }
                        java.util.Iterator it2 = arrayList8.iterator();
                        while (it2.hasNext()) {
                            java.util.Map map8 = (java.util.Map) it2.next();
                            java.lang.String strValueOf2 = java.lang.String.valueOf(map8.getOrDefault("fate_equip_id", ""));
                            it2 = it2;
                            java.lang.String strValueOf3 = java.lang.String.valueOf(map8.getOrDefault("fate_skill_id", ""));
                            obj5 = obj5;
                            java.lang.String strValueOf4 = java.lang.String.valueOf(map8.remove("_purchase_key"));
                            if (strValueOf2.isEmpty()) {
                                j2VarA = j2VarA;
                                str11 = str11;
                                if (strValueOf3.isEmpty()) {
                                    j2VarA = j2VarA;
                                    str11 = str11;
                                } else {
                                    iJ0 = J0("purchased_fate_skill_goods", strValueOf4, map3);
                                    com.sgscq.vpn.config.i iVarB = com.sgscq.vpn.g2.b();
                                    if (iVarB == null) {
                                        iE2 = (java.lang.Math.max(0, 29998) * 80) / 100;
                                    } else {
                                        com.sgscq.vpn.config.k kVar = new com.sgscq.vpn.config.k(iVarB);
                                        i3 = i2;
                                        iL2 = kVar.a(i3, 29998, jF);
                                    }
                                    map8.put("discount_price", java.lang.Integer.valueOf(iL2));
                                    iL3 = com.sgscq.vpn.w1.l2(java.lang.String.valueOf(map8.getOrDefault("purchase_num", 1)), 1);
                                    java.lang.Object obj12 = obj9;
                                    map8.put(obj12, java.lang.Integer.valueOf(iJ0));
                                    if (iJ0 >= iL3) {
                                        i4 = 0;
                                    } else {
                                        i4 = 1;
                                    }
                                    map8.put(r15, java.lang.Integer.valueOf(i4));
                                    java.lang.String str13 = str11;
                                    map8.put(str13, java.lang.Integer.valueOf(iMin));
                                    arrayList7.add(map8);
                                    i2 = i3;
                                    str11 = str13;
                                    obj9 = obj12;
                                    j2VarA = j2VarA;
                                }
                            } else {
                                int iJ1 = J0("purchased_fate_box_goods", strValueOf4, map3);
                                iL2 = com.sgscq.vpn.w1.l2(java.lang.String.valueOf(map8.getOrDefault("item_price", 0)), 0);
                                long j3 = j2VarA.f1080g;
                                if (j3 <= 0) {
                                    int i8 = com.sgscq.vpn.config.k.f592d;
                                    jFloorMod = jF - java.lang.Math.floorMod(jF, java.lang.Math.max(1L, 43200L) * 1000);
                                } else {
                                    jFloorMod = j3;
                                }
                                com.sgscq.vpn.config.i iVarB2 = com.sgscq.vpn.g2.b();
                                if (iVarB2 != null) {
                                    iE2 = new com.sgscq.vpn.config.k(iVarB2).e(iL2, jFloorMod, jF);
                                    iJ0 = iJ1;
                                } else {
                                    if (jF - jFloorMod < 3600000) {
                                        iL2 = (iL2 * 80) / 100;
                                    }
                                    iJ0 = iJ1;
                                }
                                i3 = i2;
                                map8.put("discount_price", java.lang.Integer.valueOf(iL2));
                                iL3 = com.sgscq.vpn.w1.l2(java.lang.String.valueOf(map8.getOrDefault("purchase_num", 1)), 1);
                                java.lang.Object obj13 = obj9;
                                map8.put(obj13, java.lang.Integer.valueOf(iJ0));
                                if (iJ0 >= iL3) {
                                    i4 = 0;
                                } else {
                                    i4 = 1;
                                }
                                map8.put(r15, java.lang.Integer.valueOf(i4));
                                java.lang.String str14 = str11;
                                map8.put(str14, java.lang.Integer.valueOf(iMin));
                                arrayList7.add(map8);
                                i2 = i3;
                                str11 = str14;
                                obj9 = obj13;
                                j2VarA = j2VarA;
                            }
                            iL2 = iE2;
                            i3 = i2;
                            map8.put("discount_price", java.lang.Integer.valueOf(iL2));
                            iL3 = com.sgscq.vpn.w1.l2(java.lang.String.valueOf(map8.getOrDefault("purchase_num", 1)), 1);
                            java.lang.Object obj14 = obj9;
                            map8.put(obj14, java.lang.Integer.valueOf(iJ0));
                            if (iJ0 >= iL3) {
                                i4 = 0;
                            } else {
                                i4 = 1;
                            }
                            map8.put(r15, java.lang.Integer.valueOf(i4));
                            java.lang.String str15 = str11;
                            map8.put(str15, java.lang.Integer.valueOf(iMin));
                            arrayList7.add(map8);
                            i2 = i3;
                            str11 = str15;
                            obj9 = obj14;
                            j2VarA = j2VarA;
                        }
                        str2 = str11;
                    }
                    java.lang.Object obj15 = obj5;
                    arrayList2 = arrayList7;
                    java.lang.Object obj16 = obj9;
                    if (com.sgscq.vpn.c7.f254i) {
                        str3 = "";
                        map2 = map3;
                    } else {
                        long jF2 = com.sgscq.vpn.c7.f();
                        com.sgscq.vpn.handler.k0 k0Var4 = this.f1033a;
                        com.sgscq.vpn.j2 j2VarA2 = com.sgscq.vpn.l2.a(k0Var4 == null ? null : k0Var4.f901a, jF2);
                        java.util.ArrayList arrayList9 = new java.util.ArrayList();
                        j2VarA2.getClass();
                        java.util.ArrayList arrayList10 = new java.util.ArrayList();
                        java.util.Iterator it3 = j2VarA2.f1077d.iterator();
                        while (it3.hasNext()) {
                            java.util.Iterator it4 = it3;
                            com.sgscq.vpn.k2 k2Var = (com.sgscq.vpn.k2) it3.next();
                            java.lang.String str16 = str5;
                            int i9 = i7;
                            if (i9 >= k2Var.f1102a.f604k) {
                                arrayList10.add(k2Var);
                            }
                            i7 = i9;
                            it3 = it4;
                            str5 = str16;
                        }
                        str3 = str5;
                        java.util.Iterator it5 = arrayList10.iterator();
                        while (it5.hasNext()) {
                            com.sgscq.vpn.k2 k2Var2 = (com.sgscq.vpn.k2) it5.next();
                            com.sgscq.vpn.config.l lVarA = k2Var2.a(j2VarA2.f1078e, jF2);
                            java.lang.String str17 = lVarA.f607n;
                            com.sgscq.vpn.j2 j2Var = j2VarA2;
                            java.lang.Object obj17 = map3.get("purchased_limited_shop_goods");
                            java.util.Iterator it6 = it5;
                            int iE3 = !(obj17 instanceof java.util.Map) ? 0 : c.a.e((java.util.Map) obj17, str17, 0);
                            java.util.Map map9 = map3;
                            long j4 = jF2;
                            int iMax = (int) java.lang.Math.max(1L, java.lang.Math.min(2147483647L, ((lVarA.f606m - jF2) + 999) / 1000));
                            java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap(k2Var2.f1103b);
                            java.lang.String str18 = lVarA.f594a;
                            java.lang.Object obj18 = obj10;
                            linkedHashMap.put(obj18, str18);
                            linkedHashMap.put("limited_product_key", str18);
                            linkedHashMap.put("limited_purchase_key", lVarA.f607n);
                            linkedHashMap.put("limited_product_type", c.a.E(lVarA.f595b));
                            linkedHashMap.put("general_id", lVarA.f596c);
                            linkedHashMap.put("reward_id", lVarA.f599f);
                            linkedHashMap.put("reward_count", java.lang.Integer.valueOf(lVarA.f600g));
                            linkedHashMap.put("item_price", java.lang.Integer.valueOf(lVarA.f601h));
                            linkedHashMap.put("discount_price", java.lang.Integer.valueOf(lVarA.f602i));
                            linkedHashMap.put("currency_type", 1);
                            int i10 = lVarA.f603j;
                            linkedHashMap.put("purchase_num", java.lang.Integer.valueOf(i10));
                            linkedHashMap.put(obj16, java.lang.Integer.valueOf(iE3));
                            c.a.s(iE3 >= i10 ? 0 : 1, linkedHashMap, "is_purchased", 0, "open_time", iMax, str2);
                            linkedHashMap.put("vip_level", java.lang.Integer.valueOf(lVarA.f604k));
                            linkedHashMap.put("tag_id", 0);
                            linkedHashMap.put("can_exchange", java.lang.Boolean.TRUE);
                            linkedHashMap.put("is_notice", "0");
                            arrayList9.add(linkedHashMap);
                            obj10 = obj18;
                            j2VarA2 = j2Var;
                            jF2 = j4;
                            map3 = map9;
                            it5 = it6;
                        }
                        map2 = map3;
                        arrayList2.addAll(arrayList9);
                    }
                    x0Var = this;
                    com.sgscq.vpn.handler.k0 k0Var5 = x0Var.f1033a;
                    java.lang.String strA = (k0Var5 == null || (context = k0Var5.f901a) == null) ? str3 : com.sgscq.vpn.o0.a(context, "gift_box_contents.json");
                    if (strA == null || strA.isEmpty()) {
                        java.io.File fileC0 = c0("docs/game_data_json/gift_box_contents.json");
                        if (fileC0.isFile()) {
                            try {
                                strA = com.sgscq.vpn.p5.W0(fileC0);
                            } catch (java.lang.Exception unused2) {
                            }
                        }
                    }
                    if (strA != null && !strA.isEmpty()) {
                        try {
                            java.util.Map mapU1 = (java.util.Map) new a.o().e(strA, new com.sgscq.vpn.handler.ShopHandler$2().getType());
                            if (mapU1 == null || mapU1.isEmpty()) {
                                mapU1 = com.sgscq.vpn.p5.u1(strA);
                            }
                            for (java.util.Map map10 : arrayList2) {
                                str3 = str3;
                                java.lang.Object obj19 = mapU1.get(java.lang.String.valueOf(map10.getOrDefault("item_id", str3)));
                                if (obj19 instanceof java.util.Map) {
                                    java.util.Map map11 = (java.util.Map) obj19;
                                    java.lang.Object obj20 = obj6;
                                    java.lang.Object obj21 = map11.get(obj20);
                                    if (obj21 instanceof java.util.List) {
                                        map10.put(obj20, obj21);
                                    }
                                    java.lang.Object obj22 = map11.get("desc");
                                    java.lang.String str19 = str12;
                                    if (!java.lang.String.valueOf(map10.getOrDefault(str19, str3)).isEmpty() || obj22 == null || java.lang.String.valueOf(obj22).isEmpty()) {
                                        obj7 = obj15;
                                    } else {
                                        obj7 = obj15;
                                        map10.put(obj7, java.lang.String.valueOf(obj22));
                                    }
                                    obj6 = obj20;
                                    str12 = str19;
                                    obj15 = obj7;
                                }
                            }
                        } catch (java.lang.Exception unused3) {
                        }
                    }
                    str4 = str3;
                } else {
                    java.lang.Object obj23 = "pk_id";
                    j(arrayList4, "1", "600023", "金杯", 268);
                    j(arrayList4, "2", "600024", "银杯", 100);
                    j(arrayList4, "3", "600025", "铜杯", 10);
                    j(arrayList4, "4", "600032", "将军盏", 2680);
                    j(arrayList4, "5", "600001", "金宝箱", 50);
                    j(arrayList4, "6", "600002", "银宝箱", 30);
                    j(arrayList4, "7", "600003", "铜宝箱", 10);
                    j(arrayList4, "8", "600004", "金钥匙", 50);
                    j(arrayList4, "9", "600005", "银钥匙", 30);
                    j(arrayList4, "10", "600006", "铜钥匙", 10);
                    java.lang.Object obj24 = "can_exchange";
                    k(arrayList4, "11", "600007", "包子", 50, N(20), h0("11", map3));
                    k(arrayList4, "12", "600008", "红茶", 50, N(20), h0("12", map3));
                    j(arrayList4, "13", "600009", "普通传承符", 98);
                    j(arrayList4, "14", "600010", "高级传承符", 198);
                    j(arrayList4, "15", "600011", "超级传承符", 298);
                    k(arrayList4, "38", "600037", "许愿流星", 200, N(2), h0("38", map3));
                    j(arrayList4, "39", "600065", "诏令", 50);
                    j(arrayList4, "44", "600013", "勾玉", 30);
                    j(arrayList4, "45", "600076", "打孔石", 100);
                    j(arrayList4, "46", "600077", "洗炼石", 30);
                    k(arrayList4, "47", "600078", "1级宝石箱", 50, N(999), h0("47", map3));
                    k(arrayList4, "48", "600079", "2级宝石箱", 160, N(400), h0("48", map3));
                    k(arrayList4, "49", "600080", "3级宝石箱", 500, N(200), h0("49", map3));
                    if (V0("51", i6)) {
                        k(arrayList4, "51", "600081", "4级宝石箱", 1600, N(100), h0("51", map3));
                    }
                    if (V0("52", i6)) {
                        k(arrayList4, "52", "600082", "5级宝石箱", 5000, N(50), h0("52", map3));
                    }
                    j(arrayList4, "50", "600014", "改名符", 99);
                    k(arrayList4, "55", "600212", "觉醒宝箱钥匙", 200, N(999), h0("55", map3));
                    if (z3) {
                        j(arrayList4, "53", "600036", "喇叭", 5);
                    }
                    for (java.util.Map map12 : arrayList4) {
                        int iL6 = com.sgscq.vpn.w1.l2(java.lang.String.valueOf(map12.getOrDefault("purchase_num", 0)), 0);
                        java.lang.Object obj25 = obj23;
                        if (iL6 <= 0) {
                            obj8 = obj24;
                        } else {
                            int iH0 = h0(java.lang.String.valueOf(map12.getOrDefault(obj25, "")), map3);
                            map12.put("purchased_num", java.lang.Integer.valueOf(iH0));
                            if (iH0 >= iL6) {
                                map12.put("is_purchased", 0);
                                obj8 = obj24;
                                map12.put(obj8, java.lang.Boolean.FALSE);
                            } else {
                                obj8 = obj24;
                            }
                        }
                        obj23 = obj25;
                        obj24 = obj8;
                    }
                    x0Var = this;
                    str4 = "";
                    map2 = map3;
                    arrayList2 = arrayList4;
                }
                arrayList3 = arrayList2;
                i5 = 0;
            }
            int iL7 = com.sgscq.vpn.w1.l2(java.lang.String.valueOf(map2.getOrDefault("ladderRankSalary", map2.getOrDefault(str7, java.lang.Integer.valueOf(i5)))), i5);
            java.lang.String strValueOf5 = java.lang.String.valueOf(map2.getOrDefault(str8, str4));
            if ("4".equals(str6) && z2 && (iL7 != iL4 || !strValueOf5.equals(strValueOf))) {
                x0Var.f1033a.f904d.S0(strE, map2);
            }
            return x0Var.f1033a.n(com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("ret", 0, "code", 0, "result", java.lang.Boolean.TRUE, "msg", "success", "error_code", 0, "item_list", arrayList3)));
        }
        arrayListT = u(map3);
        i5 = 0;
        arrayList3 = arrayListT;
        str8 = "ladderSalaryAt";
        iL4 = iL4;
        x0Var = this;
        str4 = "";
        str6 = str6;
        strE = strE;
        z2 = z2;
        map2 = map3;
        str7 = "ladder_rank_salary";
        int iL8 = com.sgscq.vpn.w1.l2(java.lang.String.valueOf(map2.getOrDefault("ladderRankSalary", map2.getOrDefault(str7, java.lang.Integer.valueOf(i5)))), i5);
        java.lang.String strValueOf6 = java.lang.String.valueOf(map2.getOrDefault(str8, str4));
        if ("4".equals(str6)) {
            x0Var.f1033a.f904d.S0(strE, map2);
        }
        return x0Var.f1033a.n(com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("ret", 0, "code", 0, "result", java.lang.Boolean.TRUE, "msg", "success", "error_code", 0, "item_list", arrayList3)));
    }

    public final void k(java.util.ArrayList arrayList, java.lang.String str, java.lang.String str2, java.lang.String str3, int i2, int i3, int i4) {
        l(arrayList, str, str2, str3, i2, i3, i4, 0);
    }

    public final byte[] k0(java.lang.String str, java.util.Map map) {
        java.util.Map mapW0;
        int i2;
        int iB0;
        java.lang.String strE;
        if (!"product.createOrder".equals(str) && !"pay.createTrade".equals(str)) {
            if ("product.notify".equals(str) || "product.checkOrder".equals(str) || "pay.checkOrder".equals(str) || "pay.notify".equals(str) || "payIos.iosCharge".equals(str)) {
                return com.sgscq.vpn.c7.f254i ? M0() : m0(str, map);
            }
            com.sgscq.vpn.handler.k0 k0Var = this.f1033a;
            return k0Var.n(com.sgscq.vpn.p5.s1(w(a(), (k0Var == null || k0Var.f904d == null || (strE = k0Var.e(map)) == null || strE.isEmpty()) ? null : k0Var.f904d.w0(strE))));
        }
        if (com.sgscq.vpn.c7.f254i) {
            return M0();
        }
        if (!(!"charge_6480".equals(e0(map, "product_id", "pk_id", "id")) || a() >= 3)) {
            return p0();
        }
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        java.lang.String strE0 = e0(map, "product_id", "pk_id", "id");
        if (strE0.isEmpty()) {
            strE0 = "product_coin_2";
        }
        java.lang.String str2 = strE0;
        java.lang.String str3 = "local_order_" + jCurrentTimeMillis;
        int iI0 = I0(str2);
        java.util.LinkedHashMap linkedHashMapZ0 = com.sgscq.vpn.p5.z0("ret", 0, "code", 0, "result", java.lang.Boolean.TRUE, "msg", "success", "error_code", 0, "return_info", com.sgscq.vpn.p5.z0("order_id", str3, "user_id", e0(map, "uid", "user_id", "account_uid"), "product_id", str2, "product_price", java.lang.Integer.valueOf(iI0), "price", java.lang.Integer.valueOf(iI0), "ext", com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("bf_orderId", str3, "product_id", str2))), "order_id", str3, "orderId", str3);
        com.sgscq.vpn.handler.k0 k0Var2 = this.f1033a;
        java.lang.String strE2 = k0Var2.e(map);
        if (strE2 != null && !strE2.isEmpty() && (mapW0 = k0Var2.f904d.w0(strE2)) != null) {
            java.lang.String strValueOf = java.lang.String.valueOf(linkedHashMapZ0.get("order_id"));
            java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
            if (map != null) {
                linkedHashMap.putAll(map);
            }
            linkedHashMap.put("order_id", java.lang.String.valueOf(linkedHashMapZ0.getOrDefault("order_id", "")));
            java.lang.Object obj = linkedHashMapZ0.get("return_info");
            if (obj instanceof java.util.Map) {
                java.util.Map map2 = (java.util.Map) obj;
                linkedHashMap.put("price", java.lang.String.valueOf(map2.getOrDefault("product_price", "")));
                linkedHashMap.put("product_id", java.lang.String.valueOf(map2.getOrDefault("product_id", linkedHashMap.getOrDefault("product_id", ""))));
            }
            int iQ0 = Q0(strValueOf, mapW0, linkedHashMap);
            com.sgscq.vpn.f fVarJ = new com.sgscq.vpn.h(0, k0Var2.f901a).j();
            int iO = O(fVarJ.f665c ? fVarJ.f668f : 0, new com.sgscq.vpn.b0(k0Var2.f901a).a(), new com.sgscq.vpn.h(1, k0Var2.f901a).a());
            java.lang.String strB = com.sgscq.vpn.c7.b();
            int i3 = c.a.B(mapW0, "daily_recharge_day", "", strB) ? k0Var2.i(0, "daily_recharge_rmb_used", mapW0) : 0;
            if (!o0(strValueOf, mapW0) && i3 + iQ0 > iO) {
                java.lang.String strY = y(iQ0, java.lang.Math.max(0, iO - i3));
                com.sgscq.vpn.p5.l1(k0Var2.f901a, z(i3, iO));
                return L0(strY);
            }
            if (o0(strValueOf, mapW0)) {
                iB0 = B0(P0(mapW0, linkedHashMap, strValueOf, iQ0), "current_charge_gold", mapW0);
                i2 = 0;
            } else {
                com.sgscq.vpn.q4 q4VarH0 = H0(mapW0, linkedHashMap, com.sgscq.vpn.c7.f(), strB);
                i2 = 0;
                int iIntValue = ((java.lang.Number) k0Var2.f904d.P(strE2, mapW0, q4VarH0.f1320b, "recharge_grant", q4VarH0.f1322d, q4VarH0.f1323e).getOrDefault("gold", 0)).intValue();
                com.sgscq.vpn.p5.l1(k0Var2.f901a, z(i3 + iQ0, iO));
                iB0 = iIntValue;
            }
            int iJ = J(k0Var2.i(i2, "totalRecharge", mapW0));
            k0Var2.f904d.getClass();
            java.lang.String strS1 = com.sgscq.vpn.p5.s1(com.sgscq.vpn.h5.w(com.sgscq.vpn.h5.k0(mapW0)));
            java.lang.String strJ = k0Var2.f904d.j(mapW0, new org.json.JSONObject(k0Var2.f904d.u((int) com.sgscq.vpn.c7.g(), k0Var2.i(k0Var2.c(), "user_gold", mapW0), k0Var2.i(k0Var2.b(), "user_energy", mapW0), k0Var2.i(k0Var2.d(), "user_power", mapW0), k0Var2.j(k0Var2.a(), mapW0), strE2, mapW0)), new java.lang.String[0]);
            linkedHashMapZ0.put("status", 1);
            linkedHashMapZ0.put("pay_status", 1);
            linkedHashMapZ0.put("vip_level", java.lang.Integer.valueOf(iJ));
            linkedHashMapZ0.put("user_vip_level", java.lang.Integer.valueOf(iJ));
            java.util.LinkedHashMap linkedHashMapU1 = com.sgscq.vpn.p5.u1(strS1);
            java.util.LinkedHashMap linkedHashMapU2 = com.sgscq.vpn.p5.u1(strJ);
            linkedHashMapZ0.put("push_info", linkedHashMapU1);
            linkedHashMapZ0.put("cmn", linkedHashMapU2);
            linkedHashMapZ0.put("mail_tip", "充值元宝已发送到邮件");
            linkedHashMapZ0.putAll(m(iQ0, iB0, strValueOf));
            linkedHashMapZ0.put("ret", -1);
            linkedHashMapZ0.put("code", -1);
            linkedHashMapZ0.put("result", java.lang.Boolean.FALSE);
            linkedHashMapZ0.put("error_code", -1);
            linkedHashMapZ0.put("msg", "本机直充已完成，奖励已发送到邮件，请关闭提示后领取");
            linkedHashMapZ0.put("message", "本机直充已完成，奖励已发送到邮件，请关闭提示后领取");
            linkedHashMapZ0.put("toast", "本机直充已完成，奖励已发送到邮件，请关闭提示后领取");
            linkedHashMapZ0.put("tips", "本机直充已完成，奖励已发送到邮件，请关闭提示后领取");
        }
        return k0Var2.n(com.sgscq.vpn.p5.s1(linkedHashMapZ0));
    }

    public final void l(java.util.ArrayList arrayList, java.lang.String str, java.lang.String str2, java.lang.String str3, int i2, int i3, int i4, int i5) {
        java.util.HashMap mapP = c.a.p("pk_id", str, "item_id", str2);
        mapP.put("item_price", java.lang.Integer.valueOf(i2));
        mapP.put("discount_price", java.lang.Integer.valueOf(i2));
        mapP.put("currency_type", 1);
        mapP.put("purchase_num", java.lang.Integer.valueOf(i3));
        mapP.put("purchased_num", java.lang.Integer.valueOf(i4));
        mapP.put("is_purchased", java.lang.Integer.valueOf(i4 >= i3 ? 0 : 1));
        mapP.put("open_time", 0);
        mapP.put("close_time", 0);
        mapP.put("vip_level", java.lang.Integer.valueOf(i5));
        mapP.put("tag_id", 0);
        mapP.put("can_exchange", java.lang.Boolean.TRUE);
        mapP.put("is_notice", "0");
        mapP.put("item_title", str3);
        mapP.put("item_desc", R0(str2, str3));
        arrayList.add(mapP);
    }

    public final byte[] l0(java.util.Map map) {
        java.util.Map map2;
        java.lang.String str;
        com.sgscq.vpn.h5 h5Var;
        java.lang.Object obj;
        java.lang.Object obj2;
        java.util.LinkedHashMap linkedHashMap;
        boolean z;
        int i2;
        java.util.LinkedHashMap linkedHashMapX0;
        java.lang.String str2;
        com.sgscq.vpn.handler.k0 k0Var = this.f1033a;
        java.lang.String strE = k0Var.e(map);
        com.sgscq.vpn.h5 h5Var2 = k0Var.f904d;
        java.util.Map mapW0 = h5Var2.w0(strE);
        if (mapW0 == null) {
            mapW0 = new java.util.LinkedHashMap();
        }
        java.lang.String str3 = map == null ? "1" : (java.lang.String) map.getOrDefault("pk_id", (java.lang.String) map.getOrDefault("quick_id", (java.lang.String) map.getOrDefault("item_advanced_id", "")));
        java.lang.String str4 = map == null ? "" : (java.lang.String) map.getOrDefault("item_id", "");
        if (str3.isEmpty() && str4.isEmpty()) {
            str3 = "1";
        }
        java.util.Iterator it = K0().iterator();
        do {
            if (!it.hasNext()) {
                map2 = null;
                break;
            }
            map2 = (java.util.Map) it.next();
            if (c.a.A(map2, "pk_id", str3)) {
                break;
            }
        } while (!c.a.A(map2, "item_id", str4));
        if (map2 == null) {
            str2 = "商品不存在";
            str = strE;
            h5Var = h5Var2;
        } else {
            java.util.LinkedHashMap linkedHashMap2 = new java.util.LinkedHashMap(map2);
            int iMax = java.lang.Math.max(1, com.sgscq.vpn.w1.l2(map != null ? (java.lang.String) map.getOrDefault("item_num", "1") : "1", 1));
            int iL2 = com.sgscq.vpn.w1.l2(java.lang.String.valueOf(linkedHashMap2.get("price")), com.sgscq.vpn.w1.l2(java.lang.String.valueOf(linkedHashMap2.get("discount_price")), 10));
            int iL3 = com.sgscq.vpn.w1.l2(java.lang.String.valueOf(linkedHashMap2.get("effect_value")), 50);
            int iL4 = com.sgscq.vpn.w1.l2(java.lang.String.valueOf(mapW0.getOrDefault("user_gold", 0)), 0);
            java.lang.String strValueOf = java.lang.String.valueOf(linkedHashMap2.get("item_id"));
            int iN2 = com.sgscq.vpn.cloud.m0.n2(mapW0);
            str = strE;
            h5Var = h5Var2;
            if (!"600030".equals(strValueOf) ? !(!"600031".equals(strValueOf) ? !(!"600035".equals(strValueOf) || iN2 >= 5) : iN2 < 3) : iN2 < 6) {
                int iV1 = com.sgscq.vpn.p5.v1(iMax, iL2, strValueOf, mapW0);
                if (iL4 >= iV1) {
                    boolean zY1 = com.sgscq.vpn.cloud.m0.y1(strValueOf);
                    android.content.Context context = k0Var.f901a;
                    if (zY1) {
                        if (com.sgscq.vpn.cloud.m0.x2(strValueOf, mapW0) + iMax > com.sgscq.vpn.cloud.m0.i2(iN2, context, strValueOf)) {
                            str2 = "今日购买次数已达VIP上限";
                        }
                        java.lang.String str5 = str;
                        h5Var.S0(str5, mapW0);
                        linkedHashMapX0.put("cmn", n(str5, mapW0, mapW0, K(linkedHashMapX0)));
                        return k0Var.n(com.sgscq.vpn.p5.s1(linkedHashMapX0));
                    }
                    mapW0.put("user_gold", java.lang.Integer.valueOf(iL4 - iV1));
                    java.lang.String str6 = "cd_item_price";
                    java.lang.String str7 = "coolDownTime";
                    if (!("600018".equals(strValueOf) || "600019".equals(strValueOf) || "600020".equals(strValueOf) || "600021".equals(strValueOf) || "600100".equals(strValueOf))) {
                        if ("600030".equals(strValueOf)) {
                            mapW0.put("dungeon_cold_time", 0);
                            mapW0.put("coolDownTime", 0);
                            mapW0.put("cd_item_price", 0);
                            mapW0.put("base_cold_time", 0);
                        } else {
                            if (com.sgscq.vpn.cloud.m0.o1(strValueOf)) {
                                int iX2 = com.sgscq.vpn.cloud.m0.x2(strValueOf, mapW0);
                                java.lang.String str8 = "600035".equals(strValueOf) ? "elite_dungeon_times_extra" : "dungeon_times_extra";
                                java.lang.String str9 = map != null ? (java.lang.String) map.get("extra_param") : "";
                                java.lang.String strA0 = A0(str9);
                                if (strA0.isEmpty()) {
                                    z = false;
                                    obj = "dungeon_cold_time";
                                } else {
                                    java.lang.Object obj3 = mapW0.get("dungeon_times");
                                    if (obj3 instanceof java.util.Map) {
                                        linkedHashMap = new java.util.LinkedHashMap((java.util.Map) obj3);
                                        obj = "dungeon_cold_time";
                                    } else {
                                        if (obj3 instanceof java.lang.String) {
                                            obj = "dungeon_cold_time";
                                            if (java.lang.String.valueOf(obj3).trim().startsWith("{")) {
                                                try {
                                                    linkedHashMap = new java.util.LinkedHashMap(com.sgscq.vpn.p5.u1(java.lang.String.valueOf(obj3)));
                                                } catch (java.lang.Exception unused) {
                                                    linkedHashMap = new java.util.LinkedHashMap();
                                                }
                                            }
                                        } else {
                                            obj = "dungeon_cold_time";
                                        }
                                        linkedHashMap = new java.util.LinkedHashMap();
                                    }
                                    linkedHashMap.put(strA0, 0);
                                    mapW0.put("dungeon_times", linkedHashMap);
                                    z = true;
                                }
                                if (!z && (i2 = iL3 * iMax) > 0) {
                                    java.lang.String strA1 = A0(str9);
                                    java.lang.Object obj4 = mapW0.get(str8);
                                    boolean z2 = obj4 instanceof java.util.Map;
                                    if (z2 || !strA1.isEmpty()) {
                                        java.util.LinkedHashMap linkedHashMap3 = z2 ? new java.util.LinkedHashMap((java.util.Map) obj4) : new java.util.LinkedHashMap();
                                        linkedHashMap3.put(strA1, java.lang.Integer.valueOf(com.sgscq.vpn.w1.l2(java.lang.String.valueOf(linkedHashMap3.getOrDefault(strA1, 0)), 0) + i2));
                                        mapW0.put(str8, linkedHashMap3);
                                    } else {
                                        mapW0.put(str8, java.lang.Integer.valueOf(com.sgscq.vpn.w1.l2(java.lang.String.valueOf(mapW0.getOrDefault(str8, 0)), 0) + i2));
                                    }
                                }
                                com.sgscq.vpn.cloud.m0.D2(iX2 + iMax, strValueOf, mapW0);
                                java.util.LinkedHashMap linkedHashMap4 = new java.util.LinkedHashMap(linkedHashMap2);
                                Z(context, strValueOf, linkedHashMap4, mapW0);
                                linkedHashMap2 = linkedHashMap4;
                            } else {
                                obj = "dungeon_cold_time";
                                str6 = "cd_item_price";
                                str7 = "coolDownTime";
                                if ("600008".equals(strValueOf) || "600029".equals(strValueOf)) {
                                    obj2 = "user_energy";
                                    mapW0.put(obj2, java.lang.Integer.valueOf((iL3 * iMax) + com.sgscq.vpn.w1.l2(java.lang.String.valueOf(mapW0.getOrDefault(obj2, 0)), 0)));
                                    Z0(linkedHashMap2, mapW0, strValueOf, iMax, context);
                                } else {
                                    mapW0.put("user_power", java.lang.Integer.valueOf((iL3 * iMax) + com.sgscq.vpn.w1.l2(java.lang.String.valueOf(mapW0.getOrDefault("user_power", 0)), 0)));
                                    Z0(linkedHashMap2, mapW0, strValueOf, iMax, context);
                                }
                            }
                            obj2 = "user_energy";
                        }
                        linkedHashMapX0 = X0();
                        linkedHashMapX0.put("quick_info", linkedHashMap2);
                        linkedHashMapX0.put("item_num", java.lang.Integer.valueOf(iMax));
                        linkedHashMapX0.put("user_gold", mapW0.get("user_gold"));
                        linkedHashMapX0.put("user_power", mapW0.getOrDefault("user_power", 0));
                        linkedHashMapX0.put(obj2, mapW0.getOrDefault(obj2, 0));
                        linkedHashMapX0.put("ladder_challenging_num", mapW0.getOrDefault("ladderChallengeTimes", 0));
                        linkedHashMapX0.put("ladderChallengeTimes", mapW0.getOrDefault("ladderChallengeTimes", 0));
                        java.lang.Object obj5 = obj;
                        linkedHashMapX0.put(obj5, mapW0.getOrDefault(obj5, 0));
                        java.lang.String str10 = str7;
                        linkedHashMapX0.put(str10, mapW0.getOrDefault(str10, 0));
                        java.lang.String str11 = str6;
                        linkedHashMapX0.put(str11, mapW0.getOrDefault(str11, 0));
                        Y(strValueOf, linkedHashMap2, mapW0);
                        java.util.ArrayList arrayList = new java.util.ArrayList();
                        int i3 = iL3 * iMax;
                        arrayList.add(com.sgscq.vpn.p5.z0("item_id", strValueOf, "id", strValueOf, "num", java.lang.Integer.valueOf(i3), "item_num", java.lang.Integer.valueOf(i3), "type", 5));
                        linkedHashMapX0.put("add_list", arrayList);
                        linkedHashMapX0.put("cmn_modules", "Player");
                        java.lang.String str12 = str;
                        h5Var.S0(str12, mapW0);
                        linkedHashMapX0.put("cmn", n(str12, mapW0, mapW0, K(linkedHashMapX0)));
                        return k0Var.n(com.sgscq.vpn.p5.s1(linkedHashMapX0));
                    }
                    mapW0.put("ladderChallengeTimes", java.lang.Integer.valueOf((iL3 * iMax) + com.sgscq.vpn.w1.l2(java.lang.String.valueOf(mapW0.getOrDefault("ladderChallengeTimes", 0)), 0)));
                    mapW0.put("ladder_challenging_num", mapW0.get("ladderChallengeTimes"));
                    Z0(linkedHashMap2, mapW0, strValueOf, iMax, context);
                    obj = "dungeon_cold_time";
                    str6 = "cd_item_price";
                    str7 = "coolDownTime";
                    obj2 = "user_energy";
                    linkedHashMapX0 = X0();
                    linkedHashMapX0.put("quick_info", linkedHashMap2);
                    linkedHashMapX0.put("item_num", java.lang.Integer.valueOf(iMax));
                    linkedHashMapX0.put("user_gold", mapW0.get("user_gold"));
                    linkedHashMapX0.put("user_power", mapW0.getOrDefault("user_power", 0));
                    linkedHashMapX0.put(obj2, mapW0.getOrDefault(obj2, 0));
                    linkedHashMapX0.put("ladder_challenging_num", mapW0.getOrDefault("ladderChallengeTimes", 0));
                    linkedHashMapX0.put("ladderChallengeTimes", mapW0.getOrDefault("ladderChallengeTimes", 0));
                    java.lang.Object obj6 = obj;
                    linkedHashMapX0.put(obj6, mapW0.getOrDefault(obj6, 0));
                    java.lang.String str13 = str7;
                    linkedHashMapX0.put(str13, mapW0.getOrDefault(str13, 0));
                    java.lang.String str14 = str6;
                    linkedHashMapX0.put(str14, mapW0.getOrDefault(str14, 0));
                    Y(strValueOf, linkedHashMap2, mapW0);
                    java.util.ArrayList arrayList2 = new java.util.ArrayList();
                    int i4 = iL3 * iMax;
                    arrayList2.add(com.sgscq.vpn.p5.z0("item_id", strValueOf, "id", strValueOf, "num", java.lang.Integer.valueOf(i4), "item_num", java.lang.Integer.valueOf(i4), "type", 5));
                    linkedHashMapX0.put("add_list", arrayList2);
                    linkedHashMapX0.put("cmn_modules", "Player");
                    java.lang.String str15 = str;
                    h5Var.S0(str15, mapW0);
                    linkedHashMapX0.put("cmn", n(str15, mapW0, mapW0, K(linkedHashMapX0)));
                    return k0Var.n(com.sgscq.vpn.p5.s1(linkedHashMapX0));
                }
                str2 = "元宝不足";
            } else {
                str2 = "VIP等级不足";
            }
        }
        linkedHashMapX0 = W(str2);
        java.lang.String str16 = str;
        h5Var.S0(str16, mapW0);
        linkedHashMapX0.put("cmn", n(str16, mapW0, mapW0, K(linkedHashMapX0)));
        return k0Var.n(com.sgscq.vpn.p5.s1(linkedHashMapX0));
    }

    public final byte[] m0(java.lang.String str, java.util.Map map) {
        int i2;
        java.lang.String str2;
        int iIntValue;
        int i3;
        if (com.sgscq.vpn.c7.f254i) {
            return M0();
        }
        com.sgscq.vpn.f fVarJ = new com.sgscq.vpn.h(0, this.f1033a.f901a).j();
        int i4 = fVarJ.f665c ? fVarJ.f668f : 0;
        int iA = new com.sgscq.vpn.b0(this.f1033a.f901a).a();
        int iA2 = new com.sgscq.vpn.h(1, this.f1033a.f901a).a();
        int iO = O(i4, iA, iA2);
        java.lang.String strE = this.f1033a.e(map);
        java.util.Map mapW0 = this.f1033a.f904d.w0(strE);
        if (mapW0 == null) {
            return this.f1033a.n(com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("ret", -1, "code", -1, "result", java.lang.Boolean.FALSE, "msg", "玩家数据不存在", "error_code", -1)));
        }
        java.lang.String strV = V(e0(map, "order_id", "orderId", "order_ids"));
        java.lang.String strE0 = e0(map, "product_id", "pk_id", "id");
        if (strE0.isEmpty()) {
            java.util.Map mapE0 = E0(strV, mapW0);
            strE0 = mapE0 == null ? "" : java.lang.String.valueOf(mapE0.getOrDefault("product_id", ""));
        }
        if (!(!"charge_6480".equals(strE0) || a() >= 3)) {
            return p0();
        }
        int iQ0 = Q0(strV, mapW0, map);
        boolean zO0 = o0(strV, mapW0);
        java.lang.String strB = com.sgscq.vpn.c7.b();
        int i5 = c.a.B(mapW0, "daily_recharge_day", "", strB) ? this.f1033a.i(0, "daily_recharge_rmb_used", mapW0) : 0;
        if (!zO0 && i5 + iQ0 > iO) {
            java.lang.String strY = y(iQ0, java.lang.Math.max(0, iO - i5));
            com.sgscq.vpn.z2.e("SGSCQ_SRV", "[Recharge] daily limit: level=" + i4 + " biliBonus=" + iA + " douyinBonus=" + iA2 + " limit=" + iO + " used=" + i5 + " rmb=" + iQ0);
            com.sgscq.vpn.p5.l1(this.f1033a.f901a, z(i5, iO));
            return L0(strY);
        }
        int iP0 = P0(mapW0, map, strV, iQ0);
        if (zO0) {
            iIntValue = B0(iP0, "current_charge_gold", mapW0);
            i2 = iQ0;
            str2 = "order_id";
        } else {
            com.sgscq.vpn.q4 q4VarH0 = H0(mapW0, map, com.sgscq.vpn.c7.f(), strB);
            com.sgscq.vpn.h5 h5Var = this.f1033a.f904d;
            java.lang.String str3 = q4VarH0.f1320b;
            java.util.Map map2 = q4VarH0.f1322d;
            long j2 = q4VarH0.f1323e;
            i2 = iQ0;
            str2 = "order_id";
            iIntValue = ((java.lang.Number) h5Var.P(strE, mapW0, str3, "recharge_grant", map2, j2).getOrDefault("gold", 0)).intValue();
            com.sgscq.vpn.p5.l1(this.f1033a.f901a, z(i5 + i2, iO));
        }
        int iJ = J(this.f1033a.i(0, "totalRecharge", mapW0));
        this.f1033a.f904d.getClass();
        java.lang.String strS1 = com.sgscq.vpn.p5.s1(com.sgscq.vpn.h5.w(com.sgscq.vpn.h5.k0(mapW0)));
        int iG = (int) com.sgscq.vpn.c7.g();
        com.sgscq.vpn.handler.k0 k0Var = this.f1033a;
        com.sgscq.vpn.h5 h5Var2 = k0Var.f904d;
        long j3 = k0Var.j(k0Var.a(), mapW0);
        com.sgscq.vpn.handler.k0 k0Var2 = this.f1033a;
        int i6 = k0Var2.i(k0Var2.c(), "user_gold", mapW0);
        com.sgscq.vpn.handler.k0 k0Var3 = this.f1033a;
        int i7 = k0Var3.i(k0Var3.b(), "user_energy", mapW0);
        com.sgscq.vpn.handler.k0 k0Var4 = this.f1033a;
        int i8 = iIntValue;
        java.lang.String strJ = this.f1033a.f904d.j(mapW0, new org.json.JSONObject(h5Var2.u(iG, i6, i7, k0Var4.i(k0Var4.d(), "user_power", mapW0), j3, strE, mapW0)), new java.lang.String[0]);
        java.lang.Boolean bool = java.lang.Boolean.TRUE;
        java.util.LinkedHashMap linkedHashMapZ0 = com.sgscq.vpn.p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "order_id", strV, "orderId", strV, "status", 1, "pay_status", 1, "vip_level", java.lang.Integer.valueOf(iJ), "user_vip_level", java.lang.Integer.valueOf(iJ), "mail_tip", "充值元宝已发送到邮件");
        java.util.LinkedHashMap linkedHashMapU1 = com.sgscq.vpn.p5.u1(strS1);
        java.util.LinkedHashMap linkedHashMapU2 = com.sgscq.vpn.p5.u1(strJ);
        linkedHashMapZ0.put("push_info", linkedHashMapU1);
        linkedHashMapZ0.put("cmn", linkedHashMapU2);
        if ("product.checkOrder".equals(str) || "pay.checkOrder".equals(str)) {
            i3 = i8;
            linkedHashMapZ0.putAll(m(i2, i3, strV));
        } else {
            if ("payIos.iosCharge".equals(str)) {
                linkedHashMapZ0.put("chargeInfo", com.sgscq.vpn.p5.z0(str2, strV, "orderId", strV, "is_completed", bool, "price", java.lang.Integer.valueOf(i2), "gold", java.lang.Integer.valueOf(i8), "pay_status", 1, "status", 1, "flag", 1));
            }
            i3 = i8;
        }
        java.lang.StringBuilder sbL = c.a.l("[Recharge] ", str, " uid=", strE, " rmb=");
        sbL.append(i2);
        sbL.append(" gold=");
        sbL.append(i3);
        sbL.append(" vip=");
        sbL.append(iJ);
        com.sgscq.vpn.z2.e("SGSCQ_SRV", sbL.toString());
        return this.f1033a.n(com.sgscq.vpn.p5.s1(linkedHashMapZ0));
    }

    public final java.util.LinkedHashMap n(java.lang.String str, java.util.Map map, java.util.Map map2, java.lang.String... strArr) {
        com.sgscq.vpn.handler.k0 k0Var = this.f1033a;
        return com.sgscq.vpn.p5.u1(k0Var.f904d.j(map, new org.json.JSONObject(k0Var.f904d.u((int) com.sgscq.vpn.c7.g(), k0Var.i(k0Var.c(), "user_gold", map2), k0Var.i(k0Var.b(), "user_energy", map2), k0Var.i(k0Var.d(), "user_power", map2), k0Var.j(k0Var.a(), map2), str, map2)), strArr));
    }

    /* JADX WARN: Code duplicated, block: B:110:0x0365 A[PHI: r10 r33 r36
      0x0365: PHI (r10v6 java.lang.String) = (r10v0 java.lang.String), (r10v0 java.lang.String), (r10v1 java.lang.String) binds: [B:109:0x0363, B:112:0x0376, B:499:0x0365] A[DONT_GENERATE, DONT_INLINE]
      0x0365: PHI (r33v6 java.lang.String) = (r33v0 java.lang.String), (r33v0 java.lang.String), (r33v1 java.lang.String) binds: [B:109:0x0363, B:112:0x0376, B:499:0x0365] A[DONT_GENERATE, DONT_INLINE]
      0x0365: PHI (r36v7 java.lang.String) = (r36v0 java.lang.String), (r36v0 java.lang.String), (r36v1 java.lang.String) binds: [B:109:0x0363, B:112:0x0376, B:499:0x0365] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:147:0x0455  */
    /* JADX WARN: Code duplicated, block: B:152:0x0478  */
    /* JADX WARN: Code duplicated, block: B:206:0x05cf A[PHI: r5
      0x05cf: PHI (r5v70 int) = (r5v24 int), (r5v71 int) binds: [B:186:0x053b, B:204:0x05a2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:210:0x05ec  */
    /* JADX WARN: Code duplicated, block: B:211:0x0621  */
    /* JADX WARN: Code duplicated, block: B:213:0x0633  */
    /* JADX WARN: Code duplicated, block: B:214:0x0635  */
    /* JADX WARN: Code duplicated, block: B:217:0x0641  */
    /* JADX WARN: Code duplicated, block: B:218:0x0674  */
    /* JADX WARN: Code duplicated, block: B:220:0x0686  */
    /* JADX WARN: Code duplicated, block: B:235:0x0714 A[PHI: r6 r7 r8 r9 r50 r51
      0x0714: PHI (r6v55 java.lang.String) = (r6v19 java.lang.String), (r6v19 java.lang.String), (r6v57 java.lang.String) binds: [B:219:0x0684, B:221:0x068c, B:459:0x0714] A[DONT_GENERATE, DONT_INLINE]
      0x0714: PHI (r7v45 java.util.ArrayList) = (r7v44 java.util.ArrayList), (r7v44 java.util.ArrayList), (r7v48 java.util.ArrayList) binds: [B:219:0x0684, B:221:0x068c, B:459:0x0714] A[DONT_GENERATE, DONT_INLINE]
      0x0714: PHI (r8v57 boolean) = (r8v56 boolean), (r8v56 boolean), (r8v59 boolean) binds: [B:219:0x0684, B:221:0x068c, B:459:0x0714] A[DONT_GENERATE, DONT_INLINE]
      0x0714: PHI (r9v25 java.util.ArrayList) = (r9v13 java.util.ArrayList), (r9v13 java.util.ArrayList), (r9v32 java.util.ArrayList) binds: [B:219:0x0684, B:221:0x068c, B:459:0x0714] A[DONT_GENERATE, DONT_INLINE]
      0x0714: PHI (r50v9 java.lang.String) = (r50v8 java.lang.String), (r50v8 java.lang.String), (r50v11 java.lang.String) binds: [B:219:0x0684, B:221:0x068c, B:459:0x0714] A[DONT_GENERATE, DONT_INLINE]
      0x0714: PHI (r51v9 java.lang.String) = (r51v8 java.lang.String), (r51v8 java.lang.String), (r51v11 java.lang.String) binds: [B:219:0x0684, B:221:0x068c, B:459:0x0714] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:237:0x074c  */
    /* JADX WARN: Code duplicated, block: B:239:0x0754  */
    /* JADX WARN: Code duplicated, block: B:243:0x0765  */
    /* JADX WARN: Code duplicated, block: B:245:0x076d  */
    /* JADX WARN: Code duplicated, block: B:249:0x07ad  */
    /* JADX WARN: Code duplicated, block: B:250:0x07c8  */
    /* JADX WARN: Code duplicated, block: B:252:0x07ed  */
    /* JADX WARN: Code duplicated, block: B:253:0x07fb  */
    /* JADX WARN: Code duplicated, block: B:256:0x080f  */
    /* JADX WARN: Code duplicated, block: B:265:0x0840  */
    /* JADX WARN: Code duplicated, block: B:51:0x017e  */
    /* JADX WARN: Code duplicated, block: B:95:0x027b  */
    /* JADX WARN: Instruction removed from duplicated block: B:217:0x0641, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:249:0x07ad, please report this as an issue */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final byte[] n0(java.util.Map map) {
        int i2;
        java.lang.Integer num;
        java.lang.String str;
        com.sgscq.vpn.t4 t4VarY0;
        java.lang.String str2;
        java.lang.String str3;
        java.lang.String str4;
        java.lang.String str5;
        boolean z;
        java.lang.String str6;
        java.lang.String str7;
        java.lang.String str8;
        java.lang.String str9;
        java.lang.String str10;
        java.util.ArrayList arrayList;
        com.sgscq.vpn.handler.x0 x0Var;
        long j2;
        java.lang.String str11;
        java.lang.Object obj;
        boolean z2;
        java.lang.Object obj2;
        int i3;
        java.util.ArrayList arrayList2;
        java.lang.String str12;
        java.lang.String str13;
        com.sgscq.vpn.handler.x0 x0Var2;
        java.util.ArrayList arrayList3;
        java.lang.String str14;
        java.lang.String str15;
        java.lang.String str16;
        java.lang.String str17;
        java.lang.String strValueOf;
        java.lang.String strValueOf2;
        int i4;
        java.lang.String str18;
        int i5;
        java.lang.String str19;
        java.lang.String str20;
        double[] dArr;
        int i6;
        int[] iArr;
        boolean z3;
        java.lang.String str21;
        java.util.ArrayList arrayList4;
        java.lang.String strT;
        boolean z4;
        boolean zContains;
        com.sgscq.vpn.w1 w1VarA1;
        java.lang.String strR0;
        java.util.ArrayList arrayList5;
        java.util.Map map2;
        com.sgscq.vpn.handler.k0 k0Var;
        android.content.Context context;
        com.sgscq.vpn.w1 w1VarA2;
        int i7;
        java.lang.String str22;
        com.sgscq.vpn.w1 w1Var;
        java.util.ArrayList arrayList6;
        java.util.ArrayList arrayList7;
        java.lang.String str23;
        java.lang.String str24;
        java.lang.String str25;
        boolean z5;
        java.util.HashMap mapY1;
        java.util.HashMap mapZ1;
        java.lang.String str26;
        java.util.Map map3;
        java.lang.Integer num2;
        com.sgscq.vpn.handler.x0 x0Var3;
        java.util.Map map4;
        com.sgscq.vpn.handler.x0 x0Var4;
        java.util.List listO;
        java.util.List listO2;
        java.util.List list;
        java.lang.String str27;
        java.util.ArrayList arrayList8;
        java.lang.Object obj3;
        java.util.ArrayList arrayList9;
        double[] dArrK0;
        java.lang.Object obj4;
        java.lang.Object obj5;
        java.util.List list2;
        com.sgscq.vpn.w1 w1Var2;
        boolean zC1;
        java.lang.String strE = this.f1033a.e(map);
        java.lang.String str28 = (java.lang.String) map.getOrDefault("type", "4");
        boolean z6 = u0((java.lang.String) map.get("is_multi")) || u0((java.lang.String) map.get("multi"));
        try {
            i2 = java.lang.Integer.parseInt(str28);
        } catch (java.lang.NumberFormatException unused) {
            i2 = 4;
        }
        if (i2 != 2 && i2 != 3 && i2 != 4) {
            i2 = 4;
        }
        int i8 = z6 ? 10 : 1;
        java.util.Map mapW0 = this.f1033a.f904d.w0(strE);
        if (mapW0 == null) {
            com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Wine] player not found: " + strE);
            return this.f1033a.n(com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("error_code", -1, "ret", -1, "code", -1, "result", java.lang.Boolean.FALSE, "msg", "玩家数据不存在")));
        }
        java.util.ArrayList arrayList10 = new java.util.ArrayList();
        java.util.ArrayList arrayList11 = new java.util.ArrayList();
        java.util.ArrayList arrayList12 = new java.util.ArrayList();
        java.util.ArrayList arrayList13 = new java.util.ArrayList();
        java.util.ArrayList arrayList14 = new java.util.ArrayList();
        java.util.ArrayList arrayList15 = new java.util.ArrayList();
        java.util.ArrayList arrayList16 = arrayList10;
        java.util.ArrayList arrayList17 = arrayList11;
        long jG = com.sgscq.vpn.c7.g();
        if (i2 != 2) {
            num = 1;
            str = i2 != 3 ? "wine_copper_time" : "wine_silver_time";
        } else {
            num = 1;
            str = "wine_gold_time";
        }
        int I = I(mapW0, str, jG, i2 != 2 ? i2 != 3 ? 300 : 600 : 1800);
        boolean z7 = I == 0 && !z6;
        java.lang.String str29 = (java.lang.String) map.get("user_item_id");
        java.lang.String str30 = str;
        java.util.ArrayList arrayList18 = arrayList12;
        java.lang.String str31 = "user_gold";
        int i9 = i8;
        java.util.ArrayList arrayList19 = arrayList15;
        java.lang.String str32 = "pk_id";
        if (z7) {
            com.sgscq.vpn.z2.e("SGSCQ_SRV", "[Wine] uid=" + strE + " free draw, no item needed");
            str31 = "user_gold";
            z = z6;
            arrayList = arrayList14;
            j2 = jG;
            str10 = str32;
            x0Var = this;
            str6 = "user_energy";
            str7 = "add";
            str8 = strE;
            str4 = "wine_copper_time";
            str9 = "";
            str5 = "user_power";
            str3 = "gold_wine_count";
        } else {
            java.lang.String str33 = "";
            java.lang.Object obj6 = mapW0.get("Item");
            if (obj6 instanceof java.util.Map) {
                java.lang.Object obj7 = ((java.util.Map) obj6).get("add");
                if (obj7 instanceof java.util.List) {
                    java.util.List list3 = (java.util.List) obj7;
                    str2 = "add";
                    java.lang.String str34 = i2 != 2 ? i2 != 3 ? "600025" : "600024" : "600023";
                    com.sgscq.vpn.t4 t4VarY1 = Y0(list3, str29, str34, z6);
                    t4VarY0 = t4VarY1 != null ? t4VarY1 : Y0(list3, z6 ? b0("600032", list3) : b0(str34, list3), str34, z6);
                } else {
                    t4VarY0 = null;
                    str2 = "add";
                }
            } else {
                t4VarY0 = null;
                str2 = "add";
            }
            if (t4VarY0 == null) {
                com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Wine] cup exhausted, no reward: pk_id=" + str29 + " type=" + i2 + " multi=" + z6);
                int iG = (int) com.sgscq.vpn.c7.g();
                com.sgscq.vpn.handler.k0 k0Var2 = this.f1033a;
                boolean z8 = z6;
                java.lang.String strJ = k0Var2.f904d.j(mapW0, new org.json.JSONObject(k0Var2.f904d.u(iG, T0(k0Var2.c(), "user_gold", mapW0), T0(k0Var2.b(), "user_energy", mapW0), T0(k0Var2.d(), "user_power", mapW0), k0Var2.j((long) k0Var2.a(), mapW0), strE, mapW0)), "Item");
                java.lang.String strF = F();
                int I2 = I(mapW0, "wine_gold_time", jG, 1800);
                int I3 = I(mapW0, "wine_silver_time", jG, 600);
                int I4 = I(mapW0, "wine_copper_time", jG, 300);
                boolean zT0 = t0(mapW0);
                int i10 = k0Var2.i(0, "gold_wine_count", mapW0);
                int i11 = k0Var2.i(0, "gold_guarantee_phase", mapW0) <= 1 ? 4 : 10;
                int i12 = i11 - ((i10 + 1) % i11);
                if (i12 == i11) {
                    i12 = 0;
                }
                java.util.LinkedHashMap linkedHashMapC = C(I2, I2 == 0 ? 1 : 0, I3, I3 == 0 ? 1 : 0, I4, i12, i11, zT0 ? 1 : 0, strF);
                if (i2 == 2 && z8) {
                    str11 = "将军盏不足";
                } else if (i2 == 2) {
                    str11 = "金酒杯不足";
                } else if (i2 == 3) {
                    str11 = "银酒杯不足";
                } else if (i2 == 4) {
                    str11 = "铜酒杯不足";
                } else {
                    str11 = "金酒杯不足";
                }
                java.lang.String str35 = str11;
                return k0Var2.n(com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("error_code", -3, "ret", -3, "code", -3, "result", java.lang.Boolean.FALSE, "msg", str35, "message", str35, "user_wine_info", linkedHashMapC, "cmn", com.sgscq.vpn.p5.u1(strJ))));
            }
            str3 = "gold_wine_count";
            java.lang.String str36 = (java.lang.String) t4VarY0.f1400d;
            str4 = "wine_copper_time";
            java.lang.String str37 = (java.lang.String) t4VarY0.f1399c;
            str5 = "user_power";
            java.lang.StringBuilder sbL = c.a.l("[Wine] uid=", strE, " item=", str36, " pk=");
            sbL.append(str37);
            sbL.append(" consumed=");
            sbL.append(t4VarY0.f1397a);
            sbL.append(" remaining=");
            sbL.append(t4VarY0.f1398b);
            sbL.append(" freeEnd=");
            sbL.append(I);
            sbL.append(" isFree=");
            sbL.append(z7);
            sbL.append(" multi=");
            z = z6;
            sbL.append(z);
            com.sgscq.vpn.z2.e("SGSCQ_SRV", sbL.toString());
            int i13 = t4VarY0.f1398b;
            if (i13 <= 0) {
                java.lang.Object obj8 = mapW0.get("Item");
                if (obj8 instanceof java.util.Map) {
                    str7 = str2;
                    java.lang.Object obj9 = ((java.util.Map) obj8).get(str7);
                    str6 = "user_energy";
                    if (obj9 instanceof java.util.List) {
                        ((java.util.List) obj9).removeIf(new com.sgscq.vpn.r2(str37, 4));
                    }
                } else {
                    str6 = "user_energy";
                    str7 = str2;
                }
                arrayList19.add(str37);
                arrayList19 = arrayList19;
                arrayList = arrayList14;
                str10 = str32;
                str8 = strE;
                str9 = str33;
                z = z;
            } else {
                str6 = "user_energy";
                str31 = "user_gold";
                str7 = str2;
                java.lang.Object obj10 = mapW0.get("Item");
                if (!(obj10 instanceof java.util.Map)) {
                    str10 = str32;
                    str8 = strE;
                    str9 = str33;
                    break;
                }
                java.lang.Object obj11 = ((java.util.Map) obj10).get(str7);
                if (!(obj11 instanceof java.util.List)) {
                    str10 = str32;
                    str8 = strE;
                    str9 = str33;
                    break;
                }
                java.util.Iterator it = ((java.util.List) obj11).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        str10 = str32;
                        str8 = strE;
                        str9 = str33;
                        break;
                    }
                    java.lang.Object next = it.next();
                    java.util.Iterator it2 = it;
                    if (next instanceof java.util.Map) {
                        java.util.Map map5 = (java.util.Map) next;
                        java.lang.String str38 = str32;
                        str8 = strE;
                        str9 = str33;
                        if (c.a.B(map5, str38, str9, str37)) {
                            str10 = str38;
                            c.a.t(i13, map5, "item_num", i13, "num");
                            break;
                        }
                        str33 = str9;
                        strE = str8;
                        str32 = str38;
                    }
                    it = it2;
                }
                java.util.Map mapA0 = a0("Item", str37, mapW0);
                arrayList = arrayList14;
                h(arrayList, mapA0);
            }
            com.sgscq.vpn.z2.e("SGSCQ_SRV", "[Wine] consumed " + t4VarY0.f1397a + " " + str36 + " remaining=" + t4VarY0.f1398b);
            x0Var = this;
            j2 = jG;
        }
        com.sgscq.vpn.w1 w1VarA3 = com.sgscq.vpn.w1.a1(x0Var.f1033a.f901a);
        java.util.ArrayList arrayList20 = new java.util.ArrayList();
        java.lang.String str39 = "General";
        java.util.Map map6 = (java.util.Map) mapW0.get("General");
        if (map6 != null && (list2 = (java.util.List) map6.get(str7)) != null) {
            java.util.Iterator it3 = list2.iterator();
            while (it3.hasNext()) {
                java.util.Iterator it4 = it3;
                java.lang.String strValueOf3 = java.lang.String.valueOf(((java.util.Map) it3.next()).getOrDefault("general_id", str9));
                if (!strValueOf3.isEmpty()) {
                    if (strValueOf3.isEmpty()) {
                        w1Var2 = w1VarA3;
                    } else {
                        if (w1VarA3 != null) {
                            w1Var2 = w1VarA3;
                            zC1 = w1VarA3.C1(strValueOf3);
                        } else {
                            w1Var2 = w1VarA3;
                            if (!strValueOf3.startsWith("164") && !strValueOf3.startsWith("19")) {
                                zC1 = true;
                            }
                        }
                        if (zC1) {
                            arrayList20.add(strValueOf3);
                        }
                        w1VarA3 = w1Var2;
                    }
                    zC1 = false;
                    if (zC1) {
                        arrayList20.add(strValueOf3);
                    }
                    w1VarA3 = w1Var2;
                }
                it3 = it4;
            }
        }
        java.util.ArrayList arrayList21 = new java.util.ArrayList();
        java.util.ArrayList arrayList22 = new java.util.ArrayList();
        java.util.ArrayList arrayList23 = arrayList;
        java.util.ArrayList arrayList24 = new java.util.ArrayList();
        long j3 = j2;
        java.lang.Object obj12 = mapW0.get("first_wine_general");
        if (obj12 == null) {
            obj5 = "first_wine_general";
            obj5 = obj;
            z2 = true;
            obj2 = obj5;
        } else {
            java.lang.String strTrim = java.lang.String.valueOf(obj12).trim();
            if (strTrim.isEmpty()) {
                obj5 = "first_wine_general";
            } else {
                obj = "first_wine_general";
                if (!"0".equals(strTrim)) {
                    obj5 = obj;
                    z2 = false;
                    obj2 = obj;
                }
            }
            obj5 = obj;
            z2 = true;
            obj2 = obj5;
        }
        boolean z9 = !mapW0.containsKey("first_silver_wine");
        boolean z10 = !t0(mapW0);
        com.sgscq.vpn.handler.k0 k0Var3 = x0Var.f1033a;
        java.util.ArrayList arrayList25 = arrayList20;
        java.lang.String str40 = com.sgscq.vpn.l2.a(k0Var3 == null ? null : k0Var3.f901a, com.sgscq.vpn.c7.f()).f1079f;
        boolean z11 = !(str40.isEmpty() ? false : c.a.B(mapW0, "limited_gold_soul_first_wine_activity", str9, str40));
        int i14 = x0Var.f1033a.i(0, str3, mapW0);
        int i15 = x0Var.f1033a.i(0, r32, mapW0);
        java.lang.String str41 = str3;
        com.sgscq.vpn.handler.x0 x0Var5 = x0Var;
        int i16 = 0;
        int i17 = i14;
        java.lang.Object obj13 = obj2;
        while (true) {
            java.lang.String str42 = "id";
            i3 = i9;
            if (i16 >= i3) {
                break;
            }
            i9 = i3;
            if (z2) {
                z3 = z2;
                if (i2 == 4 && i16 == 0) {
                    java.lang.String[] strArr = com.sgscq.vpn.w1.V;
                    str42 = "id";
                    str21 = str9;
                    strT = strArr[x0Var5.f1034b.nextInt(strArr.length)];
                    boolean z12 = z9;
                    z4 = true;
                    arrayList4 = arrayList25;
                    z9 = z12;
                }
                zContains = arrayList4.contains(strT);
                int i18 = i15;
                w1VarA1 = com.sgscq.vpn.w1.a1(x0Var5.f1033a.f901a);
                int i19 = i17;
                strR0 = w1VarA1.R0(strT);
                if (zContains) {
                    java.util.HashMap mapO = x0Var5.o(18, strT, strR0);
                    arrayList22.add(mapO);
                    arrayList24.add(mapO);
                    com.sgscq.vpn.w1.k(18, strT, mapW0);
                    java.util.ArrayList arrayList26 = arrayList18;
                    h(arrayList26, d0(strT, mapW0));
                    i7 = i16;
                    arrayList5 = arrayList26;
                    str27 = str39;
                    arrayList6 = arrayList4;
                    arrayList7 = arrayList24;
                    arrayList8 = arrayList16;
                    num2 = num;
                    obj4 = obj13;
                    str24 = str10;
                    str9 = str21;
                    x0Var3 = this;
                } else {
                    arrayList5 = arrayList18;
                    map2 = (java.util.Map) mapW0.get(str39);
                    k0Var = x0Var5.f1033a;
                    if (k0Var == null) {
                        context = null;
                    } else {
                        context = k0Var.f901a;
                    }
                    w1VarA2 = com.sgscq.vpn.w1.a1(context);
                    if (w1VarA2.C1(strT)) {
                        com.sgscq.vpn.handler.x0 x0Var6 = x0Var5;
                        i7 = i16;
                        str22 = strR0;
                        w1Var = w1VarA1;
                        if (map2 != null || (list = (java.util.List) map2.get(str7)) == null) {
                            arrayList6 = arrayList4;
                            arrayList7 = arrayList24;
                            java.lang.String str43 = str21;
                            str23 = str39;
                            str24 = str10;
                            str25 = str43;
                            java.lang.String str44 = str42;
                            z5 = z4;
                            java.lang.String strD2 = com.sgscq.vpn.w1.d2(mapW0);
                            mapY1 = w1VarA2.Y1(strT);
                            mapY1.put(str24, strD2);
                            mapY1.put("general_pk_id", strD2);
                            mapY1.put("general_status", "1");
                            mapY1.put("status", "1");
                            mapY1.put("general_naturalskill_id", strD2);
                            w1VarA2.t2(strD2, mapY1);
                            mapZ1 = w1VarA2.Z1(strT);
                            mapZ1.put(str24, strD2);
                            mapZ1.put("general_pk_id", strD2);
                            if (map2 != null) {
                                listO2 = (java.util.List) map2.get(str7);
                                if (listO2 == null) {
                                    listO2 = c.a.o(map2, str7);
                                }
                                listO2.add(mapY1);
                            }
                            str26 = "Skill";
                            map3 = (java.util.Map) mapW0.get(str26);
                            if (map3 != null) {
                                listO = (java.util.List) map3.get(str7);
                                if (listO == null) {
                                    listO = c.a.o(map3, str7);
                                }
                                listO.add(mapZ1);
                            }
                            java.lang.String strT0 = w1VarA2.T0(strT);
                            com.sgscq.vpn.w1.b2("general_id", strT, null, mapW0);
                            com.sgscq.vpn.w1.b2("skill_id", strT0, null, mapW0);
                            java.lang.String strR1 = w1VarA2.R0(strT);
                            java.util.HashMap mapP = c.a.p(str24, strD2, "general_pk_id", strD2);
                            mapP.put(str44, strT);
                            mapP.put("general_id", strT);
                            mapP.put("general_name", com.sgscq.vpn.p5.M(strR1));
                            num2 = num;
                            mapP.put("card_type", num2);
                            mapP.put("num", num2);
                            x0Var3 = this;
                            x0Var3.X(strT, mapP);
                            map4 = mapP;
                            x0Var4 = x0Var3;
                        } else {
                            java.util.Iterator it5 = list.iterator();
                            while (true) {
                                if (it5.hasNext()) {
                                    arrayList6 = arrayList4;
                                    java.util.Map map7 = (java.util.Map) it5.next();
                                    arrayList7 = arrayList24;
                                    str25 = str21;
                                    java.lang.String str45 = str42;
                                    z5 = z4;
                                    if (c.a.C(map7, str45, str25, "general_id", strT)) {
                                        str23 = str39;
                                        str24 = str10;
                                        java.lang.String strValueOf4 = java.lang.String.valueOf(map7.getOrDefault(str24, strT));
                                        map7.put("general_status", "1");
                                        map7.put("status", "1");
                                        map7.put("grade", java.lang.Integer.valueOf((w1VarA2.K0(strT) == null || w1VarA2.K0(strT).length <= 10) ? 1 : (int) w1VarA2.K0(strT)[10]));
                                        map7.put(str24, strValueOf4);
                                        map7.put("general_pk_id", strValueOf4);
                                        map7.put("general_naturalskill_id", strValueOf4);
                                        w1VarA2.t2(strValueOf4, map7);
                                        x0Var3 = this;
                                        map4 = map7;
                                        num2 = num;
                                        str26 = "Skill";
                                        x0Var4 = x0Var6;
                                    } else {
                                        str39 = str39;
                                        arrayList4 = arrayList6;
                                        str21 = str25;
                                        arrayList24 = arrayList7;
                                        str42 = str45;
                                        z4 = z5;
                                    }
                                } else {
                                    arrayList6 = arrayList4;
                                    arrayList7 = arrayList24;
                                    java.lang.String str46 = str21;
                                    str23 = str39;
                                    str24 = str10;
                                    str25 = str46;
                                    java.lang.String str47 = str42;
                                    z5 = z4;
                                    java.lang.String strD3 = com.sgscq.vpn.w1.d2(mapW0);
                                    mapY1 = w1VarA2.Y1(strT);
                                    mapY1.put(str24, strD3);
                                    mapY1.put("general_pk_id", strD3);
                                    mapY1.put("general_status", "1");
                                    mapY1.put("status", "1");
                                    mapY1.put("general_naturalskill_id", strD3);
                                    w1VarA2.t2(strD3, mapY1);
                                    mapZ1 = w1VarA2.Z1(strT);
                                    mapZ1.put(str24, strD3);
                                    mapZ1.put("general_pk_id", strD3);
                                    if (map2 != null) {
                                        listO2 = (java.util.List) map2.get(str7);
                                        if (listO2 == null) {
                                            listO2 = c.a.o(map2, str7);
                                        }
                                        listO2.add(mapY1);
                                    }
                                    str26 = "Skill";
                                    map3 = (java.util.Map) mapW0.get(str26);
                                    if (map3 != null) {
                                        listO = (java.util.List) map3.get(str7);
                                        if (listO == null) {
                                            listO = c.a.o(map3, str7);
                                        }
                                        listO.add(mapZ1);
                                    }
                                    java.lang.String strT1 = w1VarA2.T0(strT);
                                    com.sgscq.vpn.w1.b2("general_id", strT, null, mapW0);
                                    com.sgscq.vpn.w1.b2("skill_id", strT1, null, mapW0);
                                    java.lang.String strR2 = w1VarA2.R0(strT);
                                    java.util.HashMap mapP2 = c.a.p(str24, strD3, "general_pk_id", strD3);
                                    mapP2.put(str47, strT);
                                    mapP2.put("general_id", strT);
                                    mapP2.put("general_name", com.sgscq.vpn.p5.M(strR2));
                                    num2 = num;
                                    mapP2.put("card_type", num2);
                                    mapP2.put("num", num2);
                                    x0Var3 = this;
                                    x0Var3.X(strT, mapP2);
                                    map4 = mapP2;
                                    x0Var4 = x0Var3;
                                }
                            }
                        }
                    } else {
                        w1VarA2.D(mapW0);
                        com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Wine] skip non-surrenderable general reward general_id=" + strT);
                        i7 = i16;
                        w1Var = w1VarA1;
                        str22 = strR0;
                        arrayList6 = arrayList4;
                        z5 = z4;
                        arrayList7 = arrayList24;
                        num2 = num;
                        x0Var3 = this;
                        map4 = null;
                        x0Var4 = x0Var5;
                        str26 = "Skill";
                        java.lang.String str48 = str21;
                        str23 = str39;
                        str24 = str10;
                        str25 = str48;
                    }
                    if (map4 == null) {
                        com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Wine] skip non-surrenderable draw result: " + strT);
                        arrayList8 = arrayList16;
                        obj4 = obj13;
                        str9 = str25;
                        str27 = str23;
                    } else {
                        arrayList21.add(map4);
                        str9 = str25;
                        java.lang.String strValueOf5 = java.lang.String.valueOf(map4.getOrDefault(str24, str9));
                        str27 = str23;
                        arrayList8 = arrayList16;
                        h(arrayList8, a0(str27, strValueOf5, mapW0));
                        java.util.Map mapA1 = a0(str26, strValueOf5, mapW0);
                        java.util.ArrayList arrayList27 = arrayList17;
                        h(arrayList27, mapA1);
                        if (z5) {
                            java.lang.Object obj14 = obj13;
                            mapW0.put(obj14, java.lang.String.valueOf(map4.get(str24)));
                            obj3 = obj14;
                        } else {
                            obj3 = obj13;
                        }
                        java.util.ArrayList arrayList28 = arrayList7;
                        arrayList28.add(map4);
                        arrayList9 = arrayList6;
                        arrayList9.add(strT);
                        arrayList7 = arrayList28;
                        if (x0Var4.f1033a.f904d != null || (dArrK0 = w1Var.K0(strT)) == null) {
                            arrayList6 = arrayList9;
                        } else {
                            arrayList6 = arrayList9;
                            if (dArrK0.length > 10 && ((int) dArrK0[10]) == 1) {
                                arrayList17 = arrayList27;
                                x0Var4.f1033a.f904d.b(G0(mapW0), com.sgscq.vpn.handler.l.a("开启金杯获得了", str22, "，瞬间战斗力大增。"));
                                obj4 = obj3;
                            }
                        }
                        arrayList17 = arrayList27;
                        obj4 = obj3;
                    }
                    x0Var5 = x0Var4;
                }
                str10 = str24;
                num = num2;
                obj13 = obj4;
                arrayList16 = arrayList8;
                str39 = str27;
                z9 = z9;
                z2 = z3;
                i15 = i18;
                i17 = i19;
                arrayList24 = arrayList7;
                arrayList25 = arrayList6;
                i16 = i7 + 1;
                i2 = i2;
                arrayList18 = arrayList5;
            } else {
                z3 = z2;
            }
            str21 = str9;
            if (z9 && i2 == 3 && i16 == 0) {
                arrayList4 = arrayList25;
                strT = x0Var5.S(2, arrayList4);
                mapW0.put("first_silver_wine", "1");
            } else {
                arrayList4 = arrayList25;
                if (i2 != 2) {
                    strT = x0Var5.T(i2, arrayList4);
                } else if (z10 && i16 == 0) {
                    java.util.ArrayList arrayList29 = new java.util.ArrayList();
                    java.lang.String[] strArr2 = f1031f;
                    int i20 = 0;
                    for (int i21 = 4; i20 < i21; i21 = 4) {
                        java.lang.String str49 = strArr2[i20];
                        if (!arrayList4.contains(str49)) {
                            arrayList29.add(str49);
                        }
                        i20++;
                    }
                    if (arrayList29.isEmpty()) {
                        arrayList29.addAll(java.util.Arrays.asList(strArr2));
                    }
                    strT = (java.lang.String) arrayList29.get(x0Var5.f1034b.nextInt(arrayList29.size()));
                    mapW0.put("first_gold_wine", "1");
                    com.sgscq.vpn.z2.e("SGSCQ_SRV", "[Wine] First gold - god: " + strT);
                    z9 = z9;
                    z4 = true;
                    i15 = 1;
                    i17 = 0;
                } else {
                    i17++;
                    int i22 = i15 <= 1 ? 4 : 10;
                    if (i17 % i22 == 0) {
                        strT = x0Var5.S(1, arrayList4);
                        i15++;
                        com.sgscq.vpn.z2.e("SGSCQ_SRV", "[Wine] Guarantee phase=" + i15 + " interval=" + i22 + " god: " + strT);
                        i17 = 0;
                    } else {
                        strT = x0Var5.T(i2, arrayList4);
                    }
                }
                zContains = arrayList4.contains(strT);
                int i110 = i15;
                w1VarA1 = com.sgscq.vpn.w1.a1(x0Var5.f1033a.f901a);
                int i111 = i17;
                strR0 = w1VarA1.R0(strT);
                if (zContains) {
                    java.util.HashMap mapO2 = x0Var5.o(18, strT, strR0);
                    arrayList22.add(mapO2);
                    arrayList24.add(mapO2);
                    com.sgscq.vpn.w1.k(18, strT, mapW0);
                    java.util.ArrayList arrayList210 = arrayList18;
                    h(arrayList210, d0(strT, mapW0));
                    i7 = i16;
                    arrayList5 = arrayList210;
                    str27 = str39;
                    arrayList6 = arrayList4;
                    arrayList7 = arrayList24;
                    arrayList8 = arrayList16;
                    num2 = num;
                    obj4 = obj13;
                    str24 = str10;
                    str9 = str21;
                    x0Var3 = this;
                } else {
                    arrayList5 = arrayList18;
                    map2 = (java.util.Map) mapW0.get(str39);
                    k0Var = x0Var5.f1033a;
                    if (k0Var == null) {
                        context = null;
                    } else {
                        context = k0Var.f901a;
                    }
                    w1VarA2 = com.sgscq.vpn.w1.a1(context);
                    if (w1VarA2.C1(strT)) {
                        w1VarA2.D(mapW0);
                        com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Wine] skip non-surrenderable general reward general_id=" + strT);
                        i7 = i16;
                        w1Var = w1VarA1;
                        str22 = strR0;
                        arrayList6 = arrayList4;
                        z5 = z4;
                        arrayList7 = arrayList24;
                        num2 = num;
                        x0Var3 = this;
                        map4 = null;
                        x0Var4 = x0Var5;
                        str26 = "Skill";
                        java.lang.String str410 = str21;
                        str23 = str39;
                        str24 = str10;
                        str25 = str410;
                    } else {
                        com.sgscq.vpn.handler.x0 x0Var7 = x0Var5;
                        i7 = i16;
                        str22 = strR0;
                        w1Var = w1VarA1;
                        if (map2 != null) {
                            arrayList6 = arrayList4;
                            arrayList7 = arrayList24;
                            java.lang.String str411 = str21;
                            str23 = str39;
                            str24 = str10;
                            str25 = str411;
                            java.lang.String str412 = str42;
                            z5 = z4;
                            java.lang.String strD4 = com.sgscq.vpn.w1.d2(mapW0);
                            mapY1 = w1VarA2.Y1(strT);
                            mapY1.put(str24, strD4);
                            mapY1.put("general_pk_id", strD4);
                            mapY1.put("general_status", "1");
                            mapY1.put("status", "1");
                            mapY1.put("general_naturalskill_id", strD4);
                            w1VarA2.t2(strD4, mapY1);
                            mapZ1 = w1VarA2.Z1(strT);
                            mapZ1.put(str24, strD4);
                            mapZ1.put("general_pk_id", strD4);
                            if (map2 != null) {
                                listO2 = (java.util.List) map2.get(str7);
                                if (listO2 == null) {
                                    listO2 = c.a.o(map2, str7);
                                }
                                listO2.add(mapY1);
                            }
                            str26 = "Skill";
                            map3 = (java.util.Map) mapW0.get(str26);
                            if (map3 != null) {
                                listO = (java.util.List) map3.get(str7);
                                if (listO == null) {
                                    listO = c.a.o(map3, str7);
                                }
                                listO.add(mapZ1);
                            }
                            java.lang.String strT2 = w1VarA2.T0(strT);
                            com.sgscq.vpn.w1.b2("general_id", strT, null, mapW0);
                            com.sgscq.vpn.w1.b2("skill_id", strT2, null, mapW0);
                            java.lang.String strR3 = w1VarA2.R0(strT);
                            java.util.HashMap mapP3 = c.a.p(str24, strD4, "general_pk_id", strD4);
                            mapP3.put(str412, strT);
                            mapP3.put("general_id", strT);
                            mapP3.put("general_name", com.sgscq.vpn.p5.M(strR3));
                            num2 = num;
                            mapP3.put("card_type", num2);
                            mapP3.put("num", num2);
                            x0Var3 = this;
                            x0Var3.X(strT, mapP3);
                            map4 = mapP3;
                            x0Var4 = x0Var3;
                        } else {
                            arrayList6 = arrayList4;
                            arrayList7 = arrayList24;
                            java.lang.String str413 = str21;
                            str23 = str39;
                            str24 = str10;
                            str25 = str413;
                            java.lang.String str414 = str42;
                            z5 = z4;
                            java.lang.String strD5 = com.sgscq.vpn.w1.d2(mapW0);
                            mapY1 = w1VarA2.Y1(strT);
                            mapY1.put(str24, strD5);
                            mapY1.put("general_pk_id", strD5);
                            mapY1.put("general_status", "1");
                            mapY1.put("status", "1");
                            mapY1.put("general_naturalskill_id", strD5);
                            w1VarA2.t2(strD5, mapY1);
                            mapZ1 = w1VarA2.Z1(strT);
                            mapZ1.put(str24, strD5);
                            mapZ1.put("general_pk_id", strD5);
                            if (map2 != null) {
                                listO2 = (java.util.List) map2.get(str7);
                                if (listO2 == null) {
                                    listO2 = c.a.o(map2, str7);
                                }
                                listO2.add(mapY1);
                            }
                            str26 = "Skill";
                            map3 = (java.util.Map) mapW0.get(str26);
                            if (map3 != null) {
                                listO = (java.util.List) map3.get(str7);
                                if (listO == null) {
                                    listO = c.a.o(map3, str7);
                                }
                                listO.add(mapZ1);
                            }
                            java.lang.String strT3 = w1VarA2.T0(strT);
                            com.sgscq.vpn.w1.b2("general_id", strT, null, mapW0);
                            com.sgscq.vpn.w1.b2("skill_id", strT3, null, mapW0);
                            java.lang.String strR4 = w1VarA2.R0(strT);
                            java.util.HashMap mapP4 = c.a.p(str24, strD5, "general_pk_id", strD5);
                            mapP4.put(str414, strT);
                            mapP4.put("general_id", strT);
                            mapP4.put("general_name", com.sgscq.vpn.p5.M(strR4));
                            num2 = num;
                            mapP4.put("card_type", num2);
                            mapP4.put("num", num2);
                            x0Var3 = this;
                            x0Var3.X(strT, mapP4);
                            map4 = mapP4;
                            x0Var4 = x0Var3;
                        }
                    }
                    if (map4 == null) {
                        com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Wine] skip non-surrenderable draw result: " + strT);
                        arrayList8 = arrayList16;
                        obj4 = obj13;
                        str9 = str25;
                        str27 = str23;
                    } else {
                        arrayList21.add(map4);
                        str9 = str25;
                        java.lang.String strValueOf6 = java.lang.String.valueOf(map4.getOrDefault(str24, str9));
                        str27 = str23;
                        arrayList8 = arrayList16;
                        h(arrayList8, a0(str27, strValueOf6, mapW0));
                        java.util.Map mapA2 = a0(str26, strValueOf6, mapW0);
                        java.util.ArrayList arrayList211 = arrayList17;
                        h(arrayList211, mapA2);
                        if (z5) {
                            java.lang.Object obj15 = obj13;
                            mapW0.put(obj15, java.lang.String.valueOf(map4.get(str24)));
                            obj3 = obj15;
                        } else {
                            obj3 = obj13;
                        }
                        java.util.ArrayList arrayList212 = arrayList7;
                        arrayList212.add(map4);
                        arrayList9 = arrayList6;
                        arrayList9.add(strT);
                        arrayList7 = arrayList212;
                        if (x0Var4.f1033a.f904d != null) {
                            arrayList6 = arrayList9;
                            arrayList17 = arrayList211;
                            obj4 = obj3;
                        } else {
                            arrayList6 = arrayList9;
                            arrayList17 = arrayList211;
                            obj4 = obj3;
                        }
                    }
                    x0Var5 = x0Var4;
                }
                str10 = str24;
                num = num2;
                obj13 = obj4;
                arrayList16 = arrayList8;
                str39 = str27;
                z9 = z9;
                z2 = z3;
                i15 = i110;
                i17 = i111;
                arrayList24 = arrayList7;
                arrayList25 = arrayList6;
                i16 = i7 + 1;
                i2 = i2;
                arrayList18 = arrayList5;
            }
            z4 = false;
            zContains = arrayList4.contains(strT);
            int i112 = i15;
            w1VarA1 = com.sgscq.vpn.w1.a1(x0Var5.f1033a.f901a);
            int i113 = i17;
            strR0 = w1VarA1.R0(strT);
            if (zContains) {
                java.util.HashMap mapO3 = x0Var5.o(18, strT, strR0);
                arrayList22.add(mapO3);
                arrayList24.add(mapO3);
                com.sgscq.vpn.w1.k(18, strT, mapW0);
                java.util.ArrayList arrayList213 = arrayList18;
                h(arrayList213, d0(strT, mapW0));
                i7 = i16;
                arrayList5 = arrayList213;
                str27 = str39;
                arrayList6 = arrayList4;
                arrayList7 = arrayList24;
                arrayList8 = arrayList16;
                num2 = num;
                obj4 = obj13;
                str24 = str10;
                str9 = str21;
                x0Var3 = this;
            } else {
                arrayList5 = arrayList18;
                map2 = (java.util.Map) mapW0.get(str39);
                k0Var = x0Var5.f1033a;
                if (k0Var == null) {
                    context = null;
                } else {
                    context = k0Var.f901a;
                }
                w1VarA2 = com.sgscq.vpn.w1.a1(context);
                if (w1VarA2.C1(strT)) {
                    w1VarA2.D(mapW0);
                    com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Wine] skip non-surrenderable general reward general_id=" + strT);
                    i7 = i16;
                    w1Var = w1VarA1;
                    str22 = strR0;
                    arrayList6 = arrayList4;
                    z5 = z4;
                    arrayList7 = arrayList24;
                    num2 = num;
                    x0Var3 = this;
                    map4 = null;
                    x0Var4 = x0Var5;
                    str26 = "Skill";
                    java.lang.String str415 = str21;
                    str23 = str39;
                    str24 = str10;
                    str25 = str415;
                } else {
                    com.sgscq.vpn.handler.x0 x0Var8 = x0Var5;
                    i7 = i16;
                    str22 = strR0;
                    w1Var = w1VarA1;
                    if (map2 != null) {
                        arrayList6 = arrayList4;
                        arrayList7 = arrayList24;
                        java.lang.String str416 = str21;
                        str23 = str39;
                        str24 = str10;
                        str25 = str416;
                        java.lang.String str417 = str42;
                        z5 = z4;
                        java.lang.String strD6 = com.sgscq.vpn.w1.d2(mapW0);
                        mapY1 = w1VarA2.Y1(strT);
                        mapY1.put(str24, strD6);
                        mapY1.put("general_pk_id", strD6);
                        mapY1.put("general_status", "1");
                        mapY1.put("status", "1");
                        mapY1.put("general_naturalskill_id", strD6);
                        w1VarA2.t2(strD6, mapY1);
                        mapZ1 = w1VarA2.Z1(strT);
                        mapZ1.put(str24, strD6);
                        mapZ1.put("general_pk_id", strD6);
                        if (map2 != null) {
                            listO2 = (java.util.List) map2.get(str7);
                            if (listO2 == null) {
                                listO2 = c.a.o(map2, str7);
                            }
                            listO2.add(mapY1);
                        }
                        str26 = "Skill";
                        map3 = (java.util.Map) mapW0.get(str26);
                        if (map3 != null) {
                            listO = (java.util.List) map3.get(str7);
                            if (listO == null) {
                                listO = c.a.o(map3, str7);
                            }
                            listO.add(mapZ1);
                        }
                        java.lang.String strT4 = w1VarA2.T0(strT);
                        com.sgscq.vpn.w1.b2("general_id", strT, null, mapW0);
                        com.sgscq.vpn.w1.b2("skill_id", strT4, null, mapW0);
                        java.lang.String strR5 = w1VarA2.R0(strT);
                        java.util.HashMap mapP5 = c.a.p(str24, strD6, "general_pk_id", strD6);
                        mapP5.put(str417, strT);
                        mapP5.put("general_id", strT);
                        mapP5.put("general_name", com.sgscq.vpn.p5.M(strR5));
                        num2 = num;
                        mapP5.put("card_type", num2);
                        mapP5.put("num", num2);
                        x0Var3 = this;
                        x0Var3.X(strT, mapP5);
                        map4 = mapP5;
                        x0Var4 = x0Var3;
                    } else {
                        arrayList6 = arrayList4;
                        arrayList7 = arrayList24;
                        java.lang.String str418 = str21;
                        str23 = str39;
                        str24 = str10;
                        str25 = str418;
                        java.lang.String str419 = str42;
                        z5 = z4;
                        java.lang.String strD7 = com.sgscq.vpn.w1.d2(mapW0);
                        mapY1 = w1VarA2.Y1(strT);
                        mapY1.put(str24, strD7);
                        mapY1.put("general_pk_id", strD7);
                        mapY1.put("general_status", "1");
                        mapY1.put("status", "1");
                        mapY1.put("general_naturalskill_id", strD7);
                        w1VarA2.t2(strD7, mapY1);
                        mapZ1 = w1VarA2.Z1(strT);
                        mapZ1.put(str24, strD7);
                        mapZ1.put("general_pk_id", strD7);
                        if (map2 != null) {
                            listO2 = (java.util.List) map2.get(str7);
                            if (listO2 == null) {
                                listO2 = c.a.o(map2, str7);
                            }
                            listO2.add(mapY1);
                        }
                        str26 = "Skill";
                        map3 = (java.util.Map) mapW0.get(str26);
                        if (map3 != null) {
                            listO = (java.util.List) map3.get(str7);
                            if (listO == null) {
                                listO = c.a.o(map3, str7);
                            }
                            listO.add(mapZ1);
                        }
                        java.lang.String strT5 = w1VarA2.T0(strT);
                        com.sgscq.vpn.w1.b2("general_id", strT, null, mapW0);
                        com.sgscq.vpn.w1.b2("skill_id", strT5, null, mapW0);
                        java.lang.String strR6 = w1VarA2.R0(strT);
                        java.util.HashMap mapP6 = c.a.p(str24, strD7, "general_pk_id", strD7);
                        mapP6.put(str419, strT);
                        mapP6.put("general_id", strT);
                        mapP6.put("general_name", com.sgscq.vpn.p5.M(strR6));
                        num2 = num;
                        mapP6.put("card_type", num2);
                        mapP6.put("num", num2);
                        x0Var3 = this;
                        x0Var3.X(strT, mapP6);
                        map4 = mapP6;
                        x0Var4 = x0Var3;
                    }
                }
                if (map4 == null) {
                    com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Wine] skip non-surrenderable draw result: " + strT);
                    arrayList8 = arrayList16;
                    obj4 = obj13;
                    str9 = str25;
                    str27 = str23;
                } else {
                    arrayList21.add(map4);
                    str9 = str25;
                    java.lang.String strValueOf7 = java.lang.String.valueOf(map4.getOrDefault(str24, str9));
                    str27 = str23;
                    arrayList8 = arrayList16;
                    h(arrayList8, a0(str27, strValueOf7, mapW0));
                    java.util.Map mapA3 = a0(str26, strValueOf7, mapW0);
                    java.util.ArrayList arrayList214 = arrayList17;
                    h(arrayList214, mapA3);
                    if (z5) {
                        java.lang.Object obj16 = obj13;
                        mapW0.put(obj16, java.lang.String.valueOf(map4.get(str24)));
                        obj3 = obj16;
                    } else {
                        obj3 = obj13;
                    }
                    java.util.ArrayList arrayList215 = arrayList7;
                    arrayList215.add(map4);
                    arrayList9 = arrayList6;
                    arrayList9.add(strT);
                    arrayList7 = arrayList215;
                    if (x0Var4.f1033a.f904d != null) {
                        arrayList6 = arrayList9;
                        arrayList17 = arrayList214;
                        obj4 = obj3;
                    } else {
                        arrayList6 = arrayList9;
                        arrayList17 = arrayList214;
                        obj4 = obj3;
                    }
                }
                x0Var5 = x0Var4;
            }
            str10 = str24;
            num = num2;
            obj13 = obj4;
            arrayList16 = arrayList8;
            str39 = str27;
            z9 = z9;
            z2 = z3;
            i15 = i112;
            i17 = i113;
            arrayList24 = arrayList7;
            arrayList25 = arrayList6;
            i16 = i7 + 1;
            i2 = i2;
            arrayList18 = arrayList5;
        }
        com.sgscq.vpn.handler.x0 x0Var9 = x0Var5;
        java.lang.String str50 = "id";
        java.util.ArrayList arrayList30 = arrayList18;
        int i23 = i2;
        java.lang.String str51 = str39;
        java.util.ArrayList arrayList31 = arrayList17;
        java.util.ArrayList arrayList32 = arrayList16;
        java.util.ArrayList arrayList33 = arrayList24;
        java.util.ArrayList arrayList34 = new java.util.ArrayList();
        if (i23 == 2) {
            x0Var2 = x0Var9;
            com.sgscq.vpn.w1 w1VarA4 = com.sgscq.vpn.w1.a1(x0Var2.f1033a.f901a);
            int[] iArr2 = {1, 1, 1, 1, 2, 3};
            int[] iArr3 = {0, 4, 5};
            int[] iArr4 = {1, 2, 3};
            double[] dArr2 = {0.4d, 0.1d, 0.1d};
            int[] iArr5 = {25, 25, 25, 15, 7, 3};
            int i24 = 0;
            int i25 = 0;
            for (int i26 = 6; i24 < i26; i26 = 6) {
                i25 += iArr5[i24];
                i24++;
            }
            w1VarA4.getClass();
            java.util.Map mapF1 = com.sgscq.vpn.c7.f254i ? null : w1VarA4.f1(com.sgscq.vpn.c7.g(), null);
            if (mapF1 != null) {
                strValueOf2 = java.lang.String.valueOf(mapF1.get("general_id"));
                strValueOf = java.lang.String.valueOf(mapF1.get("general_name"));
            } else {
                strValueOf = null;
                strValueOf2 = null;
            }
            if (!z) {
                i4 = 1;
            }
            if (z) {
                i4 = i3;
                str18 = strValueOf;
                str19 = str9;
                arrayList2 = arrayList32;
                i5 = -1;
            } else if (z11) {
                str19 = str9;
                arrayList2 = r9;
                i5 = 0;
                str18 = strValueOf;
            } else {
                str18 = strValueOf;
                int iNextInt = x0Var2.f1034b.nextInt(i25);
                int i27 = 0;
                arrayList2 = r9;
                i5 = 0;
                str19 = str9;
                int i28 = 6;
                while (true) {
                    if (i5 >= i28) {
                        i5 = 5;
                        break;
                    }
                    int i29 = i27 + iArr5[i5];
                    if (iNextInt < i29) {
                        break;
                    }
                    i5++;
                    i27 = i29;
                    i28 = 6;
                }
            }
            if (z) {
                java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
                int i30 = i5;
                java.util.LinkedHashMap linkedHashMap2 = new java.util.LinkedHashMap();
                str20 = "general_id";
                int i31 = 0;
                while (i31 < i4) {
                    boolean[] zArrS = x0Var2.s(strValueOf2, iArr3, iArr4, dArr2);
                    int[] iArr6 = iArr3;
                    if (i4 != 1) {
                        int iNextInt2 = x0Var2.f1034b.nextInt(i25);
                        int i32 = 6;
                        int i33 = 0;
                        dArr = dArr2;
                        i6 = 0;
                        iArr = iArr4;
                        while (true) {
                            if (i6 >= i32) {
                                i6 = 5;
                                break;
                            }
                            int i34 = i33 + iArr5[i6];
                            if (iNextInt2 < i34) {
                                break;
                            }
                            i6++;
                            i32 = 6;
                            i33 = i34;
                        }
                    } else {
                        dArr = dArr2;
                        iArr = iArr4;
                        i6 = i30;
                    }
                    java.lang.String strF0 = zArrS[i6] ? strValueOf2 : x0Var2.F0(i6, w1VarA4, strValueOf2);
                    java.lang.String strR7 = zArrS[i6] ? str18 : w1VarA4.R0(strF0);
                    if (strR7 == null || strR7.isEmpty()) {
                        strR7 = strF0;
                    }
                    int i35 = iArr2[i6];
                    com.sgscq.vpn.w1.k(i35, strF0, mapW0);
                    if (z) {
                        java.lang.Integer num3 = (java.lang.Integer) linkedHashMap.get(strF0);
                        linkedHashMap.put(strF0, java.lang.Integer.valueOf((num3 == null ? 0 : num3.intValue()) + i35));
                        if (!linkedHashMap2.containsKey(strF0)) {
                            linkedHashMap2.put(strF0, strR7);
                        }
                    }
                    i31++;
                    iArr3 = iArr6;
                    iArr4 = iArr;
                    dArr2 = dArr;
                }
                if (z) {
                    java.util.ArrayList arrayList35 = new java.util.ArrayList();
                    java.util.Map.Entry entry = null;
                    for (java.util.Map.Entry entry2 : linkedHashMap.entrySet()) {
                        if (((java.lang.String) entry2.getKey()).equals(strValueOf2)) {
                            entry = entry2;
                        } else {
                            arrayList35.add(entry2);
                        }
                    }
                    arrayList35.sort(new n.b(13));
                    java.util.ArrayList<java.util.Map.Entry> arrayList36 = new java.util.ArrayList();
                    if (entry != null) {
                        arrayList36.add(entry);
                    }
                    for (int i36 = 0; i36 < java.lang.Math.min(5, arrayList35.size()); i36++) {
                        arrayList36.add((java.util.Map.Entry) arrayList35.get(i36));
                    }
                    boolean z13 = true;
                    for (java.util.Map.Entry entry3 : arrayList36) {
                        java.lang.String str52 = (java.lang.String) entry3.getKey();
                        java.util.HashMap mapO4 = x0Var2.o(((java.lang.Integer) entry3.getValue()).intValue(), str52, (java.lang.String) linkedHashMap2.get(str52));
                        if (z13) {
                            mapO4.put("status", java.lang.Boolean.TRUE);
                            z13 = false;
                        }
                        arrayList34.add(mapO4);
                    }
                }
            } else {
                boolean[] zArrS2 = x0Var2.s(strValueOf2, iArr3, iArr4, dArr2);
                int i37 = 0;
                while (i37 < 6) {
                    java.lang.String strF1 = zArrS2[i37] ? strValueOf2 : x0Var2.F0(i37, w1VarA4, strValueOf2);
                    java.lang.String strR8 = zArrS2[i37] ? str18 : w1VarA4.R0(strF1);
                    if (strR8 == null || strR8.isEmpty()) {
                        strR8 = strF1;
                    }
                    java.util.HashMap mapO5 = x0Var2.o(iArr2[i37], strF1, strR8);
                    boolean z14 = i37 == i5;
                    mapO5.put("status", java.lang.Boolean.valueOf(z14));
                    arrayList34.add(mapO5);
                    if (z14) {
                        com.sgscq.vpn.w1.k(iArr2[i37], strF1, mapW0);
                    }
                    i37++;
                }
                str20 = "general_id";
            }
            if (!com.sgscq.vpn.c7.f254i) {
                java.lang.String str53 = com.sgscq.vpn.l2.a(x0Var2.f1033a.f901a, com.sgscq.vpn.c7.f()).f1079f;
                if (!str53.isEmpty()) {
                    mapW0.put("limited_gold_soul_first_wine_activity", str53);
                }
            }
            java.util.Iterator it6 = arrayList34.iterator();
            while (it6.hasNext()) {
                h(arrayList30, d0(java.lang.String.valueOf(((java.util.Map) it6.next()).getOrDefault(str20, str19)), mapW0));
            }
            str12 = str19;
            str13 = str20;
        } else {
            arrayList2 = arrayList32;
            str12 = str9;
            str51 = str51;
            str13 = "general_id";
            x0Var2 = x0Var9;
        }
        if (!arrayList30.isEmpty() && arrayList2.isEmpty()) {
            str15 = str51;
            java.util.List<java.util.Map> listF0 = com.sgscq.vpn.w1.f0(str15, mapW0);
            java.util.Iterator it7 = arrayList30.iterator();
            boolean z15 = false;
            loop7: while (true) {
                if (!it7.hasNext()) {
                    arrayList3 = arrayList2;
                    str14 = str50;
                    if (!z15) {
                        for (java.util.Map map8 : listF0) {
                            if (!r0(java.lang.String.valueOf(map8.getOrDefault(str13, map8.getOrDefault(str14, str12))), mapW0)) {
                                g(arrayList3, map8);
                                break;
                            }
                        }
                        break;
                    }
                    break;
                }
                str14 = str50;
                java.lang.String strJ2 = c.a.j((java.util.Map) it7.next(), str14, str12, str13);
                for (java.util.Map map9 : listF0) {
                    if (c.a.C(map9, str14, str12, str13, strJ2)) {
                        arrayList3 = arrayList2;
                        if (!r0(strJ2, mapW0)) {
                            g(arrayList3, map9);
                            break loop7;
                        }
                        z15 = true;
                    }
                }
                str50 = str14;
            }
        } else {
            arrayList3 = arrayList2;
            str14 = str50;
            str15 = str51;
        }
        mapW0.put(str30, java.lang.Long.valueOf(j3));
        if (i23 == 2) {
            str16 = "gold_guarantee_phase";
            str17 = str41;
            c.a.t(i17, mapW0, str17, i15, str16);
        } else {
            str16 = "gold_guarantee_phase";
            str17 = str41;
        }
        java.lang.String str54 = str8;
        com.sgscq.vpn.cloud.m0.Y1(str54, mapW0, map, x0Var2.f1033a.f903c);
        com.sgscq.vpn.handler.p.e("109", mapW0);
        x0Var2.f1033a.f904d.S0(str54, mapW0);
        int iG2 = (int) com.sgscq.vpn.c7.g();
        com.sgscq.vpn.handler.k0 k0Var4 = x0Var2.f1033a;
        long j4 = k0Var4.j(k0Var4.a(), mapW0);
        int iT0 = T0(x0Var2.f1033a.c(), str31, mapW0);
        int iT1 = T0(x0Var2.f1033a.b(), str6, mapW0);
        int iT2 = T0(x0Var2.f1033a.d(), str5, mapW0);
        java.lang.String str55 = str14;
        java.lang.String str56 = str15;
        java.util.ArrayList arrayList37 = arrayList19;
        java.lang.String str57 = str7;
        java.lang.String str58 = str16;
        java.util.ArrayList arrayList38 = arrayList3;
        java.lang.String str59 = str12;
        java.lang.String str60 = str17;
        java.lang.String str61 = str4;
        org.json.JSONObject jSONObject = new org.json.JSONObject(x0Var2.f1033a.f904d.u(iG2, iT0, iT1, iT2, j4, str54, mapW0));
        java.util.HashMap map10 = new java.util.HashMap(mapW0);
        java.util.ArrayList arrayList39 = new java.util.ArrayList();
        java.util.Iterator it8 = arrayList38.iterator();
        while (it8.hasNext()) {
            com.sgscq.vpn.w1.b2(str13, c.a.j((java.util.Map) it8.next(), str55, str59, str13), arrayList39, mapW0);
        }
        java.util.Iterator it9 = arrayList31.iterator();
        while (it9.hasNext()) {
            com.sgscq.vpn.w1.b2("skill_id", c.a.j((java.util.Map) it9.next(), str55, str59, "skill_id"), arrayList39, mapW0);
        }
        map10.put("Atlas", com.sgscq.vpn.p5.z0("del", c.a.m("del", arrayList37, new java.lang.Object[]{"upd", arrayList23, str57, c.a.m("del", c.a.m("del", c.a.m("del", c.a.m("del", new java.util.ArrayList(), new java.lang.Object[]{"upd", arrayList38, str57, new java.util.ArrayList()}, map10, str56), new java.lang.Object[]{"upd", arrayList31, str57, new java.util.ArrayList()}, map10, "Skill"), new java.lang.Object[]{"upd", arrayList30, str57, new java.util.ArrayList()}, map10, "GeneralSoul"), new java.lang.Object[]{"upd", arrayList13, str57, new java.util.ArrayList()}, map10, "TeamGeneral")}, map10, "Item"), "upd", arrayList39, str57, new java.util.ArrayList()));
        com.sgscq.vpn.z2.e("SGSCQ_SRV", "[Wine] delta generals=" + arrayList38.size() + " skills=" + arrayList31.size() + " souls=" + arrayList30.size() + " teams=" + arrayList13.size() + " items=" + arrayList23.size() + " atlas=" + arrayList39.size() + " deletedItems=" + arrayList37.size());
        java.lang.String strJ3 = this.f1033a.f904d.j(map10, jSONObject, str56, "Skill", "GeneralSoul", "Item", "Atlas");
        int I5 = I(mapW0, "wine_gold_time", j3, 1800);
        int I6 = I(mapW0, "wine_silver_time", j3, 600);
        int I7 = I(mapW0, str61, j3, 300);
        int i38 = I5 == 0 ? 1 : 0;
        int i39 = I6 == 0 ? 1 : 0;
        java.lang.String strF2 = F();
        boolean zT1 = t0(mapW0);
        int i40 = this.f1033a.i(0, str60, mapW0);
        int i41 = this.f1033a.i(0, str58, mapW0) <= 1 ? 4 : 10;
        int i42 = i41 - ((i40 + 1) % i41);
        java.util.LinkedHashMap linkedHashMapC2 = C(I5, i38, I6, i39, I7, i42 == i41 ? 0 : i42, i41, zT1 ? 1 : 0, strF2);
        java.util.LinkedHashMap linkedHashMapD = D(arrayList33, arrayList34);
        java.util.LinkedHashMap linkedHashMapZ0 = com.sgscq.vpn.p5.z0("error_code", 0, "ret", 0, "code", 0, "result", java.lang.Boolean.TRUE, "msg", "success", "reward_info", (java.util.Map) linkedHashMapD.get("reward_info"), "show_general_info", (java.util.List) linkedHashMapD.get("show_general_info"), "user_wine_info", linkedHashMapC2, "cmn", com.sgscq.vpn.p5.u1(strJ3));
        com.sgscq.vpn.h5 h5Var = this.f1033a.f904d;
        boolean z16 = !arrayList21.isEmpty();
        java.util.LinkedHashMap linkedHashMap3 = new java.util.LinkedHashMap();
        if (z16) {
            h5Var.getClass();
            java.util.LinkedHashMap linkedHashMapC0 = com.sgscq.vpn.h5.C0(str56, mapW0);
            java.util.LinkedHashMap linkedHashMapC1 = com.sgscq.vpn.h5.C0("Skill", mapW0);
            linkedHashMap3.put("general_info", linkedHashMapC0);
            linkedHashMap3.put(str56, linkedHashMapC0);
            linkedHashMap3.put("skill_info", linkedHashMapC1);
            linkedHashMap3.put("Skill", linkedHashMapC1);
        }
        linkedHashMapZ0.putAll(linkedHashMap3);
        return this.f1033a.n(com.sgscq.vpn.p5.s1(linkedHashMapZ0));
    }

    public final java.util.HashMap o(int i2, java.lang.String str, java.lang.String str2) {
        java.util.HashMap mapP = c.a.p("id", str, "general_id", str);
        mapP.put("general_name", com.sgscq.vpn.p5.M(str2));
        mapP.put("num", java.lang.Integer.valueOf(i2));
        mapP.put("card_type", 1);
        mapP.put("type", "2");
        X(str, mapP);
        return mapP;
    }

    public final byte[] p0() {
        return this.f1033a.n(com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("ret", -1, "code", -1, "error_code", -1, "result", java.lang.Boolean.FALSE, "msg", "爱发电 LV3 及以上会员可使用此充值档位", "message", "爱发电 LV3 及以上会员可使用此充值档位", "toast", "爱发电 LV3 及以上会员可使用此充值档位", "tips", "爱发电 LV3 及以上会员可使用此充值档位", "pay_url", "", "status", 0, "pay_status", 0)));
    }

    public final boolean[] s(java.lang.String str, int[] iArr, int[] iArr2, double[] dArr) {
        java.util.Random random;
        boolean[] zArr = new boolean[6];
        if (str == null) {
            return zArr;
        }
        for (int i2 : iArr) {
            zArr[i2] = true;
        }
        int i3 = 0;
        boolean z = false;
        while (true) {
            int length = iArr2.length;
            random = this.f1034b;
            if (i3 >= length) {
                break;
            }
            zArr[iArr2[i3]] = random.nextDouble() < dArr[i3];
            if (!zArr[iArr2[i3]]) {
                z = true;
            }
            i3++;
        }
        if (!z) {
            zArr[iArr2[random.nextInt(iArr2.length)]] = false;
        }
        return zArr;
    }

    public final java.util.ArrayList t(java.util.Map map) {
        java.lang.String str;
        long jF = com.sgscq.vpn.c7.f();
        int iL2 = com.sgscq.vpn.w1.l2(java.lang.String.valueOf(map.getOrDefault("user_honor", 0)), 0);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        b(arrayList, map, "H1", "791759", "灵芝×100", "灵芝×100", 1000, iL2 >= 1000, 100);
        b(arrayList, map, "H2", "791462", "灵芝×10", "灵芝×10", 100, iL2 >= 100, 10);
        b(arrayList, map, "H3", "600009", "普通传承符", R0("600009", "普通传承符"), 50, iL2 >= 50, 1);
        b(arrayList, map, "H4", "600010", "高级传承符", R0("600010", "高级传承符"), 100, iL2 >= 100, 1);
        b(arrayList, map, "H5", "600011", "超级传承符", R0("600011", "超级传承符"), 200, iL2 >= 200, 1);
        java.util.List listB = com.sgscq.vpn.c2.b(com.sgscq.vpn.c2.d(com.sgscq.vpn.c7.c(jF)));
        int iC = com.sgscq.vpn.c2.c(jF, map);
        int i2 = 0;
        while (i2 < listB.size()) {
            com.sgscq.vpn.b2 b2Var = (com.sgscq.vpn.b2) listB.get(i2);
            if (i2 == 0) {
                str = "H6";
            } else {
                str = i2 == 1 ? "H7" : "";
            }
            java.lang.String str2 = str;
            java.lang.String str3 = b2Var.f199a;
            java.lang.String str4 = b2Var.f201c;
            b(arrayList, map, str2, str3, str4, str4, 20, iL2 >= iC, 1);
            ((java.util.Map) arrayList.get(arrayList.size() - 1)).put("discount_price", java.lang.Integer.valueOf(iC));
            i2++;
        }
        return arrayList;
    }
}
