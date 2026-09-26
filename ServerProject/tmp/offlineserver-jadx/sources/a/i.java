package a;

import java.lang.reflect.Field;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public abstract class i implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f8a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ i[] f9b;

    static {
        b bVar = new b();
        f8a = bVar;
        f9b = new i[]{bVar, new i() { // from class: a.c
            @Override // a.j
            public final String a(Field field) {
                return i.c(field.getName());
            }
        }, new i() { // from class: a.d
            @Override // a.j
            public final String a(Field field) {
                return i.c(i.b(field.getName(), ' '));
            }
        }, new i() { // from class: a.e
            @Override // a.j
            public final String a(Field field) {
                return i.b(field.getName(), '_').toUpperCase(Locale.ENGLISH);
            }
        }, new i() { // from class: a.f
            @Override // a.j
            public final String a(Field field) {
                return i.b(field.getName(), '_').toLowerCase(Locale.ENGLISH);
            }
        }, new i() { // from class: a.g
            @Override // a.j
            public final String a(Field field) {
                return i.b(field.getName(), '-').toLowerCase(Locale.ENGLISH);
            }
        }, new i() { // from class: a.h
            @Override // a.j
            public final String a(Field field) {
                return i.b(field.getName(), '.').toLowerCase(Locale.ENGLISH);
            }
        }};
    }

    public i(String str, int i2) {
        super(str, i2);
    }

    public static String b(String str, char c2) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (Character.isUpperCase(cCharAt) && sb.length() != 0) {
                sb.append(c2);
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static String c(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (Character.isLetter(cCharAt)) {
                if (Character.isUpperCase(cCharAt)) {
                    return str;
                }
                char upperCase = Character.toUpperCase(cCharAt);
                if (i2 == 0) {
                    return upperCase + str.substring(1);
                }
                return str.substring(0, i2) + upperCase + str.substring(i2 + 1);
            }
        }
        return str;
    }

    public static i valueOf(String str) {
        return (i) Enum.valueOf(i.class, str);
    }

    public static i[] values() {
        return (i[]) f9b.clone();
    }
}
