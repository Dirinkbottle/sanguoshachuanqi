package com.sgscq.vpn.config;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f590b = c("2026-07-30T08:00:00+08:00");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f591c = c("2026-07-30T12:00:00+08:00");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f592d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f593a;

    public k(i iVar) {
        this.f593a = iVar;
    }

    public static long c(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssXXX", Locale.US);
        simpleDateFormat.setLenient(false);
        try {
            return simpleDateFormat.parse(str).getTime();
        } catch (ParseException e2) {
            throw new IllegalArgumentException("invalid campaign timestamp", e2);
        }
    }

    public final int a(int i2, int i3, long j2) {
        for (a aVar : this.f593a.f584e) {
            if (aVar.f542a) {
                if (aVar.f547f.contains(c.a.b(i2))) {
                    long jC = c(aVar.f543b);
                    long jC2 = c(aVar.f544c);
                    if (j2 >= jC && j2 < jC2) {
                        return BigDecimal.valueOf(i3).multiply(BigDecimal.valueOf(aVar.f545d)).divide(BigDecimal.valueOf(100L)).setScale(0, "half_up".equals(aVar.f546e) ? RoundingMode.HALF_UP : RoundingMode.FLOOR).intValueExact();
                    }
                } else {
                    continue;
                }
            }
        }
        return i3;
    }

    public final int b(int i2, Map map, boolean z) {
        String strTrim;
        if (map == null) {
            return i2;
        }
        Object obj = map.get("effect_value");
        if (obj == null) {
            strTrim = "";
        } else {
            try {
                strTrim = new BigDecimal(String.valueOf(obj).trim()).stripTrailingZeros().toPlainString();
            } catch (NumberFormatException unused) {
                strTrim = String.valueOf(obj).trim();
            }
        }
        i iVar = this.f593a;
        d dVar = (d) (z ? (Map) iVar.f583d.f1374d : (Map) iVar.f583d.f1373c).get(strTrim);
        return dVar == null ? i2 : dVar.f561a;
    }

    public final l d(m mVar, c cVar, int i2, String str, String str2, String str3, int i3, int i4, int i5, long j2) {
        int iA = a(i2, i4, j2);
        String str4 = "limited_shop:" + cVar.f552a + ":" + c.a.E(i2).toLowerCase(Locale.US) + ":" + str3;
        return new l(str4, i2, cVar.f552a, str, str2, str3, i3, i4, iA, i5, cVar.f556e, mVar.f609b, mVar.f610c, str4 + ":" + mVar.f611d);
    }

    public final int e(int i2, long j2, long j3) {
        int iA = a(2, i2, j3);
        return (j3 < j2 || j3 >= ((j2 > f590b ? 1 : (j2 == f590b ? 0 : -1)) == 0 ? f591c : 3600000 + j2)) ? iA : Math.min(iA, BigDecimal.valueOf(i2).multiply(BigDecimal.valueOf(80L)).divide(BigDecimal.valueOf(100L)).setScale(0, RoundingMode.FLOOR).intValueExact());
    }
}
