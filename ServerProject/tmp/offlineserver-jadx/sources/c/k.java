package c;

import a.i0;
import a.j0;
import com.google.gson.reflect.TypeToken;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class k implements j0, Cloneable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final k f56c = new k();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f57a = Collections.emptyList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f58b = Collections.emptyList();

    public static boolean c(Class cls) {
        if (Enum.class.isAssignableFrom(cls)) {
            return false;
        }
        if ((cls.getModifiers() & 8) != 0) {
            return false;
        }
        return cls.isAnonymousClass() || cls.isLocalClass();
    }

    @Override // a.j0
    public final i0 a(a.o oVar, TypeToken typeToken) {
        boolean z;
        boolean z2;
        boolean zC = c(typeToken.getRawType());
        if (zC) {
            z = true;
        } else {
            b(true);
            z = false;
        }
        if (zC) {
            z2 = true;
        } else {
            b(false);
            z2 = false;
        }
        if (z || z2) {
            return new j(this, z2, z, oVar, typeToken);
        }
        return null;
    }

    public final void b(boolean z) {
        Iterator it = (z ? this.f57a : this.f58b).iterator();
        if (it.hasNext()) {
            a.v(it.next());
            throw null;
        }
    }

    public final Object clone() {
        try {
            return (k) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }
}
