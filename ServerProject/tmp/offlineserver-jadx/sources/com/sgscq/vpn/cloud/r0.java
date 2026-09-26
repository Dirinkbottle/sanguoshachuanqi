package com.sgscq.vpn.cloud;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.zip.GZIPInputStream;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public abstract class r0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f485a = "SGSCQ_SAVE_ARCHIVE".getBytes(StandardCharsets.US_ASCII);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SecureRandom f486b = new SecureRandom();

    public static byte[] a(int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(i2, new SecretKeySpec(bArr, "AES"), new GCMParameterSpec(128, bArr2));
        cipher.updateAAD(bArr4);
        return cipher.doFinal(bArr3);
    }

    public static byte[] b(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArr));
        try {
            byte[] bArr2 = new byte[8192];
            int i2 = 0;
            while (true) {
                int i3 = gZIPInputStream.read(bArr2);
                if (i3 == -1) {
                    gZIPInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                i2 += i3;
                if (i2 > 104857600) {
                    throw new IllegalArgumentException("存档解压后过大");
                }
                byteArrayOutputStream.write(bArr2, 0, i3);
            }
        } catch (Throwable th) {
            try {
                gZIPInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static byte[] c(DataInputStream dataInputStream, int i2, int i3) throws IOException {
        if (i2 < 0 || i2 > i3) {
            throw new IllegalArgumentException("存档长度无效");
        }
        byte[] bArr = new byte[i2];
        dataInputStream.readFully(bArr);
        return bArr;
    }
}
