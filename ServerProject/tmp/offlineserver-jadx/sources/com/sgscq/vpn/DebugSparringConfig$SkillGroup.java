package com.sgscq.vpn;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class DebugSparringConfig$SkillGroup {
    public String attack = "";
    public String passive = "";
    public String control = "";
    public String blood = "";

    public String firstSkillId() {
        Iterator it = p0.f1262c.iterator();
        while (it.hasNext()) {
            String str = get((String) it.next());
            if (!str.isEmpty()) {
                return str;
            }
        }
        return "";
    }

    public String get(String str) {
        if ("attack".equals(str)) {
            return p0.a(this.attack);
        }
        if ("passive".equals(str)) {
            return p0.a(this.passive);
        }
        if ("control".equals(str)) {
            return p0.a(this.control);
        }
        return "blood".equals(str) ? p0.a(this.blood) : "";
    }

    public boolean isEmpty() {
        Iterator it = p0.f1262c.iterator();
        while (it.hasNext()) {
            if (!get((String) it.next()).isEmpty()) {
                return false;
            }
        }
        return true;
    }

    public DebugSparringConfig$SkillGroup normalized() {
        DebugSparringConfig$SkillGroup debugSparringConfig$SkillGroup = new DebugSparringConfig$SkillGroup();
        debugSparringConfig$SkillGroup.attack = p0.a(this.attack);
        debugSparringConfig$SkillGroup.passive = p0.a(this.passive);
        debugSparringConfig$SkillGroup.control = p0.a(this.control);
        debugSparringConfig$SkillGroup.blood = p0.a(this.blood);
        return debugSparringConfig$SkillGroup;
    }
}
