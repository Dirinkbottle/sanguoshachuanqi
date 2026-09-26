.class public final synthetic Lcom/sgscq/vpn/c6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/SettingsActivity;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/SettingsActivity;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/c6;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/c6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 4
    .line 5
    iput p2, p0, Lcom/sgscq/vpn/c6;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/c6;->a:I

    .line 2
    .line 3
    iget v1, p0, Lcom/sgscq/vpn/c6;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/sgscq/vpn/c6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/sgscq/vpn/SettingsActivity;->m()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v2, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/q0;->b()Lcom/sgscq/vpn/cloud/d0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/SettingsActivity;->z(Lcom/sgscq/vpn/cloud/d0;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, "\u5df2\u540c\u6b65 "

    .line 28
    .line 29
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " \u540d\u4e91\u5bf9\u624b"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :goto_0
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    :try_start_0
    iget-object v0, v2, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/cloud/q0;->g(I)Lcom/sgscq/vpn/cloud/d0;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v3, Lcom/sgscq/vpn/e6;

    .line 65
    .line 66
    invoke-direct {v3, v2, v0, v1}, Lcom/sgscq/vpn/e6;-><init>(Lcom/sgscq/vpn/SettingsActivity;Lcom/sgscq/vpn/cloud/d0;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/SettingsActivity;->K(Ljava/lang/Exception;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
