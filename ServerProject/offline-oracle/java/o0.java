package com.sgscq.vpn;

import android.content.Context;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public abstract class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f1237a = "sgscq_game_data_v2".getBytes(StandardCharsets.UTF_8);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Map f1238b;

    public static String a(Context context, String str) {
        Map map;
        if (f1238b == null) {
            synchronized (o0.class) {
                Map map2 = f1238b;
                if (map2 != null) {
                    map = map2;
                } else {
                    HashMap map3 = new HashMap();
                    try {
                        byte[] bArrB = b(context);
                        byte[] bArr = new byte[12];
                        System.arraycopy(bArrB, 0, bArr, 0, 12);
                        int length = bArrB.length - 12;
                        byte[] bArr2 = new byte[length];
                        System.arraycopy(bArrB, 12, bArr2, 0, length);
                        byte[] bArrA = a2.a(context);
                        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                        cipher.init(2, new SecretKeySpec(bArrA, "AES"), new GCMParameterSpec(128, bArr));
                        cipher.updateAAD(f1237a);
                        ZipInputStream zipInputStream = new ZipInputStream(new ByteArrayInputStream(cipher.doFinal(bArr2)));
                        try {
                            byte[] bArr3 = new byte[4096];
                            while (true) {
                                ZipEntry nextEntry = zipInputStream.getNextEntry();
                                if (nextEntry == null) {
                                    break;
                                }
                                if (!nextEntry.isDirectory()) {
                                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                    while (true) {
                                        int i2 = zipInputStream.read(bArr3);
                                        if (i2 <= 0) {
                                            break;
                                        }
                                        byteArrayOutputStream.write(bArr3, 0, i2);
                                    }
                                    map3.put(nextEntry.getName(), byteArrayOutputStream.toString("UTF-8"));
                                }
                                zipInputStream.closeEntry();
                            }
                            zipInputStream.close();
                            z2.e("SGSCQ_SRV", "[CryptoHelper] Decrypted " + map3.size() + " files from game_data.bin");
                        } catch (Throwable th) {
                            try {
                                zipInputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (Exception e2) {
                        z2.d("SGSCQ_SRV", "[CryptoHelper] Decryption failed: " + e2.getMessage(), e2);
                    }
                    f1238b = map3;
                    map = map3;
                }
            }
            f1238b = map;
        }
        return (String) f1238b.get(str);
    }

    public static byte[] b(Context context) throws IOException {
        InputStream inputStreamOpen = context.getAssets().open("encrypted/game_data.bin");
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[4096];
            while (true) {
                int i2 = inputStreamOpen.read(bArr);
                if (i2 <= 0) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    inputStreamOpen.close();
                    return byteArray;
                }
                byteArrayOutputStream.write(bArr, 0, i2);
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
    }
}
