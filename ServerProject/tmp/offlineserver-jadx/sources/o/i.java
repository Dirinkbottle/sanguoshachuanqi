package o;

import android.content.Context;
import android.util.AtomicFile;
import android.util.Base64;
import com.sgscq.battle.api.BattleRuntimeStatus;
import com.sgscq.vpn.battle.runtime.BattleModuleManifest;
import com.sgscq.vpn.battle.runtime.BattleOfflineEnvelope;
import com.sgscq.vpn.battle.runtime.BattleOfflinePermit;
import com.sgscq.vpn.battle.runtime.BattleRuntimeLoader;
import com.sgscq.vpn.cloud.CloudSessionStore$SessionData;
import com.sgscq.vpn.cloud.m0;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f1836b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l f1837c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.sgscq.vpn.k f1838d;

    public i(Context context, c cVar, l lVar, com.sgscq.vpn.k kVar) {
        this.f1835a = context;
        this.f1836b = cVar;
        this.f1837c = lVar;
        this.f1838d = kVar;
    }

    /* JADX WARN: Code duplicated, block: B:73:0x0190  */
    public final h a() throws Throwable {
        BattleOfflineEnvelope battleOfflineEnvelopeDecode;
        l lVar;
        boolean z;
        byte[] bArrDecode;
        byte[] bArrDecode2;
        k kVar;
        c cVar = this.f1836b;
        synchronized (cVar) {
            try {
                try {
                    battleOfflineEnvelopeDecode = BattleOfflineEnvelope.decode(((AtomicFile) ((c.e) cVar.f1818a).f38a).readFully());
                    c.c(battleOfflineEnvelopeDecode);
                } catch (Exception unused) {
                    throw new IllegalArgumentException("offline_cache_invalid");
                }
            } catch (Exception unused2) {
                battleOfflineEnvelopeDecode = BattleOfflineEnvelope.decode(((AtomicFile) ((c.e) cVar.f1818a).f39b).readFully());
                c.c(battleOfflineEnvelopeDecode);
            }
        }
        CloudSessionStore$SessionData cloudSessionStore$SessionDataY = new m.e(5, this.f1835a).y();
        c cVar2 = new c(1, this.f1835a);
        String string = ((Context) cVar2.f1818a).getSharedPreferences("sgscq_battle_runtime", 0).getString("install_id", "");
        int i2 = ((Context) cVar2.f1818a).getSharedPreferences("sgscq_battle_runtime", 0).getInt("device_key_id", 0);
        if (cloudSessionStore$SessionDataY.afdianUserId.isEmpty() || string.isEmpty() || i2 <= 0) {
            throw new IllegalArgumentException("offline_binding_missing");
        }
        d dVar = new d(e.c(cloudSessionStore$SessionDataY.afdianUserId.getBytes(StandardCharsets.UTF_8)), i2, e.c(string.getBytes(StandardCharsets.UTF_8)), e.c(c.b().getPublic().getEncoded()), a.a(m0.G2(this.f1835a)), battleOfflineEnvelopeDecode.ciphertextSha256, battleOfflineEnvelopeDecode.plaintextSha256, battleOfflineEnvelopeDecode.manifestSha256, e.c(battleOfflineEnvelopeDecode.wrappedContentKey));
        long jC = this.f1838d.c();
        BattleOfflinePermit battleOfflinePermitE = e.e(battleOfflineEnvelopeDecode.permitPayload, battleOfflineEnvelopeDecode.permitSignature, a.b(this.f1835a), dVar, jC);
        l lVar2 = this.f1837c;
        long j2 = battleOfflinePermitE.expiresAtMs;
        synchronized (lVar2) {
            try {
                String string2 = lVar2.f1854a.f1829a.getString("trusted_time_payload", "");
                if (string2 == null || string2.isEmpty()) {
                    bArrDecode = new byte[0];
                } else {
                    try {
                        bArrDecode = Base64.decode(string2, 0);
                    } catch (IllegalArgumentException unused3) {
                        bArrDecode = new byte[0];
                    }
                }
                String string3 = lVar2.f1854a.f1829a.getString("trusted_time_signature", "");
                if (string3 == null || string3.isEmpty()) {
                    bArrDecode2 = new byte[0];
                } else {
                    try {
                        bArrDecode2 = Base64.decode(string3, 0);
                    } catch (IllegalArgumentException unused4) {
                        bArrDecode2 = new byte[0];
                    }
                }
                if (bArrDecode.length == 0 || bArrDecode2.length == 0) {
                    lVar = lVar2;
                    z = false;
                } else {
                    lVar2.f1855b.getClass();
                    if (MessageDigest.isEqual(com.sgscq.vpn.handler.a.a(bArrDecode), bArrDecode2) && (kVar = (k) l.f1853c.d(new String(bArrDecode, StandardCharsets.UTF_8), k.class)) != null) {
                        long j3 = kVar.f1850a;
                        if (j3 > 0) {
                            try {
                                long j4 = kVar.f1851b;
                                if (j4 <= 0 || kVar.f1852c < 0 || jC < j4 - 300000 || jC < j3 - 300000 || jC >= j2) {
                                    lVar = lVar2;
                                } else {
                                    k kVar2 = new k(j3, Math.max(j4, jC), kVar.f1852c);
                                    lVar = lVar2;
                                    try {
                                        lVar.a(kVar2);
                                        z = true;
                                    } catch (Exception unused5) {
                                        z = false;
                                    } catch (Throwable th) {
                                        th = th;
                                        throw th;
                                    }
                                }
                            } catch (Exception unused6) {
                            } catch (Throwable th2) {
                                th = th2;
                                lVar = lVar2;
                            }
                        } else {
                            lVar = lVar2;
                        }
                        z = false;
                    } else {
                        lVar = lVar2;
                        z = false;
                    }
                }
            } catch (Exception unused7) {
            } catch (Throwable th3) {
                th = th3;
                lVar = lVar2;
            }
            if (!z) {
                throw new IllegalArgumentException("offline_trusted_time_invalid");
            }
            h hVarLoadVerified = BattleRuntimeLoader.loadVerified(this.f1835a, BattleModuleManifest.forOfflineDex("release", 23, battleOfflineEnvelopeDecode.plaintextSha256), battleOfflineEnvelopeDecode.encryptedDex, c.a(battleOfflineEnvelopeDecode.wrappedContentKey));
            if (hVarLoadVerified.status() == BattleRuntimeStatus.READY) {
                return hVarLoadVerified;
            }
            throw new IllegalArgumentException("offline_runtime_invalid");
        }
    }
}
