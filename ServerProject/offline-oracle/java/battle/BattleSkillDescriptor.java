package com.sgscq.vpn.battle;

/* JADX INFO: loaded from: classes.dex */
public class BattleSkillDescriptor {
    private final String code;
    private final String description;
    private final String majorProperty;
    private final String phase;
    private final String range;
    private final String skillType;

    public static class Builder {
        private final String code;
        private String description;
        private String majorProperty;
        private String phase;
        private String range;
        private String skillType;

        private Builder(String str) {
            this.code = str;
        }

        public BattleSkillDescriptor build() {
            return new BattleSkillDescriptor(this);
        }

        public Builder description(String str) {
            this.description = str;
            return this;
        }

        public Builder majorProperty(String str) {
            this.majorProperty = str;
            return this;
        }

        public Builder phase(String str) {
            this.phase = str;
            return this;
        }

        public Builder range(String str) {
            this.range = str;
            return this;
        }

        public Builder skillType(String str) {
            this.skillType = str;
            return this;
        }
    }

    private BattleSkillDescriptor(Builder builder) {
        this.code = emptyToBlank(builder.code);
        this.skillType = emptyToBlank(builder.skillType);
        this.majorProperty = emptyToBlank(builder.majorProperty);
        this.phase = emptyToBlank(builder.phase);
        this.range = emptyToBlank(builder.range);
        this.description = emptyToBlank(builder.description);
    }

    public static Builder builder(String str) {
        return new Builder(str);
    }

    private static String emptyToBlank(String str) {
        return str == null ? "" : str;
    }

    public String combinedText() {
        return (this.phase + " " + this.range + " " + this.description).toLowerCase();
    }

    public String getCode() {
        return this.code;
    }

    public String getDescription() {
        return this.description;
    }

    public String getMajorProperty() {
        return this.majorProperty;
    }

    public String getPhase() {
        return this.phase;
    }

    public String getRange() {
        return this.range;
    }

    public String getSkillType() {
        return this.skillType;
    }

    public boolean isEmptySkill() {
        return this.code.length() == 0 || "0".equals(this.skillType) || "0".equals(this.description);
    }
}
