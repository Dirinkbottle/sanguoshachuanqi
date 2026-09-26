package m;

import com.sgscq.vpn.handler.l;
import com.sgscq.vpn.handler.z0;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1808a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Serializable f1809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1810c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Serializable f1811d;

    public f() {
        this.f1809b = new LinkedHashSet();
        this.f1810c = new LinkedHashSet();
        this.f1811d = new LinkedHashSet();
    }

    public static void a(c[][][] cVarArr, int i2, c cVar) {
        char c2;
        c[] cVarArr2 = cVarArr[i2 + cVar.f1796d][cVar.f1795c];
        l.b bVar = cVar.f1793a;
        if (bVar == null) {
            c2 = 0;
        } else {
            int iOrdinal = bVar.ordinal();
            c2 = 2;
            if (iOrdinal != 1) {
                if (iOrdinal == 2) {
                    c2 = 1;
                } else if (iOrdinal != 4) {
                    if (iOrdinal != 6) {
                        throw new IllegalStateException("Illegal mode " + bVar);
                    }
                    c2 = 0;
                } else {
                    c2 = 3;
                }
            }
        }
        c cVar2 = cVarArr2[c2];
        if (cVar2 == null || cVar2.f1798f > cVar.f1798f) {
            cVarArr2[c2] = cVar;
        }
    }

    public static boolean c(l.b bVar, char c2) {
        int i2;
        int iOrdinal = bVar.ordinal();
        if (iOrdinal == 1) {
            return c2 >= '0' && c2 <= '9';
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 4) {
                return true;
            }
            if (iOrdinal != 6) {
                return false;
            }
            return b.b(String.valueOf(c2));
        }
        if (c2 < '`') {
            i2 = b.f1791a[c2];
        } else {
            int[] iArr = b.f1791a;
            i2 = -1;
        }
        return i2 != -1;
    }

    public static l.d e(int i2) {
        int i3;
        if (i2 == 0) {
            throw null;
        }
        int i4 = i2 - 1;
        if (i4 != 0) {
            i3 = i4 != 1 ? 40 : 26;
        } else {
            i3 = 9;
        }
        return l.d.b(i3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0036  */
    public final void b(l.d dVar, c[][][] cVarArr, int i2, c cVar) {
        int i3;
        j.c cVar2 = (j.c) this.f1810c;
        int length = cVar2.f1758a.length;
        int i4 = cVar2.f1759b;
        Serializable serializable = this.f1809b;
        if (i4 >= 0) {
            char cCharAt = ((String) serializable).charAt(i2);
            if (cVar2.f1758a[i4].canEncode("" + cCharAt)) {
                length = i4 + 1;
            } else {
                i4 = 0;
            }
        } else {
            i4 = 0;
        }
        int i5 = length;
        for (int i6 = i4; i6 < i5; i6++) {
            char cCharAt2 = ((String) serializable).charAt(i2);
            if (cVar2.f1758a[i6].canEncode("" + cCharAt2)) {
                a(cVarArr, i2, new c(this, l.b.BYTE, i2, i6, 1, cVar, dVar));
            }
        }
        l.b bVar = l.b.KANJI;
        String str = (String) serializable;
        if (c(bVar, str.charAt(i2))) {
            a(cVarArr, i2, new c(this, bVar, i2, 0, 1, cVar, dVar));
        }
        int length2 = str.length();
        l.b bVar2 = l.b.ALPHANUMERIC;
        if (c(bVar2, str.charAt(i2))) {
            int i7 = i2 + 1;
            a(cVarArr, i2, new c(this, bVar2, i2, 0, (i7 >= length2 || !c(bVar2, str.charAt(i7))) ? 1 : 2, cVar, dVar));
        }
        l.b bVar3 = l.b.NUMERIC;
        if (c(bVar3, str.charAt(i2))) {
            int i8 = i2 + 1;
            if (i8 >= length2 || !c(bVar3, str.charAt(i8))) {
                i3 = 1;
            } else {
                int i9 = i2 + 2;
                i3 = (i9 >= length2 || !c(bVar3, str.charAt(i9))) ? 2 : 3;
            }
            a(cVarArr, i2, new c(this, bVar3, i2, 0, i3, cVar, dVar));
        }
    }

    public final e d(l.d dVar) throws i.b {
        int i2;
        String str = (String) this.f1809b;
        int length = str.length();
        j.c cVar = (j.c) this.f1810c;
        c[][][] cVarArr = (c[][][]) Array.newInstance((Class<?>) c.class, length + 1, cVar.f1758a.length, 4);
        b(dVar, cVarArr, 0, null);
        for (int i3 = 1; i3 <= length; i3++) {
            for (int i4 = 0; i4 < cVar.f1758a.length; i4++) {
                for (int i5 = 0; i5 < 4; i5++) {
                    c cVar2 = cVarArr[i3][i4][i5];
                    if (cVar2 != null && i3 < length) {
                        b(dVar, cVarArr, i3, cVar2);
                    }
                }
            }
        }
        int i6 = -1;
        int i7 = Integer.MAX_VALUE;
        int i8 = -1;
        for (int i9 = 0; i9 < cVar.f1758a.length; i9++) {
            for (int i10 = 0; i10 < 4; i10++) {
                c cVar3 = cVarArr[length][i9][i10];
                if (cVar3 != null && (i2 = cVar3.f1798f) < i7) {
                    i6 = i9;
                    i8 = i10;
                    i7 = i2;
                }
            }
        }
        if (i6 >= 0) {
            return new e(this, dVar, cVarArr[length][i6][i8]);
        }
        throw new i.b(l.a("Internal error: failed to encode \"", str, "\""));
    }

    public final void f(LinkedHashMap linkedHashMap) {
        Boolean bool = Boolean.TRUE;
        if (bool.equals(linkedHashMap.get("result"))) {
            ((Set) this.f1809b).addAll(z0.z(linkedHashMap.get("changed_general_pk_ids")));
            ((Set) this.f1810c).addAll(z0.z(linkedHashMap.get("changed_skill_ids")));
            ((Set) this.f1811d).addAll(z0.z(linkedHashMap.get("changed_equipment_pk_ids")));
            this.f1808a = this.f1808a || bool.equals(linkedHashMap.get("buddy_changed"));
        }
    }

    public f(String str, Charset charset, boolean z, l.a aVar) {
        this.f1809b = str;
        this.f1808a = z;
        this.f1810c = new j.c(str, charset);
        this.f1811d = aVar;
    }
}
