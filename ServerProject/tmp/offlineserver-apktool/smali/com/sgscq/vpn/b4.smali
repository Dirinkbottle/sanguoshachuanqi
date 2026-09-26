.class public final synthetic Lcom/sgscq/vpn/b4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/PassportActivity;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/PassportActivity;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/b4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/b4;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 4
    .line 5
    iput p2, p0, Lcom/sgscq/vpn/b4;->c:I

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
    .locals 8

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/b4;->a:I

    .line 2
    .line 3
    iget v1, p0, Lcom/sgscq/vpn/b4;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/sgscq/vpn/b4;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_3

    .line 11
    :pswitch_0
    sget v0, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-object v3, v2, Lcom/sgscq/vpn/PassportActivity;->a:Lcom/sgscq/vpn/m4;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/sgscq/vpn/m4;->m()Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/sgscq/vpn/k4;

    .line 42
    .line 43
    new-instance v5, Lcom/sgscq/vpn/j4;

    .line 44
    .line 45
    iget-object v6, v2, Lcom/sgscq/vpn/PassportActivity;->a:Lcom/sgscq/vpn/m4;

    .line 46
    .line 47
    iget-object v7, v4, Lcom/sgscq/vpn/k4;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v6, v7}, Lcom/sgscq/vpn/m4;->n(Ljava/lang/String;)Lcom/sgscq/vpn/l4;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-direct {v5, v4, v6}, Lcom/sgscq/vpn/j4;-><init>(Lcom/sgscq/vpn/k4;Lcom/sgscq/vpn/l4;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v3, 0x0

    .line 61
    goto :goto_2

    .line 62
    :catch_0
    move-exception v3

    .line 63
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move-object v3, v4

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    :goto_2
    new-instance v4, Lcom/sgscq/vpn/e4;

    .line 87
    .line 88
    invoke-direct {v4, v2, v1, v0, v3}, Lcom/sgscq/vpn/e4;-><init>(Lcom/sgscq/vpn/PassportActivity;ILjava/util/ArrayList;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :goto_3
    sget v0, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v3, "\u5df2\u5bfc\u5165 "

    .line 103
    .line 104
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, " \u4e2a\u672c\u5730\u5b58\u6863"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const/4 v1, 0x1

    .line 120
    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/sgscq/vpn/PassportActivity;->f()V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
