package com.sgscq.vpn;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public abstract class a2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f179a = "sgscq_data_key_v3".getBytes();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f180b = "sgscq_limited_shop_config_v1".getBytes(StandardCharsets.UTF_8);

    public static byte[] a(Context context) {
        byte[] bArr = new byte[32];
        try {
            InputStream inputStreamOpen = context.getAssets().open("encrypted/k1.bin");
            try {
                byte[] bArr2 = new byte[32];
                int i2 = 0;
                while (i2 < 32) {
                    int i3 = inputStreamOpen.read(bArr2, i2, 32 - i2);
                    if (i3 <= 0) {
                        break;
                    }
                    i2 += i3;
                }
                System.arraycopy(bArr2, 0, bArr, 0, 32);
                if (inputStreamOpen != null) {
                    inputStreamOpen.close();
                }
            } catch (Throwable th) {
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Exception unused) {
        }
        byte[] bArr3 = new byte[32];
        long[] jArr = {8279557265114936619L, 5317209135687357376L, 4812679014341598486L, -8728464203307716484L};
        for (int i4 = 0; i4 < 4; i4++) {
            long j2 = jArr[i4];
            for (int i5 = 0; i5 < 8; i5++) {
                bArr3[(i4 * 8) + i5] = (byte) (j2 >>> (56 - (i5 * 8)));
            }
        }
        byte[] bArrC = c(context);
        byte[] bArr4 = new byte[bArrC.length + 32];
        System.arraycopy(bArrC, 0, bArr4, 0, bArrC.length);
        System.arraycopy(bArr3, 0, bArr4, bArrC.length, 32);
        byte[] bArrB = b(bArr4, f179a);
        byte[] bArr5 = new byte[32];
        for (int i6 = 0; i6 < 32; i6++) {
            bArr5[i6] = (byte) (bArr[i6] ^ bArrB[i6]);
        }
        return bArr5;
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) {
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(new byte[32], "HmacSHA256"));
            mac.init(new SecretKeySpec(mac.doFinal(bArr), "HmacSHA256"));
            byte[] bArr3 = new byte[32];
            byte[] bArrDoFinal = new byte[0];
            int i2 = 1;
            int i3 = 0;
            while (i3 < 32) {
                mac.reset();
                mac.update(bArrDoFinal);
                mac.update(bArr2);
                mac.update((byte) i2);
                bArrDoFinal = mac.doFinal();
                int iMin = Math.min(bArrDoFinal.length, 32 - i3);
                System.arraycopy(bArrDoFinal, 0, bArr3, i3, iMin);
                i3 += iMin;
                i2++;
            }
            return bArr3;
        } catch (Exception unused) {
            return new byte[32];
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0025  */
    public static byte[] c(Context context) {
        Signature[] apkContentsSigners;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (Build.VERSION.SDK_INT >= 28) {
                PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 134217728);
                if (packageInfo.signingInfo != null) {
                    apkContentsSigners = packageInfo.signingInfo.getApkContentsSigners();
                } else {
                    apkContentsSigners = null;
                }
            } else {
                apkContentsSigners = null;
            }
            if (apkContentsSigners == null || apkContentsSigners.length == 0) {
                apkContentsSigners = packageManager.getPackageInfo(context.getPackageName(), 64).signatures;
            }
            if (apkContentsSigners != null && apkContentsSigners.length != 0) {
                return MessageDigest.getInstance("SHA-256").digest(apkContentsSigners[0].toByteArray());
            }
            return new byte[32];
        } catch (Exception unused) {
            return new byte[32];
        }
    }
}
