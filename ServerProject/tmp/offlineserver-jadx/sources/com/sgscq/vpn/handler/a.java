package com.sgscq.vpn.handler;

import android.security.keystore.KeyGenParameterSpec;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.cert.CertificateException;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.SecretKey;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static byte[] a(byte[] bArr) throws NoSuchAlgorithmException, IOException, InvalidKeyException, KeyStoreException, CertificateException, NoSuchProviderException, InvalidAlgorithmParameterException {
        KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
        keyStore.load(null);
        SecretKey secretKeyGenerateKey = (SecretKey) keyStore.getKey("sgscq_battle_offline_time_v1", null);
        if (secretKeyGenerateKey == null) {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("HmacSHA256", "AndroidKeyStore");
            keyGenerator.init(new KeyGenParameterSpec.Builder("sgscq_battle_offline_time_v1", 12).setDigests("SHA-256").build());
            secretKeyGenerateKey = keyGenerator.generateKey();
        }
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(secretKeyGenerateKey);
        return mac.doFinal(bArr);
    }
}
