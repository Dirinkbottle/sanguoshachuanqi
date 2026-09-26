package c;

import com.google.gson.reflect.TypeToken;
import com.sgscq.vpn.cloud.m0;
import com.sgscq.vpn.p5;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f46a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f47b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f48c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f49d;

    public i(Map map, List list, boolean z) {
        this.f48c = map;
        this.f47b = z;
        this.f49d = list;
    }

    public static String a(Class cls) {
        String name;
        String str;
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            name = cls.getName();
            str = "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ";
        } else {
            if (!Modifier.isAbstract(modifiers)) {
                return null;
            }
            name = cls.getName();
            str = "Abstract classes can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: ";
        }
        return str.concat(name);
    }

    public static InetAddress c(String str) throws UnknownHostException {
        String[] strArrSplit = str.split("\\.", -1);
        if (strArrSplit.length != 4) {
            throw new UnknownHostException(str);
        }
        byte[] bArr = new byte[4];
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            String str2 = strArrSplit[i2];
            if (str2.isEmpty() || str2.length() > 3) {
                throw new UnknownHostException(str);
            }
            for (int i3 = 0; i3 < str2.length(); i3++) {
                if (!Character.isDigit(str2.charAt(i3))) {
                    throw new UnknownHostException(str);
                }
            }
            try {
                int i4 = Integer.parseInt(str2);
                if (i4 < 0 || i4 > 255) {
                    throw new UnknownHostException(str);
                }
                bArr[i2] = (byte) i4;
            } catch (NumberFormatException unused) {
                throw new UnknownHostException(str);
            }
        }
        return InetAddress.getByAddress(bArr);
    }

    public static InetAddress d(String str) {
        InetAddress inetAddressC;
        String strTrim = str == null ? "" : str.trim();
        if (strTrim.startsWith("[") && strTrim.endsWith("]") && strTrim.length() > 2) {
            strTrim = strTrim.substring(1, strTrim.length() - 1);
        }
        try {
            if (!strTrim.contains(":")) {
                inetAddressC = c(strTrim);
            } else {
                if (strTrim.contains("%")) {
                    throw new UnknownHostException(strTrim);
                }
                inetAddressC = InetAddress.getByName(strTrim);
                if (inetAddressC.getAddress().length != 16) {
                    throw new UnknownHostException(strTrim);
                }
            }
            if (inetAddressC.isAnyLocalAddress() || inetAddressC.isLoopbackAddress() || inetAddressC.isLinkLocalAddress() || inetAddressC.isMulticastAddress()) {
                throw new IllegalArgumentException("DNS 服务器必须是有效的 IPv4 或 IPv6 地址");
            }
            return inetAddressC;
        } catch (Exception unused) {
            throw new IllegalArgumentException("DNS 服务器必须是有效的 IPv4 或 IPv6 地址");
        }
    }

    public final t b(TypeToken typeToken) {
        g gVar;
        String str;
        t hVar;
        Type type = typeToken.getType();
        Class rawType = typeToken.getRawType();
        Map map = (Map) this.f48c;
        a.v(map.get(type));
        a.v(map.get(rawType));
        a.w wVar = null;
        int i2 = 1;
        if (EnumSet.class.isAssignableFrom(rawType)) {
            gVar = new g(type, 0);
        } else {
            gVar = rawType == EnumMap.class ? new g(type, 1) : null;
        }
        if (gVar != null) {
            return gVar;
        }
        p5.W((List) this.f49d);
        if (Modifier.isAbstract(rawType.getModifiers())) {
            hVar = null;
        } else {
            try {
                Constructor declaredConstructor = rawType.getDeclaredConstructor(new Class[0]);
                m0 m0Var = f.c.f1702a;
                try {
                    declaredConstructor.setAccessible(true);
                    str = null;
                } catch (Exception e2) {
                    str = "Failed making constructor '" + f.c.b(declaredConstructor) + "' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: " + e2.getMessage();
                }
                hVar = str != null ? new h(str, 1) : new a.a(declaredConstructor, i2);
            } catch (NoSuchMethodException unused) {
                hVar = null;
            }
        }
        if (hVar != null) {
            return hVar;
        }
        if (Collection.class.isAssignableFrom(rawType)) {
            if (SortedSet.class.isAssignableFrom(rawType)) {
                wVar = new a.w(i2);
            } else if (Set.class.isAssignableFrom(rawType)) {
                wVar = new a.w(2);
            } else {
                wVar = new a.w(Queue.class.isAssignableFrom(rawType) ? 3 : 4);
            }
        } else if (Map.class.isAssignableFrom(rawType)) {
            if (ConcurrentNavigableMap.class.isAssignableFrom(rawType)) {
                wVar = new a.w(5);
            } else if (ConcurrentMap.class.isAssignableFrom(rawType)) {
                wVar = new a.w(6);
            } else if (SortedMap.class.isAssignableFrom(rawType)) {
                wVar = new a.w(7);
            } else {
                wVar = (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(TypeToken.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) ? new a.w(9) : new a.w(8);
            }
        }
        if (wVar != null) {
            return wVar;
        }
        String strA = a(rawType);
        if (strA != null) {
            return new f(strA, 1);
        }
        if (this.f47b) {
            return new e(this, rawType);
        }
        return new f("Unable to create instance of " + rawType + "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.", 0);
    }

    public final String toString() {
        switch (this.f46a) {
            case 0:
                return ((Map) this.f48c).toString();
            default:
                return super.toString();
        }
    }

    public i(boolean z, String str, InetAddress inetAddress) {
        this.f47b = z;
        this.f48c = str;
        this.f49d = inetAddress;
    }
}
