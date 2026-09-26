.class public final Lcom/sgscq/vpn/p6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sgscq/vpn/y;
.implements Lcom/sgscq/vpn/c1;
.implements Lcom/sgscq/vpn/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/SettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/SettingsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/p6;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/p6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/p6;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/p6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 15
    .line 16
    .line 17
    sget p1, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/sgscq/vpn/SettingsActivity;->t()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_1
    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 28
    .line 29
    .line 30
    sget p1, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/sgscq/vpn/SettingsActivity;->w()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_2
    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 41
    .line 42
    .line 43
    sget p1, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/sgscq/vpn/SettingsActivity;->w()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_3
    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 54
    .line 55
    .line 56
    sget p1, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/sgscq/vpn/SettingsActivity;->u()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_4
    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 67
    .line 68
    .line 69
    sget p1, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/sgscq/vpn/SettingsActivity;->u()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_0
    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 80
    .line 81
    .line 82
    sget p1, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/sgscq/vpn/SettingsActivity;->t()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
