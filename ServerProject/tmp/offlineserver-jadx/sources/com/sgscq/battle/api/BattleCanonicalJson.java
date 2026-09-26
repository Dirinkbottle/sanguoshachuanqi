package com.sgscq.battle.api;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import n.a;
import n.b;

/* JADX INFO: loaded from: classes.dex */
public final class BattleCanonicalJson {
    private BattleCanonicalJson() {
    }

    private static int compareUnits(Map<?, ?> map, Map<?, ?> map2) {
        int iCompare = Integer.compare(intValue(map.get("side")), intValue(map2.get("side")));
        if (iCompare != 0) {
            return iCompare;
        }
        int iCompare2 = Integer.compare(intValue(map.get("slot")), intValue(map2.get("slot")));
        return iCompare2 != 0 ? iCompare2 : String.valueOf(map.get("instance_id")).compareTo(String.valueOf(map2.get("instance_id")));
    }

    private static int intValue(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        try {
            return Integer.parseInt(String.valueOf(obj));
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    private static boolean isUnitList(List<Object> list) {
        if (list.isEmpty()) {
            return false;
        }
        for (Object obj : list) {
            if (!(obj instanceof Map)) {
                return false;
            }
            Map map = (Map) obj;
            if (!map.containsKey("side") || !map.containsKey("slot") || !map.containsKey("instance_id")) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$write$0(Map.Entry entry) {
        return String.valueOf(entry.getKey());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$write$1(Object obj, Object obj2) {
        return compareUnits((Map) obj, (Map) obj2);
    }

    private static String quote(String str) {
        String str2;
        StringBuilder sb = new StringBuilder("\"");
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\t') {
                str2 = "\\t";
            } else if (cCharAt == '\n') {
                str2 = "\\n";
            } else if (cCharAt == '\r') {
                str2 = "\\r";
            } else if (cCharAt == '\"') {
                str2 = "\\\"";
            } else if (cCharAt != '\\') {
                if (cCharAt < ' ') {
                    str2 = String.format("\\u%04x", Integer.valueOf(cCharAt));
                } else {
                    sb.append(cCharAt);
                }
            } else {
                str2 = "\\\\";
            }
            sb.append(str2);
        }
        sb.append('\"');
        return sb.toString();
    }

    public static String serialize(Object obj) {
        return write(obj);
    }

    private static String write(Object obj) {
        if (obj == null) {
            return "null";
        }
        int i2 = 0;
        if (obj instanceof Map) {
            ArrayList arrayList = new ArrayList();
            Iterator it = ((Map) obj).entrySet().iterator();
            while (it.hasNext()) {
                arrayList.add((Map.Entry) it.next());
            }
            Collections.sort(arrayList, Comparator.comparing(new a(i2)));
            StringBuilder sb = new StringBuilder("{");
            while (i2 < arrayList.size()) {
                if (i2 > 0) {
                    sb.append(',');
                }
                sb.append(quote(String.valueOf(((Map.Entry) arrayList.get(i2)).getKey())));
                sb.append(':');
                sb.append(write(((Map.Entry) arrayList.get(i2)).getValue()));
                i2++;
            }
            sb.append('}');
            return sb.toString();
        }
        if (!(obj instanceof Iterable)) {
            if (obj instanceof Number) {
                return ((obj instanceof Float) || (obj instanceof Double) || (obj instanceof BigDecimal)) ? quote(String.format(Locale.US, "%.6f", Double.valueOf(((Number) obj).doubleValue()))) : String.valueOf(obj);
            }
            boolean z = obj instanceof Boolean;
            String strValueOf = String.valueOf(obj);
            return z ? strValueOf : quote(strValueOf);
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = ((Iterable) obj).iterator();
        while (it2.hasNext()) {
            arrayList2.add(it2.next());
        }
        if (isUnitList(arrayList2)) {
            Collections.sort(arrayList2, new b(i2));
        }
        StringBuilder sb2 = new StringBuilder("[");
        while (i2 < arrayList2.size()) {
            if (i2 > 0) {
                sb2.append(',');
            }
            sb2.append(write(arrayList2.get(i2)));
            i2++;
        }
        sb2.append(']');
        return sb2.toString();
    }
}
