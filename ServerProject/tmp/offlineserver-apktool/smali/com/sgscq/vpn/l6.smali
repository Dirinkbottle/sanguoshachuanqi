.class public final synthetic Lcom/sgscq/vpn/l6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/SettingsActivity;

.field public final synthetic c:Lcom/sgscq/vpn/cloud/d0;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/SettingsActivity;Lcom/sgscq/vpn/cloud/d0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/l6;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/l6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/sgscq/vpn/l6;->c:Lcom/sgscq/vpn/cloud/d0;

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
    iget v0, p0, Lcom/sgscq/vpn/l6;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/sgscq/vpn/l6;->c:Lcom/sgscq/vpn/cloud/d0;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/sgscq/vpn/l6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/sgscq/vpn/SettingsActivity;->m()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/SettingsActivity;->z(Lcom/sgscq/vpn/cloud/d0;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "\u4e91\u5b58\u6863\u5df2\u5220\u9664\uff0c\u53ef\u65b0\u5efa\u65b0\u7684\u4e91\u5b58\u6863"

    .line 21
    .line 22
    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/sgscq/vpn/SettingsActivity;->m()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/SettingsActivity;->z(Lcom/sgscq/vpn/cloud/d0;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "\u672c\u4eba\u4e91\u5b58\u6863\u5df2\u4e0a\u4f20\u5e76\u66ff\u6362\u4e91\u7aef\u7248\u672c"

    .line 39
    .line 40
    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_2
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 49
    .line 50
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/SettingsActivity;->z(Lcom/sgscq/vpn/cloud/d0;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :goto_0
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/sgscq/vpn/SettingsActivity;->m()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/SettingsActivity;->z(Lcom/sgscq/vpn/cloud/d0;)V

    .line 60
    .line 61
    .line 62
    const-string v0, "\u4e91\u7aef\u7248\u672c\u5df2\u4e0b\u8f7d\u5e76\u66ff\u6362\u672c\u5730\u4e91\u5b58\u6863"

    .line 63
    .line 64
    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
