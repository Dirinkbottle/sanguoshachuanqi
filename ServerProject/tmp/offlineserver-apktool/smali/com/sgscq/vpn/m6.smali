.class public final synthetic Lcom/sgscq/vpn/m6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/SettingsActivity;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/SettingsActivity;Ljava/lang/Exception;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/m6;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/m6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/sgscq/vpn/m6;->c:Ljava/lang/Exception;

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
    iget v0, p0, Lcom/sgscq/vpn/m6;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/m6;->c:Ljava/lang/Exception;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/sgscq/vpn/m6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    iget-object v0, v2, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/q0;->b()Lcom/sgscq/vpn/cloud/d0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/SettingsActivity;->z(Lcom/sgscq/vpn/cloud/d0;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v2, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "\u4e91\u670d\u52a1\u6682\u65f6\u4e0d\u53ef\u7528\uff1a"

    .line 25
    .line 26
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/sgscq/vpn/SettingsActivity;->j(Ljava/lang/Exception;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v2, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    .line 44
    .line 45
    sget v1, Lcom/sgscq/vpn/p5;->D:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_0
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/sgscq/vpn/SettingsActivity;->m()V

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lcom/sgscq/vpn/SettingsActivity;->j(Ljava/lang/Exception;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, v2, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/sgscq/vpn/cloud/q0;->b()Lcom/sgscq/vpn/cloud/d0;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/SettingsActivity;->z(Lcom/sgscq/vpn/cloud/d0;)V

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 75
    .line 76
    .line 77
    iget-object v1, v2, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    .line 78
    .line 79
    if-eqz v1, :cond_0

    .line 80
    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v4, "\u64cd\u4f5c\u5931\u8d25\uff1a"

    .line 84
    .line 85
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, v2, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    .line 99
    .line 100
    sget v1, Lcom/sgscq/vpn/p5;->D:I

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    :cond_0
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
