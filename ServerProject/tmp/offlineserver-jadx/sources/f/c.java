package f;

import a.r;
import com.sgscq.vpn.cloud.m0;
import com.sgscq.vpn.handler.l;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m0 f1702a;

    static {
        m0 aVar;
        try {
            aVar = new b();
        } catch (NoSuchMethodException unused) {
            aVar = new a();
        }
        f1702a = aVar;
    }

    public static void a(AccessibleObject accessibleObject, StringBuilder sb) {
        sb.append('(');
        Class<?>[] parameterTypes = accessibleObject instanceof Method ? ((Method) accessibleObject).getParameterTypes() : ((Constructor) accessibleObject).getParameterTypes();
        for (int i2 = 0; i2 < parameterTypes.length; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(parameterTypes[i2].getSimpleName());
        }
        sb.append(')');
    }

    public static String b(Constructor constructor) {
        StringBuilder sb = new StringBuilder(constructor.getDeclaringClass().getName());
        a(constructor, sb);
        return sb.toString();
    }

    public static String c(Field field) {
        return field.getDeclaringClass().getName() + "#" + field.getName();
    }

    public static String d(AccessibleObject accessibleObject, boolean z) {
        StringBuilder sb;
        String strB;
        String string;
        if (!(accessibleObject instanceof Field)) {
            if (accessibleObject instanceof Method) {
                Method method = (Method) accessibleObject;
                StringBuilder sb2 = new StringBuilder(method.getName());
                a(method, sb2);
                string = "method '" + method.getDeclaringClass().getName() + "#" + sb2.toString() + "'";
            } else {
                if (accessibleObject instanceof Constructor) {
                    sb = new StringBuilder("constructor '");
                    strB = b((Constructor) accessibleObject);
                } else {
                    sb = new StringBuilder("<unknown AccessibleObject> ");
                    sb.append(accessibleObject.toString());
                }
                string = sb.toString();
            }
            if (!z && Character.isLowerCase(string.charAt(0))) {
                return Character.toUpperCase(string.charAt(0)) + string.substring(1);
            }
        }
        sb = new StringBuilder("field '");
        strB = c((Field) accessibleObject);
        sb.append(strB);
        sb.append("'");
        string = sb.toString();
        return !z ? string : string;
    }

    public static void e(AccessibleObject accessibleObject) {
        try {
            accessibleObject.setAccessible(true);
        } catch (Exception e2) {
            throw new r(l.a("Failed making ", d(accessibleObject, false), " accessible; either increase its visibility or write a custom TypeAdapter for its declaring type."), e2);
        }
    }
}
