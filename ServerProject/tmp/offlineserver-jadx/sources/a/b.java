package a;

import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public final enum b extends i {
    public b() {
        super("IDENTITY", 0);
    }

    @Override // a.j
    public final String a(Field field) {
        return field.getName();
    }
}
