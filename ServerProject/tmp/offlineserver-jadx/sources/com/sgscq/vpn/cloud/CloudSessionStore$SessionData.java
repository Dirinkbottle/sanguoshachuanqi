package com.sgscq.vpn.cloud;

/* JADX INFO: loaded from: classes.dex */
public final class CloudSessionStore$SessionData {
    public long accessExpiresAt;
    public long refreshExpiresAt;
    public String environment = "";
    public String afdianUserId = "";
    public String name = "";
    public String accessToken = "";
    public String refreshToken = "";

    public boolean isLoggedIn() {
        return (!"release".equals(this.environment) || this.afdianUserId.isEmpty() || this.refreshToken.isEmpty()) ? false : true;
    }
}
