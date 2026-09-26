package com.sgscq.vpn;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public abstract class c2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TimeZone f238a = TimeZone.getTimeZone("GMT+08:00");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f239b;

    static {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new b2("792328", "181001", "魔·张飞魂魄×1"));
        arrayList.add(new b2("792329", "181002", "魔·貂蝉魂魄×1"));
        arrayList.add(new b2("792330", "181003", "魔·马超魂魄×1"));
        arrayList.add(new b2("792331", "181004", "魔·凌统魂魄×1"));
        arrayList.add(new b2("792332", "181005", "魔·董卓魂魄×1"));
        arrayList.add(new b2("792333", "181006", "魔·贾诩魂魄×1"));
        arrayList.add(new b2("792353", "181008", "魔·黄盖魂魄×1"));
        arrayList.add(new b2("792347", "181009", "魔·张角魂魄×1"));
        f239b = Collections.unmodifiableList(arrayList);
    }

    public static b2 a(String str) {
        int i2;
        int iD = d(c7.b());
        if ("H6".equals(str)) {
            i2 = 0;
        } else {
            i2 = "H7".equals(str) ? 1 : -1;
        }
        if (i2 >= 0) {
            List listB = b(iD);
            if (i2 < listB.size()) {
                return (b2) listB.get(i2);
            }
        }
        return null;
    }

    public static List b(int i2) {
        List list = f239b;
        int iFloorMod = Math.floorMod(i2, ((list.size() + 2) - 1) / 2) * 2;
        return Collections.unmodifiableList(new ArrayList(list.subList(iFloorMod, Math.min(iFloorMod + 2, list.size()))));
    }

    public static int c(long j2, Map map) {
        long jLongValue;
        Object obj = map == null ? null : map.get("user_register_time");
        if (obj instanceof Number) {
            jLongValue = ((Number) obj).longValue();
        } else if (obj == null) {
            jLongValue = 0;
        } else {
            try {
                jLongValue = Long.parseLong(String.valueOf(obj));
            } catch (NumberFormatException unused) {
                jLongValue = 0;
            }
        }
        if (jLongValue <= 0 || jLongValue > 9223372036854775L) {
            return 20;
        }
        long j3 = jLongValue * 1000;
        if (j2 < j3) {
            return 20;
        }
        Locale locale = Locale.US;
        TimeZone timeZone = f238a;
        Calendar calendar = Calendar.getInstance(timeZone, locale);
        calendar.setTimeInMillis(j3);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        long timeInMillis = calendar.getTimeInMillis();
        Calendar calendar2 = Calendar.getInstance(timeZone, locale);
        calendar2.setTimeInMillis(timeInMillis);
        calendar2.add(5, 10);
        return j2 < calendar2.getTimeInMillis() ? 16 : 20;
    }

    public static int d(String str) {
        if (str != null && str.length() == 8) {
            try {
                int i2 = Integer.parseInt(str.substring(0, 4));
                int i3 = Integer.parseInt(str.substring(4, 6));
                int i4 = Integer.parseInt(str.substring(6, 8));
                GregorianCalendar gregorianCalendar = new GregorianCalendar(f238a, Locale.US);
                gregorianCalendar.clear();
                gregorianCalendar.set(i2, i3 - 1, i4, 0, 0, 0);
                return (int) (gregorianCalendar.getTimeInMillis() / 86400000);
            } catch (RuntimeException unused) {
            }
        }
        return 0;
    }
}
