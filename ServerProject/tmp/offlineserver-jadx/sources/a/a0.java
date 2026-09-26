package a;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public abstract class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y f2a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ a0[] f3b;

    static {
        y yVar = new y();
        f2a = yVar;
        f3b = new a0[]{yVar, new a0() { // from class: a.z
        }};
    }

    public a0(String str, int i2) {
        super(str, i2);
    }

    public static a0 valueOf(String str) {
        return (a0) Enum.valueOf(a0.class, str);
    }

    public static a0[] values() {
        return (a0[]) f3b.clone();
    }
}
