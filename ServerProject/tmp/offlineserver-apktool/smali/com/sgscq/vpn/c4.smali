.class public final synthetic Lcom/sgscq/vpn/c4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/PassportActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/PassportActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/c4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/c4;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/c4;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_2

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/sgscq/vpn/c4;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 8
    .line 9
    sget v1, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v1, Lcom/sgscq/vpn/cloud/q0;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Lcom/sgscq/vpn/cloud/q0;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->m:Lcom/sgscq/vpn/cloud/q0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v1, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_1
    new-instance v2, Lcom/sgscq/vpn/d4;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    invoke-direct {v2, v0, v1, v3}, Lcom/sgscq/vpn/d4;-><init>(Lcom/sgscq/vpn/PassportActivity;Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_2
    sget v0, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 62
    .line 63
    iget-object v0, p0, Lcom/sgscq/vpn/c4;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    :try_start_1
    iget-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->k:Lcom/sgscq/vpn/cloud/u0;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/sgscq/vpn/cloud/u0;->b()[B

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v2, Lcom/sgscq/vpn/d;

    .line 75
    .line 76
    const/16 v3, 0xd

    .line 77
    .line 78
    invoke-direct {v2, v0, v1, v3}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :catch_1
    move-exception v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/PassportActivity;->h(Ljava/lang/Exception;)V

    .line 87
    .line 88
    .line 89
    :goto_3
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
