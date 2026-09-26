.class public abstract synthetic Lcom/sgscq/vpn/q6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lcom/sgscq/vpn/SgscqVpnService;Landroid/app/Notification;)V
    .locals 2

    .line 1
    const/16 v0, 0x3e9

    const/16 v1, 0x400

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/VpnService;->startForeground(ILandroid/app/Notification;I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sgscq/vpn/SgscqVpnService;Landroid/app/Notification;)V
    .locals 2

    .line 1
    const/16 v0, 0x3e9

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/VpnService;->startForeground(ILandroid/app/Notification;I)V

    return-void
.end method
