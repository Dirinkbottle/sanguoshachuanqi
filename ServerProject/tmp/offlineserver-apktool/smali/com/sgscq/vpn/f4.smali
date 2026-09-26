.class public final synthetic Lcom/sgscq/vpn/f4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/PassportActivity;

.field public final synthetic c:Lcom/sgscq/vpn/cloud/q0;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/PassportActivity;Lcom/sgscq/vpn/cloud/q0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/f4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/f4;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/sgscq/vpn/f4;->c:Lcom/sgscq/vpn/cloud/q0;

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
    .locals 5

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/f4;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/f4;->c:Lcom/sgscq/vpn/cloud/q0;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/sgscq/vpn/f4;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :pswitch_0
    sget v0, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object v0, v1, Lcom/sgscq/vpn/cloud/q0;->b:Lm/e;

    .line 20
    .line 21
    invoke-virtual {v0}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    sget-object v0, Lcom/sgscq/vpn/cloud/p0;->b:Lcom/sgscq/vpn/cloud/p0;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v3, v1, Lcom/sgscq/vpn/cloud/q0;->e:Lcom/sgscq/vpn/m4;

    .line 35
    .line 36
    iget-object v4, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Lcom/sgscq/vpn/m4;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    xor-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    sget-object v0, Lcom/sgscq/vpn/cloud/p0;->c:Lcom/sgscq/vpn/cloud/p0;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, v1, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/cloud/z;->s(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/x;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    sget-object v0, Lcom/sgscq/vpn/cloud/p0;->a:Lcom/sgscq/vpn/cloud/p0;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    sget-object v0, Lcom/sgscq/vpn/cloud/p0;->d:Lcom/sgscq/vpn/cloud/p0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    sget-object v0, Lcom/sgscq/vpn/cloud/p0;->e:Lcom/sgscq/vpn/cloud/p0;

    .line 70
    .line 71
    :goto_0
    new-instance v1, Lcom/sgscq/vpn/d;

    .line 72
    .line 73
    const/16 v3, 0xc

    .line 74
    .line 75
    invoke-direct {v1, v2, v0, v3}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :goto_1
    sget v0, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    :try_start_1
    invoke-virtual {v1}, Lcom/sgscq/vpn/cloud/q0;->d()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Lcom/sgscq/vpn/d4;

    .line 92
    .line 93
    const/4 v3, 0x2

    .line 94
    invoke-direct {v1, v2, v0, v3}, Lcom/sgscq/vpn/d4;-><init>(Lcom/sgscq/vpn/PassportActivity;Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catch_1
    move-exception v0

    .line 102
    new-instance v1, Lcom/sgscq/vpn/d;

    .line 103
    .line 104
    const/16 v3, 0xe

    .line 105
    .line 106
    invoke-direct {v1, v2, v0, v3}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
