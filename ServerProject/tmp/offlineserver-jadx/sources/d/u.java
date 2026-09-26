package d;

import a.i0;
import a.j0;
import com.google.gson.reflect.TypeToken;
import com.sgscq.vpn.cloud.m0;
import com.sgscq.vpn.p5;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class u implements j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c.i f1684a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a.j f1685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c.k f1686c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d f1687d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f1688e;

    public u(c.i iVar, a.b bVar, c.k kVar, d dVar, List list) {
        this.f1684a = iVar;
        this.f1685b = bVar;
        this.f1686c = kVar;
        this.f1687d = dVar;
        this.f1688e = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(Object obj, AccessibleObject accessibleObject) {
        if (Modifier.isStatic(((Member) accessibleObject).getModifiers())) {
            obj = null;
        }
        if (c.w.f88a.a(obj, accessibleObject)) {
            return;
        }
        throw new a.r(f.c.d(accessibleObject, true) + " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type.");
    }

    @Override // a.j0
    public final i0 a(a.o oVar, TypeToken typeToken) {
        Class rawType = typeToken.getRawType();
        if (!Object.class.isAssignableFrom(rawType)) {
            return null;
        }
        p5.W(this.f1688e);
        return f.c.f1702a.w1(rawType) ? new t(rawType, c(oVar, typeToken, rawType, true)) : new s(this.f1684a.b(typeToken), c(oVar, typeToken, rawType, false));
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:60:0x0114  */
    /* JADX WARN: Code duplicated, block: B:63:0x0121  */
    /* JADX WARN: Code duplicated, block: B:64:0x012d  */
    /* JADX WARN: Code duplicated, block: B:66:0x0131  */
    /* JADX WARN: Code duplicated, block: B:67:0x0133  */
    /* JADX WARN: Code duplicated, block: B:70:0x0138  */
    /* JADX WARN: Code duplicated, block: B:74:0x0183  */
    /* JADX WARN: Code duplicated, block: B:85:0x01b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x01a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x0184 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r32v0 */
    /* JADX WARN: Type inference failed for: r34v0 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v7 */
    public final LinkedHashMap c(a.o oVar, TypeToken typeToken, Class cls, boolean z) {
        boolean z2;
        Method method;
        List list;
        List listSingletonList;
        int size;
        ?? r5;
        q qVar;
        ?? r7;
        q qVar2;
        Field field;
        int i2;
        int i3;
        Field[] fieldArr;
        Class cls2;
        boolean z3;
        TypeToken<?> typeToken2;
        Class<? super Object> rawType;
        boolean z4;
        int modifiers;
        boolean z5;
        b.a aVar;
        i0 i0VarF;
        boolean z6;
        q qVar3;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        TypeToken typeToken3 = typeToken;
        Class rawType2 = cls;
        while (rawType2 != Object.class) {
            Field[] declaredFields = rawType2.getDeclaredFields();
            if (rawType2 != cls && declaredFields.length > 0) {
                p5.W(this.f1688e);
            }
            int length = declaredFields.length;
            boolean z7 = false;
            int i4 = 0;
            while (i4 < length) {
                Field field2 = declaredFields[i4];
                boolean zD = d(field2, true);
                boolean zD2 = d(field2, z7);
                if (zD || zD2) {
                    if (!z) {
                        z2 = zD2;
                        method = null;
                    } else if (Modifier.isStatic(field2.getModifiers())) {
                        zD2 = z7;
                        z2 = zD2;
                        method = null;
                    } else {
                        Method methodV0 = f.c.f1702a.V0(rawType2, field2);
                        f.c.e(methodV0);
                        if (methodV0.getAnnotation(b.b.class) != null && field2.getAnnotation(b.b.class) == null) {
                            throw new a.r(com.sgscq.vpn.handler.l.a("@SerializedName on ", f.c.d(methodV0, z7), " is not supported"));
                        }
                        z2 = zD2;
                        method = methodV0;
                    }
                    if (method == null) {
                        f.c.e(field2);
                    }
                    Type typeZ2 = m0.z2(typeToken3.getType(), rawType2, field2.getGenericType(), new HashMap());
                    b.b bVar = (b.b) field2.getAnnotation(b.b.class);
                    if (bVar == null) {
                        listSingletonList = Collections.singletonList(this.f1685b.a(field2));
                    } else {
                        String strValue = bVar.value();
                        String[] strArrAlternate = bVar.alternate();
                        if (strArrAlternate.length == 0) {
                            listSingletonList = Collections.singletonList(strValue);
                        } else {
                            ArrayList arrayList = new ArrayList(strArrAlternate.length + 1);
                            arrayList.add(strValue);
                            Collections.addAll(arrayList, strArrAlternate);
                            list = arrayList;
                        }
                        size = list.size();
                        r5 = z7;
                        qVar = null;
                        r7 = list;
                        while (r5 < size) {
                            String str = (String) r7.get(r5);
                            if (r5 != 0) {
                                z3 = z7;
                            } else {
                                z3 = zD;
                            }
                            typeToken2 = TypeToken.get(typeZ2);
                            rawType = typeToken2.getRawType();
                            if ((rawType instanceof Class) || !rawType.isPrimitive()) {
                                z4 = false;
                            } else {
                                z4 = true;
                            }
                            boolean z8 = z4;
                            modifiers = field2.getModifiers();
                            if (Modifier.isStatic(modifiers) || !Modifier.isFinal(modifiers)) {
                                z5 = false;
                            } else {
                                z5 = true;
                            }
                            boolean z9 = z5;
                            aVar = (b.a) field2.getAnnotation(b.a.class);
                            if (aVar != null) {
                                this.f1687d.getClass();
                                i0VarF = d.b(this.f1684a, oVar, typeToken2, aVar);
                            } else {
                                i0VarF = null;
                            }
                            if (i0VarF != null) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            boolean z10 = z6;
                            if (i0VarF == null) {
                                i0VarF = oVar.f(typeToken2);
                            }
                            qVar3 = qVar;
                            ?? r32 = r5;
                            int i5 = size;
                            ?? r34 = r7;
                            Field field3 = field2;
                            int i6 = i4;
                            int i7 = length;
                            Field[] fieldArr2 = declaredFields;
                            Class cls3 = rawType2;
                            qVar = (q) linkedHashMap.put(str, new q(str, field2, z3, z2, false, method, z10, i0VarF, oVar, typeToken2, z8, z9));
                            if (qVar3 == null) {
                                qVar = qVar3;
                            }
                            rawType2 = cls3;
                            zD = z3;
                            i4 = i6;
                            length = i7;
                            z7 = false;
                            declaredFields = fieldArr2;
                            size = i5;
                            r7 = r34;
                            field2 = field3;
                            r5 = (r32 == true ? 1 : 0) + 1;
                        }
                        qVar2 = qVar;
                        field = field2;
                        i2 = i4;
                        i3 = length;
                        fieldArr = declaredFields;
                        cls2 = rawType2;
                        if (qVar2 == null) {
                            throw new IllegalArgumentException("Class " + cls.getName() + " declares multiple JSON fields named '" + qVar2.f1665a + "'; conflict is caused by fields " + f.c.c(qVar2.f1666b) + " and " + f.c.c(field));
                        }
                    }
                    list = listSingletonList;
                    size = list.size();
                    r5 = z7;
                    qVar = null;
                    r7 = list;
                    while (r5 < size) {
                        String str2 = (String) r7.get(r5);
                        if (r5 != 0) {
                            z3 = z7;
                        } else {
                            z3 = zD;
                        }
                        typeToken2 = TypeToken.get(typeZ2);
                        rawType = typeToken2.getRawType();
                        if (rawType instanceof Class) {
                            z4 = false;
                        } else {
                            z4 = false;
                        }
                        boolean z11 = z4;
                        modifiers = field2.getModifiers();
                        if (Modifier.isStatic(modifiers)) {
                            z5 = false;
                        } else {
                            z5 = false;
                        }
                        boolean z12 = z5;
                        aVar = (b.a) field2.getAnnotation(b.a.class);
                        if (aVar != null) {
                            this.f1687d.getClass();
                            i0VarF = d.b(this.f1684a, oVar, typeToken2, aVar);
                        } else {
                            i0VarF = null;
                        }
                        if (i0VarF != null) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        boolean z13 = z6;
                        if (i0VarF == null) {
                            i0VarF = oVar.f(typeToken2);
                        }
                        qVar3 = qVar;
                        ?? r33 = r5;
                        int i8 = size;
                        ?? r35 = r7;
                        Field field4 = field2;
                        int i9 = i4;
                        int i10 = length;
                        Field[] fieldArr3 = declaredFields;
                        Class cls4 = rawType2;
                        qVar = (q) linkedHashMap.put(str2, new q(str2, field2, z3, z2, false, method, z13, i0VarF, oVar, typeToken2, z11, z12));
                        if (qVar3 == null) {
                            qVar = qVar3;
                        }
                        rawType2 = cls4;
                        zD = z3;
                        i4 = i9;
                        length = i10;
                        z7 = false;
                        declaredFields = fieldArr3;
                        size = i8;
                        r7 = r35;
                        field2 = field4;
                        r5 = (r33 == true ? 1 : 0) + 1;
                    }
                    qVar2 = qVar;
                    field = field2;
                    i2 = i4;
                    i3 = length;
                    fieldArr = declaredFields;
                    cls2 = rawType2;
                    if (qVar2 == null) {
                        throw new IllegalArgumentException("Class " + cls.getName() + " declares multiple JSON fields named '" + qVar2.f1665a + "'; conflict is caused by fields " + f.c.c(qVar2.f1666b) + " and " + f.c.c(field));
                    }
                } else {
                    i2 = i4;
                    i3 = length;
                    fieldArr = declaredFields;
                    cls2 = rawType2;
                }
                i4 = i2 + 1;
                rawType2 = cls2;
                length = i3;
                declaredFields = fieldArr;
            }
            Class cls5 = rawType2;
            typeToken3 = TypeToken.get(m0.z2(typeToken3.getType(), cls5, cls5.getGenericSuperclass(), new HashMap()));
            rawType2 = typeToken3.getRawType();
        }
        return linkedHashMap;
    }

    public final boolean d(Field field, boolean z) {
        boolean z2;
        boolean z3;
        Class<?> type = field.getType();
        c.k kVar = this.f1686c;
        kVar.getClass();
        if (c.k.c(type)) {
            z2 = true;
        } else {
            kVar.b(z);
            z2 = false;
        }
        if (z2) {
            return false;
        }
        if ((field.getModifiers() & 136) != 0 || field.isSynthetic() || c.k.c(field.getType())) {
            z3 = true;
        } else {
            List list = z ? kVar.f57a : kVar.f58b;
            if (!list.isEmpty()) {
                Iterator it = list.iterator();
                if (it.hasNext()) {
                    c.a.v(it.next());
                    throw null;
                }
            }
            z3 = false;
        }
        return !z3;
    }
}
