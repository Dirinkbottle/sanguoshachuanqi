package o;

import android.content.Context;
import android.util.Base64;
import com.sgscq.vpn.R;
import com.sgscq.vpn.cloud.z;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.Signature;
import java.security.SignatureException;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final z f1815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f1816c;

    static {
        new AtomicBoolean(false);
    }

    public a(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f1814a = applicationContext;
        this.f1815b = new z(applicationContext);
        this.f1816c = new c(1, applicationContext);
    }

    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b2 : bArr) {
            sb.append(String.format(Locale.US, "%02x", Integer.valueOf(b2 & 255)));
        }
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0038 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static byte[] b(Context context) throws IOException {
        InputStream inputStreamOpenRawResource = context.getResources().openRawResource(R.raw.battle_offline_permit_public_key);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[256];
                while (true) {
                    int i2 = inputStreamOpenRawResource.read(bArr);
                    if (i2 == -1) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        inputStreamOpenRawResource.close();
                        return byteArray;
                    }
                    byteArrayOutputStream.write(bArr, 0, i2);
                    if (inputStreamOpenRawResource != null) {
                        try {
                            inputStreamOpenRawResource.close();
                        } catch (Throwable th) {
                            th.addSuppressed(th);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            if (inputStreamOpenRawResource != null) {
                inputStreamOpenRawResource.close();
            }
            throw th4;
        }
    }

    public final String c(com.sgscq.vpn.cloud.e eVar, String str, byte[] bArr) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        byte[] bArrDecode = Base64.decode(eVar.f320a, 0);
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        if (bArrDecode == null) {
            bArrDecode = new byte[0];
        }
        messageDigest.update(bArrDecode);
        messageDigest.update("release".getBytes(StandardCharsets.UTF_8));
        messageDigest.update(String.valueOf(23).getBytes(StandardCharsets.US_ASCII));
        messageDigest.update(String.valueOf(str).getBytes(StandardCharsets.UTF_8));
        if (bArr == null) {
            bArr = new byte[0];
        }
        messageDigest.update(bArr);
        byte[] bArrDigest = messageDigest.digest();
        this.f1816c.getClass();
        Signature signature = Signature.getInstance("SHA256withRSA");
        signature.initSign(c.b().getPrivate());
        if (bArrDigest == null) {
            bArrDigest = new byte[0];
        }
        signature.update(bArrDigest);
        return Base64.encodeToString(signature.sign(), 2);
    }
}
