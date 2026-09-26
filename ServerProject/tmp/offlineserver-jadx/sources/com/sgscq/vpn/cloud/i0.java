package com.sgscq.vpn.cloud;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f356c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f357d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f358e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f359f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f360g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f361h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f362i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f363j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f364k;

    public i0(String str, List list, List list2, List list3, List list4, String str2, int i2, boolean z, String str3, long j2, long j3) {
        this.f354a = str;
        this.f355b = new ArrayList(list);
        this.f356c = new ArrayList(list2);
        this.f357d = new ArrayList(list3);
        this.f358e = new ArrayList(list4);
        this.f359f = l0.B(str2);
        this.f360g = i2;
        this.f361h = z;
        this.f362i = str3;
        this.f363j = j2;
        this.f364k = j3;
    }

    public static i0 b(String str, Map map) {
        int iN = l0.n(map.get("schema_version"));
        if (iN < 4 || iN > 5 || !c.a.A(map, "environment", str)) {
            throw new IllegalArgumentException("云端对手断点清单环境无效");
        }
        ArrayList<String> arrayListE = e(map.get("pages"));
        List listE = iN >= 5 ? e(map.get("overlay_pages")) : Collections.emptyList();
        List listE2 = iN >= 5 ? e(map.get("pending_overlay_pages")) : Collections.emptyList();
        ArrayList arrayListE2 = e(map.get("ids"));
        int iN2 = l0.n(map.get("downloaded_count"));
        String strValueOf = String.valueOf(map.get("mode"));
        Object obj = map.get("base_generation");
        long jLongValue = !(obj instanceof Number) ? -1L : ((Number) obj).longValue();
        Object obj2 = map.get("target_generation");
        long jLongValue2 = !(obj2 instanceof Number) ? -1L : ((Number) obj2).longValue();
        boolean zEquals = Boolean.TRUE.equals(map.get("complete"));
        String strB = l0.B(String.valueOf(map.get("next_cursor") == null ? "" : map.get("next_cursor")));
        if (iN2 < 0 || new HashSet(arrayListE2).size() != arrayListE2.size() || (zEquals && !strB.isEmpty())) {
            throw new IllegalArgumentException("云端对手断点清单无效");
        }
        if ((!"full".equals(strValueOf) && !"delta".equals(strValueOf)) || jLongValue < 0 || jLongValue2 < jLongValue) {
            throw new IllegalArgumentException("云端对手断点代次无效");
        }
        if ("full".equals(strValueOf) && iN2 != arrayListE2.size()) {
            throw new IllegalArgumentException("云端对手断点数量无效");
        }
        for (String str2 : arrayListE) {
            File file = new File(".");
            if (str2 == null || !str2.matches("page_[0-9]{5}\\.enc")) {
                throw new IllegalArgumentException("云端对手分包名称无效");
            }
            new File(file, str2);
        }
        Iterator it = listE.iterator();
        while (it.hasNext()) {
            l0.o(new File("."), (String) it.next());
        }
        Iterator it2 = listE2.iterator();
        while (it2.hasNext()) {
            if (!((String) it2.next()).matches("overlay_pending_[0-9]{5}\\.enc")) {
                throw new IllegalArgumentException("云端对手增量分包名称无效");
            }
        }
        if (!"full".equals(strValueOf) || (listE.isEmpty() && listE2.isEmpty())) {
            return new i0(str, arrayListE, listE, listE2, arrayListE2, strB, iN2, zEquals, strValueOf, jLongValue, jLongValue2);
        }
        throw new IllegalArgumentException("云端对手全量清单无效");
    }

    public static i0 c(long j2, String str) {
        return new i0(str, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), "", 0, false, "full", 0L, j2);
    }

    public static ArrayList e(Object obj) {
        if (!(obj instanceof List)) {
            throw new IllegalArgumentException("云端对手断点清单无效");
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : (List) obj) {
            if (obj2 instanceof String) {
                String str = (String) obj2;
                if (!str.isEmpty()) {
                    arrayList.add(str);
                }
            }
            throw new IllegalArgumentException("云端对手断点清单无效");
        }
        return arrayList;
    }

    public final i0 a(String str, String str2, ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList(this.f355b);
        arrayList2.add(str);
        ArrayList arrayList3 = new ArrayList(this.f358e);
        arrayList3.addAll(arrayList);
        String strB = l0.B(str2);
        return new i0(this.f354a, arrayList2, this.f356c, this.f357d, arrayList3, strB, this.f360g + arrayList.size(), strB.isEmpty(), this.f362i, this.f363j, this.f364k);
    }

    public final k0 d() {
        return new k0(this.f359f, this.f360g, this.f361h, this.f362i, this.f363j, this.f364k);
    }

    public final i0 f(int i2, String str, String str2, ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList(this.f357d);
        arrayList2.add(str);
        String strB = l0.B(str2);
        return new i0(this.f354a, this.f355b, this.f356c, arrayList2, arrayList, strB, this.f360g + i2, strB.isEmpty(), this.f362i, this.f363j, this.f364k);
    }
}
