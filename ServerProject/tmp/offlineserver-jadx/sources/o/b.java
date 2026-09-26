package o;

import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f1817a = "sgscq-battle-runtime-v1".getBytes(StandardCharsets.UTF_8);

    public static byte[] a(byte[] bArr, byte[] bArr2, String str, int i2) throws GeneralSecurityException {
        if (bArr == null || bArr.length < 29 || bArr2 == null || bArr2.length != 32) {
            throw new GeneralSecurityException("invalid encrypted module");
        }
        byte[] bytes = String.valueOf(str).getBytes(StandardCharsets.UTF_8);
        byte[] bytes2 = String.valueOf(i2).getBytes(StandardCharsets.UTF_8);
        byte[] bytes3 = "dex".getBytes(StandardCharsets.UTF_8);
        byte[] bytes4 = "all".getBytes(StandardCharsets.UTF_8);
        byte[] bArr3 = f1817a;
        byte[] bArr4 = new byte[bArr3.length + 1 + bytes.length + 1 + bytes2.length + 1 + bytes3.length + 1 + bytes4.length];
        System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
        int length = bArr3.length + 0;
        bArr4[length] = 124;
        int i3 = length + 1;
        System.arraycopy(bytes, 0, bArr4, i3, bytes.length);
        int length2 = i3 + bytes.length;
        bArr4[length2] = 124;
        int i4 = length2 + 1;
        System.arraycopy(bytes2, 0, bArr4, i4, bytes2.length);
        int length3 = i4 + bytes2.length;
        bArr4[length3] = 124;
        int i5 = length3 + 1;
        System.arraycopy(bytes3, 0, bArr4, i5, bytes3.length);
        int length4 = i5 + bytes3.length;
        bArr4[length4] = 124;
        System.arraycopy(bytes4, 0, bArr4, length4 + 1, bytes4.length);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(2, new SecretKeySpec(bArr2, "AES"), new GCMParameterSpec(128, bArr, 0, 12));
        cipher.updateAAD(bArr4);
        return cipher.doFinal(bArr, 12, bArr.length - 12);
    }
}
