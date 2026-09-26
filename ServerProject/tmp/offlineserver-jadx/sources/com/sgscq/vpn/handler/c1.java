package com.sgscq.vpn.handler;

import android.content.Context;
import com.google.gson.reflect.TypeToken;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Type f794a = new TypeToken<List<Map<String, Object>>>() { // from class: com.sgscq.vpn.handler.TowerTeamData$1
    }.getType();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static List f795b;

    public static ArrayList a(Map map) {
        ArrayList<String> arrayListH = h(map != null ? map.get("general_ids") : null);
        ArrayList arrayList = new ArrayList();
        for (String str : arrayListH) {
            if (str != null && !str.isEmpty()) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public static synchronized List b(Context context) {
        List list = f795b;
        if (list != null) {
            return list;
        }
        List listC = c(com.sgscq.vpn.o0.a(context, "tower_teams.json"));
        if (listC.isEmpty()) {
            listC = d();
        }
        if (listC.isEmpty()) {
            listC = Collections.emptyList();
        }
        f795b = listC;
        return listC;
    }

    public static List c(String str) {
        if (str == null || str.trim().isEmpty()) {
            return Collections.emptyList();
        }
        List<Map> list = (List) new a.o().e(str, f794a);
        if (list == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Map map : list) {
            if (map != null) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(map);
                linkedHashMap.put("order", Integer.valueOf(f(linkedHashMap.get("order"), arrayList.size() + 1)));
                linkedHashMap.put("general_ids", h(linkedHashMap.get("general_ids")));
                linkedHashMap.put("general_names", h(linkedHashMap.get("general_names")));
                arrayList.add(linkedHashMap);
            }
        }
        Collections.sort(arrayList, new c.n(9));
        return arrayList;
    }

    public static List d() {
        File file;
        File absoluteFile = new File(System.getProperty("user.dir")).getAbsoluteFile();
        while (true) {
            if (absoluteFile == null) {
                file = null;
                break;
            }
            file = new File(absoluteFile, "docs/game_data_json/tower_teams.json");
            if (file.exists()) {
                break;
            }
            absoluteFile = absoluteFile.getParentFile();
        }
        if (file == null) {
            return Collections.emptyList();
        }
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), "UTF-8");
            try {
                List listC = c(new a.o().h((a.q) new a.o().c(inputStreamReader, TypeToken.get(f794a))));
                inputStreamReader.close();
                return listC;
            } catch (Throwable th) {
                try {
                    inputStreamReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception unused) {
            return Collections.emptyList();
        }
    }

    public static String e(Map map) {
        StringBuilder sb = new StringBuilder("team_");
        sb.append(f(map != null ? map.get("order") : null, 0));
        return sb.toString();
    }

    public static int f(Object obj, int i2) {
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        try {
            return Integer.parseInt(String.valueOf(obj));
        } catch (Exception unused) {
            return i2;
        }
    }

    public static List g(int i2, List list) {
        if (list == null || list.isEmpty()) {
            return Collections.emptyList();
        }
        int iMax = Math.max(0, i2);
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < 3; i3++) {
            arrayList.add((Map) list.get((iMax + i3) % list.size()));
        }
        return arrayList;
    }

    public static ArrayList h(Object obj) {
        ArrayList arrayList = new ArrayList();
        if (!(obj instanceof List)) {
            return arrayList;
        }
        for (Object obj2 : (List) obj) {
            if (obj2 != null && !String.valueOf(obj2).isEmpty()) {
                arrayList.add(String.valueOf(obj2));
            }
        }
        return arrayList;
    }
}
