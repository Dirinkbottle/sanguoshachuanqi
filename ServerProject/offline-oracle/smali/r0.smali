.class public final synthetic Lcom/sgscq/vpn/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/DebugSparringConfigActivity;

.field public final synthetic c:Lcom/sgscq/vpn/v0;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/DebugSparringConfigActivity;Lcom/sgscq/vpn/v0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/r0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/r0;->b:Lcom/sgscq/vpn/DebugSparringConfigActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/sgscq/vpn/r0;->c:Lcom/sgscq/vpn/v0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    const/4 p1, 0x0

    .line 2
    iget v0, p0, Lcom/sgscq/vpn/r0;->a:I

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    const-string v2, "\u65e0"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    iget-object v4, p0, Lcom/sgscq/vpn/r0;->c:Lcom/sgscq/vpn/v0;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/sgscq/vpn/r0;->b:Lcom/sgscq/vpn/DebugSparringConfigActivity;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :pswitch_0
    sget-object v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f:[F

    .line 19
    .line 20
    invoke-virtual {v5, v4, p1}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->h(Lcom/sgscq/vpn/v0;I)V

    .line 21
    .line 22
    .line 23
    throw v3

    .line 24
    :pswitch_1
    sget-object v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f:[F

    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string v0, "attack"

    .line 30
    .line 31
    const-string v1, "defense"

    .line 32
    .line 33
    const-string v6, "none"

    .line 34
    .line 35
    const-string v7, "hp"

    .line 36
    .line 37
    const-string v8, "wisdom"

    .line 38
    .line 39
    filled-new-array {v6, v0, v1, v7, v8}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "\u653b"

    .line 48
    .line 49
    const-string v6, "\u9632"

    .line 50
    .line 51
    const-string v7, "\u8840"

    .line 52
    .line 53
    const-string v8, "\u667a"

    .line 54
    .line 55
    filled-new-array {v2, v1, v6, v7, v8}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object v2, v4, Lcom/sgscq/vpn/v0;->a:Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    .line 64
    .line 65
    iget-object v2, v2, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->cultivateAttr:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v6, Lcom/sgscq/vpn/s0;

    .line 68
    .line 69
    invoke-direct {v6, v5, v4}, Lcom/sgscq/vpn/s0;-><init>(Lcom/sgscq/vpn/DebugSparringConfigActivity;Lcom/sgscq/vpn/v0;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 81
    .line 82
    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    const-string v5, "\u9009\u62e9\u4fee\u70bc\u76ee\u6807"

    .line 86
    .line 87
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    new-array v5, p1, [Ljava/lang/String;

    .line 92
    .line 93
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, [Ljava/lang/CharSequence;

    .line 98
    .line 99
    new-instance v5, Lcom/sgscq/vpn/u0;

    .line 100
    .line 101
    invoke-direct {v5, v6, v0, p1}, Lcom/sgscq/vpn/u0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const-string v0, "\u53d6\u6d88"

    .line 109
    .line 110
    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :pswitch_2
    sget-object p1, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f:[F

    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    new-instance p1, Ljava/util/HashSet;

    .line 124
    .line 125
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 126
    .line 127
    .line 128
    if-eqz v4, :cond_1

    .line 129
    .line 130
    iget-object p1, v4, Lcom/sgscq/vpn/v0;->a:Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    .line 131
    .line 132
    iget-object p1, p1, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->generalId:Ljava/lang/String;

    .line 133
    .line 134
    if-eqz p1, :cond_1

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_0

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_0
    throw v3

    .line 144
    :cond_1
    :goto_0
    iget-object p1, v4, Lcom/sgscq/vpn/v0;->a:Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    .line 145
    .line 146
    iget-object p1, p1, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->skillId:Ljava/lang/String;

    .line 147
    .line 148
    new-instance p1, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    new-instance v0, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    throw v3

    .line 165
    :pswitch_3
    sget-object p1, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f:[F

    .line 166
    .line 167
    const/4 p1, -0x1

    .line 168
    invoke-virtual {v5, v4, p1}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->j(Lcom/sgscq/vpn/v0;I)V

    .line 169
    .line 170
    .line 171
    invoke-static {v4, p1}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->k(Lcom/sgscq/vpn/v0;I)V

    .line 172
    .line 173
    .line 174
    iget-object p1, v4, Lcom/sgscq/vpn/v0;->a:Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    .line 175
    .line 176
    iget-object p1, p1, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->generalId:Ljava/lang/String;

    .line 177
    .line 178
    new-instance p1, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v0, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    throw v3

    .line 195
    :goto_1
    sget-object p1, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f:[F

    .line 196
    .line 197
    const/4 p1, 0x1

    .line 198
    invoke-virtual {v5, v4, p1}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->h(Lcom/sgscq/vpn/v0;I)V

    .line 199
    .line 200
    .line 201
    throw v3

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
