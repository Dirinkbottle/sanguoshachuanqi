package o;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f1829a;

    public f(int i2, Context context) {
        if (i2 != 1) {
            this.f1829a = context.getSharedPreferences("sgscq_battle_runtime", 0);
        } else {
            this.f1829a = context.getSharedPreferences("sgscq_battle_runtime", 0);
        }
    }
}
