package com.sgscq.vpn.handler;

import com.sgscq.vpn.c7;
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
public abstract class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map f954b;

    static {
        List listUnmodifiableList = Collections.unmodifiableList(Arrays.asList(h("109", "对酒一次", "在酒馆对酒1次", 5, 1, 41, "600007", 2, g(20000L)), h("110", "天梯挑战", "挑战天梯1次", 6, 1, 2, "600096", 2, g(50000L)), h("111", "爬塔挑战", "挑战爬塔1次", 10, 1, 3, "600096", 2, g(50000L)), h("112", "精英副本", "通关任意精英副本1次", 9, 1, 22, "600007", 2, g(50000L)), h("113", "开启金箱子组合", "开启金箱子组合（箱子+钥匙）1次", 5, 1, 16, "600007", 1, g(20000L)), h("114", "宝石洗练", "洗练宝石属性1次", 40, 1, 16, "600077", 1, g(20000L)), h("115", "许愿一次", "在许愿池许愿1次", 10, 1, 32, "600007", 1, g(20000L)), h("116", "武将培养", "培养/修炼任意武将1次", 5, 1, 12, "600007", 1, g(20000L)), h("117", "武将升级", "训练（练兵）任意武将1次", 5, 1, 31, "600007", 1, g(20000L)), h("118", "武将升星", "洞察（突破）任意武将1次", 5, 1, 12, "600007", 1, g(20000L)), h("119", "领取活动奖励", "在活动界面领取任意奖励1次", 5, 1, 31, "600007", 1, g(20000L)), h("120", "神秘游商", "在神秘游商购买1次", 10, 1, 43, "600007", 1, g(20000L)), h("121", "觉醒宝箱", "开启觉醒宝箱1次", 16, 1, 0, "600007", 1, g(20000L)), h("122", "邮件领取", "领取任意邮件附件1次", 5, 1, 0, "600007", 1, g(20000L))));
        ArrayList arrayList = new ArrayList(Arrays.asList(i("101", "装备强化", "将任意装备强化1次", 5, 1, 13, "600096", g(20000L)), i("102", "技能升级", "消耗任意材料将技能升级1次", 5, 1, 14, "791489", g(20000L)), i("103", "装备精炼", "消耗任意材料将装备精炼1次", 18, 1, 13, "791489", g(20000L)), i("104", "战技升级", "消耗任意材料将战技升级1次", 5, 1, 15, "600007", g(20000L)), i("105", "荣誉领取", "领取天梯荣誉奖励10次", 6, 10, 2, "600096", g(50000L)), i("106", "体力补给", "使用任意恢复体力道具5次", 5, 5, 16, "600007", g(100000L)), i("107", "技能抢夺", "对任意技能碎片抢夺20次", 8, 20, 1, "791489", g(200000L)), i("108", "副本猎手", "完成任意普通副本10次", 5, 10, 21, "600007", g(20000L))));
        arrayList.addAll(listUnmodifiableList);
        List<o> listUnmodifiableList2 = Collections.unmodifiableList(arrayList);
        f953a = listUnmodifiableList2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (o oVar : listUnmodifiableList2) {
            linkedHashMap.put(oVar.f939a, oVar);
        }
        f954b = Collections.unmodifiableMap(linkedHashMap);
    }

    public static ArrayList a(int i2, String str, Map map) {
        c(str, map);
        Map mapF = f(map);
        Set setB = b(map);
        ArrayList arrayList = new ArrayList();
        for (o oVar : f953a) {
            int i3 = oVar.f943e;
            String str2 = oVar.f939a;
            int iMin = Math.min(i3, j(mapF.get(str2)));
            boolean zContains = setB.contains(str2);
            int i4 = oVar.f943e;
            int i5 = zContains ? 2 : (i2 < oVar.f942d || iMin < i4) ? 0 : 1;
            LinkedHashMap linkedHashMapR = c.a.r("pk_id", str2, "task_alias", str2);
            c.a.s(i5, linkedHashMapR, "status", iMin, "task_value", i4, "task_objective_num");
            linkedHashMapR.put("title", oVar.f940b);
            linkedHashMapR.put("desc", oVar.f941c);
            linkedHashMapR.put("icon", oVar.f945g);
            linkedHashMapR.put("icon_type", Integer.valueOf(oVar.f946h));
            linkedHashMapR.put("scene", Integer.valueOf(oVar.f944f));
            ArrayList arrayList2 = new ArrayList();
            for (n nVar : oVar.a(i2)) {
                long jA = nVar.a(i2);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                String str3 = nVar.f933a;
                linkedHashMap.put("id", str3);
                int i6 = nVar.f934b;
                linkedHashMap.put("type", Integer.valueOf(i6));
                linkedHashMap.put("num", Long.valueOf(jA));
                linkedHashMap.put("item_id", str3);
                linkedHashMap.put("item_type", Integer.valueOf(nVar.f935c));
                linkedHashMap.put("item_num", Long.valueOf(jA));
                if (i6 == 6) {
                    linkedHashMap.put("general_id", str3);
                }
                arrayList2.add(linkedHashMap);
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            linkedHashMap2.put("style", new LinkedHashMap());
            linkedHashMap2.put("data", arrayList2);
            linkedHashMapR.put("reword_list", linkedHashMap2);
            linkedHashMapR.put("reward_list", arrayList2);
            arrayList.add(linkedHashMapR);
        }
        return arrayList;
    }

    public static Set b(Map map) {
        Object obj = map.get("daily_task_claimed");
        if (obj instanceof Set) {
            return (Set) obj;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                linkedHashSet.add(String.valueOf(it.next()));
            }
        }
        map.put("daily_task_claimed", linkedHashSet);
        return linkedHashSet;
    }

    public static void c(String str, Map map) {
        if (str == null) {
            str = "";
        }
        if (c.a.A(map, "daily_task_day", str)) {
            return;
        }
        map.put("daily_task_day", str);
        map.put("daily_task_progress", new LinkedHashMap());
        map.put("daily_task_claimed", new ArrayList());
    }

    public static boolean d(int i2, int i3, String str, String str2, Map map) {
        c(str2, map);
        o oVar = (o) f954b.get(str);
        if (oVar == null || i2 <= 0 || i3 < oVar.f942d) {
            return false;
        }
        Map mapF = f(map);
        int iJ = j(mapF.get(str));
        int i4 = oVar.f943e;
        if (iJ >= i4) {
            return false;
        }
        mapF.put(str, Integer.valueOf(Math.min(i4, iJ + i2)));
        return true;
    }

    public static void e(String str, Map map) {
        int iJ = j(map.get("user_level"));
        if (iJ <= 0) {
            iJ = j(map.get("level"));
        }
        d(1, Math.max(1, iJ), str, c7.b(), map);
    }

    public static Map f(Map map) {
        Object obj = map.get("daily_task_progress");
        if (obj instanceof Map) {
            return (Map) obj;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        map.put("daily_task_progress", linkedHashMap);
        return linkedHashMap;
    }

    public static n g(long j2) {
        return new n(String.valueOf(3), 100, 100, j2, true);
    }

    public static o h(String str, String str2, String str3, int i2, int i3, int i4, String str4, int i5, n... nVarArr) {
        return new o(str, str2, str3, i2, i3, i4, str4, i5, Arrays.asList(nVarArr));
    }

    public static o i(String str, String str2, String str3, int i2, int i3, int i4, String str4, n... nVarArr) {
        return h(str, str2, str3, i2, i3, i4, str4, 1, nVarArr);
    }

    public static int j(Object obj) {
        if (obj instanceof Number) {
            return Math.max(0, ((Number) obj).intValue());
        }
        return 0;
    }
}
