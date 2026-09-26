package f;

import com.sgscq.vpn.cloud.m0;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class b extends m0 {
    public final Method A;
    public final Method B;
    public final Method y = Class.class.getMethod("isRecord", new Class[0]);
    public final Method z;

    public b() throws NoSuchMethodException {
        Method method = Class.class.getMethod("getRecordComponents", new Class[0]);
        this.z = method;
        Class<?> componentType = method.getReturnType().getComponentType();
        this.A = componentType.getMethod("getName", new Class[0]);
        this.B = componentType.getMethod("getType", new Class[0]);
    }

    @Override // com.sgscq.vpn.cloud.m0
    public final Method V0(Class cls, Field field) {
        try {
            return cls.getMethod(field.getName(), new Class[0]);
        } catch (ReflectiveOperationException e2) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.10.1). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e2);
        }
    }

    @Override // com.sgscq.vpn.cloud.m0
    public final Constructor W0(Class cls) {
        try {
            Object[] objArr = (Object[]) this.z.invoke(cls, new Object[0]);
            Class<?>[] clsArr = new Class[objArr.length];
            for (int i2 = 0; i2 < objArr.length; i2++) {
                clsArr[i2] = (Class) this.B.invoke(objArr[i2], new Object[0]);
            }
            return cls.getDeclaredConstructor(clsArr);
        } catch (ReflectiveOperationException e2) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.10.1). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e2);
        }
    }

    @Override // com.sgscq.vpn.cloud.m0
    public final String[] Z0(Class cls) {
        try {
            Object[] objArr = (Object[]) this.z.invoke(cls, new Object[0]);
            String[] strArr = new String[objArr.length];
            for (int i2 = 0; i2 < objArr.length; i2++) {
                strArr[i2] = (String) this.A.invoke(objArr[i2], new Object[0]);
            }
            return strArr;
        } catch (ReflectiveOperationException e2) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.10.1). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e2);
        }
    }

    @Override // com.sgscq.vpn.cloud.m0
    public final boolean w1(Class cls) {
        try {
            return ((Boolean) this.y.invoke(cls, new Object[0])).booleanValue();
        } catch (ReflectiveOperationException e2) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.10.1). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e2);
        }
    }
}
