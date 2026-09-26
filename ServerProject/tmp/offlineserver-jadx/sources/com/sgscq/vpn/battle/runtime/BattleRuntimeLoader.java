package com.sgscq.vpn.battle.runtime;

import android.content.Context;
import android.os.Build;
import com.sgscq.battle.api.BattleRuntime;
import com.sgscq.battle.api.BattleRuntimeStatus;
import com.sgscq.vpn.q1;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Locale;
import o.b;
import o.g;
import o.h;

/* JADX INFO: loaded from: classes.dex */
public final class BattleRuntimeLoader {
    private BattleRuntimeLoader() {
    }

    private static h instantiate(Context context, byte[] bArr) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        q1.g();
        Object objNewInstance = q1.c(ByteBuffer.wrap(bArr), context == null ? BattleRuntimeLoader.class.getClassLoader() : context.getClassLoader()).loadClass("com.sgscq.battle.runtime.EncryptedBattleEntrypoint").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        if (objNewInstance instanceof BattleRuntime) {
            return new h((BattleRuntime) objNewInstance);
        }
        throw new IllegalStateException("battle_runtime_type_invalid");
    }

    public static h load(Context context, BattleModuleManifest battleModuleManifest, byte[] bArr, byte[] bArr2) {
        return loadVerified(context, battleModuleManifest, bArr, bArr2);
    }

    public static h loadVerified(Context context, BattleModuleManifest battleModuleManifest, byte[] bArr, byte[] bArr2) {
        byte[] bArrA;
        if (Build.VERSION.SDK_INT < 26) {
            return new h(new g(BattleRuntimeStatus.UNSUPPORTED_ANDROID));
        }
        try {
            bArrA = b.a(bArr, bArr2, battleModuleManifest.environment, battleModuleManifest.versionCode);
            try {
                if (!battleModuleManifest.dexSha256.equalsIgnoreCase(sha256(bArrA))) {
                    h hVar = new h(new g(BattleRuntimeStatus.INTEGRITY_REJECTED));
                    if (bArrA != null) {
                        Arrays.fill(bArrA, (byte) 0);
                    }
                    Arrays.fill(bArr2, (byte) 0);
                    return hVar;
                }
                h hVarInstantiate = instantiate(context, bArrA);
                if (hVarInstantiate.f1833a.status() == BattleRuntimeStatus.READY) {
                    try {
                        hVarInstantiate.initialize((byte[]) bArr2.clone());
                    } catch (Throwable unused) {
                    }
                }
                if (bArrA != null) {
                    Arrays.fill(bArrA, (byte) 0);
                }
                Arrays.fill(bArr2, (byte) 0);
                return hVarInstantiate;
            } catch (Throwable unused2) {
                try {
                    return new h(new g(BattleRuntimeStatus.MODULE_LOAD_FAILED));
                } finally {
                    if (bArrA != null) {
                        Arrays.fill(bArrA, (byte) 0);
                    }
                    if (bArr2 != null) {
                        Arrays.fill(bArr2, (byte) 0);
                    }
                }
            }
        } catch (Throwable unused3) {
            bArrA = null;
        }
    }

    public static String sha256(byte[] bArr) {
        byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(bArr);
        StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
        for (byte b2 : bArrDigest) {
            sb.append(String.format(Locale.US, "%02x", Integer.valueOf(b2 & 255)));
        }
        return sb.toString();
    }
}
