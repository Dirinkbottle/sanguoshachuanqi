package a;

import java.io.IOException;
import java.math.BigDecimal;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public abstract class g0 implements h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c0 f5a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d0 f6b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ g0[] f7c;

    static {
        c0 c0Var = new c0();
        f5a = c0Var;
        d0 d0Var = new d0();
        f6b = d0Var;
        f7c = new g0[]{c0Var, d0Var, new g0() { // from class: a.e0
            @Override // a.h0
            public final Number a(h.a aVar) throws IOException {
                String strX = aVar.x();
                try {
                    try {
                        return Long.valueOf(Long.parseLong(strX));
                    } catch (NumberFormatException unused) {
                        Double dValueOf = Double.valueOf(strX);
                        if ((!dValueOf.isInfinite() && !dValueOf.isNaN()) || aVar.f1715b) {
                            return dValueOf;
                        }
                        throw new h.c("JSON forbids NaN and infinities: " + dValueOf + "; at path " + aVar.l());
                    }
                } catch (NumberFormatException e2) {
                    StringBuilder sbB = b0.b("Cannot parse ", strX, "; at path ");
                    sbB.append(aVar.l());
                    throw new u(sbB.toString(), e2);
                }
            }
        }, new g0() { // from class: a.f0
            @Override // a.h0
            public final Number a(h.a aVar) throws IOException {
                String strX = aVar.x();
                try {
                    return new BigDecimal(strX);
                } catch (NumberFormatException e2) {
                    StringBuilder sbB = b0.b("Cannot parse ", strX, "; at path ");
                    sbB.append(aVar.l());
                    throw new u(sbB.toString(), e2);
                }
            }
        }};
    }

    public g0(String str, int i2) {
        super(str, i2);
    }

    public static g0 valueOf(String str) {
        return (g0) Enum.valueOf(g0.class, str);
    }

    public static g0[] values() {
        return (g0[]) f7c.clone();
    }
}
