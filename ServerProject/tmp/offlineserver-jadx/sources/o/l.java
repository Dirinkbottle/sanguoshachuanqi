package o;

import a.o;
import android.content.Context;
import android.util.Base64;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o f1853c = new o();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f1854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.sgscq.vpn.handler.a f1855b = new com.sgscq.vpn.handler.a();

    public l(Context context) {
        this.f1854a = new f(1, context.getApplicationContext());
    }

    public final void a(k kVar) {
        f fVar = this.f1854a;
        try {
            byte[] bytes = f1853c.i(kVar).getBytes(StandardCharsets.UTF_8);
            this.f1855b.getClass();
            fVar.f1829a.edit().putString("trusted_time_payload", Base64.encodeToString(bytes, 2)).putString("trusted_time_signature", Base64.encodeToString(com.sgscq.vpn.handler.a.a(bytes), 2)).apply();
        } catch (Exception unused) {
            fVar.f1829a.edit().remove("trusted_time_payload").remove("trusted_time_signature").apply();
        }
    }
}
