.class public final synthetic Lcom/sgscq/vpn/g3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/sgscq/vpn/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/g3;->a:Lcom/sgscq/vpn/MainActivity;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/g3;->a:Lcom/sgscq/vpn/MainActivity;

    .line 2
    .line 3
    sget v1, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    move v1, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v3

    .line 22
    :goto_0
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iput-boolean v3, v0, Lcom/sgscq/vpn/MainActivity;->u:Z

    .line 28
    .line 29
    sget-boolean v1, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/MainActivity;->a(Z)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "\u5b58\u6863\u5347\u7ea7\u5931\u8d25"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "\u65e7\u5b58\u6863\u4ecd\u7136\u5b89\u5168\u4fdd\u7559\uff0c\u5c1a\u672a\u88ab\u5220\u9664\u3002\u8bf7\u91cd\u542f\u540e\u91cd\u8bd5\u3002\n\n"

    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v1, Lcom/sgscq/vpn/k3;

    .line 56
    .line 57
    const/4 v2, 0x2

    .line 58
    invoke-direct {v1, v0, v2}, Lcom/sgscq/vpn/k3;-><init>(Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    const-string v0, "\u9000\u51fa"

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iput-boolean v2, v0, Lcom/sgscq/vpn/MainActivity;->u:Z

    .line 76
    .line 77
    sget-boolean p1, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/MainActivity;->a(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/sgscq/vpn/MainActivity;->b()V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void
.end method
