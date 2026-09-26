package q;

import a.v;
import a.w;
import com.sgscq.vpn.cloud.m0;
import com.sgscq.vpn.p5;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f1911a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.sgscq.vpn.k f1912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SecureRandom f1913c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ConcurrentHashMap f1914d;

    public g() {
        w wVar = new w((v) null);
        com.sgscq.vpn.k kVar = new com.sgscq.vpn.k(17);
        this.f1913c = new SecureRandom();
        this.f1914d = new ConcurrentHashMap();
        this.f1911a = wVar;
        this.f1912b = kVar;
    }

    public static boolean a(InetAddress inetAddress) {
        if (inetAddress != null && !inetAddress.isAnyLocalAddress() && !inetAddress.isLoopbackAddress() && !inetAddress.isLinkLocalAddress() && !inetAddress.isSiteLocalAddress() && !inetAddress.isMulticastAddress()) {
            byte[] address = inetAddress.getAddress();
            if (inetAddress instanceof Inet4Address) {
                int i2 = address[0] & 255;
                int i3 = address[1] & 255;
                if (i2 == 0 || i2 >= 224) {
                    return false;
                }
                if (i2 == 100 && i3 >= 64 && i3 <= 127) {
                    return false;
                }
                if (i2 == 192 && i3 == 0) {
                    return false;
                }
                if (i2 == 192 && i3 == 0 && (address[2] & 255) == 2) {
                    return false;
                }
                if (i2 == 198 && (i3 == 18 || i3 == 19)) {
                    return false;
                }
                if (i2 == 198 && i3 == 51 && (address[2] & 255) == 100) {
                    return false;
                }
                return (i2 == 203 && i3 == 0 && (address[2] & 255) == 113) ? false : true;
            }
            if (inetAddress instanceof Inet6Address) {
                int i4 = address[0] & 255;
                int i5 = address[1] & 255;
                if ((i4 & 254) == 252) {
                    return false;
                }
                return (i4 == 32 && i5 == 1 && (address[2] & 255) == 13 && (address[3] & 255) == 184) ? false : true;
            }
        }
        return false;
    }

    public final InetAddress[] b(String str, c.i iVar) {
        g gVar = this;
        String lowerCase = str == null ? "" : str.trim().toLowerCase(Locale.US);
        if (!m0.H1(lowerCase)) {
            throw new IllegalArgumentException("自定义 DNS 仅支持自有服务域名");
        }
        if (!iVar.f47b) {
            throw new IllegalArgumentException("APP DNS 未启用");
        }
        String str2 = ((String) iVar.f48c) + '|' + lowerCase;
        long jC = gVar.f1912b.c();
        ConcurrentHashMap concurrentHashMap = gVar.f1914d;
        f fVar = (f) concurrentHashMap.get(str2);
        if (fVar != null && fVar.f1910b > jC) {
            InetAddress[] inetAddressArr = fVar.f1909a;
            return (InetAddress[]) Arrays.copyOf(inetAddressArr, inetAddressArr.length);
        }
        ArrayList arrayList = new ArrayList();
        int[] iArr = {1, 28};
        long jMin = Long.MAX_VALUE;
        IOException e2 = null;
        int i2 = 0;
        while (i2 < 2) {
            int i3 = iArr[i2];
            try {
                int iNextInt = gVar.f1913c.nextInt(65536);
                byte[] bArrQ = p5.q(iNextInt, i3, lowerCase);
                w wVar = gVar.f1911a;
                InetAddress inetAddress = (InetAddress) iVar.f49d;
                wVar.getClass();
                for (h hVar : p5.N0(w.o(bArrQ, inetAddress), iNextInt, lowerCase)) {
                    if (a(hVar.f1915a)) {
                        arrayList.add(hVar.f1915a);
                        jMin = Math.min(jMin, hVar.f1916b);
                    }
                }
            } catch (IOException e3) {
                e2 = e3;
            } catch (IllegalArgumentException e4) {
                e2 = new IOException(e4.getMessage(), e4);
            }
            i2++;
            gVar = this;
        }
        InetAddress[] inetAddressArr2 = (InetAddress[]) arrayList.toArray(new InetAddress[0]);
        if (inetAddressArr2.length > 0) {
            concurrentHashMap.put(str2, new f((InetAddress[]) Arrays.copyOf(inetAddressArr2, inetAddressArr2.length), jC + Math.max(30000L, Math.min(600000L, jMin * 1000))));
        } else {
            concurrentHashMap.remove(str2);
            if (e2 != null) {
                throw e2;
            }
        }
        return inetAddressArr2;
    }
}
