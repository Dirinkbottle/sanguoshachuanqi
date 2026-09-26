package a;

import com.sgscq.vpn.battle.BattleUnit;
import com.sgscq.vpn.g2;
import com.sgscq.vpn.handler.d1;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.r3;
import com.sgscq.vpn.s4;
import com.sgscq.vpn.t0;
import com.sgscq.vpn.w4;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URL;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListMap;

/* JADX INFO: loaded from: classes.dex */
public final class w implements c.t, w4, s4, p.k, p.g, p.i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static w f28b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f29a;

    public w() {
        this.f29a = 10;
    }

    public static byte[] l(w wVar, String str, int i2) throws ProtocolException {
        wVar.getClass();
        HttpURLConnection httpURLConnectionF = r3.f(new URL(str));
        httpURLConnectionF.setRequestMethod("GET");
        httpURLConnectionF.setConnectTimeout(10000);
        httpURLConnectionF.setReadTimeout(15000);
        httpURLConnectionF.setRequestProperty("Accept", "application/octet-stream");
        try {
            int responseCode = httpURLConnectionF.getResponseCode();
            if (responseCode != 200) {
                throw new q.j(responseCode);
            }
            if (httpURLConnectionF.getContentLength() > i2) {
                throw new IllegalArgumentException("remote config size exceeds limit");
            }
            InputStream inputStream = httpURLConnectionF.getInputStream();
            try {
                byte[] bArrA = g2.a(inputStream, i2);
                inputStream.close();
                httpURLConnectionF.disconnect();
                return bArrA;
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            httpURLConnectionF.disconnect();
            throw th3;
        }
    }

    public static void m(com.sgscq.vpn.battle.b bVar, BattleUnit battleUnit, com.sgscq.vpn.battle.b bVar2, int i2, com.sgscq.vpn.battle.a aVar, ArrayList arrayList) {
        BattleUnit battleUnitB;
        BattleUnit[] battleUnitArr;
        boolean z;
        if (battleUnit == null || !battleUnit.isAlive() || !bVar2.a() || (battleUnitB = bVar2.b(i2)) == null) {
            return;
        }
        double dMax = Math.max(1.0d, battleUnit.getAttack() - battleUnitB.getDefense());
        double dMin = Math.min(battleUnitB.getHpCur(), dMax);
        battleUnitB.damage(dMax);
        ArrayList arrayList2 = new ArrayList();
        if (!battleUnitB.isAlive()) {
            arrayList2.add("death");
        }
        boolean zIsAlive = battleUnitB.isAlive();
        List list = bVar2.f215a;
        if (!zIsAlive) {
            if (!bVar2.a()) {
                int i3 = bVar2.f219e;
                while (true) {
                    if (i3 >= list.size()) {
                        z = false;
                        break;
                    } else {
                        if (list.get(i3) != null && ((BattleUnit) list.get(i3)).isAlive()) {
                            z = true;
                            break;
                        }
                        i3++;
                    }
                }
            } else {
                z = true;
                break;
            }
            if (!z) {
                arrayList2.add("finish");
            }
        }
        Object[] objArr = new Object[12];
        objArr[0] = "from";
        int i4 = bVar.f217c;
        int i5 = aVar.f212a;
        objArr[1] = Collections.singletonList(Integer.valueOf(i4 == 0 ? i2 : i2 + i5));
        objArr[2] = "to";
        int i6 = 0;
        while (true) {
            battleUnitArr = bVar2.f216b;
            if (i6 >= battleUnitArr.length) {
                i6 = 0;
                break;
            } else if (battleUnitArr[i6] == battleUnitB) {
                break;
            } else {
                i6++;
            }
        }
        int i7 = bVar2.f217c;
        if (i7 != 0) {
            i6 += i5;
        }
        objArr[3] = Collections.singletonList(Integer.valueOf(i6));
        objArr[4] = "skill";
        objArr[5] = "Attack_Knife";
        objArr[6] = "skillId";
        objArr[7] = "0";
        objArr[8] = "type";
        objArr[9] = 0;
        objArr[10] = "params";
        objArr[11] = p("to", Collections.singletonList(p("hpCur", Double.valueOf(battleUnitB.getHpCur()), "hpMax", Double.valueOf(battleUnitB.getHpMax()), "hp", Double.valueOf(dMin), "event", arrayList2, "cure", 0)));
        arrayList.add(p(objArr));
        if (battleUnitB.isAlive()) {
            return;
        }
        int i8 = 0;
        while (true) {
            if (i8 >= battleUnitArr.length) {
                i8 = 0;
                break;
            } else if (battleUnitArr[i8] == battleUnitB) {
                break;
            } else {
                i8++;
            }
        }
        d1 d1Var = null;
        battleUnitArr[i8] = null;
        while (bVar2.f219e < list.size()) {
            int i9 = bVar2.f219e;
            bVar2.f219e = i9 + 1;
            BattleUnit battleUnit2 = (BattleUnit) list.get(i9);
            if (battleUnit2 != null && battleUnit2.isAlive()) {
                battleUnitArr[i8] = battleUnit2;
                d1Var = new d1(battleUnit2, i8);
                break;
            }
        }
        if (d1Var != null) {
            Object[] objArr2 = new Object[12];
            objArr2[0] = "from";
            Object obj = d1Var.f808b;
            Object obj2 = aVar.f214c;
            Integer num = (Integer) ((Map) obj2).get((BattleUnit) obj);
            objArr2[1] = Collections.singletonList(Integer.valueOf(num == null ? 0 : num.intValue()));
            objArr2[2] = "to";
            int i10 = d1Var.f807a;
            objArr2[3] = Collections.singletonList(Integer.valueOf(i7 == 0 ? i10 : i10 + i5));
            objArr2[4] = "skill";
            objArr2[5] = "enter";
            objArr2[6] = "skillId";
            objArr2[7] = "0";
            objArr2[8] = "type";
            objArr2[9] = 0;
            objArr2[10] = "params";
            Object[] objArr3 = new Object[2];
            objArr3[0] = "pre";
            Object[] objArr4 = new Object[4];
            objArr4[0] = "leaveIdx";
            if (i7 != 0) {
                i10 += i5;
            }
            objArr4[1] = Integer.valueOf(i10);
            objArr4[2] = "backupIdx";
            Integer num2 = (Integer) ((Map) obj2).get((BattleUnit) obj);
            objArr4[3] = Integer.valueOf(num2 == null ? 0 : num2.intValue());
            objArr3[1] = p(objArr4);
            objArr2[11] = p(objArr3);
            arrayList.add(p(objArr2));
        }
    }

    public static byte[] o(byte[] bArr, InetAddress inetAddress) {
        DatagramSocket datagramSocket = new DatagramSocket();
        try {
            datagramSocket.setSoTimeout(1500);
            datagramSocket.connect(inetAddress, 53);
            datagramSocket.send(new DatagramPacket(bArr, bArr.length));
            DatagramPacket datagramPacket = new DatagramPacket(new byte[4096], 4096);
            datagramSocket.receive(datagramPacket);
            byte[] bArrCopyOf = Arrays.copyOf(datagramPacket.getData(), datagramPacket.getLength());
            datagramSocket.close();
            return bArrCopyOf;
        } catch (Throwable th) {
            try {
                datagramSocket.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static LinkedHashMap p(Object... objArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= objArr.length) {
                return linkedHashMap;
            }
            linkedHashMap.put(String.valueOf(objArr[i2]), objArr[i3]);
            i2 += 2;
        }
    }

    public static q q(h.a aVar) {
        q qVar;
        boolean z = aVar.f1715b;
        boolean z2 = true;
        aVar.f1715b = true;
        try {
            try {
                try {
                    try {
                        aVar.z();
                        try {
                            qVar = (q) d.a0.z.b(aVar);
                        } catch (EOFException e2) {
                            e = e2;
                            z2 = false;
                            if (!z2) {
                                throw new r(e);
                            }
                            qVar = s.f26a;
                        }
                    } catch (EOFException e3) {
                        e = e3;
                    }
                    aVar.f1715b = z;
                    return qVar;
                } catch (OutOfMemoryError e4) {
                    throw new u("Failed parsing JSON source: " + aVar + " to Json", e4);
                } catch (StackOverflowError e5) {
                    throw new u("Failed parsing JSON source: " + aVar + " to Json", e5);
                }
            } catch (h.c e6) {
                throw new r(e6);
            } catch (IOException e7) {
                throw new r(e7);
            } catch (NumberFormatException e8) {
                throw new r(e8);
            }
        } catch (Throwable th) {
            aVar.f1715b = z;
            throw th;
        }
    }

    public static q r(String str) {
        try {
            h.a aVar = new h.a(new StringReader(str));
            q qVarQ = q(aVar);
            qVarQ.getClass();
            if (!(qVarQ instanceof s) && aVar.z() != 10) {
                throw new r("Did not consume the entire document.");
            }
            return qVarQ;
        } catch (h.c e2) {
            throw new r(e2);
        } catch (IOException e3) {
            throw new r(e3);
        } catch (NumberFormatException e4) {
            throw new r(e4);
        }
    }

    public static LinkedHashMap s(double d2, List list) {
        boolean z = false;
        BattleUnit battleUnit = list.isEmpty() ? null : (BattleUnit) list.get(0);
        Object[] objArr = new Object[6];
        objArr[0] = "teamPoint";
        objArr[1] = Double.valueOf(d2);
        objArr[2] = "teamLeader";
        objArr[3] = battleUnit == null ? "teamLeader_null" : battleUnit.getId();
        objArr[4] = "evolution_image_status";
        if (battleUnit != null && battleUnit.hasEvolutionImage()) {
            z = true;
        }
        objArr[5] = Boolean.valueOf(z);
        return p(objArr);
    }

    @Override // c.t
    public final Object a() {
        switch (this.f29a) {
            case 1:
                return new TreeSet();
            case 2:
                return new LinkedHashSet();
            case 3:
                return new ArrayDeque();
            case 4:
                return new ArrayList();
            case 5:
                return new ConcurrentSkipListMap();
            case 6:
                return new ConcurrentHashMap();
            case 7:
                return new TreeMap();
            case 8:
                return new LinkedHashMap();
            default:
                return new c.s(true);
        }
    }

    @Override // com.sgscq.vpn.s4
    public final void b(String str) {
    }

    @Override // p.k
    public final byte[] c() {
        return null;
    }

    @Override // p.k
    public final void d(long j2) {
    }

    @Override // com.sgscq.vpn.s4
    public final void e(String str, String str2) {
    }

    @Override // p.i
    public final byte[] f(String str, int i2) {
        switch (this.f29a) {
            case 12:
                return (byte[]) p5.O(new t0(this, str, i2));
            default:
                URL url = new URL(str);
                t0 t0Var = new t0(this, url, i2);
                Proxy proxyC = q.o.c(url);
                if (proxyC == null) {
                    proxyC = q.d.c(url, q.e.f1907b);
                }
                return (byte[]) t0Var.b(proxyC);
        }
    }

    @Override // p.k
    public final void g(byte[] bArr) {
    }

    @Override // com.sgscq.vpn.w4
    public final Map h(String str) {
        throw new IllegalStateException("player persistence unavailable");
    }

    @Override // p.k
    public final long i() {
        return 0L;
    }

    @Override // com.sgscq.vpn.w4
    public final void j(String str, Map map) {
        throw new IllegalStateException("player persistence unavailable");
    }

    @Override // com.sgscq.vpn.s4
    public final String k(String str) {
        return null;
    }

    public final boolean n(Proxy proxy) {
        try {
            return ((Boolean) p5.O(new com.sgscq.vpn.a(this, proxy, 4))).booleanValue();
        } catch (Exception e2) {
            r3.d("探测异常 " + r3.h(proxy) + ": " + e2.getClass().getSimpleName() + " " + String.valueOf(e2.getMessage()));
            return false;
        }
    }

    public /* synthetic */ w(int i2) {
        this.f29a = i2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ w(int i2, int i3) {
        this(19);
        this.f29a = i2;
        int i4 = 20;
        if (i2 != 20) {
        } else {
            this(i4);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ w(v vVar) {
        this(21);
        this.f29a = 21;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ w(b0 b0Var) {
        this(13);
        this.f29a = 13;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ w(Object obj) {
        this(12);
        this.f29a = 12;
    }
}
