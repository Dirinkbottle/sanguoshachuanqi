package o;

import a.o;
import com.sgscq.vpn.battle.runtime.BattleOfflinePermit;
import com.sgscq.vpn.z2;
import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o f1828a = new o();

    public static boolean a(String str) {
        return str != null && str.matches("[0-9a-fA-F]{64}");
    }

    public static boolean b(String str, String str2) {
        return (str == null || str2 == null || !str.equalsIgnoreCase(str2)) ? false : true;
    }

    public static String c(byte[] bArr) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(bArr);
            StringBuilder sb = new StringBuilder(64);
            for (byte b2 : bArrDigest) {
                sb.append(String.format(Locale.US, "%02x", Integer.valueOf(b2 & 255)));
            }
            return sb.toString();
        } catch (Exception unused) {
            throw new IllegalArgumentException("offline_permit_invalid");
        }
    }

    public static void d(BattleOfflinePermit battleOfflinePermit, d dVar, long j2) {
        String str;
        if (battleOfflinePermit == null) {
            str = "payload";
        } else if (battleOfflinePermit.schema != 1) {
            str = "schema";
        } else if (battleOfflinePermit.permitId <= 0) {
            str = "permit_id";
        } else if (battleOfflinePermit.deviceKeyId != dVar.f1820b) {
            str = "device_key_id";
        } else if (battleOfflinePermit.versionCode != 23) {
            str = "version_code";
        } else if (battleOfflinePermit.offlineGeneration <= 0) {
            str = "offline_generation";
        } else if (!"dex".equals(battleOfflinePermit.moduleType)) {
            str = "module_type";
        } else if (!"all".equals(battleOfflinePermit.moduleAbi)) {
            str = "module_abi";
        } else if (!b(battleOfflinePermit.afdianAccountHash, dVar.f1819a)) {
            str = "account";
        } else if (!b(battleOfflinePermit.environment, "release")) {
            str = "environment";
        } else if (!b(battleOfflinePermit.installIdHash, dVar.f1821c)) {
            str = "install_id";
        } else if (!b(battleOfflinePermit.devicePublicKeySha256, dVar.f1822d)) {
            str = "device_key";
        } else if (!b(battleOfflinePermit.apkSignatureSha256, dVar.f1823e)) {
            str = "apk_signature";
        } else if (!b(battleOfflinePermit.buildId, "1.0.1.14067")) {
            str = "build_id";
        } else if (!b(battleOfflinePermit.ciphertextSha256, dVar.f1824f)) {
            str = "ciphertext";
        } else if (!b(battleOfflinePermit.plaintextSha256, dVar.f1825g)) {
            str = "plaintext";
        } else if (!b(battleOfflinePermit.manifestSha256, dVar.f1826h)) {
            str = "manifest";
        } else if (!b(battleOfflinePermit.wrappedContentKeySha256, dVar.f1827i)) {
            str = "wrapped_key";
        } else if (!a(battleOfflinePermit.afdianAccountHash)) {
            str = "account_format";
        } else if (!a(battleOfflinePermit.installIdHash)) {
            str = "install_id_format";
        } else if (!a(battleOfflinePermit.devicePublicKeySha256)) {
            str = "device_key_format";
        } else if (!a(battleOfflinePermit.apkSignatureSha256)) {
            str = "apk_signature_format";
        } else if (!a(battleOfflinePermit.ciphertextSha256)) {
            str = "ciphertext_format";
        } else if (!a(battleOfflinePermit.plaintextSha256)) {
            str = "plaintext_format";
        } else if (!a(battleOfflinePermit.manifestSha256)) {
            str = "manifest_format";
        } else if (a(battleOfflinePermit.wrappedContentKeySha256)) {
            long j3 = battleOfflinePermit.issuedAtMs;
            if (j3 <= 0) {
                str = "issued_at";
            } else {
                long j4 = battleOfflinePermit.expiresAtMs;
                if (j4 <= j3) {
                    str = "expiry_order";
                } else if (j2 < j3 - 300000) {
                    str = "not_yet_valid";
                } else {
                    str = j2 >= j4 ? "expired" : null;
                }
            }
        } else {
            str = "wrapped_key_format";
        }
        if (str == null) {
            return;
        }
        z2.g("BattleRuntime", "offline permit mismatch: ".concat(str));
        throw new IllegalArgumentException("offline_permit_invalid");
    }

    public static BattleOfflinePermit e(byte[] bArr, byte[] bArr2, byte[] bArr3, d dVar, long j2) {
        try {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("EC").generatePublic(new X509EncodedKeySpec(bArr3));
            Signature signature = Signature.getInstance("SHA256withECDSA");
            signature.initVerify(publicKeyGeneratePublic);
            signature.update(bArr);
            if (!signature.verify(bArr2)) {
                z2.g("BattleRuntime", "offline permit signature mismatch");
                throw new IllegalArgumentException("offline_permit_invalid");
            }
            BattleOfflinePermit battleOfflinePermit = (BattleOfflinePermit) f1828a.d(new String(bArr, StandardCharsets.UTF_8), BattleOfflinePermit.class);
            d(battleOfflinePermit, dVar, j2);
            return battleOfflinePermit;
        } catch (IllegalArgumentException e2) {
            throw e2;
        } catch (Exception e3) {
            z2.g("BattleRuntime", "offline permit crypto failure: " + e3.getClass().getSimpleName() + ":" + String.valueOf(e3.getMessage()));
            throw new IllegalArgumentException("offline_permit_invalid");
        }
    }
}
