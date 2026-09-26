package com.sgscq.vpn.battle.runtime;

import a.o;
import b.b;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class BattleModuleManifest {

    @b("api_version")
    public final int apiVersion;

    @b("dex_sha256")
    public final String dexSha256;

    @b("environment")
    public final String environment;

    @b("native")
    public final Map<String, String> nativeHashes;

    @b("schema")
    public final int schema;

    @b("version_code")
    public final int versionCode;

    private BattleModuleManifest(int i2, String str, int i3, String str2, Map<String, String> map, int i4) {
        this.schema = i2;
        this.environment = str == null ? "" : str;
        this.versionCode = i3;
        this.dexSha256 = str2 == null ? "" : str2;
        this.nativeHashes = map == null ? Collections.emptyMap() : Collections.unmodifiableMap(new LinkedHashMap(map));
        this.apiVersion = i4;
    }

    public static BattleModuleManifest forOfflineDex(String str, int i2, String str2) {
        if (str == null || str.isEmpty() || i2 <= 0 || str2 == null || !str2.matches("[0-9a-fA-F]{64}")) {
            throw new IllegalArgumentException("manifest_invalid");
        }
        return new BattleModuleManifest(1, str, i2, str2, Collections.emptyMap(), 1);
    }

    public static BattleModuleManifest parse(String str) {
        if (str == null || str.trim().isEmpty()) {
            throw new IllegalArgumentException("manifest_empty");
        }
        BattleModuleManifest battleModuleManifest = (BattleModuleManifest) new o().d(str, BattleModuleManifest.class);
        if (battleModuleManifest == null || battleModuleManifest.schema != 1 || battleModuleManifest.apiVersion != 1 || battleModuleManifest.environment.isEmpty() || battleModuleManifest.versionCode <= 0 || battleModuleManifest.dexSha256.length() != 64 || battleModuleManifest.nativeHashes.isEmpty()) {
            throw new IllegalArgumentException("manifest_invalid");
        }
        return battleModuleManifest;
    }
}
