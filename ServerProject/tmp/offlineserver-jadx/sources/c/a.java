package c;

import android.widget.Button;
import com.sgscq.vpn.SettingsActivity;
import com.sgscq.vpn.g6;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.w1;
import com.sgscq.vpn.z2;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static boolean A(Map map, String str, String str2) {
        return str2.equals(String.valueOf(map.get(str)));
    }

    public static boolean B(Map map, String str, String str2, String str3) {
        return str3.equals(String.valueOf(map.getOrDefault(str, str2)));
    }

    public static boolean C(Map map, String str, String str2, String str3, String str4) {
        return str4.equals(String.valueOf(map.getOrDefault(str3, map.getOrDefault(str, str2))));
    }

    public static void D(Exception exc, StringBuilder sb, String str) {
        sb.append(exc.getMessage());
        z2.c(str, sb.toString());
    }

    public static /* synthetic */ String E(int i2) {
        if (i2 == 1) {
            return "SPECIAL_SOUL_30";
        }
        if (i2 == 2) {
            return "FATE_EQUIPMENT_BOX";
        }
        if (i2 == 3) {
            return "FATE_EQUIPMENT_WHOLE";
        }
        if (i2 == 4) {
            return "FATE_SKILL_GIFT";
        }
        throw null;
    }

    public static /* synthetic */ String F(int i2) {
        if (i2 == 1) {
            return "TV";
        }
        if (i2 == 2) {
            return "FST";
        }
        return i2 == 3 ? "UNKNOWN" : "null";
    }

    public static final int a(int i2) {
        return d(i2);
    }

    public static /* synthetic */ String b(int i2) {
        if (i2 == 1) {
            return "special_soul_30";
        }
        if (i2 == 2) {
            return "fate_equipment_box";
        }
        if (i2 == 3) {
            return "fate_equipment_whole";
        }
        if (i2 == 4) {
            return "fate_skill_gift";
        }
        throw null;
    }

    public static /* synthetic */ String c(int i2) {
        if (i2 == 1) {
            return "bun_count";
        }
        if (i2 == 2) {
            return "tea_count";
        }
        if (i2 == 3) {
            return "yuanbao_count";
        }
        if (i2 == 4) {
            return "lingzhi_count";
        }
        if (i2 == 5) {
            return "skill_exp_count";
        }
        if (i2 == 6) {
            return "god_skill_count";
        }
        if (i2 == 7) {
            return "miracle_iron_count";
        }
        throw null;
    }

    public static /* synthetic */ int d(int i2) {
        if (i2 == 1) {
            return 1;
        }
        if (i2 == 2) {
            return 2;
        }
        if (i2 == 3) {
            return 3;
        }
        if (i2 == 4) {
            return 4;
        }
        if (i2 == 5) {
            return 5;
        }
        if (i2 == 6) {
            return 6;
        }
        if (i2 == 7) {
            return 7;
        }
        if (i2 == 8) {
            return 8;
        }
        if (i2 == 9) {
            return 9;
        }
        if (i2 == 10) {
            return 10;
        }
        if (i2 == 11) {
            return 11;
        }
        if (i2 == 12) {
            return 12;
        }
        if (i2 == 13) {
            return 13;
        }
        if (i2 == 14) {
            return 14;
        }
        if (i2 == 15) {
            return 15;
        }
        if (i2 == 16) {
            return 16;
        }
        if (i2 == 17) {
            return 17;
        }
        if (i2 == 18) {
            return 18;
        }
        if (i2 == 19) {
            return 19;
        }
        if (i2 == 20) {
            return 20;
        }
        if (i2 == 21) {
            return 21;
        }
        if (i2 == 22) {
            return 22;
        }
        if (i2 == 23) {
            return 23;
        }
        if (i2 == 24) {
            return 24;
        }
        if (i2 == 25) {
            return 25;
        }
        if (i2 == 26) {
            return 26;
        }
        if (i2 == 27) {
            return 27;
        }
        if (i2 == 28) {
            return 28;
        }
        if (i2 == 29) {
            return 29;
        }
        if (i2 == 30) {
            return 30;
        }
        if (i2 == 31) {
            return 31;
        }
        if (i2 == 32) {
            return 36;
        }
        if (i2 == 33) {
            return 37;
        }
        if (i2 == 34) {
            return 38;
        }
        if (i2 == 35) {
            return 40;
        }
        if (i2 == 36) {
            return 41;
        }
        if (i2 == 37) {
            return 19;
        }
        if (i2 == 38) {
            return 6;
        }
        throw null;
    }

    public static int e(Map map, String str, int i2) {
        return w1.l2(String.valueOf(map.get(str)), i2);
    }

    public static int f(Map map, String str, String str2, int i2) {
        return w1.l2(String.valueOf(map.getOrDefault(str, str2)), i2);
    }

    public static int g(Map map, String str, String str2, String str3, int i2) {
        return w1.l2(String.valueOf(map.getOrDefault(str3, map.getOrDefault(str, str2))), i2);
    }

    public static Button h(SettingsActivity settingsActivity, int i2, String str, int i3) {
        return settingsActivity.M(str, i3, new g6(settingsActivity, i2));
    }

    public static String i(String str, String str2) {
        return str + str2;
    }

    public static String j(Map map, String str, String str2, String str3) {
        return String.valueOf(map.getOrDefault(str3, map.getOrDefault(str, str2)));
    }

    public static String k(Map map, String str, String str2, String str3, String str4) {
        return String.valueOf(map.getOrDefault(str4, map.getOrDefault(str3, map.getOrDefault(str, str2))));
    }

    public static StringBuilder l(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        sb.append(str5);
        return sb;
    }

    public static ArrayList m(String str, ArrayList arrayList, Object[] objArr, HashMap map, String str2) {
        map.put(str2, p5.z0(str, arrayList, objArr));
        return new ArrayList();
    }

    public static ArrayList n(String str, ArrayList arrayList, Object[] objArr, Map map, String str2) {
        map.put(str2, p5.z0(str, arrayList, objArr));
        return new ArrayList();
    }

    public static ArrayList o(Map map, String str) {
        ArrayList arrayList = new ArrayList();
        map.put(str, arrayList);
        return arrayList;
    }

    public static HashMap p(String str, String str2, String str3, String str4) {
        HashMap map = new HashMap();
        map.put(str, str2);
        map.put(str3, str4);
        return map;
    }

    public static LinkedHashMap q(String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(str, str2);
        return linkedHashMap;
    }

    public static LinkedHashMap r(String str, String str2, String str3, String str4) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(str, str2);
        linkedHashMap.put(str3, str4);
        return linkedHashMap;
    }

    public static void s(int i2, LinkedHashMap linkedHashMap, String str, int i3, String str2, int i4, String str3) {
        linkedHashMap.put(str, Integer.valueOf(i2));
        linkedHashMap.put(str2, Integer.valueOf(i3));
        linkedHashMap.put(str3, Integer.valueOf(i4));
    }

    public static void t(int i2, Map map, String str, int i3, String str2) {
        map.put(str, Integer.valueOf(i2));
        map.put(str2, Integer.valueOf(i3));
    }

    public static void u(Exception exc, StringBuilder sb, String str) {
        sb.append(exc.getMessage());
        z2.g(str, sb.toString());
    }

    public static /* synthetic */ void v(Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
    }

    public static void w(String str, String str2, String str3, boolean z) {
        com.sgscq.vpn.config.j.g(str + str2, str3, z);
    }

    public static void x(String str, Map map, LinkedHashMap linkedHashMap, String str2, String str3, String str4) {
        linkedHashMap.put(str2, String.valueOf(w1.e2(str, map)));
        linkedHashMap.put(str3, str4);
    }

    public static void y(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    public static void z(LinkedHashMap linkedHashMap, String str, String str2, int i2, String str3, int i3, String str4) {
        linkedHashMap.put(str, str2);
        linkedHashMap.put(str3, Integer.valueOf(i2));
        linkedHashMap.put(str4, Integer.valueOf(i3));
    }
}
