package com.sgscq.vpn;

import android.content.Context;
import android.os.Build;
import android.util.Base64;
import com.sgscq.battle.api.BattleRuntimeStatus;
import com.sgscq.battle.api.IntegrityAttestRequest;
import com.sgscq.battle.api.IntegrityAttestResponse;
import com.sgscq.vpn.battle.runtime.BattleModuleManifest;
import com.sgscq.vpn.battle.runtime.BattleOfflineEnvelope;
import com.sgscq.vpn.battle.runtime.BattleRuntimeLoader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f683a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f684b;

    public /* synthetic */ f2(int i2, Context context) {
        this.f683a = i2;
        this.f684b = context;
    }

    public final m.e a(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, IOException, InvalidAlgorithmParameterException {
        byte[] bArr2 = e2.f647a;
        byte[] bArrA = a2.a(this.f684b);
        if (bArr == null || bArr.length <= 28 || bArr.length > 2097152) {
            throw new IllegalArgumentException("encrypted package size is invalid");
        }
        byte[] bArr3 = new byte[12];
        System.arraycopy(bArr, 0, bArr3, 0, 12);
        int length = bArr.length - 12;
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArr, 12, bArr4, 0, length);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(2, new SecretKeySpec(a2.b(bArrA, a2.f180b), "AES"), new GCMParameterSpec(128, bArr3));
        cipher.updateAAD(e2.f647a);
        byte[] bArrDoFinal = cipher.doFinal(bArr4);
        HashMap map = new HashMap();
        HashSet hashSet = new HashSet();
        hashSet.add("limited_shop_config.json");
        hashSet.add("manifest.json");
        ZipInputStream zipInputStream = new ZipInputStream(new ByteArrayInputStream(bArrDoFinal));
        while (true) {
            try {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    zipInputStream.close();
                    if (map.size() != 2 || !map.containsKey("limited_shop_config.json") || !map.containsKey("manifest.json")) {
                        throw new IllegalArgumentException("encrypted package entries are invalid");
                    }
                    byte[] bArr5 = (byte[]) map.get("limited_shop_config.json");
                    try {
                        a.t tVarF = a.w.r(new String((byte[]) map.get("manifest.json"), StandardCharsets.UTF_8)).f();
                        if (e2.a(tVarF, "format_version") != 1) {
                            throw new IllegalArgumentException("manifest format_version is invalid");
                        }
                        String strB = e2.b(tVarF, "published_at");
                        String strB2 = e2.b(tVarF, "published_date");
                        if (!"limited_shop_config.json".equals(e2.b(tVarF, "source_name"))) {
                            throw new IllegalArgumentException("manifest source_name is invalid");
                        }
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssXXX", Locale.US);
                        simpleDateFormat.setLenient(false);
                        try {
                            simpleDateFormat.parse(strB);
                            if (!strB.startsWith(strB2.concat("T"))) {
                                throw new IllegalArgumentException("manifest published_date mismatch");
                            }
                            d2 d2Var = new d2(strB, e2.a(tVarF, "config_schema_version"), e2.b(tVarF, "config_id"), e2.b(tVarF, "config_sha256"));
                            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(bArr5);
                            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
                            for (byte b2 : bArrDigest) {
                                sb.append(String.format(Locale.US, "%02x", Integer.valueOf(b2 & 255)));
                            }
                            if (!sb.toString().equals(d2Var.f627d)) {
                                throw new IllegalArgumentException("manifest config_sha256 mismatch");
                            }
                            com.sgscq.vpn.config.i iVarE = new com.sgscq.vpn.config.j().e(new String(bArr5, StandardCharsets.UTF_8));
                            if (d2Var.f625b != iVarE.f580a) {
                                throw new IllegalArgumentException("manifest config_schema_version mismatch");
                            }
                            if (d2Var.f626c.equals(iVarE.f581b)) {
                                return new m.e(d2Var, iVarE, bArr5);
                            }
                            throw new IllegalArgumentException("manifest config_id mismatch");
                        } catch (ParseException e2) {
                            throw new IllegalArgumentException("manifest published_at is invalid", e2);
                        }
                    } catch (Exception e3) {
                        throw new IllegalArgumentException("manifest JSON is invalid", e3);
                    }
                }
                String name = nextEntry.getName();
                if (nextEntry.isDirectory() || !hashSet.contains(name) || map.containsKey(name)) {
                    throw new IllegalArgumentException("encrypted package entries are invalid");
                }
                int i2 = "limited_shop_config.json".equals(name) ? 1048576 : 65536;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr6 = new byte[4096];
                int i3 = 0;
                while (true) {
                    int i4 = zipInputStream.read(bArr6);
                    if (i4 != -1) {
                        i3 += i4;
                        if (i3 > i2) {
                            throw new IllegalArgumentException("encrypted package entry size is invalid");
                        }
                        byteArrayOutputStream.write(bArr6, 0, i4);
                    }
                }
                map.put(name, byteArrayOutputStream.toByteArray());
                zipInputStream.closeEntry();
            } catch (Throwable th) {
                try {
                    zipInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:28:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:29:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:32:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:57:0x02a8  */
    public final e0 b() throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, CloneNotSupportedException, InvalidAlgorithmParameterException {
        String str;
        a.p pVar;
        ArrayList arrayList;
        Iterator it;
        m.e eVar;
        BattleOfflineEnvelope battleOfflineEnvelope;
        String str2;
        a.q qVar;
        a.t tVarF;
        byte[] bArrL;
        String str3;
        Context context = this.f684b;
        AtomicBoolean atomicBoolean = o.j.f1839h;
        o.a aVar = new o.a(context);
        if (Build.VERSION.SDK_INT < 26) {
            throw new IllegalStateException("unsupported_android");
        }
        aVar.f1816c.getClass();
        byte[] encoded = o.c.b().getPublic().getEncoded();
        String string = ((Context) aVar.f1816c.f1818a).getSharedPreferences("sgscq_battle_runtime", 0).getString("install_id", "");
        if (string.isEmpty()) {
            string = UUID.randomUUID().toString();
            aVar.f1814a.getSharedPreferences("sgscq_battle_runtime", 0).edit().putString("install_id", string).apply();
        }
        com.sgscq.vpn.cloud.e eVarT = aVar.f1815b.T();
        String strC = aVar.c(eVarT, string, encoded);
        com.sgscq.vpn.cloud.z zVar = aVar.f1815b;
        int i2 = eVarT.f322c;
        String str4 = eVarT.f320a;
        String strEncodeToString = Base64.encodeToString(encoded, 2);
        zVar.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String str5 = "release";
        linkedHashMap.put("environment", "release");
        linkedHashMap.put("install_id", string);
        String str6 = "version_code";
        linkedHashMap.put("version_code", 23);
        linkedHashMap.put("challenge_id", Integer.valueOf(i2));
        linkedHashMap.put("nonce", str4);
        linkedHashMap.put("public_key_der", strEncodeToString);
        linkedHashMap.put("signature", strC);
        int iT = com.sgscq.vpn.cloud.z.t(com.sgscq.vpn.cloud.z.x(zVar.c("POST", "/battle-runtime/register-device", linkedHashMap).a()), "device_key_id", 0);
        if (iT <= 0) {
            throw new IllegalArgumentException("战斗设备注册响应不完整");
        }
        o.c cVar = aVar.f1816c;
        if (iT <= 0) {
            cVar.getClass();
        } else if (((Context) cVar.f1818a).getSharedPreferences("sgscq_battle_runtime", 0).edit().putInt("device_key_id", iT).commit()) {
            com.sgscq.vpn.cloud.e eVarT2 = aVar.f1815b.T();
            String strC2 = aVar.c(eVarT2, string, encoded);
            String string2 = UUID.randomUUID().toString();
            com.sgscq.vpn.cloud.z zVar2 = aVar.f1815b;
            int i3 = eVarT2.f322c;
            String str7 = eVarT2.f320a;
            zVar2.getClass();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            linkedHashMap2.put("environment", "release");
            linkedHashMap2.put("install_id", string);
            String str8 = string;
            String str9 = "challenge_id";
            c.a.s(23, linkedHashMap2, "version_code", iT, "device_key_id", i3, str9);
            linkedHashMap2.put("process_instance_id", string2);
            linkedHashMap2.put("nonce", str7);
            linkedHashMap2.put("signature", strC2);
            com.sgscq.vpn.handler.l.b(linkedHashMap2, "build_id", "1.0.1.14067", 1, "offline_capability");
            byte[] bArrG2 = com.sgscq.vpn.cloud.m0.G2(zVar2.f540a);
            StringBuilder sb = new StringBuilder(bArrG2.length * 2);
            int length = bArrG2.length;
            int i4 = 0;
            while (i4 < length) {
                sb.append(String.format(Locale.US, "%02x", Integer.valueOf(bArrG2[i4] & 255)));
                i4++;
                length = length;
                bArrG2 = bArrG2;
                str9 = str9;
            }
            String str10 = str9;
            linkedHashMap2.put("apk_signature_sha256", sb.toString());
            a.t tVarX = com.sgscq.vpn.cloud.z.x(zVar2.c("POST", "/battle-runtime/authorize", linkedHashMap2).a());
            long jU = com.sgscq.vpn.cloud.z.u(tVarX, "lease_id", 0L);
            String strA0 = com.sgscq.vpn.cloud.z.a0(tVarX, "process_instance_id", "");
            long jU2 = com.sgscq.vpn.cloud.z.u(tVarX, "expires_at", 0L);
            long jU3 = com.sgscq.vpn.cloud.z.u(tVarX, "server_time_ms", 0L);
            String strA1 = com.sgscq.vpn.cloud.z.a0(tVarX, "build_id", "");
            if (tVarX.o("modules")) {
                str = "POST";
                a.q qVarM = tVarX.m("modules");
                qVarM.getClass();
                if (qVarM instanceof a.p) {
                    pVar = tVarX.n("modules");
                }
                arrayList = new ArrayList();
                it = pVar.iterator();
                while (it.hasNext()) {
                    Iterator it2 = it;
                    qVar = (a.q) it.next();
                    qVar.getClass();
                    int i5 = iT;
                    if (qVar instanceof a.t) {
                        tVarF = qVar.f();
                        bArrL = com.sgscq.vpn.cloud.z.l(com.sgscq.vpn.cloud.z.a0(tVarF, "wrapped_content_key", ""));
                        str3 = str6;
                        if (bArrL.length == 0) {
                            String strA2 = com.sgscq.vpn.cloud.z.a0(tVarF, "module_type", "");
                            String strA3 = com.sgscq.vpn.cloud.z.a0(tVarF, "abi", "");
                            String strA4 = com.sgscq.vpn.cloud.z.a0(tVarF, "ciphertext_sha256", "");
                            String strA5 = com.sgscq.vpn.cloud.z.a0(tVarF, "plaintext_sha256", "");
                            String strA6 = com.sgscq.vpn.cloud.z.a0(tVarF, "manifest_sha256", "");
                            com.sgscq.vpn.cloud.z.a0(tVarF, "key_wrap", "");
                            arrayList.add(new com.sgscq.vpn.cloud.f(strA2, strA3, strA4, strA5, strA6, bArrL));
                        }
                        iT = i5;
                        it = it2;
                        str6 = str3;
                        str5 = str5;
                    } else {
                        str3 = str6;
                    }
                    iT = i5;
                    it = it2;
                    str6 = str3;
                    str5 = str5;
                }
                String str11 = str6;
                int i6 = iT;
                String str12 = str5;
                if (jU > 0 || strA0.isEmpty() || jU2 <= 0 || arrayList.isEmpty()) {
                    throw new IllegalArgumentException("战斗授权响应不完整");
                }
                if (tVarX.o("offline_permit")) {
                    a.q qVarM2 = tVarX.m("offline_permit");
                    qVarM2.getClass();
                    if (qVarM2 instanceof a.t) {
                        a.t tVar = (a.t) tVarX.f27a.get("offline_permit");
                        byte[] bArrL2 = com.sgscq.vpn.cloud.z.l(com.sgscq.vpn.cloud.z.a0(tVar, "payload", ""));
                        byte[] bArrL3 = com.sgscq.vpn.cloud.z.l(com.sgscq.vpn.cloud.z.a0(tVar, "signature", ""));
                        String strA7 = com.sgscq.vpn.cloud.z.a0(tVar, "algorithm", "");
                        if (bArrL2.length == 0 || bArrL3.length == 0 || jU3 <= 0 || strA1.isEmpty()) {
                            throw new IllegalArgumentException("战斗离线许可响应不完整");
                        }
                        eVar = new m.e(strA7, bArrL2, bArrL3);
                    } else {
                        eVar = null;
                    }
                } else {
                    eVar = null;
                }
                List<com.sgscq.vpn.cloud.f> listUnmodifiableList = Collections.unmodifiableList(new ArrayList(arrayList));
                com.sgscq.vpn.cloud.z.f539e = strA0.trim();
                byte[] bArr = (byte[]) encoded.clone();
                StringBuilder sb2 = new StringBuilder("authorization modules=");
                sb2.append(listUnmodifiableList.size());
                sb2.append(" permit=");
                sb2.append(eVar != null);
                z2.e("BattleRuntime", sb2.toString());
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                com.sgscq.vpn.cloud.f fVar = null;
                for (com.sgscq.vpn.cloud.f fVar2 : listUnmodifiableList) {
                    if ("dex".equals(fVar2.f324a)) {
                        fVar = fVar2;
                    }
                    if ("native".equals(fVar2.f324a)) {
                        linkedHashMap3.put(fVar2.f325b, fVar2.f326c);
                    }
                }
                if (fVar == null || linkedHashMap3.isEmpty()) {
                    throw new IllegalStateException("battle_runtime_modules_incomplete");
                }
                com.sgscq.vpn.cloud.z zVar3 = aVar.f1815b;
                zVar3.getClass();
                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                if (!com.sgscq.vpn.cloud.z.f539e.isEmpty()) {
                    linkedHashMap4.put("X-SGSCQ-Process-Instance", com.sgscq.vpn.cloud.z.f539e);
                }
                byte[] bArr2 = zVar3.a("GET", "/battle-runtime/module/dex/all", null, "application/octet-stream", linkedHashMap4).f496a;
                z2.e("BattleRuntime", "dex download bytes=" + bArr2.length);
                if (!fVar.f326c.equalsIgnoreCase(o.e.c(bArr2))) {
                    throw new IllegalArgumentException("battle_runtime_ciphertext_invalid");
                }
                o.c cVar2 = aVar.f1816c;
                byte[] bArr3 = fVar.f329f;
                cVar2.getClass();
                byte[] bArrA = o.c.a(bArr3);
                a.t tVar2 = new a.t();
                tVar2.k("schema", 1);
                tVar2.l("environment", str12);
                tVar2.k(str11, 23);
                if (fVar.f327d.isEmpty()) {
                    throw new IllegalStateException("battle_runtime_manifest_incomplete");
                }
                tVar2.l("dex_sha256", fVar.f327d);
                a.t tVar3 = new a.t();
                for (Map.Entry entry : linkedHashMap3.entrySet()) {
                    tVar3.l((String) entry.getKey(), (String) entry.getValue());
                }
                tVar2.j("native", tVar3);
                tVar2.k("api_version", 1);
                o.h hVarLoadVerified = BattleRuntimeLoader.loadVerified(aVar.f1814a, BattleModuleManifest.parse(new a.o().h(tVar2)), bArr2, bArrA);
                z2.e("BattleRuntime", "dex loader status=" + hVarLoadVerified.status().name());
                if (hVarLoadVerified.status() != BattleRuntimeStatus.READY) {
                    throw new IllegalStateException("battle_runtime_load_failed");
                }
                if (eVar == null) {
                    battleOfflineEnvelope = null;
                } else {
                    if (!"ECDSA-P256-SHA256".equals((String) eVar.f1807d)) {
                        throw new IllegalArgumentException("offline_permit_invalid");
                    }
                    Context context2 = aVar.f1814a;
                    o.d dVar = new o.d(o.e.c(new m.e(5, context2).y().afdianUserId.getBytes(StandardCharsets.UTF_8)), i6, o.e.c(str8.getBytes(StandardCharsets.UTF_8)), o.e.c(bArr), o.a.a(com.sgscq.vpn.cloud.m0.G2(context2)), fVar.f326c, fVar.f327d, fVar.f328e, o.e.c(fVar.f329f));
                    byte[] bArr4 = (byte[]) eVar.f1805b;
                    byte[] bArr5 = (byte[]) eVar.f1806c;
                    o.e.e(bArr4, bArr5, o.a.b(context2), dVar, jU3);
                    battleOfflineEnvelope = new BattleOfflineEnvelope(bArr2, fVar.f329f, bArr4, bArr5, fVar.f326c, fVar.f327d, fVar.f328e);
                }
                BattleOfflineEnvelope battleOfflineEnvelope2 = battleOfflineEnvelope;
                StringBuilder sb3 = new StringBuilder("offline envelope=");
                sb3.append(battleOfflineEnvelope2 != null);
                z2.e("BattleRuntime", sb3.toString());
                com.sgscq.vpn.cloud.z zVar4 = aVar.f1815b;
                Context context3 = aVar.f1814a;
                try {
                    com.sgscq.vpn.cloud.e eVarS = zVar4.S();
                    if (eVarS != null) {
                        String str13 = context3.getApplicationInfo() != null ? context3.getApplicationInfo().sourceDir : null;
                        if (str13 != null && !str13.isEmpty()) {
                            IntegrityAttestResponse integrityAttestResponseIntegrityAttest = hVarLoadVerified.integrityAttest(new IntegrityAttestRequest(eVarS.f320a, eVarS.f321b, eVarS.f322c, str13));
                            if (integrityAttestResponseIntegrityAttest == null || integrityAttestResponseIntegrityAttest.getData() == null || integrityAttestResponseIntegrityAttest.getMac() == null) {
                                str2 = "integrity attestation skipped (no responder)";
                            } else {
                                String str14 = eVarS.f320a;
                                byte[] data = integrityAttestResponseIntegrityAttest.getData();
                                byte[] mac = integrityAttestResponseIntegrityAttest.getMac();
                                LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                                linkedHashMap5.put(str10, str14);
                                linkedHashMap5.put("data", Base64.encodeToString(data, 2));
                                linkedHashMap5.put("mac", Base64.encodeToString(mac, 2));
                                zVar4.c(str, "/battle-runtime/integrity-attest", linkedHashMap5);
                                str2 = "integrity attestation ok";
                            }
                            z2.e("BattleRuntime", str2);
                        }
                    }
                } catch (Exception e2) {
                    z2.g("BattleRuntime", "integrity attestation failed: ".concat(e2.getClass().getSimpleName()));
                }
                return new e0(hVarLoadVerified, battleOfflineEnvelope2, jU3);
            }
            str = "POST";
            pVar = new a.p();
            arrayList = new ArrayList();
            it = pVar.iterator();
            while (it.hasNext()) {
                Iterator it3 = it;
                qVar = (a.q) it.next();
                qVar.getClass();
                int i7 = iT;
                if (qVar instanceof a.t) {
                    str3 = str6;
                } else {
                    tVarF = qVar.f();
                    bArrL = com.sgscq.vpn.cloud.z.l(com.sgscq.vpn.cloud.z.a0(tVarF, "wrapped_content_key", ""));
                    str3 = str6;
                    if (bArrL.length == 0) {
                        String strA8 = com.sgscq.vpn.cloud.z.a0(tVarF, "module_type", "");
                        String strA9 = com.sgscq.vpn.cloud.z.a0(tVarF, "abi", "");
                        String strA10 = com.sgscq.vpn.cloud.z.a0(tVarF, "ciphertext_sha256", "");
                        String strA11 = com.sgscq.vpn.cloud.z.a0(tVarF, "plaintext_sha256", "");
                        String strA12 = com.sgscq.vpn.cloud.z.a0(tVarF, "manifest_sha256", "");
                        com.sgscq.vpn.cloud.z.a0(tVarF, "key_wrap", "");
                        arrayList.add(new com.sgscq.vpn.cloud.f(strA8, strA9, strA10, strA11, strA12, bArrL));
                    }
                    iT = i7;
                    it = it3;
                    str6 = str3;
                    str5 = str5;
                }
                iT = i7;
                it = it3;
                str6 = str3;
                str5 = str5;
            }
            String str15 = str6;
            int i8 = iT;
            String str16 = str5;
            if (jU > 0) {
            }
            throw new IllegalArgumentException("战斗授权响应不完整");
        }
        throw new IllegalStateException("device_key_id_persist_failed");
    }

    public final SecretKeySpec c() {
        int i2 = this.f683a;
        Context context = this.f684b;
        switch (i2) {
            case 1:
                byte[] bArr = y5.f1568a;
                return new SecretKeySpec(y5.g(context, "sgscq_save_data_v1"), "AES");
            case 2:
                byte[] bArr2 = y5.f1568a;
                return new SecretKeySpec(y5.f(context, "sgscq_save_data_v2"), "AES");
            case 3:
                byte[] bArr3 = y5.f1568a;
                return new SecretKeySpec(y5.g(context, "sgscq_save_data_v2"), "AES");
            default:
                byte[] bArr4 = y5.f1568a;
                return new SecretKeySpec(y5.f(context, "sgscq_save_data_v1"), "AES");
        }
    }
}
