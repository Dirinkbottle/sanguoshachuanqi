package o;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import com.sgscq.vpn.battle.runtime.BattleOfflineEnvelope;
import java.io.File;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.security.spec.MGF1ParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1818a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(int i2, Context context) {
        this(new c.e(new File(context.getApplicationContext().getFilesDir(), "battle_offline")));
        if (i2 == 1) {
            this.f1818a = context.getApplicationContext();
        } else if (i2 != 2) {
        } else {
            this(new f(0, context.getApplicationContext()));
        }
    }

    public static byte[] a(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPPadding");
        cipher.init(2, b().getPrivate(), new OAEPParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA1, PSource.PSpecified.DEFAULT));
        byte[] bArrDoFinal = cipher.doFinal(bArr);
        if (bArrDoFinal.length == 32) {
            return bArrDoFinal;
        }
        throw new IllegalArgumentException("invalid_content_key");
    }

    public static KeyPair b() throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException, NoSuchProviderException, InvalidAlgorithmParameterException {
        KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
        keyStore.load(null);
        if (keyStore.containsAlias("sgscq_battle_runtime_device_v1")) {
            PrivateKey privateKey = (PrivateKey) keyStore.getKey("sgscq_battle_runtime_device_v1", null);
            X509Certificate x509Certificate = (X509Certificate) keyStore.getCertificate("sgscq_battle_runtime_device_v1");
            if (privateKey != null && x509Certificate != null) {
                return new KeyPair(x509Certificate.getPublicKey(), privateKey);
            }
            keyStore.deleteEntry("sgscq_battle_runtime_device_v1");
        }
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
        keyPairGenerator.initialize(new KeyGenParameterSpec.Builder("sgscq_battle_runtime_device_v1", 6).setKeySize(3072).setDigests("SHA-256").setSignaturePaddings("PKCS1").setEncryptionPaddings("OAEPPadding").build());
        return keyPairGenerator.generateKeyPair();
    }

    public static void c(BattleOfflineEnvelope battleOfflineEnvelope) {
        byte[] bArr = battleOfflineEnvelope.encryptedDex;
        if (bArr.length == 0 || battleOfflineEnvelope.wrappedContentKey.length == 0 || battleOfflineEnvelope.permitPayload.length == 0 || battleOfflineEnvelope.permitSignature.length == 0 || !battleOfflineEnvelope.ciphertextSha256.equalsIgnoreCase(e.c(bArr)) || battleOfflineEnvelope.plaintextSha256.length() != 64 || battleOfflineEnvelope.manifestSha256.length() != 64) {
            throw new IllegalArgumentException("offline_cache_invalid");
        }
    }

    public /* synthetic */ c(Object obj) {
        this.f1818a = obj;
    }
}
