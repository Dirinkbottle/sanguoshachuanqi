package com.sgscq.vpn.battle;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class NormalAttackStyleResolver {
    private static final Set<String> SUPPORTED = new HashSet(Arrays.asList("Attack_Knife", "Attack_Axe", "Attack_Bow", "Attack_Bow_0", "Attack_Bow_1", "Attack_Chopper", "Attack_Claw", "Attack_Fan", "Attack_Hammer", "Attack_Pike", "Attack_Spear", "Attack_Sword"));

    private NormalAttackStyleResolver() {
    }

    public static String fromWeaponEffect(Object obj) {
        String strTrim = obj == null ? "" : String.valueOf(obj).trim();
        if (strTrim.endsWith(".0")) {
            strTrim = strTrim.substring(0, strTrim.length() - 2);
        }
        strTrim.getClass();
        switch (strTrim) {
            case "1":
                return "Attack_Sword";
            case "2":
                return "Attack_Fan";
            case "3":
                return "Attack_Bow";
            case "4":
                return "Attack_Spear";
            case "5":
                return "Attack_Hammer";
            case "7":
                return "Attack_Claw";
            case "8":
                return "Attack_Pike";
            case "9":
                return "Attack_Chopper";
            case "10":
                return "Attack_Axe";
            default:
                return "Attack_Knife";
        }
    }

    public static String resolve(String str) {
        return SUPPORTED.contains(str) ? str : "Attack_Knife";
    }
}
