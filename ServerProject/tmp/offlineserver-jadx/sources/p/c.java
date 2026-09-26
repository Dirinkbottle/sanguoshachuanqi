package p;

import a.a0;
import a.c0;
import a.d0;
import a.g0;
import a.o;
import a.p;
import a.q;
import a.s;
import a.t;
import a.w;
import a.x;
import a.y;
import android.content.Context;
import com.sgscq.vpn.f2;
import com.sgscq.vpn.w1;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o f1869a;

    static {
        c.k kVar = c.k.f56c;
        y yVar = a0.f2a;
        a.b bVar = a.i.f8a;
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        c0 c0Var = g0.f5a;
        d0 d0Var = g0.f6b;
        LinkedList linkedList = new LinkedList();
        ArrayList arrayList3 = new ArrayList(arrayList2.size() + arrayList.size() + 3);
        arrayList3.addAll(arrayList);
        Collections.reverse(arrayList3);
        ArrayList arrayList4 = new ArrayList(arrayList2);
        Collections.reverse(arrayList4);
        arrayList3.addAll(arrayList4);
        boolean z = g.e.f1710a;
        HashMap map2 = new HashMap(map);
        new ArrayList(arrayList);
        new ArrayList(arrayList2);
        f1869a = new o(kVar, bVar, map2, true, true, true, yVar, arrayList3, c0Var, d0Var, new ArrayList(linkedList));
    }

    public static byte[] a(String str) {
        int i2;
        if (str == null || str.isEmpty() || str.length() % 4 == 1) {
            throw new IllegalArgumentException("Base64URL is invalid");
        }
        int length = (str.length() * 6) / 8;
        byte[] bArr = new byte[length];
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < str.length(); i6++) {
            int i7 = i4 << 6;
            char cCharAt = str.charAt(i6);
            if (cCharAt >= 'A' && cCharAt <= 'Z') {
                i2 = cCharAt - 'A';
            } else if (cCharAt >= 'a' && cCharAt <= 'z') {
                i2 = (cCharAt - 'a') + 26;
            } else if (cCharAt >= '0' && cCharAt <= '9') {
                i2 = (cCharAt - '0') + 52;
            } else if (cCharAt == '-') {
                i2 = 62;
            } else {
                if (cCharAt != '_') {
                    throw new IllegalArgumentException("Base64URL is invalid");
                }
                i2 = 63;
            }
            i4 = i7 | i2;
            i5 += 6;
            if (i5 >= 8) {
                i5 -= 8;
                if (i3 < length) {
                    bArr[i3] = (byte) (i4 >> i5);
                    i3++;
                }
                i4 &= (1 << i5) - 1;
            }
        }
        if (i3 == length && i4 == 0) {
            return bArr;
        }
        throw new IllegalArgumentException("Base64URL is invalid");
    }

    public static t b(String str, byte[] bArr) {
        try {
            q qVarR = w.r(new String(bArr, StandardCharsets.UTF_8));
            if (qVarR instanceof t) {
                return qVarR.f();
            }
            throw new IllegalArgumentException(str);
        } catch (RuntimeException e2) {
            if ((e2 instanceof IllegalArgumentException) && str.equals(e2.getMessage())) {
                throw ((IllegalArgumentException) e2);
            }
            throw new IllegalArgumentException(str, e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00c6  */
    public static a c(q qVar, String str, f2 f2Var, HashSet hashSet) {
        String str2;
        if (qVar == null || (qVar instanceof s)) {
            return null;
        }
        if (!(qVar instanceof t)) {
            throw new IllegalArgumentException("slot is invalid");
        }
        t tVarF = qVar.f();
        String[] strArr = {"slot_id", "stream", "general_id", "start_at", "end_at", "round_no"};
        boolean z = false;
        for (int i2 = 0; i2 < 6; i2++) {
            if (!tVarF.o(strArr[i2])) {
                throw new IllegalArgumentException("slot fields are invalid");
            }
        }
        String strG = g(tVarF, "slot_id");
        String strG2 = g(tVarF, "stream");
        String strG3 = g(tVarF, "general_id");
        long jF = f(tVarF, "start_at");
        long jF2 = f(tVarF, "end_at");
        int iE = e(tVarF, "round_no");
        if (!str.equals(strG2) || jF >= jF2 || iE < 1 || strG.isEmpty() || !hashSet.add(strG)) {
            throw new IllegalArgumentException("slot identity is invalid");
        }
        Context context = f2Var.f684b;
        Object obj = l.f1876o;
        if (strG3 != null && !strG3.isEmpty()) {
            try {
                if (w1.a1(context).J0(strG3) != null) {
                    z = true;
                }
            } catch (Exception unused) {
            }
        }
        if (!z) {
            throw new IllegalArgumentException("general id is invalid");
        }
        q qVarM = tVarF.m("general_name");
        if (qVarM != null && (qVarM instanceof x) && (qVarM.g().f30a instanceof String)) {
            String strTrim = qVarM.i().trim();
            if (strTrim.isEmpty() || strTrim.equals(strG3)) {
                str2 = null;
            } else {
                str2 = strTrim;
            }
        } else {
            str2 = null;
        }
        return new a(strG, strG2, strG3, str2, jF, jF2, iE);
    }

    public static m.e d(t tVar, String str, int i2, long j2, f2 f2Var, HashSet hashSet) {
        q qVarM = tVar.m(str);
        if (qVarM == null || !(qVarM instanceof t)) {
            throw new IllegalArgumentException(str.concat(" slot fields are invalid"));
        }
        t tVarF = qVarM.f();
        c.s sVar = tVarF.f27a;
        if (i2 != 2) {
            if (sVar.f82d != 2 || !tVarF.o("current") || !tVarF.o("next")) {
                throw new IllegalArgumentException(str + " slot fields are invalid: " + sVar.keySet());
            }
            a aVarC = c(tVarF.m("current"), str, f2Var, hashSet);
            a aVarC2 = c(tVarF.m("next"), str, f2Var, hashSet);
            if (aVarC != null && !aVarC.a(j2)) {
                throw new IllegalArgumentException(str.concat(" current slot is invalid"));
            }
            if (aVarC2 != null) {
                if (aVarC != null) {
                    j2 = aVarC.f1861f;
                }
                if (aVarC2.f1860e < j2) {
                    throw new IllegalArgumentException(str.concat(" next slot is invalid"));
                }
            }
            return new m.e(aVarC, aVarC2);
        }
        if (sVar.f82d == 1 && tVarF.o("slots")) {
            q qVarM2 = tVarF.m("slots");
            qVarM2.getClass();
            if (qVarM2 instanceof p) {
                p pVarN = tVarF.n("slots");
                if (pVarN.f25a.size() >= 2) {
                    ArrayList arrayList = pVarN.f25a;
                    if (arrayList.size() <= 16) {
                        ArrayList arrayList2 = new ArrayList(arrayList.size());
                        Iterator it = pVarN.iterator();
                        a aVar = null;
                        a aVar2 = null;
                        a aVar3 = null;
                        while (it.hasNext()) {
                            a aVarC3 = c((q) it.next(), str, f2Var, hashSet);
                            if (aVarC3.f1861f <= j2) {
                                throw new IllegalArgumentException(str.concat(" batch contains expired slot"));
                            }
                            long j3 = aVarC3.f1860e;
                            if (aVar3 != null && j3 < aVar3.f1861f) {
                                throw new IllegalArgumentException(str.concat(" batch slot order is invalid"));
                            }
                            if (aVarC3.a(j2)) {
                                if (aVar != null) {
                                    throw new IllegalArgumentException(str.concat(" batch current slot is invalid"));
                                }
                                aVar = aVarC3;
                            } else if (aVar2 == null && j3 > j2) {
                                aVar2 = aVarC3;
                            }
                            arrayList2.add(aVarC3);
                            aVar3 = aVarC3;
                        }
                        return new m.e(aVar, aVar2, arrayList2);
                    }
                }
                throw new IllegalArgumentException(str.concat(" batch slot count is invalid"));
            }
        }
        throw new IllegalArgumentException(str.concat(" batch slot fields are invalid"));
    }

    public static int e(t tVar, String str) {
        long jF = f(tVar, str);
        if (jF < -2147483648L || jF > 2147483647L) {
            throw new IllegalArgumentException(str.concat(" is invalid"));
        }
        return (int) jF;
    }

    public static long f(t tVar, String str) {
        q qVarM = tVar.m(str);
        if (qVarM == null || !(qVarM instanceof x) || !(qVarM.g().f30a instanceof Number)) {
            throw new IllegalArgumentException(str.concat(" is invalid"));
        }
        try {
            String strI = qVarM.i();
            if (strI.contains(".") || strI.contains("e") || strI.contains("E")) {
                throw new NumberFormatException();
            }
            return Long.parseLong(strI);
        } catch (NumberFormatException e2) {
            throw new IllegalArgumentException(str.concat(" is invalid"), e2);
        }
    }

    public static String g(t tVar, String str) {
        q qVarM = tVar.m(str);
        if (qVarM != null && (qVarM instanceof x) && (qVarM.g().f30a instanceof String)) {
            return qVarM.i();
        }
        throw new IllegalArgumentException(str.concat(" is invalid"));
    }

    public static q h(q qVar) {
        qVar.getClass();
        if (!(qVar instanceof t)) {
            if (!(qVar instanceof p)) {
                return qVar.a();
            }
            p pVar = new p();
            Iterator it = qVar.e().iterator();
            while (it.hasNext()) {
                Object objH = h((q) it.next());
                if (objH == null) {
                    objH = s.f26a;
                }
                pVar.f25a.add(objH);
            }
            return pVar;
        }
        t tVar = new t();
        TreeMap treeMap = new TreeMap();
        Iterator it2 = ((c.p) qVar.f().f27a.entrySet()).iterator();
        while (((c.q) it2).hasNext()) {
            Map.Entry entry = (Map.Entry) ((c.o) it2).next();
            treeMap.put((String) entry.getKey(), (q) entry.getValue());
        }
        for (Map.Entry entry2 : treeMap.entrySet()) {
            tVar.j((String) entry2.getKey(), h((q) entry2.getValue()));
        }
        return tVar;
    }
}
