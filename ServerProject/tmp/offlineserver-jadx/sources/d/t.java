package d;

import a.b0;
import com.sgscq.vpn.cloud.m0;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class t extends r {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final HashMap f1680e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Constructor f1681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f1682c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f1683d;

    static {
        HashMap map = new HashMap();
        map.put(Byte.TYPE, (byte) 0);
        map.put(Short.TYPE, (short) 0);
        map.put(Integer.TYPE, 0);
        map.put(Long.TYPE, 0L);
        map.put(Float.TYPE, Float.valueOf(0.0f));
        map.put(Double.TYPE, Double.valueOf(0.0d));
        map.put(Character.TYPE, (char) 0);
        map.put(Boolean.TYPE, Boolean.FALSE);
        f1680e = map;
    }

    public t(Class cls, LinkedHashMap linkedHashMap) {
        super(linkedHashMap);
        this.f1683d = new HashMap();
        m0 m0Var = f.c.f1702a;
        Constructor constructorW0 = m0Var.W0(cls);
        this.f1681b = constructorW0;
        f.c.e(constructorW0);
        String[] strArrZ0 = m0Var.Z0(cls);
        for (int i2 = 0; i2 < strArrZ0.length; i2++) {
            this.f1683d.put(strArrZ0[i2], Integer.valueOf(i2));
        }
        Class<?>[] parameterTypes = this.f1681b.getParameterTypes();
        this.f1682c = new Object[parameterTypes.length];
        for (int i3 = 0; i3 < parameterTypes.length; i3++) {
            this.f1682c[i3] = f1680e.get(parameterTypes[i3]);
        }
    }

    @Override // d.r
    public final Object d() {
        return (Object[]) this.f1682c.clone();
    }

    @Override // d.r
    public final Object e(Object obj) {
        Object[] objArr = (Object[]) obj;
        Constructor constructor = this.f1681b;
        try {
            return constructor.newInstance(objArr);
        } catch (IllegalAccessException e2) {
            m0 m0Var = f.c.f1702a;
            throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e2);
        } catch (IllegalArgumentException e3) {
            e = e3;
            throw new RuntimeException("Failed to invoke constructor '" + f.c.b(constructor) + "' with args " + Arrays.toString(objArr), e);
        } catch (InstantiationException e4) {
            e = e4;
            throw new RuntimeException("Failed to invoke constructor '" + f.c.b(constructor) + "' with args " + Arrays.toString(objArr), e);
        } catch (InvocationTargetException e5) {
            throw new RuntimeException("Failed to invoke constructor '" + f.c.b(constructor) + "' with args " + Arrays.toString(objArr), e5.getCause());
        }
    }

    @Override // d.r
    public final void f(Object obj, h.a aVar, q qVar) {
        Object[] objArr = (Object[]) obj;
        HashMap map = this.f1683d;
        String str = qVar.f1667c;
        Integer num = (Integer) map.get(str);
        if (num == null) {
            throw new IllegalStateException("Could not find the index in the constructor '" + f.c.b(this.f1681b) + "' for field with name '" + str + "', unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters.");
        }
        int iIntValue = num.intValue();
        Object objB = qVar.f1673i.b(aVar);
        if (objB != null || !qVar.f1676l) {
            objArr[iIntValue] = objB;
        } else {
            StringBuilder sbB = b0.b("null is not allowed as value for record component '", str, "' of primitive type; at path ");
            sbB.append(aVar.j());
            throw new a.u(sbB.toString());
        }
    }
}
