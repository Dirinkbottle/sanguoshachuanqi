package c;

import java.lang.reflect.AccessibleObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f88a;

    static {
        w uVar;
        if (l.f59a >= 9) {
            try {
                uVar = new u(AccessibleObject.class.getDeclaredMethod("canAccess", Object.class));
            } catch (NoSuchMethodException unused) {
                uVar = null;
            }
        } else {
            uVar = null;
        }
        if (uVar == null) {
            uVar = new v();
        }
        f88a = uVar;
    }

    public abstract boolean a(Object obj, AccessibleObject accessibleObject);
}
