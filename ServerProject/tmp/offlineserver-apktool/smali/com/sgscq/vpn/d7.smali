.class public final synthetic Lcom/sgscq/vpn/d7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/a7;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/a7;Ljava/lang/Runnable;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/d7;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/d7;->b:Lcom/sgscq/vpn/a7;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/sgscq/vpn/d7;->c:Ljava/lang/Runnable;

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
    .locals 11

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/d7;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/d7;->c:Ljava/lang/Runnable;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/sgscq/vpn/d7;->b:Lcom/sgscq/vpn/a7;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :pswitch_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v0, Lcom/sgscq/vpn/cloud/z;

    .line 15
    .line 16
    iget-object v3, v2, Lcom/sgscq/vpn/a7;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Landroid/content/Context;

    .line 19
    .line 20
    invoke-direct {v0, v3}, Lcom/sgscq/vpn/cloud/z;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    const-string v4, "GET"

    .line 24
    .line 25
    const-string v5, "/client-policy"

    .line 26
    .line 27
    const-string v6, ""

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    const-string v7, "application/json"

    .line 31
    .line 32
    const-string v8, ""

    .line 33
    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    invoke-static/range {v4 .. v10}, Lcom/sgscq/vpn/cloud/z;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Lcom/sgscq/vpn/cloud/t;
    :try_end_0
    .catch Lcom/sgscq/vpn/cloud/a0; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v3, "client_update_required"

    .line 44
    .line 45
    iget-object v0, v0, Lcom/sgscq/vpn/cloud/a0;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, v2, Lcom/sgscq/vpn/a7;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Landroid/os/Handler;

    .line 57
    .line 58
    new-instance v3, Lcom/sgscq/vpn/d7;

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    invoke-direct {v3, v2, v1, v4}, Lcom/sgscq/vpn/d7;-><init>(Lcom/sgscq/vpn/a7;Ljava/lang/Runnable;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    :catch_1
    :goto_0
    return-void

    .line 68
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 74
    .line 75
    .line 76
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 77
    .line 78
    iget-object v1, v2, Lcom/sgscq/vpn/a7;->a:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v1, Landroid/content/Context;

    .line 81
    .line 82
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    const-string v1, "\u5fc5\u987b\u66f4\u65b0\u5ba2\u6237\u7aef"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 88
    .line 89
    .line 90
    const-string v1, "\u5f53\u524d\u7248\u672c\u5df2\u505c\u7528\u3002\u66f4\u65b0\u540e\u624d\u80fd\u7ee7\u7eed\u542f\u52a8\u6e38\u620f\u548c\u4f7f\u7528\u4e91\u529f\u80fd\u3002\u79bb\u7ebf\u5b58\u6863\u4e0d\u4f1a\u4e22\u5931\u3002"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 93
    .line 94
    .line 95
    const-string v1, "\u7acb\u5373\u66f4\u65b0"

    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    .line 100
    .line 101
    new-instance v1, Lcom/sgscq/vpn/k3;

    .line 102
    .line 103
    const/4 v3, 0x3

    .line 104
    invoke-direct {v1, v2, v3}, Lcom/sgscq/vpn/k3;-><init>(Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    const-string v3, "\u9000\u51fa"

    .line 108
    .line 109
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 131
    .line 132
    sget v4, Lcom/sgscq/vpn/p5;->y:I

    .line 133
    .line 134
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    .line 139
    .line 140
    const/4 v1, -0x1

    .line 141
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    sget v4, Lcom/sgscq/vpn/p5;->B:I

    .line 146
    .line 147
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    .line 149
    .line 150
    const/4 v3, -0x2

    .line 151
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    sget v4, Lcom/sgscq/vpn/p5;->G:I

    .line 156
    .line 157
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-instance v1, Lcom/sgscq/vpn/q0;

    .line 165
    .line 166
    const/4 v3, 0x4

    .line 167
    invoke-direct {v1, v2, v3}, Lcom/sgscq/vpn/q0;-><init>(Ljava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
