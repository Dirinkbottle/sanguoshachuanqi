.class public final synthetic Lcom/sgscq/vpn/t3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/KeyEvent$Callback;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/sgscq/vpn/t3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/t3;->b:Landroid/view/KeyEvent$Callback;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/sgscq/vpn/t3;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/sgscq/vpn/t3;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, Lcom/sgscq/vpn/t3;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/sgscq/vpn/t3;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/sgscq/vpn/t3;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/sgscq/vpn/t3;->b:Landroid/view/KeyEvent$Callback;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_2

    .line 13
    :pswitch_0
    check-cast v2, Lcom/sgscq/vpn/PassportActivity;

    .line 14
    .line 15
    check-cast v1, Ljava/util/List;

    .line 16
    .line 17
    check-cast v0, Landroid/app/AlertDialog;

    .line 18
    .line 19
    sget p1, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    new-array v3, p1, [Z

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    move v5, v4

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-ge v5, v6, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v6, v5}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    aput-boolean v6, v3, v5

    .line 47
    .line 48
    add-int/lit8 v5, v5, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    sget-object v5, Lcom/sgscq/vpn/cloud/u0;->f:La/o;

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-ne v5, p1, :cond_2

    .line 58
    .line 59
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-ge v4, p1, :cond_1

    .line 64
    .line 65
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/sgscq/vpn/cloud/t0;

    .line 70
    .line 71
    aget-boolean v5, v3, v4

    .line 72
    .line 73
    iput-boolean v5, p1, Lcom/sgscq/vpn/cloud/t0;->b:Z

    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 79
    .line 80
    invoke-direct {p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    const-string v3, "\u786e\u8ba4\u5bfc\u5165"

    .line 84
    .line 85
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v4, "\u9009\u4e2d\u7684\u5b58\u6863\u5c06\u5bfc\u5165\u4e3a\u672c\u5730\u5b58\u6863\uff0c\u4e0d\u4f1a\u8986\u76d6\u7ebf\u4e0a\u4e91\u5b58\u6863\u3002\u5df2\u6709\u540c UID \u5b58\u6863\u4f1a\u88ab\u8986\u76d6\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    .line 90
    .line 91
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    new-instance v4, Lcom/sgscq/vpn/x3;

    .line 96
    .line 97
    invoke-direct {v4, v2, v0, v1}, Lcom/sgscq/vpn/x3;-><init>(Lcom/sgscq/vpn/PassportActivity;Landroid/app/AlertDialog;Ljava/util/List;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string v0, "\u53d6\u6d88"

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    const-string v0, "\u5b58\u6863\u9009\u62e9\u72b6\u6001\u65e0\u6548"

    .line 118
    .line 119
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :goto_2
    check-cast v2, Lcom/sgscq/vpn/c5;

    .line 124
    .line 125
    check-cast v1, Ljava/lang/String;

    .line 126
    .line 127
    check-cast v0, Ljava/lang/String;

    .line 128
    .line 129
    iget-object p1, v2, Lcom/sgscq/vpn/c5;->a:Landroid/app/Activity;

    .line 130
    .line 131
    invoke-static {p1, v1, v0}, Lcom/sgscq/vpn/p5;->I0(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
